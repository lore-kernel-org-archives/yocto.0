Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6034.1576082498888855387
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 08:41:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YLwAnZrU;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F9A5E010DD; Wed, 11 Dec 2019 08:41:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F290CE0078F
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 08:41:37 -0800 (PST)
Received: by mail-qv1-f48.google.com with SMTP id y8so6002181qvk.6
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 08:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jLr+cVfXWXdHaBh3FRmeZZn6bHtwNlFGIk+j2szrHgU=;
        b=YLwAnZrUlC+WWCo4mZB4kXE9ABam6g2lJ6iqU66yVf+IIjT/GDSiFOOGYPwqof5Z7Y
         OZRYws3TIQiH24D1ltBvOLoToxUUnj3ZuIxNWnQKBVuANRnbhZQD4vmiWWAXi6pmOitl
         CoEKqMZORQVqDFoKBVSFU8Cbl9ZX9pxPNAxWnuYOLWcMrms7btoAMX2wQXo3rUSCEn/J
         FOPPhOjGYm5YG1B1KI3dGWCPxqKWy36jh1bu2whwhrjxQeO+q5LKHH16qKtlo4J/qNsw
         GtUus7Xc24mvmmsQNGPPB1YjdO+cua0p+pAl7YXbMjZRZv7fRH+ruwVgv3n8pVXtH8T0
         wLuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jLr+cVfXWXdHaBh3FRmeZZn6bHtwNlFGIk+j2szrHgU=;
        b=kkKHZyD4d9k5oT7ZijeRkPGaifvFzTtMlnxPhw4NOZW2Kt0NMSJSGK12cV+RncWaOK
         RHztA+/+6+smr7XFCCSjyhpLyvvl9ON5QO+kuXRSk4BiAJr6PgChYiytBgaCZTAewHL0
         j0prf0uBM0Kf9NmfN09lfblcUrActEPRlzrS4CB06WoOEmlkXH+r/OIJnT6yuTZkrw41
         kgifE5+8o9lAiaIbyqR58RojlF98/UT1258D2ZDvCuCTt9aosv48xYAWjvPoCW/ZmkYr
         6rEyIjUG3rhyLjIhVea5GBUJNH+plQNqRSU+sGK93PTeG8fHkOg6SjFzHA/aG8mLVYZK
         nXIg==
X-Gm-Message-State: APjAAAXDVCayOJ7g8E72MNO+uB2/dujptDzPt45Ljsg/9fSBic04syEv
	o8ADqrd5v63UL7TRNa9D+lA=
X-Google-Smtp-Source: APXvYqyUXhkU1sKekVKAUnGcFN8EzwYc4sHRTGDW7IhjpGTwZfX5gXCAULEBGSysEg4eVxTobQLouA==
X-Received: by 2002:a05:6214:1051:: with SMTP id l17mr4039135qvr.156.1576082497073;
        Wed, 11 Dec 2019 08:41:37 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id x19sm1051973qtm.47.2019.12.11.08.41.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 08:41:36 -0800 (PST)
Date: Wed, 11 Dec 2019 11:41:32 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] variable and task/function timing
Message-ID: <20191211164132.GB13170@linux-uys3>
References: <20191211071807.GA32639@linux-uys3>
 <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
 <20191211153955.GA5676@linux-uys3>
 <CAP71WjyTvBT_XxUoZAVcdEzKZP0p1OKq62jF9zWfU7Y=pXfWEA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP71WjyTvBT_XxUoZAVcdEzKZP0p1OKq62jF9zWfU7Y=pXfWEA@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2019-12-11 @ 04:49:27 PM, Nicolas Dechesne wrote:
> right.. I was confused, I missed a few things in your email (well, it
> was really long ;).

lol
Apparently writing long emails is therapeutic for me.

> > I'm sure some will say "there's your solution, do it that way, problem
> > solved". However, I think "debug/release" are much more natural than
> > "plain/debugoptimized". I can't change the MESON_BUILDTYPE strings,
> > they have to be one of those two, so I introduced MESA_BUILD_TYPE as a
> > level-of-indirection above MESON_BUILDTYPE to allow the user to use the more
> > natural "debug/release" wording.
> >
> > So my real question is (and maybe I'm just yak shaving at this point): given
> > the row/column view of variable setting, how do we factor in the element of
> > time? For example, *when* do the variables referenced by anonymous python
> > functions and by tasks get set?
> >
> > This works (but doesn't allow me the space for nice error checking):
> >
> >         MESON_BUILDTYPE = "${@bb.utils.contains('MESA_BUILD_TYPE', 'debug', 'debugoptimized', 'plain', d)}"
> >
> > and this doesn't:
> >
> >         python do_check_build_type() {
> >             _buildtype = d.getVar('MESA_BUILD_TYPE')
> >             if _buildtype not in ['release', 'debug']:
> >                 bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
> >             if _buildtype == 'debug':
> >                 d.setVar('MESON_BUILDTYPE', 'debugoptimized')
> >                 bb.plain("setting meson build type to debugoptimized")
> >         }
> >         addtask check_build_type before do_configure
> 
> I missed the fact that you were using a task.
> You can probably call do_check_build_type() when setting
> MESON_BUILDTYPE instead of using a task, e.g. something like this:
> MESON_BUILDTYPE = "${@do_check_build_type(d.getVar('MESA_BUILD_TYPE'))}"

I did propose a 3rd way (in the original email) which does work which is very
similar to what you're suggesting:

	# set the build type to either 'release' or 'debug'
	# the upstream mesa sources actually build a debug release by default
	# but here we assume the user will want a release build by default
	MESA_BUILD_TYPE ?= "release"
	def check_buildtype(d):
	    _buildtype = d.getVar('MESA_BUILD_TYPE')
	    if _buildtype not in ['release', 'debug']:
		bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
	    if _buildtype == 'debug':
		#bb.plain("setting meson build type to debugoptimized")
		return 'debugoptimized'
	    return 'plain'
	MESON_BUILDTYPE = "${@check_buildtype(d)}"

The user experience is rather different though. Let's say the user sets the
following in conf/local.conf:

	MESA_BUILD_TYPE = "hello"

Using the "addtask" method (which doesn't work) produces a very nice error
message:

	$ bitbake mesa -c configure
	Loading cache: 100% |#########################################################################################################################| Time: 0:00:00
	Loaded 2257 entries from dependency cache.
	Parsing recipes: 100% |#######################################################################################################################| Time: 0:00:01
	Parsing of 1528 .bb files complete (1524 cached, 4 parsed). 2259 targets, 103 skipped, 0 masked, 0 errors.
	NOTE: Resolving any missing task queue dependencies

	Build Configuration:
	BB_VERSION           = "1.44.0"
	BUILD_SYS            = "x86_64-linux"
	NATIVELSBSTRING      = "opensuseleap-15.1"
	TARGET_SYS           = "arm-oe-linux-gnueabi"
	MACHINE              = "tinker-rk3288"
	DISTRO               = "nodistro"
	DISTRO_VERSION       = "nodistro.0"
	TUNE_FEATURES        = "arm armv7ve vfp thumb neon callconvention-hard"
	TARGET_FPU           = "hard"
	meta-rockchip        = "master:e8fd1f92ed59e0e71a7418779b912c5da342495c"
	meta-tweaks          = "master:b9184893949356a2da43bb2b5ec88dd573a5db0d"
	meta                 = "master:093a1971f2ae12e1f514598da984f268607e550b"
	meta-oe              = "master:851321744e17e51aeb822a8d88c3532dffdf1cef"

	Initialising tasks: 100% |####################################################################################################################| Time: 0:00:00
	Sstate summary: Wanted 0 Found 0 Missed 0 Current 77 (0% match, 100% complete)
	NOTE: Executing Tasks
	NOTE: Setscene tasks completed
	ERROR: mesa-2_19.2.4-r0 do_check_build_type: unknown build type (hello), please set to either 'release' or 'debug'
	ERROR: Logfile of failure stored in: /z/build-master/tinker-rk3288/build/tmp-glibc/work/armv7vet2hf-neon-oe-linux-gnueabi/mesa/2_19.2.4-r0/temp/log.do_check_build_type.12869
	ERROR: Task (/opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb:do_check_build_type) failed with exit code '1'
	NOTE: Tasks Summary: Attempted 606 tasks of which 603 didn't need to be rerun and 1 failed.

Using the method proposed above produces:

	$ bitbake mesa -c configure
	Loading cache: 100% |#########################################################################################################################| Time: 0:00:00
	Loaded 2257 entries from dependency cache.
	ERROR: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb: unknown build type (hello), please set to either 'release' or 'debug' ETA:  --:--:--
	WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb: Exception during build_dependencies for meson_do_configure
	WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb: Error during finalise of /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb
	ERROR: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb: unknown build type (hello), please set to either 'release' or 'debug'
	WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb: Exception during build_dependencies for meson_do_configure
	WARNING: /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb: Error during finalise of /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa_19.2.4.bb
	ERROR: ExpansionError during parsing /opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa-gl_19.2.4.bb
	Traceback (most recent call last):
	  File "Var <MESON_BUILDTYPE>", line 1, in <module>
	  File "/opt/oe/configs/z/build-master/tinker-rk3288/layers/openembedded-core/meta/recipes-graphics/mesa/mesa.inc", line 56, in check_buildtype(d=<bb.data_smart.DataSmart object at 0x7ffac8d0f4a8>):
		 if _buildtype not in ['release', 'debug']:
	    >        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
		 if _buildtype == 'debug':
	  File "/opt/oe/configs/z/build-master/tinker-rk3288/layers/bitbake/lib/bb/__init__.py", line 108, in fatal:
		 mainlogger.critical(''.join(args), extra=kwargs)
	    >    raise BBHandledException()

	bb.data_smart.ExpansionError: Failure expanding variable MESON_BUILDTYPE, expression was ${@check_buildtype(d)} which triggered exception BBHandledException:


	Summary: There were 4 WARNING messages shown.
	Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
