Return-Path: <joaohf@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A3CA4C80B6B
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 08:52:22 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyf1 with SMTP id 1so940761gyf.35
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 06:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=ylUokLkKbVf83MaklGU8GppwCIsCuaz7MJEdLyHxjCk=;
	b=LhTGFZy9Zt4swDkU3JGIBqt4xD3/JISnBwO5MNedbq9uZosCiwbVbyJLUpUWXwS2lV
	gmb6/Nd9nO5kMwirrGdtVAF77VQqHeyAec4oXI3Eg3w7aK12hPvdhqUJ7pREo0cZp9EX
	avm8bE4QPMPLHsBOiXs23xSphU7bcaOZ9WBUs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=KgMthlDPdNtDZGo0FHj3iYjnHQl+DuvjKUMtgnHJt2D4c/45Emhrbj4+H3UhtzV8VQ
	dqxZqMehTF9yvPeu+eUQKp4IsYvRKQVHrSmh1RhggZkMXysJNpSCQQjUn+vDPMFbqlSA
	ozRpblmAP2nHd7beL+epLucHIaBm8CFqvA2mM=
MIME-Version: 1.0
Received: by 10.150.185.21 with SMTP id i21mr1148384ybf.5.1290610341556; Wed,
	24 Nov 2010 06:52:21 -0800 (PST)
Received: by 10.42.165.135 with HTTP; Wed, 24 Nov 2010 06:52:21 -0800 (PST)
In-Reply-To: <4CED1CF2.9040607@windriver.com>
References: <AANLkTi=Ehg15jkH2Zb7YYEW-cV4drzVD7-XCC5_NLU0E@mail.gmail.com>
	<4CED1CF2.9040607@windriver.com>
Date: Wed, 24 Nov 2010 12:52:21 -0200
Message-ID: <AANLkTi=6TB33O5Av-F1svaw45dwZ0MNKmRF-6vtx+nQc@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
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
X-List-Received-Date: Wed, 24 Nov 2010 14:52:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks,

I will try.

2010/11/24 Mark Hatle <mark.hatle@windriver.com>:
> I've seen issues in the past where long symlinks have caused problems. =
=C2=A0It's
> either a length limitation in the filesystem or Linux itself. =C2=A0I nev=
er bothered
> to track it down.
>
> The way I resolved it was to switch from absolute links to relative.. but=
 I'm
> not sure that is possible in the first example below.. but the subsequent=
 ones
> it likely is.
>
> If you have a simple way to reproduce it (i.e. configuration files, etc) =
please
> open a bug on the bugzilla.yoctoproject.org and include the filesystem ty=
pe,
> host system type and the configuration or steps you used to reproduce thi=
s. =C2=A0(Or
> alternatively if you come up with a solution -- a patch set..)
>
> --Mark
>
> On 11/23/10 7:09 PM, Jo=C3=A3o Henrique Freitas wrote:
>> Hi,
>>
>> I am using yocto 0.9 release and trying to generate my own meta-toolchai=
n.
>>
>> With toolchain from yocto:
>>
>> joaohf@joaohf-desktop:~/Downloads$ ls
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/libexec/armv5te-poky-linux-g=
nueabi/gcc/arm-poky-linux-gnueabi/4.5.0/
>> -l
>> total 30920
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 ar ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-ar
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 as ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-as
>> -rwxr-xr-x 1 1006 users 10387701 2010-10-24 20:53 cc1
>> -rwxr-xr-x 1 1006 users 11216826 2010-10-24 20:53 cc1plus
>> -rwxr-xr-x 1 1006 users =C2=A0 157274 2010-10-24 20:53 collect2
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 cpp ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-cp
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 g77 ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-g7
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 gcc ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-gc
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 gfortra=
n ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-gf
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 ld ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-ld
>> -rwxr-xr-x 1 1006 users =C2=A09803466 2010-10-24 20:53 lto1
>> -rwxr-xr-x 1 1006 users =C2=A0 =C2=A036707 2010-10-24 20:53 lto-wrapper
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 nm ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-nm
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 objcopy=
 ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-ob
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 objdump=
 ->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-ob
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 ranlib =
->
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-ra
>> lrwxrwxrwx 1 1006 users =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:18 strip -=
>
>> /opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnuea=
bi/arm-poky-linux-gnueabi-st
>>
>>
>> Same broken symbolic links.
>>
>> So, I start my own toolchain....
>>
>> Don't work, TARGET_VENDOR =3D "-tropico"
>>
>> joaohf@joaohf-desktop:/opt/via/sysroots/x86_64-pokysdk-linux/usr/libexec=
/armv5te-tropico-linux-gnueabi/gcc/arm-tropico-linux-gnueabi/4.5.0$
>> ls -l
>> total 30904
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 as -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> -rwxr-xr-x 1 joaohf joaohf 10383493 2010-11-23 19:57 cc1
>> -rwxr-xr-x 1 joaohf joaohf 11212618 2010-11-23 19:57 cc1plus
>> -rwxr-xr-x 1 joaohf joaohf =C2=A0 157274 2010-11-23 19:57 collect2
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 cpp =
->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 g77 =
->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 gcc =
->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 gfor=
tran ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 ld -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> -rwxr-xr-x 1 joaohf joaohf =C2=A09798490 2010-11-23 19:57 lto1
>> -rwxr-xr-x 1 joaohf joaohf =C2=A0 =C2=A036707 2010-11-23 19:57 lto-wrapp=
er
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 nm -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 objc=
opy ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 objd=
ump ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 ranl=
ib ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 21:04 stri=
p ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnu=
eabi/arm-tropico-linux-gnuea
>>
>>
>> Works, TARGET_VENDOR =3D "-tp"
>>
>> joaohf@joaohf-desktop:/opt/via/sysroots$ ls
>> x86_64-pokysdk-linux/usr/libexec/armv5te-tp-linux-gnueabi/gcc/arm-tp-lin=
ux-gnueabi/4.5.0/
>> -l
>> total 30896
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 95 2010-11-23 23:00 ar -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-ar
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 95 2010-11-23 23:00 as -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-as
>> -rwxr-xr-x 1 joaohf joaohf 10380613 2010-11-23 22:56 cc1
>> -rwxr-xr-x 1 joaohf joaohf 11209354 2010-11-23 22:56 cc1plus
>> -rwxr-xr-x 1 joaohf joaohf =C2=A0 157274 2010-11-23 22:56 collect2
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 96 2010-11-23 23:00 cpp =
->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-cpp
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 96 2010-11-23 23:00 g77 =
->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-g77
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 96 2010-11-23 23:00 gcc =
->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-gcc
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 23:00 gfor=
tran ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-gfortra
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 95 2010-11-23 23:00 ld -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-ld
>> -rwxr-xr-x 1 joaohf joaohf =C2=A09797242 2010-11-23 22:56 lto1
>> -rwxr-xr-x 1 joaohf joaohf =C2=A0 =C2=A036707 2010-11-23 22:56 lto-wrapp=
er
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 95 2010-11-23 23:00 nm -=
>
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-nm
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 23:00 objc=
opy ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-objcopy
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0100 2010-11-23 23:00 objd=
ump ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-objdump
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 99 2010-11-23 23:00 ranl=
ib ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-ranlib
>> lrwxrwxrwx 1 joaohf joaohf =C2=A0 =C2=A0 =C2=A0 98 2010-11-23 23:00 stri=
p ->
>> /opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/=
arm-tp-linux-gnueabi-strip
>>
>>
>>
>> But g77 and gfortran is broken.
>>
>>
>> Is any issue with symbolic link? I am using ubuntu 10.04 and ext4 filesy=
stem.
>>
>> Thanks.
>>
>>
>
>



--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

