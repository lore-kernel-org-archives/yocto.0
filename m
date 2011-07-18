Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15A154C800B2
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 12:04:37 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6IH4UUA029700;
	Mon, 18 Jul 2011 18:04:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29273-06; Mon, 18 Jul 2011 18:04:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6IH4LeP029694
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Jul 2011 18:04:22 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
	<CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
	<2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
Date: Mon, 18 Jul 2011 18:04:10 +0100
Message-ID: <1311008650.20015.1272.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native gcc compiler error
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
X-List-Received-Date: Mon, 18 Jul 2011 17:04:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-07-18 at 09:54 -0500, Kumar Gala wrote:
> On Jul 18, 2011, at 9:45 AM, Khem Raj wrote:
> 
> > On Mon, Jul 18, 2011 at 5:58 AM, Kumar Gala <galak@kernel.crashing.org> wrote:
> >> I've been working on trying to get an e500v2 (linux-gnuspe) compiler working and seem to have build a native toolchain.  However when I try and compile a simple hello world style app I get:
> >> 
> >> root@p2020-ds:~# gcc float.c
> >> gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
> >> compilation terminated.
> >> 
> >> Wondering if anyone's seen this before and had any ideas.
> >> 
> > 
> > You can try -fno-use-linker-plugin as a workaround. Does
> > liblto_plugin.so exist on target rfs ?
> > it might be then gcc driver bug if the library is not there then we
> > forgot to package it.
> 
> File appears to be there:
> root@p2020-ds:/# file /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0
> ./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0: ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SYSV), dynamically linked, with unknown capability 0x41000000 = 0xf676e75, with unknown capability 0x10000 = 0x70402, stripped
> 
> root@p2020-ds:~# ls -lstr /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/
> total 31624
>  9812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
>    28 -rwxr-xr-x 1 root root    26344 Jul 16 22:40 lto-wrapper
>    60 -rwxr-xr-x 1 root root    60132 Jul 16 22:40 liblto_plugin.so.0.0.0
>   124 -rwxr-xr-x 1 root root   124776 Jul 16 22:40 collect2
> 11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
> 10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
>     0 lrwxrwxrwx 1 root root       22 Jul 17 15:07 liblto_plugin.so.0 -> liblto_plugin.so.0.0.0
> 
> So not clear why its not finding it.

Does strace show where its looking for it?

Cheers,

Richard


