import { Controller, Res } from '@nestjs/common';

@Controller()
export class BaseController {
  protected reponse(@Res() res, status, data) {
    return res.json({
      status,
      data,
    });
  }
}
