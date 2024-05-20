import { Body, Controller, Post, Res } from '@nestjs/common';
import { CreateOwnerUserDTO } from './auth.request';
import { UserService } from '../users/user.service';
import { BaseController } from 'src/commons/controller';

@Controller('/auth')
export default class AuthController extends BaseController {
  constructor(private userService: UserService) {
    super();
  }
  @Post('/register')
  public login(@Res() res, @Body() dto: CreateOwnerUserDTO) {
    this.userService.createOwner(dto);
    return this.reponse(res, 201, true);
  }
}
