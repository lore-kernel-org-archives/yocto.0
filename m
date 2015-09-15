Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB567E00D5B; Tue, 15 Sep 2015 02:46:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45456E00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 02:46:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t8F9kBEd006970; Tue, 15 Sep 2015 10:46:11 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yf7HazC0hwYD; Tue, 15 Sep 2015 10:46:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t8F9jsDV006940
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 15 Sep 2015 10:46:06 +0100
Message-ID: <1442310354.26666.50.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: chris@2net.co.uk
Date: Tue, 15 Sep 2015 10:45:54 +0100
In-Reply-To: <55F7E2E7.7050609@2net.co.uk>
References: <55F7DB62.20302@2net.co.uk>
	<22897052.oHQR6DBFiy@peggleto-mobl.ger.corp.intel.com>
	<55F7E2E7.7050609@2net.co.uk>
X-Mailer: Evolution 3.12.11-0ubuntu3 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: gcc reports sysroot is /not/exist!
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
X-List-Received-Date: Tue, 15 Sep 2015 09:46:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2015-09-15 at 10:20 +0100, Chris Simmonds wrote:
> On 15/09/15 09:58, Paul Eggleton wrote:
> > Hi Chris,
> > 
> > On Tuesday 15 September 2015 09:48:34 Chris Simmonds wrote:
> >> I am using Yocto fido (1.8) to generate an SDK for a BeaglBone. I
> >> generate the it using the command:
> >>
> >> $ bitbake core-image-minimal -c populate_sdk
> >>
> >> Having installed the resulting SDK and sourced
> >> /opt/poky/1.8/environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi
> >>
> >> I find that the sysroot is not set:
> >>
> >> $ arm-poky-linux-gnueabi-gcc -print-sysroot
> >> /not/exist
> >>
> >> This used to work fine in 1.7 and earlier. It looks like now I have to
> >> use $CC in place of arm-poky-linux-gnueabi-gcc, but that messes up many
> >> Makefiles which set the compiler with something like
> >>
> >> CC=$(CROSS_COMPILE)gcc
> >>
> >> What to do? Why is gcc not configured with a sysroot any more?
> > 
> > AIUI this had to be done in order to have a per-architecture compiler rather 
> > than a per-machine one. I believe if you use make -e then variables set in the 
> > environment will take precedence over those set in the makefile, which will 
> > allow the CC value set by the SDK's environment setup script to be used.
> > 
> > (If we haven't documented this somewhere, we definitely ought to.)
> > 
> > Cheers,
> > Paul
> > 
> 
> Well, that works as far as it goes, but it also overrides my CFLAGS,
> LDFLAGS and so on, so I still have to change my Makefiles, of which
> there are many.
> 
> Also, I am not convinced this is a step in the right direction. I expect
> to be able to compile a simple program using:
> 
> $ gcc hello.c -o hello
> 
> But with this new cross compiler setup, this happens:
> 
> $ arm-poky-linux-gnueabi-gcc hello.c -o hello
> hello.c:1:19: fatal error: stdio.h: No such file or directory
>  #include <stdio.h>
>                    ^
> compilation terminated.

If we hardcode the path to the sysroot into the compiler, we hit several
issues. Firstly, we rely on the relocation code within gcc to get this
relocated correctly at install time. That doesn't work for the way we
currently build the compilers so the default sysroot only works for the
default installation directory. Yes, that one is fixable with some
jumping through hoops.

However if you don't want to set CFLAGS either, that implies we'd have
to code the flags into the compiler as well. 

So we'd build a compiler per target sysroot and per set of optimisation
flags for said target. That is grossly inefficient.

We've always had the environment file there and we've always set CFLAGS
this way, even in 1.7. If you used a non-default installation directory
in 1.7, it likely didn't work properly without passing the right flags
to gcc so you just go lucky even there. In 1.8, we poisoned the default
sysroot, so we could clearly identify any software which wasn't using
the CC and CFLAGS in ways we didn't expect. We did this to make our core
builds deterministic. We decided to do the same with the SDK.

If you really object to having to configure the compiler, I'd suggest
creating some simple wrapper scripts which simply add in the sysroot and
possibly other compiler flag options you need. The main reason we
accepted doing the change to the defaults is that there is a
comparatively simple workaround available for those that feel as you
do. 

We could even have that code in the main repo, I've just felt so far
that letting people see whats going on is better than hiding it behind
more magic scripts.

Cheers,

Richard


