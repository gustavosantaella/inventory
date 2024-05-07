import { Controller, Get } from '@nestjs/common';

@Controller('/auth')
export default class AuthController {
  @Get('/login')
  public login() {
    return true;
  }
}
