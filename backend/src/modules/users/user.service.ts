import { Injectable } from '@nestjs/common';
import { CreateOwnerUserDTO } from '../auth/auth.request';
import { UserRepository } from './user.repository';
import { UserModel } from './user.schema';

@Injectable()
export class UserService {
  constructor(private repository: UserRepository) {}
  async createOwner(dto: CreateOwnerUserDTO) {
    const user = dto as UserModel;
    this.repository.create(user);
    return true;
  }
}
