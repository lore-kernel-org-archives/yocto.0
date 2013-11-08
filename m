Return-Path: <Maxin.John@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 91E37E01830
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 01:39:57 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.347.0; Fri, 8 Nov 2013
	10:39:52 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 05A19289A1E;
	Fri,  8 Nov 2013 10:39:52 +0100 (CET)
Date: Fri, 8 Nov 2013 10:39:51 +0100
From: "Maxin B. John" <maxin.john@enea.com>
To: Maxwell Bottiger <sleepylight@jive-turkey.net>
Message-ID: <20131108093951.GA44381@sestofb10.enea.se>
References: <CADi-vsyV-PevxgvM6Nh56rBMVmah_bj1HC4QZr0FPiFNpydLOA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADi-vsyV-PevxgvM6Nh56rBMVmah_bj1HC4QZr0FPiFNpydLOA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: determining ubi build parameters
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
X-List-Received-Date: Fri, 08 Nov 2013 09:39:59 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Max,

On Thu, Nov 07, 2013 at 09:20:04PM -0500, Maxwell Bottiger wrote:
> I have a UBI JFFS file system I just built and flashed onto my at91sam9x5ek
> board.  I think everything built correctly, but I get the following error when
> booting the device:
<snip>
> 
> U-Boot> printenv
> bootargs=mem=128M console=ttyS0,115200 mtdparts=atmel_nand:8M(bootstrap/uboot/
> kernel)ro,-(rootfs) root=/dev/mtdblock1 rw rootfstype=ubifs ubi.mtd=1 root=
> ubi0:rootfs
> bootcmd=nand read.jffs2 0x22000000 0x200000 0x250000; bootm 0x22000000
> bootdelay=1
> baudrate=115200
> ethact=macb0
> 
> Can anyone point me to where the UBI parameters are decided, or let me know if
> I'm totally on the wrong track?  As always, I appreciate the help.

UBI Parameters will generally be present in the machine conf file. In
this case: "meta-atmel/conf/machine/at91sam9x5ek.conf" 

In the build directory, you can find "ubinize.cfg". You
can see the various parameters related to ubifs build in that file
also.

> -Max
Best Regards,
Maxin

