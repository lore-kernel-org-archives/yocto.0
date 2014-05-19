Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E740EE00BEF; Mon, 19 May 2014 05:02:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E1E9E00BE6
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 05:02:48 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WmMHH-0002Xr-U8
	for yocto@yoctoproject.org; Mon, 19 May 2014 14:02:47 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 14:02:47 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 14:02:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 19 May 2014 14:02:37 +0200
Message-ID: <llcrst$jsc$1@ger.gmane.org>
References: <llcim8$3rn$1@ger.gmane.org>	<CAJTo0Laf+EEiBAcmKwtU08LLPYynDavNbfuC3TaGKLe2oBtR+w@mail.gmail.com>	<llcj8i$cfi$1@ger.gmane.org>
	<CANyK_8fjtaN6iXOXm9YqLxK25_VUbYqH8_83GOYm81GjRc9wyA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CANyK_8fjtaN6iXOXm9YqLxK25_VUbYqH8_83GOYm81GjRc9wyA@mail.gmail.com>
Subject: Re: Strange certificate problem with wget
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
X-List-Received-Date: Mon, 19 May 2014 12:02:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 19.05.2014 12:56, schrieb Paul Barker:
> On 19 May 2014 10:35, Neuer User <auslands-kv@gmx.de> wrote:
>> Am 19.05.2014 11:32, schrieb Burton, Ross:
>>> On 19 May 2014 10:25, Neuer User <auslands-kv@gmx.de> wrote:
>>>> I need to use wget with https support in my image. So I added "wget" to
>>>> my packages.
>>>>
>>>> The problem is that it doesn't seem to find the installed certificates:
>>>
>>> By "installed certificates" you mean that you installed
>>> ca-certificates into the image, right?
>>>
>>> Ross
>>>
>> Yeah, exactly.
>>
> 
> If you run 'wget --version' you should be able to find out if you're
> running busybox wget or gnu wget. I assume you're expecting gnu wget
> as you added wget to your packages, but it's worth quickly checking
> that the correct binary is being executed.
> 
> Thanks,
> 
~# wget --version
GNU Wget 1.14 built on linux-gnueabi.

+digest +https +ipv6 -iri -large-file +nls +ntlm +opie +ssl/openssl

Wgetrc:
    /etc/wgetrc (system)
Locale: /usr/share/locale
Compile: arm-poky-linux-gnueabi-gcc -march=armv7-a -mthumb-interwork
    -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9
    --sysroot=/home/ubuntu/yocto/build/tmp/sysroots/cubox-i
    -DHAVE_CONFIG_H -DSYSTEM_WGETRC="/etc/wgetrc"
    -DLOCALEDIR="/usr/share/locale" -I.

-I/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/wget/1.14-r16.0/wget-1.14/src
-I../lib
-I/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/wget/1.14-r16.0/wget-1.14/lib
-O2 -pipe -g -feliminate-unused-debug-types
Link: arm-poky-linux-gnueabi-gcc -march=armv7-a -mthumb-interwork
    -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9
    --sysroot=/home/ubuntu/yocto/build/tmp/sysroots/cubox-i -O2 -pipe
    -g -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=gnu
    -Wl,--as-needed -lssl
    /home/ubuntu/yocto/build/tmp/sysroots/cubox-i/lib/libcrypto.so -lz
    -ldl -lz -lz -lpcre ftp-opie.o openssl.o http-ntlm.o
    ../lib/libgnu.a

Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://www.gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
Please send bug reports and questions to <bug-wget@gnu.org>.


Looks, as if I get the right one, but strangely without working
certificates check...



