Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.7013.1576085869697434545
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 09:37:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=rpwOGTu+;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B4B4E01205; Wed, 11 Dec 2019 09:37:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E34E6E010DD
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 09:37:47 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id i23so4898816lfo.7
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 09:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=NdHsPDk+3Iojn/QVQdoQdHEo/6EtHXbUkwsYbYhtREE=;
        b=rpwOGTu+mWHbILLY3Y0U3Ov8fdUiTZX64neauDo/J1jtj8aRJN1vVwJ+Mmg04rcejI
         lph1GPkptvkIPYFcbzs8A1mRjuBsnpmkADJ7OB9c5VxPG2h13dqTh8kL/AwcJQMBb5WH
         SU02yqQm0H9bU4Y28DSzbV4DsS2UDfCsRtVPTOrxa0xGYWbGMmyqsVX6Ss8TdxtCcPrO
         ji33wJJvjnvYObHe6cIhKllAxq+chx180k5j/BWlXfQTnXW6czN0m+sgPdgPomQzfxEi
         7AGf481wKYlhpuHEcFM7t7ZCQQflazTqRqxqymkCwL2+jseFsaV+KbsJY/r4DldipING
         8D4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NdHsPDk+3Iojn/QVQdoQdHEo/6EtHXbUkwsYbYhtREE=;
        b=Ati8EQFW1jJUDSeKmv3nN9wV3kaRedH+436XwyqMsFPz4aE1fvKK7LwvjQEYsf0l74
         d3jAGyaxSqvzXqNJE4N4yszV80QZfxtmOI7qT2tjtuVE0guSk1tC4kleSs1xEZv7ZsuJ
         vRrlUrDIIVJ8Wd/uIPX6Jgg8vW84i3FwSbp05AHzgNwtqqX2sZxl9peWjwu9AOe8J9so
         2zcJrYLgZu/IzpRb9ix1Qa8WPzWfXhw2/nXPuCkRoAqTR+x4dn+3VuzE1iDVBG+8nXct
         KMYBWMr1uX68Uu40JqlWH1U1BaImnabxU1b9hqt7dyeyPdr5zEM+i7IrWiLgFb8jCPeO
         Z3pA==
X-Gm-Message-State: APjAAAXyUGTYTmD6xfoC4cJJDEYWJ6sBpXiX0l/DG3X9Pt8M27EX4UPx
	X+RLgaB9icQWLlQ0nWC3yt8AOChUfukom86u2ezmcVGbwI0K0A==
X-Google-Smtp-Source: APXvYqyoxZ2HKmBHx8hpTICTSL3rh9ynx36Pi6OyhQ/3BvLJZFoCjG7iQB8mEl0beE1nRWvTxoeC+iZu8Muvsy6h57A=
X-Received: by 2002:a19:6a06:: with SMTP id u6mr3049165lfu.187.1576085866481;
 Wed, 11 Dec 2019 09:37:46 -0800 (PST)
MIME-Version: 1.0
References: <20191211071807.GA32639@linux-uys3> <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
 <20191211153955.GA5676@linux-uys3> <CAP71WjyTvBT_XxUoZAVcdEzKZP0p1OKq62jF9zWfU7Y=pXfWEA@mail.gmail.com>
 <20191211164132.GB13170@linux-uys3>
In-Reply-To: <20191211164132.GB13170@linux-uys3>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 11 Dec 2019 18:37:35 +0100
Message-ID: <CAP71Wjz+sHYpkOKhHUdGoQ2WPdgGqwosRC-zmfTHEVXW9XSF3w@mail.gmail.com>
Subject: Re: [yocto] variable and task/function timing
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2019 at 5:41 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Wed 2019-12-11 @ 04:49:27 PM, Nicolas Dechesne wrote:
> > right.. I was confused, I missed a few things in your email (well, it
> > was really long ;).
>
> lol
> Apparently writing long emails is therapeutic for me.
>
> > > I'm sure some will say "there's your solution, do it that way, proble=
m
> > > solved". However, I think "debug/release" are much more natural than
> > > "plain/debugoptimized". I can't change the MESON_BUILDTYPE strings,
> > > they have to be one of those two, so I introduced MESA_BUILD_TYPE as =
a
> > > level-of-indirection above MESON_BUILDTYPE to allow the user to use t=
he more
> > > natural "debug/release" wording.
> > >
> > > So my real question is (and maybe I'm just yak shaving at this point)=
: given
> > > the row/column view of variable setting, how do we factor in the elem=
ent of
> > > time? For example, *when* do the variables referenced by anonymous py=
thon
> > > functions and by tasks get set?
> > >
> > > This works (but doesn't allow me the space for nice error checking):
> > >
> > >         MESON_BUILDTYPE =3D "${@bb.utils.contains('MESA_BUILD_TYPE', =
'debug', 'debugoptimized', 'plain', d)}"
> > >
> > > and this doesn't:
> > >
> > >         python do_check_build_type() {
> > >             _buildtype =3D d.getVar('MESA_BUILD_TYPE')
> > >             if _buildtype not in ['release', 'debug']:
> > >                 bb.fatal("unknown build type (%s), please set to eith=
er 'release' or 'debug'" % _buildtype)
> > >             if _buildtype =3D=3D 'debug':
> > >                 d.setVar('MESON_BUILDTYPE', 'debugoptimized')
> > >                 bb.plain("setting meson build type to debugoptimized"=
)
> > >         }
> > >         addtask check_build_type before do_configure
> >
> > I missed the fact that you were using a task.
> > You can probably call do_check_build_type() when setting
> > MESON_BUILDTYPE instead of using a task, e.g. something like this:
> > MESON_BUILDTYPE =3D "${@do_check_build_type(d.getVar('MESA_BUILD_TYPE')=
)}"
>
> I did propose a 3rd way (in the original email) which does work which is =
very
> similar to what you're suggesting:
>
>         # set the build type to either 'release' or 'debug'
>         # the upstream mesa sources actually build a debug release by def=
ault
>         # but here we assume the user will want a release build by defaul=
t
>         MESA_BUILD_TYPE ?=3D "release"
>         def check_buildtype(d):
>             _buildtype =3D d.getVar('MESA_BUILD_TYPE')
>             if _buildtype not in ['release', 'debug']:
>                 bb.fatal("unknown build type (%s), please set to either '=
release' or 'debug'" % _buildtype)
>             if _buildtype =3D=3D 'debug':
>                 #bb.plain("setting meson build type to debugoptimized")
>                 return 'debugoptimized'
>             return 'plain'
>         MESON_BUILDTYPE =3D "${@check_buildtype(d)}"
>
> The user experience is rather different though. Let's say the user sets t=
he
> following in conf/local.conf:
>
>         MESA_BUILD_TYPE =3D "hello"
>
> Using the "addtask" method (which doesn't work) produces a very nice erro=
r
> message:
>
>         $ bitbake mesa -c configure
>         Loading cache: 100% |############################################=
###########################################################################=
##| Time: 0:00:00
>         Loaded 2257 entries from dependency cache.
>         Parsing recipes: 100% |##########################################=
###########################################################################=
##| Time: 0:00:01
>         Parsing of 1528 .bb files complete (1524 cached, 4 parsed). 2259 =
targets, 103 skipped, 0 masked, 0 errors.
>         NOTE: Resolving any missing task queue dependencies
>
>         Build Configuration:
>         BB_VERSION           =3D "1.44.0"
>         BUILD_SYS            =3D "x86_64-linux"
>         NATIVELSBSTRING      =3D "opensuseleap-15.1"
>         TARGET_SYS           =3D "arm-oe-linux-gnueabi"
>         MACHINE              =3D "tinker-rk3288"
>         DISTRO               =3D "nodistro"
>         DISTRO_VERSION       =3D "nodistro.0"
>         TUNE_FEATURES        =3D "arm armv7ve vfp thumb neon callconventi=
on-hard"
>         TARGET_FPU           =3D "hard"
>         meta-rockchip        =3D "master:e8fd1f92ed59e0e71a7418779b912c5d=
a342495c"
>         meta-tweaks          =3D "master:b9184893949356a2da43bb2b5ec88dd5=
73a5db0d"
>         meta                 =3D "master:093a1971f2ae12e1f514598da984f268=
607e550b"
>         meta-oe              =3D "master:851321744e17e51aeb822a8d88c3532d=
ffdf1cef"
>
>         Initialising tasks: 100% |#######################################=
###########################################################################=
##| Time: 0:00:00
>         Sstate summary: Wanted 0 Found 0 Missed 0 Current 77 (0% match, 1=
00% complete)
>         NOTE: Executing Tasks
>         NOTE: Setscene tasks completed
>         ERROR: mesa-2_19.2.4-r0 do_check_build_type: unknown build type (=
hello), please set to either 'release' or 'debug'
>         ERROR: Logfile of failure stored in: /z/build-master/tinker-rk328=
8/build/tmp-glibc/work/armv7vet2hf-neon-oe-linux-gnueabi/mesa/2_19.2.4-r0/t=
emp/log.do_check_build_type.12869
>         ERROR: Task (/opt/oe/configs/z/build-master/tinker-rk3288/layers/=
openembedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb:do_check_build_=
type) failed with exit code '1'
>         NOTE: Tasks Summary: Attempted 606 tasks of which 603 didn't need=
 to be rerun and 1 failed.
>
> Using the method proposed above produces:
>
>         $ bitbake mesa -c configure
>         Loading cache: 100% |############################################=
###########################################################################=
##| Time: 0:00:00
>         Loaded 2257 entries from dependency cache.
>         ERROR: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openem=
bedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb: unknown build typ=
e (hello), please set to either 'release' or 'debug' ETA:  --:--:--
>         WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/open=
embedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb: Exception durin=
g build_dependencies for meson_do_configure
>         WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/open=
embedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb: Error during fi=
nalise of /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-=
core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb
>         ERROR: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openem=
bedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb: unknown build type (=
hello), please set to either 'release' or 'debug'
>         WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/open=
embedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb: Exception during b=
uild_dependencies for meson_do_configure
>         WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/open=
embedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb: Error during final=
ise of /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-cor=
e/meta/recipes-graphics/mesa/mesa_19.2.4.bb
>         ERROR: ExpansionError during parsing /opt/oe/configs/z/build-mast=
er/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa-g=
l_19.2.4.bb
>         Traceback (most recent call last):
>           File "Var <MESON_BUILDTYPE>", line 1, in <module>
>           File "/opt/oe/configs/z/build-master/tinker-rk3288/layers/opene=
mbedded-core/meta/recipes-graphics/mesa/mesa.inc", line 56, in check_buildt=
ype(d=3D<bb.data_smart.DataSmart object at 0x7ffac8d0f4a8>):
>                  if _buildtype not in ['release', 'debug']:
>             >        bb.fatal("unknown build type (%s), please set to eit=
her 'release' or 'debug'" % _buildtype)
>                  if _buildtype =3D=3D 'debug':
>           File "/opt/oe/configs/z/build-master/tinker-rk3288/layers/bitba=
ke/lib/bb/__init__.py", line 108, in fatal:
>                  mainlogger.critical(''.join(args), extra=3Dkwargs)
>             >    raise BBHandledException()
>
>         bb.data_smart.ExpansionError: Failure expanding variable MESON_BU=
ILDTYPE, expression was ${@check_buildtype(d)} which triggered exception BB=
HandledException:
>
>
>         Summary: There were 4 WARNING messages shown.
>         Summary: There were 3 ERROR messages shown, returning a non-zero =
exit code.

then you could use an anonymous python function instead.

python () {
             _buildtype =3D d.getVar('MESA_BUILD_TYPE')
             if _buildtype not in ['release', 'debug']:
                 bb.fatal("unknown build type (%s), please set to
either 'release' or 'debug'" % _buildtype)
             if _buildtype =3D=3D 'debug':
                 d.setVar('MESON_BUILDTYPE', 'debugoptimized')
}

or something along these lines. that would be done during parsing, so
the variable should be set for all tasks.
