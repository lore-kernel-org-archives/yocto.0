Return-Path: <tomasz.dziendzielski@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3E93C77B7C
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 09:15:34 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web11.54553.1683796527411331738
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 02:15:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=oPjLr2oq;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: tomasz.dziendzielski@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-77115450b8fso4715820241.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 02:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683796526; x=1686388526;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=drBnKTE5CB5ArsT36SpDdqfgbHHOkStS6ZJp1Y+n6So=;
        b=oPjLr2oqPGWTURXvj+8CUWh958ws9PNWZvmeLASY/tp4sRnoiifpY2eJJPzt75tAOV
         gYrcOGWOLeAzFKoU71vkA8sKcpaaCiuxp4BHU+Vq6bKieEGoRKASBjKEcJ4qnniKRVal
         CE5jpD82D0dVJIxYkyYrwqC+uykYav0FsKcqK1zqn0i/KwV5jxBKzfwMGmmMR2Bq1o60
         Wz3V79NfIu4AbCSxes9G+K5gBmPwp2Tgx1aVLYXh3wXE5Gx1j8bxSAHaMiz41bgBFCt9
         j7GOdQnTs3Uk3R47ZygkwaDzbVhUm7Dj4vodwOWf4NCED/faX2OHsMNFaLYk3g7aG2Pl
         uS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683796526; x=1686388526;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=drBnKTE5CB5ArsT36SpDdqfgbHHOkStS6ZJp1Y+n6So=;
        b=Kb6UY4V4hcFsYShaw5D84BfQiZIqyGh8e8zr0qBcEAoR0eAoaA3w/WG/T8CWj0KCcB
         S7kwqKCzibK+mwUHCBMstoXtrumWuJkWdW0JSuF2pHMsS5BuwqjGY9lCeItEpKrkxUkE
         zWSSK5Wc9q/7yX0sFIBqRiQzpVr6T3ftyTOROdsvFSL6Z5RCeM9BbgDbLKO29gzSk3z2
         m4JwSBOqgrg3XORqN4CSQWHG+RUAYeakq0BrfrYsiV6A/z9XYQuRpvxhIy8Cyulr3G+O
         GaSOk9/Ts9FOOJfvT+jb7aAbnRR46qV8bHHEfFr9Ii3PN/aCIiQXj9HCIOJxsu5XoAUO
         ThBQ==
X-Gm-Message-State: AC+VfDxNsv9en9lE3FQpdBYocY1QBYTZXtMz7ej1yT5nZfm1ri4av2Ca
	KoZKecaaE6tYuRz45kQ9FLV/50w6Orjis1T+0zW9KkMxrx8mCVBk
X-Google-Smtp-Source: ACHHUZ716NBBIA5fUnHoamot9g0XvT8N7XJQW2xfHiGFSqlAYsic145ieIiQbygptLO+BDOgteE7WAd0FMi4uSkEEjA=
X-Received: by 2002:a05:6102:302b:b0:430:397a:6574 with SMTP id
 v11-20020a056102302b00b00430397a6574mr7447983vsa.32.1683796526240; Thu, 11
 May 2023 02:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230511085319.4147-1-tomasz.dziendzielski@gmail.com> <CANPvuRkzNbE+q6Tg4ope=8xGRMkenfe5LErqdZrTnRUBoKAhbA@mail.gmail.com>
In-Reply-To: <CANPvuRkzNbE+q6Tg4ope=8xGRMkenfe5LErqdZrTnRUBoKAhbA@mail.gmail.com>
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Thu, 11 May 2023 11:18:46 +0200
Message-ID: <CAJkqNs1qj06=COjTWMjgtNeO3LNR=cqQyy4LDnbV82Q7=o510A@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH] bazel-native: Allow build from sstate-cache
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d217d405fb676d4f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 09:15:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59983

--000000000000d217d405fb676d4f
Content-Type: text/plain; charset="UTF-8"

Hi Jose,
>Why not use the something inside the bitbake TMPDIR, if it is temporary
the correct place will be in TMPDIR.
I wanted to keep the same directory as it was before, but you're right
TMPDIR/bazel will be better place. I'll send second patch.

Best regards,
Tomasz Dziendzielski

--000000000000d217d405fb676d4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jose,<br><div>&gt;Why not use the some=
thing inside the bitbake TMPDIR, if it is temporary the correct place will =
be in TMPDIR.<br></div><div>I wanted to keep the same directory as it was b=
efore, but you&#39;re right TMPDIR/bazel will be better place. I&#39;ll sen=
d second patch.</div><div><br></div><div>Best regards,</div><div>Tomasz Dzi=
endzielski</div></div></div>

--000000000000d217d405fb676d4f--

