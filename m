Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web11.5213.1581680636108825372
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 03:43:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sCC0J3ky;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id d5so6762544qto.0
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 03:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7eoalI2UIHOgDXhhlsHmmv8VOflJTnnAZU76uuR8BUI=;
        b=sCC0J3ky78hm6J6mTBli8WZiUeNIiq1T8wbybdzCcCFdSdN5uvRGoAmFqEOExlqQIj
         WJeSWznO0lW3sGfQSnJZLM3G2YJInYaV3xnT4L/q5wGUYd7SIGdHN9cUCXvWbZRhCle7
         k5eJInxajFbrH7VR3OcNJvve7MfDe85A6oXx1Tmn+KwYhUDTDFsOttqTaa8BXtgpdZDK
         22WZBGFmG4iRutklEkJn2p34LWYZIAKvdYHVkzzlzslMEAxysb4M9qqPj4caxedktkub
         eufrTKXBWaANcc+uh+O+B8Th0o3wt0BBLUjlXKabMi7pq3svDXYkb1p+kFWLyCPZMfk8
         W84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7eoalI2UIHOgDXhhlsHmmv8VOflJTnnAZU76uuR8BUI=;
        b=cEapBAprfIIeoiGKs18jHYzz71jSFLv5IoVJppCKuqql30Ny7ox/7rwS4xST5qJEbS
         dnUTovb8VDGzLLP6t7OOR6xi3nLZALcP1c8NvtiUZJMcfVSvQfgI4CbvHoKpgC7ggS3G
         xMvL1RWQtkYLQpWuFm1g44rBuVdIlwlnc+Ye3s6L7FsQdyexvbTnJ7oyKGtwR0EKQLbv
         Fbh8nSt0KTe8MNic3Skd/icEPjAR67AQnk8OyL4nWuZj0MNipf6pco9e65iU0yVMCm8P
         +IYI9Tp5KsfJQYbxqvwSmGEwsrlGuE1W/SkRXJtbeR4AbxzyzSco2VVTwV+8Eqzr94/7
         qcrg==
X-Gm-Message-State: APjAAAVZ1I3tgiVTOL+ksDaWhx/ji1y09AN4KctdrRCyMv5osyDoVDDn
	obzUuhvRmed11tCkQLxgrPug3o0wuuIRU8tEQWY=
X-Google-Smtp-Source: APXvYqzAKvhJRTmdPfasCa0e/LoHpfuGfKcZw2DN0xPFCWzGywhd1I1ZYy36Mx/USFJ4+P7NFMll8qCTzNvaI9MU570=
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr2076610qtu.141.1581680634958;
 Fri, 14 Feb 2020 03:43:54 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
 <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com>
In-Reply-To: <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 14 Feb 2020 12:43:43 +0100
Message-ID: <CAGAf8LyCBGw-vNipFK5Y8L+W=jNeyMJ95S=r=+r4vXZiB3roDA@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006516f2059e87b8fd"

--0000000000006516f2059e87b8fd
Content-Type: text/plain; charset="UTF-8"

Hello Laurent,

Many thanks to you for the help. :-)

I did some modifications, and now I have all the elements in there/in place:

[user@fedora31-ssd cannelloni]$ cd ../../../build/tmp
[user@fedora31-ssd tmp]$ find . -name libcannelloni*
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/image/usr/lib/libcannelloni-common.so
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/sysroot-destdir/usr/lib/libcannelloni-common.so
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/usr/lib/.debug/libcannelloni-common.so
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/usr/lib/libcannelloni-common.so
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/lib/libcannelloni-common.so
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni-dbg/usr/lib/.debug/libcannelloni-common.so
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcannelloni-common.so.0
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcannelloni-common.so.0.0.1
./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcannelloni-common.so
./sysroots-components/cortexa8hf-neon/cannelloni/usr/lib/libcannelloni-common.so

I miss the very end of your thoughts. Namely:

> The name of the package containing the shared library is name of the
> xxx first-level directory "packages-split/xxx".

So, how should I write the RDEPENDS command?

Something as: RDEPENDS_${PN} = "???"

What should I put on the right side of the equation (according to the above
traces)?

Thank you,
Zoran
_______

On Fri, Feb 14, 2020 at 11:49 AM Laurent Gauthier <
laurent.gauthier@soccasys.com> wrote:

> Hi Zoran,
>
> The issue seems to be that the executable /usr/bin/cannelloni has a
> reference to a shared library (libcannelloni-common.so.0) for which
> the Yocto build system is not able to determine automatically which
> package provides it.
>
> Based on the name I would assume that this package should be created
> by the same recipe that produces this executable (one recipe produces
> multiple packages).
>
> The most probable reason for this is that the new version of the
> package you are trying to build does not install the "missing" shared
> library properly. But here are some steps you could follow to try to
> determine the stage of build/install/package where the shared library
> goes missing.
>
> To debug this I would suggest that you check that this
> "libcannelloni-common.so.0" shared library is present in several
> directories.
>
> First in the build directory:
>
> *
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build
>
> If it is not there that would be very surprising. I will assume that
> it is present. Let us know if it is not.
>
> Then the next location to check for this shared library is the following:
>
> *
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package
>
> If the file is not there, then it means that the recipe did not
> "install" it (as this directory is populated by do_install).
>
> If the file is there then you can check if it is correctly assigned in
> a package by determining if it is also found in:
>
> *
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split
>
> If the file is not there, then it means that the recipe did not
> "package" it properly (as this directory is populated by do_package).
> You should review the recipe for any anomaly in assigning installed
> files to individual packages.
>
> If the file is there then you probably should add the package that
> contains the shared library in the RDEPENDS for the "cannelloni"
> package.
>
> The name of the package containing the shared library is name of the
> xxx first-level directory "packages-split/xxx".
>
> Not sure if that will solve your issue, but hopefully that will help.
>
> Kind Regards, Laurent.
>
> On Fri, Feb 14, 2020 at 11:27 AM Zoran <zoran.stojsavljevic@gmail.com>
> wrote:
> >
> > Hello List,
> >
> > I am trying to solve very interesting ERROR I am getting with slightly
> modified GENIVI Canneloni recipe:
> >
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-can/cannelloni/cannelloni.bb
> >
> > If I take the recipe as is, everything works fine, with:
> > ## SRCREV = "${AUTOREV}"
> > SRCREV = "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> >
> > Everything works fine, but if I swap the static hash with auto latest
> hash (SRCREV = "${AUTOREV}":
> > SRCREV = "${AUTOREV}"
> > ## SRCREV = "0fb6880b719b8acf2b4210b264b7140135e4be8a"
> >
> > I am getting these ERRORS, which seems to me very strange?!
> > _______
> >
> > Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match, 99%
> complete)
> > NOTE: Executing Tasks
> > NOTE: Setscene tasks completed
> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni
> contains bad RPATH
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
> in file
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/cannelloni
> [rpaths]
> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni
> contained in package cannelloni requires libcannelloni-common.so.0, but no
> providers found in RDEPENDS_cannelloni? [file-rdeps]
> > ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.
> > ERROR: Logfile of failure stored in:
> /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.255490
> > ERROR: Task
> (/home/user/projects2/beaglebone-black/bbb-yocto/meta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't need to
> be rerun and 1 failed.
> > _______
> >
> > Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =
> "${AUTOREV}" ???
> >
> > Thank you,
> > Zoran
> >
> > 
>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
>

--0000000000006516f2059e87b8fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Laurent,</div><div><br></div><div>Many thanks t=
o you for the help. :-)<br></div><div><br></div><div>I did some modificatio=
ns, and now I have all the elements in there/in place:</div><div><br></div>=
<div>[user@fedora31-ssd cannelloni]$ cd ../../../build/tmp<br>[user@fedora3=
1-ssd tmp]$ find . -name libcannelloni*<br>./work/cortexa8hf-neon-poky-linu=
x-gnueabi/cannelloni/1.0-r0/image/usr/lib/libcannelloni-common.so<br>./work=
/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/sysroot-destdir/usr/l=
ib/libcannelloni-common.so<br>./work/cortexa8hf-neon-poky-linux-gnueabi/can=
nelloni/1.0-r0/package/usr/lib/.debug/libcannelloni-common.so<br>./work/cor=
texa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/usr/lib/libcannel=
loni-common.so<br>./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-=
r0/packages-split/cannelloni/usr/lib/libcannelloni-common.so<br>./work/cort=
exa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni-=
dbg/usr/lib/.debug/libcannelloni-common.so<br>./work/cortexa8hf-neon-poky-l=
inux-gnueabi/cannelloni/1.0-r0/build/libcannelloni-common.so.0<br>./work/co=
rtexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcannelloni-comm=
on.so.0.0.1<br>./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/=
build/libcannelloni-common.so<br>./sysroots-components/cortexa8hf-neon/cann=
elloni/usr/lib/libcannelloni-common.so</div><div><br></div><div>I miss the =
very end of your thoughts. Namely:</div><div><br></div><div>&gt; The name o=
f the package containing the shared library is name of the<br>
&gt; xxx first-level directory &quot;packages-split/xxx&quot;.</div><div><=
br></div><div>So, how should I write the RDEPENDS command?</div><div><br></=
div><div>Something as: RDEPENDS_${PN} =3D &quot;???&quot;</div><div><br></d=
iv><div>What should I put on the right side of the equation (according to t=
he above traces)?</div><div><br></div><div>Thank you,</div><div>Zoran</div>=
<div>_______<br>
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Feb 14, 2020 at 11:49 AM Laurent Gauthier &lt;<a href=3D"mai=
lto:laurent.gauthier@soccasys.com">laurent.gauthier@soccasys.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Zoran,<b=
r>
<br>
The issue seems to be that the executable /usr/bin/cannelloni has a<br>
reference to a shared library (libcannelloni-common.so.0) for which<br>
the Yocto build system is not able to determine automatically which<br>
package provides it.<br>
<br>
Based on the name I would assume that this package should be created<br>
by the same recipe that produces this executable (one recipe produces<br>
multiple packages).<br>
<br>
The most probable reason for this is that the new version of the<br>
package you are trying to build does not install the &quot;missing&quot; s=
hared<br>
library properly. But here are some steps you could follow to try to<br>
determine the stage of build/install/package where the shared library<br>
goes missing.<br>
<br>
To debug this I would suggest that you check that this<br>
&quot;libcannelloni-common.so.0&quot; shared library is present in several=
<br>
directories.<br>
<br>
First in the build directory:<br>
<br>
* /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build<br>
<br>
If it is not there that would be very surprising. I will assume that<br>
it is present. Let us know if it is not.<br>
<br>
Then the next location to check for this shared library is the following:<=
br>
<br>
* /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package<br>
<br>
If the file is not there, then it means that the recipe did not<br>
&quot;install&quot; it (as this directory is populated by do_install).<br>
<br>
If the file is there then you can check if it is correctly assigned in<br>
a package by determining if it is also found in:<br>
<br>
* /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8h=
f-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split<br>
<br>
If the file is not there, then it means that the recipe did not<br>
&quot;package&quot; it properly (as this directory is populated by do_pack=
age).<br>
You should review the recipe for any anomaly in assigning installed<br>
files to individual packages.<br>
<br>
If the file is there then you probably should add the package that<br>
contains the shared library in the RDEPENDS for the &quot;cannelloni&quot;=
<br>
package.<br>
<br>
The name of the package containing the shared library is name of the<br>
xxx first-level directory &quot;packages-split/xxx&quot;.<br>
<br>
Not sure if that will solve your issue, but hopefully that will help.<br>
<br>
Kind Regards, Laurent.<br>
<br>
On Fri, Feb 14, 2020 at 11:27 AM Zoran &lt;<a href=3D"mailto:zoran.stojsav=
ljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; w=
rote:<br>
&gt;<br>
&gt; Hello List,<br>
&gt;<br>
&gt; I am trying to solve very interesting ERROR I am getting with slightl=
y modified GENIVI Canneloni recipe:<br>
&gt; <a href=3D"https://github.com/ZoranStojsavljevic/meta-socketcan/blob/=
master/recipes-can/cannelloni/cannelloni.bb" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/rec=
ipes-can/cannelloni/cannelloni.bb</a><br>
&gt;<br>
&gt; If I take the recipe as is, everything works fine, with:<br>
&gt; ## SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; SRCREV =3D &quot;0fb6880b719b8acf2b4210b264b7140135e4be8a&quot;<br>
&gt;<br>
&gt; Everything works fine, but if I swap the static hash with auto latest=
 hash (SRCREV =3D &quot;${AUTOREV}&quot;:<br>
&gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; ## SRCREV =3D &quot;0fb6880b719b8acf2b4210b264b7140135e4be8a&quot;<br=
>
&gt;<br>
&gt; I am getting these ERRORS, which seems to me very strange?!<br>
&gt; _______<br>
&gt;<br>
&gt; Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match, 9=
9% complete)<br>
&gt; NOTE: Executing Tasks<br>
&gt; NOTE: Setscene tasks completed<br>
&gt; ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni =
contains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/build/tm=
p/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: in file =
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-n=
eon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/=
cannelloni [rpaths]<br>
&gt; ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni=
 contained in package cannelloni requires libcannelloni-common.so.0, but no=
 providers found in RDEPENDS_cannelloni? [file-rdeps]<br>
&gt; ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Pl=
ease consider fixing them.<br>
&gt; ERROR: Logfile of failure stored in: /home/user/projects2/beaglebone-=
black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannellon=
i/1.0-r0/temp/log.do_package_qa.255490<br>
&gt; ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/meta-soc=
ketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed with exit=
 code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn&#39;t ne=
ed to be rerun and 1 failed.<br>
&gt; _______<br>
&gt;<br>
&gt; Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =
=
=3D &quot;${AUTOREV}&quot; ???<br>
&gt;<br>
&gt; Thank you,<br>
&gt; Zoran<br>
&gt;<br>
&gt; <br>
<br>
<br>
<br>
-- <br>
Laurent Gauthier<br>
Phone: +33 630 483 429<br>
<a href=3D"http://soccasys.com" rel=3D"noreferrer" target=3D"_blank">http:=
//soccasys.com</a><br>
</blockquote></div>

--0000000000006516f2059e87b8fd--
