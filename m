Return-Path: <linux.matthew@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AABFCE00D9A; Fri, 15 Apr 2016 11:38:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (linux.matthew[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ADE8E00527
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 11:38:23 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id n1so59333579pfn.2
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 11:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Dmo00KnmADhMO69y3bjmgQOAcR5SXhlyjvoFWgkuokE=;
	b=vPMrUEJnhvSMReksQdTIiOF/TUFvbg2nri7Od/jnGv+uETbljgPRSuCcMJWfZzu95V
	WHUJrZOU7cydDDPzSDgzp18j+Z/wzdKoND/opUcFubPehfAaZCE5CvTsrIFcMsClhain
	iRJpeCqYQO0/GnQvG8UEkLudx92+z5eQsbVNaSCr/hzvaA/oPSUA6r/nzLK68svR/45x
	pksqWPlXa9owRXpJw5fgYblI2jIT2pPef6mLpsIQxbokOrKYho81HPY+NqhG9oF/xQIO
	34PdX/Xsi7TwWHYWsTqkfXQ1etTKjhYjsCZR3flUdT2yiiXkiNbTWCPXFjQMuDk2a0xW
	0egg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Dmo00KnmADhMO69y3bjmgQOAcR5SXhlyjvoFWgkuokE=;
	b=Z+wu5Hz/aMQaYL3fdAoj6q204GdankU+jYxz1PQV84iMaD0VrNDSmXlCaDJhAJ8tL4
	FfbU265OwnLoXEQWneeChy5vz73NAhhE1ddH57ySN2bU8eVP9Xuqrju56c41n4dRwx61
	PFofkN+l66dCYLscSUZLGwLivahHBPzQU9dEZoImySwzVOaapuO/W2nhmpfk/anBCvXv
	T2ak4CDq8FnHMP7gLLRJZMJLOm1UjkS2XsFbBw3qS3ZqKaD/MvFX3fXkOzoQbVXdpMap
	ut5fZccVSTtkpI11WxGBBGTPo0zqae4g7d9m3gYO50VCJoN8JO/O83gkaYJWAfBqAfz4
	PV6g==
X-Gm-Message-State: AOPr4FVwwQHjvgY06IG4CGF1GGYfKBAnWpVrpq0wufnm5+tgbsIqBWchHiS3bFqbPkXXlDzQa35alDp5yosBRQ==
MIME-Version: 1.0
X-Received: by 10.98.86.77 with SMTP id k74mr30829966pfb.28.1460745502806;
	Fri, 15 Apr 2016 11:38:22 -0700 (PDT)
Received: by 10.66.180.100 with HTTP; Fri, 15 Apr 2016 11:38:22 -0700 (PDT)
Date: Fri, 15 Apr 2016 14:38:22 -0400
Message-ID: <CAHHS9cGm9FsQ+d6_JJqFR5h3Nu-0O9cyTaoUZ0ewC9-4_ANJhA@mail.gmail.com>
From: Matthew Clark <linux.matthew@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to add libraries to poky toolchain
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
X-List-Received-Date: Fri, 15 Apr 2016 18:38:24 -0000
Content-Type: text/plain; charset=UTF-8

I'm trying to cross build a package with a configure script and I'm
running into a problem because it can't find a missing library
dependency:

arm-poky-linux-gnueabi-gcc  -march=armv7-a -mfloat-abi=hard -mfpu=neon
-mtune=cortex-a8
--sysroot=/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi
-o conftest
-O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu
-Wl,--as-needed myconftest.c -lgdbm

/opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld:
cannot find -lgdbm
collect2: error: ld returned 1 exit status

A quick look shows there's no libgdbm in
/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi folder,
though it is in
/opt/poky/1.8/sysroots/x86_64-pokysdk-linux (which, of course, is for
86_64, not ARM)

I'd bitbaked the meta-toolchain and installed the .sh file, but
apparently I need to add more libraries.  What's the best way to do
that?  Is there an additional package I need to bitbake?   I can
kludge it myself, by manually copying stuff into
/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi but I'd
much rather have something more elegant so I can replicate it to other
development machines.

Thanks.

Matt

