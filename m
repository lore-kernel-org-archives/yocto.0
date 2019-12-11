Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1680.1576058819140153530
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 02:06:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=TfNmI06k;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5822E011EE; Wed, 11 Dec 2019 02:06:58 -0800 (PST)
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
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B7C7E010D7
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 02:06:56 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id m6so23386290ljc.1
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 02:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ak0wHEu+DTVrAOLWkfmD/OnbWt20xFqTgX4I5xj8ehA=;
        b=TfNmI06kzkCV9M3dOwdFcKoBXi8M363A5tiLfkN/wfKcvDqd32otyIEAYyGvQmTy21
         fRC6bl8iJsxdU1v+8RFRcH1LYyunX2Np550By7xAi/dUbUSOWL1I8SAldwK9jc02h7bV
         068+PO3VClRLtL4oPxZoVMxOufQVIX0mYE+5ZTLTVLBvhC7Z4SwEu3RMoKv5ZT7x+LY7
         5hoLi3VwwkmKGQUzvRvoSEm1LlXGRbBBg2cyQ5XYXRup9VHwQHjwCxAIfrzluEwoFtuv
         Wi6UeHwTADBQfHjUPClftLacU7w6iQK5IMnucNtfKa9HOG4A3BGayUIVqvwW+XsCFago
         Dcuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ak0wHEu+DTVrAOLWkfmD/OnbWt20xFqTgX4I5xj8ehA=;
        b=VYe8LlnYfVkt0TL1tcwx9SfOtWm1RAfNVNMwyA++S6XRsMyVicQb/cYw6yM1PDlkPe
         nmgb1wSl/iEIy0O2RPifyIFOgAPkMeCNPFzIO5jptUWghFwKeIuap1/zy5ltMg4YKzIh
         172cfvR/cTavCib5N9WH0mWGnxyaOXdibARiwauCo+b3BQZv6Bdvnl5J6z/zTQE9tYdD
         L3dkIKWkssVXggVcHhvEsujoX0BYk9vGWTDqURWkN6qY2y++zJepNBEd6BH4l0pLHkWk
         vPOfGklynoo8idbGB+8HV8TOAqLPMPhsBGFl50I7OGRcMpnTaDHA2TKv0ie/qPWdz4Wr
         XLxA==
X-Gm-Message-State: APjAAAUPrbAG893RconbwI13Tz3PhNy2wkweoDYkVC1PRj9PhAInAHob
	6Fq7JA4JJedIOg+0mdy29iJuSI7W2fFQerDgulGzYg==
X-Google-Smtp-Source: APXvYqz2qNh1aKhs5zpnK1leCCBDgCPEqpCDOI9c3MWL9cer0Ah7yOlvti20JfOJOQb+kWtEZrI3AKkDrjz2zTdNZFM=
X-Received: by 2002:a2e:9906:: with SMTP id v6mr1505913lji.90.1576058815549;
 Wed, 11 Dec 2019 02:06:55 -0800 (PST)
MIME-Version: 1.0
References: <20191211071807.GA32639@linux-uys3>
In-Reply-To: <20191211071807.GA32639@linux-uys3>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 11 Dec 2019 11:06:44 +0100
Message-ID: <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
Subject: Re: [yocto] variable and task/function timing
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 11, 2019 at 8:18 AM Trevor Woerner <twoerner@gmail.com> wrote:
>
> Is there a document, or better yet a diagram, showing the order in which
> various config files, recipes, tasks, etc are parsed?
>
> Figuring out the order of the config files is easy enough (bitbake.conf), but
> trying to figure out when various other parts are processed is just a guess
> for me right now.

well the easiest way to visualize it is to think about all variables
being in a large array. Each variable (each row) having a different
'value' for each 'column' and each column representing a recipe. When
bitbake references a variable it is always in the context of a given
recipe, so you are looking at a specific 'column'. Initially this
array is filled with default values resulting from the parsing of all
global .conf files, as you noticed the list of conf files and the
order is set in bitbake.conf (which itself is hardcoded in bitbake,
and the first file to parse).

then bitbake will parse each recipe, one by one, and update each
variable's value in that array (in the relevant column). At the end of
the parsing, you have all variables which are known.

you can use bitbake -e to print variables value:

bitbake -e | grep ^MESON_BUILDTYPE

it will show you the default value (if it is set) outside the context
of any recipe.

bitbake -e <bar> | grep ^MESON_BUILDTYPE

will give you the value of this variable as it is set in <bar> recipe

Of course, the parsing is dealing with all operators as well.

In a global conf file you set a variable for a specific recipe with
the _pn- operator. e.g. use:

MESON_BUILDTYPE_pn-bar = "debug"
to set MESON_BUILDTYPE to debug for the <bar> recipe.

>
> Conceptually this is what I want to do:
>
>         Currently the meson build system (class) is hard-coded to always produce
>         a buildtype of "plain", which are (basically) production builds. But
>         there are other buildtypes that can be specified; such as
>         "debugoptimized". I want a recipe to be able to influence the meson
>         buildtype, and I want the user to be able to tweak this parameter from
>         their conf/local.conf.
>
> Here's what I want to do:
>
>         diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
>         index dc8c28963c..e1a13bbbf7 100644
>         --- a/meta/classes/meson.bbclass
>         +++ b/meta/classes/meson.bbclass
>         @@ -12,8 +12,9 @@ MESON_SOURCEPATH = "${S}"
>          def noprefix(var, d):
>              return d.getVar(var).replace(d.getVar('prefix') + '/', '', 1)
>
>         +MESON_BUILDTYPE ?= "plain"
>          MESONOPTS = " --prefix ${prefix} \
>         -              --buildtype plain \
>         +              --buildtype ${MESON_BUILDTYPE} \
>                        --bindir ${@noprefix('bindir', d)} \
>                        --sbindir ${@noprefix('sbindir', d)} \
>                        --datadir ${@noprefix('datadir', d)} \
>         diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/mesa/mesa.inc
>         index 5838207e6b..fb232d414e 100644
>         --- a/meta/recipes-graphics/mesa/mesa.inc
>         +++ b/meta/recipes-graphics/mesa/mesa.inc
>         @@ -46,6 +46,20 @@ export WANT_LLVM_RELEASE = "${MESA_LLVM_RELEASE}"
>
>          MESA_LLVM_RELEASE ?= "${LLVMVERSION}"
>
>         +# set the build type to either 'release' or 'debug'
>         +# the upstream mesa sources actually build a debug release by default
>         +# but here we assume the user will want a release build by default
>         +MESA_BUILD_TYPE ?= "release"

The content of the class is parsed when it is inherited. So you need
to initialize class variables *before* you inherit the class. e.g.

MESA_BUILD_TYPE ?= "release"
...
inherit meson

in your case is very different from
inherit meson
...
MESA_BUILD_TYPE ?= "release"

>         +python do_check_build_type() {
>         +    _buildtype = d.getVar('MESA_BUILD_TYPE')
>         +    if _buildtype not in ['release', 'debug']:
>         +        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
>         +    if _buildtype == 'debug':
>         +        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
>         +        bb.plain("setting meson build type to debugoptimized")
>         +}
>         +addtask check_build_type before do_configure
>         +
>          EXTRA_OEMESON = " \
>              -Dshared-glapi=true \
>              -Dgallium-opencl=disabled \
>
> Therefore if the user doesn't do anything explicitly, a production buildtype
> will be produced. However, if the user were to specify the following in their
> conf/local.conf:
>
>         MESA_BUILD_TYPE = "debug"
>
> I want mesa's buildtype to be "debugoptimized".
>
> I don't want the user to specify the following in their conf/local.conf:
>
>         MESON_BUILDTYPE = "debugoptimized"

use _pn- operator for that, as mentioned above.

>
> because that would cause *all* meson-built packages to switch to the
> debugoptimized buildtype. I only want mesa's build to be debugoptimized.
>
> However, the above doesn't work. If I set MESA_BUILD_TYPE to "hello" in my
> conf/local.conf, then the build will flag it and error out asking me to
> specify either 'release' or 'debug', which is great. But if I set
> MESA_BUILD_TYPE to 'debug' the MESON_BUILDTYPE variable is always set to
> "plain" regardless. So this task runs, but I guess it runs too late to
> influence the MESON_BUILDTYPE variable?

That is unexpected.. I would have thought it should work. You are
mixing BUILD_TYPE and BUILDTYPE in your email.. maybe you are mixing
that in your testing as well? What is set in local.conf will be parsed
first, so if you set a variable there, it will be 'set' when you parse
the recipe, so when you use ?= it should be a no-op.

>
> So, how can I run this function earlier (?) so that it can set the
> MESON_BUILDTYPE variable correctly? I tried the following:
>
>         diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
>         index dc8c28963c..e1a13bbbf7 100644
>         --- a/meta/classes/meson.bbclass
>         +++ b/meta/classes/meson.bbclass
>         @@ -12,8 +12,9 @@ MESON_SOURCEPATH = "${S}"
>          def noprefix(var, d):
>              return d.getVar(var).replace(d.getVar('prefix') + '/', '', 1)
>
>         +MESON_BUILDTYPE ?= "plain"
>          MESONOPTS = " --prefix ${prefix} \
>         -              --buildtype plain \
>         +              --buildtype ${MESON_BUILDTYPE} \
>                        --bindir ${@noprefix('bindir', d)} \
>                        --sbindir ${@noprefix('sbindir', d)} \
>                        --datadir ${@noprefix('datadir', d)} \
>         diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/mesa/mesa.inc
>         index 5838207e6b..b302f8ee55 100644
>         --- a/meta/recipes-graphics/mesa/mesa.inc
>         +++ b/meta/recipes-graphics/mesa/mesa.inc
>         @@ -46,6 +46,20 @@ export WANT_LLVM_RELEASE = "${MESA_LLVM_RELEASE}"
>
>          MESA_LLVM_RELEASE ?= "${LLVMVERSION}"
>
>         +# set the build type to either 'release' or 'debug'
>         +# the upstream mesa sources actually build a debug release by default
>         +# but here we assume the user will want a release build by default
>         +MESA_BUILD_TYPE ?= "release"
>         +def check_buildtype(d):
>         +    _buildtype = d.getVar('MESA_BUILD_TYPE')
>         +    if _buildtype not in ['release', 'debug']:
>         +        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
>         +    if _buildtype == 'debug':
>         +        bb.plain("setting meson build type to debugoptimized")
>         +        return 'debugoptimized'
>         +    return 'plain'
>         +MESON_BUILDTYPE = "${@check_buildtype(d)}"
>         +
>          EXTRA_OEMESON = " \
>              -Dshared-glapi=true \
>              -Dgallium-opencl=disabled \
>
> This will print out the bb.plain() message 16 times during parsing etc, it
> will fail out if MESA_BUILD_TYPE is not one of 'release' or 'debug' (which is
> good), but if this occurs, the error message is printed out twice plus a
> python traceback, which might be scary to users.
>
> The last thing I tried was the following:
>
>         diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
>         index dc8c28963c..e1a13bbbf7 100644
>         --- a/meta/classes/meson.bbclass
>         +++ b/meta/classes/meson.bbclass
>         @@ -12,8 +12,9 @@ MESON_SOURCEPATH = "${S}"
>          def noprefix(var, d):
>              return d.getVar(var).replace(d.getVar('prefix') + '/', '', 1)
>
>         +MESON_BUILDTYPE ?= "plain"
>          MESONOPTS = " --prefix ${prefix} \
>         -              --buildtype plain \
>         +              --buildtype ${MESON_BUILDTYPE} \
>                        --bindir ${@noprefix('bindir', d)} \
>                        --sbindir ${@noprefix('sbindir', d)} \
>                        --datadir ${@noprefix('datadir', d)} \
>         diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/mesa/mesa.inc
>         index 5838207e6b..c265ffc246 100644
>         --- a/meta/recipes-graphics/mesa/mesa.inc
>         +++ b/meta/recipes-graphics/mesa/mesa.inc
>         @@ -46,6 +46,12 @@ export WANT_LLVM_RELEASE = "${MESA_LLVM_RELEASE}"
>
>          MESA_LLVM_RELEASE ?= "${LLVMVERSION}"
>
>         +# set the build type to either 'release' or 'debug'
>         +# the upstream mesa sources actually build a debug release by default
>         +# but here we assume the user will want a release build by default
>         +MESA_BUILD_TYPE ?= "release"
>         +MESON_BUILDTYPE = "${@bb.utils.contains('MESA_BUILD_TYPE', 'debug', 'debugoptimized', 'plain', d)}"
>         +
>          EXTRA_OEMESON = " \
>              -Dshared-glapi=true \
>              -Dgallium-opencl=disabled \
>
> This works perfectly, but it lacks the error checking and helpful messages of
> the previous attempts.
>
> Any thoughts on how I can have it all? (i.e. nice error checking and error
> messages with the variable tweakable from conf/local.conf?
>
> Best regards,
>         Trevor
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47628): https://lists.yoctoproject.org/g/yocto/message/47628
> Mute This Topic: https://lists.yoctoproject.org/mt/68144480/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
