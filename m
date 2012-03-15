Return-Path: <autif.mlist@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C853DE00596;
	Thu, 15 Mar 2012 07:32:48 -0700 (PDT)
Received: by lagu2 with SMTP id u2so3433699lag.35
	for <multiple recipients>; Thu, 15 Mar 2012 07:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=UTWaz4A4e0MVxM9onuil3qozw8r+gZhlhpKmspvoprw=;
	b=zDdOyaHw1xYOVEBWb+8DPZUIoYz0FQ211yAY1Ld8ulQvbaY+5QGkhN+rokWv3Z5Kwr
	kSbEQl0HIPQzPXK5lsWIiJHloQaGdO7OpXmWwOBNm8RgZQpGJwrFefKSqgdtRkZF24Y2
	FoXlSjyvvi3tqxrez7PnucevEhKF0OcWfwNU7nsnN49iuF+kuI1+xBaWy+WuU6KPPcBi
	a/wTnDtvB9KGRWYypZoc2QU2Msb4qr3LgQFacYLF3SY9SlS31mRj3HUUQ2UUMD/iy2eb
	STOz28v42vy7qy1Ab9oayYCZC6aF/O4yI1BCS2/u8QI9+EFLgU71RgVj4Dgjf8J30iEA
	oZ8A==
MIME-Version: 1.0
Received: by 10.112.98.37 with SMTP id ef5mr2458304lbb.73.1331821967301; Thu,
	15 Mar 2012 07:32:47 -0700 (PDT)
Received: by 10.112.134.38 with HTTP; Thu, 15 Mar 2012 07:32:47 -0700 (PDT)
In-Reply-To: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
References: <CAPhnLPBAvAMwmuC1wNDS7E9mA5Y4VM_5SvA=4qo+UokPtiABQQ@mail.gmail.com>
Date: Thu, 15 Mar 2012 10:32:47 -0400
Message-ID: <CADzUK1+qPc+Uo+SsnVC5Oz-8d1LJK-w5tgN0n9=7MBWSjK3ZnA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [Announcement] 1.2 Milestone 3 Released
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
X-List-Received-Date: Thu, 15 Mar 2012 14:32:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

In the announcement for M2
(https://lists.yoctoproject.org/pipermail/yocto/2012-January/006735.html),
compatible M2 for meta-intel - in addition to qt and eclipse plugin -
were also included. However, meta-intel does not seem to have an
1.2_M3.final tag. 1.2_M3.rc1 does exist.

So, my question is - will 1.2_M3.final be released in the near future?
Or will it be skipped in the M4 era?

I am building 1.2_M3.final with meta-intel's HEAD as I write this
email and things seem to be going well. But I wanted to make sure that
I am not missing anything.

Thanks

Autif

On Wed, Mar 14, 2012 at 6:05 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hello,
>
> We are pleased to announce the third milestone of the coming release
> of Yocto 1.2. This milestone release is available at:
>
> =A0 http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2=
-m3/poky-edison-6.1.0-m3.tar.bz2
> =A0 or
> =A0 http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-ed=
ison-6.1.0-m3.tar.bz2
>
> Additional tarballs for meta-qt3 and the eclipse plugin are available at:
>
> =A0 http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2=
-m3/meta-qt3-edison-6.1.0-m3.tar.bz2
> =A0 http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2=
-m3/eclipse-poky-edison-6.1.0-m3.tar.bz2
>
> with mirror locations at:
>
> =A0 http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt=
3-edison-6.1.0-m3.tar.bz2
> =A0 http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse=
-poky-edison-6.1.0-m3.tar.bz2
>
> For information on 1.2 M3 test results see:
>
> =A0 http://wiki.yoctoproject.org/wiki/Yocto_1.2_Milestone_Test_Report
>
> Thank you everyone for all the hard work.
>
> - ------------------
> Elizabeth Flanagan
> Yocto Project
> Release Engineer
>
> - --------------------
> edison-6.1.0-m3 Errata
> - --------------------
> Release Name: poky-edison-6.1.0-m3
> Branch: =A01.2_M3
> Tag: =A01.2_M3.final
> Hash: =A0320558f494c618f53e0c773db3ea0109476e8359
> md5: =A024a90ec80d90c7f6757d9be50c2efe47 =A0poky-edison-6.1.0-m3.tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/=
poky-edison-6.1.0-m3.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/poky-edison=
-6.1.0-m3.tar.bz2
>
> Release Name: eclipse-poky-edison-6.1.0-m3
> Branch: =A01.2_M3
> Tag: =A01.2_M3.final
> Hash: =A006652a1b3f7a82481b4a7f1fee279ce1c616013b
> md5: =A0eaa2d0e9a5554463b1d44b8b5f9d29e0 =A0eclipse-poky-edison-6.1.0-m3.=
tar.bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/=
eclipse-poky-edison-6.1.0-m3.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/eclipse-pok=
y-edison-6.1.0-m3.tar.bz2
>
> Release Name: meta-qt3-edison-6.1.0-m3
> Branch: =A01.2_M3
> Tag: =A01.2_M3.final
> Hash: =A07e283e296d589256bef1a5652b72f264aba72e1a
> md5: =A089d04eaf3aead8322c3b601190391f2d =A0meta-qt3-edison-6.1.0-m3.tar.=
bz2
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.2-m3/=
meta-qt3-edison-6.1.0-m3.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.2-m3/meta-qt3-ed=
ison-6.1.0-m3.tar.bz2
>
> - --------------------
> Features
> - --------------------
> - - HOB2 with redesigned UI and workflow implementation
> - - Build appliance features and stability.
> - - Error handling improvement such as display a summary of warning
> and error messages at the end of Bitbake command.
> - - Oracle/Sun Hotspot JDK/JRE support.
> - - POSIX support
> - - Enhancement to the Eclipse plug-in for Bitbake commander
>
> - --------------------
> Known Issues
> - --------------------
> - - Bug 2066 - Glxgears failed in qemuarm/qemuppc/qemumips.
> - - Bug 1898-[beagleboard C4] X server cannot startup with 3.0 kernel.
> - - Bug 1906 -[QEMU] loses focus in qemux86-64 terminal When I press
> key [CTRL+L]
> - - Bug 1912-[beagleboard C4] Segmentation fault when reboot the
> system with 3.0 kernel
> - - Bug 1917-[non-GPLv3] image fails to boot up with no root filesystem f=
ound
> - - Bug 1918-[x32] insane.bbclass reports error for x32 kernel
> - - Bug 1899-[multilib] do_rootfs failed for lib-connman-gnome with ipk
> - - Bug 1903-[HOB] do_rootfs failed with dummy-image against a clean work=
ing dir
> - - Bug 1910-[HOB] git recipes not shown in package view due to
> inconsistent package name
> - - Bug 1911-[HOB] non-GPLv3 build not work
>
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.16 (GNU/Linux)
>
> iQEcBAEBAgAGBQJPYRW0AAoJEEyK+E/MEkQPd8MIALCvjFoOhM8yU7osB/YYqBWC
> 6NfnzRmPLnySGoeN3oobKomLG9ZoGmrwwuSfYfAlf3w6TDTAOunSi6x/94L1P6pa
> 5cOiSCkZGYP4OLBDfGynciCRLTjmqREq7I6uEHscvvG9n8f5uN99hVG8zc99JAzi
> Cu2z4iyr/qV/WLzJj7Fg9QPAWLUp3xtrgiqaa+0W26qdea6go6hbdbhZ0tYhf/HE
> duXPgjgwhGHUKNFli3UDchJRdGoIvm/TLkKfzqgFEDdE/5lbKPvWg6Q21Ec04ZM9
> N8OqoAJJMOUtVztl3CIJ7bA2/zTNazIzLBVFiodtzpKJr9FMJsJKp+GpJybuCKg=3D
> =3Dn5IG
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

