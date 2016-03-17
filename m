Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83AD1E00B9E; Wed, 16 Mar 2016 21:44:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99534E00B89
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 21:44:27 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id l68so99905869wml.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 21:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:references:to:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=RPLD3l4BqGMrqYZiZdkVU0Olrq6mzUhmmgTgzU59lhU=;
	b=YLlmKiw96g2+kEp6zlM+LZmGrS6JRdISOQVi0vLQifjOgBhzcdVJFWPhzZr8glwYOS
	HA/ZCkEVQMmQ9hYtfDxQlsPKYNpwG/9AHiJcITf9SLyAQ2U3u6XT4OPsVe3OEPvj7YNf
	Kqg+DFrjK3k/yGzBe+RvUfYSL3YCI2K/a3ae+LirB6vLSCCXyOK4eQrVGdM5g9az8vRg
	qbWRbCm/uBZLp0Qm2So3E3PELvNlTgwqjoklUslSNBngD38Tn4nOmXNp9GLn+iJOVa6P
	nMtPPz4GZ12mTrbZduCbmKDWi4QtCMKHICf1avvpfhgxTgZ6kCOqUeSDlF9laVQPEEH9
	iYMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:references:to:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=RPLD3l4BqGMrqYZiZdkVU0Olrq6mzUhmmgTgzU59lhU=;
	b=UO28+etYxF1n/jJ/fYSfUwmU0YPMwEO86QrRyT2P3HFhsGAbXWe6cV0UksDFIKTVzT
	R0/fc+MZ6iB9hWvIYFOQLI5d6rOfG5tB4llTvwPenNaZpenWd8NhZ4HMQZCi3eAnMTRw
	XAQrTsDj/+ivQqMLS+I/+P4auH5UzXOnz6B3RSoLQHChVqfW/MnyvOdc2fRRFQ5jm45x
	Npc6m+69j0VyO67+vfy1+uPa9+8NVHm1H8Jxt5/Mkq8cGb01iGR6dZcOF0KaCNcd95Mo
	M1RWbf5CJAsg5fpzD8C2tA4oYiPq+EFy9eMyKeXdynWclPhpOUZEmCdDxp5Fg3ojcM+P
	9iJQ==
X-Gm-Message-State: AD7BkJJKCbY0epQmXrWuTFhFwq4grh3MAr1Wm9YtoSFsax6bd/1yV+we1Fev/KyP8IB10Q==
X-Received: by 10.194.23.67 with SMTP id k3mr6977219wjf.177.1458189866520;
	Wed, 16 Mar 2016 21:44:26 -0700 (PDT)
Received: from [192.168.23.113]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101]) by smtp.googlemail.com with ESMTPSA id
	i5sm5785878wjx.15.2016.03.16.21.44.25 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 16 Mar 2016 21:44:25 -0700 (PDT)
References: <CAALGJZZwG1ifVf7J0WdvNyXWN81Ot2m3rWgSUhTX2Gueywx3fw@mail.gmail.com>
	<CA+chaQeG5B_i1W7Z4--x9K71ctacSbjw-x7M35PeDThqkq+CKQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
From: Christian Ege <k4230r6@gmail.com>
Message-ID: <56EA361B.9030600@gmail.com>
Date: Thu, 17 Mar 2016 05:44:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQeG5B_i1W7Z4--x9K71ctacSbjw-x7M35PeDThqkq+CKQ@mail.gmail.com>
Subject: Re: [master] ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot:
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
X-List-Received-Date: Thu, 17 Mar 2016 04:44:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,
On 16.03.2016 20:44, Martin Jansa wrote:
> Delete your TMPDIR and start again.
thx, this did the trick

Best,
Christian
> 
> On Wed, Mar 16, 2016 at 8:29 PM, Christian Ege <k4230r6@gmail.com
> <mailto:k4230r6@gmail.com>> wrote:
> 
>     Hi,
> 
>     with the latest master from today I ran in some trouble:
> 
>     Build Configuration:
>     BB_VERSION        = "1.29.0"
>     BUILD_SYS         = "x86_64-linux"
>     NATIVELSBSTRING   = "universal"
>     TARGET_SYS        = "arm-poky-linux-gnueabi"
>     MACHINE           = "udooneo"
>     DISTRO            = "poky"
>     DISTRO_VERSION    = "2.0+snapshot-20160316"
>     TUNE_FEATURES     = "arm armv7a vfp thumb neon
>     callconvention-hard       cortexa9"
>     TARGET_FPU        = "hard"
>     meta
>     meta-poky         = "HEAD:8debfea81e69d038bd2d56314b272cb74f5582ed"
>     meta-oe
>     meta-multimedia
>     meta-python
>     meta-networking   = "HEAD:35d91f32c462ad5889cb3229766d6d4ed2c80a4c"
>     meta-qt5          =
>     "master-5.6:b2d5376b41625521b9a081fe800345fff33d8dd6"
>     meta-ruby         = "HEAD:35d91f32c462ad5889cb3229766d6d4ed2c80a4c"
>     meta-fsl-arm      = "HEAD:37564e6801ce82fad979b4f57151c676d80e8a6c"
>     meta-fsl-arm-extra = "HEAD:36a638abe1238bdc8e0ef1242dd7bfab59cc48d7"
>     meta-fsl-demos    = "HEAD:6b779b2cb0d231063fc035a9a0871d722366c329"
>     meta-udoo         = "master:1b38bcec5057b93017a00f107e0738ce64ade66f"
>     meta-swupdate     = "master:44516e81a494afef3be7e3f249713fdec6e6e32a"
> 
>     NOTE: Preparing RunQueue
>     NOTE: Executing SetScene Tasks
>     NOTE: Executing RunQueue Tasks
>     ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: The recipe
>     gobject-introspection is trying to install files into a shared area
>     when those files already exist. Those files and their manifest
>     location are:
>      
>      /data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/share/gobject-introspection-1.0/Makefile.introspection
>      Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot
>      /data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/share/aclocal/introspection.m4
>      Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot
>     Please verify which recipe should provide the above files.
>     The build has stopped as continuing in this scenario WILL break
>     things, if not now, possibly in the future (we've seen builds fail
>     several months later). If the system knew how to recover from this
>     automatically it would however there are several different scenarios
>     which can result in this and we don't know which one this is. It may
>     be you have switched providers of something like virtual/kernel (e.g.
>     from linux-yocto to linux-yocto-dev), in that case you need to execute
>     the clean task for both recipes and it will resolve this error. It may
>     be you changed DISTRO_FEATURES from systemd to udev or vice versa.
>     Cleaning those recipes should again resolve this error however
>     switching DISTRO_FEATURES on an existing build directory is not
>     supported, you should really clean out tmp and rebuild (reusing sstate
>     should be safe). It could be the overlapping files detected are
>     harmless in which case adding them to SSTATE_DUPWHITELIST may be the
>     correct solution. It could also be your build is including two
>     different conflicting versions of things (e.g. bluez 4 and bluez 5 and
>     the correct solution for that would be to resolve the conflict. If in
>     doubt, please ask on the mailing list, sharing the error and filelist
>     above.
>     ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: If the
>     above message is too much, the simpler version is you're advised to
>     wipe out tmp and rebuild (reusing sstate is fine). That will likely
>     fix things in most (but not all) cases.
>     ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: Function
>     failed: sstate_task_postfunc
>     ERROR: Logfile of failure stored in:
>     /data/FSL/fsl-community-bsp-master/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gobject-introspection/1.46.0-r0/temp/log.do_populate_sysroot.16494
>     ERROR: Task 1802
>     (/data/FSL/fsl-community-bsp-master/sources/poky/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.46.0.bb
>     <http://gobject-introspection_1.46.0.bb>,
>     do_populate_sysroot) failed with exit code '1'
>     NOTE: Tasks Summary: Attempted 4772 tasks of which 4742 didn't need to
>     be rerun and 1 failed.
>     No currently running tasks (4772 of 5254)
> 
> 
>     Any help is appreciated.
> 
>     Best,
>     Christian
> 
>     --
>     http://ch.ege.io/
> 
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 


