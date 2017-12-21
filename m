Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 063FAE00D6D; Wed, 20 Dec 2017 19:50:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F15C4E00B5F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 19:50:35 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id 9so13435293wme.4
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 19:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Hy62CllpdUTC8T4D9GCutUK5uzbr10xPk8BGYaqk5vo=;
	b=hPZu9oIadjf6pqKkH2Buinmbo/0MknH5ENyj+O/oG5WKR9TahPwhg1RXObyGoUMVdr
	fwXXqmC/d74W+KRMm9+NKygM7PgzzBB+jW3ryWGx4HZXUSDKmettwda4FgBhTEFO7o1X
	xo9er6ehc8TBIQWcWnx2W+W7q1emg/yHvFJf1vJwfeUocLFL7OKsNQb01xLUPjEkld8G
	PTG+/shjzHdXQ2Q9zYodeNGkIFHT1yP+04IS8GPLc4u1uSELF4JAoyml5g0fiYFWKOiP
	GFbnLCeFEMVGfcIROaij/BbaZkbtp8RYVWPbJED2+PewbBw0rUfayY8A7ojvmQJnGWyo
	FzTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Hy62CllpdUTC8T4D9GCutUK5uzbr10xPk8BGYaqk5vo=;
	b=S4/G0jCsE9ST7DJPuDIs1WfgUDTfk6yT5wwRfSaKXr0wJFaiXtEkdJWMs3tWTBkBNz
	VjZJANWkhJBGs0Z5fJB6t6uBZB2L2abh8klx7SddS3Sr5MUWIdLX5xnnmcaAkS7B9/PE
	eHjYa7349gUKbjDKbPjtf+lzpYwnDWX4z2sLHai1vM9BzUWbKK+/Vr6JE3/0loV0YkFM
	VteOMcnv/tBdhWbz2V59cGnKbR6S7RhtUP9wZ4pHoz5qWaIaVzOPZkXGdS7HXcpWA3NW
	nWeB3xLlU/Xuuy8dZYasVcN2uRaDS59MKht+HaAEeSgGLMZZCkv+SsrTJi7qJ1eUDOo3
	NSug==
X-Gm-Message-State: AKGB3mJkLgO07xk6Ds47Cf0T5AtlvcrD4/ZTurP2xwzZvPweV5Wqi/EJ
	CC1G5bm8vv725Iuh3J8h+CgsgFFj04NMZBtMeqDo8Qwu
X-Google-Smtp-Source: ACJfBot2WIb5zf21AmzkHFwdyIGUNv59sS/eUYbs2gz9Sb5VbBcBYuZ/06ubC7KIgmVzgmiBB6puQ7Wi8jpWrnHf5F8=
X-Received: by 10.80.151.36 with SMTP id c33mr8345534edb.8.1513828234681; Wed,
	20 Dec 2017 19:50:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.132.6 with HTTP; Wed, 20 Dec 2017 19:50:34 -0800 (PST)
In-Reply-To: <CAJTo0LaTbUbDi_+X8=14v7ZdqE8OG4YSYCcUGXAcKMPoOBm0og@mail.gmail.com>
References: <CABLseQ6EPUVz6=UUQpycQfushowDLeKBYyCNeN+DXkehM-NzZQ@mail.gmail.com>
	<CAJTo0LaTbUbDi_+X8=14v7ZdqE8OG4YSYCcUGXAcKMPoOBm0og@mail.gmail.com>
From: Barry Grussling <barry@grussling.com>
Date: Wed, 20 Dec 2017 19:50:34 -0800
Message-ID: <CABLseQ462KdpDHWN56XYQbyC7dqSDD2DFSUf0_byWv1Y0OsgvQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Rocko and Circular Dependencies
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
X-List-Received-Date: Thu, 21 Dec 2017 03:50:37 -0000
Content-Type: text/plain; charset="UTF-8"

It does have a custom layer in it.  I am also using meta-linaro.  I have tried
to reproduce it in the stock configuration and have not been successful.

It isn't yet obvious to me what I am doing in my layer that is causing
the cirular reference in the base layers.  I will keep digging and see
what I can
learn.  I am not adding any custom tasks (add task) or anything like that.

I will work on adding my layer back in piece by piece and see if I can figure
out what the trigger criteria is.

On Wed, Dec 20, 2017 at 2:22 AM, Burton, Ross <ross.burton@intel.com> wrote:
> Nobody else has seen this as far as I'm aware, and the autobuilder doesn't
> see it.
>
> Is that a pure oe-core/bitbake or Poky, or do you have custom layers?  Can
> you replicate with a stock configuration?
>
> On 20 December 2017 at 03:02, Barry Grussling <barry@grussling.com> wrote:
>>
>> Hello all,
>>
>> I am trying to move one of my builds from Krogoth to Rocko.  I am
>> attempting to build
>> on 1c61ba0a3f bitbake: tinfoil: Ensure we clean up loggers.
>>
>> Generally, I can start the first build fine.  Unfortunately, some of
>> my code/recipes will usually fail
>> to build due to the new compilers.  When I re-run bitbake to continue
>> the build, most of
>> the time I experience a build failure of circular dependencies such as:
>>
>> Dependency loop #1 found:
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_package
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_packagedata', 'glibc_2.26.bb:do_packagedata',
>> 'rpm_git.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_install',
>> 'dpkg_1.18.24.bb:do_packagedata',
>> 'libtool-cross_2.4.6.bb:do_packagedata'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_packagedata
>> (dependent Tasks ['ncurses_6.0+20170715.bb:do_package'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_package
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_packagedata', 'perl_5.24.1.bb:do_packagedata',
>> 'glibc_2.26.bb:do_packagedata', 'rpm_git.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_packagedata',
>> 'bzip2_1.0.6.bb:do_packagedata', 'dpkg_1.18.24.bb:do_install',
>> 'zlib_1.2.11.bb:do_packagedata',
>> 'libtool-cross_2.4.6.bb:do_packagedata',
>> 'xz_5.2.3.bb:do_packagedata'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_packagedata
>> (dependent Tasks ['dpkg_1.18.24.bb:do_package'])
>>
>> Dependency loop #2 found:
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_package
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_packagedata', 'perl_5.24.1.bb:do_packagedata',
>> 'glibc_2.26.bb:do_packagedata', 'rpm_git.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_packagedata',
>> 'bzip2_1.0.6.bb:do_packagedata', 'dpkg_1.18.24.bb:do_install',
>> 'zlib_1.2.11.bb:do_packagedata',
>> 'libtool-cross_2.4.6.bb:do_packagedata',
>> 'xz_5.2.3.bb:do_packagedata'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_packagedata
>> (dependent Tasks ['dpkg_1.18.24.bb:do_package'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_package
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_packagedata', 'glibc_2.26.bb:do_packagedata',
>> 'rpm_git.bb:do_populate_sysroot', 'dpkg_1.18.24.bb:do_packagedata',
>> 'libtool-cross_2.4.6.bb:do_packagedata', 'bzip2_1.0.6.bb:do_install'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_packagedata
>> (dependent Tasks ['bzip2_1.0.6.bb:do_package'])
>>
>> Dependency loop #3 found:
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_compile
>> (dependent Tasks ['dpkg_1.18.24.bb:do_configure'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_install
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'dpkg_1.18.24.bb:do_compile'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_populate_sysroot
>> (dependent Tasks ['dpkg_1.18.24.bb:do_install',
>> 'binutils-cross_2.29.bb:do_populate_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_prepare_recipe_sysroot
>> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
>> 'glibc_2.26.bb:do_populate_sysroot', 'bzip2_1.0.6.bb:do_fetch',
>> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>> 'dpkg_1.18.24.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_populate_sysroot',
>> 'gnu-config_git.bb:do_populate_sysroot',
>> 'gcc-cross_7.2.bb:do_populate_sysroot',
>> 'automake_1.15.1.bb:do_populate_sysroot',
>> 'autoconf_2.69.bb:do_populate_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_configure
>> (dependent Tasks ['bzip2_1.0.6.bb:do_patch',
>> 'bzip2_1.0.6.bb:do_prepare_recipe_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_compile
>> (dependent Tasks ['bzip2_1.0.6.bb:do_configure'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_install
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'bzip2_1.0.6.bb:do_compile'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:do_populate_sysroot
>> (dependent Tasks ['binutils-cross_2.29.bb:do_populate_sysroot',
>> 'bzip2_1.0.6.bb:do_install'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_prepare_recipe_sysroot
>> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
>> 'bzip2_1.0.6.bb:do_populate_sysroot',
>> 'glibc_2.26.bb:do_populate_sysroot',
>> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>> 'dpkg_1.18.24.bb:do_fetch', 'perl_5.24.1.bb:do_populate_sysroot',
>> 'gettext_0.19.8.1.bb:do_populate_sysroot',
>> 'pkgconfig_git.bb:do_populate_sysroot',
>> 'perl-native_5.24.1.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_populate_sysroot',
>> 'xz_5.2.3.bb:do_populate_sysroot',
>> 'systemd-systemctl-native.bb:do_populate_sysroot',
>> 'gnu-config_git.bb:do_populate_sysroot',
>> 'zlib_1.2.11.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_populate_sysroot',
>> 'gcc-cross_7.2.bb:do_populate_sysroot',
>> 'automake_1.15.1.bb:do_populate_sysroot',
>> 'autoconf_2.69.bb:do_populate_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_configure
>> (dependent Tasks ['dpkg_1.18.24.bb:do_prepare_recipe_sysroot',
>> 'dpkg_1.18.24.bb:do_patch'])
>>
>> Dependency loop #4 found:
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_compile
>> (dependent Tasks ['ncurses_6.0+20170715.bb:do_configure'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_install
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_compile'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_populate_sysroot
>> (dependent Tasks ['binutils-cross_2.29.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_install'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_prepare_recipe_sysroot
>> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
>> 'bzip2_1.0.6.bb:do_populate_sysroot',
>> 'glibc_2.26.bb:do_populate_sysroot',
>> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>> 'dpkg_1.18.24.bb:do_fetch', 'perl_5.24.1.bb:do_populate_sysroot',
>> 'gettext_0.19.8.1.bb:do_populate_sysroot',
>> 'pkgconfig_git.bb:do_populate_sysroot',
>> 'perl-native_5.24.1.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_populate_sysroot',
>> 'xz_5.2.3.bb:do_populate_sysroot',
>> 'systemd-systemctl-native.bb:do_populate_sysroot',
>> 'gnu-config_git.bb:do_populate_sysroot',
>> 'zlib_1.2.11.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_populate_sysroot',
>> 'gcc-cross_7.2.bb:do_populate_sysroot',
>> 'automake_1.15.1.bb:do_populate_sysroot',
>> 'autoconf_2.69.bb:do_populate_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_configure
>> (dependent Tasks ['dpkg_1.18.24.bb:do_prepare_recipe_sysroot',
>> 'dpkg_1.18.24.bb:do_patch'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_compile
>> (dependent Tasks ['dpkg_1.18.24.bb:do_configure'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_install
>> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
>> 'dpkg_1.18.24.bb:do_compile'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:do_populate_sysroot
>> (dependent Tasks ['dpkg_1.18.24.bb:do_install',
>> 'binutils-cross_2.29.bb:do_populate_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_prepare_recipe_sysroot
>> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
>> 'glibc_2.26.bb:do_populate_sysroot',
>> 'pkgconfig_git.bb:do_populate_sysroot',
>> 'libtool-native_2.4.6.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_fetch',
>> 'dpkg_1.18.24.bb:do_populate_sysroot',
>> 'gcc-runtime_7.2.bb:do_populate_sysroot',
>> 'ncurses_6.0+20170715.bb:do_populate_sysroot',
>> 'gnu-config_git.bb:do_populate_sysroot',
>> 'gcc-cross_7.2.bb:do_populate_sysroot',
>> 'automake_1.15.1.bb:do_populate_sysroot',
>> 'autoconf_2.69.bb:do_populate_sysroot'])
>>   Task
>> /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:do_configure
>> (dependent Tasks ['ncurses_6.0+20170715.bb:do_prepare_recipe_sysroot',
>> 'ncurses_6.0+20170715.bb:do_patch'])
>>
>> After hitting this state, multiple re-invocations of the bitbake will
>> all fail with the same type of errors.  If I clean all state
>> and remove the tmp folder and start again, the build will usually work
>> (until I hit my next compilation issue).  Needless to say, this
>> gets old fast.  I am hitting this style of issue regardless of the
>> value of PACKAGE_CLASSES.
>>
>> I _never_ had issues with circular dependencies in krogoth.  Is anyone
>> else hitting this?  Any caveats to be aware of?
>>
>> Thanks,
>>
>> Barry
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

