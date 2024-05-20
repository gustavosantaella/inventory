import { IsEmail, IsNotEmpty } from 'class-validator';

export class CreateOwnerUserDTO {
  name: string;
  password: string;
  @IsNotEmpty()
  phone: string;
  @IsEmail()
  @IsNotEmpty()
  email: string;
}
