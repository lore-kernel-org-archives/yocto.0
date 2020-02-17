Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.5358.1581922877042020846
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 23:01:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EKVIpole;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id v2so15292885qkj.2
        for <yocto@lists.yoctoproject.org>; Sun, 16 Feb 2020 23:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5SRrPoLclXhDhRWm/0DjyDUVZrTvYndPVAZDzr4NQ2A=;
        b=EKVIpoleAgWG3WYOXft26qg+CFvu3KQN38QhBYqOvgYn6IPMtMelgoc6Lxbng8Nwbi
         K4VVhPNIDrU7dvbKKDHwmA2ab6KmQp58MFxAozvEAXmFUvpcr2oH0wAfckqWgmKwPcme
         DnZnOR4VZi6eME/zakxse1MuYs/mKPBrwibrKukEUpLZ/aX9autB/jsJhHLWCGpsU8aa
         m3kSZ1wMvAa+WW1pyOX3BsJZ0fgotEAZluCWKHj/mNSDUdUaAm6Frbg2uvxgCK7bs4Br
         Z3jb3A/CL8DjBg9u/HthWuUPepPadVYGdkh4G+L0uiAJg6PpR1uumIblUhaHmqwgzn/x
         L7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5SRrPoLclXhDhRWm/0DjyDUVZrTvYndPVAZDzr4NQ2A=;
        b=IFFOob2WXJ90Nb5tYAA071CuCyl5n1fugeWWDjjKiDCoD6YBTDnibIakL4N5SF0FO9
         zzT0AvGelwxzMwmBDpcopQhPvMtm80kXt5HNzann52Vwogs+UbxjpdVhElY/2/rYw6FW
         GbjXjgDBFnj9Od8Dz4m30IckD0AllalPL6eLiF4xw9ISzUC3LKolgTRw6njXnanlWmbz
         V0z2dbEG7a6ZvmpVG+en48+BNYcIEXYkHSObsEAAHvjl/rZvRG1E70xKF9B9PGLOarXL
         hDR5n0vwY39epDQEd+HCxE2weVOeZMkB0YuoAi2yLRBtjajIczlHVI+utpA7KQECFZ20
         UZFw==
X-Gm-Message-State: APjAAAVNBL9ar/Q62ZjBvuErsd7PJv1Ne8DD8k2/wwbCdoxtjkm8eBEs
	w+yOKD6og10DBN59K1X6WdyBExqPUiFKdN8Pc9ZvRMrI9B4=
X-Google-Smtp-Source: APXvYqxUevvOdotlcWrnRksmagcAVAd5qffuF1zCCtKwR5s1V+DMjGAtTeVJX1gImLOkIXcG557qTh52ZeDK6VZP5SY=
X-Received: by 2002:a37:c07:: with SMTP id 7mr13189045qkm.414.1581922875776;
 Sun, 16 Feb 2020 23:01:15 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
 <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com>
 <CAGAf8LyCBGw-vNipFK5Y8L+W=jNeyMJ95S=r=+r4vXZiB3roDA@mail.gmail.com> <CAGbd71QL_kbrjatOp19PhyT_qnTOyqHzA79Yfr=C=P6DmE=pUQ@mail.gmail.com>
In-Reply-To: <CAGbd71QL_kbrjatOp19PhyT_qnTOyqHzA79Yfr=C=P6DmE=pUQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Feb 2020 08:01:04 +0100
Message-ID: <CAGAf8LzpBOvL0AJiTn_ae5ukreqrDLzriUvUQu8vgxF4wkXxZg@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> The issue I see is that the following files have been build but NOT insta=
lled:
>
> * libcannelloni-common.so.0
> * libcannelloni-common.so.0.0.1

Not quite... The solution is outlined here (in function do_install):
+       ## ERROR: QA Issue: package cannelloni contains bad RPATH
+       ## quick fix is in a do_install or do_install_append do
+       chrpath -d ${D}${bindir}/cannelloni

https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-c=
an/cannelloni/cannelloni.bb
https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-c=
an/cannelloni/cannelloni.bb_GENIVI

I admit, your first email has shaken my head, so I can see things much
more clear. :-)

My best guess, this solution is just a workaround (not the final one),
since I have in ${D} the following:

cannelloni-1.0: package cannelloni contains bad RPATH
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-=
neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
in file /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cor=
texa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni=
/usr/bin/cannelloni
[rpaths]

So, since my limited knowledge about bitbake build systems ends here,
somebody from YOCTO primes (potentially Khem Raj, Ross Burton, maybe
even Richard Purdie) should look more closely into this issue
(apologies for my unsolicited suggestions).

Laurent,

Once again, thank you for unselfish help,
Zoran
_______


On Fri, Feb 14, 2020 at 2:20 PM Laurent Gauthier
<laurent.gauthier@soccasys.com> wrote:
>
> Hi Zoran,
>
> You are almost there! I can feel it... :-)
>
> The issue I see is that the following files have been build but NOTinsta=
lled:
>
> * libcannelloni-common.so.0
> * libcannelloni-common.so.0.0.1
>
> If you make sure that they are installed that should fix your issue.
>
> Based on the info you provided no RDEPENDS seems to be required as it
> all appears that everything is in one package named "cannelloni",
> rather than a package for the main executable and then packages for
> libraries.
>
> Kind regards, Laurent.
>
> On Fri, Feb 14, 2020 at 12:43 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Laurent,
> >
> > Many thanks to you for the help. :-)
> >
> > I did some modifications, and now I have all the elements in there/in =
place:
> >
> > [user@fedora31-ssd cannelloni]$ cd ../../../build/tmp
> > [user@fedora31-ssd tmp]$ find . -name libcannelloni*
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/image/usr/=
lib/libcannelloni-common.so
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/sysroot-de=
stdir/usr/lib/libcannelloni-common.so
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/us=
r/lib/.debug/libcannelloni-common.so
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/us=
r/lib/libcannelloni-common.so
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-s=
plit/cannelloni/usr/lib/libcannelloni-common.so
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-s=
plit/cannelloni-dbg/usr/lib/.debug/libcannelloni-common.so
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libc=
annelloni-common.so.0
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libc=
annelloni-common.so.0.0.1
> > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libc=
annelloni-common.so
> > ./sysroots-components/cortexa8hf-neon/cannelloni/usr/lib/libcannelloni=
-common.so
> >
> > I miss the very end of your thoughts. Namely:
> >
> > > The name of the package containing the shared library is name of the
> > > xxx first-level directory "packages-split/xxx".
> >
> > So, how should I write the RDEPENDS command?
> >
> > Something as: RDEPENDS_${PN} =3D "???"
> >
> > What should I put on the right side of the equation (according to the =
above traces)?
> >
> > Thank you,
> > Zoran
> > _______
> >
> > On Fri, Feb 14, 2020 at 11:49 AM Laurent Gauthier <laurent.gauthier@so=
ccasys.com> wrote:
> >>
> >> Hi Zoran,
> >>
> >> The issue seems to be that the executable /usr/bin/cannelloni has a
> >> reference to a shared library (libcannelloni-common.so.0) for which
> >> the Yocto build system is not able to determine automatically which
> >> package provides it.
> >>
> >> Based on the name I would assume that this package should be created
> >> by the same recipe that produces this executable (one recipe produces
> >> multiple packages).
> >>
> >> The most probable reason for this is that the new version of the
> >> package you are trying to build does not install the "missing" shared
> >> library properly. But here are some steps you could follow to try to
> >> determine the stage of build/install/package where the shared library
> >> goes missing.
> >>
> >> To debug this I would suggest that you check that this
> >> "libcannelloni-common.so.0" shared library is present in several
> >> directories.
> >>
> >> First in the build directory:
> >>
> >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cort=
exa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build
> >>
> >> If it is not there that would be very surprising. I will assume that
> >> it is present. Let us know if it is not.
> >>
> >> Then the next location to check for this shared library is the follow=
ing:
> >>
> >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cort=
exa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package
> >>
> >> If the file is not there, then it means that the recipe did not
> >> "install" it (as this directory is populated by do_install).
> >>
> >> If the file is there then you can check if it is correctly assigned i=
n
> >> a package by determining if it is also found in:
> >>
> >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cort=
exa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split
> >>
> >> If the file is not there, then it means that the recipe did not
> >> "package" it properly (as this directory is populated by do_package).
> >> You should review the recipe for any anomaly in assigning installed
> >> files to individual packages.
> >>
> >> If the file is there then you probably should add the package that
> >> contains the shared library in the RDEPENDS for the "cannelloni"
> >> package.
> >>
> >> The name of the package containing the shared library is name of the
> >> xxx first-level directory "packages-split/xxx".
> >>
> >> Not sure if that will solve your issue, but hopefully that will help.
> >>
> >> Kind Regards, Laurent.
> >>
> >> On Fri, Feb 14, 2020 at 11:27 AM Zoran <zoran.stojsavljevic@gmail.com=
> wrote:
> >> >
> >> > Hello List,
> >> >
> >> > I am trying to solve very interesting ERROR I am getting with sligh=
tly modified GENIVI Canneloni recipe:
> >> > https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/re=
cipes-can/cannelloni/cannelloni.bb
> >> >
> >> > If I take the recipe as is, everything works fine, with:
> >> > ## SRCREV =3D "${AUTOREV}"
> >> > SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> >> >
> >> > Everything works fine, but if I swap the static hash with auto late=
st hash (SRCREV =3D "${AUTOREV}":
> >> > SRCREV =3D "${AUTOREV}"
> >> > ## SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> >> >
> >> > I am getting these ERRORS, which seems to me very strange?!
> >> > _______
> >> >
> >> > Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match,=
 99% complete)
> >> > NOTE: Executing Tasks
> >> > NOTE: Setscene tasks completed
> >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannellon=
i contains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/build/=
tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: in fil=
e /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf=
-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bi=
n/cannelloni [rpaths]
> >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannello=
ni contained in package cannelloni requires libcannelloni-common.so.0, but =
no providers found in RDEPENDS_cannelloni? [file-rdeps]
> >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. =
Please consider fixing them.
> >> > ERROR: Logfile of failure stored in: /home/user/projects2/beaglebon=
e-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannell=
oni/1.0-r0/temp/log.do_package_qa.255490
> >> > ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/meta-s=
ocketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed with ex=
it code '1'
> >> > NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't need=
 to be rerun and 1 failed.
> >> > _______
> >> >
> >> > Any advise how to make GENIVI Cannelloni recipe to work with: SRCRE=
V =3D "${AUTOREV}" ???
> >> >
> >> > Thank you,
> >> > Zoran
> >> >
> >> >=20
> >>
> >>
> >>
> >> --
> >> Laurent Gauthier
> >> Phone: +33 630 483 429
> >> http://soccasys.com
>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
