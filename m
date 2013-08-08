Return-Path: <eren@hambedded.org>
Received: from mail-ea0-f177.google.com (mail-ea0-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31256E006E9
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2013 06:13:59 -0700 (PDT)
Received: by mail-ea0-f177.google.com with SMTP id f15so1411274eak.8
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2013 06:13:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-type:content-disposition:user-agent;
	bh=0PeSnyaE/BzCc1pm84j6GYnkk67cpjOSbmXuwZFpmIg=;
	b=oVpJauG/LbnPH/ublzfKjpIlv3/Wz8VuvFKLKsfJsfuAWKbCVwrFldMsfiDWLS/U95
	aO3qHZzHs3j/RKyG8w2xESechvkKoOKPPThtgmoWqdVXXQGU0X1+eoZ8u6BRbuuZnBPj
	cgNVUH6kdI9d+xnrM02COrLzvyHFkNI5XkCWcsCjbIlxBIWaOW2qfiTVWpvcIAucnBlG
	gb4bZ6q7VeeNJfcNGyZ8uzj/pRQPso1TaTB8KOFwLvIpTrp6vB+uk9oQU9n4AKTa+g9D
	Hn/GGQnBURJzFrWxMld3QKfEJTwgwCNYaXKItXF2T7cm7/Bs7h7S+J1F7v17HrSvJeuY
	vLQA==
X-Gm-Message-State: ALoCoQkH7hRpugEe0jEniJgesOC+xNv3tA5r5rvzdFED7em/rxgFFz46GCAEVzgutT1deY6UTk6m
X-Received: by 10.15.100.198 with SMTP id bn46mr8148480eeb.11.1375967638314;
	Thu, 08 Aug 2013 06:13:58 -0700 (PDT)
Received: from gmail.com ([132.231.11.113])
	by mx.google.com with ESMTPSA id a6sm7140922eei.10.2013.08.08.06.13.56
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 08 Aug 2013 06:13:57 -0700 (PDT)
Date: Thu, 8 Aug 2013 15:13:49 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Yocto Discussion List <yocto@yoctoproject.org>
Message-ID: <20130808131349.GA30527@gmail.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: ALIX3D3 Live Image "Waiting for removable media" Problem
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
X-List-Received-Date: Thu, 08 Aug 2013 13:14:00 -0000
X-Groupsio-MsgNum: 15391
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline

--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I am working on ALIX3D3 [0] BSP [1]. It is an x86-compatible PC with AMD
Geode LX Processor. It boots from CF Card and has Award BIOS.

I enabled Geode specific features in the kernel (CS5536 PATA, Sound,
Geode Framebuffer, etc) and I produce "live" image so that I can
directly "dd" it into CF Card and boot. However, when I boot it, I see
"waiting for removable media" and cannot go forward. In the dmesg
output, I see that all geode specific features are OK. The kernel probes
CF Card and finds it as "sda", I can see sound card and framebuffer
works as expected. However, udevadm complains about not finding
/dev/sda*

I have looked at how live image was generated and saw that it creates an
msdos file system, not another volume. So, I dig into other bootable
image and found out that "vmdk" image actually creates ".hdddirect" with
valid partitions. I tried with that image type, and dd'ed ".hdddirect"
image. In the end, it complained about not finding initrd as the boot
partition of ".hdddirect" only includes syslinux and vmlinuz, not
initrd.

I would appreciate any help on deploying these image on the hardware. It
seems that having initrd in .hdddirect would solve the problem but I'm
not sure how I can accomplish this.

=3D=3D=3D=3D=3D Bitbake Output =3D=3D=3D=3D=3D
Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-12.04"
TARGET_SYS        =3D "i586-poky-linux"
MACHINE           =3D "alix3d3"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.1"
TUNE_FEATURES     =3D "m32 i586"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "dylan:e4a0a4c5e419154a34710a1b6c28d4180c6304c3"
meta-hamradio     =3D "master:243f71144a3fb9a1dbeb81cfc6c46157627b5aa8"
meta-alix3d3      =3D "master:46afebe021f259206941445a643afe2c6dbc0d2d"
=3D=3D=3D=3D=3D End: Bitbake Output =3D=3D=3D=3D=3D

Regards,
Eren

[0] http://pcengines.ch/alix3d3.htm
[1] https://github.com/eren/meta-alix3d3
--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--VbJkn9YxBvnuCH5J
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJSA5mMAAoJEOM7bMm6HhcTwfwP/Rgo8LuHcspppOt2+Kg4F1iA
ys9vHVwgBp8aog1RTw0/RMYOn84XdGW+OLZb3c8FdrpzHViDIun4+2Otis33E1+v
qtVnntAmFo/AnDr4I6gBhsBOW6R9tlhCygft38NwaEaodN7DIRuZuf7D0f72LzMp
NxY+B9uvrDjNyrJlKIbI2eG+JPc51NAX9mMHzb8YYYjjARifQVxZeoRWVONw4vPn
63rdQgiu9Tj0SD/0D70WRwRppGmKoYBm9J9o9w+IHb5f6hM+bvzt6XIshiJyEQfy
3XBolbY0c7vCTdL3R6eGpHGOOPwoqShZSGRrKZ0P22ylC07CsJF/Ly+xHRD9eg4C
0ME/FX5MNEfK5anTOzMbY7ykmDhDESvN29dNjzXNmOqBtkgUbXZv8p4vz9N/n9xA
HBGcXkHWU2TwIqGU/Fn6tfgMvxNz/8Yubw3oV45ydoFQWNUfww2J0HI0WpjwaqcZ
c6KE0TXQd2j8dBS3oZzZdm2+oToQk+xcLepGFMlSsqjg4CIvQRoNiAVm/jLiII/a
muN1kL5iWkNWW6z1zAlkimzub/z1muMilq9JYSRxgcStrhIhCoNbuxrX0wPmD6QY
H5AwRN/Su2QJH2V5xSxwxAdgaB2av2YNidLNtgQva+h0DuLjF3NkkviQZJcAxffP
HcQIMAvZ1GG6A+Wa0H7q
=JVvR
-----END PGP SIGNATURE-----

--VbJkn9YxBvnuCH5J--
