Return-Path: <bogdan.a.marinescu@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29EE1E0027D
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 01:43:19 -0700 (PDT)
Received: from mail-vc0-f180.google.com ([209.85.220.180])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 16 Jul 2012 01:43:18 -0700
Received: by vcbfw7 with SMTP id fw7so670345vcb.25
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 01:43:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=x0DhlupP1H+8XCHnc4zWFU9zg8jozxBHBfZM8tGnYDQ=;
	b=gS4gzM9mBQnP1jPFeqi3lQCnHQVxWv0jIIu7oEEtt+BZhiNUDiVjLWuPMRszPIeOMS
	tPSoKDKIVnKH0pOON99kKOnnLaYM5/hb2BxcddwiJPuTf/zlB7QxoxYOxMBQe4AUtZ03
	HAElXpc1b2x5TH9NvtoKRvBmp+P5IIYNWcPEjoQ8N9PtEkzZ4+j9R5/SIdchW+8f7M6a
	M7HxtcoT8dF0CcW3h9wRAfnJJr2HHoiLoCHtHMavz4Y0Dfc0gvMKj1qo/LEHZSOEVTPF
	w6yfvyUU3DTy7gkuTlNqpY6g0HyXUvEVAimFtBdgRwjOFUTpLcUY+KWIGxCZm6QfXGzn
	i0+Q==
Received: by 10.52.69.83 with SMTP id c19mr4213327vdu.79.1342428197220; Mon,
	16 Jul 2012 01:43:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.34.208 with HTTP; Mon, 16 Jul 2012 01:42:56 -0700 (PDT)
From: "Marinescu, Bogdan A" <bogdan.a.marinescu@intel.com>
Date: Mon, 16 Jul 2012 11:42:56 +0300
Message-ID: <CAMZjud1Xnt2AnntWrJRCLjV2E-AAFpVMCdZ7CryV=m9SqDrcSA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkIs3Ws19+45kbZIuejWW2HrulPGa177PwaLYT9LSYQbQZC3D8sjrFacFoY0CXNeZe1EHmL
Subject: Multilib build problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Jul 2012 08:43:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

With a recent poky tree (updated on 16.07.2012) I'm unable to make a
multilib build. I added these lines to my conf/local.conf:

require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

With this configuration, I get an error when I try to build
lib32-core-image-sato-sdk:

/poky/build [] $ bitbake lib32-core-image-sato-sdk
Loading cache: 100%
|###############################################################################################################################################################################|
ETA:  00:00:00
Loaded 1882 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "x86_64"
TARGET_OS         = "linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20120716"
TUNE_FEATURES     = "m64"
TARGET_FPU        = ""
meta
meta-yocto        = "master:eb0cb7e8234f5d2e5623406e9660be91cf52f65e"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
ERROR: Task do_package_setscene depends upon non-existent task
/poky/poky/meta/recipes-core/base-passwd/base-passwd_3.5.24.bb:do_populate_sysroot_setscene

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

'bitbake core-image-sato-sdk' works with the same configuration.
Does anybody have any hints for fixing this issue?

Thanks,
Bogdan

