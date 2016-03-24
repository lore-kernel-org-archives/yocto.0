Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DFF4E00C39; Thu, 24 Mar 2016 07:16:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6803AE00AEA
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2016 07:16:41 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id m7so37738811obh.3
	for <yocto@yoctoproject.org>; Thu, 24 Mar 2016 07:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=t3huZh0JsDGzAhKlNhvKy3W5LAZ8zI0D3U9NBIdf4r8=;
	b=eZ5b8fHf8w4dxAiRz716zlGdHlWKG/zm5+sU8lNGf5UyXuuJZTtGHv2nJV25T4FBlO
	yje+ZvXab3yHtxTy1aclY2HSGxIRIXdI7uEgFEBXIRkEh57i10ylswnjyfq4EgA+FzG3
	AhaGcZ7GP7XRz34zs1SxHZfbAJAoSil78slSEECS3TPTu2SuotOuVP/80oXEswkuZnY6
	ZTs/dgRwJpOPS3CGps7luAWBwFwE2W9wzS2Kf0Sb6jbiKP1vZ1/lTE464wNdQPINUaCk
	MmdhOJv7ZxMoI5hQ0CECldSVkVfu77G6/f75+ThmzXrqOP/Qbn1/rQKD8kmssW9FD9WK
	K6Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=t3huZh0JsDGzAhKlNhvKy3W5LAZ8zI0D3U9NBIdf4r8=;
	b=mVCd+paeOPNV1dWsTmpkBOJqfFmiXa6eWKrdZtSjJ6XgRNLf9Hy+WQijjLOH6LNJ+y
	08Zp3xehLWDycUEiexbXuFHHGcKUJT7tYpCkAK3/BRlurXyzTdIA/lWrdRhq4zy1roOp
	ES/Yi8pfDHLKdf2bfUYmCnqHNHNtqqQkT0ruETwjhbsn2zcqdrgcmVGVk8HyzLcgUAFY
	1IUtJDdYDtSFyONTNY5a47bLbORFK6Xxlb6ByxRea1zzIuZksiytTsH9NOBsRtW5NJLY
	sa+csxM41yUd7//NE+1oLX+hW6IgDiTScDMCZupWwEt4+7qxi4Is6YdyBxlhqEDmIkJC
	OIqw==
X-Gm-Message-State: AD7BkJJSj0R+e6hLhF4QdDA9OVj6PucgxpLuFlBBKNKLC77nyGZKbMsG5aFAVkKIY4ebqNC30SC70cST0gmGvA==
MIME-Version: 1.0
X-Received: by 10.182.97.164 with SMTP id eb4mr4345933obb.39.1458829001401;
	Thu, 24 Mar 2016 07:16:41 -0700 (PDT)
Received: by 10.202.178.8 with HTTP; Thu, 24 Mar 2016 07:16:41 -0700 (PDT)
Date: Thu, 24 Mar 2016 08:16:41 -0600
Message-ID: <CALRMKQqbkZoh3E+5p5jQueSeQiyvvB8iFQKeYjPAvaeVYNEXrA@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: yocto@yoctoproject.org
Subject: Hung build when doing Kernel Training Lab
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
X-List-Received-Date: Thu, 24 Mar 2016 14:16:44 -0000
Content-Type: text/plain; charset=UTF-8

I've been working through the Kernel Training labs from
https://www.yoctoproject.org/sites/default/files/kernel-lab-1.6.pdf.
Everything is working as expected up - using Poky 1.6.03 - until I get
to Lab 4.

In lab 4, the kernel source is coming from a local clone of the git
repository: git://git.kernel.org/pub/scm/linux/kernel/git/stable/linuxstable.git.
But, when I try to run bitbake using the recipe as included in the lab
download (https://www.yoctoproject.org/sites/default/files/kernel-lab-1.6-layers.tar.bz2)
it appears to hang when doing the "do_compile_kernelmodules" step for
the kernel build.  {I'm not where I can view the machine running, so I
cannot copy or quote the exact item that the step is running on.}

This is an important lab for me to complete, since my expected project
will need to have all of its builds done on a network-isolated server
with all of the source code brought in on read-only media. (I was
planning on asking how to do that, before I found this lab exercise -
and I may circle back to that question later).

I'll note that my build system is a low-powered (ASUS VM42 with a
Celeron 2957U 2-core processor), and is (at least currently) running
Centos 7.x

Thank You
  Ron Oakes

