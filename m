Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.17800.1609275367420005657
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Dec 2020 12:56:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ix.netcom.com header.s=dk12062016 header.b=Thcl2tOT;
 spf=fail (domain: ix.netcom.com, ip: 198.145.29.25, mailfrom: pderocco@ix.netcom.com)
Received: from elasmtp-galgo.atl.sa.earthlink.net (elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3FA2C38C0322
	for <yocto@yoctoproject.org>; Tue, 29 Dec 2020 20:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1609275366; bh=0HpHYrD/rrI0XaeAVsnUh0TvmEIArsofiFqO
	vQdbyjA=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	 X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=Thcl2tOTLUQkpU7UkDPwZqT
	wxxNHchXTIPer/r1d1Tc1WscXLd5qRbE6B4FxWVNDLF5YqzsfQwf3YlvtwK4jTwt0Wq
	xynDKNaw8orIPFg9EcsY+8bFE3eOZy4di6tZnJ/yQ8lslCK+ZwqvBE63rQodbeTRsC+
	F3EFuNwXrLJjYiXitXRV0TVn3o+atM40qQEYzrHaS4TMHut3oswr5Ya3sBuWhQbsy8H
	1iXOt/ArvSdSzZdVw8mY2c2LCtoGEq57vo8Ni4D9VGByJ6nrvizU7b/9eJjD0oym0dz
	FYJ4gPwTJs7wzUeBHYBQGLRzStMi8JNftOp1YH8Mnumy6aweOwg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk12062016; d=ix.netcom.com;
  b=HYf6aT1tRXNByMB7nEkmklDRrqXg8a+SmzmwRSJlvShdIDAAVvEnab/Y//6J2iU1U75X4xcaPXxJ8h/imriAbYAljWb7bCPxgp+5T3NnrGnjQWaDpxlUbXzytrl6DhZLHb6zrWVpT94qTSiw+3DN3Bo+kPj37IxcoqCKiZp0Ogo8h0QFwYs2KlgJjG+qCC6MFqVyCqa/zVbpb+DjW5x+czyQPn5GTEhEpEUEqsF/LQcJGpo6VybS98/TF7/2WkJDXiQ7WFfyBdr4fyeJydR/wQXTPSvUxSo+xzlc9f3Syj6W2wNqZhtr0X7U+20xku1u4mALLdHnWb++qrbd2QhUQw==;
  h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1kuM2G-00051c-9k
	for yocto@yoctoproject.org; Tue, 29 Dec 2020 15:56:04 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Subject: What to do when a patch isn't needed?
Date: Tue, 29 Dec 2020 12:56:04 -0800
Message-ID: <2F6E3E539BAE4D14A2917178FC4E95B0@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdbeJQXcKD+WL/bcRyquda8w8x8Zog==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606885104f365582d0130f68632f856490577350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm upgrading a project from Pyro to Gatesgarth. Building the toolchain, it
barfs on a patch which isn't needed. Here's one of the error messages:

ERROR: binutils-native-2.35-r0 do_patch: Command Error: 'quilt --quiltrc
/home/pauld/yocto-gatesgarth/build-intel32/tmp/work/x86_64-linux/binutils-na
tive/2.35-r0/recipe-sysroot-native/etc/quiltrc push' exited with 0  Output:
Applying patch gas_as.h.patch
patching file gas/as.h
Hunk #1 FAILED at 486.
1 out of 1 hunk FAILED -- rejects in file gas/as.h
Patch gas_as.h.patch can be reverse-applied

There are two more just like it, for the cross and target versions. All it
is is a patch to add one external function definition, but it's already
there.

Is there a preferred way to fix this with a bbappend? Perhaps replacing the
patch file with an empty one?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com
 

