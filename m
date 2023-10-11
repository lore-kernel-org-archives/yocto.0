Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7725CD98F5
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 06:55:49 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.11105.1697007346443179916
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 23:55:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OH9I0z5u;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-53db360294fso1378986a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 23:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697007344; x=1697612144; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wzC5mDhGrcAwFwbJNrOsVKNAmxZ5My3qxqkKDRs7dTo=;
        b=OH9I0z5uNCvLujlLYycIufDlE4cXhT9bKX2ztYV17Dcu/0NW7gbYt1xw+sbSL/7UqW
         oZVycAwB6hX5mziw1rVxr69cq3fTzsM/9rBX4LM97W/bkWqM6U2qlJmw23KofjyL3h6O
         EOzzA238bDd1wqpM76hekJ86WpG2akr+3CYN+gYIHgQWZlWJcSaq+NV7Xt0Vh3CISAzb
         SY3f5tBG92fjPDSb5dAdmy5C5qPINQGPjYqtcWGNZ3/SrtPUyJ5x2MyrQdK0YQJ5Mh3e
         pYulGJhdueZsyRzUzMxJJX/b1LKeaGAIYnacjvzEdC4IBQLslMTSrrJtASCYjxbz9TmC
         0ZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697007344; x=1697612144;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wzC5mDhGrcAwFwbJNrOsVKNAmxZ5My3qxqkKDRs7dTo=;
        b=KwdEhh14+HtAoa9N8btAFoDIsewZpUBJ4UJlwNl1NJL+ZeVfLzVfIDTzA8JaxatLS3
         FD7pkes1mVaSjuDrmW/V07j3AhIZIM2HKfe56MU6QMtTCnyGi31R6mh7cnK7el2QkQoS
         pP3fJsbtxvYMaU3kHYHSYXOyz55jSHHZAjRgoAl/YI8gVl6zM10tyYDIGBBWoA59Zf+K
         SboCzTgtEWpVXBdUvoFtRxcNmgBFN0Qy+DG9JrpHQEt8MFlaL8qxTFupBDDpxC638DU/
         cBsggGUi4ktPrbTFh2ykPeYRyhXOyzH728OEZiWVBhFyz7CMVZ/bF9sM1Jfr5GRKfNFj
         PgQA==
X-Gm-Message-State: AOJu0YyXIhUw1MrfiFoIqOTL8bVGLwAHLL1I16KymBdWX4RKeSO547j1
	1ZdG2Xn/hV8Q8kpzEshfm5RaIjrEwtaDcsBaoEhostuk
X-Google-Smtp-Source: AGHT+IFh8v+oEanqJITlethcmK0SJl5fkQHJvZ4AF9ysGUviT3B6it8dxipgT8XY5L8pQz9SlH2TuBipkFa+93g49CA=
X-Received: by 2002:a17:906:3048:b0:9ae:37d9:803e with SMTP id
 d8-20020a170906304800b009ae37d9803emr16942877ejd.8.1697007344050; Tue, 10 Oct
 2023 23:55:44 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 11 Oct 2023 12:25:33 +0530
Message-ID: <CAPJWBnirnU03K9oc6ubx9WKojbJ=U8tkk985X0LDkq5v8XNHSQ@mail.gmail.com>
Subject: What laptops do you use for faster builds
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ec66f506076b4fb9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 06:55:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61314

--000000000000ec66f506076b4fb9
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I was curious to know the laptops/desktop/workstations you guys use for
quick and faster builds. Can you list out the specs as well and maybe some
tips and tricks for reducing build time.


Thanks and regards,
Hassan

--000000000000ec66f506076b4fb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I was curious to know the laptops/desktop=
/workstations you guys use for quick and faster builds. Can you list out th=
e specs as well and maybe some tips and tricks for reducing build time.</di=
v><div><br></div><div><br></div><div>Thanks and regards,=C2=A0</div><div>Ha=
ssan</div></div>

--000000000000ec66f506076b4fb9--

