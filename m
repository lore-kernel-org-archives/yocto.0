Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B1F8E00D7F; Tue, 19 Dec 2017 19:03:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 291FCE00C0F
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 19:02:58 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id f140so7098878wmd.2
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 19:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=fT43yPGjDIYCdZg9gnDEGCqqUwHdGl6rF1lvwyhibTw=;
	b=lmNpgvWMYAC+twFwQ+Bx3Up1t5d/kOfOsGHXGTZTvofajs6jPEWJQ8bwVZKcCegieO
	naYNQq3ZyrRQJRteIzz3Nza2ZceiNhC9pwDtmZki5TdRLo8LqFJVCEvvJWwW/Tx9LCo6
	ffIQ19Dkd9Rxw7NB7XwyqwRwj1vzLxnB7fQ66R7coR11gA2mXGJOcLMbS8opUFHNY9/7
	IDeeiEMzp2IqOZIO3ri/YH61GDSBHz1f2jFLfAsZZkv2A5n0XNtAq7wN5cQ0tTxvUGIQ
	jU830k8lX+5o7QAHyYWaMksm0UC/Zrf5OnVt0mI2IO4ly49vocCeguqyWSDHdYDS40gO
	OIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fT43yPGjDIYCdZg9gnDEGCqqUwHdGl6rF1lvwyhibTw=;
	b=b6bkcOwSZnpDxHRKVaKt0zHCCTDLpxaI9eH2drQyceBxzonunjbpG6kb12CYXPPf/5
	9YURgg5+cfafBb+TMcYhtqWGZURT9r8oGV/Rq5UYt8P2Ttaqk5zt1FyncD+qUqKdhGHY
	kAMqkprTCicX5YdQhwF3EZ8rB4UiV25K4F+UEbnpwYEKVV+aIJQiWbmAWKXi/IaADGNC
	Z5mthg35+C7pEfKuBHPYquS+BbBlNWJU39L2RuEEVKlc3KLjCu92e4QmgVdkfAcX5zf+
	qx8Jcibt2CvqqZ6ZIo1MqmZedOjJsc3XRrLlfM8QHjMKVW/NwFNO4VYegH2DSYuph2jI
	MOEg==
X-Gm-Message-State: AKGB3mLS3CLKntt2EOnUCg+2dOwLqsHyq8fK9/44nU3LU/II1+eYlqg7
	c503ZKs7kAa3HTRxP+A8Pus23r7DXOka56wpb6dZqn7hWFA=
X-Google-Smtp-Source: ACJfBoutDr4f/2oopS0lsS45GL9gB5Z2CpA+p0nOOhxwN57UXOSzVX3UJoZ2C2pcGsGmGZrS8l99BFReMWxhvWzibLE=
X-Received: by 10.80.204.152 with SMTP id q24mr3348676edi.108.1513738977661;
	Tue, 19 Dec 2017 19:02:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.132.6 with HTTP; Tue, 19 Dec 2017 19:02:57 -0800 (PST)
From: Barry Grussling <barry@grussling.com>
Date: Tue, 19 Dec 2017 19:02:57 -0800
Message-ID: <CABLseQ6EPUVz6=UUQpycQfushowDLeKBYyCNeN+DXkehM-NzZQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Rocko and Circular Dependencies
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
X-List-Received-Date: Wed, 20 Dec 2017 03:03:00 -0000
Content-Type: text/plain; charset="UTF-8"

Hello all,

I am trying to move one of my builds from Krogoth to Rocko.  I am
attempting to build
on 1c61ba0a3f bitbake: tinfoil: Ensure we clean up loggers.

Generally, I can start the first build fine.  Unfortunately, some of
my code/recipes will usually fail
to build due to the new compilers.  When I re-run bitbake to continue
the build, most of
the time I experience a build failure of circular dependencies such as:

Dependency loop #1 found:
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_package
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_packagedata', 'glibc_2.26.bb:do_packagedata',
'rpm_git.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_install',
'dpkg_1.18.24.bb:do_packagedata',
'libtool-cross_2.4.6.bb:do_packagedata'])
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_packagedata
(dependent Tasks ['ncurses_6.0+20170715.bb:do_package'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_package
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_packagedata', 'perl_5.24.1.bb:do_packagedata',
'glibc_2.26.bb:do_packagedata', 'rpm_git.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_packagedata',
'bzip2_1.0.6.bb:do_packagedata', 'dpkg_1.18.24.bb:do_install',
'zlib_1.2.11.bb:do_packagedata',
'libtool-cross_2.4.6.bb:do_packagedata',
'xz_5.2.3.bb:do_packagedata'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_packagedata
(dependent Tasks ['dpkg_1.18.24.bb:do_package'])

Dependency loop #2 found:
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_package
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_packagedata', 'perl_5.24.1.bb:do_packagedata',
'glibc_2.26.bb:do_packagedata', 'rpm_git.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_packagedata',
'bzip2_1.0.6.bb:do_packagedata', 'dpkg_1.18.24.bb:do_install',
'zlib_1.2.11.bb:do_packagedata',
'libtool-cross_2.4.6.bb:do_packagedata',
'xz_5.2.3.bb:do_packagedata'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_packagedata
(dependent Tasks ['dpkg_1.18.24.bb:do_package'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_package
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_packagedata', 'glibc_2.26.bb:do_packagedata',
'rpm_git.bb:do_populate_sysroot', 'dpkg_1.18.24.bb:do_packagedata',
'libtool-cross_2.4.6.bb:do_packagedata', 'bzip2_1.0.6.bb:do_install'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_packagedata
(dependent Tasks ['bzip2_1.0.6.bb:do_package'])

Dependency loop #3 found:
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_compile
(dependent Tasks ['dpkg_1.18.24.bb:do_configure'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_install
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'dpkg_1.18.24.bb:do_compile'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_populate_sysroot
(dependent Tasks ['dpkg_1.18.24.bb:do_install',
'binutils-cross_2.29.bb:do_populate_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_prepare_recipe_sysroot
(dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
'glibc_2.26.bb:do_populate_sysroot', 'bzip2_1.0.6.bb:do_fetch',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'dpkg_1.18.24.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'gcc-cross_7.2.bb:do_populate_sysroot',
'automake_1.15.1.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_configure
(dependent Tasks ['bzip2_1.0.6.bb:do_patch',
'bzip2_1.0.6.bb:do_prepare_recipe_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_compile
(dependent Tasks ['bzip2_1.0.6.bb:do_configure'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_install
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'bzip2_1.0.6.bb:do_compile'])
  Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.29.bb:do_populate_sysroot',
'bzip2_1.0.6.bb:do_install'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_prepare_recipe_sysroot
(dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
'bzip2_1.0.6.bb:do_populate_sysroot',
'glibc_2.26.bb:do_populate_sysroot',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'dpkg_1.18.24.bb:do_fetch', 'perl_5.24.1.bb:do_populate_sysroot',
'gettext_0.19.8.1.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot',
'perl-native_5.24.1.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_populate_sysroot',
'xz_5.2.3.bb:do_populate_sysroot',
'systemd-systemctl-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_populate_sysroot',
'gcc-cross_7.2.bb:do_populate_sysroot',
'automake_1.15.1.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_configure
(dependent Tasks ['dpkg_1.18.24.bb:do_prepare_recipe_sysroot',
'dpkg_1.18.24.bb:do_patch'])

Dependency loop #4 found:
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_compile
(dependent Tasks ['ncurses_6.0+20170715.bb:do_configure'])
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_install
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_compile'])
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_populate_sysroot
(dependent Tasks ['binutils-cross_2.29.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_install'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_prepare_recipe_sysroot
(dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
'bzip2_1.0.6.bb:do_populate_sysroot',
'glibc_2.26.bb:do_populate_sysroot',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'dpkg_1.18.24.bb:do_fetch', 'perl_5.24.1.bb:do_populate_sysroot',
'gettext_0.19.8.1.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot',
'perl-native_5.24.1.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_populate_sysroot',
'xz_5.2.3.bb:do_populate_sysroot',
'systemd-systemctl-native.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'zlib_1.2.11.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_populate_sysroot',
'gcc-cross_7.2.bb:do_populate_sysroot',
'automake_1.15.1.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_configure
(dependent Tasks ['dpkg_1.18.24.bb:do_prepare_recipe_sysroot',
'dpkg_1.18.24.bb:do_patch'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_compile
(dependent Tasks ['dpkg_1.18.24.bb:do_configure'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_install
(dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
'dpkg_1.18.24.bb:do_compile'])
  Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_populate_sysroot
(dependent Tasks ['dpkg_1.18.24.bb:do_install',
'binutils-cross_2.29.bb:do_populate_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_prepare_recipe_sysroot
(dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
'glibc_2.26.bb:do_populate_sysroot',
'pkgconfig_git.bb:do_populate_sysroot',
'libtool-native_2.4.6.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_fetch',
'dpkg_1.18.24.bb:do_populate_sysroot',
'gcc-runtime_7.2.bb:do_populate_sysroot',
'ncurses_6.0+20170715.bb:do_populate_sysroot',
'gnu-config_git.bb:do_populate_sysroot',
'gcc-cross_7.2.bb:do_populate_sysroot',
'automake_1.15.1.bb:do_populate_sysroot',
'autoconf_2.69.bb:do_populate_sysroot'])
  Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_configure
(dependent Tasks ['ncurses_6.0+20170715.bb:do_prepare_recipe_sysroot',
'ncurses_6.0+20170715.bb:do_patch'])

After hitting this state, multiple re-invocations of the bitbake will
all fail with the same type of errors.  If I clean all state
and remove the tmp folder and start again, the build will usually work
(until I hit my next compilation issue).  Needless to say, this
gets old fast.  I am hitting this style of issue regardless of the
value of PACKAGE_CLASSES.

I _never_ had issues with circular dependencies in krogoth.  Is anyone
else hitting this?  Any caveats to be aware of?

Thanks,

Barry

