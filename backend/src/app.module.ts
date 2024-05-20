import { Module } from '@nestjs/common';
import { AuthModule } from './modules/auth/auth.module';
import { ConfigModule } from '@nestjs/config';
import MongoModule from './database/mongo/mongo.module';
import { UserService } from './modules/users/user.service';
import { UserModule } from './modules/users/user.module';

@Module({
  imports: [ConfigModule.forRoot(), MongoModule, AuthModule, UserModule],
  exports: [],
  providers: [UserService],
})
export class AppModule {}
