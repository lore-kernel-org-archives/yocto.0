Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27DA4E00BDF; Wed,  4 Jun 2014 02:22:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754B9E00B5C
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 02:22:08 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Ws7OY-0001JH-6C
	for yocto@yoctoproject.org; Wed, 04 Jun 2014 11:22:06 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 11:22:06 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 11:22:06 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Wed, 04 Jun 2014 11:21:51 +0200
Message-ID: <lmmoff$hkl$1@ger.gmane.org>
References: <lmmmm6$o20$1@ger.gmane.org>	<CAJTo0LZsgxt9des=d=WQJy1E0VsJh_e9+8RCcHscodG=_V=woA@mail.gmail.com>
	<lmmo0c$bda$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <lmmo0c$bda$1@ger.gmane.org>
Subject: Re: best way to add conditional configure option
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
X-List-Received-Date: Wed, 04 Jun 2014 09:22:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The problem is that the MACHINE variable is "cubox-i", which is based on
imx6.

Guess that should still work somehow, though...


Am 04.06.2014 11:13, schrieb Neuer User:
> Hmm, like this?
> 
> -----------------------------
> SUMMARY = "USB CEC Adaptor communication Library with patches for imx6"
> HOMEPAGE = "http://libcec.pulse-eight.com/"
> 
> LICENSE = "GPLv2+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=5e8e16396992369f73f3d28875f846da"
> 
> DEPENDS = "udev lockdev"
> 
> PV = "2.4.1"
> 
> SRCREV = "42c3c07a79b8155635851c2eed9558b221b89047"
> SRC_URI = "git://github.com/xbmc-imx6/libcec.git"
> 
> S = "${WORKDIR}/git"
> 
> inherit autotools pkgconfig
> 
> # cec-client and xbmc need the .so present to work :(
> FILES_${PN} += "${libdir}/*.so"
> INSANE_SKIP_${PN} = "dev-so"
> 
> EXTRA_OECONF_imx6 = "--enable-imx6"
> -------------------------------
> 
> That doesn't seem to work?!
> 
> Extracts from log.do_configure:
> 
> ...
> autoreconf: Leaving directory `.'
> NOTE: Running
> /home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/libcec/2.4.1-r0/git/configure
>  --build=i686-linux                  --host=arm-poky-linux-gnueabi
>              --target=arm-poky-linux-gnueabi                 --prefix=/usr
>                   --exec_prefix=/usr              --bindir=/usr/bin
>           --sbindir=/usr/sbin             --libexecdir=/usr/lib/libcec
>           --datadir=/usr/share            --sysconfdir=/etc
>   --sharedstatedir=/com                   --localstatedir=/var
>   --libdir=/usr/lib               --includedir=/usr/include
>   --oldincludedir=/usr/include
>           --infodir=/usr/share/info
> --mandir=/usr/share/man                 --disable-silent-rules
>         --disable-dependency-tracking
> --with-libtool-sysroot=/home/ubuntu/yocto/build/tmp/sysroots/cubox-i
> configure: loading site script
> /home/ubuntu/yocto/sources/poky/meta/site/endian-little
> ...
> 
> ...
> libCEC version 2:1:0 configured
> 
> Compilation flags:
>   CXXFLAGS :        -O2 -pipe -g -feliminate-unused-debug-types
> -fvisibility-inlines-hidden -fPIC -Wall -Wextra
> -Wno-missing-field-initializers  -Wno-psabi
>   libCEC LDFLAGS : -llockdev -ldl -lpthread  -ludev -lrt
>   client LDFLAGS : -ldl -lpthread
> 
> Configured features:
>   Pulse-Eight CEC Adapter :             yes
>   Pulse-Eight CEC Adapter detection :   yes
>   Raspberry Pi support :                no
>   TDA995x support :                     no
>   i.MX6 support :                       no
> 
> ...
> 
> What am I missing?
> 
> Michael
> 
> 
> Am 04.06.2014 10:59, schrieb Burton, Ross:
>> On 4 June 2014 09:51, Neuer User <auslands-kv@gmx.de> wrote:
>>> The conditional configure option is "--enable-imx6".
>>
>> You can use a machine override, along the lines of:
>>
>> EXTRA_OECONF_ixm6 = "--enable-imx6"
>>
>> This will set EXTRA_OECONF to --enable-imx6 if the MACHINE is ixm6.
>> It gets a little complicated when you've general and machine-specific
>> options but for a single option that works just fine.
>>
>> Ross
>>
> 
> 



