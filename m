Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 802C4C7EE22
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 14:33:46 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.61106.1683815625509070755
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 07:33:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=AfAZ8hOC;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-50bc4b88998so15414609a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 07:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683815623; x=1686407623;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i0e0YGLI/0he8bqey+aAYHIF67ZRYWvj2a2gzFrpPdA=;
        b=AfAZ8hOCdOrYRUGe82mpzWyNHF1w5+I3+9RhMrXMebEIaMxU/seW9M+urwXnW+6lkV
         P4BQf8MNIo+s4OlwTJtBmxMFalYON3AQ4lrvDzSy+ztbdsJNwdJjpeFX/EkZ8Tq+PPLG
         2s7AbuYb1xFBkE/qQPyewc+o5efDx0NbVrdF2oF3eMzvhAi6GcJyvfenvlcx1g2l3N2N
         sjbmMrKSjtzQz9OprTYPUImwZU0fK7sd2WD4gPpHkEe3oOqxVhfLJf+0aWoTHLb7ukkI
         X0BrUqOfDFwxBdWA53l5yEfhFeSuUMEA/0SIRdxyJi26KUbpMr6CsDOBJbqqGQk5/owb
         zubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683815624; x=1686407624;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i0e0YGLI/0he8bqey+aAYHIF67ZRYWvj2a2gzFrpPdA=;
        b=MFz/EmNRc1yX6MDx2wjTg00K5FXljnAEW9d23qqqxtoxA94xQM3Rf+dZKVKpx95WIx
         sN7//TnL0dmVzfE5zKeYK3dUcjDen2Z4RxLQsDwaeX2Ag+fJdW3TAbqcRQwER5y8p1Yq
         ukrqqHfsVSLEr4AEYwVgq+jQBBDHYAxZwH/uDZEujHS1Vz64cCPU8gN4w8DHL9XGgPGt
         RjVF+/qohT/CpfdUK0+ElaN1xLbyBreqDl00Azdlik/GowxiAD7AL9+K3pujJHJFxplv
         itVAe8ztReO1ASHzv2rqlylg8aH8m5YAL/cXkn2aRAzamiXyjTDvLNG9qdnFPOiB9qWZ
         FXtg==
X-Gm-Message-State: AC+VfDwQ8xtPgbasAaLzHxpQ2TRsFpyK0O6sR7X7bsN7/+6Et8BFAy9M
	uSoRB7Tm0VqUxFdrq2s7b1vLM5BVDUMmONjq4e5M6vM5
X-Google-Smtp-Source: ACHHUZ55rsSPpRjzZxb8qtiqr+jrCMFhAjsUlec2eeR4J3LOP829x36wz7N9baLWdXYW8xRxSG1r0keifAhIDzimulc=
X-Received: by 2002:a17:907:3181:b0:946:2fa6:3b85 with SMTP id
 xe1-20020a170907318100b009462fa63b85mr19759966ejb.36.1683815623353; Thu, 11
 May 2023 07:33:43 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 11 May 2023 20:03:32 +0530
Message-ID: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
Subject: OTA Updates
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000018eb8a05fb6be0c5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 14:33:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59989

--00000000000018eb8a05fb6be0c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,
So I am referring this page for OTA updates
https://wiki.yoctoproject.org/wiki/System_Update

However are these all paid or free services. Any more info about these
services is welcomed.
Also are there any tutorials, YouTube videos on ota updates for yocto? I
couldn=E2=80=99t find any though.


Regards,
Hassan

--00000000000018eb8a05fb6be0c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<div dir=3D"auto">So I am referring this page for OTA updates=C2=A0<=
div><a href=3D"https://wiki.yoctoproject.org/wiki/System_Update">https://wi=
ki.yoctoproject.org/wiki/System_Update</a></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">However are these all paid or free services. Any more in=
fo about these services is welcomed.=C2=A0</div><div dir=3D"auto">Also are =
there any tutorials, YouTube videos on ota updates for yocto? I couldn=E2=
=80=99t find any though.</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Hassan</div></=
div>

--00000000000018eb8a05fb6be0c5--

