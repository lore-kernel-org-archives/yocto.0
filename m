Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web09.4784.1581677340742283342
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 02:49:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=lm2gTlg+;
 spf=pass (domain: soccasys.com, ip: 209.85.221.173, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-vk1-f173.google.com with SMTP id y184so2467084vkc.11
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 02:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=zsseE5iqsJl53S6/NccmlcwAFIxNWt1SFJJ1cTEu1bc=;
        b=lm2gTlg+yGcINovQkwg6aSZG2KrfnJsQAepcSJbPfmC4pW+6zipKvP+49UAgiTnFvI
         8+1Qds/DWcaUsnmNSFbuzJFRE4z4jhwOB3QnJeWm3JaHqb/JXFNtJU982nnQ7Fiu0ymo
         tRjf73vXM+r3wEauI9ZWRTvb2Xpv14N1nIDzUMCQCiWoef3AttdBsKSNF8sCn3L/p5a7
         JVwDSqYO84flG/KKzz2LXp0KrKsSFblGj7/FM0iI0ExKlunY0zap5z6doj6iWUgjj9Kf
         D8EU9AzFVYaZoBbw/Vzh77Fa6P05V8zR7vQL8aM1E3uvvayFlO3zWVfGffAMtCgI4wqB
         01sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=zsseE5iqsJl53S6/NccmlcwAFIxNWt1SFJJ1cTEu1bc=;
        b=V6+gOH/YDYrTLNbSW5puLHyo1R9XDaxrnq+uEp0LEUsgde2fx/sUN3/nof113+0CfA
         mA4iPX+7VtjZZRpKMzbUR/HK7JbklGMOXqrpU1tzkCSeCcShBfTbEz0ROePQbRDdehWx
         fBRKdGx2En91ibp8vKxji3kgDLsBDc9Ya/VCRHlGzhE2fswz9QtKgMvxiBM3mw+VoYn2
         umFgjjJJJEqjshnU+OUzWhSJE7idGbJAw85zKuyMb4OG0xeNXx+QnzSM6J7iEHgq+qJB
         jyG7wR7vV9rLw50sPoPEf99EnKDwaHIm9g/qX13PjxLthrx/5qMBBWsKxX8jxC8imMuQ
         AlLQ==
X-Gm-Message-State: APjAAAWZfBLjbMidiv423aI+GF77vwkVjmT3QqHC3t5LCSpNekAW/J61
	dItemStaDX/8UjNdQGGin5n7m5MNWwyoGyxHLfah3Q==
X-Google-Smtp-Source: APXvYqznT8QDppbJDkQndldmEcHBFihRY4Qn8n9Kx/FWOzDj/rZdlYpIxk1pdhFPRgUYEFh/B7gR9JA5/bN00KIHoTo=
X-Received: by 2002:a1f:5385:: with SMTP id h127mr1272960vkb.56.1581677339629;
 Fri, 14 Feb 2020 02:48:59 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
In-Reply-To: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Fri, 14 Feb 2020 11:44:34 +0100
Message-ID: <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zoran,

The issue seems to be that the executable /usr/bin/cannelloni has a
reference to a shared library (libcannelloni-common.so.0) for which
the Yocto build system is not able to determine automatically which
package provides it.

Based on the name I would assume that this package should be created
by the same recipe that produces this executable (one recipe produces
multiple packages).

The most probable reason for this is that the new version of the
package you are trying to build does not install the "missing" shared
library properly. But here are some steps you could follow to try to
determine the stage of build/install/package where the shared library
goes missing.

To debug this I would suggest that you check that this
"libcannelloni-common.so.0" shared library is present in several
directories.

First in the build directory:

* /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build

If it is not there that would be very surprising. I will assume that
it is present. Let us know if it is not.

Then the next location to check for this shared library is the following:

* /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package

If the file is not there, then it means that the recipe did not
"install" it (as this directory is populated by do_install).

If the file is there then you can check if it is correctly assigned in
a package by determining if it is also found in:

* /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split

If the file is not there, then it means that the recipe did not
"package" it properly (as this directory is populated by do_package).
You should review the recipe for any anomaly in assigning installed
files to individual packages.

If the file is there then you probably should add the package that
contains the shared library in the RDEPENDS for the "cannelloni"
package.

The name of the package containing the shared library is name of the
xxx first-level directory "packages-split/xxx".

Not sure if that will solve your issue, but hopefully that will help.

Kind Regards, Laurent.

On Fri, Feb 14, 2020 at 11:27 AM Zoran <zoran.stojsavljevic@gmail.com> wro=
te:
>
> Hello List,
>
> I am trying to solve very interesting ERROR I am getting with slightly m=
odified GENIVI Canneloni recipe:
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes=
-can/cannelloni/cannelloni.bb
>
> If I take the recipe as is, everything works fine, with:
> ## SRCREV =3D "${AUTOREV}"
> SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
>
> Everything works fine, but if I swap the static hash with auto latest ha=
sh (SRCREV =3D "${AUTOREV}":
> SRCREV =3D "${AUTOREV}"
> ## SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
>
> I am getting these ERRORS, which seems to me very strange?!
> _______
>
> Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match, 99% =
complete)
> NOTE: Executing Tasks
> NOTE: Setscene tasks completed
> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni con=
tains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/w=
ork/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: in file /ho=
me/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon=
-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/can=
nelloni [rpaths]
> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni co=
ntained in package cannelloni requires libcannelloni-common.so.0, but no pr=
oviders found in RDEPENDS_cannelloni? [file-rdeps]
> ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.
> ERROR: Logfile of failure stored in: /home/user/projects2/beaglebone-bla=
ck/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1=
.0-r0/temp/log.do_package_qa.255490
> ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/meta-socket=
can/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed with exit co=
de '1'
> NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't need to b=
e rerun and 1 failed.
> _______
>
> Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =3D=
 "${AUTOREV}" ???
>
> Thank you,
> Zoran
>
>=20



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
