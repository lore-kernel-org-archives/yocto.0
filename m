Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA01E0178A
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 12:37:56 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id ar20so11322776iec.0
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2013 12:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0z2O5Wvmxr3aACxkLYj6uMF/+AIxKCm0yaKMO/cRJ4U=;
	b=O2l/XmmlB0MVMpdd3sJcZGflbXIF6K3Za3eJxMRsJw1vhL4plL9UNqo5Y21vbhY9bC
	por0N38LvH8XnMcaILw2KERKpeDkE/bYLCLWse5XN1HVHgu2hpaAZ94l5w1Dt1wijV9M
	4EuSHMrY8Zpl04OkPEmXE4/4aTMOQzkU0pvENuL4X85xR5l/q6l9/6uHIoJzAFkGr1XM
	UCxPweuZ8dAdYz5iDks5k2RruMys1Vjh9fo1jOPgMZiwYNX1Sdr9oyfuS6LsBsH8or1s
	O9foYP07yiDg5mDJ5uX2h0jpW0WKTY4gbHmnxoOb24ykl9OsCHIAQ8zIPYXm9TX/zemK
	ELCA==
X-Received: by 10.42.62.196 with SMTP id z4mr102163ich.49.1383511075468; Sun,
	03 Nov 2013 12:37:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Sun, 3 Nov 2013 12:37:25 -0800 (PST)
In-Reply-To: <5272DE46.7080005@aeonyx.ca>
References: <52702B41.1040504@aeonyx.ca> <52703CE8.9020306@aeonyx.ca>
	<CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
	<52706EC2.1020409@aeonyx.ca> <5272DE46.7080005@aeonyx.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 3 Nov 2013 12:37:25 -0800
Message-ID: <CAMKF1soYjrHyP1dJ12nkc_9NQswwpzT2xW9mgGzeghO=K8yyTQ@mail.gmail.com>
To: Markus Svilans <msvilans@aeonyx.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Sun, 03 Nov 2013 20:37:59 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 3:48 PM, Markus Svilans <msvilans@aeonyx.ca> wrote:
> With the help of a friend, have confirmed that 'core-image-minimal' cannot
> be built with Ubuntu 13.10 64-bit when MACHINE=genericx86-64. Attempted the
> build on a different machine in a different city, same results (failure to
> build).
>
> Confirmed that 'core-image-minimal' can be successfully built under an lxc
> and a chroot running Debian Wheezy, on Ubuntu 13.10 64-bit, with
> MACHINE=genericx86-64.
>
> Filed bug 5440 on Yocto Bugzilla.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5440
>

accidentally I was able to reproduce it. So it seems that syslinux
depends on compiler supporting 32bit+64bit mix
and it has probes to enquire the compiler for supporting the above.
Now if you have standard install of ubuntu you
do not have gcc-multilib installed and hence the problem.

So, I would say the fix is to install gcc-multilib package on
debian-like systems and something similar for other distros

sudo apt-get install gcc-multilib

and then clean build syslinux-native should get you going

