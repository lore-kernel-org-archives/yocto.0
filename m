Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85E0E01630
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 06:16:06 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id n4so4767604qcx.13
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 06:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=qp5+hJfh7Kt9YsIt7QbR+7PIJvTd+f9Ljw7ueVWWYXY=;
	b=pICOps39r6Lh0n7Fziv7dZaTIxnvC1UmX0QuYedpdPFy9wntDIFTgaDTwK0kQpSihx
	Q4vnFTDb08mSHchzbAxIMm39b9MAD5dCJeX5zU3kJNmafb4j2cHuNOdWUMypjmw2gVZm
	GFFukU0FHlh4LNYNlvmJxFzbjSg3WgYbvaKRyyrR2BXkzJ9oR7n4pVaOX1XTjprSLCId
	xNIjXETDZi2NTz/eTzOaIZy4+aICbiwIiknS9ZQ5s3RN6WG1uWauVespx5ScsApmMb+7
	AaU1SLt47+fmiHzczpQffYNtBirJMvtsDEvNqkVLBYK9gHUgryflqJZQzDndstMu81+B
	PSmQ==
MIME-Version: 1.0
X-Received: by 10.49.27.226 with SMTP id w2mr35356699qeg.32.1380633365377;
	Tue, 01 Oct 2013 06:16:05 -0700 (PDT)
Received: by 10.49.57.197 with HTTP; Tue, 1 Oct 2013 06:16:05 -0700 (PDT)
Date: Tue, 1 Oct 2013 15:16:05 +0200
Message-ID: <CAFyqS9qRodbORexXqZNQESh+iiXyhs9Zi+pHBOLdxiipR0_aAQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Problem finding -lgcc when using SDK toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 Oct 2013 13:16:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello. We have stumbled into a problem when using ld directly instead
of going through the gcc frontend.
A simple operation like this fails:

>${CC} -c hello_world.c
>${LD} hello_world.o -lgcc
arm-poky-linux-gnueabi-ld: cannot find -lgcc

And yes, I know -lgcc is not required in this case to compile this
one, but this is only a simple reproducer.
The real issue was discovered when trying to build U-Boot from the SDK.

To resolve this problem we are forced to provide
-L<sysroot>/usr/lib/arm-poky-linux-gnueabi/4.7.2 to LDFLAGS.
But that should not be needed, should it? Anyone else bumped into this
problem? Are there any "real" solutions.
I am starting to think it has to do with the hardcoded installation
path in the binaries maybe? If you choose not to install
the SDK where Yocto assumes it to be installed things break, even if
--sysroot is used.

Thanks.
Hans

