Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.32256.1627316335218237975
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 09:18:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XQLlvcoh;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: whuang8933@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id q15so15738150ybu.2
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 09:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9dpg36lnRaB9ftzujRITgIvMpBayaZPHQaYqDarK8NE=;
        b=XQLlvcohqSCOzC0o1xc7Z44rV9tS05n/JPldpskz0gLAuxb8DNaf64p7aR3uUf2U5M
         W4LZNC3jR8KG+tfssa4Au+flZg9iCJHcJClAYsDQ4lZcDUGpJy+XUdFmEe+tJJ9w/iaK
         zZ+gvSwX9JscQbk5faX3+ZfJOL6cEyg2BjFv8DlzSA5GIHkr4FVGpb+O8nlET+SChrcw
         JdJtwDxSbHxjtJ5GvXf4cIXEYd/XZGP3Q8F5JYEujqKowIHZqAxJmOVxsbWFtSj/hYPS
         +H91kC0dRs/CgG0y/+pjhVCGtG2OzpMyQhOkPfhj52wyC2BFXZM9juxTUqGRz4tV/3ge
         D7Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9dpg36lnRaB9ftzujRITgIvMpBayaZPHQaYqDarK8NE=;
        b=S2XIJKPUkWtl0Mp+z5KGXl2dVr/Q3SDO/9JAjJg/N3nYGXG6DpwT7t5xz96/fabxbv
         2cqBqnjPCq46Hn1RYiCBdaAJTmwD+49o573bfcyMGYvGhUj6mbLk39FMSch0mMk87/PW
         TNSnN3yRlD/KqSt9F+T6edd6+nujc9+y6Eiibb3mvhLwR0BdyqpssrdVcsTAsIGuDkIU
         V9TwUxJQgXVV4sFr1CA9wqvQuuwO+hkwr76kVXvjo7kBMW4Bz+wA8vW0Bj41u+vXx8ZU
         9V9dgAmd0OFSazCMUGQdNh2twOE1DHV2I/s3XwdgVM4BoDDzc/EoO9hlM1+c7YSWAtTc
         eWXA==
X-Gm-Message-State: AOAM531MBfAfeNhEoT745vKnAk0Ra/4oQTBvqEIrdx3ZJhtWfYHMR4R+
	Wlf0WRRiPQMFxQdkSihgLHYxTtDRNkCZWHjf94Y=
X-Google-Smtp-Source: ABdhPJyC9KD+JQRM7Yxmlm192+zxMexWic4kqOoV3Pb8MuY+iWZcstA9oN/GRmHmq0mm2rt3cEAmqohhowIDecjXAL4=
X-Received: by 2002:a25:8205:: with SMTP id q5mr25006547ybk.440.1627316334388;
 Mon, 26 Jul 2021 09:18:54 -0700 (PDT)
MIME-Version: 1.0
References: <CADa-vC0G7_-YqCpEm_UQZLDX3Gwz-mffZG9OuZhRz1J_UEQp1w@mail.gmail.com>
 <11945.1627308260135371705@lists.yoctoproject.org>
In-Reply-To: <11945.1627308260135371705@lists.yoctoproject.org>
From: "William Huang" <whuang8933@gmail.com>
Date: Mon, 26 Jul 2021 12:18:43 -0400
Message-ID: <CADa-vC15s2t_oFRxBUMs3_5zTHKyg_qr3PVLrFsT0x0uHkHasA@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Recipe dependent on Debian package - How should I approach? #debian #yocto
To: Mitch Gaines <gainesmitch2@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

cc-ing yocto list

On Mon, Jul 26, 2021 at 10:04 AM Mitch Gaines <gainesmitch2@gmail.com> wrot=
e:
>
> So, that is something I already have. What I really need are the systemd =
header files in order to build my recipe. Looks like the log output didn't =
format well. Let me re-post that below with some better formatting and you'=
ll see what I'm referring to. How can I get those header files to build wit=
h my project? I thought just adding it as a DEPENDS would do it, but that d=
oesn't seem to be the case.
>
> NOTE: Executing Tasks
> ERROR: <recipe-name> do_compile: oe_runmake failed
> ERROR: <recipe-name> do_compile: Execution of '/home/mitch/bin/yocto/proj=
ect-name/build/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0=
+gitAUTOINC+...-r0/temp/run.do_compile.13271' failed with exit code 1:
> make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/tmp=
/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0=
/git/src/core'
> CC file-name.c
> ../file-name.c:6:10: fatal error: systemd/sd-daemon.h: No such file or di=
rectory
>     6 | #include <systemd/sd-daemon.h>
>       |          ^~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [Makefile:93: build/file-name.o] Error 1
> make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tmp/=
work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/=
git/src/core'
> make: *** [Makefile:72: some-recipe] Error 2
> WARNING: exit code 1 from a shell command.
>
> ERROR: Logfile of failure stored in: /home/mitch/bin/yocto/project-name/b=
uild/tmp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOIN=
C+...-r0/temp/log.do_compile.13271
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 24 my-project
> | make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/t=
mp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-=
r0/git/src/core'
> | CC my-file.c
> | ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No such file or di=
rectory
> |     6 | #include <systemd/sd-daemon.h>
> |       |          ^~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:93: build/my-file.o] Error 1
> | make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r=
0/git/src/core'
> | make: *** [Makefile:72: my-project] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/home/mitch/bin/yocto/project-name/build/tmp/work/=
armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r0/temp/=
run.do_compile.13271' failed with exit code 1:
> | make[1]: Entering directory '/home/mitch/bin/yocto/project-name/build/t=
mp/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-=
r0/git/src/core'
> | CC my-file.c
> | ../my-file.c:6:10: fatal error: systemd/sd-daemon.h: No such file or di=
rectory
> |     6 | #include <systemd/sd-daemon.h>
> |       |          ^~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
> | make[1]: *** [Makefile:93: build/my-file.o] Error 1
> | make[1]: Leaving directory '/home/mitch/bin/yocto/project-name/build/tm=
p/work/armv7vet2hf-neon-poky-linux-gnueabi/recipe-name/1.0+gitAUTOINC+...-r=
0/git/src/core'
> | make: *** [Makefile:72: my-recipe] Error 2
> | WARNING: exit code 1 from a shell command.
> |
> ERROR: Task (/home/mitch/bin/yocto/project-name/layers/meta-project/recip=
es-main/my-recipe/my-recipe_git.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2166 tasks of which 2163 didn't need to be=
 rerun and 1 failed.
