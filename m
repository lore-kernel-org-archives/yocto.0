Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BB6DE00C7D; Mon, 17 Dec 2018 05:51:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51139E00B58
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 05:51:09 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id q26so12647484wmf.5
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 05:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MjK8A1ti9AQ5Y6u60WoI4iPCiD/ColB/MkrTWW5hWLY=;
	b=WtieHml4UVdbZaoQyXOYiPCBHmcRm/WQUC28QJJjKGTON2+BGgdtuH2wGBCqJ6bU05
	QEXJ/YtBpaUFgoWfPSRiD9psIbL8MI/t3BMIOBYx0+0v1HunCRvyP2zw7fuZf/UDDumt
	6iP0+vB56Y1WuFGMZ7CXew2Fddb1ImiLz5RZmxozagB9RKSZWvDHQHCAyyZA/TU5nnUu
	yBrSpVrRCuDM+KixZ2B1FXiN7wGUQodDG/cPX1/JX0/hKZKQ44+VUsZDJXOuT5xgy2si
	VB/gt/Ci+rtGSX6NgP/04mZNqPOzr8bLAYnBwEtJ2GdpVSsWjYXTVpuS22qw7zsO9sKo
	X1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MjK8A1ti9AQ5Y6u60WoI4iPCiD/ColB/MkrTWW5hWLY=;
	b=VuoZXYZbd2pKrKRn4KMQCYWmWhvqSigV5LXCWTSrAb56NlwdYJB7KuIBok3YvHS4sT
	N5paAhE789KqXra5XjueNxO17RT3hIXDrmlowxkil2I/9nlhaOp+qR4w1dMH1nl/G8s8
	3Lb00S2t0Wrzsip+rKeKfSoO1ZYoF1CHsXmMRjnaCC6fsTWNbZcIV+490zcvL9umU+sk
	e4/1WCVWYvNc9lECLEk4kokAzKH3IsOtOFXUtZtdxArjx/zW6sdeFFnzejunKT/+N5e5
	gDy/RNTP40neb6ulpf54zYWCs3AeUrBgjduwZ+gqZqfxGe8mj82wEozn++JM+WvzxE60
	AKew==
X-Gm-Message-State: AA+aEWZJ7C6JPVvdXN/l5B0WnGtPU5ygJC4dq3oUfD6mF3r5Y+gukB5G
	jpV7aVc7a2EwDkZt3p7gMQtbGtc9es+Xs2OHluc=
X-Google-Smtp-Source: AFSGD/VFvDsUiabHU7yDsBxdPMDgXO95qx0lBEnYpchExYBkcXufdIECKwPCNBj6pjLH9MIEuSNdWgdozGpDhUI9bAk=
X-Received: by 2002:a1c:b456:: with SMTP id d83mr12248695wmf.115.1545054668444;
	Mon, 17 Dec 2018 05:51:08 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
	<d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
	<CAFLxGvysO_g2z0f_50NO4iqcdFRN5YTzHpTbLHp4Va9jACai8w@mail.gmail.com>
	<37849360-f7e6-55a1-3ffe-e67f98f69a09@windriver.com>
In-Reply-To: <37849360-f7e6-55a1-3ffe-e67f98f69a09@windriver.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 17 Dec 2018 14:50:57 +0100
Message-ID: <CAFLxGvzOFw2zyS1+Mo9KseMs+7+t+_Y6y_6VZXgZzDc8QqV_HQ@mail.gmail.com>
To: bruce.ashfield@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 13:51:10 -0000
Content-Type: text/plain; charset="UTF-8"

Bruce,

On Mon, Dec 17, 2018 at 2:47 PM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> > Yocto seems to try a different approach.
> > When I use qemux86-64.conf with DEFAULTTUNE being "i586" it generates a 32bit
> > toolchain by default.
> >
> > Build Configuration:
> > BB_VERSION           = "1.38.0"
> > BUILD_SYS            = "x86_64-linux"
> > NATIVELSBSTRING      = "universal"
> > TARGET_SYS           = "i686-poky-linux"
> > MACHINE              = "myqemux86-64"
> > DISTRO               = "poky"
> > DISTRO_VERSION       = "2.5.1"
> > TUNE_FEATURES        = "m32 i586"
> >
> > What I need is a x86_64-poky-linux toolchain with -m32 set for everything except
> > kernel (and modules).
>
> For the most part the kernel builds do not take any flags from the
> outside, i.e. they are all generated based on the kernel build
> structure, not what is calling the build. (unless you bury flags
> into the definition of $(CC), etc, but I wouldn't recommend that.
>
> So if you have a 64 bit capable toolchain, have a 64 bit configured
> kernel (i.e. CONFIG_64BIT=y), are passing -m32 to usespace .. the
> kernel really should build 64bit.

This was my plan, but yocto always create a 32bit toolchain when
it set DEFAULTTUNE to i586 for a 64bit machine.

> Have you tried that and are seeing the kernel still be built with the
> 32bit toolchain ?

Yes, it builds with i686-poky-linux. :-(

-- 
Thanks,
//richard

