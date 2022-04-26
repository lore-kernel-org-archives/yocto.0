Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE68C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 10:59:15 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web10.4716.1650970752455932668
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 03:59:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IhwHMXO1;
 spf=pass (domain: gmail.com, ip: 209.85.167.176,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id z2so20232187oic.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 03:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=DxNxgzQtiQXvMczcMqibAmb0foEGbegQghjPSdKcVfk=;
        b=IhwHMXO1l8zKdgGB1ojBI99s8D9CEFEE1rVNU3RO0mhW80R5R1F99FHKKOwAE43cuR
         Y9zO0vmry2Y+d+BH7TvHC52JC3Jtl/xh1XSjztevQ+ulnOkWeSDfuA9+2AxRlYSYxeLU
         JkQ5re+kiCbQV7Cgg2yoOiBSaK2aqs/MRRDAY5s/zyPZgJlbxfb8ysTlP82q6toEzGSu
         YCMdHL6Cwq/kyU2hc4dtX0AwHGCetuTBWwrfl/q19NPyW85fbWQgdwuFM/XFvB9503pD
         Kagcu+BWZ7htPIPcQAr/S5rLylF06a4wCmyovW2nMfGrHRy7/hH4S8otCiOUxJ0Ie1io
         5FIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DxNxgzQtiQXvMczcMqibAmb0foEGbegQghjPSdKcVfk=;
        b=W7MyL/foFv/f0rlwWxudKptlcI+zNpOGBcAzosHLD5plggZvDdg54HemPgwFh+oxdR
         tDwh2WPOmCiABbNLAQipFUUQSrRlqdu4u2TTjoi97oHChb9Gd6tXCkhU1LCMHkFWCcTW
         ClGaxbn9mf8nUZ4kjq4oYWrqs11Mb8uWs3MG23TQnMQ6n8uaYgZSi2XdXNvUWzy5XSYP
         PczqpWULXiwX5/Sbt87BqpmWx7vMUKONZS5kBmSTLAwtqrBh4Rt2dcQqlJYqqs+dlFrU
         Zsov4GzLrmoRhfasDSEHC0VumIFrIGlP8OpVnUzE3XPQESD9p3gsf9iJirt4y0Xqb0/5
         BAhg==
X-Gm-Message-State: AOAM5324WathGJaWvCDIlU93QYbaZZLEmShGj5vJwhN/kJXk/e9uT85c
	6CnTEhUZTIQGCrDq3d8AgMhuC25ytcwmPk+sgUVp1mtUQFM=
X-Google-Smtp-Source: 
 ABdhPJzzZ86ZHABmfEYFkTs8/T9IDi1q2WX8Ni67YL52KvjTTN2bcNMhDjyLan6ju2Rkp10+ud9pGXjl93xizlsQqBE=
X-Received: by 2002:a05:6808:124c:b0:2f9:c7cf:146 with SMTP id
 o12-20020a056808124c00b002f9c7cf0146mr14256641oiv.54.1650970751351; Tue, 26
 Apr 2022 03:59:11 -0700 (PDT)
MIME-Version: 1.0
From: Jupiter <jupiter.hce@gmail.com>
Date: Tue, 26 Apr 2022 20:58:35 +1000
Message-ID: 
 <CAA=hcWSv7=gctvWYXSaJTqi=y=G9Zr8Jr01+5vVUcGSsPJM9vA@mail.gmail.com>
Subject: How to force build system to use a working kernel defconfig?
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 10:59:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56893

Hi,

I followed Yocto document 2.3.3 Changing the Configuration to set up a
complete working Linux kernel defconfig in my kernel bbappend, I
copied the defconfig to build/.config:
do_compile:prepend () {
    install -m 0644 ${WORKDIR}/defconfig ${WORKDIR}/build/.config
}

I hope the build system can just use the defconfig in build/.config,
but that did not work, the build system still ran Restart config... to
compare the defconfig and to generate and overwrite build/.config. How
can I suppress the build system not to run the "Restart config"
process, just to run the compile process using the build/.config I
copied to build/.config?

I tried to add KCONFIG_MODE = "alldefconfig" in my kernel bbappend,
but it did not work either.

Appreciate your advice.

Thank you very much.

Kind regards,

JH

