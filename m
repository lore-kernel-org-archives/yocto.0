Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 814BAE00B47; Wed, 19 Sep 2018 04:11:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C80DAE0095C
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 04:11:14 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id k12-v6so4690052oiw.8
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 04:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=s8GQsTKoxM5Q5Hc8iOLNYlyuWYtyZrgsx4hc1qHTtL0=;
	b=CcY4jYIAWM8/oejqQOpEhZxquReyYncJ2waQwMtG0f57o1xlXjN56aC+J8Z2Hffgsa
	UN5L4FnwprrOycATu/UZ07ofaQcuNI7VZ5+x8xj0MeWdST1hPpCf1DAa9i3BGeiYRbXJ
	a7cel+APBAo4q+lW5HUQ1zWZERkAiWGZC5nJZh2MCV3LlZ+MF2A5bmNI/o7oLb1tlZBz
	HR+vQ5o9cyVUB4LU3M62TosRVHAa4V29mwvWb6IQ6PW06vihN4Mfi+PI+5YmlLTRxiRX
	vfhTT6bZfT+J4j4SB6CqeVZa3amG/a6m/Nr7yt+c24cRP9zNfxC4Fo5ZPUGRWXl/8sjf
	DjeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=s8GQsTKoxM5Q5Hc8iOLNYlyuWYtyZrgsx4hc1qHTtL0=;
	b=aTUOD3fNSQURmt3FSnGPhBdFmcXB2l1AID+2OzfGadBsCfK3vXWNbx1SOShX6fEYFs
	huZ8G3yPlM2cvkPKi0s8RgajBMrcy/BFEn6x3J4yHtRQxBVd9y2b8sx2j9JSyHjvoVKk
	S5fyxrLsYn1hNdEYvKWnHo2QQtuRj6m8sx0CJI0paHs4n3qzTyaBQmXFX1AhMN02wpiH
	tHs9/VEu78sKT6yKW3ApWTubil0XY8KKUkmJgAF3/fhj71GXQlR+4ogW7UEAIUwXPl3I
	5p4mhfdjCBXfYje48ElrbyxsC+WmfIK7C2eG2/4x39Y2BY1hdXJfmTLwM7Tratps9Xfg
	/oJA==
X-Gm-Message-State: APzg51D4bnfblQHUqe9N+cMjjuftdCzekgjRygqiWtAhtxo4KagW8Zw0
	i7rzEBEzq5pvw7xITJP6SEPjTi3uLpLPzQzPoeLInA==
X-Google-Smtp-Source: ANB0VdaEoF3nDi+l9BzNZ+HjS5n5hnDoP2xf3xS2ki0QYuLFkOUc05Qfco0LKKMPDIcSL5l2opCyMJe3xQXFA0dClPw=
X-Received: by 2002:aca:2c5:: with SMTP id
	188-v6mr1223780oic.192.1537355474279; 
	Wed, 19 Sep 2018 04:11:14 -0700 (PDT)
MIME-Version: 1.0
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
In-Reply-To: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Sep 2018 12:11:02 +0100
Message-ID: <CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Adding nInvaders game package recipe
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
X-List-Received-Date: Wed, 19 Sep 2018 11:11:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The problem is most likely that you're not using automake but the
generated recipe (would have been useful to include that) is using the
autotools class, which assumes correct use of both autoconf and
automake.  Specifically, your hand-written Makefile doesn't handle
out-of-tree builds.

Change the inherit from autotools to autotools-brokensep, and I expect
that will fix the build.

Ross
On Wed, 19 Sep 2018 at 12:08, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
>
> Hi, I want to add the invaders game package to my image that I had built =
before and tested, so I used the command "recipetool create -V 1.0 https://=
github.com/TheZ3ro/ninvaders.git" to make my custom recipe, then I had to a=
ppend this package to my image by appending the package name to IMAGE_INSTA=
LL variable (like this IMAGE_INSTALL_append =3D "ninvaders", but before I b=
uild the new image I tried to test my recipes' task to be done correctly by=
 running this command
> "bitbake -b ninvaders_git.bb"  but there is an error while executing the =
do_compile task and it prints out that:
>
> ERROR: ninvaders-1.0+gitAUTOINC+c6ab4117ba-r0 do_compile: oe_runmake fail=
ed
> ERROR: ninvaders-1.0+gitAUTOINC+c6ab4117ba-r0 do_compile: Function failed=
: do_compile (log file is located at /home/yusuf/rpi/build/tmp_sumo_RPI/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0+gitAUTOINC+c6ab411=
7ba-r0/temp/log.do_compile.25813)
> ERROR: Logfile of failure stored in: /home/yusuf/rpi/build/tmp_sumo_RPI/w=
ork/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0+gitAUTOINC+c6ab4=
117ba-r0/temp/log.do_compile.25813
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', '=
common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4
> | make: *** No rule to make target 'globals.o', needed by 'nInvaders'.  S=
top.
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at /home/yusuf/=
rpi/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvad=
ers/1.0+gitAUTOINC+c6ab4117ba-r0/temp/log.do_compile.25813)
> ERROR: Task (/home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_gi=
t.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 8 tasks of which 0 didn't need to be rerun=
 and 1 failed.
>
> Summary: 1 task failed:
>   /home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_git.bb:do_com=
pile
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> so should i modify the do_compile task?
> Thanks,
> Yusuf
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

