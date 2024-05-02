Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4467C4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 13:56:56 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.14173.1714658213127954255
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 May 2024 06:56:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KyO+IYsp;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-ddda842c399so8210632276.3
        for <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 06:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714658212; x=1715263012; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pnayK18Z7OwN3b70L3KfLUNnjLD15JfPKM3tRpZpX4w=;
        b=KyO+IYsprfAOoWeGrEPwGlvIpWFyDG1pYULxPqreUvL/qw18jAbft6G9P4OTRDbH6Z
         eeDrqpja+vx5H57/l+Am3g9xC4bIcfiM7Nd89la5X3x9x5eUDZLlLoupDJuH8Zo9rGHv
         K0U9SQd5r/Az6qOAiOCx6CbIUoq6Qwdbycj+hZM13qjpyQ3rOEkkAK+T7T4dcPswiYZb
         IHPllGo9cu4gYZC4R0EY/5UWF3xlEx5Mgh4fKsmTwJCgWCQjkJZVjp5DG8ia3c4gzjbA
         ssCpzgk5TLLU4Rncbx6xRoTrWORiSA6Hf4I3qyfS7umoV7kmwyH/YODlLyhr8uxVbf19
         o24A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714658212; x=1715263012;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pnayK18Z7OwN3b70L3KfLUNnjLD15JfPKM3tRpZpX4w=;
        b=LRq0QutqvUjvkOIF8jUGKvfMySKtgiSDoCfRXJWy0PRHSl8XCSA0gQYFy1gLjgEqnA
         m4q57WmJ6wK0dtN2gI3m0Zjna2gwz9r7CmyaFH5zVGCuZ5sSA5rprHuXJHTMbKSCZIFZ
         g0AjDpOoYeNEOUfLHJzPekK+xwSKc5Sy6mvwOhAskGZOe8196aHC7VlvVQhHRi+P6kNW
         2DR74lueVbj+Hfz+e+yXpQzdqofpwPEW1oiF9UefBCQCP8spGbryzeKxLVgohoLZajw1
         5BafNXTRASmnJefoyWR5Gvk8t5v1vEepjOSo8z3pjUKHwRQD/A5DuCAhZzcg4oK/M2WQ
         JBSg==
X-Gm-Message-State: AOJu0YxgRT30IjFlXQScJdO3ggQPGfp8TugXlzKVfOD/mdYunefMSo8Z
	h6YnMmOgJe5o2ZS96Xx8eutFROKPGJZ8NJeIGDLUmP+4BVgJ2GHXCAth0C91GPTJ1nVnmRyse/9
	jnLmaTSwGovIK+vTZjZSUVQsCPVyLdg==
X-Google-Smtp-Source: AGHT+IHgus44AxOLJNbmh1GXwDDjrrCs0AkwO7JcfFU+yvpTC/dKGfTJ9bu+5/5eTyyhjzhTg915MtiJkkHxf2rZrtI=
X-Received: by 2002:a25:a1a7:0:b0:de6:86f:c6a4 with SMTP id
 a36-20020a25a1a7000000b00de6086fc6a4mr2368591ybi.44.1714658212007; Thu, 02
 May 2024 06:56:52 -0700 (PDT)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Thu, 2 May 2024 09:56:41 -0400
Message-ID: <CADjezmbyYDACsvsHYcgWNOvobjjx2as_yvmpbS5yr11Ozc_RYQ@mail.gmail.com>
Subject: Get bitbake build target in recipe
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a35ba6061778f9e5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 13:56:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63025

--000000000000a35ba6061778f9e5
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to set the SRCREV of a recipe based on the image name from the
bitbake command line.

I have tried getting the IMAGE_BASENAME in various tasks but they all
return None presumably because these tasks and anonymous python function
are evaluated at parse time?

Does anyone know if it is possible to get the name of the recipe or image
being passed to bitbake within a recipe?

Thanks, Matt.

--000000000000a35ba6061778f9e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m trying to se=
t the SRCREV of a recipe based on the image name from the bitbake command l=
ine.</div><div><br></div><div>I have tried getting the IMAGE_BASENAME in va=
rious tasks but they all return None presumably because these tasks and ano=
nymous python function are evaluated at parse time?</div><div><br></div><di=
v>Does anyone know if it is possible to get the name of the recipe or image=
 being passed to bitbake within a recipe?</div><div><br></div><div>Thanks, =
Matt.<br></div></div>

--000000000000a35ba6061778f9e5--

