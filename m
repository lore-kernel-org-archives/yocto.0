Return-Path: <hector.oron@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9E4D4C80A74
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 05:03:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywp4 with SMTP id 4so4470913ywp.35
	for <yocto@yoctoproject.org>; Tue, 02 Nov 2010 03:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=7QjXWOxsJoW1/61R0xq2NTsg8jDP8vMQxNntsZMmmxA=;
	b=s+2+KAyqHgkUNlcahkkP38NPf5JHwzDW3tRxsYXpfGP2orbu0fg2Ci6MS4LI5QjSXF
	DhW5py6o7eevNoLIDZpmclkE0UvFKUP6ifbtGlQxbJAh3XtZ6DoXWm6Qosdu0Vk8bO/0
	mfr6r1vyxuBNYn5+NhY9XL9S+qpXCVeuL2SrI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=RuK/NFAtPjUh+wTK13UxlO9R+ik4f3OH4PLXh1LCkkyE5RjScZD0Vwpiq6si3lGckb
	DUqDbOj/0C3GFVHDCU6/AWBZdzqVYTHWO66p9qr1Lke2ZqoVyfKhtcs0/12r7M9GX3DZ
	vAb1GvC7QhxGwVDE1JzkDhO0lAxFb7wMbOotQ=
MIME-Version: 1.0
Received: by 10.229.109.199 with SMTP id k7mr16182307qcp.239.1288692227061;
	Tue, 02 Nov 2010 03:03:47 -0700 (PDT)
Received: by 10.229.105.142 with HTTP; Tue, 2 Nov 2010 03:03:47 -0700 (PDT)
In-Reply-To: <1288644499.28481.67.camel@rex>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
	<1288644499.28481.67.camel@rex>
Date: Tue, 2 Nov 2010 10:03:47 +0000
Message-ID: <AANLkTikf5R=dnMKpEX+V4awP=3Dt5+ttcoCVD0TAP8Kb@mail.gmail.com>
From: Hector Oron <hector.oron@gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 10:03:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

2010/11/1 Richard Purdie <rpurdie@linux.intel.com>:

> I don't have answers to all of the failures but let me try and respond
> to the ones I have some ideas about:


> On Mon, 2010-11-01 at 18:23 +0000, Hector Oron wrote:
>> =C2=A0 lenny_i386)
>> cat <<EOF
>> [...]
>> | NOTE: Running
>> /srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/work/x86_64-li=
nux/gmp-native-4.2.4-r0/gmp-4.2.4/configure
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --build=3Dx86_64=
-linux =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--host=3Dx86_64-linux
>> =C2=A0 =C2=A0--target=3Dx86_64-linux
>> --prefix=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/sta=
ging/x86_64-linux/usr
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --exec_prefix=3D/srv/build/builds/bui=
ld/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr
>>
>> --bindir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/sta=
ging/x86_64-linux/usr/bin
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--sbindir=3D/srv/build/builds/build/ro=
otfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/sbin
>>
>> --libexecdir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp=
/staging/x86_64-linux/usr/libexec
>>
>> --datadir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/st=
aging/x86_64-linux/usr/share
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --sysconfdir=3D/srv/build/buil=
ds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/etc
>> =C2=A0 =C2=A0 =C2=A0 --sharedstatedir=3D/srv/build/builds/build/rootfs/y=
octo/purple-3.2/build/tmp/staging/x86_64-linux/com
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--localstatedir=3D/srv/b=
uild/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/va=
r
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 --libdir=3D/srv/build/builds/build/rootfs/yo=
cto/purple-3.2/build/tmp/staging/x86_64-linux/usr/lib
>>
>> --includedir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp=
/staging/x86_64-linux/usr/include
>>
>> --oldincludedir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/=
tmp/staging/x86_64-linux/usr/include
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--infodir=3D/srv/build/b=
uilds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/shar=
e/info
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--mandir=3D/srv/build/builds/build/roo=
tfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/share/man
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...
>> | checking build system type... x86_64-pc-linux-gnu
>> | checking host system type... x86_64-pc-linux-gnu
>> | checking for a BSD-compatible install... /usr/bin/install -c
>> [...]
>> | checking size of unsigned short... 2
>> | checking for unsigned... yes
>> | checking size of unsigned... 4
>> | checking for unsigned long... yes
>> | checking size of unsigned long... 4
>> | checking for mp_limb_t... yes
>> | checking size of mp_limb_t... 4
>> | configure: error: Oops, mp_limb_t is 32 bits, but the assembler code
>> | in this configuration expects 64 bits.
>> | You appear to have set $CFLAGS, perhaps you also need to tell GMP the
>> | intended ABI, see "ABI and ISA" in the manual.
>> | FATAL: oe_runconf failed
>> NOTE: Task failed:
>> /srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/work/x86_64-li=
nux/gmp-native-4.2.4-r0/temp/log.do_configure.28892
>> NOTE: package gmp-native-4.2.4-r0: task do_configure: failed
>> ERROR: TaskFailed event exception, aborting
>> NOTE: package gmp-native-4.2.4: failed
>> ERROR: Build of
>> /srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-na=
tive_4.2.4.bb
>> do_configure failed
>> ERROR: Task 556
>> (/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-n=
ative_4.2.4.bb,
>> do_configure) failed
>> NOTE: Tasks Summary: Attempted 135 tasks of which 135 didn't need to
>> be rerun and 1 failed.
>> ERROR: '/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gm=
p/gmp-native_4.2.4.bb'
>> failed
>> NOTE: build 201011011717: completed
>> make: *** [/srv/build/builds/menuconfig2-i386/../build/rootfs/yocto/purp=
le-3.2/foo]
>> Error 1
>> EOF
>
> At a guess this is a 64 bit kernel and a 32 bit userspace? What does
> "uname -a" show?

Yes, it is 64 bit kernel host running a 32 bit userland.
Linux enorme 2.6.32-5-amd64 #1 SMP Fri Sep 17 21:50:19 UTC 2010 x86_64 GNU/=
Linux

> I suspect if you add
>
> BUILD_ARCH =3D "i686"
>
> to your local.conf, the build might work better? If you can confirm that
> we can probably detect this problem and avoid this failure.

Build attempted with
BUILD_ARCH=3D"i686" BB_NUMBER_THREADS=3D"2" PARALLEL_MAKE=3D"-j 2"
MACHINE=3D$(BOARD) bitbake $(YOCTO_IMAGE)
got same result as above.

> Same as the above failure (64 bit kernel and 32 bit userspace)?

Sure.

>> =C2=A0 others|*)
>> cat <<EOF
>> =C2=A0 =C2=A0 - I need to setup "vm.mmap_min_addr =3D 0" under /etc/sysc=
tl.conf
>
> Right, but it detected that?

If it was not set, scripts warn about it, once you set it up, it goes throu=
gh.

Best regards,
--=20
=C2=A0H=C3=A9ctor Or=C3=B3n

"Our Sun unleashes tremendous flares expelling hot gas into the Solar
System, which one day will disconnect us."

-- Day DVB-T stop working nicely
Video flare: http://antwrp.gsfc.nasa.gov/apod/ap100510.html

