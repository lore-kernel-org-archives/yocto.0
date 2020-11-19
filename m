Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.6628.1605777399336134552
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 01:16:40 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4CcDZS3TjBz5tlS;
	Thu, 19 Nov 2020 10:16:32 +0100 (CET)
Date: Thu, 19 Nov 2020 10:16:31 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
Message-ID: <20201119091631.riqm2r2gtnou2cie@qschulz>
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 19, 2020 at 01:13:43PM +0530, NIKHIL PATIL wrote:
> Hi ,
>     I want to add binary in /usr/bin , for these i made own .bb file (
> obexpushtest.bb),      When i am compiling obexpushtest package separately

You're not compiling a package, you're compiling a recipe named
obexpushtest whose output is packages (one of which is named the same as
the recipe, hence the confusion).

> that time it is compiling fine  , but when i am adding obexpushtest in
> local.conf as a IMAGE_INSTALL , i am getting error.
> 

But here, you're adding a package into an image. Effectively, the first
and second commands you ran don't do the same thing.

> ## Error :-
> 
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-rootfs-repo
> Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19 AM
> UTC.
> No match for argument: obexpushtest
> Error: Unable to find a match
> 
> ## obexpushtest.bb file :-
> 
>     # file recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> SUMMARY = "tset_mount example"
> SECTION = "test_mount"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> 
> S = "${WORKDIR}"
> 
> SRC_URI += "file://obexpushd"
> 
> INSANE_SKIP_${PN} = "ldflags"
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> INHIBIT_PACKAGE_STRIP = "1"
> 

You should probably inherit bin_package but override do_install
(otherwise you'll have an issue with the do_install task coming from the
bin_package bbclass trying to pack your whole ${WORKDIR} (S) which
include way too many files you're not interested in).

> do_install_append () {

No need for _append since the following is the only thing your recipe
will do, so better just override do_install.

>         install -d ${D}/${bindir}
>         install -m 0644 ${WORKDIR}/obexpushd ${D}/${bindir}
>         cp ${WORKDIR}/obexpushd ${D}/${bindir}
> }
> 
> # NOTE: Use "=+" instead of "+=". Otherwise, the file is placed into the
> linux-firmware package.
> PACKAGES =+ "${PN}-example"
> FILES_${PN}-example = "/usr/bin/obexpushd"

Here's the issue, you put your file into the obexpushtest-example and
I'm pretty sure that your obexpushtest package is actually empty and by
default empty packages are removed, hence why the image recipe can't
include this package.

IMHO, no need for your PACKAGES and FILES variables as the default will
put your binary in the obexpushtest package, and since your recipe isn't
creating any other package (explicitly), I don't see the use for a new
package.

Quentin
