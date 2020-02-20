Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.1661.1582176651759333944
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 21:30:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mlpiTmp7;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id n17so2077960qtv.2
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 21:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8NfsG3jog9Z6VOXSajfoAN9HUf2tduG05wLKzEqpNm0=;
        b=mlpiTmp787OIDuI2Y2eRw+Z+3ak6cmF56OEhH58mgASNOtGcZ0ONcZwnk7bUXx+fQj
         AF02mZDPPYQjC9gCO2uvMkCkAfp/5MH3jvIGnJ5VSYP9zE248FketHCMZaKE5Bp0cjeW
         SuVm+OUe6yahu11Gzw22mOj/jnoKsS9i+Lq5tSsil1PMJtgikdqRw5avmuJG8YZzaLaT
         gYQDgWQaydkADPAgtnraZf9LXDL4ddV4XOxbYEvcN3UoqSJVWEY6hN+ithTVsaEkvkuW
         jIIdDOAE0/jfUnJkuAoqsWMMhq43V3ekIYPC6cZroe1AhWvqrUMD+pvx0Jx7NQiBQLcw
         ZU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8NfsG3jog9Z6VOXSajfoAN9HUf2tduG05wLKzEqpNm0=;
        b=YPwfIJmGXVoXeFytAbWZP9wet57AT9W4+EusncfG++dx/RLHy4yD0gDL3i71Ws66sS
         +QUbCKyMLMdrkOhYOLfu6EPQOGvJ1scGBPwe3JqSHhgSsi7PGf6pvtnoKpqU829vVpEd
         osxGML4lVtivyDLe2IwDiX8C7luae3ywpRhNzA+C5INh0hdZsIl0GhqHuaqk5h5W3GLF
         bpsWavgOsxYr0phRAXXmSAjG0lzMeLj7r/7maCTquaoUB1a1LAYKrRj8EYvVJyFSZSss
         +gvPmDchc+M4RPgfEDLna/T46wkS/j6nZQmlOWOoPtgTMwpglf5VmLyII5KzUbCt5sXt
         1ZkQ==
X-Gm-Message-State: APjAAAVV7wj1rayhD0kQX7aeXJYz4BSILmStALJr28SWYLw7pSHszgj6
	EtH+z/JZvFMACPaRHN+lQIPDFhePA380eAY0FQ0=
X-Google-Smtp-Source: APXvYqxAFkPelYU0e55NumwVQbgMlBec/M4jqKE7SvsEwf/m+qokNrfrg2Hs/1avp+iLLTfCoctIt6TfHmR4t5lK5Z0=
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr24425261qtu.141.1582176650325;
 Wed, 19 Feb 2020 21:30:50 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
 <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com>
 <CAGAf8LyCBGw-vNipFK5Y8L+W=jNeyMJ95S=r=+r4vXZiB3roDA@mail.gmail.com>
 <CAGbd71QL_kbrjatOp19PhyT_qnTOyqHzA79Yfr=C=P6DmE=pUQ@mail.gmail.com>
 <CAGAf8LzpBOvL0AJiTn_ae5ukreqrDLzriUvUQu8vgxF4wkXxZg@mail.gmail.com> <CAGbd71RYdp8-SZzoV_1G4aCKq=LRmLoUeQ2=cY3R4ODY8a1DGw@mail.gmail.com>
In-Reply-To: <CAGbd71RYdp8-SZzoV_1G4aCKq=LRmLoUeQ2=cY3R4ODY8a1DGw@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 20 Feb 2020 06:30:38 +0100
Message-ID: <CAGAf8LwiRo9-qAf2x8JZ2KM-E2Q26TgnkPVctF4nDw-JXBYMkw@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Laurent,

U R correct (and why I am not surprised?!). :-)

The correct recipe is here (it becomes very simplistic, seems):
https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-c=
an/cannelloni/cannelloni.bb

I have (out of my ignorance) one question, which confuses me: Why this
functionality does not reside in do_install_append () (I would expect
this to be correct one, but it seems that inheritance in bitbake has
changed)?

Many thanks (what we, ignorant YOCTO guys, will do without the experts),
Zoran
_______

On Wed, Feb 19, 2020 at 7:05 PM Laurent Gauthier
<laurent.gauthier@soccasys.com> wrote:
>
> Hi Zoran,
>
> I just saw your reply now.
>
> I think that you might want to remove the INHIBIT_SYSROOT_STRIP and
> other INHIBIT_* options from your recipe.
>
> For reference a message from Khem warning that this option should be
> used sparingly:
>
> * https://www.yoctoproject.org/pipermail/yocto/2019-March/044415.html
>
> My best guess is that the use of this option is directly linked to
> chrpath being needed.
>
> As this recipe is being built with a rather clean looking
> CMakeLists.txt none of these weird options are needed.
>
> Kind regards, Laurent.
>
> On Mon, Feb 17, 2020 at 8:01 AM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > > The issue I see is that the following files have been build but NOT =
installed:
> > >
> > > * libcannelloni-common.so.0
> > > * libcannelloni-common.so.0.0.1
> >
> > Not quite... The solution is outlined here (in function do_install):
> > +       ## ERROR: QA Issue: package cannelloni contains bad RPATH
> > +       ## quick fix is in a do_install or do_install_append do
> > +       chrpath -d ${D}${bindir}/cannelloni
> >
> > https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recip=
es-can/cannelloni/cannelloni.bb
> > https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recip=
es-can/cannelloni/cannelloni.bb_GENIVI
> >
> > I admit, your first email has shaken my head, so I can see things much
> > more clear. :-)
> >
> > My best guess, this solution is just a workaround (not the final one),
> > since I have in ${D} the following:
> >
> > cannelloni-1.0: package cannelloni contains bad RPATH
> > /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa=
8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
> > in file /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work=
/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannel=
loni/usr/bin/cannelloni
> > [rpaths]
> >
> > So, since my limited knowledge about bitbake build systems ends here,
> > somebody from YOCTO primes (potentially Khem Raj, Ross Burton, maybe
> > even Richard Purdie) should look more closely into this issue
> > (apologies for my unsolicited suggestions).
> >
> > Laurent,
> >
> > Once again, thank you for unselfish help,
> > Zoran
> > _______
> >
> >
> > On Fri, Feb 14, 2020 at 2:20 PM Laurent Gauthier
> > <laurent.gauthier@soccasys.com> wrote:
> > >
> > > Hi Zoran,
> > >
> > > You are almost there! I can feel it... :-)
> > >
> > > The issue I see is that the following files have been build but NOTi=
nstalled:
> > >
> > > * libcannelloni-common.so.0
> > > * libcannelloni-common.so.0.0.1
> > >
> > > If you make sure that they are installed that should fix your issue.
> > >
> > > Based on the info you provided no RDEPENDS seems to be required as i=
t
> > > all appears that everything is in one package named "cannelloni",
> > > rather than a package for the main executable and then packages for
> > > libraries.
> > >
> > > Kind regards, Laurent.
> > >
> > > On Fri, Feb 14, 2020 at 12:43 PM Zoran Stojsavljevic
> > > <zoran.stojsavljevic@gmail.com> wrote:
> > > >
> > > > Hello Laurent,
> > > >
> > > > Many thanks to you for the help. :-)
> > > >
> > > > I did some modifications, and now I have all the elements in there=
/in place:
> > > >
> > > > [user@fedora31-ssd cannelloni]$ cd ../../../build/tmp
> > > > [user@fedora31-ssd tmp]$ find . -name libcannelloni*
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/image/=
usr/lib/libcannelloni-common.so
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/sysroo=
t-destdir/usr/lib/libcannelloni-common.so
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packag=
e/usr/lib/.debug/libcannelloni-common.so
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packag=
e/usr/lib/libcannelloni-common.so
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packag=
es-split/cannelloni/usr/lib/libcannelloni-common.so
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packag=
es-split/cannelloni-dbg/usr/lib/.debug/libcannelloni-common.so
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/=
libcannelloni-common.so.0
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/=
libcannelloni-common.so.0.0.1
> > > > ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/=
libcannelloni-common.so
> > > > ./sysroots-components/cortexa8hf-neon/cannelloni/usr/lib/libcannel=
loni-common.so
> > > >
> > > > I miss the very end of your thoughts. Namely:
> > > >
> > > > > The name of the package containing the shared library is name of=
 the
> > > > > xxx first-level directory "packages-split/xxx".
> > > >
> > > > So, how should I write the RDEPENDS command?
> > > >
> > > > Something as: RDEPENDS_${PN} =3D "???"
> > > >
> > > > What should I put on the right side of the equation (according to =
the above traces)?
> > > >
> > > > Thank you,
> > > > Zoran
> > > > _______
> > > >
> > > > On Fri, Feb 14, 2020 at 11:49 AM Laurent Gauthier <laurent.gauthie=
r@soccasys.com> wrote:
> > > >>
> > > >> Hi Zoran,
> > > >>
> > > >> The issue seems to be that the executable /usr/bin/cannelloni has=
 a
> > > >> reference to a shared library (libcannelloni-common.so.0) for whi=
ch
> > > >> the Yocto build system is not able to determine automatically whi=
ch
> > > >> package provides it.
> > > >>
> > > >> Based on the name I would assume that this package should be crea=
ted
> > > >> by the same recipe that produces this executable (one recipe prod=
uces
> > > >> multiple packages).
> > > >>
> > > >> The most probable reason for this is that the new version of the
> > > >> package you are trying to build does not install the "missing" sh=
ared
> > > >> library properly. But here are some steps you could follow to try=
 to
> > > >> determine the stage of build/install/package where the shared lib=
rary
> > > >> goes missing.
> > > >>
> > > >> To debug this I would suggest that you check that this
> > > >> "libcannelloni-common.so.0" shared library is present in several
> > > >> directories.
> > > >>
> > > >> First in the build directory:
> > > >>
> > > >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/=
cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build
> > > >>
> > > >> If it is not there that would be very surprising. I will assume t=
hat
> > > >> it is present. Let us know if it is not.
> > > >>
> > > >> Then the next location to check for this shared library is the fo=
llowing:
> > > >>
> > > >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/=
cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package
> > > >>
> > > >> If the file is not there, then it means that the recipe did not
> > > >> "install" it (as this directory is populated by do_install).
> > > >>
> > > >> If the file is there then you can check if it is correctly assign=
ed in
> > > >> a package by determining if it is also found in:
> > > >>
> > > >> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/=
cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split
> > > >>
> > > >> If the file is not there, then it means that the recipe did not
> > > >> "package" it properly (as this directory is populated by do_packa=
ge).
> > > >> You should review the recipe for any anomaly in assigning install=
ed
> > > >> files to individual packages.
> > > >>
> > > >> If the file is there then you probably should add the package tha=
t
> > > >> contains the shared library in the RDEPENDS for the "cannelloni"
> > > >> package.
> > > >>
> > > >> The name of the package containing the shared library is name of =
the
> > > >> xxx first-level directory "packages-split/xxx".
> > > >>
> > > >> Not sure if that will solve your issue, but hopefully that will h=
elp.
> > > >>
> > > >> Kind Regards, Laurent.
> > > >>
> > > >> On Fri, Feb 14, 2020 at 11:27 AM Zoran <zoran.stojsavljevic@gmail=
.com> wrote:
> > > >> >
> > > >> > Hello List,
> > > >> >
> > > >> > I am trying to solve very interesting ERROR I am getting with s=
lightly modified GENIVI Canneloni recipe:
> > > >> > https://github.com/ZoranStojsavljevic/meta-socketcan/blob/maste=
r/recipes-can/cannelloni/cannelloni.bb
> > > >> >
> > > >> > If I take the recipe as is, everything works fine, with:
> > > >> > ## SRCREV =3D "${AUTOREV}"
> > > >> > SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> > > >> >
> > > >> > Everything works fine, but if I swap the static hash with auto =
latest hash (SRCREV =3D "${AUTOREV}":
> > > >> > SRCREV =3D "${AUTOREV}"
> > > >> > ## SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> > > >> >
> > > >> > I am getting these ERRORS, which seems to me very strange?!
> > > >> > _______
> > > >> >
> > > >> > Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% ma=
tch, 99% complete)
> > > >> > NOTE: Executing Tasks
> > > >> > NOTE: Setscene tasks completed
> > > >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package canne=
lloni contains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/bu=
ild/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: in=
 file /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortex=
a8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/us=
r/bin/cannelloni [rpaths]
> > > >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cann=
elloni contained in package cannelloni requires libcannelloni-common.so.0, =
but no providers found in RDEPENDS_cannelloni? [file-rdeps]
> > > >> > ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal erro=
rs. Please consider fixing them.
> > > >> > ERROR: Logfile of failure stored in: /home/user/projects2/beagl=
ebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/can=
nelloni/1.0-r0/temp/log.do_package_qa.255490
> > > >> > ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/me=
ta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed wit=
h exit code '1'
> > > >> > NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't =
need to be rerun and 1 failed.
> > > >> > _______
> > > >> >
> > > >> > Any advise how to make GENIVI Cannelloni recipe to work with: S=
RCREV =3D "${AUTOREV}" ???
> > > >> >
> > > >> > Thank you,
> > > >> > Zoran
> > > >> >
> > > >> >=20
> > > >>
> > > >>
> > > >>
> > > >> --
> > > >> Laurent Gauthier
> > > >> Phone: +33 630 483 429
> > > >> http://soccasys.com
> > >
> > >
> > >
> > > --
> > > Laurent Gauthier
> > > Phone: +33 630 483 429
> > > http://soccasys.com
>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
