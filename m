Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.10501.1612541666247786765
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 08:14:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZxyGp9qY;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id w204so7273383ybg.2
        for <yocto@lists.yoctoproject.org>; Fri, 05 Feb 2021 08:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/22JzWptrFyAHxfzMzkaP81/z+g4U3RlACg4FncRHB4=;
        b=ZxyGp9qYQB+hJv/npj1QZlk6oeBeD3eprO6D784bRCSC3rvDYTSVPkIObvMXZj0V+P
         guvaxhIJpJOmG5bXXoaxK7thEtuus9+bsMoJ4z4LZjddenU0SvA/bZvgBedRIW6UDs5o
         2WwJ4bbZSUOwBFearAUpjI0X3ienDwUdjCei6HydioSnE6VBC3v0sZ2q/4QMJpt/WXl3
         XWEmI+FmFxxRFsDX7shH7dXrnTGX/miu0QexsZqmc4IEO7GZDO8IGjRY6nOc3YZjGF29
         F+bzMoNUJrR37UMxowtBgvbmdmavI/9HxNclVBZiHkpn+d6TgszsBjDKQOwklsL9LbWK
         hVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/22JzWptrFyAHxfzMzkaP81/z+g4U3RlACg4FncRHB4=;
        b=leJxthRXB3VspOcNKYFwACPRNl2wJT9aXnCivB7dUDSNqpMOXGpfUv8BKMPqLOsig0
         MfdGK/7yzxzf8nZ274I9EyGRaEWkp2Qiiz6Nx4feOS/55dNyX47e3l3tfPDADkN5EVpQ
         +oVAcPwp8u3dOC2x+DHADQaKkFkQG9JBoNj3oT0F9IrejgmAtFdOhQS3wx3cFgJDG0Ql
         O5L4DtyQ8Z1UFSMvP8fWceVhkbW6u9q08bv6tAdWBbunPYZ1aje2szFsYKFoANCRclpV
         GWoO5WjNxGjWqLH8RbhY+1dXY1anlIcSgy2XT4fbOMIVZiqV3+5IkbEly0DIDoHXeXSq
         l5Ww==
X-Gm-Message-State: AOAM530OQLO66+kXsA3yV9xkIyPn4YlLasmPP3Z9NhCgHhpWCrsSi+x1
	VNpG2OXXKIKj+4xfAkyDdjmpqGKTRPYH4BODqSF4QenGSIg=
X-Google-Smtp-Source: ABdhPJz9k43zmFtNUoqO0JdP2tXyMGbYnjjEjkNmuzUz2getNBLYPcH0zJ+L+5Js45EiDIfw5reQYl1oluySr+D4iZc=
X-Received: by 2002:a25:b1a4:: with SMTP id h36mr7677698ybj.207.1612541665189;
 Fri, 05 Feb 2021 08:14:25 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7110:5244:b029:34:4556:8694 with HTTP; Fri, 5 Feb 2021
 08:14:24 -0800 (PST)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Fri, 5 Feb 2021 11:14:24 -0500
Message-ID: <CAK4PFCWZYd6VGHa9HMk-XLeJjZG8aZmCt5LGJhaFVCbY1=hdtA@mail.gmail.com>
Subject: Appropriate patch posting location?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Is there not a separate list address to post patches, so as to keep
discussion and patch lists separate?

It can be an issue for folks who are on web mailers that make you
delete messages one-at-a-time.... ie "traditional frames based gmail
interface"
