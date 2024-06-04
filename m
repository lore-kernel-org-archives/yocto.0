Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E7BC25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 13:46:11 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web10.21799.1717508263704552447
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 06:37:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eTzP83eB;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7024cd9dd3dso3096110b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 06:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717508263; x=1718113063; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+RHbPgvoTOZqewLAVhUhOHvZJ37cmqabuKcSLACL/EA=;
        b=eTzP83eBYJk9yjB6JjBln+dhIVWtfuJ5yAlLbrctGzG6hTkCPg55Lbb/hx+ARGiiuZ
         h9cB9dQI6e9O9sM7HNzxUQwnGh3FbKCzFoGCzuW902jZXMo81kA/z3AGalhZhbzDPKzZ
         Xbwr8MAlwqmhfQz8Me/iEdtpkTteL0DLLh+C5nCYJgOE9dRzzlF/XmxlalS3eGAD1LQD
         sDcHfRpSGES8RwZDE++ckbNvkF+uDgEqV6ixfDlROzuE+sqVOQhWyw/tnwct93Jk0z6X
         JOvpp1ijs63vl3T2G7h6LmA5snZE6rwCUMtkJR7Is5HEIzd3o16Rx+5X3b6ZV6KFf/Vh
         O07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717508263; x=1718113063;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+RHbPgvoTOZqewLAVhUhOHvZJ37cmqabuKcSLACL/EA=;
        b=tPncXDNvPDR8KIJHeyEhd9IvwCVxhtZEgaON+HrnHc1v0v0tSeKxHI7C7q85/tdkov
         XExUeJUXS5yb7MBIlt3J7Fy3kbJP9BFyKJjhnAfYtoor7EfEswuYnKKnc+v1lw8Rflnf
         pN7vVuW3YDOKTRdwwPFZ+O9VMcL9ItwJLceED0glrlqQmr+1OQalrlw6GIfvCtGy3vwl
         QZcVZps9qcgjxrqYU2Iai4eEJ1WxZ2vwUL8c1Quf9GYeFB4CFX/IQq+QSBoBbMeebx5E
         +n8D6SZCMPVTiTRRjWdZxIJHtZOQJjHL6zzts9Aj+0WlejodEdzqcKqfzfSYb4jMfChX
         PzXA==
X-Gm-Message-State: AOJu0YwQ3FIP8S67ZRCzCpY8pf3Dtn3JWMzCNkQyy76PU3GNhkA94f1j
	Y/Vwg9d0zzK0kiwLgrogXzcFh2fVyk8lPmPRK/JtnG2Bq1eF2PBU/LNS8JyPfzitqA7Mu44btDN
	dv0Cdjs96InHx/5U0ga7mZN+kYuEQtYEV
X-Google-Smtp-Source: AGHT+IH0xFRGTjvDpoXQHRUAsWVHI5fJheJEoXNgzxcJTF3z8fB85d6N0A9LHp3JUVUBgFASpMv8b9EukoNctOOD+sI=
X-Received: by 2002:a05:6a20:9188:b0:1b0:14a0:c873 with SMTP id
 adf61e73a8af0-1b26f185930mr13384902637.35.1717508262604; Tue, 04 Jun 2024
 06:37:42 -0700 (PDT)
MIME-Version: 1.0
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 4 Jun 2024 15:37:31 +0200
Message-ID: <CAGAf8LwkyOJqcsZzEduUOqccdM42s+=m7S9tbA6kGZ-eovN2Gw@mail.gmail.com>
Subject: Problems with Torvalds Kernels (6.10-rcX)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 13:46:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63278

Hello Yocto Community,

I am trying to understand how to handle (beside linux-stable) another
pre-released stream of kernels, handled ONLY by Linus.

I called it linux-torvalds. Whatever I tried last week does NOT work for me.

Let me start describing the problem.

This is the kernel recipe I am using in my meta-bbb layer, experimentally.

Here is the pointer for kernel recipe 6.10-rc1 (on the net still
visible from github):

https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-kernel/linux/
https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes-kernel/linux/linux-torvalds_6.10.bb

Not sure from where the variable ${SRCPV} comes from (from .../poky/meta/...)?

The .../build/conf/local.conf is NOT visible from the net, but in
nutshell, here is what I have in it (important):

## Define kernel version
## SRCPV = "${@bb.fetch2.get_srcrev(d)} <<<======= Commented out -
just to remind me about this mysterious variable
## PREFERRED_PROVIDER_virtual/kernel ?= "meta-bbb"
## PREFERRED_VERSION_meta-bbb ?= "6.1.%"
PREFERRED_PROVIDER_virtual/kernel = "linux-torvalds"
PREFERRED_VERSION_meta-bbb ?= "6.10.%"

It then tries to pick up a latest linux-stable kernel 6.9.3 (talking
from the scratch/fresh bitbake), but since I have:

PREFERRED_PROVIDER_virtual/kernel = "linux-torvalds"

It fails, since it does not know the location where it needs to fetch it?!

If I make the following changes:
## PREFERRED_PROVIDER_virtual/kernel = "linux-torvalds"
PREFERRED_PROVIDER_virtual/kernel ?= "meta-bbb"
PREFERRED_VERSION_meta-bbb ?= "6.10.%"

It does fetch it correctly, but ONLY again kernel-stable 6.9.3 ???

Despite the line PREFERRED_VERSION_meta-bbb ?= "6.10.%"???

Where am I making a mistake here?

How to pick up linux-torvalds_6.10_rc1 recipe??? At least, then I can
continue forward?
_______

I just spotted it!

It seems here is the problem!?

https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/conf/machine/beaglebone.conf

5 SOC_FAMILY = "ti335x"
 6 TARGET_ARCH = "arm"
 7
 8 DEFAULTTUNE ?= "cortexa8hf-neon"
 9
10 require conf/machine/include/soc-family.inc
11 require conf/machine/include/arm/armv7a/tune-cortexa8.inc
12
=======>>> 13 PREFERRED_PROVIDER_virtual/kernel = "linux-stable" <<<=======
14 #PREFERRED_PROVIDER_virtual/kernel = "ti-linux"
15 KERNEL_IMAGETYPE = "zImage"
16
17 PREFERRED_PROVIDER_virtual/bootloader = "u-boot"

Thank you,
Zee
_______

