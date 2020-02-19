Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web09.15927.1582135540523878316
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 10:05:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=aU28xJbp;
 spf=pass (domain: soccasys.com, ip: 209.85.217.49, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-vs1-f49.google.com with SMTP id 7so886607vsr.10
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 10:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=pBLb9wRveT2vh4j92M98QmulTznR4gOKoXjp2eUCtHs=;
        b=aU28xJbpZvtv5aOEv9IOIVikmVJxfCmbnr/VYgjlY2zqcbKZS3W3UkqB3p+j4sHgol
         KNuwd9fFYY2YrkjEJVXzRm6/gncT7+JeqrGT09AvtqPT/1bvwol1so4xHqV2s6fIxAaj
         2GaQ/M9CWDynOsDCtlxeSzskwy3+sRmbfT6TN30K+Y4xvyYOTB7j8UgHWJ+BHkmTRzDr
         3RDrfn5A+QDAKbmvyyerK6S0bdrZ+CGAfsgOuGN12od67AVG10d8JHHc+YiLV9qB0rqC
         HwWc6Ljo7vU2y2GoOfNtSrlzVWLcPTMhWjo35T7xrgNdPTNv5B88/HrVs8l5Nsa/kDKT
         pEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=pBLb9wRveT2vh4j92M98QmulTznR4gOKoXjp2eUCtHs=;
        b=oRlydNZci9MbVxqOyz8LDMYqcsaMfPiyp4Z7hqQX/kqK82XezRX59d3nn3E9Y+WBUL
         H4kwhoqXFrC8vEV1zA7XdiJqjiP0vdXztZBm+LTnfAnEm88kq6KMPa1syUGiBTO0/veU
         NSnbfGGlXEji1RqkelQiM09EWUc7CUvhU8Xg2NWxZd5FMr8NuoX3isnyXsvwsnbnYaE/
         3jloI0LF0tOCD14jEbW1tY+3UrDYUrdY7/aFhf2bWjODkcV+3KGG+k7Mwmv6jk3TceCv
         Nw8M325/zdtYnBK63SN4LnK4o3Vle3YcFYHFXt/n9oLiyiLsAYJwsJSEXDKWNLFzw38O
         o5nw==
X-Gm-Message-State: APjAAAVBLR2kZElxk2CQe3lKml9iIeRRYDV/+DJBoY3kChGYhh6JAzFA
	D+7afJ6UI4CGaRBqAd+pS6xqxfYKoc4ahaHb6RqLwQ==
X-Google-Smtp-Source: APXvYqxov38kdoAf1CCV1AHiuSr93DVpvrP8kInPLd9EPhxeG0iRFJiGwy+Z14LQssGpBKJI/LHIrRCttev8X570ELU=
X-Received: by 2002:a67:7950:: with SMTP id u77mr14871019vsc.209.1582135539163;
 Wed, 19 Feb 2020 10:05:39 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
 <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com>
 <CAGAf8LyCBGw-vNipFK5Y8L+W=jNeyMJ95S=r=+r4vXZiB3roDA@mail.gmail.com>
 <CAGbd71QL_kbrjatOp19PhyT_qnTOyqHzA79Yfr=C=P6DmE=pUQ@mail.gmail.com> <CAGAf8LzpBOvL0AJiTn_ae5ukreqrDLzriUvUQu8vgxF4wkXxZg@mail.gmail.com>
In-Reply-To: <CAGAf8LzpBOvL0AJiTn_ae5ukreqrDLzriUvUQu8vgxF4wkXxZg@mail.gmail.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Wed, 19 Feb 2020 19:05:03 +0100
Message-ID: <CAGbd71RYdp8-SZzoV_1G4aCKq=LRmLoUeQ2=cY3R4ODY8a1DGw@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zoran,

I just saw your reply now.

I think that you might want to remove the INHIBIT_SYSROOT_STRIP and
other INHIBIT_* options from your recipe.

For reference a message from Khem warning that this option should be
used sparingly:

* https://www.yoctoproject.org/pipermail/yocto/2019-March/044415.html

My best guess is that the use of this option is directly linked to
chrpath being needed.

As this recipe is being built with a rather clean looking
CMakeLists.txt none of these weird options are needed.

Kind regards, Laurent.

On Mon, Feb 17, 2020 at 8:01 AM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> > The issue I see is that the following files have been build but NOT in=
stalled:
> >
> > * libcannelloni-common.so.0
> > * libcannelloni-common.so.0.0.1
>
> Not quite... The solution is outlined here (in function do_install):
> +       ## ERROR: QA Issue: package cannelloni contains bad RPATH
> +       ## quick fix is in a do_install or do_install_append do
> +       chrpath -d ${D}${bindir}/cannelloni
>
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes=
-can/cannelloni/cannelloni.bb
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes=
-can/cannelloni/cannelloni.bb_GENIVI
>
> I admit, your first email has shaken my head, so I can see things much
> more clear. :-)
>
> My best guess, this solution is just a workaround (not the final one),
> since I have in ${D} the following:
>
> cannelloni-1.0: package cannelloni contains bad RPATH
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
> in file /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/c=
ortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannello=
ni/usr/bin/cannelloni
> [rpaths]
>
> So, since my limited knowledge about bitbake build systems ends here,
> somebody from YOCTO primes (potentially Khem Raj, Ross Burton, maybe
> even Richard Purdie) should look more closely into this issue
> (apologies for my unsolicited suggestions).
>
> Laurent,
>
> Once again, thank you for unselfish help,
> Zoran
> _______
>
>
> On Fri, Feb 14, 2020 at 2:20 PM Laurent Gauthier
> <laurent.gauthier@soccasys.com> wrote:
> >
> > Hi Zoran,
> >
> > You are almost there! I can feel it... :-)
> >
> > The issue I see is that the following files have been build but NOTins=
talled:
> >
> > * libcannelloni-common.so.0
> > * libcannelloni-common.so.0.0.1
> >
> > If you make sure that they are installed that should fix your issue.
> >
> > Based on the info you provided no RDEPENDS seems to be required as it
> > all appears that everything is in one package named "cannelloni",
> > rather than a package for the main executable and then packages for
> > libraries.
> >
> > Kind regards, Laurent.
> >
> > On Fri, Feb 14, 2020 at 12:43 PM Zoran Stojsavljevic
> > <zoran.stojsavljevic@gmail.com> wrote:
> > >
> > > Hello Laurent,
> > >
> > > Many thanks to you for the help. :-)
> > >
> > > I did some modifications, and now I have all the elements in there/i=
n place:
> > >
> > > [user@fedora31-ssd cannelloni]$ cd ../../../build/tmp
> > > [user@fedora31-ssd tmp]$ find . -name libcannelloni*
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/image/us=
r/lib/libcannelloni-common.so
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/sysroot-=
destdir/usr/lib/libcannelloni-common.so
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/=
usr/lib/.debug/libcannelloni-common.so
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/=
usr/lib/libcannelloni-common.so
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages=
-split/cannelloni/usr/lib/libcannelloni-common.so
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages=
-split/cannelloni-dbg/usr/lib/.debug/libcannelloni-common.so
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/li=
bcannelloni-common.so.0
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/li=
bcannelloni-common.so.0.0.1
> > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/li=
bcannelloni-common.so
> > > ./sysroots-components/cortexa8hf-neon/cannelloni/usr/lib/libcannello=
ni-common.so
> > >
> > > I miss the very end of your thoughts. Namely:
> > >
> > > > The name of the package containing the shared library is name of t=
he
> > > > xxx first-level directory "packages-split/xxx".
> > >
> > > So, how should I write the RDEPENDS command?
> > >
> > > Something as: RDEPENDS_${PN} =3D "???"
> > >
> > > What should I put on the right side of the equation (according to th=
e above traces)?
> > >
> > > Thank you,
> > > Zoran
> > > _______
> > >
> > > On Fri, Feb 14, 2020 at 11:49 AM Laurent Gauthier <laurent.gauthier@=
soccasys.com> wrote:
> > >>
> > >> Hi Zoran,
> > >>
> > >> The issue seems to be that the executable /usr/bin/cannelloni has a
> > >> reference to a shared library (libcannelloni-common.so.0) for which
> > >> the Yocto build system is not able to determine automatically which
> > >> package provides it.
> > >>
> > >> Based on the name I would assume that this package should be create=
d
> > >> by the same recipe that produces this executable (one recipe produc=
es
> > >> multiple packages).
> > >>
> > >> The most probable reason for this is that the new version of the
> > >> package you are trying to build does not install the "missing" shar=
ed
> > >> library properly. But here are some steps you could follow to try t=
o
> > >> determine the stage of build/install/package where the shared libra=
ry
> > >> goes missing.
> > >>
> > >> To debug this I would suggest that you check that this
> > >> "libcannelloni-common.so.0" shared library is present in several
> > >> directories.
> > >>
> > >> First in the build directory:
> > >>
> > >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/co=
rtexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build
> > >>
> > >> If it is not there that would be very surprising. I will assume tha=
t
> > >> it is present. Let us know if it is not.
> > >>
> > >> Then the next location to check for this shared library is the foll=
owing:
> > >>
> > >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/co=
rtexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package
> > >>
> > >> If the file is not there, then it means that the recipe did not
> > >> "install" it (as this directory is populated by do_install).
> > >>
> > >> If the file is there then you can check if it is correctly assigned=
 in
> > >> a package by determining if it is also found in:
> > >>
> > >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/co=
rtexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split
> > >>
> > >> If the file is not there, then it means that the recipe did not
> > >> "package" it properly (as this directory is populated by do_package=
).
> > >> You should review the recipe for any anomaly in assigning installed
> > >> files to individual packages.
> > >>
> > >> If the file is there then you probably should add the package that
> > >> contains the shared library in the RDEPENDS for the "cannelloni"
> > >> package.
> > >>
> > >> The name of the package containing the shared library is name of th=
e
> > >> xxx first-level directory "packages-split/xxx".
> > >>
> > >> Not sure if that will solve your issue, but hopefully that will hel=
p.
> > >>
> > >> Kind Regards, Laurent.
> > >>
> > >> On Fri, Feb 14, 2020 at 11:27 AM Zoran <zoran.stojsavljevic@gmail.c=
om> wrote:
> > >> >
> > >> > Hello List,
> > >> >
> > >> > I am trying to solve very interesting ERROR I am getting with sli=
ghtly modified GENIVI Canneloni recipe:
> > >> > https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/=
recipes-can/cannelloni/cannelloni.bb
> > >> >
> > >> > If I take the recipe as is, everything works fine, with:
> > >> > ## SRCREV =3D "${AUTOREV}"
> > >> > SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> > >> >
> > >> > Everything works fine, but if I swap the static hash with auto la=
test hash (SRCREV =3D "${AUTOREV}":
> > >> > SRCREV =3D "${AUTOREV}"
> > >> > ## SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> > >> >
> > >> > I am getting these ERRORS, which seems to me very strange?!
> > >> > _______
> > >> >
> > >> > Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% matc=
h, 99% complete)
> > >> > NOTE: Executing Tasks
> > >> > NOTE: Setscene tasks completed
> > >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannell=
oni contains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/buil=
d/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: in f=
ile /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8=
hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/=
bin/cannelloni [rpaths]
> > >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannel=
loni contained in package cannelloni requires libcannelloni-common.so.0, bu=
t no providers found in RDEPENDS_cannelloni? [file-rdeps]
> > >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors=
. Please consider fixing them.
> > >> > ERROR: Logfile of failure stored in: /home/user/projects2/beagleb=
one-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/canne=
lloni/1.0-r0/temp/log.do_package_qa.255490
> > >> > ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/meta=
-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed with =
exit code '1'
> > >> > NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't ne=
ed to be rerun and 1 failed.
> > >> > _______
> > >> >
> > >> > Any advise how to make GENIVI Cannelloni recipe to work with: SRC=
REV =3D "${AUTOREV}" ???
> > >> >
> > >> > Thank you,
> > >> > Zoran
> > >> >
> > >> >=20
> > >>
> > >>
> > >>
> > >> --
> > >> Laurent Gauthier
> > >> Phone: +33 630 483 429
> > >> http://soccasys.com
> >
> >
> >
> > --
> > Laurent Gauthier
> > Phone: +33 630 483 429
> > http://soccasys.com



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
