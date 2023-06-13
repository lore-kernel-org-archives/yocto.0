Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1764AC7EE2E
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 07:10:05 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.7762.1686640201966810091
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 00:10:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@smile-fr.20221208.gappssmtp.com header.s=20221208 header.b=FqEsi754;
 spf=pass (domain: smile.fr, ip: 209.85.218.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-977cf86aae5so785585966b.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 00:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20221208.gappssmtp.com; s=20221208; t=1686640200; x=1689232200;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Oe8E7uIxWYNlXMX0c66hnHZtmZEaEQixzvAMf3U4g9A=;
        b=FqEsi754Dg5dXsnzUXN70WVy4GLAM+YlKIoCWr+ISLO0jFJ6AcxStbsXLMVVnyn5yn
         7NxsCqKBKiqug6R2jIUdMMcyk8PN62ERSZN4LBuANK0Oh3VQrLzPMnv2D4zfPX6fK3FG
         zYq1LZehs7bFWJ/wbo1mevkg4pqhXRDhHYRcl0oEFzwkQehP9VGib1XmeL9HpKRJYNjN
         wVQQvr/ZWWD6w6dqBETdOZ+EP609Y/abWxH6/hCaLCs9a1CtXYYeNR2aAL99PXxuq+pX
         jCCvoGqMycn37jfhqXP5i5/0lOS2pFoO8vF8eKN8DOKGAin8gSHgvaYdu3xCMUcg0tMl
         BOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686640200; x=1689232200;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oe8E7uIxWYNlXMX0c66hnHZtmZEaEQixzvAMf3U4g9A=;
        b=IoRTqTCFB3rw7rIocg1WmfCH5A58IuBw4H2pOwv2enWXrn8TKwaOuCAqL0ENSAoowD
         IBdXGVBpgV7oUP/vumalu6dSAlPuu1vOuUkGs6aS6DJ2jZyd8QJYhvlYiA3Ix5PuRTiA
         IND3r9gVqpRVst+NXoglT0QcNYM8KxJ0RFCARv4tKFDcNjOp3bFNNoZKmTiOjcAjOHDH
         4YW52B4D5CMgBFvuBm93WiAXrtuE6XjDJLgBBVXDWZMo0Ihbg89YTwS3tmDYb57XITQg
         uDtGh48RnXFWDqHpFTZWFARQVbcaLsZpmRpR7PL4y6qJmzx+ill796pTTRCisSMaly7r
         0nzQ==
X-Gm-Message-State: AC+VfDzPv3LtWNVq/LvuTSyTLS5m2hC55pykO9VAhxo76mbcH9kOpLVM
	DUfKXQq20boYja2tP2q+s9oLF+8/wuAaCwMLMG5eRYdzyVmaAp/vIZA=
X-Google-Smtp-Source: ACHHUZ6m9CIbZPRFtK11bXKjjSVlcq41NqIqCeTHGLC5LlLy1WfQhQ1rLAS71aqJwljuBhgzkecD86CAN+Zo6ZKTVCg=
X-Received: by 2002:a17:906:d553:b0:970:c9f:2db6 with SMTP id
 cr19-20020a170906d55300b009700c9f2db6mr12218591ejc.63.1686640199830; Tue, 13
 Jun 2023 00:09:59 -0700 (PDT)
MIME-Version: 1.0
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Tue, 13 Jun 2023 09:09:34 +0200
Message-ID: <CAMSfU+5e1L6wDZRr2qnC9uvwsK=dnmSw26wra1cz7XL+LHgjPw@mail.gmail.com>
Subject: https://wiki.yoctoproject.org/ certificate expired
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000f9a23c05fdfd8532"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 07:10:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60269

--000000000000f9a23c05fdfd8532
Content-Type: text/plain; charset="UTF-8"

Hi,

It seems like the https://wiki.yoctoproject.org/ certificate has expired :(
"notAfter=Jun 13 03:28:00 2023 GMT"

Regards,
-- 
Yoann Congal
Smile ECS - Tech expert

--000000000000f9a23c05fdfd8532
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>It seems like the <a hre=
f=3D"https://wiki.yoctoproject.org/">https://wiki.yoctoproject.org/</a> cer=
tificate has expired :(</div><div>&quot;notAfter=3DJun 13 03:28:00 2023 GMT=
&quot;</div><div><br></div><div>Regards,<br></div><div><span class=3D"gmail=
_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"Raleway,=
 regular">Yoann Congal</font><div><font face=3D"Raleway, regular">Smile ECS=
 - Tech expert<br></font></div></div></div></div></div>

--000000000000f9a23c05fdfd8532--

