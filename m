Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D535AE008D7; Mon, 20 Jul 2015 08:14:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A725AE00895
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:14:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0B0CFF811DB; Mon, 20 Jul 2015 09:14:01 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7B7F3F811DA;
	Mon, 20 Jul 2015 09:14:01 -0600 (MDT)
Message-ID: <55AD104B.8070001@mlbassoc.com>
Date: Mon, 20 Jul 2015 09:14:19 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <567276616.902145.1437404796303.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <567276616.902145.1437404796303.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: RaspberryPi 2
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
X-List-Received-Date: Mon, 20 Jul 2015 15:14:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-20 09:06, Edward Vidal wrote:
> Hello,
> It has been a while since I built any Yocto images.  I have been trying to learn Hardware Description Language HDL.
> I have a raspberry working with Debian.  I am using a couple of products from http://www.xess.com/  XESS XulA2-LX9, StickIt-MB which combines a Spartan 6 with a Raspberry Pi.  I
> have MyHDL (generates HDL & co-simulation) , Iverilog (co-simulator), GTKWAVE (viewing of FPGA signals), GNURadio, OpenCV (with 2 C920 cameras doing face detection), many Python
> libs (numpy, scipy, matplotlib) and git,  This makes a great development platform for FPGA work.
> I am following the instructions at http://www.cnx-software.com/2015/02/27/yocto-project-raspberry-pi-2-board-minimal-image/
>
>   I have modified the local.conf. bblayers.conf, and poky.conf files

When sending diffs, "unified diffs" using -u are much easier to read.

> diff local.conf.orig poky/raspberrypi2/conf/local.conf
> 37c37diff bblayers.conf.orig poky/raspberrypi2/conf/bblayers.conf
> 15a16
>>   /home/vidal/wkg/yocto/RaspberryPi2/poky/meta-raspberrypi \,39
> < MACHINE ??= "qemux86"
> ---
>> #MACHINE ??= "qemux86"
>> MACHINE ?= "raspberrypi2"
>> GPU_MEM = "16"
>
> diff poky.conf.orig poky/meta-yocto/conf/distro/poky.conf
> 74a75
>>             Ubuntu-12.04 \n \

There's really no need for this - it only removes a harmless warning.

>
> bitbake rpi-basic-image
>
> sudo apt-get install diffstat
> sudo apt-get install texinf
> cd wkg/
>
> tar xfz pi/SDL2-2.0.3.tar.gz
>
> cd SDL2-2.0.3/
>
> ./configure
>
> make
>
> sudo make install
>
> sudo ldconfig
>
> I continue to get the following error.
> bitbake rpi-basic-image
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      Please set a valid MACHINE in your local.conf or environment
> libsdl-native is set to be ASSUME_PROVIDED but sdl-config can't be found in PATH. Please either install it, or configure qemu not to require sdl.
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> Any and all  help is appreciated.
> If you have any questions feel free to contact me.
> Regards.

Why not just install libsdl on your system?  On my Ubuntu boxes, I use:
   apt-get install libsdl1.2-dev

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

