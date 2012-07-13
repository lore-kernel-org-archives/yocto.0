Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 923E2E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 12:44:42 -0700 (PDT)
Received: by wgbgn7 with SMTP id gn7so1638972wgb.11
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 12:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5WMDCJze9igYPnu+Ik+Y+FH95Q5DbTHG799idYDUWFM=;
	b=jrILzUrMNTd0iG7K8lgcXrcEGuM0ppQ0L6u9efZmypDMURjYNfvcA7H9s7sAQGGKq4
	Y0qGJDJwLfhNI0hbf9ftLfeFaekhvAnqJBcbutEI8vK07CSG7btp2uf9yBICv+SkDxT3
	/nGxhIBoxawQRplM3dEmRXBt8zw+aBYBbtjltzP7sxCVXpRZD9PeJBYaB8rUQtvIBc1p
	Pk6Ag/GXlnGwDwY+AbtgC/zHqseItXybaP8f3jKh+kRmyvQX7j8iFknUxts24j3njyTz
	Q9XtwQg9/nLn3VOyUllUsLA0ObVZigqGEFpHvfJKr77/v+PYpELMRyQ5c9q5eNGuQsFw
	wEDg==
MIME-Version: 1.0
Received: by 10.216.61.77 with SMTP id v55mr1231370wec.160.1342208681137; Fri,
	13 Jul 2012 12:44:41 -0700 (PDT)
Received: by 10.180.109.162 with HTTP; Fri, 13 Jul 2012 12:44:41 -0700 (PDT)
Date: Fri, 13 Jul 2012 14:44:41 -0500
Message-ID: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: sysroot / external toolchain
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
X-List-Received-Date: Fri, 13 Jul 2012 19:44:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm using an external toolchain for my project.  What is the proper
way to include my external toolchain libc files in the sysroot?

Currently I have

TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_HOST}"

and

EXTERNAL_TOOLCHAIN_SYSROOT_CMD = "${TARGET_PREFIX}gcc
${TARGET_CC_ARCH} -print-sysroot"
EXTERNAL_TOOLCHAIN_SYSROOT ??= "${@exttc_run(d,
EXTERNAL_TOOLCHAIN_SYSROOT_CMD)}"

which resolves to
/opt/armada-sdk-5.0-64k/armv7-marvell-linux-gnueabi-softfp/arm-marvell-linux-gnueabi/libc/

I also have a recipe for my external toolchain which includes the following:

do_install() {
        # Use optimized files if available
        sysroot="${EXTERNAL_TOOLCHAIN_SYSROOT}"
}

The EXTERNAL_TOOLCHAIN_SYSROOT doesn't seem to have any effect.  My
libc header files are not visible during compilation. It looks like I
may have to copy them to the staging dir or setup some symlinks.  Is
this the right approach?

Thanks

