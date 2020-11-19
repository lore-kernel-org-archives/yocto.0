Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web10.13496.1605810500880114784
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:28:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=l130D/T9;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 17:56:52 +0000
X-Sender: yocto@lists.yoctoproject.org
X-Receiver: nikhilvp29@gmail.com
X-Receiver: yocto@lists.yoctoproject.org
x-endofinjectedxheaders: 6460
X-Sender: bounce+53643+51430+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 7022
X-Received: by 127.0.0.2 with SMTP id BkrQYY3619394xJk5VsJJwgn; Thu, 19 Nov 2020 01:16:47 -0800
X-Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.6628.1605777399336134552
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 01:16:40 -0800
X-Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4CcDZS3TjBz5tlS;
	Thu, 19 Nov 2020 10:16:32 +0100 (CET)
Date: Thu, 19 Nov 2020 10:16:31 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
X-OldMsgId: <20201119091631.riqm2r2gtnou2cie@qschulz>
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: TAfcBnzu9OOTqjHnxtQ7nou0x3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605777407;
 bh=Yx4xR1KaO7ud/jwHhKjcJuyRJJ+BZ5IP3gW5RSS+h8w=;
 h=Cc:Content-Type:Date:From:Subject:To;
 b=l130D/T9USoZWyCOWHUOErRBJ7+p0pRXJaMVm5fS//rLt+86XJN1z+BAl8y90odFsKk
 NhgbAp5f0hhGw0hFeOMxZ9cYW+qI5+LtxyTqggVVXiClLgTYyFNtEcwk0lpgdNbYnmBWs
 l1f9/tan1dgPrfySYkvRmTU5hsECBUEYf3A=
Return-Path: bounce+53643+51430+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
X-OldMsgId: <fbc3263e38574b7baec81ba7faafd684@Exchange.sewerin.de>
Message-ID: <8b82fb17486e4c86b614dcb24d7c377a@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="VTvduVBkLdAAEUR0mLgt"

--VTvduVBkLdAAEUR0mLgt
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




--VTvduVBkLdAAEUR0mLgt--
