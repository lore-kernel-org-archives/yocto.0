Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09232E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:46:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0BKkToZ007145
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jan 2012 12:46:29 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Jan 2012 12:46:29 -0800
Message-ID: <4F0DF51C.6000700@windriver.com>
Date: Wed, 11 Jan 2012 15:46:20 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
	<4F0DAACB.3010603@windriver.com>
	<CAFZh4h_DC6Sk58Mw7_ixyTTz9p5iwMk5+6Ey1kD+oTnHG+KEFw@mail.gmail.com>
	<CAFZh4h9+OSjs8hmAR3=7oZ0Z+4wBVOgu=7KeFXB4Av6R0jqZBQ@mail.gmail.com>
In-Reply-To: <CAFZh4h9+OSjs8hmAR3=7oZ0Z+4wBVOgu=7KeFXB4Av6R0jqZBQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 11 Jan 2012 20:46:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-11 03:35 PM, Brian Hutchinson wrote:
>> <bruce.ashfield@windriver.com>  wrote:
>>> Just so I'm clear. You are asking about the switch to 3.0 as the
>>> default ? If so, that was only done in master for the upcoming 1.2
>>> release and not on the edison branch, so you wouldn't pick it up
>>> by pulling.
>>
>> Thanks!  I did a git checkout -b master origin/master and will try again.
>
> Thanks Bruce for pointing me in the right direction.  I just wanted to
> follow up.
>
> I switched to master branch and did a clean build for Beagleboard.  I
> can confirm that it worked.  I blew my SD Card away and put freshly
> built yocto images of MLO, u-boot.bin&  uImage and my Beagleboard xM
> boots fine (one last question after this output below):
>
> Texas Instruments X-Loader 1.5.0 (Jan 11 2012 - 12:41:55)
> Beagle xM
> Reading boot sector
> Loading u-boot.bin from mmc
>
>
> U-Boot 2011.06 (Jan 11 2012 - 12:41:50)
>
> OMAP3630/3730-GP ES1.0, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
> OMAP3 Beagle board + LPDDR/NAND
> I2C:   ready
> DRAM:  512 MiB
> NAND:  256 MiB
> MMC:   OMAP SD/MMC: 0
> In:    serial
> Out:   serial
> Err:   serial
> Beagle xM Rev A
> No EEPROM on expansion board
> Die ID #335000001bf00000015739ea07035019
> Hit any key to stop autoboot:  0
> SD/MMC found on device 0
> reading uEnv.txt
>
> ** Unable to read "uEnv.txt" from mmc 0:1 **
> reading uImage
>
> 3106612 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
>     Image Name:   Linux-3.0.12-yocto-standard+
>     Image Type:   ARM Linux Kernel Image (uncompressed)
>     Data Size:    3106548 Bytes = 3 MiB
>     Load Address: 80008000
>     Entry Point:  80008000
>     Verifying Checksum ... OK
>     Loading Kernel Image ... OK
> OK
>
> Starting kernel ...
>
> Uncompressing Linux... done, booting the kernel.
>
> Yocto (Built by Poky 6.0) 1.1+snapshot-20120111 beagleboard ttyO2
>
> beagleboard login: root
> root@beagleboard:~# ls
> root@beagleboard:~# uptime
>   19:06:08 up 0 min,  load average: 1.08, 0.30, 0.10
> root@beagleboard:~# uname -a
> Linux beagleboard 3.0.12-yocto-standard+ #1 PREEMPT Wed Jan 11
> 13:53:06 EST 2012 armv7l GNU/Linux
> root@beagleboard:~#

Excellent!

>
>
> ... so now I'm back to trying to get poky to use my local
> linux-yocto-3.0 git repo.
>
> One more question.  When I setup linux-yocto_3.0.bbappend in
> poky-extras/meta-kernel-dev/recipies-kernel/linux, do I use
> "yocto/standard/beagleboard" for KMACHINE?

If you still want the default (which you likely do here), you
can leave KMACHINE untouched in your bbappend and the inherited
value from the core layers will take care of everything. Get that
working on your local clone, and then try tweaking things :)

Cheers,

Bruce

>
> Thanks again,
>
> Brian


