import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { UserModel } from './user.schema';
import { Model } from 'mongoose';

@Injectable()
export class UserRepository {
  constructor(@InjectModel(UserModel.name) private model: Model<UserModel>) {}

  public create(user: UserModel) {
    return this.model.create(user);
  }
}
