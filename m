Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web09.30293.1627307987972209288
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 06:59:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d0hww36x;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: whuang8933@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id d73so14913557ybc.10
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 06:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=enpCyVT4EZxdGSfeuHZ4mVzZDIqiPLRt+Nq/qJv6qrI=;
        b=d0hww36x3uf2rQV8crR0cJW+F4Vmriw30hfci7qKcwKeFYKV2X5AzIomIsGZITmqao
         slEg30cgOm46/1PHoCZrj8H+ILTvtJz6gdMzcKierHC8Kdvo+8xNLk9qws1GsXkqJygZ
         0Y5dD2e1rKq2AlQHEAYn1X5rZTSyiA6WffeQh7n85Oa2TZty3zWCSfkptw11ZO/AmYr/
         wv17mBUFk7PBJiSYVRMJSgFYYkdKfx/t++uB5/Ij3HAk1UzP2H5qpW07LPxkgK6H+xAw
         U2IlN4pZ3d1U7ZfbqgNr5swm9OEIUzkTKDWQilfChcerRsHcYo7qmgDXAX07s6P8AXvy
         Fa4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=enpCyVT4EZxdGSfeuHZ4mVzZDIqiPLRt+Nq/qJv6qrI=;
        b=msuZ7EJyYI3pHn1lyzr7qhSQO5Vv/CmOlQsl3tZO+4+NCK5VjwTyxokEbzx7S5hKo1
         cQlfuZZdHEafsJfTEkW2hMJhzbnIRsYIOG+U26PStXLcshmnEedxYv8B3C5wM+W/rqgq
         r0WrD6SB2z3HI6PgpangHA67IIIvdlsDjtlFu4UAL9TFp9HN+n/1lITaoe2r6d/dWYRp
         4dFUbpMMOAUniR3eutrxgxI+lKey9MFH9geSEVU8AZPVQrz3R7dLbIw3GEWgYxrVZ1/1
         Dwt27OP59iC3P6QMjxLr5cDVJ6bMrBjHAzyLvPstpwX7WLgbOiExk9NGJwIQmNlZcLLC
         wTqw==
X-Gm-Message-State: AOAM531gPyQ6bAXP1Hi2cvYEoB91blLXUWpfa93N02Xyy3ccMGDB4o2L
	K1rkIGScGXjL69a4OOJWrfRCT4JNuRa7+Ek6NB0=
X-Google-Smtp-Source: ABdhPJxkJxzxAXQpmPz+BAKSuv6Bi1br9KYUSQJbem/zWh8VDpl1/uHddmDZptAU/OH9MMzcG5nJckStWulNucwLm1g=
X-Received: by 2002:a25:a08e:: with SMTP id y14mr9164942ybh.36.1627307987156;
 Mon, 26 Jul 2021 06:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <4t2u.1627305955765836583.vxyg@lists.yoctoproject.org>
In-Reply-To: <4t2u.1627305955765836583.vxyg@lists.yoctoproject.org>
From: whuang8933@gmail.com
Date: Mon, 26 Jul 2021 09:59:36 -0400
Message-ID: <CADa-vC0G7_-YqCpEm_UQZLDX3Gwz-mffZG9OuZhRz1J_UEQp1w@mail.gmail.com>
Subject: Re: [yocto] Recipe dependent on Debian package - How should I approach? #debian #yocto
To: Mitch Gaines <gainesmitch2@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mitch,
You can get systemd into your image... refer to the mega-manual:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usi=
ng-systemd-exclusively
Hopefully this resolves your issue.

- William Huang

On Mon, Jul 26, 2021 at 9:30 AM Mitch Gaines <gainesmitch2@gmail.com> wrot=
e:
>
> I have a project I am attempting to migrate from a Debian platform to Yo=
cto. This specific project has a dependency on libsystemd-dev which is a De=
bian package, but it doesn't seem to build when adding a DEPENDS on "system=
d" which is available on yocto. What is the best approach for migrating dep=
endencies in this manner? I'm sure I am going to run into other projects to=
 migrate which require Debian packages that are not directly available on Y=
octo. Or am I doing something wrong? See this specific example outlined bel=
ow:
>
> Below is a recipe for a Makefile C project that was mostly generated wit=
h `recipetool create`. I then added the DEPENDS on "systemd" and removed th=
e unused tasks:
>     # Recipe created by recipetool
> # This is the basis of a recipe and may need further editing in order to=
 be fully functional.
> # (Feel free to remove these comments when editing.)
>
> # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best gu=
esses - it is
> # your responsibility to verify that the values are complete and correct=
.
> #
> # The following license files were not able to be identified and are
> # represented as "Unknown" below, you will need to check them yourself:
> #   debian/copyright
> LICENSE =3D "Unknown"
> LIC_FILES_CHKSUM =3D "file://debian/copyright;md5=3Dsome-hash"
>
> SRC_URI =3D "git://git@my-project.git;protocol=3Dssh"
>
> # Modify these as desired
> PV =3D "1.0+git${SRCPV}"
> SRCREV =3D "<...>"
>
> S =3D "${WORKDIR}/git"
> DEPENDS =3D "systemd"
>
> # NOTE: this is a Makefile-only piece of software, so we cannot generate=
 much of the
> # recipe automatically - you will need to examine the Makefile yourself =
and ensure
> # that the appropriate arguments are passed in.
>
>
> do_compile () {
>     oe_runmake my-project
> }
> Whenever I bitbake this recipe, I get the following:
>
>
> NOTE: Executing Tasks ERROR: <recipe-name> do_compile: oe_runmake failed=
 ERROR: <recipe-name> do_compile: Execution of '/home/mitch/bin/yocto/proje=
ct-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+=
gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1: make[=
1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/work/a=
rmv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/sr=
c/core' CC file-name.c ../file-name.c:6:10: fatal error: systemd/sd-daemon.=
h: No such file or directory 6 | #include <systemd/sd-daemon.h> | ^~~~~~~~~=
~~~~~~~~~~~~ compilation terminated. make[1]: *** [Makefile:93: build/file-=
name.o] Error 1 make[1]: Leaving directory '/home/mitch/bin/yocto/project-n=
ame/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitA=
UTOINC+...-r0/git/src/core' make: *** [Makefile:72: some-recipe] Error 2 WA=
RNING: exit code 1 from a shell command. ERROR: Logfile of failure stored i=
n: /home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-=
linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/log.do_compile.13271 L=
og data follows: | DEBUG: Executing shell function do_compile | NOTE: make =
-j 24 my-project | make[1]: Entering directory '/home/mitch/bin/yocto/proje=
ct-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+=
gitAUTOINC+...-r0/git/src/core' | CC my-file.c | ../my-file.c:6:10: fatal e=
rror: systemd/sd-daemon.h: No such file or directory | 6 | #include <system=
d/sd-daemon.h> | | ^~~~~~~~~~~~~~~~~~~~~ | compilation terminated. | make[1=
]: *** [Makefile:93: build/my-file.o] Error 1 | make[1]: Leaving directory =
'/home/mitch/bin/yocto/project-name/build/tmp/work/armv7vet2hf-neon-poky-li=
nux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/git/src/core' | make: *** [Ma=
kefile:72: my-project] Error 2 | ERROR: oe_runmake failed | WARNING: exit c=
ode 1 from a shell command. | ERROR: Execution of '/home/mitch/bin/yocto/pr=
oject-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1=
.0+gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1: | =
make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp/w=
ork/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/g=
it/src/core' | CC my-file.c | ../my-file.c:6:10: fatal error: systemd/sd-da=
emon.h: No such file or directory | 6 | #include <systemd/sd-daemon.h>
>
>
> Am I doing anything overtly wrong here? Would appreciate any assistance =
you can provide.
>
> Thanks!
>=20
>
