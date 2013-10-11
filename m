Return-Path: <xertz.yocto@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9E8E01566
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 02:50:03 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id lh4so2657877vcb.9
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 02:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8W8t08tz36GBmcIKEp8jIyPzQ0jZnFEOElS46sBqo9Q=;
	b=C0dFTXzBLuPskzWjJehWexUR0Ok8a4+1WrG9rSH4P28X6+0sngcHreQHz5gFKa/bNs
	KmMHD/c4zNy4yHGWxbVLkN2KRzrZaPAN6IZFY01gqTMX25rYcS3ceAqOUrLKe5Eh7Q9e
	mSlm+GRHGDyr/nkl5tZorGNSSReLbiOeMJoZGJdOEbHsY3wDj2oVOVJzkMEAmdZG7jMk
	NyFrtG5chaAqhVCw8MYMbQu45pf+h3YOz2VcYXX2PH6E2xCKmZ7KhqgEvibvpjHUBhbv
	rkpuD6gugvrP6d8t2hynqssVgZYrg6nLgg6AZ9GxqdkI0x6BoELnKbbXmeOK21BGHLFk
	r6RA==
MIME-Version: 1.0
X-Received: by 10.52.161.231 with SMTP id xv7mr17348335vdb.1.1381485002505;
	Fri, 11 Oct 2013 02:50:02 -0700 (PDT)
Received: by 10.220.69.199 with HTTP; Fri, 11 Oct 2013 02:50:02 -0700 (PDT)
Date: Fri, 11 Oct 2013 10:50:02 +0100
Message-ID: <CAEo3mJUnZeNMc_-7xsMFGJcWd70QU=UnfPsBjGR=mqERJH5ufA@mail.gmail.com>
From: John Doe <xertz.yocto@gmail.com>
To: yocto@yoctoproject.org
Subject: Re-building kernel modules for appropriate kernel
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
X-List-Received-Date: Fri, 11 Oct 2013 09:50:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am having trouble building the right kernel modules for the current
kernel. I was using kernel 3.8.13 in meta-ti but now I'm using 3.2.0
in meta-ti.

I'm running bitbake core-image-minimal, which seems to build 3.2.0
kernel just fine, however it does not seem to force a rebuild of
kernel-modules and the modules inserted into the image are for 3.8.13
not 3.2.0. Both kernels are set to rebuild the specific modules. Do I
need to run some kind of clean or skip set-scene for kernel modules?
If so, how do I do that?

Regards,
J

