import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import * as basicAuth from 'express-basic-auth';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(new ValidationPipe());
  app.setGlobalPrefix('/api');

  app.use(
    ['/docs', '/docs-json'],
    basicAuth({
      challenge: true,
      // this is the username and password used to authenticate
      users: {
        [process.env.SWAGGER_USER || 'admin']:
          process.env?.SWAGGER_PASSWORD || 'password',
      },
    }),
  );
  const config = new DocumentBuilder()
    .setTitle('SoftPOS API')
    .setDescription('The point of sales API')
    .addServer('/api')
    .setVersion('1.0')
    .build();
  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('/docs', app, document);
  await app.listen(process.env?.APP_PORT || 3000);
}
bootstrap();
