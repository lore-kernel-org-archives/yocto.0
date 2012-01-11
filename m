Return-Path: <b.hutchman@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BB5E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:35:53 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eaab16 with SMTP id b16so457634eaa.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=KoOraBNEuZhGr1wYULtrV5E573tnSUbnQImHCWCQYm4=;
	b=H1G9tOhzuCK5LWsYlu65OkK7JAXOQS+eDSHT46a7QSurF9n455Tm+MN6dDeWJx3qI9
	vJaTwhHpOprRfrG3Rgy+l7Xt1b+DyJ+PCBGYLyTowcm0H2rH7Akcy2O3t3y7AN6j0a5J
	M5PWgs+Wt6Czm9XGThqhfId0Yh4AVPr8v4Ux0=
MIME-Version: 1.0
Received: by 10.204.10.80 with SMTP id o16mr206609bko.13.1326314152734; Wed,
	11 Jan 2012 12:35:52 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 11 Jan 2012 12:35:52 -0800 (PST)
In-Reply-To: <CAFZh4h_DC6Sk58Mw7_ixyTTz9p5iwMk5+6Ey1kD+oTnHG+KEFw@mail.gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
	<4F0DAACB.3010603@windriver.com>
	<CAFZh4h_DC6Sk58Mw7_ixyTTz9p5iwMk5+6Ey1kD+oTnHG+KEFw@mail.gmail.com>
Date: Wed, 11 Jan 2012 15:35:52 -0500
Message-ID: <CAFZh4h9+OSjs8hmAR3=7oZ0Z+4wBVOgu=7KeFXB4Av6R0jqZBQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jan 2012 20:35:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

> <bruce.ashfield@windriver.com> wrote:
>> Just so I'm clear. You are asking about the switch to 3.0 as the
>> default ? If so, that was only done in master for the upcoming 1.2
>> release and not on the edison branch, so you wouldn't pick it up
>> by pulling.
>
> Thanks! =A0I did a git checkout -b master origin/master and will try agai=
n.

Thanks Bruce for pointing me in the right direction.  I just wanted to
follow up.

I switched to master branch and did a clean build for Beagleboard.  I
can confirm that it worked.  I blew my SD Card away and put freshly
built yocto images of MLO, u-boot.bin & uImage and my Beagleboard xM
boots fine (one last question after this output below):

Texas Instruments X-Loader 1.5.0 (Jan 11 2012 - 12:41:55)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jan 11 2012 - 12:41:50)

OMAP3630/3730-GP ES1.0, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  256 MiB
MMC:   OMAP SD/MMC: 0
In:    serial
Out:   serial
Err:   serial
Beagle xM Rev A
No EEPROM on expansion board
Die ID #335000001bf00000015739ea07035019
Hit any key to stop autoboot:  0
SD/MMC found on device 0
reading uEnv.txt

** Unable to read "uEnv.txt" from mmc 0:1 **
reading uImage

3106612 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
   Image Name:   Linux-3.0.12-yocto-standard+
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3106548 Bytes =3D 3 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.

Yocto (Built by Poky 6.0) 1.1+snapshot-20120111 beagleboard ttyO2

beagleboard login: root
root@beagleboard:~# ls
root@beagleboard:~# uptime
 19:06:08 up 0 min,  load average: 1.08, 0.30, 0.10
root@beagleboard:~# uname -a
Linux beagleboard 3.0.12-yocto-standard+ #1 PREEMPT Wed Jan 11
13:53:06 EST 2012 armv7l GNU/Linux
root@beagleboard:~#


... so now I'm back to trying to get poky to use my local
linux-yocto-3.0 git repo.

One more question.  When I setup linux-yocto_3.0.bbappend in
poky-extras/meta-kernel-dev/recipies-kernel/linux, do I use
"yocto/standard/beagleboard" for KMACHINE?

Thanks again,

Brian

