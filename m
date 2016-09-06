Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A90DE00D4A; Tue,  6 Sep 2016 10:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD64E00D33
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 10:11:04 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id s131so45097180oie.2
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 10:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Y0oDT6Vf2fjhM+i8mT1vxW3tVp/cKDw6FCpvfVAkB+g=;
	b=zOAUyUztYkrEA1xts77aGyiemNqd4b7PQQOwzdVfnWffLdD6VDVWzyuGOdpZa9EDLc
	0J5E3ZFgcLSek0o1K/sMyVqsutZssDYdrTpOL+RJ5T1D2JNsjjsKPCnf/jbJxXHgTwwQ
	NE3IdHdKi9q5D0MhMlmyfQzJrWDBl8tL2Yv5i3bYC93x3SfhhioQbq7OQkg61O45vCgc
	ySYIb6G4cnVzc4ArTyZGg9kD5OWiD6Iwf/ME0YA8KTSj5t9kQ9modCJZFCNR//JMhBS1
	U7UJuGck8IcaEjsxiwT7RlilL/vsvnKT+4qB7S8qYqVzi3PVZ/U7ti5DeCsdr6XRehhQ
	+KSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Y0oDT6Vf2fjhM+i8mT1vxW3tVp/cKDw6FCpvfVAkB+g=;
	b=IPp60y5YOCuHevmDx9wtnrsob59aZ1BqTn5cRbW4Xbg3WSEorN0KuzDMJumht/PA0w
	/g/QpJloAYUWQ+oVBn54f2TevN0tNcTvc13sG9TneFL3eE5ckTRMqqBXBBDBlg4cOcRV
	YIPGBBeSLFfZ6ZmNsQvDf8Th3t5ppC6X76FlJQWrFosRyYKqWK8/LxphH2ocu1DPIwhf
	raQcxmpbGk/EpSPoa7BgtUWTeJChm5RUz/O1Z6nodck83ZpCwnt0X9/s8484mtNxADLn
	gKpOXurEH63SnVfvVTc7MyaPzp7J/j2n6DK+iJ9R1jlEpG4DNDMZfUuMsO0DuKpGSBP1
	N4UQ==
X-Gm-Message-State: AE9vXwMfwOKk8Q8QeOcrTtnF0sz8YzoqLWCoNBjZ8ecZAyPBMZ06MZdwbhsuBJllHsxpgaOWht72gVH46I3WDg==
X-Received: by 10.157.38.202 with SMTP id i10mr3993350otd.79.1473181863621;
	Tue, 06 Sep 2016 10:11:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.253.65 with HTTP; Tue, 6 Sep 2016 10:11:02 -0700 (PDT)
From: Ronald Oakes <ronaldo@brc2.com>
Date: Tue, 6 Sep 2016 11:11:02 -0600
Message-ID: <CALRMKQr9upirFMexg8nkFEXY8DN9uA7LaCngNGQpk4EroHN3tw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Building a Kernel Module that uses /lib/modules/<version>/build/Makefile
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
X-List-Received-Date: Tue, 06 Sep 2016 17:11:07 -0000
Content-Type: text/plain; charset=UTF-8

I'm trying to integrate a 3rd party kernel module for some hardware
that we are using as part of our project.  Following the directions
that work on the native Linux installation for building it doesn't
quite work for a number of reasons, so I'm now modifying the generated
Makefile.

However, it appears that the bulk of the work is done by a standard
makefile located in /lib/modules/$(KERNEL_VERSION)/build (which was
actually hard-coded by the configure before I started modifying the
makefile).  But, I'm not able to locate this in the files that Yocto
has produced when building the embedded kernel and the other kernel
modules.

I've not booted the target and looked there - but I'd rather not build
this on the target.  Ideally, I'd like to have everything built on my
development system (not that we won't have the horsepower to build on
the target, but I'd rather not be putting the compilers there, nor
have to be having a module build as part of bring up each time - we
won't have any non-volitate memory so everything will have to be
loaded each time we boot.

Similarly, building the binary and just including that may be
difficult as our build system is running a much older kernel than our
target (3.10 versus 4.4), so we'd still be in a cross-target situation
and the 3rd party supplier assumes that one is building for the system
one is running on and provides limited support otherwise in their
documentation (I've not contacted them for assistance yet)

Any suggestions/recomendations?

Ron Oakes

