Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723FCE00348
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 15:58:35 -0800 (PST)
Received: by mail-ia0-f176.google.com with SMTP id y26so2367159iab.35
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 15:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=K/frAFCHC24REgDLtS2qtGBYiQ+qLJu6sYuQgAoo2ic=;
	b=b3hKW1/5P+SGvDnd/BOXcfk1mBy4liutK3DNkG6IH8NJ5GmyCzsjYVEMvG32bImrhf
	iPdU4UDWIzYRdJcJtPNWnDlhHldmTH4fVFhjLCc/ls/KMr7epA20c1+QVZjylH0QaNip
	Yk014yV0c2Rh+K2/zuvHFDxOw6xN9/KZ70bx1oYhNPToaF5+TDTsObGyBaIsT6vSOuPz
	wthaMPF0QNsRMtCbjKpGHagg00FR/HHOGizEWYKibyW7DHXwXpneJmEK6VoQ8lGWbMUc
	iFb2SKXvtSYH5Ve8vgidhm/w3sF5yntRQUhdXCbROEkSGHsuFcwhpoT/bosmxTsQHOb1
	4xCg==
Received: by 10.42.75.6 with SMTP id y6mr12527222icj.30.1355183914990; Mon, 10
	Dec 2012 15:58:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Mon, 10 Dec 2012 15:58:14 -0800 (PST)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Mon, 10 Dec 2012 18:58:14 -0500
Message-ID: <CANge7vXkVTnbwREHzXwP_f2ck-WP6BJQbUURGBHg=+eQsZjxQg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: packagegroup-core-boot failure for RTC-less system
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
X-List-Received-Date: Mon, 10 Dec 2012 23:58:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I have a MACHINE_FEATURES which *does not* include "rtc", as the platform I
am working on doesn't have an RTC.

The busybox bbappend I'm using (attached below) uses the provided
defconfig, but
disables the HWCLOCK features.

However, my build is failing due to packagegroup-core-boot being unable to
meet the busybox-hwclock dependency. Looking at this line from
packagegroup-core-boot.bb, it seems to me that busybox-hwlock shouldn't be
getting placed in the core-boot's RDEPENDS, given that my MACHINE_FEATURES does
not include "rtc":

    ${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", d)} \


Any thoughts or tips on debugging this? Perhaps there's somewhere I can stick a
print of MACHINE_FEATURES to verify that it is what I thought I set?


Thank you,
Jon


busybox_1.20.2.bbappend:
------------------------

PRINC="1"

do_prepare_config_prepend() {

    # Back up the defconfig just for later debugging, diffing, etc.
    mv ${WORKDIR}/defconfig ${WORKDIR}/defconfig.orig

    # We don't have an RTC on our platform, so disable hwclock features.
    sed -e 's/\(CONFIG_HWCLOCK\)=y/ #\1 is not set/g'
${WORKDIR}/defconfig > ${WORKDIR}/defconfig.tmp
    mv ${WORKDIR}/defconfig.tmp ${WORKDIR}/defconfig

    sed -e 's/\(CONFIG_FEATURE_HWCLOCK_.*\)=y/ #\1 is not set/g'
${WORKDIR}/defconfig > ${WORKDIR}/defconfig.tmp
    mv ${WORKDIR}/defconfig.tmp ${WORKDIR}/defconfig
}


Build Error:
-------------------------
  * satisfy_dependencies_for: Cannot satisfy the following
dependencies for packagegroup-core-boot:
  *    busybox-hwclock *
  * opkg_install_cmd: Cannot install package packagegroup-core-boot.

