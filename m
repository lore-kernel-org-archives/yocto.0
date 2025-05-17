Return-Path: <lukforward@posteo.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F12FAC2D0CD
	for <webhook@archiver.kernel.org>; Sat, 17 May 2025 19:33:49 +0000 (UTC)
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
 by mx.groups.io with SMTP id smtpd.web11.17934.1747510427270578725
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 May 2025 12:33:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@posteo.at header.s=2017 header.b=loNDKX57;
 spf=pass (domain: posteo.at, ip: 185.67.36.65, mailfrom: lukforward@posteo.at)
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id C922C240028
	for <yocto@lists.yoctoproject.org>; Sat, 17 May 2025 21:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.at; s=2017;
	t=1747510424; bh=C6csj3cQsPhlzTvdZSfh0C1CHxL0EkIr9RVBeE2vszM=;
	h=Message-ID:Subject:From:To:Date:Content-Type:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=loNDKX57mJVczF7F2077Xm2SW85GVYcmlp0uaW2gLhsP15w9twc9LC3wBML6hs3zX
	 7YfZ4yJvvK/Vh+7Pp1oYYAXwnRq+mo+cr3L+SvlU2wro7iWhSAkPmTKfRcZYr3BQq/
	 NWbiwWFPByGggW+forUqcgsZNeD7JLsa+YJL7DLmSU/k46lWCcwpQwpiIQvRVDdOM5
	 L/zS6ZC+/zXSBnk/rVtMIPyPCW38sowVEkwZ+TSXRetZmIyZyS9VmwCUsUwrPCHaXW
	 DjHGPpN7kGnr5mi8wsYBI93ScF3AX4HVzg11nu5KVgfAu+XUHadBQfljTgfJR/6SQK
	 wHs49PC3Hje/A==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4b0Ddh1HT4z9rxG;
	Sat, 17 May 2025 21:33:43 +0200 (CEST)
Message-ID: <d2d64ec2f57da19164d7c4ae607d15cbe886c900.camel@posteo.at>
Subject: Re: [yocto] meta-mingw - how to use the SDK on Windows
From: Lukas <lukforward@posteo.at>
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Date: Sat, 17 May 2025 19:33:36 +0000
In-Reply-To: <8bda1ec8e555c5faf1cd56a0c8b623238c4cd7c5.camel@vrag.ch>
References: <183DCFFB81DE0E31.22015@lists.yoctoproject.org>
			 <313eaa317c8b09936c20623afaa8087f0bb97c3a.camel@vrag.ch>
			 <CAJdd5Gb0=dN0_63sAWUTOLD+Zw5BT6Crzjq2DJfJLQztWG9-KA@mail.gmail.com>
			 <183EB64B80205975.2891@lists.yoctoproject.org>
			 <b1c78474edf596f1cfccab131218ab653de794ce.camel@vrag.ch>
		 <6b4beaae9d8891eba0c66d12a27e7676376976cb.camel@posteo.at>
	 <8bda1ec8e555c5faf1cd56a0c8b623238c4cd7c5.camel@vrag.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 May 2025 19:33:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65352

> Hi Lukas
>=20
> Thanks for your reply! I did exactly the same - use 7zip and extract
> as
> Administrator. There were some errors concerning lower case and upper
> case names, I think only some header file names. Otherwise there were
> no errors and the symlinks were created successfully.
Ah, totally forgot about that; yeah I think I always used the one in
small letters and ditched the one in capital letters. Not that I think
it matters much, my project does not seem to use any of these headers.

> I'll try another version. Would you mind sharing your toolchain file?
Sure, this is the content of my toolchain file:

----------------------------------------------
set(CMAKE_SYSTEM_NAME "Linux")

set(SDKROOT "C:/SysGCC/wrlinux-10.22.33.19-i686_mingw32-mymachine")
set(SDKTARGETSYSROOT "${SDKROOT}/sysroots/armv6hf-vfp-wrs-linux-
gnueabi")
set(SDKHOSTSYSROOT "${SDKROOT}/sysroots/i686-w64-mingw32")
set(CMAKE_SYSROOT "${SDKTARGETSYSROOT}")

set(CMAKE_C_FLAGS "-pipe -feliminate-unused-debug-types -march=3Darmv6 -
mfpu=3Dvfp -mfloat-abi=3Dhard -fstack-protector-strong -fPIC -O2 -Wformat -
Wformat-security -Werror=3Dformat-security --
sysroot=3D${SDKTARGETSYSROOT}")
set(CMAKE_CXX_FLAGS "-pipe -feliminate-unused-debug-types -march=3Darmv6
-mfpu=3Dvfp -mfloat-abi=3Dhard -fstack-protector-strong -fPIC -O2 -Wformat
-Wformat-security -Werror=3Dformat-security --
sysroot=3D${SDKTARGETSYSROOT}")
set(LDFLAGS "-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -fstack-
protector-strong -Wl,-z,relro,-z,now --sysroot=3D${SDKTARGETSYSROOT}")
set(CMAKE_EXE_LINKER_FLAGS_INIT "${LDFLAGS}")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "${LDFLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "${LDFLAGS}")

set(CMAKE_C_COMPILER "${SDKHOSTSYSROOT}/usr/bin/arm-wrs-linux-
gnueabi/arm-wrs-linux-gnueabi-gcc.exe")
set(CMAKE_CXX_COMPILER "${SDKHOSTSYSROOT}/usr/bin/arm-wrs-linux-
gnueabi/arm-wrs-linux-gnueabi-g++.exe")

list(APPEND CMAKE_PREFIX_PATH CMAKE_SYSROOT)
list(APPEND CMAKE_FIND_ROOT_PATH CMAKE_SYSROOT)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE BOTH)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE BOTH)
----------------------------------------------

Not sure the last 6 lines are actually needed here.

Adapt the values of SDKROOT, SDKTARGETSYSROOT such that they suit your
setup.
Also adapt the compiler/linker paths and flags by looking into what the
environment-setup-script batch file has set.

Kind regards,
Lukas


