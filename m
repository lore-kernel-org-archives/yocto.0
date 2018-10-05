Return-Path: <brgl@bgdev.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21FE8E006AF; Fri,  5 Oct 2018 05:59:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1860E00519
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 05:59:17 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id p4-v6so10591567iom.3
	for <yocto@yoctoproject.org>; Fri, 05 Oct 2018 05:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=llHsADIT77NGwTGbDbv5AOx2caFuw0zhURxz34o8o1g=;
	b=TplJlxZI18Kk+7dctdCFfvIu1lTAxb//th/x/TOtWbg6CEEFU6keoNzlYFCUiJADk/
	lUNEc/WTY2PPtLhpvlP9olTWYhXN277UrW3HAJzpNPHJ3FO+SnYLXzeOE94MVrbjUOlk
	ziVvENGYjYFke+r/atEMLVm1WhCAQGUc1vMdhqJ7eLBsWRRjTlfTvw77IaFI3uSAzSvD
	tFCMYZlsJUw2+BOK//dWqX1PCAu3zCAgmdGdLoecLSwDpX7mR8p17H5dNGua2RZZg2zT
	J7iurvLCcXwJDJCmGLZJq7BGgr/DzVYoSh4TKT8EnopQfmlbPhHV/D0wWI5Rgw8T44EN
	oIkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=llHsADIT77NGwTGbDbv5AOx2caFuw0zhURxz34o8o1g=;
	b=Oa5dsYJZY9/yIDqt5BW47cVf1Vp6Lrm51F4dXpT62Xq8Yp+fT5YZkrB04nQ0XeeiIw
	PIyTUdn9/DdC+N8bZrC6M1NZXAvLXLBC/ckozmmxRINdjlc1NhwvWrEmYJgrHJHSX1ne
	i+PVlwlbDUj/eE+/PzYScZcYZT8gN7V297lieXL4FSFAcRzZNMx3foADm0fNQTQgACdt
	nv5EQM0BujB20zeWFTpOqEERBAIHnO4S+SFj8S98eq6864hzwzmvzr7GlipF1D18COJR
	h2JWhUD/p5aKr8zCdKCraJzGxmfK7wZXdhODZ7LPHGImKFAIms/hbp4FjyHD21BO7Bea
	bAiw==
X-Gm-Message-State: ABuFfogymVg39s7tfo/SD5VfZZWc9acuuaTfyv+CJqeTlX7hiANf3Cr1
	RY8XEhV3WWwrgBS5caf016YltmuIX3HVngAVlZAWGmKX
X-Google-Smtp-Source: ACcGV637m45bYbh6r4VZk9gQ8IUH8Ddtj3Za130dAw74auuMlS+Y3SBwkwOuPJdlEQifxA03kizTF3Yu+hV7oDnEzTs=
X-Received: by 2002:a5e:aa02:: with SMTP id
	s2-v6mr7730223ioe.187.1538744357126; 
	Fri, 05 Oct 2018 05:59:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAMRc=Mec347nTORFRnFdHjB5We1Tu_5g78GWqpCj6aWZdNc9CQ@mail.gmail.com>
In-Reply-To: <CAMRc=Mec347nTORFRnFdHjB5We1Tu_5g78GWqpCj6aWZdNc9CQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 5 Oct 2018 14:59:06 +0200
Message-ID: <CAMRc=Md51NwYZ172Kh6Rr1mbhkb30Vyd+Lh241h_59c7zAU6dw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: native perl build wants to run target shared object
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Oct 2018 12:59:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

pon., 3 wrz 2018 o 17:59 Bartosz Golaszewski <brgl@bgdev.pl> napisa=C5=82(a=
):
>
> Hi,
>
> I'm trying to add a recipe for a new perl package: linux-inotify.
>
> It's fairly standard package available in cpan[1].
>
> I added the following DEPENDS and RDEPENDS:
>
> RDEPENDS_${PN} +=3D " \
>     perl \
>     perl-module-base \
> "
>
> DEPENDS +=3D " \
>     perl-native \
>     libmodule-build-perl-native \
> "
>
> But I'm getting the following build error:
>
> ERROR: linux-inotify-perl-0.05-r0 do_compile: oe_runmake failed
> ERROR: linux-inotify-perl-0.05-r0 do_compile: Function failed:
> do_compile (log file is located at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/tem=
p/log.do_compile.15693)
> ERROR: Logfile of failure stored in:
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/tem=
p/log.do_compile.15693
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 40 PASTHRU_INC=3D -O2 -pipe -g
> -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/<snip!>/build/tmp/work/aarch64-poky-linux/linux-ino=
tify-perl/0.05-r0=3D/usr/src/debug/linux-inotify-perl/0.05-r0
> -fdebug-prefix-map=3D/<snip!>/build/tmp/work/aarch64-poky-linux/linux-ino=
tify-perl/0.05-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/<snip!>/build/tmp/work/aarch64-poky-linux/linux-ino=
tify-perl/0.05-r0/recipe-sysroot-native=3D
>  LD=3Daarch64-poky-linux-gcc
> --sysroot=3D/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl=
/0.05-r0/recipe-sysroot
> | /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/r=
ecipe-sysroot-native/usr/bin/perl-native/perl
> Build --makefile_env_macros 1
> | Can't load '/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-pe=
rl/0.05-r0/recipe-sysroot/usr/lib/perl/5.24.1/auto/File/Glob/Glob.so'
> for module File::Glob:
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/rec=
ipe-sysroot/usr/lib/perl/5.24.1/auto/File/Glob/Glob.so:
> cannot open shared object file: No such file or directory at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/rec=
ipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/5.=
24.1/XSLoader.pm
> line 96.
> |  at /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-=
r0/recipe-sysroot/usr/lib/perl/5.24.1/File/Glob.pm
> line 68.
> | Compilation failed in require at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/rec=
ipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/ve=
ndor_perl/5.24.1/Module/Build/Base.pm
> line 1263.
> | BEGIN failed--compilation aborted at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/rec=
ipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/ve=
ndor_perl/5.24.1/Module/Build/Base.pm
> line 1263.
> | Compilation failed in require at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/rec=
ipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/ve=
ndor_perl/5.24.1/Module/Build.pm
> line 17.
> | BEGIN failed--compilation aborted at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/rec=
ipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/ve=
ndor_perl/5.24.1/Module/Build.pm
> line 17.
> | Compilation failed in require at Build line 47.
> | BEGIN failed--compilation aborted at Build line 47.
> | Makefile:33: recipe for target 'all' failed
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | WARNING: /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/=
0.05-r0/temp/run.do_compile.15693:1
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_compile (log file is located at
> /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/tem=
p/log.do_compile.15693)
> ERROR: Task (/<snip!>/meta-<snip!>/recipes-perl/linux-inotify/linux-inoti=
fy-perl_0.05.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3669 tasks of which 3667 didn't need to
> be rerun and 1 failed.
>
> Apparently the XSLoader module tries to use glob but instead of
> loading the host shared object it opens the target shared object and
> fails.
>
> I couldn't find any reason nor fix for that. Would appreciate any help.
>
> Best regards,
> Bartosz Golaszewski
>
> [1] https://metacpan.org/pod/Linux::Inotify

I still wasn't able to figure out the problem. Any help is appreciated.

Bart

