Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9364.1583317753965909149
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 02:29:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d+zVfwC0;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61393E017B7; Wed,  4 Mar 2020 02:29:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC420E01773;
	Wed,  4 Mar 2020 02:29:12 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id r15so1840583iog.0;
        Wed, 04 Mar 2020 02:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=kg2bwPpX7myx/XrphGy3VI7pGLJhRjZKaVmak8AXEV0=;
        b=d+zVfwC0FEWhika6lwBgd4pS3i/4eG5M0ZkkDBVdzWcIUC/9HNv72oAqI85rILTwJJ
         4B9xRDG6CPkM1oPddYYLPeyYzKRa5wbwsBa9xOT7E+Ikr+mdH4HJmOXvpze+bQbGsy87
         OJ8AVrJXSi5pEHnXCDOaMHlJjYkKNztUge4QqYHY5RwlUbBh+O4E0PY7ef0S+y9wyKba
         RyiDBszHEWvWzTsd417GFzgoiRDqIgJ1XKPXIBhkdsh1Jl56/D6nxB4Ju8hoIkszBtIl
         020Zglcxyfua1yFVL2UlNs92Z0bq85bVwT2t/IykNLQny6gMVwHKo/vOIbqZVEvk6UW5
         jnOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=kg2bwPpX7myx/XrphGy3VI7pGLJhRjZKaVmak8AXEV0=;
        b=YJfmrNxOAzjpt66hGpaJ7p8mpDRz027H2zQfT924v7hGKB3MMjaj2gK/BRM9VNMfyC
         7GXY3fsBOG9Gny+4U5KMZuDCnJfw9461+vem2taVNUcmFyqTTQe8U5R1EP4obKQmSIV6
         9NXetKJSqOGEzk3We02vHDlceeje5Ekqf7uZVr6ELnNFsMHe3INTff310BUy251HQGEz
         w8w/YBvjWHKcnpUgGX5d+RzFWYqhnyTGBgHXlexdWz0eiqOnDqXv0ixagbYdmbZsug6T
         6JV+P9PlbItlTj+FCtT6QO2SlyRJE7sv6ewaIjDkLoknc3YzJAt4HwCtuzKH/pfTtD66
         RltQ==
X-Gm-Message-State: ANhLgQ3ZZopPUDJvmNWHJ2UdbIZ9DwHSGLCveQ9G9RNDsAhVkv/0U1fb
	oOxEL5ppwh+lOh1JzVJu8WnQrfmKjhb3IbYSYw0=
X-Google-Smtp-Source: ADFU+vvOujPgO3a4cKB4Ymx+r1fedqyHJ7LuaWlktCTss1+g6skSABtFyzLWHPpxVi8hBFpOKh5dF1VlJmUpf5Bg370=
X-Received: by 2002:a5d:87ca:: with SMTP id q10mr1679510ios.192.1583317751980;
 Wed, 04 Mar 2020 02:29:11 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f487:0:0:0:0:0 with HTTP; Wed, 4 Mar 2020 02:29:11 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 4 Mar 2020 21:29:11 +1100
Message-ID: <CAA=hcWQK3auVqLAYVYc-rKfgPE=VnbmnYMzqtOMjWKfOwYbPeA@mail.gmail.com>
Subject: Does Yocto / OE build u-boot image for u-boot configs in #define CONFIG_EXTRA_ENV_SETTINGS?
To: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	Meta Freescale <meta-freescale@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I created recipes-bsp and an appended file u-boot-imx_2018.03.bbappend
to build a customized imx6ullevk image, I added my configures in
#define CONFIG_EXTRA_ENV_SETTINGS in mx6ullevk.h, it built the
u-boot-ram.imx and u-boot-nand.imx, I tried uuu to store
u-boot-ram.imx to the  =customized imx6ullevk board, all settings in
CONFIG_EXTRA_ENV_SETTINGS were lost, set nothing in u-boot. It did not
seem that Yocto / OE built the u-boot correctly and properly, what I
could be missing?

Thank you.

Kind regards,

- jh
