Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web12.33795.1611562068373517285
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 00:07:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ADF64Qb1;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: amayajindal786@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id x78so12460745ybe.11
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 00:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=LVWuZ+nO9sc6QE/zl/UuBfXXDGGP0FjwYO8Cvi5tt6s=;
        b=ADF64Qb15C/aprwjuUIUmhIN04ihF0hqVqoPtrrZ1Y0TN+653d6KU/cK1w9V+6xRq4
         tuVW4ksOW13SxT5renQb8Tzgh54ApS3+sC13cHbP5PEShTKMcWmbQPETfiqVpMYsixWu
         31Wp5ni0FVuI/HvSM9J2UI2ORu6OHJ95LC0kkAcR/8CtYW4pFywjmZcP7odScSZ2O6EH
         oLFmyVbbYYL3xZ2zAtplXwit6nXt5PcVz+FQNRSHpP7qCllaWwPnk3W+FjgmBS+2iNGM
         lJy5fazM4P75R7dtwD0xKH4vU7MfT08XSmGqOveQmSEJeIkw8OzsoC5WGdxuUGIsTQey
         9oWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LVWuZ+nO9sc6QE/zl/UuBfXXDGGP0FjwYO8Cvi5tt6s=;
        b=qdFIh4JZX4KCfLYU1bvxz5RblIKkpxxCgxbjubBWgy8M47F5kUk7ApnUCTzBCeCL/x
         LzNxjqFq/KbZ5r0eievTZH9BbI+8Od6d1glmhP69jcV1rtctwEeMuAzYNxpUKf1wca5J
         UvatekWQ2XKmu2bv0OwUQga/90ve3qyTqO6IuiqcDYvS/deiDX2zr339YLfjpp+bHFvF
         qyDWYy5+hp3PZHe06Ut6mJx1osy3VyFy3SlZ/rPcW4zpVSgHRJdxM1Tz6XmdOvdDi/BV
         4JF9e1LJOSftekaasc8ES2fCrg56hjtr5OV3GFN4OJxg3wmzrhj25jrqW3222BrJdDB/
         WrkA==
X-Gm-Message-State: AOAM531U3zqGt42a90GDbiWLn6a+Eh0mw+Bv2utbdXpQj9fTS3pIwku4
	FyDOII0MnEVbJohRdbbtN7MCw3PaKmj5YqDGm38=
X-Google-Smtp-Source: ABdhPJxmWDtBwk3/FXNDKl37vCJPbXOcK9t9aJ/0UbFkIVH3kLFEeVrAuaCZYZhw23hsIOnK5a7xrBiIpqgK8ncFXko=
X-Received: by 2002:a25:fc2:: with SMTP id 185mr1226661ybp.385.1611562067604;
 Mon, 25 Jan 2021 00:07:47 -0800 (PST)
MIME-Version: 1.0
From: "amaya jindal" <amayajindal786@gmail.com>
Date: Mon, 25 Jan 2021 13:37:36 +0530
Message-ID: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
Subject: Points to consider while moving to new yocto versions
To: yocto <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000092b7bd05b9b50846"

--00000000000092b7bd05b9b50846
Content-Type: text/plain; charset="UTF-8"

Hi All,

We are planning to move to New yocto from current one that is krogoth yocto
to some updated one. We are not thinking to move to gates-garth or some
other major release but the releases than can have easily support for arm.

Please support and help.

Points need to take care to port to new yocto version.

Regards,
Rohit

--00000000000092b7bd05b9b50846
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi All,<div dir=3D"auto"><br></div><div dir=3D"auto">We a=
re planning to move to New yocto from current one that is krogoth yocto to =
some updated one. We are not thinking to move to gates-garth or some other =
major release but the releases than can have easily support for arm.</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Please support and help.=C2=A0=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Points need to take car=
e to port to new yocto version.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Regards,=C2=A0</div><div dir=3D"auto">Rohit</div></div>

--00000000000092b7bd05b9b50846--
