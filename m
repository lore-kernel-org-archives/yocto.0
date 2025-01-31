Return-Path: <markus.haberlander.sw@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBA28C0218F
	for <webhook@archiver.kernel.org>; Fri, 31 Jan 2025 14:31:51 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.20420.1738333909065090879
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2025 06:31:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qt9hHNIF;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: markus.haberlander.sw@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-385f06d0c8eso1185796f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2025 06:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738333907; x=1738938707; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B9LjDxeD3HHY83cU5cXeadvS+ah4mVDnb+qYFNKJlbk=;
        b=Qt9hHNIFxettGDAxtVclt2JtUkUDcw6Jv2Ne5BH36OxaxzXwiflTPI6KAhrR4lddk5
         88gnd9DyEmH8d5P5bxmG7K+tO8ZJ63l3z4kl0j6MW6GosOQ7RPMpFb6ORELeMmgEzHuO
         20QOaAxsOwIes+CxB4fDDHz1gXepk2Qv+wc/OrUG7Fgg2fbRpDd9/5UbY1A2MicmRsIM
         6zMygfbQE1BTpuQO442rAbHUzVTwUb9xJt9pN8y+DpuES6FtIBR+0wlCXOgUJV8XKV9W
         hhfv3fgAcv7oVPEnbJyV6/OIRjXUaCgi9mc4GQrB5M32moqZwk9dvof7bI/fC1+mWYkD
         ky7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738333907; x=1738938707;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B9LjDxeD3HHY83cU5cXeadvS+ah4mVDnb+qYFNKJlbk=;
        b=tX14jN+gYziMBOmmIH29KENm4bJPxZTLSNS6sJWoiNoa9u1PofxC724l3XYBTM516W
         eJY417/e3EKZn5io4b7ksaV3Hw21egp0XU27i5kpb7fgaRhA399qQGQBRYkWMmr6Z4d1
         mEh1sxFt0JTlEjyVMZesFaW3id3vLIb4fsidmymSnnHhRZnMiE6JL1wv/R/3Xo3Npmlg
         gAmGPju1+W34lT4uZ9iuueDqjNYWaYwu6wPDTyU18fCtyG02my/qbQiYjAm8XWTC2aF8
         rOpcwUAZDVRS6nYb1BjQlmIJsrVKYM9nf/P55ONTeKenJXF/7h6Hl+7IU8jQb4/epaMP
         vwPA==
X-Gm-Message-State: AOJu0YwtrRCnTu6M5PBMC8+EBZBIgSQ8HmV5QNKM8BMNB44tHsb/oiz3
	YZ3NACnCItjbe7sAbEMTU3FFDkuciDJec1tNv3bqX+nq4ntWgmo0BQRgHKhdCYx5g6+bsynpXKk
	fMO3GOOVdHAAxZ2G/3j1gsnm3L2QuW3c=
X-Gm-Gg: ASbGnct2D5DtC1DmAljqDghdmpRWZwlr4aRWIxPlfAeL6NHp+VVZy9QbFfZ67WXd+CN
	BFDyE+HMM0sfKSMbnZLkQmxGj9g60RfFlWcuR7W85iosIe9YN071Ifln0ECOemD7s6FqT1Vy4H0
	6PdcgoAIxubWqMczi2dHcE+VgplNI=
X-Google-Smtp-Source: AGHT+IER1I2nqHim5jsRfWgctNZ/aS3H1P2CQWbJncrM1kZLAS3OYhFfdW4p+7vHO95vqv95amVDXwI/q8FxmNL4EG4=
X-Received: by 2002:a05:6000:18a5:b0:385:ee59:44f1 with SMTP id
 ffacd0b85a97d-38c5195e77emr10404179f8f.20.1738333906971; Fri, 31 Jan 2025
 06:31:46 -0800 (PST)
MIME-Version: 1.0
From: Markus H <markus.haberlander.sw@gmail.com>
Date: Fri, 31 Jan 2025 15:31:35 +0100
X-Gm-Features: AWEUYZkKu_HUib64cVycmE4cddajvCg2J4p35DThogcu1r3Q9yAjHbGlcg_LETI
Message-ID: <CAHbqxhqd57JckCrhD7ofzM13wvDUYcf28nGGM0Vbmj-izPRoxw@mail.gmail.com>
Subject: Adding timestamps to yocto log entries
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2025 14:31:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64690

Hi,

I'm currently debugging a few yocto recipes, especially regarding long
build times. In order to get further insights, I simply would like to
have timestamps in all my log entries, so I can easily spot which
command took how long.

Is there an easy way to achieve this globally?

I found this here:
https://docs.yoctoproject.org/bitbake/2.10/bitbake-user-manual/bitbake-user-manual-execution.html#logging

But I'm struggling to understand how this can be used:
* Is this for additional log files only, or can it be used to simply
change all logs? Does the latter make sense in your opinion? What
would a config file for this case look like?
* How does the HashEquiv example log file get linked to the related
messages? I see "BitBake.SigGen.HashEquiv" and
"BitBake.RunQueue.HashEquiv" - where do these identifiers come from,
and how can I set this up to match e.g. all tasks for specific
recipes?
* Is there maybe a better way to debug such issues? I found almost no
code using BB_LOGCONFIG online, so I'm wondering if I'm using the
right approach here.

PS: I'm new to this mailing list, and I hope this is the right place
to ask such questions? If not, please kindly redirect me to a more
suitable place :-)

Best regards & many thanks,
Markus

