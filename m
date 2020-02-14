Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web09.6124.1581686455536365455
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 05:20:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=j1Ms9mE5;
 spf=pass (domain: soccasys.com, ip: 209.85.217.48, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-vs1-f48.google.com with SMTP id p6so5859898vsj.11
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 05:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Nl3gLJHSo+abmUjw5Xt8/jxPbDXx8O42F22udnLp4cU=;
        b=j1Ms9mE5Vhb+/wSLi9wwzehjnZ8XSn0vzLujpsGgzedjYuvjhX4WALpxfd49Wt+GuJ
         CS2FnX+2hj6S2TXplDbD91RB6CvTNfsINdBUMOkR+iW68qqQ6vArgNe4H5Tc0j544UGt
         9AQsCYH1M9JIgMSQD+KyvsV0FiR2LSlrf3vDMyBwOVHYw2u6rwh0TZ1XEF4QaXG/Nykf
         C9mc5YX66TJ1IGH+oK0qMY9U9lHdI/cwXsYQT+HcChd34Rlh5yq2D4MiGt/kNLv/XtYg
         DCU0SDxTg6H0679BCOkZzxpk6edOvp4jb/Cn0wLGBhhJOLvmdsLCv2nnleyDw4fk/XOR
         NOAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Nl3gLJHSo+abmUjw5Xt8/jxPbDXx8O42F22udnLp4cU=;
        b=CoJweEtViYwp6Xp9zWQCEBI3ePOyjUwM9TzGX16lYEVS/Gca0NmSp0DlvHOD9J/HnR
         k0kEU+foLcFrbS3gVojmdU3wSn4c9LGXoPZ0eRTS65qB0LA1VpUu5RBr6JIXcVhnBU/o
         SPmWr3ak1/gbKJxiinV+MZ+sMdAFU4ueM7nGN8ZGVagX9u9nhwccOs3WfLhaNzu4bCqj
         QNKnQyjmKcJNw0zVtXm1vf9lQCD9f0bRjL/4m0agtMyUQFtuBd2UYQSFLkLyR9Jh6aX8
         JeALOdIldjd2L1lxtSXV2AanaYDnHkgocOklPjncidvTw3IfcJ95R4k8hht1tQrL6dlP
         DjSg==
X-Gm-Message-State: APjAAAXsYV+iIH0yOTkTOSjvGySn+5ViC/LKBr+epjBMfHXI0Zl0mXSp
	sm68gjnGWqy5KlXi6z7Vv8HSsFfNVJXh4jdPOL+n5Q==
X-Google-Smtp-Source: APXvYqzrvInTxOXxhD7V+FPOlPGmSuqWXk9w9ggXwuPIRl4vJPiTCML0ozQwKgyX+LLLTSK+K7X+ffdEoIL3nJSRVlQ=
X-Received: by 2002:a05:6102:72b:: with SMTP id u11mr1424026vsg.69.1581686454226;
 Fri, 14 Feb 2020 05:20:54 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
 <CAGbd71SQXi29MVpQcbme2CxWbyWNgHMGZW1LOJDYfeoOYfJOVg@mail.gmail.com> <CAGAf8LyCBGw-vNipFK5Y8L+W=jNeyMJ95S=r=+r4vXZiB3roDA@mail.gmail.com>
In-Reply-To: <CAGAf8LyCBGw-vNipFK5Y8L+W=jNeyMJ95S=r=+r4vXZiB3roDA@mail.gmail.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Fri, 14 Feb 2020 14:16:27 +0100
Message-ID: <CAGbd71QL_kbrjatOp19PhyT_qnTOyqHzA79Yfr=C=P6DmE=pUQ@mail.gmail.com>
Subject: Re: [yocto] Modified GENIVI Cannelloni recipe with strange side effects
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zoran,

You are almost there! I can feel it... :-)

The issue I see is that the following files have been build but NOTinstall=
ed:

* libcannelloni-common.so.0
* libcannelloni-common.so.0.0.1

If you make sure that they are installed that should fix your issue.

Based on the info you provided no RDEPENDS seems to be required as it
all appears that everything is in one package named "cannelloni",
rather than a package for the main executable and then packages for
libraries.

Kind regards, Laurent.

On Fri, Feb 14, 2020 at 12:43 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Laurent,
>
> Many thanks to you for the help. :-)
>
> I did some modifications, and now I have all the elements in there/in pl=
ace:
>
> [user@fedora31-ssd cannelloni]$ cd ../../../build/tmp
> [user@fedora31-ssd tmp]$ find . -name libcannelloni*
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/image/usr/li=
b/libcannelloni-common.so
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/sysroot-dest=
dir/usr/lib/libcannelloni-common.so
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/usr/=
lib/.debug/libcannelloni-common.so
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package/usr/=
lib/libcannelloni-common.so
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-spl=
it/cannelloni/usr/lib/libcannelloni-common.so
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-spl=
it/cannelloni-dbg/usr/lib/.debug/libcannelloni-common.so
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcan=
nelloni-common.so.0
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcan=
nelloni-common.so.0.0.1
> ./work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build/libcan=
nelloni-common.so
> ./sysroots-components/cortexa8hf-neon/cannelloni/usr/lib/libcannelloni-c=
ommon.so
>
> I miss the very end of your thoughts. Namely:
>
> > The name of the package containing the shared library is name of the
> > xxx first-level directory "packages-split/xxx".
>
> So, how should I write the RDEPENDS command?
>
> Something as: RDEPENDS_${PN} =3D "???"
>
> What should I put on the right side of the equation (according to the ab=
ove traces)?
>
> Thank you,
> Zoran
> _______
>
> On Fri, Feb 14, 2020 at 11:49 AM Laurent Gauthier <laurent.gauthier@socc=
asys.com> wrote:
>>
>> Hi Zoran,
>>
>> The issue seems to be that the executable /usr/bin/cannelloni has a
>> reference to a shared library (libcannelloni-common.so.0) for which
>> the Yocto build system is not able to determine automatically which
>> package provides it.
>>
>> Based on the name I would assume that this package should be created
>> by the same recipe that produces this executable (one recipe produces
>> multiple packages).
>>
>> The most probable reason for this is that the new version of the
>> package you are trying to build does not install the "missing" shared
>> library properly. But here are some steps you could follow to try to
>> determine the stage of build/install/package where the shared library
>> goes missing.
>>
>> To debug this I would suggest that you check that this
>> "libcannelloni-common.so.0" shared library is present in several
>> directories.
>>
>> First in the build directory:
>>
>> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortex=
a8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build
>>
>> If it is not there that would be very surprising. I will assume that
>> it is present. Let us know if it is not.
>>
>> Then the next location to check for this shared library is the followin=
g:
>>
>> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortex=
a8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/package
>>
>> If the file is not there, then it means that the recipe did not
>> "install" it (as this directory is populated by do_install).
>>
>> If the file is there then you can check if it is correctly assigned in
>> a package by determining if it is also found in:
>>
>> * /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortex=
a8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split
>>
>> If the file is not there, then it means that the recipe did not
>> "package" it properly (as this directory is populated by do_package).
>> You should review the recipe for any anomaly in assigning installed
>> files to individual packages.
>>
>> If the file is there then you probably should add the package that
>> contains the shared library in the RDEPENDS for the "cannelloni"
>> package.
>>
>> The name of the package containing the shared library is name of the
>> xxx first-level directory "packages-split/xxx".
>>
>> Not sure if that will solve your issue, but hopefully that will help.
>>
>> Kind Regards, Laurent.
>>
>> On Fri, Feb 14, 2020 at 11:27 AM Zoran <zoran.stojsavljevic@gmail.com> =
wrote:
>> >
>> > Hello List,
>> >
>> > I am trying to solve very interesting ERROR I am getting with slightl=
y modified GENIVI Canneloni recipe:
>> > https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/reci=
pes-can/cannelloni/cannelloni.bb
>> >
>> > If I take the recipe as is, everything works fine, with:
>> > ## SRCREV =3D "${AUTOREV}"
>> > SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
>> >
>> > Everything works fine, but if I swap the static hash with auto latest=
 hash (SRCREV =3D "${AUTOREV}":
>> > SRCREV =3D "${AUTOREV}"
>> > ## SRCREV =3D "0fb6880b719b8acf2b4210b264b7140135e4be8a"
>> >
>> > I am getting these ERRORS, which seems to me very strange?!
>> > _______
>> >
>> > Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match, 9=
9% complete)
>> > NOTE: Executing Tasks
>> > NOTE: Setscene tasks completed
>> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni =
contains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/build/tm=
p/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: in file =
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-n=
eon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/=
cannelloni [rpaths]
>> > ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni=
 contained in package cannelloni requires libcannelloni-common.so.0, but no=
 providers found in RDEPENDS_cannelloni? [file-rdeps]
>> > ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Pl=
ease consider fixing them.
>> > ERROR: Logfile of failure stored in: /home/user/projects2/beaglebone-=
black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannellon=
i/1.0-r0/temp/log.do_package_qa.255490
>> > ERROR: Task (/home/user/projects2/beaglebone-black/bbb-yocto/meta-soc=
ketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa) failed with exit=
 code '1'
>> > NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't need t=
o be rerun and 1 failed.
>> > _______
>> >
>> > Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =
=
=3D "${AUTOREV}" ???
>> >
>> > Thank you,
>> > Zoran
>> >
>> >=20
>>
>>
>>
>> --
>> Laurent Gauthier
>> Phone: +33 630 483 429
>> http://soccasys.com



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
