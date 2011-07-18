Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 352DA4C80A5B
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 09:54:12 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6IEs7Im024016;
	Mon, 18 Jul 2011 09:54:08 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
Date: Mon, 18 Jul 2011 09:54:07 -0500
Message-Id: <2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>
	<CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1084)
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
X-List-Received-Date: Mon, 18 Jul 2011 14:54:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 18, 2011, at 9:45 AM, Khem Raj wrote:

> On Mon, Jul 18, 2011 at 5:58 AM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>> I've been working on trying to get an e500v2 (linux-gnuspe) compiler =
working and seem to have build a native toolchain.  However when I try =
and compile a simple hello world style app I get:
>>=20
>> root@p2020-ds:~# gcc float.c
>> gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
>> compilation terminated.
>>=20
>> Wondering if anyone's seen this before and had any ideas.
>>=20
>=20
> You can try -fno-use-linker-plugin as a workaround. Does
> liblto_plugin.so exist on target rfs ?
> it might be then gcc driver bug if the library is not there then we
> forgot to package it.

File appears to be there:
root@p2020-ds:/# file =
/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0
=
./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0: =
ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SYSV), =
dynamically linked, with unknown capability 0x41000000 =3D 0xf676e75, =
with unknown capability 0x10000 =3D 0x70402, stripped

root@p2020-ds:~# ls -lstr =
/usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/
total 31624
 9812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
   28 -rwxr-xr-x 1 root root    26344 Jul 16 22:40 lto-wrapper
   60 -rwxr-xr-x 1 root root    60132 Jul 16 22:40 =
liblto_plugin.so.0.0.0
  124 -rwxr-xr-x 1 root root   124776 Jul 16 22:40 collect2
11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
    0 lrwxrwxrwx 1 root root       22 Jul 17 15:07 liblto_plugin.so.0 -> =
liblto_plugin.so.0.0.0

So not clear why its not finding it.

- k=

