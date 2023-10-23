Return-Path: <mtownsend1973@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAC1C25B41
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 16:29:52 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.125417.1698078584840267272
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 09:29:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QWU7jT3F;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: mtownsend1973@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-41cd4cc515fso23917161cf.1
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 09:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698078583; x=1698683383; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n9gAx6CVGeaa2LoHa5iwt6+ag1IZcjbMfjEx5Wo7yBU=;
        b=QWU7jT3FtT/ElQuBEMXg8ijG+diGzLIGsH5hQWXM+WMmuRyQvEQGMo+ZitznfejwEE
         wX0K0U8+32txvQU/0mLNO7aumpM0FoY7iVC3TVcTdzbXiQnM7X1aXwklfqeVy97m27Gg
         Kr75s9NtwLnyc0qJ6jXTwg/1IZtYIRjFCmtH2N5j9cOhQyQlMs+kEf7s86um0JU08UVi
         rDxxkJSWLvsUo8QgaL8AE/HN4KHJ4SEO/KpOQM7PIYSgBsJnIAtLX97gmNFP/EMDRfB/
         NYaQMbZ2ND480Cw4JJGWKQFYBpgWSFB0gJ9toejMvwqXLyUU1ak+F42naUXKYVUCDBWL
         qC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698078583; x=1698683383;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n9gAx6CVGeaa2LoHa5iwt6+ag1IZcjbMfjEx5Wo7yBU=;
        b=nj945ObtRnJPMl3qQpWmGqmRHW0PgRUvrng3ImEK5gwu1Ss5cycMFdmEnpSZIQUcN1
         m8cAN+xs5Mm3BrJ3u+m0yJvceOT9F8ynNAyK09ePG9rWeB/uFL4sIn5OWQxk2jrkekeW
         7ciOWKjUiHxUutH9Rr0JcjGXpUjrmDclzEUSV1q/AImqr2wsUPEWnA2YlCa/CPvBXIGC
         9GM4is3wjce2KFvKFIxPdrCWMOWHubqlJX612RlodBgyVSBjPAPy02U7zsmxxcD/CHHR
         frAcKGLRhGgUjg152OMjy/1Nu8kfGNDYzNGNCD3wP2XaISdE2YVZw/nEtqEWBOZWetWP
         7yGg==
X-Gm-Message-State: AOJu0Yw+mcomWLRpgJbOHEmX52lTEcefrlcDEY8HSk+GeDV8PNfkES/1
	Mp6Pusrt7V8qpMS1k2tud4RBNZ6x/jcq2KjihNyJA5ZjPI8=
X-Google-Smtp-Source: AGHT+IEq/PH4Fa2YXzaTeQmLf5zLjp8Bj4682+adJBNxidVZP6vKNzdI0JU7HPAo0eHbGSwF7WJn+uYl1QMlXFwlCcc=
X-Received: by 2002:a05:622a:2c3:b0:403:eb5b:1f6 with SMTP id
 a3-20020a05622a02c300b00403eb5b01f6mr12582496qtx.63.1698078583532; Mon, 23
 Oct 2023 09:29:43 -0700 (PDT)
MIME-Version: 1.0
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Mon, 23 Oct 2023 17:29:32 +0100
Message-ID: <CABatt_zLLc-pGxmcqYsYQowsGRTt9ETzk7x5v6L+5bV18p8byg@mail.gmail.com>
Subject: Clang LLVM do_package strip error
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 16:29:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61459

Hi,

I've updated the project I'm working on to kirkstone and using GCC it
is working.  We want to move to Clang but I've seen a couple of
recipes fail in do_package with a similar error.  Here is the output
for runc-opencontainers, the package tini has something similar


ERROR: runc-opencontainers-1.1.4+gitAUTOINC+974efd2dfc-r0 do_package:
Fatal errors occurred in subprocesses:
Command '['aarch64-poky-linux-llvm-objcopy', '--only-keep-debug',
'/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/package/usr/bin/runc',
'/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/package/usr/bin/.debug/runc']'
returned non-zero exit status 1.
Subprocess output:aarch64-poky-linux-llvm-objcopy: error: Link field
value 47 in section .rela.plt is not a symbol table

ERROR: Logfile of failure stored in:
/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/temp/log.do_package.2936320
ERROR: Task (/ws/extra/octopus/octave-kirkstone/build-cad-devel/../sources/meta-virtualization/recipes-containers/runc/runc-opencontainers_git.bb:do_package)
failed with exit code '1'
Pseudo log:
inode mismatch:
'/ws/extra/octopus/octave-kirkstone/build-cad-devel/tmp/work/cortexa53-crypto-poky-linux/runc-opencontainers/1.1.4+gitAUTOINC+974efd2dfc-r0/image/usr/bin/docker-runc'
ino 84410787 in db, 84431171 in request.
Setup complete, sending SIGUSR1 to pid 2936321.

I'm sure these used to compile with Clang in dunfell so could this be
a toolchain problem?

I'm using the kirkstone branch of meta-clang and have the following in
my distro conf
PREFERRED_PROVIDER_llvm = "clang"
PREFERRED_PROVIDER_llvm-native = "clang-native"
PREFERRED_PROVIDER_nativesdk-llvm = "nativesdk-clang"
PROVIDES:pn-clang = "llvm"
PROVIDES:pn-clang-native = "llvm-native"
PROVIDES:pn-nativesdk-clang = "nativesdk-llvm"

and this in local.conf

TOOLCHAIN ?= "clang"
RUNTIME ?= "llvm"

I notice there is a kirkstone-clang12 branch in meta-clang, should I
be using this?
If not, any help in debugging this would be appreciated.

Cheers,
Martin.

