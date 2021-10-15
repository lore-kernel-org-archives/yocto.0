Return-Path: <bluelightning@bluelightning.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66CFC433F5
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 02:35:11 +0000 (UTC)
Received: from mail-61-r20.ipv4.per01.ds.network
 (mail-61-r20.ipv4.per01.ds.network [27.123.24.217])
 by mx.groups.io with SMTP id smtpd.web11.4260.1634265308840715470
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 19:35:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@softec.co.nz header.s=default
 header.b=bue6/+9n;
 spf=none, err=permanent DNS error (domain: bluelightning.org,
 ip: 27.123.24.217, mailfrom: bluelightning@bluelightning.org)
Received: from server-72-r70.ipv4.per01.ds.network (cp-fp06.syd02.ds.network
 [122.201.124.108])
	by halon-out02.au.ds.network (Halon) with ESMTPS
	id 769b7ad7-2d60-11ec-bc81-f8bc1204ff90;
	Fri, 15 Oct 2021 10:34:47 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=softec.co.nz; s=default; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NMkKAIOXyW2AUl6vfd/RuklX6FYJh50VE1G5fJTXXHU=; b=bue6/+9n/n/ZbQ13kB72m2apMY
	0It3D4i2nGGNffiW/pbjzkRitM2DLpSHtMK8glRmA79YuDjuIx+YzG/LuQrlH33BGSG4Yh0WkvIRo
	WP8W2z1aZwHRnCpSJ/S+iE4edkpfuQnefBudaMd7sC8n6DKWMI7Y/DD+Mn7F8ExhEuumWVT8rpsb9
	e5gws+uTMVhLKsU6phMwyqTB59HVONV4YO6ReKgRSjCt1KhjrYBR3FbfVRhcCVOvBacI/8nSsYCrf
	Vq92VVUTzKIp/2cBjNqWN/VMiAbF90dkBwvn8cHMtJs2q5WkMfvU6PLxr8H5yYvO1WcgYIgrn8yzZ
	73Pj0IGw==;
Received: from [151.210.140.148] (port=3890 helo=linc.localnet)
	by cp-fp06.syd02.ds.network with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <bluelightning@bluelightning.org>)
	id 1mbD3m-00Fwz3-5T
	for yocto@lists.yoctoproject.org; Fri, 15 Oct 2021 13:35:02 +1100
From: Paul Eggleton <bluelightning@bluelightning.org>
To: yocto@lists.yoctoproject.org
Subject: glibc -fstack-protector-strong
Date: Fri, 15 Oct 2021 15:35:01 +1300
Message-ID: <3379890.oiGErgHkdL@linc>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cp-fp06.syd02.ds.network
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - bluelightning.org
X-Get-Message-Sender-Via: cp-fp06.syd02.ds.network: authenticated_id:
 paul@softec.co.nz
X-Authenticated-Sender: cp-fp06.syd02.ds.network: paul@softec.co.nz
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 02:35:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55079

Hi folks

I'm looking at how -fstack-protector-strong might be enabled in the glibc
recipe. It looks like it should already be enabled by default via 
--enable-stack-protector=strong in EXTRA_OECONF, however looking at the
compile logs it is passing -fno-stack-protector instead. Examining the
configure log:

checking for -fstack-protector... (cached) no
checking for -fstack-protector-strong... (cached) no
checking for -fstack-protector-all... (cached) no

This in turn comes from libc_cv_ssp_strong=no in CACHED_CONFIGUREVARS in
glibc.inc. Searching back through the git history I can't find much by way of
explanation as to why the stack protector options are disabled. Setting
libc_cv_ssp_strong=yes however results in the following:

| x86_64-poky-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 -mfpmath=sse  --sysroot=/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-z,relro,-z,now -fuse-ld=bfd  -nostdlib -nostartfiles -r -o /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.os \
|  -Wl,-d -Wl,--whole-archive /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a -o /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.os
| x86_64-poky-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 -mfpmath=sse  --sysroot=/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed  -Wl,-z,relro,-z,now -fuse-ld=bfd  -nostdlib -nostartfiles -r -o /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/librtld.map.o  \
|       '-Wl,-(' /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/dl-allobjs.os /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a -lgcc '-Wl,-)' -Wl,-Map,/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/librtld.mapT
| /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/ld.bfd: /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a(libc_fatal.os): in function `__GI___libc_fatal':
| /usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/libio/../sysdeps/posix/libc_fatal.c:161: multiple definition of `__GI___libc_fatal'; /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/dl-allobjs.os:/usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/elf/dl-minimal.c:188: first defined here
| /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/9.3.0/ld.bfd: /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/libc_pic.a(libc_fatal.os): in function `__GI___libc_fatal':
| /usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/libio/../sysdeps/posix/libc_fatal.c:161: multiple definition of `__libc_fatal'; /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/dl-allobjs.os:/usr/src/debug/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/elf/dl-minimal.c:188: first defined here
| collect2: error: ld returned 1 exit status
| make[2]: *** [Makefile:499: /media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/build-x86_64-poky-linux/elf/librtld.map] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory '/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git/elf'
| make[1]: *** [Makefile:490: elf/subdir_lib] Error 2
| make[1]: Leaving directory '/media/large/oe/poky/tmp/work/core2-64-poky-linux/glibc/2.31+gitAUTOINC+4f0a61f753-r0/git'
| make: *** [Makefile:9: all] Error 2
| ERROR: oe_runmake failed

This is not an area I have looked much into before; does anyone have any insights?

Thanks
Paul





