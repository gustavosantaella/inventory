import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';

@Schema({
  autoCreate: true,
  timestamps: true,
  collection: 'users',
})
export class UserModel {
  @Prop({ type: String })
  name: string;
  @Prop({ type: String, unique: true })
  email?: string;
  @Prop({ type: String, required: true })
  password: string;

  @Prop({ type: String, required: true })
  phone: string;

  @Prop({ type: String, required: false })
  dni: string;
}

export const UserSchema = SchemaFactory.createForClass(UserModel);
