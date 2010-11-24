Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E50764C803A5
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 08:11:01 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAOEB0lW029087;
	Wed, 24 Nov 2010 06:11:00 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 06:10:59 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 06:10:59 -0800
Message-ID: <4CED1CF2.9040607@windriver.com>
Date: Wed, 24 Nov 2010 08:10:58 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <AANLkTi=Ehg15jkH2Zb7YYEW-cV4drzVD7-XCC5_NLU0E@mail.gmail.com>
In-Reply-To: <AANLkTi=Ehg15jkH2Zb7YYEW-cV4drzVD7-XCC5_NLU0E@mail.gmail.com>
X-OriginalArrivalTime: 24 Nov 2010 14:11:00.0071 (UTC)
	FILETIME=[6BAEC770:01CB8BE1]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: toolchain with big symbolic links?
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
X-List-Received-Date: Wed, 24 Nov 2010 14:11:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I've seen issues in the past where long symlinks have caused problems.  It's
either a length limitation in the filesystem or Linux itself.  I never bothered
to track it down.

The way I resolved it was to switch from absolute links to relative.. but I'm
not sure that is possible in the first example below.. but the subsequent ones
it likely is.

If you have a simple way to reproduce it (i.e. configuration files, etc) please
open a bug on the bugzilla.yoctoproject.org and include the filesystem type,
host system type and the configuration or steps you used to reproduce this.  (Or
alternatively if you come up with a solution -- a patch set..)

--Mark

On 11/23/10 7:09 PM, João Henrique Freitas wrote:
> Hi,
> 
> I am using yocto 0.9 release and trying to generate my own meta-toolchain.
> 
> With toolchain from yocto:
> 
> joaohf@joaohf-desktop:~/Downloads$ ls
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.5.0/
> -l
> total 30920
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 ar ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-ar
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 as ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-as
> -rwxr-xr-x 1 1006 users 10387701 2010-10-24 20:53 cc1
> -rwxr-xr-x 1 1006 users 11216826 2010-10-24 20:53 cc1plus
> -rwxr-xr-x 1 1006 users   157274 2010-10-24 20:53 collect2
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 cpp ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-cp
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 g77 ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-g7
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 gcc ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gc
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 gfortran ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gf
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 ld ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-ld
> -rwxr-xr-x 1 1006 users  9803466 2010-10-24 20:53 lto1
> -rwxr-xr-x 1 1006 users    36707 2010-10-24 20:53 lto-wrapper
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 nm ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 objcopy ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-ob
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 objdump ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-ob
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 ranlib ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-ra
> lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 strip ->
> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-st
> 
> 
> Same broken symbolic links.
> 
> So, I start my own toolchain....
> 
> Don't work, TARGET_VENDOR = "-tropico"
> 
> joaohf@joaohf-desktop:/opt/via/sysroots/x86_64-pokysdk-linux/usr/libexec/armv5te-tropico-linux-gnueabi/gcc/arm-tropico-linux-gnueabi/4.5.0$
> ls -l
> total 30904
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 as ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> -rwxr-xr-x 1 joaohf joaohf 10383493 2010-11-23 19:57 cc1
> -rwxr-xr-x 1 joaohf joaohf 11212618 2010-11-23 19:57 cc1plus
> -rwxr-xr-x 1 joaohf joaohf   157274 2010-11-23 19:57 collect2
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 cpp ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 g77 ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 gcc ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 gfortran ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 ld ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> -rwxr-xr-x 1 joaohf joaohf  9798490 2010-11-23 19:57 lto1
> -rwxr-xr-x 1 joaohf joaohf    36707 2010-11-23 19:57 lto-wrapper
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 nm ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 objcopy ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 objdump ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 ranlib ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 strip ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueabi/arm-tropico-linux-gnuea
> 
> 
> Works, TARGET_VENDOR = "-tp"
> 
> joaohf@joaohf-desktop:/opt/via/sysroots$ ls
> x86_64-pokysdk-linux/usr/libexec/armv5te-tp-linux-gnueabi/gcc/arm-tp-linux-gnueabi/4.5.0/
> -l
> total 30896
> lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 ar ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-ar
> lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 as ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-as
> -rwxr-xr-x 1 joaohf joaohf 10380613 2010-11-23 22:56 cc1
> -rwxr-xr-x 1 joaohf joaohf 11209354 2010-11-23 22:56 cc1plus
> -rwxr-xr-x 1 joaohf joaohf   157274 2010-11-23 22:56 collect2
> lrwxrwxrwx 1 joaohf joaohf       96 2010-11-23 23:00 cpp ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-cpp
> lrwxrwxrwx 1 joaohf joaohf       96 2010-11-23 23:00 g77 ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-g77
> lrwxrwxrwx 1 joaohf joaohf       96 2010-11-23 23:00 gcc ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-gcc
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 23:00 gfortran ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-gfortra
> lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 ld ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-ld
> -rwxr-xr-x 1 joaohf joaohf  9797242 2010-11-23 22:56 lto1
> -rwxr-xr-x 1 joaohf joaohf    36707 2010-11-23 22:56 lto-wrapper
> lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 nm ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-nm
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 23:00 objcopy ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-objcopy
> lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 23:00 objdump ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-objdump
> lrwxrwxrwx 1 joaohf joaohf       99 2010-11-23 23:00 ranlib ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-ranlib
> lrwxrwxrwx 1 joaohf joaohf       98 2010-11-23 23:00 strip ->
> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm-tp-linux-gnueabi-strip
> 
> 
> 
> But g77 and gfortran is broken.
> 
> 
> Is any issue with symbolic link? I am using ubuntu 10.04 and ext4 filesystem.
> 
> Thanks.
> 
> 


