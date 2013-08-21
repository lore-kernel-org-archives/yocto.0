Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0830E00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 02:25:55 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pb11so116508veb.25
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 02:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YnEB/Y7PoU/jpM7W2W2/ovfabwlT2HrDq6VIRsosCis=;
	b=SP5+8bck/QRnW9LOD9TqcrDzwX00bRrKsxuJHbLdC6GhdyriqI/sIIuVY6GHOs4SZ9
	8VfNTk71qCH37FOuUYW+aD+HhdwoESKTqcOd+KKaf3p6NcL+UD7qMsWsEs2sMCZNFaII
	yXD45NGcHARBDdLah8IxXUDDH/hREjUjqTCeoyNtQGw9YNnrfC4uqmFRfA48BFH12NpR
	A4Ecoft5zwLY+W1iVEyuCD7MIqqg1FI2YRWQeMAwRujP0zqwLXRu90q9fDenlZG0hhTa
	6GWWDzlL1gqSs0Io35WXqRGpLJT8Uq5kMXRuC9EDT0vZ+UmfsU6Kb/edZ7d56XizdEdg
	pzvA==
X-Gm-Message-State: ALoCoQnP2+ApncYvQibfVvs/F0rcbeHVUyK8EByGlB7SWhFsBLIayqJI6CwJPyN88TXO1yxxHghy
X-Received: by 10.58.208.130 with SMTP id me2mr5578039vec.13.1377077154602;
	Wed, 21 Aug 2013 02:25:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 21 Aug 2013 02:25:34 -0700 (PDT)
In-Reply-To: <CAPhnLPC25vhrG=OObycpyWaksEqAsT9E26Y0FWvYLpLeqYg2VA@mail.gmail.com>
References: <CAPhnLPC25vhrG=OObycpyWaksEqAsT9E26Y0FWvYLpLeqYg2VA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Aug 2013 10:25:34 +0100
Message-ID: <CAJTo0LbCEEn3fNNUwWD+aJJ-VMA6vUgcqS3EkceGbYPH586a8g@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cleaning up poky-contrib
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
X-List-Received-Date: Wed, 21 Aug 2013 09:25:59 -0000
Content-Type: multipart/alternative; boundary=047d7bdc192ca1533404e471c2e5

--047d7bdc192ca1533404e471c2e5
Content-Type: text/plain; charset=UTF-8

On 20 August 2013 21:55, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com>wrote:

> If you have left over branches hanging out in poky-contrib that are no
> longer needed, could you take a few moments this week and delete them?
>  Poky-contrib is taking a lot longer than necessary to pull down and
> clean up is long overdue. Thanks!
>

For what it's worth, here's a list of poky-contrib branches that are older
than 3 months. Name and shame!

2009-08-27 16:53:26 -0500 (4 years ago)  contrib/mturquette/zoom2
2009-11-20 10:36:19 +0100 (3 years, 9 months ago)
 contrib/esben/purple-powerpc
2009-12-16 10:33:27 +0100 (3 years, 8 months ago)
 contrib/esben/master/powerpc
2010-07-21 13:42:49 -0400 (3 years, 1 month ago)  contrib/jdike/fixes
2010-08-20 23:41:11 -0400 (3 years ago)  contrib/jbj/rpm
2010-09-03 11:39:46 -0600 (3 years ago)  contrib/polk/siteconfig
2010-09-09 17:49:11 +0800 (2 years, 11 months ago)  contrib/xf/distro
2010-12-07 23:50:05 -0500 (2 years, 8 months ago)  contrib/kernel-dev
2010-12-11 14:34:38 -0800 (2 years, 8 months ago)
 contrib/nitin/rpm_failure_with_autoconf_upgrade
2010-12-16 13:00:55 -0800 (2 years, 8 months ago)  contrib/srifenbark/kernel
2010-12-17 19:54:01 -0800 (2 years, 8 months ago)  contrib/builds/milestone
2010-12-20 07:41:03 -0800 (2 years, 8 months ago)
 contrib/builds/milestone_nitin
2010-12-20 15:01:57 -0800 (2 years, 8 months ago)  contrib/kraj/gcc-update
2011-01-04 03:41:55 -0800 (2 years, 8 months ago)
 contrib/nitin/perl-5.12.2_master
2011-01-04 10:25:39 -0600 (2 years, 8 months ago)  contrib/mhatle/initenv
2011-01-05 10:23:07 -0800 (2 years, 8 months ago)  contrib/nitin/perl-5.12.2
2011-01-06 04:25:40 -0800 (2 years, 7 months ago)
 contrib/nitin/perl-5.12.2_rebased_to_master
2011-01-14 15:45:51 -0800 (2 years, 7 months ago)  contrib/jzhang/gmae
2011-01-18 16:45:31 -0800 (2 years, 7 months ago)
 contrib/jzhang/bitbake_i686
2011-01-21 09:53:53 -0800 (2 years, 7 months ago)
 contrib/nitin/dso_linking_change
2011-01-25 10:52:31 -0500 (2 years, 7 months ago)
 contrib/zedd/kernel-stable
2011-01-31 12:03:54 -0800 (2 years, 7 months ago)
 contrib/nitin/khem_gcc_nitin
2011-02-05 03:34:42 -0800 (2 years, 7 months ago)
 contrib/nitin/gcc-4.5.2_new
2011-02-08 10:07:14 -0800 (2 years, 6 months ago)  contrib/nitin/mklibs
2011-02-08 11:48:20 -0800 (2 years, 6 months ago)  contrib/jzhang/i686
2011-02-08 23:10:13 -0800 (2 years, 6 months ago)  contrib/jzhang/adt-repo
2011-02-14 16:33:58 -0800 (2 years, 6 months ago)  contrib/nitin/gcc-4.5.2
2011-02-17 16:11:05 -0800 (2 years, 6 months ago)
 contrib/eflanagan/meta-hamradio
2011-02-24 12:43:00 -0600 (2 years, 6 months ago)  contrib/mhatle/qemu
2011-03-01 06:46:23 -0800 (2 years, 6 months ago)  contrib/nitin/misc1
2011-03-03 10:03:41 -0600 (2 years, 6 months ago)  contrib/srifenbark/docs
2011-03-16 09:43:00 -0700 (2 years, 5 months ago)
 contrib/dvhart/bernard/modules
2011-03-16 20:18:55 -0700 (2 years, 5 months ago)
 contrib/dvhart/bernard/n450
2011-03-17 09:58:35 -0500 (2 years, 5 months ago)
 contrib/mhatle/qemu-workaround
2011-03-17 13:42:46 -0500 (2 years, 5 months ago)
 contrib/aalonso/prebuilt-sdk
2011-03-18 10:28:08 -0700 (2 years, 5 months ago)
 contrib/dvhart/bernard/base
2011-03-18 10:54:27 -0600 (2 years, 5 months ago)  contrib/poky-work
2011-03-21 15:57:20 -0500 (2 years, 5 months ago)
 contrib/meta-intel-sugarbay_gfx
2011-03-28 17:26:05 -0500 (2 years, 5 months ago)  contrib/srifenbark/test
2011-03-31 13:41:51 -0500 (2 years, 5 months ago)
 contrib/srifenbark/bsp-work
2011-04-04 05:51:57 -0700 (2 years, 5 months ago)  contrib/nitin/bug780
2011-04-04 10:15:17 -0700 (2 years, 5 months ago)
 contrib/eflanagan/meta-intel
2011-04-08 18:11:05 -0500 (2 years, 4 months ago)
 contrib/aalonso/xilinx-microblaze
2011-04-11 19:11:50 +0100 (2 years, 4 months ago)
 contrib/paule/mm-demo-fixes
2011-04-14 11:43:36 -0500 (2 years, 4 months ago)
 contrib/srifenbark/qs-work
2011-04-14 16:22:05 +0100 (2 years, 4 months ago)  contrib/paule/ipxe
2011-04-15 07:33:49 -0500 (2 years, 4 months ago)
 contrib/srifenbark/adt-work
2011-04-15 07:57:12 -0500 (2 years, 4 months ago)
 contrib/srifenbark/kernel-work
2011-04-19 16:58:57 -0700 (2 years, 4 months ago)  contrib/dvhart/bernard/rt
2011-04-20 16:24:13 +0100 (2 years, 4 months ago)
 contrib/paule/meta-intel-ipxe
2011-04-21 22:14:56 -0700 (2 years, 4 months ago)  contrib/nitin/gcc-4.6.0
2011-04-27 12:30:48 -0500 (2 years, 4 months ago)
 contrib/srifenbark/poky-work
2011-04-28 14:24:50 -0500 (2 years, 4 months ago)
 contrib/mhatle/macosx/oe-core
2011-04-28 14:29:57 -0700 (2 years, 4 months ago)
 contrib/dvhart/bernard/kernel
2011-04-28 14:36:14 -0500 (2 years, 4 months ago)
 contrib/mhatle/macosx/bitbake
2011-05-04 15:06:36 +0100 (2 years, 4 months ago)  contrib/aalonso/master
2011-05-10 13:08:18 -0500 (2 years, 3 months ago)
 contrib/aalonso/external-toolchain
2011-05-17 21:23:17 -0700 (2 years, 3 months ago)  contrib/jzhang/oe-rename
2011-05-18 14:53:21 -0700 (2 years, 3 months ago)  contrib/dvhart/u-boot
2011-05-20 09:22:18 -0700 (2 years, 3 months ago)  contrib/stage/bernard
2011-05-24 15:33:54 -0700 (2 years, 3 months ago)  contrib/dvhart/build
2011-05-25 10:25:59 -0700 (2 years, 3 months ago)
 contrib/dvhart/bernard/docs
2011-05-25 14:45:28 -0700 (2 years, 3 months ago)  contrib/dvhart/docs
2011-05-25 15:54:26 -0700 (2 years, 3 months ago)
 contrib/dvhart/filesextrapaths
2011-05-25 21:54:35 -0700 (2 years, 3 months ago)
 contrib/dvhart/yocto/beagle
2011-06-01 17:51:06 +0800 (2 years, 3 months ago)  contrib/jingdonglu/distro
2011-06-02 16:00:21 -0700 (2 years, 3 months ago)  origin/1.1_M1
2011-06-08 19:24:28 +0800 (2 years, 2 months ago)  contrib/xiaofeng/meta-qt3
2011-06-20 23:52:15 -0700 (2 years, 2 months ago)  contrib/dvhart/beagle
2011-06-22 13:18:59 +0800 (2 years, 2 months ago)
 contrib/xiaofeng/task-core-lsb
2011-06-24 15:57:12 +0800 (2 years, 2 months ago)  contrib/wenzong/ccache
2011-06-27 14:05:02 -0700 (2 years, 2 months ago)  contrib/dvhart/pm
2011-06-29 10:22:55 -0500 (2 years, 2 months ago)  contrib/mhatle/fix-recipe
2011-06-29 10:23:05 -0500 (2 years, 2 months ago)  contrib/mhatle/perms
2011-06-29 12:16:07 -0700 (2 years, 2 months ago)  contrib/dvhart/kernel
2011-06-29 14:18:20 -0700 (2 years, 2 months ago)  contrib/jzhang/aclocal
2011-06-30 14:43:43 -0700 (2 years, 2 months ago)  contrib/image-creator
2011-07-07 16:17:53 -0700 (2 years, 1 month ago)  contrib/jzhang/1195
2011-07-11 09:27:17 -0500 (2 years, 1 month ago)
 contrib/tzanussi/meta-m2m.v0
2011-07-13 15:07:29 -0500 (2 years, 1 month ago)  contrib/mhatle/ncurses
2011-07-14 14:02:16 -0700 (2 years, 1 month ago)  contrib/dvhart/bb-perf
2011-07-15 14:49:40 -0700 (2 years, 1 month ago)  contrib/dvhart/ofono
2011-07-15 22:33:08 -0700 (2 years, 1 month ago)  contrib/dvhart/sudo
2011-07-16 01:00:11 -0500 (2 years, 1 month ago)  contrib/mhatle/ml
2011-07-18 16:41:26 +0100 (2 years, 1 month ago)  contrib/paule/remotelayers
2011-07-19 22:20:40 -0500 (2 years, 1 month ago)  contrib/mhatle/oe-core/ml
2011-07-20 10:42:28 +0800 (2 years, 1 month ago)  contrib/wenzong/cronie_pam
2011-07-25 11:52:10 -0700 (2 years, 1 month ago)  contrib/jzhang/hob-bugs
2011-07-26 11:18:27 -0700 (2 years, 1 month ago)  contrib/nitin/ml3.x32
2011-07-26 16:21:59 -0500 (2 years, 1 month ago)  contrib/mhatle/ml_fixes
2011-07-26 17:18:20 -0700 (2 years, 1 month ago)
 contrib/jzhang/preference-fixes
2011-07-29 21:00:08 -0500 (2 years, 1 month ago)
 contrib/mhatle/master_under_test
2011-08-01 19:09:54 -0500 (2 years, 1 month ago)
 contrib/mhatle/oecore/sdk-fix-WIP
2011-08-04 11:36:52 -0500 (2 years, 1 month ago)  contrib/mhatle/bug-libzypp
2011-08-08 02:23:15 -0700 (2 years ago)  contrib/nitin/x32.rebased
2011-08-08 13:50:39 +0800 (2 years ago)  contrib/tlin100/fixbug1129
2011-08-08 14:14:06 -0700 (2 years ago)  contrib/jzhang/1354
2011-08-08 14:17:03 +0800 (2 years ago)  contrib/tlin/bug1129
2011-08-09 12:40:37 +0800 (2 years ago)  contrib/tlin100/bug1129
2011-08-09 16:22:17 -0700 (2 years ago)  contrib/dvhart/rt
2011-08-10 16:57:32 +0800 (2 years ago)  contrib/xiaofeng/rootfs_rpm
2011-08-11 19:38:26 -0500 (2 years ago)  contrib/mhatle/fix_1352
2011-08-11 20:06:43 -0700 (2 years ago)  contrib/dvhart/rt-oe
2011-08-11 20:09:46 -0500 (2 years ago)  contrib/mhatle/fix_1366
2011-08-12 07:59:45 -0700 (2 years ago)  contrib/dvhart/rt-yocto
2011-08-12 09:35:07 -0700 (2 years ago)  contrib/dvhart/rt-oe-fix
2011-08-12 17:41:06 +0800 (2 years ago)  contrib/tlin100/bug1129-v2
2011-08-16 21:11:44 -0700 (2 years ago)  contrib/dvhart/powerpc
2011-08-17 15:55:17 +0800 (2 years ago)  contrib/wenzong/perl
2011-08-18 11:43:34 -0700 (2 years ago)  contrib/dvhart/build-fixes
2011-08-18 15:59:58 +0800 (2 years ago)  contrib/jingdonglu/bug686
2011-08-19 15:02:10 -0700 (2 years ago)  contrib/dvhart/tune-cortexa8
2011-08-19 15:15:17 -0700 (2 years ago)  contrib/dvhart/beagleboard-hardfp
2011-08-19 17:37:56 +0800 (2 years ago)  contrib/jingdonglu/bug817
2011-08-20 17:52:00 -0700 (2 years ago)  contrib/xiaofeng/qt4-x11-demo-image
2011-08-22 11:03:46 +0800 (2 years ago)  contrib/wenzong/1252
2011-08-22 14:14:03 +0800 (2 years ago)  contrib/wenzong/update_cronie
2011-08-24 15:36:22 +0800 (2 years ago)  contrib/jingdonglu/bug686-v2
2011-08-25 11:19:53 -0700 (2 years ago)  contrib/jzhang/1396
2011-08-31 11:55:41 -0700 (2 years ago)  contrib/jzhang/1396-reopen
2011-08-31 11:55:41 -0700 (2 years ago)  contrib/jzhang/1396-reopne
2011-08-31 16:20:52 -0700 (2 years ago)  contrib/dvhart/qemu-audio
2011-09-05 13:18:51 +0800 (2 years ago)  contrib/xiaofeng/qt4e-demo-image
2011-09-06 09:27:40 -0700 (2 years ago)  contrib/dvhart/beagleboard
2011-09-06 09:43:02 -0700 (2 years ago)  contrib/dvhart/noemenlow
2011-09-09 09:04:17 -0700 (1 year, 11 months ago)  contrib/nitin/btrfs
2011-09-14 19:52:08 -0700 (1 year, 11 months ago)  contrib/stage/rc2
2011-09-15 15:35:20 -0700 (1 year, 11 months ago)
 contrib/dvhart/initrdscripts
2011-09-16 14:26:33 -0700 (1 year, 11 months ago)  origin/1.1_M4
2011-09-20 19:26:12 -0500 (1 year, 11 months ago)  contrib/mhatle/rpm.deps
2011-09-27 10:29:45 +0800 (1 year, 11 months ago)  contrib/wenzong/mesa-xlib
2011-09-28 13:24:56 -0700 (1 year, 11 months ago)
 contrib/jzhang/OECORE_ACLOCAL_OPTS
2011-10-10 13:27:45 +0800 (1 year, 10 months ago)
 contrib/xiaofeng/poky_windriver
2011-10-11 16:54:28 +0800 (1 year, 10 months ago)
 contrib/wenzong/distro_tracking_fields
2011-10-12 22:03:01 -0500 (1 year, 10 months ago)  contrib/mhatle/pseudo_wip
2011-10-13 10:12:23 +0800 (1 year, 10 months ago)
 contrib/wenzong/qt4_trailingslash
2011-10-17 15:20:58 +0100 (1 year, 10 months ago)  contrib/rpurdie/wipqueue
2011-10-17 18:10:56 -0700 (1 year, 10 months ago)  contrib/nitin/gmp
2011-10-20 06:22:55 -0700 (1 year, 10 months ago)
 contrib/srifenbark/docs-update
2011-10-20 13:52:04 +0800 (1 year, 10 months ago)
 contrib/wenzong/update_pkgs
2011-10-20 15:40:41 -0700 (1 year, 10 months ago)  contrib/nitin/python
2011-10-20 21:46:03 -0700 (1 year, 10 months ago)  contrib/nitin/perl
2011-10-27 10:38:38 -0500 (1 year, 10 months ago)
 contrib/tzanussi/old-atom-tuning-patch
2011-11-02 14:12:17 -0500 (1 year, 10 months ago)
 contrib/mhatle/pseudo-unload
2011-11-07 14:21:22 -0600 (1 year, 9 months ago)
 contrib/tzanussi/newtune-v0
2011-11-07 20:07:01 +0800 (1 year, 9 months ago)
 contrib/xiaofeng/update_libarchive
2011-11-07 20:35:09 +0800 (1 year, 9 months ago)  contrib/xiaofeng/qmmp
2011-11-08 19:42:29 +0800 (1 year, 9 months ago)
 contrib/xiaofeng/gtk+-direcfb_local
2011-11-10 12:09:00 -0600 (1 year, 9 months ago)  contrib/mhatle/rpm_base
2011-11-11 19:00:31 +0800 (1 year, 9 months ago)
 contrib/xiaofeng/update_libx11-diet
2011-11-17 18:42:36 +0800 (1 year, 9 months ago)
 contrib/xiaofeng/update_lix11-trim
2011-11-21 16:30:56 +0800 (1 year, 9 months ago)
 contrib/xiaofeng/update_libx11-trim
2011-11-23 23:35:43 -0800 (1 year, 9 months ago)  contrib/dvhart/efi/rfc
2011-11-28 15:24:33 +0800 (1 year, 9 months ago)
 contrib/wenzong/distro_tracking_fields_update
2011-11-29 09:39:12 +0800 (1 year, 9 months ago)
 contrib/wenzong/update_tracking_fields
2011-11-29 16:09:18 +0800 (1 year, 9 months ago)
 contrib/wenzong/autotool_nativesdk
2011-11-30 11:16:22 -0800 (1 year, 9 months ago)  contrib/dvhart/initramfs
2011-11-30 16:31:46 +0800 (1 year, 9 months ago)  contrib/wenzong/1603
2011-12-05 23:00:34 +0000 (1 year, 9 months ago)  contrib/purdie/useradd4
2011-12-06 09:43:55 +0800 (1 year, 9 months ago)
 contrib/xiaofeng/gtk+-directfb
2011-12-06 14:45:23 -0800 (1 year, 8 months ago)
 contrib/eflanagan/license_m1
2011-12-07 03:06:45 -0800 (1 year, 8 months ago)
 contrib/eflanagan/consolidated_license
2011-12-08 10:00:45 -0600 (1 year, 8 months ago)  contrib/mhatle/poky-rename
2011-12-08 16:59:05 +0800 (1 year, 8 months ago)  contrib/fengxiah/hob2
2011-12-09 14:40:15 -0800 (1 year, 8 months ago)  contrib/nitin/x32+1
2011-12-10 08:46:07 -0800 (1 year, 8 months ago)
 contrib/eflanagan/license_1819
2011-12-12 14:56:57 -0800 (1 year, 8 months ago)  contrib/nitin/x32
2011-12-13 12:05:29 -0800 (1 year, 8 months ago)  origin/1.2_M1
2011-12-14 12:39:14 -0800 (1 year, 8 months ago)  contrib/josh/contamination
2011-12-15 21:48:04 -0800 (1 year, 8 months ago)  contrib/dvhart/mtools
2011-12-16 12:20:31 -0800 (1 year, 8 months ago)  contrib/dvhart/tiny-dbg
2011-12-19 13:45:51 -0800 (1 year, 8 months ago)  contrib/eflanagan/manifest
2011-12-20 16:28:49 +0800 (1 year, 8 months ago)  contrib/fengxiah/hob2-v0.6
2011-12-20 22:35:18 +0000 (1 year, 8 months ago)  origin/bernard
2011-12-21 11:19:43 -0800 (1 year, 8 months ago)  contrib/dvhart/tiny-v2
2011-12-22 18:49:52 -0600 (1 year, 8 months ago)
 contrib/mhatle/bitbake-runtask
2011-12-22 18:58:17 -0600 (1 year, 8 months ago)  contrib/mhatle/misc-fixes
2011-12-23 00:40:55 -0800 (1 year, 8 months ago)  contrib/nitin/edison
2011-12-27 11:30:09 -0800 (1 year, 8 months ago)
 contrib/nitin/automake_upgrade
2011-12-28 15:28:20 -0800 (1 year, 8 months ago)  contrib/dvhart/tiny-v3
2012-01-02 12:31:08 -0800 (1 year, 8 months ago)
 contrib/nitin/upgrades+fixes
2012-01-06 12:17:42 -0800 (1 year, 7 months ago)  contrib/jzhang/sysroot
2012-01-11 15:09:06 +0800 (1 year, 7 months ago)  contrib/wenzong/1590
2012-01-11 23:53:32 +0000 (1 year, 7 months ago)  origin/1.2_M2
2012-01-12 14:31:11 +0800 (1 year, 7 months ago)  contrib/wenzong/upd_dtf
2012-01-13 13:06:35 -0800 (1 year, 7 months ago)  contrib/eflanagan/license
2012-01-13 17:13:19 +0800 (1 year, 7 months ago)
 contrib/xiaofeng/gtk-directfb
2012-01-16 13:57:14 -0800 (1 year, 7 months ago)  contrib/nitin/grub-efi
2012-01-16 23:47:23 +0800 (1 year, 7 months ago)  contrib/zumeng/lttng-2.0
2012-01-20 15:14:45 +0800 (1 year, 7 months ago)  contrib/zumeng/rspro-conf
2012-01-23 11:57:22 -0800 (1 year, 7 months ago)  contrib/nitin/gcc-multilib
2012-01-24 21:13:56 -0800 (1 year, 7 months ago)  contrib/dvhart/bug/1852
2012-01-26 17:43:36 -0600 (1 year, 7 months ago)
 contrib/mhatle/cross_prelink
2012-01-30 11:26:26 -0800 (1 year, 7 months ago)  contrib/josh/debian
2012-01-30 11:27:27 -0800 (1 year, 7 months ago)  contrib/josh/init
2012-01-30 13:28:22 -0800 (1 year, 7 months ago)  contrib/nitin/bsp/pegasus
2012-01-30 21:11:44 -0800 (1 year, 7 months ago)
 contrib/jzhang/adt-installer
2012-02-02 14:54:23 -0800 (1 year, 7 months ago)  contrib/eflanagan/spdx
2012-02-03 08:58:50 -0800 (1 year, 7 months ago)  contrib/dvhart/efi/dev
2012-02-14 09:42:59 +0800 (1 year, 6 months ago)  contrib/wenzong/1934
2012-02-14 09:54:32 +0800 (1 year, 6 months ago)  contrib/wenzong/1786
2012-02-14 13:27:54 +0000 (1 year, 6 months ago)
 contrib/paule/buildhistory-fix4
2012-02-21 21:40:34 -0800 (1 year, 6 months ago)
 contrib/nitin/gcc-multilib2
2012-02-21 22:35:18 -0800 (1 year, 6 months ago)
 contrib/nitin/gcc-multilib-for-push
2012-02-22 21:29:40 -0800 (1 year, 6 months ago)
 contrib/dvhart/osts-kernel-lab
2012-02-24 14:06:23 -0800 (1 year, 6 months ago)
 contrib/eflanagan/license_fixes
2012-02-28 16:50:28 +0800 (1 year, 6 months ago)  contrib/jingdonglu/bug1487
2012-02-29 13:12:13 +0000 (1 year, 6 months ago)  origin/1.2_M3
2012-03-05 11:51:46 -0800 (1 year, 6 months ago)
 contrib/jasonx.l.cawood/bsptool
2012-03-06 23:57:47 -0800 (1 year, 5 months ago)  contrib/dvhart/bug/2036
2012-03-11 23:21:51 -0700 (1 year, 5 months ago)
 contrib/eflanagan/cedartrail-pvr
2012-03-13 12:14:13 -0700 (1 year, 5 months ago)  contrib/dvhart/bug1806
2012-03-14 14:01:58 +0800 (1 year, 5 months ago)
 contrib/wenzong/upd-ccache-chkconfig
2012-03-14 18:54:08 -0700 (1 year, 5 months ago)
 contrib/nitin/gcc-multilib-2
2012-03-14 18:59:33 -0700 (1 year, 5 months ago)
 contrib/nitin/gcc-multilib-2-for-push
2012-03-15 11:30:35 +0000 (1 year, 5 months ago)  contrib/rpurdie/wip2
2012-03-15 16:29:42 -0700 (1 year, 5 months ago)
 contrib/nitin/gcc-multilib-3
2012-03-23 09:55:23 -0700 (1 year, 5 months ago)  contrib/nitin/sdk-rpath
2012-03-23 15:02:34 -0700 (1 year, 5 months ago)  contrib/yshi/1487
2012-03-23 16:03:23 -0700 (1 year, 5 months ago)
 contrib/eflanagan/incompatible_license
2012-03-23 21:52:05 -0700 (1 year, 5 months ago)  contrib/nitin/bugfix
2012-03-26 14:11:15 -0700 (1 year, 5 months ago)
 contrib/jzhang/multilib-rpm-fix
2012-04-03 15:01:31 -0500 (1 year, 5 months ago)  contrib/mhatle/tunings
2012-04-03 21:04:03 +0100 (1 year, 5 months ago)  contrib/rpurdie/python
2012-04-04 10:05:05 -0700 (1 year, 5 months ago)  contrib/dvhart/bug2236
2012-04-04 10:33:09 -0700 (1 year, 5 months ago)
 contrib/sgarman/shadow-upgrade
2012-04-04 10:59:36 -0700 (1 year, 5 months ago)  contrib/dvhart/syslinux
2012-04-05 14:24:43 -0700 (1 year, 5 months ago)  contrib/dvhart/scripts
2012-04-06 15:20:05 -0700 (1 year, 4 months ago)  contrib/dvhart/skeleton
2012-04-09 14:43:44 -0700 (1 year, 4 months ago)
 contrib/dvhart/distro-tracking
2012-04-09 15:01:16 -0700 (1 year, 4 months ago)  contrib/yshi/1487v2
2012-04-09 15:40:12 +0800 (1 year, 4 months ago)  contrib/xiaofeng/multilib
2012-04-09 16:43:39 -0700 (1 year, 4 months ago)
 contrib/eflanagan/meta-mozilla
2012-04-09 17:29:21 -0500 (1 year, 4 months ago)  contrib/mhatle/mips-tune
2012-04-10 19:07:41 +0300 (1 year, 4 months ago)  contrib/ag/js
2012-04-10 22:09:06 -0700 (1 year, 4 months ago)
 contrib/dvhart/edison/bug/2138
2012-04-11 18:48:44 +0300 (1 year, 4 months ago)  contrib/ag/pythonbug2
2012-04-12 13:31:02 -0700 (1 year, 4 months ago)  origin/1.2_M4
2012-04-13 13:27:11 +0300 (1 year, 4 months ago)  contrib/ag/gdbm
2012-04-14 00:19:55 -0700 (1 year, 4 months ago)  contrib/nitin/grub2
2012-04-14 01:00:39 -0700 (1 year, 4 months ago)  contrib/nitin/grub3
2012-04-16 11:41:45 -0700 (1 year, 4 months ago)
 contrib/eflanagan/image_desc
2012-04-17 17:03:46 -0500 (1 year, 4 months ago)  contrib/mhatle/fixes
2012-04-18 08:37:03 -0700 (1 year, 4 months ago)  contrib/dvhart/gthumb
2012-04-23 14:01:17 +0800 (1 year, 4 months ago)  contrib/chunhua/hob-test2
2012-04-23 14:13:51 -0700 (1 year, 4 months ago)  contrib/josh/hob_next
2012-04-30 14:36:50 -0700 (1 year, 4 months ago)  contrib/nitin/bugfixes
2012-05-01 14:58:48 -0700 (1 year, 4 months ago)  contrib/nitin/upgrades
2012-05-03 11:39:32 -0700 (1 year, 4 months ago)  contrib/nitin/upgrades2
2012-05-04 03:18:50 +0100 (1 year, 4 months ago)
 contrib/paule/buildhistory-hostdeps
2012-05-04 10:07:01 -0700 (1 year, 4 months ago)
 contrib/nitin/automake-1.12
2012-05-04 17:42:01 -0700 (1 year, 4 months ago)
 contrib/nitin/automake-1.12_related_fixes
2012-05-07 13:49:10 -0700 (1 year, 3 months ago)  contrib/josh/patchelf
2012-05-07 14:28:45 -0700 (1 year, 3 months ago)  contrib/josh/python-hack
2012-05-09 11:11:20 -0700 (1 year, 3 months ago)
 contrib/nitin/gcc-multilib-1.3
2012-05-09 12:18:10 -0400 (1 year, 3 months ago)  contrib/zedd/kern-tools
2012-05-09 14:51:19 -0500 (1 year, 3 months ago)  contrib/mhatle/blacklist
2012-05-09 16:50:33 -0700 (1 year, 3 months ago)  contrib/nitin/eglibc-fix
2012-05-09 21:44:48 +0800 (1 year, 3 months ago)  contrib/chunhua/webhob-2
2012-05-11 17:25:36 -0700 (1 year, 3 months ago)  contrib/josh/sstate
2012-05-15 13:10:36 -0500 (1 year, 3 months ago)  contrib/seebs/toolchain
2012-05-16 14:49:29 +0300 (1 year, 3 months ago)
 contrib/ciorga/foomatic-filters-update
2012-05-16 14:49:53 +0300 (1 year, 3 months ago)  contrib/bogdanm/gnutls
2012-05-16 15:00:34 +0300 (1 year, 3 months ago)
 contrib/rmoisan/man-pages-update
2012-05-17 15:31:53 -0500 (1 year, 3 months ago)  contrib/mhatle/sstate
2012-05-18 10:42:27 -0700 (1 year, 3 months ago)  contrib/josh/dpkg
2012-05-18 11:27:15 -0500 (1 year, 3 months ago)  contrib/seebs/toolchains
2012-05-18 15:24:45 +0100 (1 year, 3 months ago)  contrib/seebs/tracking
2012-05-22 15:29:53 -0500 (1 year, 3 months ago)  contrib/mhatle/upd-alt
2012-05-22 15:31:48 -0500 (1 year, 3 months ago)  contrib/mhatle/upd-alt-2
2012-05-22 16:24:31 -0700 (1 year, 3 months ago)
 contrib/nitin/automake-1.12-related-fixes
2012-05-22 17:22:08 -0700 (1 year, 3 months ago)  contrib/nitin/mtrace
2012-05-23 10:10:10 -0700 (1 year, 3 months ago)
 contrib/josh/external-python
2012-05-23 10:28:10 -0500 (1 year, 3 months ago)  contrib/mhatle/bitbake
2012-05-23 18:49:03 -0700 (1 year, 3 months ago)  contrib/josh/sanity
2012-05-24 04:49:09 -0400 (1 year, 3 months ago)  contrib/xtlv/webhob-v0.1
2012-05-24 14:01:17 -0500 (1 year, 3 months ago)  contrib/mhatle/package
2012-05-24 15:46:05 +0300 (1 year, 3 months ago)  contrib/bogdanm/lttng2
2012-05-25 13:23:56 +0300 (1 year, 3 months ago)
 contrib/rmoisan/mtd-utils-1.5.0
2012-05-27 09:29:03 -0700 (1 year, 3 months ago)
 contrib/eflanagan/yocto-autobuilder
2012-05-30 15:38:41 -0700 (1 year, 3 months ago)
 contrib/eflanagan/license_1.3
2012-05-30 16:34:40 -0700 (1 year, 3 months ago)
 contrib/eflanagan/license_pkg
2012-05-31 16:16:06 +0800 (1 year, 3 months ago)  contrib/chunhua/webhob-0.3
2012-06-02 21:09:28 -0700 (1 year, 3 months ago)
 contrib/stage/eflanagan_mut_noltprpm
2012-06-07 13:17:12 -0700 (1 year, 2 months ago)
 contrib/stage/eflanagan_mut_norpm
2012-06-07 15:46:34 -0700 (1 year, 2 months ago)
 contrib/stage/eflanagan_mut-next
2012-06-07 15:48:43 -0700 (1 year, 2 months ago)
 contrib/stage/eflanagan_mut
2012-06-07 16:52:57 -0700 (1 year, 2 months ago)  contrib/eflanagan/connman
2012-06-08 14:00:09 -0700 (1 year, 2 months ago)  contrib/master+work
2012-06-08 14:00:09 -0700 (1 year, 2 months ago)  contrib/nitin/master+work
2012-06-13 13:11:23 +0100 (1 year, 2 months ago)  origin/1.3_M1
2012-06-15 12:16:33 -0400 (1 year, 2 months ago)  contrib/zedd/skeleton
2012-06-19 11:35:06 -0700 (1 year, 2 months ago)  oe-core/2011-1
2012-06-19 11:38:27 -0700 (1 year, 2 months ago)  contrib/josh/edison
2012-06-20 10:13:34 -0400 (1 year, 2 months ago)  contrib/zedd/perf
2012-06-22 11:49:01 -0400 (1 year, 2 months ago)  contrib/zedd/libc-headers
2012-06-29 12:58:18 -0700 (1 year, 2 months ago)  contrib/dvhart/modules
2012-06-29 14:59:27 +0100 (1 year, 2 months ago)  origin/edison
2012-06-29 19:57:03 -0700 (1 year, 2 months ago)  contrib/dvhart/modules-v3
2012-07-02 14:20:21 -0500 (1 year, 2 months ago)  contrib/mhatle/oprofile
2012-07-03 15:22:45 -0700 (1 year, 2 months ago)
 contrib/kraj/denzil-fetcher-update
2012-07-03 16:21:57 -0700 (1 year, 2 months ago)  contrib/dvhart/cleanup
2012-07-09 08:50:59 -0700 (1 year, 1 month ago)
 contrib/nitin/automake_upgrade_1.12.1
2012-07-10 03:42:33 -0700 (1 year, 1 month ago)
 contrib/nitin/automake_update
2012-07-11 11:20:52 +0800 (1 year, 1 month ago)  contrib/wenzong/2734
2012-07-11 11:32:46 -0500 (1 year, 1 month ago)  contrib/seebs/debugsrc
2012-07-12 23:41:18 -0700 (1 year, 1 month ago)
 contrib/nitin/automake_update_on_master
2012-07-16 11:58:39 -0500 (1 year, 1 month ago)  contrib/seebs/ppc476
2012-07-16 15:29:07 -0700 (1 year, 1 month ago)  contrib/jzhang/2761
2012-07-16 16:32:38 -0700 (1 year, 1 month ago)  contrib/jzhang/2761-v2
2012-07-17 11:16:29 -0700 (1 year, 1 month ago)  contrib/dvhart/installer
2012-07-17 17:57:32 +0100 (1 year, 1 month ago)  origin/1.3_M2
2012-07-20 11:31:07 +0800 (1 year, 1 month ago)
 contrib/jhuang0/defect_groupadd_0718
2012-07-20 11:31:07 +0800 (1 year, 1 month ago)  contrib/yocto2779_0720
2012-07-22 14:22:38 +0800 (1 year, 1 month ago)
 contrib/jhuang0/defect2779_groupadd_0722
2012-07-22 14:46:15 +0800 (1 year, 1 month ago)
 contrib/jhuang0/yocto_2779_groupadd_0722
2012-07-22 19:52:18 +0800 (1 year, 1 month ago)
 contrib/jhuang0/yocto_2779_groupadd_0722_v2
2012-07-23 13:46:05 +0800 (1 year, 1 month ago)  contrib/wenzong/2402
2012-07-23 16:25:04 +0800 (1 year, 1 month ago)
 contrib/jhuang0/defect2811_quota_msgfmt
2012-07-24 15:34:48 -0500 (1 year, 1 month ago)  contrib/mhatle/status
2012-07-25 14:49:41 +0800 (1 year, 1 month ago)  contrib/xouyang/master
2012-07-27 16:50:07 -0500 (1 year, 1 month ago)  contrib/seebs/pseudo
2012-07-29 22:43:22 -0700 (1 year, 1 month ago)  contrib/nitin/work
2012-07-30 14:34:06 -0500 (1 year, 1 month ago)  contrib/mattsm/edison
2012-07-30 20:11:30 +0800 (1 year, 1 month ago)  contrib/xouyang/2858
2012-07-31 19:46:09 -0500 (1 year, 1 month ago)
 contrib/mhatle/python-setuptools
2012-08-01 11:51:50 -0700 (1 year, 1 month ago)
 contrib/dvhart/bug2382-ssh-tiny
2012-08-02 09:36:57 +0800 (1 year, 1 month ago)  contrib/wenzong/2845
2012-08-02 22:55:27 +0300 (1 year, 1 month ago)  contrib/ag/pseudo
2012-08-03 11:25:58 +0800 (1 year, 1 month ago)  contrib/wenzong/2883
2012-08-04 20:59:47 +0800 (1 year, 1 month ago)
 contrib/jhuang0/bug2749_bsddb_0804
2012-08-06 14:58:36 +0800 (1 year ago)  contrib/jhuang0/bug2891_tcl_0806
2012-08-07 20:06:56 +0800 (1 year ago)  contrib/wenzong/2907
2012-08-08 13:00:53 +0800 (1 year ago)  contrib/jhuang0/expect_failed_0808
2012-08-08 13:57:04 +0800 (1 year ago)  contrib/jhuang0/bug2905_gdk_0809
2012-08-08 15:22:55 +0800 (1 year ago)  contrib/xouyang/2916
2012-08-08 18:14:08 -0500 (1 year ago)  contrib/seebs/cooker
2012-08-09 10:53:00 +0800 (1 year ago)  contrib/wenzong/2919
2012-08-10 09:31:06 -0700 (1 year ago)  contrib/sgarman/denzil-next-pull1
2012-08-10 18:12:41 -0500 (1 year ago)  contrib/seebs/blacklist
2012-08-13 15:02:41 -0500 (1 year ago)  contrib/mhatle/prelink
2012-08-13 15:18:52 +0800 (1 year ago)  contrib/roy/test
2012-08-14 09:34:12 +0100 (1 year ago)  origin/1.3_M3
2012-08-15 18:27:10 -0500 (1 year ago)  contrib/seebs/ntracking
2012-08-15 20:08:43 -0500 (1 year ago)  contrib/seebs/remove
2012-08-16 11:43:43 -0500 (1 year ago)  contrib/seebs/cleanup
2012-08-17 01:17:09 +0300 (1 year ago)  contrib/ag/fixes
2012-08-17 11:01:38 +0800 (1 year ago)  contrib/jhuang0/bug2947_apr_0817
2012-08-17 11:17:14 -0500 (1 year ago)  contrib/mhatle/rpm
2012-08-17 15:07:19 +0800 (1 year ago)
 contrib/jhuang0/t_bsddb_upstream_status_0817
2012-08-17 15:54:27 +0300 (1 year ago)  contrib/ag/dbus-tests
2012-08-17 16:23:20 -0500 (1 year ago)  contrib/mhatle/pseudo
2012-08-20 14:30:45 -0500 (1 year ago)  contrib/mhatle/grub
2012-08-21 13:54:13 -0500 (1 year ago)  contrib/mhatle/denzil-eglibc
2012-08-21 15:20:18 +0800 (1 year ago)  contrib/jhuang0/bug2959_acl_0821
2012-08-23 16:47:13 +0800 (12 months ago)  contrib/jhuang0/bug2905_gdk_0823
2012-08-24 13:53:52 -0500 (12 months ago)  contrib/mhatle/whitelist
2012-08-24 14:21:00 -0500 (12 months ago)  contrib/mhatle/devshell
2012-08-24 15:35:16 -0700 (12 months ago)  contrib/vanilla/master
2012-08-27 11:21:29 -0500 (12 months ago)  contrib/seebs/varpseudo
2012-08-27 12:05:29 -0700 (12 months ago)  contrib/sgw/psplash
2012-08-27 13:19:19 -0700 (12 months ago)
 contrib/eflanagan/yocto-autobuilder-bugfixes
2012-08-30 15:17:37 -0700 (12 months ago)  contrib/dlna
2012-09-01 14:12:11 -0700 (12 months ago)  contrib/stage/meta-yocto
2012-09-03 17:33:34 +0300 (12 months ago)  contrib/bogdanm/b2162
2012-09-04 21:15:28 -0700 (12 months ago)  contrib/sgw/meta-tlk
2012-09-05 15:23:33 -0700 (12 months ago)  contrib/eflanagan/adtfix
2012-09-05 16:26:22 -0700 (12 months ago)  origin/1.3_beta
2012-09-05 18:59:34 +0800 (12 months ago)
 contrib/limx/hob-bug-fixes-continue
2012-09-06 16:05:44 -0700 (12 months ago)  contrib/eflanagan/adt-beta-fixes
2012-09-07 16:59:21 -0500 (12 months ago)  contrib/mhatle/comp_install
2012-09-07 17:00:57 -0500 (12 months ago)  contrib/mhatle/qt4
2012-09-09 10:32:23 -0700 (12 months ago)  contrib/eflanagan/yab-adt
2012-09-11 10:02:31 -0700 (11 months ago)  contrib/eflanagan/eclipse_setup
2012-09-11 16:03:44 -0700 (11 months ago)  contrib/jzhang/HOB2499
2012-09-11 17:19:49 +0800 (11 months ago)
 contrib/jhuang0/bug3081_libgnome-kering_0911
2012-09-11 17:58:52 +0300 (11 months ago)  contrib/cmuscax/upgrades
2012-09-13 01:34:11 +0300 (11 months ago)  contrib/ag/rootfs_size
2012-09-13 12:51:07 -0500 (11 months ago)  contrib/seebs/pseudo141
2012-09-14 01:17:41 +0300 (11 months ago)  contrib/ag/taglib
2012-09-14 15:40:26 -0700 (11 months ago)
 contrib/eflanagan/license_manifest
2012-09-14 16:04:14 -0500 (11 months ago)  contrib/seebs/include
2012-09-15 22:20:09 -0700 (11 months ago)  origin/1.3_M4
2012-09-18 12:36:46 +0300 (11 months ago)  contrib/rmoisan/qa_check_libdir
2012-09-18 19:26:17 +0800 (11 months ago)  contrib/robert/rpmdepend
2012-09-18 23:04:46 +0800 (11 months ago)  contrib/robert/ipk_arch
2012-09-19 12:23:10 +0300 (11 months ago)  contrib/rmoisan/tmp1
2012-09-19 14:54:31 +0800 (11 months ago)  contrib/robert/rm_opkg018
2012-09-19 17:39:00 +0300 (11 months ago)  contrib/bogdanm/b3025
2012-09-20 10:20:23 +0800 (11 months ago)  contrib/robert/ipk_rebased
2012-09-20 11:25:20 -0700 (11 months ago)  contrib/eflanagan/tmp_license
2012-09-20 15:13:50 -0700 (11 months ago)  contrib/sgarman/denzil-next-pull2
2012-09-24 14:06:38 -0400 (11 months ago)  contrib/xtlv/webhob-webservice
2012-09-25 15:27:01 -0700 (11 months ago)
 contrib/eflanagan/ossp-uuid-native
2012-09-25 17:23:03 -0700 (11 months ago)  origin/1.3_M5
2012-09-25 18:14:38 +0300 (11 months ago)  contrib/cmuscax/bblayersconf
2012-09-26 12:48:07 +0300 (11 months ago)  contrib/bogdanm/b3025_test
2012-09-26 14:38:36 -0700 (11 months ago)  contrib/eflanagan/LICENSE_PATH
2012-09-26 15:41:42 +0800 (11 months ago)  contrib/robert/rpm_head
2012-09-26 17:13:53 +0800 (11 months ago)  contrib/chunhua/webhob-0.4
2012-09-26 18:08:23 -0500 (11 months ago)  contrib/mhatle/multilib
2012-09-27 11:39:34 +0800 (11 months ago)  contrib/robert/perl_config
2012-09-27 11:42:02 +0800 (11 months ago)  contrib/robert/perl_lsb
2012-09-27 13:44:32 +0800 (11 months ago)  contrib/chunhua/webhob-v0.5
2012-09-27 16:17:43 +0800 (11 months ago)  contrib/wenzong/2766
2012-09-28 14:49:37 +0800 (11 months ago)  contrib/kangkai/ltp-dep
2012-09-28 15:31:17 -0700 (11 months ago)  contrib/eflanagan/meta-lavalamp
2012-09-29 18:58:16 -0500 (11 months ago)  contrib/mhatle/dep_cleanup
2012-09-30 16:13:09 -0700 (11 months ago)
 contrib/strassek/baryon-nfsd-regression
2012-10-01 10:47:03 -0500 (11 months ago)  contrib/mhatle/dep_cleanup2
2012-10-01 15:53:07 +0300 (11 months ago)
 contrib/bogdanm/b2162_latest_fixes
2012-10-02 09:37:38 -0700 (11 months ago)  contrib/nitin/bsps_boot_fix
2012-10-03 11:21:58 -0700 (11 months ago)  contrib/eflanagan/bzip
2012-10-04 15:42:23 +0300 (11 months ago)  contrib/bogdanm/b3026_1st
2012-10-05 10:27:23 -0700 (11 months ago)  contrib/sgarman/denzil-next-pull3
2012-10-05 12:50:46 -0500 (11 months ago)  contrib/mhatle/rpm-fix
2012-10-05 17:34:12 +0300 (11 months ago)  contrib/bogdanm/b3026
2012-10-05 17:40:18 +0300 (11 months ago)  contrib/bogdanm/b3026_2nd
2012-10-07 20:33:46 -0700 (11 months ago)  contrib/dvhart/1.3/tiny
2012-10-08 17:06:08 +0800 (11 months ago)  contrib/jhuang0/r_ruby_20121008_1
2012-10-08 17:39:29 +0800 (11 months ago)  contrib/jhuang0/r_ruby_20121008_2
2012-10-09 00:11:34 -0700 (11 months ago)  contrib/eflanagan/gpl_compliance
2012-10-09 12:15:37 -0700 (11 months ago)  contrib/eflanagan/bzip2
2012-10-09 12:15:37 -0700 (11 months ago)  contrib/eflanagan/bzip_rename
2012-10-11 13:16:07 +0300 (10 months ago)  contrib/bogdanm/b3026_3rd
2012-10-12 14:01:48 -0500 (10 months ago)  contrib/tzanussi/lttng-fixes.0
2012-10-15 17:10:10 -0700 (10 months ago)  contrib/sgw/dlna
2012-10-15 23:50:47 -0500 (10 months ago)  contrib/tzanussi/switch-to-lttng2
2012-10-21 18:32:34 +0300 (10 months ago)  contrib/ag/opkg
2012-10-22 10:00:22 -0500 (10 months ago)  contrib/mhatle/sdk
2012-10-23 12:27:15 +0100 (10 months ago)  contrib/belen
2012-10-23 17:51:14 -0500 (10 months ago)  contrib/seebs/mips64
2012-10-23 20:50:10 +0800 (10 months ago)  contrib/robert/ncurses
2012-10-26 11:13:23 -0500 (10 months ago)
 contrib/tzanussi/lttng-modules-remove-syscalls-patch
2012-10-29 17:12:53 +0000 (10 months ago)  contrib/rpurdie/wip3
2012-10-30 09:23:24 -0500 (10 months ago)  contrib/tzanussi/perf-dwarf
2012-10-30 21:36:04 +0800 (10 months ago)  contrib/robert/virtclass
2012-11-01 10:47:06 +0800 (10 months ago)  contrib/ChenQi/hwclock
2012-11-01 16:18:26 +0800 (10 months ago)  contrib/xouyang/2843
2012-11-02 18:29:24 +0800 (10 months ago)  contrib/ChenQi/devshell
2012-11-02 18:37:17 +0200 (10 months ago)  contrib/mihaip/kvm
2012-11-04 18:13:19 +0800 (10 months ago)  contrib/robert/sdkperl
2012-11-06 18:57:27 +0800 (10 months ago)  contrib/robert/assume
2012-11-08 17:33:02 +0200 (10 months ago)  contrib/cmuscax/upgrades2
2012-11-11 17:53:56 -0600 (9 months ago)
 contrib/tzanussi/danny-next-lttng-fixes
2012-11-12 10:48:56 -0800 (9 months ago)  contrib/jzhang/YOCTO3384
2012-11-12 11:02:17 +0800 (9 months ago)  contrib/jhuang0/d_eglibc_1112_1
2012-11-12 17:56:22 +0800 (9 months ago)  contrib/ChenQi/initscripts
2012-11-13 19:37:40 +0800 (9 months ago)  contrib/robert/denzil_rpm
2012-11-14 17:02:03 +0800 (9 months ago)  contrib/jhuang0/d_eglibc_1114_1
2012-11-15 09:16:11 +0800 (9 months ago)  contrib/roy/bind
2012-11-15 10:23:12 +0200 (9 months ago)  contrib/mihaip/meta-kvm
2012-11-15 10:29:06 +0800 (9 months ago)  contrib/roy/change-applets-dir
2012-11-19 11:29:47 -0800 (9 months ago)
 contrib/strassek/baryon-image-features
2012-11-19 15:49:57 +0800 (9 months ago)  contrib/ChenQi/mdadm
2012-11-19 18:00:11 +0800 (9 months ago)
 contrib/jhuang0/d_python-pygtk_1119_1
2012-11-20 13:27:00 -0800 (9 months ago)  contrib/eflanagan/package_licenses
2012-11-20 15:50:49 +0200 (9 months ago)
 contrib/yocto-eclipse-plugin-windows
2012-11-20 15:52:03 +0200 (9 months ago)
 contrib/yocto-eclipse-plugin-windows-ptp
2012-11-20 20:16:20 +0200 (9 months ago)  contrib/windows-eclipse-plugin
2012-11-21 10:08:17 +0200 (9 months ago)  contrib/cmuscax/nitra
2012-11-21 16:57:30 +0800 (9 months ago)  contrib/hongxu/binutils
2012-11-22 10:51:14 +0800 (9 months ago)  contrib/kangkai/lsb
2012-11-22 11:59:27 +0800 (9 months ago)
 contrib/jhuang0/d_pulseaudio_1122_1
2012-11-22 14:06:33 +0800 (9 months ago)
 contrib/jhuang0/d_pulseaudio_1122_2
2012-11-22 15:42:33 +0800 (9 months ago)  contrib/jhuang0/d_zlib_1122_1
2012-11-22 18:05:06 +0200 (9 months ago)  contrib/bogdanm/bogdanm_smart_work
2012-11-22 18:22:45 +0800 (9 months ago)  contrib/ChenQi/pkgconfig
2012-11-28 10:27:45 -0500 (9 months ago)  contrib/zedd/kernel-fixes
2012-11-28 13:21:27 +0800 (9 months ago)  contrib/jhuang0/d_eglibc_1128_1
2012-11-28 14:32:47 -0800 (9 months ago)  contrib/eflanagan/incompat
2012-11-28 15:25:33 +0000 (9 months ago)  origin/1.4_M1
2012-11-29 14:12:33 +0800 (9 months ago)  contrib/roy/apr
2012-11-29 17:12:46 +0800 (9 months ago)  contrib/roy/common-linux
2012-11-30 14:56:54 -0800 (9 months ago)  contrib/eflanagan/build-app-ab
2012-11-30 15:46:05 -0800 (9 months ago)  contrib/sgarman/denzil-next-pull4
2012-12-02 10:43:07 -0600 (9 months ago)
 contrib/tzanussi/revert-xorg-abi-video
2012-12-02 14:53:23 -0800 (9 months ago)
 contrib/sgarman/meta-yocto-layer-fix
2012-12-03 11:11:45 +0200 (9 months ago)  contrib/cvoicu/adt-installer
2012-12-03 14:32:50 -0800 (9 months ago)  contrib/strassek/baryon-proftpd
2012-12-04 15:23:41 +0200 (9 months ago)  contrib/cmuscax/fetcher
2012-12-04 17:47:39 +0800 (9 months ago)  contrib/ChenQi/pkgconfig2
2012-12-05 10:11:11 +0800 (9 months ago)  contrib/ChenQi/fixpatchstatus
2012-12-05 14:38:04 +0200 (9 months ago)  contrib/rmoisan/updates
2012-12-06 11:49:40 -0800 (9 months ago)  contrib/eflanagan/locale_license
2012-12-07 13:21:07 +0800 (9 months ago)  contrib/jhuang0/d_rt-tests_1207_1
2012-12-07 13:44:46 +0800 (9 months ago)  contrib/jhuang0/d_rt-tests_1207_2
2012-12-07 17:28:13 -0600 (9 months ago)  contrib/mhatle/smart
2012-12-10 09:28:32 +0200 (8 months ago)  contrib/cmuscax/pus2
2012-12-11 16:33:57 +0200 (8 months ago)  contrib/cmuscax/multilib_warn
2012-12-12 12:37:18 +0800 (8 months ago)  contrib/ChenQi/fix-ICU
2012-12-12 21:51:22 -0600 (8 months ago)  contrib/tzanussi/yocto-bsp-custom
2012-12-13 15:12:27 -0600 (8 months ago)
 contrib/tzanussi/3233-fix-denzil-backport
2012-12-13 16:52:16 +0800 (8 months ago)  contrib/ChenQi/coreutils
2012-12-13 23:09:32 -0600 (8 months ago)
 contrib/tzanussi/module-do-make-scripts-fix
2012-12-14 16:39:07 +0200 (8 months ago)  contrib/cmuscax/multilib2
2012-12-14 16:44:15 -0600 (8 months ago)  contrib/mhatle/smart2
2012-12-14 19:21:53 -0600 (8 months ago)  contrib/seebs/pseudo_1_4_2
2012-12-17 10:35:02 +0800 (8 months ago)  contrib/ChenQi/ICU-upgrade
2012-12-17 11:13:16 -0600 (8 months ago)  contrib/tzanussi/yocto-layer-rfc
2012-12-18 13:35:30 +0200 (8 months ago)  contrib/cmuscax/udev
2012-12-18 16:52:56 +0200 (8 months ago)  contrib/lpalcu/apu
2012-12-19 15:05:38 -0600 (8 months ago)
 contrib/tzanussi/cmake-checksum-fix
2012-12-20 14:58:23 +0800 (8 months ago)  contrib/roy/rpcbind
2012-12-23 16:40:46 -0800 (8 months ago)  contrib/sgarman/buildappliance-fix
2012-12-24 13:12:08 +0200 (8 months ago)  contrib/cmuscax/multilib3
2012-12-26 16:11:39 -0800 (8 months ago)
 contrib/sgarman/denzil-next-buildappliance-fix
2012-12-27 16:06:04 +0200 (8 months ago)  contrib/cmuscax/multilib4
2012-12-27 22:04:30 -0800 (8 months ago)  contrib/sgarman/denzil-next-pull5
2012-12-31 15:53:04 +0800 (8 months ago)  contrib/ChenQi/live-image
2013-01-02 18:30:40 -0600 (8 months ago)  contrib/mattsm/denzil
2013-01-03 15:26:16 -0800 (8 months ago)  contrib/jzhang/3637
2013-01-04 14:12:44 -0800 (8 months ago)  contrib/eflanagan/denzil-release
2013-01-04 15:25:45 +0200 (8 months ago)
 contrib/cvoicu/consistency-conf-files
2013-01-07 16:40:09 -0600 (8 months ago)  contrib/tzanussi/rm-legacy-lttng
2013-01-08 14:45:04 +0800 (8 months ago)  contrib/ChenQi/rootfs_rpm
2013-01-09 10:22:44 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan
2013-01-09 10:29:27 +0800 (7 months ago)  contrib/ChenQi/runqemu-ramfs
2013-01-11 11:31:23 +0800 (7 months ago)  contrib/ChenQi/rm-finish.sh
2013-01-11 14:18:17 -0600 (7 months ago)  contrib/tzanussi/yocto-layer-v1
2013-01-11 17:22:28 -0600 (7 months ago)
 contrib/tzanussi/rm-legacy-lttng-v3
2013-01-11 17:50:26 -0600 (7 months ago)
 contrib/tzanussi/updates-for-legacy-lttng-v3
2013-01-11 19:26:52 -0600 (7 months ago)  contrib/seebs/incvar
2013-01-14 12:55:15 +0200 (7 months ago)  contrib/cvoicu/warningsparsing
2013-01-14 13:23:40 +0800 (7 months ago)  contrib/ChenQi/runqemu-iso
2013-01-14 15:34:21 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan3
2013-01-14 15:34:24 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan2
2013-01-15 14:00:56 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan4
2013-01-15 14:00:56 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan5
2013-01-15 16:38:05 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-git-check
2013-01-16 09:26:26 -0600 (7 months ago)  contrib/tzanussi/lttng-pe-bump
2013-01-16 11:06:11 -0800 (7 months ago)  contrib/sgarman/denzil-next
2013-01-16 15:07:15 -0600 (7 months ago)  contrib/mattsm/danny
2013-01-16 16:06:52 +0200 (7 months ago)  contrib/rmoisan/systemd
2013-01-17 14:49:42 -0800 (7 months ago)  contrib/strassek/create_diff_gz
2013-01-17 15:03:55 -0600 (7 months ago)  contrib/mattsm/master-next
2013-01-18 09:40:38 +0800 (7 months ago)
 contrib/roy/enable_tcp_wrapper_xinetd
2013-01-18 10:56:20 +0200 (7 months ago)  contrib/cmuscax/directfb
2013-01-18 13:43:40 +0200 (7 months ago)  contrib/cmuscax/gtk-directfb
2013-01-18 17:04:24 -0600 (7 months ago)  contrib/mhatle/ua-dep
2013-01-21 10:23:02 +0800 (7 months ago)
 contrib/enable_tcp_wrapper_for_xinetd
2013-01-21 15:33:57 +0200 (7 months ago)
 contrib/cvoicu/sstatemirrors_gtktreeview
2013-01-21 16:32:53 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-qualify-user-with-machine-danny
2013-01-21 18:05:25 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-qualify-user-with-machine-master
2013-01-22 09:57:45 +0200 (7 months ago)  contrib/cmuscax/migrate_localcount
2013-01-22 14:02:41 +0200 (7 months ago)
 contrib/mihaip/elc-meta-openembedded
2013-01-22 14:58:23 +0800 (7 months ago)  contrib/ChenQi/init-updatercd
2013-01-22 15:38:31 +0200 (7 months ago)
 contrib/mihaip/elc-meta-virtualization
2013-01-22 15:39:09 +0800 (7 months ago)  contrib/ChenQi/postinst-error
2013-01-22 17:08:52 +0200 (7 months ago)  contrib/nitin/mihaip/elc-demo
2013-01-22 17:23:16 +0800 (7 months ago)  contrib/wenzong/3754-bind
2013-01-23 11:53:09 +0200 (7 months ago)  contrib/cmuscax/prs_fix
2013-01-23 13:36:06 +0800 (7 months ago)
 contrib/ChenQi/live-image-move-media
2013-01-23 16:37:01 -0500 (7 months ago)  contrib/zedd/kernel-next
2013-01-24 00:00:47 -0600 (7 months ago)  contrib/tzanussi/perf-trace-v0
2013-01-24 10:51:16 +0200 (7 months ago)  contrib/cmuscax/pus24
2013-01-24 14:28:11 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-user-fixes-master
2013-01-24 14:49:27 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-user-fixes-danny
2013-01-24 15:11:53 -0800 (7 months ago)
 contrib/strassek/archiver_copyleft_filter
2013-01-24 15:55:56 +0800 (7 months ago)  contrib/ChenQi/readonly-rootfs
2013-01-24 16:02:53 -0600 (7 months ago)  contrib/seebs/unpackaged
2013-01-24 16:06:01 +0800 (7 months ago)  contrib/kangkai/fix-perl-4danny
2013-01-24 16:27:39 +0200 (7 months ago)  contrib/emac/meta-web-kiosk
2013-01-25 00:27:27 +0200 (7 months ago)  contrib/mihaip/elc-demo
2013-01-25 10:35:00 +0800 (7 months ago)  contrib/robert/cache.py
2013-01-25 14:03:12 +0800 (7 months ago)  contrib/wenzong/3780-git
2013-01-25 18:06:41 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan6
2013-01-25 22:36:29 -0600 (7 months ago)  contrib/seebs/skip_filedeps
2013-01-28 12:43:16 +0000 (7 months ago)  oe-core/denzil
2013-01-28 12:44:14 +0000 (7 months ago)  origin/denzil
2013-01-28 14:02:04 -0600 (7 months ago)
 contrib/tzanussi/oprofile-operf-enable-v1
2013-01-28 15:02:26 -0800 (7 months ago)  contrib/strassek/docs_updates
2013-01-28 17:10:07 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan7
2013-01-29 09:43:16 +0800 (7 months ago)
 contrib/roy/xinetd-enable-tcp-wrap3
2013-01-29 12:24:43 +0800 (7 months ago)
 contrib/ChenQi/readonly-rootfs-unionfs
2013-01-29 15:24:27 +0200 (7 months ago)  contrib/mihaip/elc-meta-intel
2013-01-29 16:41:49 +0200 (7 months ago)  contrib/cmuscax/gcc_enhan8
2013-01-29 16:48:30 +0800 (7 months ago)
 contrib/ChenQi/rootfs_rpm-fix-error
2013-01-30 08:34:32 -0800 (7 months ago)  contrib/sgw/1.4_M3-rc2
2013-01-30 09:57:39 +0800 (7 months ago)
 contrib/ChenQi/udev-systemd-sysvinit
2013-01-30 15:15:34 -0800 (7 months ago)  contrib/dvhart/noparavirt
2013-01-30 17:45:33 +0200 (7 months ago)
 contrib/igrigorx/eclipse-automation
2013-01-31 10:05:30 +0200 (7 months ago)  contrib/cvoicu/packagespage
2013-01-31 12:30:13 +0000 (7 months ago)  origin/1.4_M3
2013-02-01 11:01:54 +0800 (7 months ago)
 contrib/qt4-check-neon-against-tune-features
2013-02-01 13:40:19 +0800 (7 months ago)  contrib/robert/knotty
2013-02-01 16:51:31 +0800 (7 months ago)
 contrib/ChenQi/busybox-config-fragments
2013-02-01 18:26:20 -0600 (7 months ago)
 contrib/tzanussi/systemtap-constructor-fix
2013-02-02 10:36:24 +0800 (7 months ago)  contrib/qt4_use_on_neon
2013-02-02 10:44:28 +0800 (7 months ago)  contrib/qt4_use_on_neon_v2
2013-02-02 15:50:01 +0800 (7 months ago)
 contrib/tcp_wrapper_remove_size_t_patch
2013-02-04 10:39:32 +0200 (7 months ago)  contrib/cmuscax/ml_patches
2013-02-04 11:41:54 +0200 (7 months ago)  contrib/cmuscax/pseudo
2013-02-04 14:44:15 -0500 (7 months ago)  contrib/zedd/kernel-dev
2013-02-05 08:21:56 -0600 (7 months ago)
 contrib/tzanussi/crosstap-x86-64-fix
2013-02-05 10:34:56 +0800 (7 months ago)  contrib/robert/p4
2013-02-05 14:16:55 -0600 (7 months ago)  contrib/seebs/pseudo143
2013-02-05 17:48:56 +0200 (7 months ago)  contrib/cmuscax/netbase
2013-02-06 09:25:44 -0600 (7 months ago)  contrib/tzanussi/3233-fix-danny
2013-02-06 09:36:20 -0600 (7 months ago)  contrib/tzanussi/3756-fix-danny
2013-02-06 10:56:11 +0000 (7 months ago)  contrib/ross/i18n
2013-02-06 15:40:25 +0800 (7 months ago)  contrib/robert/bbl_long_path
2013-02-07 08:29:34 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-user-include-fixes-master
2013-02-07 08:37:50 -0600 (7 months ago)
 contrib/tzanussi/yocto-bsp-user-include-fixes-danny
2013-02-07 13:54:20 -0600 (7 months ago)  contrib/mhatle/wr-denzil
2013-02-07 14:11:54 -0600 (7 months ago)  contrib/mhatle/wr-master
2013-02-08 10:10:19 +0200 (6 months ago)  contrib/cmuscax/toolchain
2013-02-08 14:23:14 -0800 (6 months ago)  contrib/dvhart/gitproxy
2013-02-11 10:55:21 +0200 (6 months ago)  contrib/cmuscax/pus
2013-02-11 14:43:29 +0200 (6 months ago)  contrib/rmoisan/systemd-rework
2013-02-12 14:37:21 -0600 (6 months ago)  contrib/seebs/debiannames
2013-02-12 16:11:52 -0600 (6 months ago)  contrib/seebs/pseudo144
2013-02-12 19:03:23 +0200 (6 months ago)  contrib/mihai/test-target
2013-02-13 11:34:26 +0200 (6 months ago)  contrib/rmoisan/systemd-ross
2013-02-13 13:43:17 -0600 (6 months ago)  contrib/seebs/pseudo145
2013-02-14 12:44:49 -0800 (6 months ago)  contrib/nitin/elcdemo/poky
2013-02-14 15:19:54 +0000 (6 months ago)  contrib/ross/danny
2013-02-15 18:20:42 -0800 (6 months ago)  contrib/nitin/elcdemo/webkiosk
2013-02-16 19:38:49 -0800 (6 months ago)  contrib/nitin/elcdemo/meta-intel
2013-02-17 17:39:14 -0600 (6 months ago)  contrib/seebs/pseudo_15
2013-02-18 14:44:03 +0800 (6 months ago)
 contrib/hongxu/incremental-deb-image
2013-02-19 15:49:48 +0800 (6 months ago)  contrib/ChenQi/rcs-default
2013-02-19 17:13:39 +0800 (6 months ago)  contrib/kangkai/redirect-postinst
2013-02-19 17:49:50 +0200 (6 months ago)  contrib/bogdanm/b3575
2013-02-19 19:20:10 +0800 (6 months ago)
 contrib/hongxu/incremental-ipk-image
2013-02-19 23:07:23 -0800 (6 months ago)  origin/1.4_M4
2013-02-20 14:24:34 +0800 (6 months ago)
 contrib/gcc_search_build_dir_firstly
2013-02-20 17:30:26 +0800 (6 months ago)
 contrib/ChenQi/readonly-rootfs-followups
2013-02-21 11:35:42 -0600 (6 months ago)  contrib/seebs/gnun32
2013-02-21 16:26:23 +0200 (6 months ago)  contrib/cmuscax/srcrev
2013-02-23 21:11:38 -0600 (6 months ago)  contrib/seebs/errors
2013-02-25 14:10:44 -0800 (6 months ago)
 contrib/jzhang/kernel-arch-variable
2013-02-25 17:10:32 +0800 (6 months ago)  contrib/ChenQi/sysv-consistent
2013-02-26 13:47:35 +0800 (6 months ago)  contrib/robert/lttng-ust
2013-02-26 14:16:13 +0800 (6 months ago)  contrib/wenzong/alsa-tools
2013-02-26 16:30:35 +0800 (6 months ago)  contrib/kangkai/update-lsb
2013-02-26 18:50:57 +0200 (6 months ago)  contrib/bogdanm/b3575_2nd
2013-02-27 08:46:42 -0600 (6 months ago)  contrib/tzanussi/perf-trace-v1
2013-02-27 13:22:41 +0800 (6 months ago)
 contrib/ChenQi/matchbox-initscripts
2013-02-27 14:33:41 -0600 (6 months ago)  contrib/seebs/pseudo151
2013-02-27 16:20:01 +0200 (6 months ago)  contrib/bogdanm/multiclient
2013-02-27 19:04:20 -0600 (6 months ago)  contrib/mhatle/depmod
2013-02-28 15:12:57 +0800 (6 months ago)  contrib/kangkai/fix-rpm2cpio
2013-03-01 10:30:05 -0600 (6 months ago)
 contrib/tzanussi/minimal-and-sysprof-update-v0
2013-03-01 15:17:24 +0800 (6 months ago)  contrib/kaikang/name-rpm-postinst
2013-03-01 16:29:09 +0200 (6 months ago)  contrib/cmuscax/apt
2013-03-01 17:36:13 +0200 (6 months ago)  contrib/cvoicu/searchHob
2013-03-01 17:45:45 +0800 (6 months ago)
 contrib/hongxu/fix-toolchain-relocation
2013-03-02 16:13:38 +0800 (6 months ago)  contrib/hongxu/fix-deb-image
2013-03-02 16:33:28 +0000 (6 months ago)  contrib/rpurdie/t4
2013-03-02 16:58:24 +0800 (6 months ago)  contrib/robert/e2fsprogs
2013-03-04 10:17:20 +0000 (6 months ago)  origin/danny-next
2013-03-04 19:57:33 +0800 (6 months ago)  contrib/hongxu/sanity-check-march
2013-03-04 23:20:27 -0600 (6 months ago)
 contrib/tzanussi/perf-parallel-make-fix-v0
2013-03-05 10:14:51 -0600 (6 months ago)  contrib/tzanussi/add-perf-3.8-v0
2013-03-05 11:14:37 +0800 (6 months ago)  contrib/robert/what
2013-03-06 14:05:19 +0800 (6 months ago)
 contrib/kangkai/sysvinit-inittab-lsb
2013-03-06 15:57:07 +0800 (6 months ago)  contrib/robert/bbs
2013-03-07 18:26:59 -0600 (6 months ago)  contrib/tzanussi/rename-perf-v0
2013-03-10 04:36:52 +0000 (5 months ago)  contrib/mattsm/master
2013-03-11 15:04:17 +0800 (5 months ago)
 contrib/hongxu/fix-toolchain-relocation-danny
2013-03-11 15:14:24 +0200 (5 months ago)  contrib/cmuscax/updates
2013-03-11 15:37:27 +0800 (5 months ago)  contrib/wenzong/yocto-layers
2013-03-11 15:40:31 +0800 (5 months ago)  contrib/wenzong/oe-layers
2013-03-11 16:07:20 +0800 (5 months ago)  contrib/kangkai/external-python
2013-03-12 08:12:10 -0700 (5 months ago)  contrib/nitin/poky_for_kiosk
2013-03-12 08:19:51 -0700 (5 months ago)  contrib/nitin/kiosk-clean
2013-03-12 09:44:23 +0800 (5 months ago)  contrib/hongxu/fix-qemu-native
2013-03-12 17:10:57 -0500 (5 months ago)  contrib/tzanussi/bump-perf-epoch
2013-03-13 10:57:48 -0500 (5 months ago)
 contrib/tzanussi/yocto-bsp-features-update
2013-03-13 11:23:58 +0200 (5 months ago)  contrib/cmuscax/nitra2
2013-03-13 13:56:07 +0800 (5 months ago)  contrib/robert/cairo
2013-03-13 14:32:50 +0800 (5 months ago)  contrib/ChenQi/rm_work
2013-03-15 15:36:00 +0800 (5 months ago)  contrib/jhuang0/d_bpn_0315_0
2013-03-15 15:47:50 +0800 (5 months ago)  contrib/jhuang0/d_bpn_0315_1
2013-03-15 17:54:02 +0200 (5 months ago)  contrib/emac/prs
2013-03-16 11:44:27 +0800 (5 months ago)  contrib/robert/bb_white
2013-03-17 22:47:04 +0000 (5 months ago)  contrib/rpurdie/t2
2013-03-18 22:58:14 -0500 (5 months ago)
 contrib/tzanussi/perf-make-pkgv-match-kernel
2013-03-19 13:53:53 +0800 (5 months ago)  contrib/ChenQi/util-linux-systemd
2013-03-19 14:48:53 +0200 (5 months ago)  contrib/cmuscax/fenrus
2013-03-19 14:56:35 +0800 (5 months ago)  contrib/hongxu/fix-multilib-rpm
2013-03-19 15:11:33 -0700 (5 months ago)  contrib/dvhart/mkefidisk
2013-03-20 10:21:10 +0800 (5 months ago)  contrib/robert/conf
2013-03-20 13:27:50 +0800 (5 months ago)  contrib/ChenQi/meta-skeleton
2013-03-20 15:42:51 +0800 (5 months ago)  contrib/robert/duplicated
2013-03-20 15:50:40 +0800 (5 months ago)  contrib/robert/duplicated_yocto
2013-03-21 13:00:02 -0700 (5 months ago)  contrib/strassek/baryon
2013-03-22 12:59:52 -0700 (5 months ago)  contrib/strassek/archiver
2013-03-25 18:02:13 +0800 (5 months ago)  contrib/kangkai/insane
2013-03-26 10:24:57 +0800 (5 months ago)  contrib/kangkai/lsb-libs
2013-03-26 10:41:01 +0800 (5 months ago)  contrib/ChenQi/init-install
2013-03-26 14:16:26 +0800 (5 months ago)  contrib/kangkai/debug-tweaks
2013-03-26 15:07:28 +0800 (5 months ago)  contrib/ChenQi/xserver-nodm
2013-03-27 15:14:14 +0200 (5 months ago)  contrib/rmoisan/upgrade-openssl
2013-03-27 16:25:02 +0800 (5 months ago)  contrib/ChenQi/psplash
2013-03-28 18:05:03 +0000 (5 months ago)  contrib/paule/staging-fix
2013-03-29 16:34:43 +0200 (5 months ago)  contrib/stefans/perf-test
2013-04-01 12:06:46 +0300 (5 months ago)  contrib/mihaip/meta-trusted
2013-04-02 05:12:38 +0300 (5 months ago)  contrib/andreeap/report
2013-04-02 11:07:11 +0800 (5 months ago)
 contrib/ChenQi/rpm-postinsts-problem
2013-04-02 15:52:35 -0700 (5 months ago)  contrib/dvhart/yocto-bsp
2013-04-03 11:39:09 -0700 (5 months ago)  contrib/dvhart/xuser
2013-04-03 14:11:12 +0800 (5 months ago)  contrib/ChenQi/sato-size
2013-04-03 15:32:11 +0800 (5 months ago)
 contrib/hongxu/fix-atompc-kernel-warn
2013-04-04 16:53:05 -0500 (5 months ago)
 contrib/tzanussi/yocto-bsp-3.8-rt-and-fixes
2013-04-05 11:57:56 -0700 (5 months ago)  contrib/dvhart/tiny
2013-04-05 16:35:37 +0200 (5 months ago)  contrib/pkj/oe-init-build-env
2013-04-08 08:25:15 -0500 (5 months ago)
 contrib/tzanussi/gst-ffmpeg-yasm-check-fix
2013-04-09 11:12:26 +0800 (4 months ago)  contrib/kangkai/libpng12
2013-04-09 12:22:53 +0200 (4 months ago)  contrib/pkj/oe-buildenv-internal
2013-04-09 13:43:39 +0800 (4 months ago)
 contrib/jhuang0/d_modphp_lamp_0409_0
2013-04-10 00:19:06 -0700 (4 months ago)  contrib/eflanagan/1.4
2013-04-10 09:48:16 -0700 (4 months ago)  contrib/zedd/kernel-aufs
2013-04-10 11:14:03 +0800 (4 months ago)  contrib/wenzong/4234
2013-04-10 17:27:02 +0800 (4 months ago)  contrib/ChenQi/postinst-logging
2013-04-10 20:55:45 -0700 (4 months ago)  contrib/zedd/yocto-1.4-fixes
2013-04-11 12:38:22 +0300 (4 months ago)  contrib/stefans/tests
2013-04-12 08:44:13 -0700 (4 months ago)  contrib/zedd/yocto-1.4-final
2013-04-12 15:33:45 -0700 (4 months ago)  contrib/strassek/docs
2013-04-12 18:49:45 +0100 (4 months ago)  contrib/paule/lconf-fix
2013-04-15 10:29:44 +0800 (4 months ago)  contrib/robert/monitor
2013-04-15 10:54:18 +0800 (4 months ago)  contrib/kangkai/rpm2cpio-segfault
2013-04-17 16:36:32 +0800 (4 months ago)  contrib/kangkai/libpam
2013-04-19 13:52:10 -0700 (4 months ago)  contrib/sgw/bastille
2013-04-23 11:12:23 +0800 (4 months ago)  contrib/ChenQi/udev-early-mount
2013-04-24 19:12:40 +0800 (4 months ago)  contrib/hongxu/fix-systemd
2013-04-25 14:51:12 +0800 (4 months ago)  contrib/wenzong/groff_sed
2013-04-25 15:03:21 +0300 (4 months ago)  contrib/stefans/perf-test2
2013-04-26 04:10:53 -0400 (4 months ago)  contrib/robert/glib
2013-04-26 05:19:42 +0300 (4 months ago)  contrib/andreeap/report2
2013-04-26 05:31:18 +0300 (4 months ago)  contrib/andreeap/report-web
2013-04-27 04:15:09 -0400 (4 months ago)  contrib/robert/hardlink
2013-04-30 11:23:16 -0700 (4 months ago)  contrib/jzhang/2342
2013-04-30 12:45:05 +0300 (4 months ago)
 contrib/bogdanm/multiclient_rebased
2013-05-03 14:13:51 -0700 (4 months ago)  contrib/sgw/save
2013-05-07 05:43:35 -0400 (4 months ago)  contrib/robert/ext4
2013-05-07 08:24:40 -0500 (4 months ago)
 contrib/tzanussi/traditional-qawarn-fix
2013-05-07 18:36:21 +0800 (4 months ago)  contrib/robert/rm_old
2013-05-08 02:25:54 -0400 (4 months ago)  contrib/robert/nohdd
2013-05-08 04:06:41 -0400 (4 months ago)  contrib/wenzong/nativesdk-libtool
2013-05-08 04:29:20 -0400 (4 months ago)  contrib/robert/fatal
2013-05-08 10:42:54 +0300 (4 months ago)  contrib/stefans/qemu-ptest1
2013-05-08 12:36:51 +0100 (4 months ago)  contrib/adamian/mc_rebased.1
2013-05-08 13:21:34 +0100 (4 months ago)  contrib/adamian/serverrefactor.1
2013-05-08 14:05:31 +0100 (4 months ago)  contrib/adamian/bbrefactor.2
2013-05-08 14:14:35 +0800 (4 months ago)  contrib/robert/python
2013-05-08 15:10:21 +0100 (4 months ago)  contrib/adamian/wip.bbrefactor.3
2013-05-08 16:36:47 +0100 (4 months ago)  contrib/adamian/mc_refactor-1
2013-05-08 16:45:05 +0100 (4 months ago)  contrib/adamian/wip_mc_refactor-1
2013-05-08 17:20:11 +0300 (4 months ago)  contrib/adinux/test1
2013-05-09 10:03:15 +0100 (3 months ago)  contrib/adamian/mc_refactor-2
2013-05-09 10:12:18 +0100 (3 months ago)  contrib/adamian/devenv-1
2013-05-09 11:12:24 +0100 (3 months ago)  contrib/ross/dylan
2013-05-09 13:50:08 +0300 (3 months ago)  contrib/adinux/test
2013-05-09 15:09:44 +0300 (3 months ago)  contrib/igrigorx/common-remote1
2013-05-09 21:44:55 -0700 (3 months ago)  contrib/zedd/kerntools-dylan
2013-05-09 21:54:35 +0000 (3 months ago)  contrib/rpurdie/t1
2013-05-10 09:45:09 -0700 (3 months ago)  contrib/stap-thread-access
2013-05-10 10:25:24 +0800 (3 months ago)  contrib/robert/nostamp
2013-05-10 13:33:08 +0800 (3 months ago)  contrib/robert/noiso
2013-05-10 13:49:10 +0800 (3 months ago)  contrib/kangkai/roothome
2013-05-10 15:32:59 +0300 (3 months ago)  contrib/igrigorx/common-remote2
2013-05-10 18:37:37 +0300 (3 months ago)  contrib/stefans/qemutests2
2013-05-10 19:36:38 +0300 (3 months ago)  contrib/stefans/qemutests4
2013-05-11 11:38:36 +0000 (3 months ago)  contrib/rpurdie/t3
2013-05-12 20:32:18 -0700 (3 months ago)  contrib/zedd/kerntools-danny
2013-05-12 20:34:52 -0700 (3 months ago)  contrib/zedd/kernel-master
2013-05-12 20:34:52 -0700 (3 months ago)  contrib/zedd/kerntools-master
2013-05-13 02:18:23 -0400 (3 months ago)  contrib/robert/qa
2013-05-13 11:06:05 +0800 (3 months ago)  contrib/robert/cachedpath
2013-05-14 11:54:41 +0100 (3 months ago)
 contrib/adamian/configurationRefactor_1
2013-05-14 15:10:23 +0100 (3 months ago)  contrib/adamian/mc_refactor-3
2013-05-14 17:21:17 +0300 (3 months ago)  contrib/bogdanm/b3812
2013-05-15 15:10:28 +0800 (3 months ago)  contrib/ChenQi/bind
2013-05-15 15:51:16 +0300 (3 months ago)  contrib/adinux/cdrtools
2013-05-15 15:51:16 +0300 (3 months ago)  contrib/adinuxcdtools_test
2013-05-15 20:04:45 +0300 (3 months ago)  contrib/stefans/qemutests3
2013-05-16 10:51:08 +0300 (3 months ago)  contrib/adinuxcdrtools_test
2013-05-16 15:33:59 +0100 (3 months ago)  contrib/configurationRefactor_2
2013-05-17 03:33:39 -0700 (3 months ago)  contrib/jzhang/cdt-remote
2013-05-17 03:58:08 -0700 (3 months ago)  contrib/jzhang/remote-YPide
2013-05-17 10:52:55 +0300 (3 months ago)  contrib/remote-wizard
2013-05-17 10:53:32 +0300 (3 months ago)  contrib/adinuxcdrtools_test3
2013-05-17 11:04:56 +0300 (3 months ago)  contrib/remote-wizard-ide
2013-05-17 11:12:11 +0300 (3 months ago)  contrib/stefans/qemu-ptest2
2013-05-17 12:33:38 +0100 (3 months ago)
 contrib/adamian/configurationRefactor_2
2013-05-17 15:25:28 +0300 (3 months ago)  contrib/stefans/qemutests1
2013-05-18 10:31:53 +0300 (3 months ago)  contrib/rpurdie/t6
2013-05-21 15:35:28 -0700 (3 months ago)  contrib/sgw/vte
2013-05-21 15:39:12 -0700 (3 months ago)  contrib/sgw/updates
2013-05-22 15:43:58 +0100 (3 months ago)  contrib/adamian/mc_refactor-5
2013-05-23 12:36:52 +0800 (3 months ago)
 contrib/ChenQi/postinst-logging-reimplementation
2013-05-24 17:47:12 +0300 (3 months ago)  contrib/adinuxbastille
2013-05-24 17:51:39 +0800 (3 months ago)  contrib/hongxu/fix-cracklib
2013-05-27 15:15:15 +0300 (3 months ago)  contrib/bogdanm/work
2013-05-27 17:25:40 +0300 (3 months ago)  contrib/bogdanm/b3868
2013-05-27 19:37:21 +0800 (3 months ago)  contrib/hongxu/fix-scons
2013-05-28 13:36:21 +0800 (3 months ago)  contrib/ChenQi/tinylogin-busybox
2013-05-28 14:32:48 +0100 (3 months ago)  contrib/adamian/mc_ref_28may_1
2013-05-28 19:08:27 +0100 (3 months ago)  contrib/adamian/mc_ref_28may_2
2013-05-29 03:23:17 -0400 (3 months ago)  contrib/jhuang0/d_lrzsz_0529_0
2013-05-29 04:08:05 -0400 (3 months ago)  contrib/jhuang0/d_lrzsz_0529_1
2013-05-29 04:15:17 -0400 (3 months ago)  contrib/jhuang0/d_lrzsz_0529_2
2013-05-29 05:09:14 -0400 (3 months ago)
 contrib/jhuang0/d_multilib_image_0529_0
2013-05-29 05:15:01 -0400 (3 months ago)
 contrib/jhuang0/d_multilib_image_0529_1
2013-05-29 13:00:08 +0100 (3 months ago)  contrib/ross/sato
2013-05-29 17:34:10 +0800 (3 months ago)  contrib/ning/znbug4558
2013-05-29 17:37:32 +0800 (3 months ago)  contrib/hongxu/support-fuse
2013-05-29 18:54:57 +0100 (3 months ago)  contrib/adamian/mc_ref_29may
2013-05-29 22:52:19 -0400 (3 months ago)  contrib/wenzong/qt-mobility
2013-05-29 22:56:01 -0500 (3 months ago)  contrib/mhatle/misc
2013-05-30 14:29:41 +0800 (3 months ago)  contrib/ChenQi/busybox-individual
2013-05-31 13:33:26 +0200 (3 months ago)  contrib/pkj/makedevs
2013-06-03 10:56:10 +0800 (3 months ago)  contrib/ning/bug4558
2013-06-03 14:54:23 +0300 (3 months ago)  contrib/bogdanm/work2
2013-06-03 15:16:46 +0800 (3 months ago)  contrib/szhang/glib
2013-06-03 18:21:28 +0100 (3 months ago)  contrib/bbarrosp/b1804
2013-06-04 06:52:07 -0400 (3 months ago)  contrib/jhuang0/d_grub097_0604_0
2013-06-04 06:57:24 -0400 (3 months ago)  contrib/jhuang0/d_grub097_0604_1
2013-06-04 15:26:34 +0300 (3 months ago)  contrib/adinux/working-bastille
2013-06-05 10:10:37 +0800 (3 months ago)  contrib/robert/refactor
2013-06-05 10:35:47 +0800 (3 months ago)  contrib/yizhao/bug4595
2013-06-05 13:55:26 +0800 (3 months ago)  contrib/roy/socat
2013-06-05 15:25:25 +0800 (3 months ago)  contrib/szhang/doc
2013-06-06 14:14:26 +0800 (3 months ago)  contrib/hongxu/fix-init-live
2013-06-06 14:26:00 +0800 (3 months ago)  contrib/hongxu/fix-ddiamge
2013-06-06 14:57:21 +0800 (3 months ago)  contrib/szhang/white
2013-06-06 15:05:13 +0800 (3 months ago)  contrib/roy/socat-v1
2013-06-06 17:11:32 +0800 (3 months ago)  contrib/wenzong/chkconfig
2013-06-07 09:16:16 +0800 (3 months ago)  contrib/roy/openssh
2013-06-07 10:27:06 +0800 (3 months ago)  contrib/roy/ppp
2013-06-07 13:31:35 +0800 (3 months ago)  contrib/roy/trace-cmd
2013-06-07 13:46:23 +0800 (3 months ago)  contrib/wenzong/cracklib
2013-06-07 14:38:19 +0300 (3 months ago)  contrib/bogdanm/b3868_2nd

Ross

--047d7bdc192ca1533404e471c2e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 20 August 2013 21:55, Flanagan, Elizabeth <span dir=3D"=
ltr">&lt;<a href=3D"mailto:elizabeth.flanagan@intel.com" target=3D"_blank">=
elizabeth.flanagan@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_e=
xtra"><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">If you have left over branches hanging out in poky-contrib=
 that are no<br>


longer needed, could you take a few moments this week and delete them?<br>
=C2=A0Poky-contrib is taking a lot longer than necessary to pull down and<b=
r>
clean up is long overdue. Thanks!<br></blockquote><div><br></div><div>For w=
hat it&#39;s worth, here&#39;s a list of poky-contrib branches that are old=
er than 3 months. Name and shame!</div><div><br></div><div><div>2009-08-27 =
16:53:26 -0500 (4 years ago) =C2=A0contrib/mturquette/zoom2<br>

</div><div>2009-11-20 10:36:19 +0100 (3 years, 9 months ago) =C2=A0contrib/=
esben/purple-powerpc<br></div><div>2009-12-16 10:33:27 +0100 (3 years, 8 mo=
nths ago) =C2=A0contrib/esben/master/powerpc</div><div>2010-07-21 13:42:49 =
-0400 (3 years, 1 month ago) =C2=A0contrib/jdike/fixes<br>

</div><div>2010-08-20 23:41:11 -0400 (3 years ago) =C2=A0contrib/jbj/rpm</d=
iv><div>2010-09-03 11:39:46 -0600 (3 years ago) =C2=A0contrib/polk/siteconf=
ig</div><div>2010-09-09 17:49:11 +0800 (2 years, 11 months ago) =C2=A0contr=
ib/xf/distro</div>

<div>2010-12-07 23:50:05 -0500 (2 years, 8 months ago) =C2=A0contrib/kernel=
-dev</div><div>2010-12-11 14:34:38 -0800 (2 years, 8 months ago) =C2=A0cont=
rib/nitin/rpm_failure_with_autoconf_upgrade</div><div>2010-12-16 13:00:55 -=
0800 (2 years, 8 months ago) =C2=A0contrib/srifenbark/kernel</div>

<div>2010-12-17 19:54:01 -0800 (2 years, 8 months ago) =C2=A0contrib/builds=
/milestone</div><div>2010-12-20 07:41:03 -0800 (2 years, 8 months ago) =C2=
=A0contrib/builds/milestone_nitin</div><div>2010-12-20 15:01:57 -0800 (2 ye=
ars, 8 months ago) =C2=A0contrib/kraj/gcc-update</div>

<div>2011-01-04 03:41:55 -0800 (2 years, 8 months ago) =C2=A0contrib/nitin/=
perl-5.12.2_master</div><div>2011-01-04 10:25:39 -0600 (2 years, 8 months a=
go) =C2=A0contrib/mhatle/initenv</div><div>2011-01-05 10:23:07 -0800 (2 yea=
rs, 8 months ago) =C2=A0contrib/nitin/perl-5.12.2</div>

<div>2011-01-06 04:25:40 -0800 (2 years, 7 months ago) =C2=A0contrib/nitin/=
perl-5.12.2_rebased_to_master</div><div>2011-01-14 15:45:51 -0800 (2 years,=
 7 months ago) =C2=A0contrib/jzhang/gmae</div><div>2011-01-18 16:45:31 -080=
0 (2 years, 7 months ago) =C2=A0contrib/jzhang/bitbake_i686</div>

<div>2011-01-21 09:53:53 -0800 (2 years, 7 months ago) =C2=A0contrib/nitin/=
dso_linking_change</div><div>2011-01-25 10:52:31 -0500 (2 years, 7 months a=
go) =C2=A0contrib/zedd/kernel-stable</div><div>2011-01-31 12:03:54 -0800 (2=
 years, 7 months ago) =C2=A0contrib/nitin/khem_gcc_nitin</div>

<div>2011-02-05 03:34:42 -0800 (2 years, 7 months ago) =C2=A0contrib/nitin/=
gcc-4.5.2_new</div><div>2011-02-08 10:07:14 -0800 (2 years, 6 months ago) =
=C2=A0contrib/nitin/mklibs</div><div>2011-02-08 11:48:20 -0800 (2 years, 6 =
months ago) =C2=A0contrib/jzhang/i686</div>

<div>2011-02-08 23:10:13 -0800 (2 years, 6 months ago) =C2=A0contrib/jzhang=
/adt-repo</div><div>2011-02-14 16:33:58 -0800 (2 years, 6 months ago) =C2=
=A0contrib/nitin/gcc-4.5.2</div><div>2011-02-17 16:11:05 -0800 (2 years, 6 =
months ago) =C2=A0contrib/eflanagan/meta-hamradio</div>

<div>2011-02-24 12:43:00 -0600 (2 years, 6 months ago) =C2=A0contrib/mhatle=
/qemu</div><div>2011-03-01 06:46:23 -0800 (2 years, 6 months ago) =C2=A0con=
trib/nitin/misc1</div><div>2011-03-03 10:03:41 -0600 (2 years, 6 months ago=
) =C2=A0contrib/srifenbark/docs</div>

<div>2011-03-16 09:43:00 -0700 (2 years, 5 months ago) =C2=A0contrib/dvhart=
/bernard/modules</div><div>2011-03-16 20:18:55 -0700 (2 years, 5 months ago=
) =C2=A0contrib/dvhart/bernard/n450</div><div>2011-03-17 09:58:35 -0500 (2 =
years, 5 months ago) =C2=A0contrib/mhatle/qemu-workaround</div>

<div>2011-03-17 13:42:46 -0500 (2 years, 5 months ago) =C2=A0contrib/aalons=
o/prebuilt-sdk</div><div>2011-03-18 10:28:08 -0700 (2 years, 5 months ago) =
=C2=A0contrib/dvhart/bernard/base</div><div>2011-03-18 10:54:27 -0600 (2 ye=
ars, 5 months ago) =C2=A0contrib/poky-work</div>

<div>2011-03-21 15:57:20 -0500 (2 years, 5 months ago) =C2=A0contrib/meta-i=
ntel-sugarbay_gfx<br></div><div>2011-03-28 17:26:05 -0500 (2 years, 5 month=
s ago) =C2=A0contrib/srifenbark/test</div><div>2011-03-31 13:41:51 -0500 (2=
 years, 5 months ago) =C2=A0contrib/srifenbark/bsp-work</div>

<div>2011-04-04 05:51:57 -0700 (2 years, 5 months ago) =C2=A0contrib/nitin/=
bug780</div><div>2011-04-04 10:15:17 -0700 (2 years, 5 months ago) =C2=A0co=
ntrib/eflanagan/meta-intel</div><div>2011-04-08 18:11:05 -0500 (2 years, 4 =
months ago) =C2=A0contrib/aalonso/xilinx-microblaze</div>

<div>2011-04-11 19:11:50 +0100 (2 years, 4 months ago) =C2=A0contrib/paule/=
mm-demo-fixes</div><div>2011-04-14 11:43:36 -0500 (2 years, 4 months ago) =
=C2=A0contrib/srifenbark/qs-work</div><div>2011-04-14 16:22:05 +0100 (2 yea=
rs, 4 months ago) =C2=A0contrib/paule/ipxe</div>

<div>2011-04-15 07:33:49 -0500 (2 years, 4 months ago) =C2=A0contrib/srifen=
bark/adt-work</div><div>2011-04-15 07:57:12 -0500 (2 years, 4 months ago) =
=C2=A0contrib/srifenbark/kernel-work</div><div>2011-04-19 16:58:57 -0700 (2=
 years, 4 months ago) =C2=A0contrib/dvhart/bernard/rt</div>

<div>2011-04-20 16:24:13 +0100 (2 years, 4 months ago) =C2=A0contrib/paule/=
meta-intel-ipxe</div><div>2011-04-21 22:14:56 -0700 (2 years, 4 months ago)=
 =C2=A0contrib/nitin/gcc-4.6.0</div><div>2011-04-27 12:30:48 -0500 (2 years=
, 4 months ago) =C2=A0contrib/srifenbark/poky-work</div>

<div>2011-04-28 14:24:50 -0500 (2 years, 4 months ago) =C2=A0contrib/mhatle=
/macosx/oe-core</div><div>2011-04-28 14:29:57 -0700 (2 years, 4 months ago)=
 =C2=A0contrib/dvhart/bernard/kernel</div><div>2011-04-28 14:36:14 -0500 (2=
 years, 4 months ago) =C2=A0contrib/mhatle/macosx/bitbake</div>

<div>2011-05-04 15:06:36 +0100 (2 years, 4 months ago) =C2=A0contrib/aalons=
o/master</div><div>2011-05-10 13:08:18 -0500 (2 years, 3 months ago) =C2=A0=
contrib/aalonso/external-toolchain</div><div>2011-05-17 21:23:17 -0700 (2 y=
ears, 3 months ago) =C2=A0contrib/jzhang/oe-rename</div>

<div>2011-05-18 14:53:21 -0700 (2 years, 3 months ago) =C2=A0contrib/dvhart=
/u-boot</div><div>2011-05-20 09:22:18 -0700 (2 years, 3 months ago) =C2=A0c=
ontrib/stage/bernard</div><div>2011-05-24 15:33:54 -0700 (2 years, 3 months=
 ago) =C2=A0contrib/dvhart/build</div>

<div>2011-05-25 10:25:59 -0700 (2 years, 3 months ago) =C2=A0contrib/dvhart=
/bernard/docs</div><div>2011-05-25 14:45:28 -0700 (2 years, 3 months ago) =
=C2=A0contrib/dvhart/docs</div><div>2011-05-25 15:54:26 -0700 (2 years, 3 m=
onths ago) =C2=A0contrib/dvhart/filesextrapaths</div>

<div>2011-05-25 21:54:35 -0700 (2 years, 3 months ago) =C2=A0contrib/dvhart=
/yocto/beagle</div><div>2011-06-01 17:51:06 +0800 (2 years, 3 months ago) =
=C2=A0contrib/jingdonglu/distro</div><div>2011-06-02 16:00:21 -0700 (2 year=
s, 3 months ago) =C2=A0origin/1.1_M1</div>

<div>2011-06-08 19:24:28 +0800 (2 years, 2 months ago) =C2=A0contrib/xiaofe=
ng/meta-qt3</div><div>2011-06-20 23:52:15 -0700 (2 years, 2 months ago) =C2=
=A0contrib/dvhart/beagle</div><div>2011-06-22 13:18:59 +0800 (2 years, 2 mo=
nths ago) =C2=A0contrib/xiaofeng/task-core-lsb</div>

<div>2011-06-24 15:57:12 +0800 (2 years, 2 months ago) =C2=A0contrib/wenzon=
g/ccache</div><div>2011-06-27 14:05:02 -0700 (2 years, 2 months ago) =C2=A0=
contrib/dvhart/pm</div><div>2011-06-29 10:22:55 -0500 (2 years, 2 months ag=
o) =C2=A0contrib/mhatle/fix-recipe</div>

<div>2011-06-29 10:23:05 -0500 (2 years, 2 months ago) =C2=A0contrib/mhatle=
/perms</div><div>2011-06-29 12:16:07 -0700 (2 years, 2 months ago) =C2=A0co=
ntrib/dvhart/kernel</div><div>2011-06-29 14:18:20 -0700 (2 years, 2 months =
ago) =C2=A0contrib/jzhang/aclocal</div>

<div>2011-06-30 14:43:43 -0700 (2 years, 2 months ago) =C2=A0contrib/image-=
creator</div><div>2011-07-07 16:17:53 -0700 (2 years, 1 month ago) =C2=A0co=
ntrib/jzhang/1195</div><div>2011-07-11 09:27:17 -0500 (2 years, 1 month ago=
) =C2=A0contrib/tzanussi/meta-m2m.v0</div>

<div>2011-07-13 15:07:29 -0500 (2 years, 1 month ago) =C2=A0contrib/mhatle/=
ncurses</div><div>2011-07-14 14:02:16 -0700 (2 years, 1 month ago) =C2=A0co=
ntrib/dvhart/bb-perf</div><div>2011-07-15 14:49:40 -0700 (2 years, 1 month =
ago) =C2=A0contrib/dvhart/ofono</div>

<div>2011-07-15 22:33:08 -0700 (2 years, 1 month ago) =C2=A0contrib/dvhart/=
sudo</div><div>2011-07-16 01:00:11 -0500 (2 years, 1 month ago) =C2=A0contr=
ib/mhatle/ml</div><div>2011-07-18 16:41:26 +0100 (2 years, 1 month ago) =C2=
=A0contrib/paule/remotelayers</div>

<div>2011-07-19 22:20:40 -0500 (2 years, 1 month ago) =C2=A0contrib/mhatle/=
oe-core/ml</div><div>2011-07-20 10:42:28 +0800 (2 years, 1 month ago) =C2=
=A0contrib/wenzong/cronie_pam</div><div>2011-07-25 11:52:10 -0700 (2 years,=
 1 month ago) =C2=A0contrib/jzhang/hob-bugs<br>

</div><div>2011-07-26 11:18:27 -0700 (2 years, 1 month ago) =C2=A0contrib/n=
itin/ml3.x32</div><div>2011-07-26 16:21:59 -0500 (2 years, 1 month ago) =C2=
=A0contrib/mhatle/ml_fixes</div><div>2011-07-26 17:18:20 -0700 (2 years, 1 =
month ago) =C2=A0contrib/jzhang/preference-fixes</div>

<div>2011-07-29 21:00:08 -0500 (2 years, 1 month ago) =C2=A0contrib/mhatle/=
master_under_test</div><div>2011-08-01 19:09:54 -0500 (2 years, 1 month ago=
) =C2=A0contrib/mhatle/oecore/sdk-fix-WIP</div><div>2011-08-04 11:36:52 -05=
00 (2 years, 1 month ago) =C2=A0contrib/mhatle/bug-libzypp</div>

<div>2011-08-08 02:23:15 -0700 (2 years ago) =C2=A0contrib/nitin/x32.rebase=
d<br></div><div>2011-08-08 13:50:39 +0800 (2 years ago) =C2=A0contrib/tlin1=
00/fixbug1129</div><div>2011-08-08 14:14:06 -0700 (2 years ago) =C2=A0contr=
ib/jzhang/1354</div>

<div>2011-08-08 14:17:03 +0800 (2 years ago) =C2=A0contrib/tlin/bug1129</di=
v><div>2011-08-09 12:40:37 +0800 (2 years ago) =C2=A0contrib/tlin100/bug112=
9</div><div>2011-08-09 16:22:17 -0700 (2 years ago) =C2=A0contrib/dvhart/rt=
</div><div>

2011-08-10 16:57:32 +0800 (2 years ago) =C2=A0contrib/xiaofeng/rootfs_rpm</=
div><div>2011-08-11 19:38:26 -0500 (2 years ago) =C2=A0contrib/mhatle/fix_1=
352</div><div>2011-08-11 20:06:43 -0700 (2 years ago) =C2=A0contrib/dvhart/=
rt-oe</div>

<div>2011-08-11 20:09:46 -0500 (2 years ago) =C2=A0contrib/mhatle/fix_1366<=
/div><div>2011-08-12 07:59:45 -0700 (2 years ago) =C2=A0contrib/dvhart/rt-y=
octo</div><div>2011-08-12 09:35:07 -0700 (2 years ago) =C2=A0contrib/dvhart=
/rt-oe-fix</div>

<div>2011-08-12 17:41:06 +0800 (2 years ago) =C2=A0contrib/tlin100/bug1129-=
v2</div><div>2011-08-16 21:11:44 -0700 (2 years ago) =C2=A0contrib/dvhart/p=
owerpc</div><div>2011-08-17 15:55:17 +0800 (2 years ago) =C2=A0contrib/wenz=
ong/perl</div>

<div>2011-08-18 11:43:34 -0700 (2 years ago) =C2=A0contrib/dvhart/build-fix=
es</div><div>2011-08-18 15:59:58 +0800 (2 years ago) =C2=A0contrib/jingdong=
lu/bug686</div><div>2011-08-19 15:02:10 -0700 (2 years ago) =C2=A0contrib/d=
vhart/tune-cortexa8</div>

<div>2011-08-19 15:15:17 -0700 (2 years ago) =C2=A0contrib/dvhart/beagleboa=
rd-hardfp</div><div>2011-08-19 17:37:56 +0800 (2 years ago) =C2=A0contrib/j=
ingdonglu/bug817</div><div>2011-08-20 17:52:00 -0700 (2 years ago) =C2=A0co=
ntrib/xiaofeng/qt4-x11-demo-image</div>

<div>2011-08-22 11:03:46 +0800 (2 years ago) =C2=A0contrib/wenzong/1252</di=
v><div>2011-08-22 14:14:03 +0800 (2 years ago) =C2=A0contrib/wenzong/update=
_cronie</div><div>2011-08-24 15:36:22 +0800 (2 years ago) =C2=A0contrib/jin=
gdonglu/bug686-v2</div>

<div>2011-08-25 11:19:53 -0700 (2 years ago) =C2=A0contrib/jzhang/1396</div=
><div>2011-08-31 11:55:41 -0700 (2 years ago) =C2=A0contrib/jzhang/1396-reo=
pen</div><div>2011-08-31 11:55:41 -0700 (2 years ago) =C2=A0contrib/jzhang/=
1396-reopne</div>

<div>2011-08-31 16:20:52 -0700 (2 years ago) =C2=A0contrib/dvhart/qemu-audi=
o</div><div>2011-09-05 13:18:51 +0800 (2 years ago) =C2=A0contrib/xiaofeng/=
qt4e-demo-image</div><div>2011-09-06 09:27:40 -0700 (2 years ago) =C2=A0con=
trib/dvhart/beagleboard</div>

<div>2011-09-06 09:43:02 -0700 (2 years ago) =C2=A0contrib/dvhart/noemenlow=
</div><div>2011-09-09 09:04:17 -0700 (1 year, 11 months ago) =C2=A0contrib/=
nitin/btrfs</div><div>2011-09-14 19:52:08 -0700 (1 year, 11 months ago) =C2=
=A0contrib/stage/rc2</div>

<div>2011-09-15 15:35:20 -0700 (1 year, 11 months ago) =C2=A0contrib/dvhart=
/initrdscripts</div><div>2011-09-16 14:26:33 -0700 (1 year, 11 months ago) =
=C2=A0origin/1.1_M4</div><div>2011-09-20 19:26:12 -0500 (1 year, 11 months =
ago) =C2=A0contrib/mhatle/rpm.deps</div>

<div>2011-09-27 10:29:45 +0800 (1 year, 11 months ago) =C2=A0contrib/wenzon=
g/mesa-xlib</div><div>2011-09-28 13:24:56 -0700 (1 year, 11 months ago) =C2=
=A0contrib/jzhang/OECORE_ACLOCAL_OPTS</div><div>2011-10-10 13:27:45 +0800 (=
1 year, 10 months ago) =C2=A0contrib/xiaofeng/poky_windriver</div>

<div>2011-10-11 16:54:28 +0800 (1 year, 10 months ago) =C2=A0contrib/wenzon=
g/distro_tracking_fields</div><div>2011-10-12 22:03:01 -0500 (1 year, 10 mo=
nths ago) =C2=A0contrib/mhatle/pseudo_wip</div><div>2011-10-13 10:12:23 +08=
00 (1 year, 10 months ago) =C2=A0contrib/wenzong/qt4_trailingslash</div>

<div>2011-10-17 15:20:58 +0100 (1 year, 10 months ago) =C2=A0contrib/rpurdi=
e/wipqueue</div><div>2011-10-17 18:10:56 -0700 (1 year, 10 months ago) =C2=
=A0contrib/nitin/gmp</div><div>2011-10-20 06:22:55 -0700 (1 year, 10 months=
 ago) =C2=A0contrib/srifenbark/docs-update</div>

<div>2011-10-20 13:52:04 +0800 (1 year, 10 months ago) =C2=A0contrib/wenzon=
g/update_pkgs</div><div>2011-10-20 15:40:41 -0700 (1 year, 10 months ago) =
=C2=A0contrib/nitin/python</div><div>2011-10-20 21:46:03 -0700 (1 year, 10 =
months ago) =C2=A0contrib/nitin/perl</div>

<div>2011-10-27 10:38:38 -0500 (1 year, 10 months ago) =C2=A0contrib/tzanus=
si/old-atom-tuning-patch</div><div>2011-11-02 14:12:17 -0500 (1 year, 10 mo=
nths ago) =C2=A0contrib/mhatle/pseudo-unload</div><div>2011-11-07 14:21:22 =
-0600 (1 year, 9 months ago) =C2=A0contrib/tzanussi/newtune-v0</div>

<div>2011-11-07 20:07:01 +0800 (1 year, 9 months ago) =C2=A0contrib/xiaofen=
g/update_libarchive</div><div>2011-11-07 20:35:09 +0800 (1 year, 9 months a=
go) =C2=A0contrib/xiaofeng/qmmp</div><div>2011-11-08 19:42:29 +0800 (1 year=
, 9 months ago) =C2=A0contrib/xiaofeng/gtk+-direcfb_local</div>

<div>2011-11-10 12:09:00 -0600 (1 year, 9 months ago) =C2=A0contrib/mhatle/=
rpm_base</div><div>2011-11-11 19:00:31 +0800 (1 year, 9 months ago) =C2=A0c=
ontrib/xiaofeng/update_libx11-diet</div><div>2011-11-17 18:42:36 +0800 (1 y=
ear, 9 months ago) =C2=A0contrib/xiaofeng/update_lix11-trim</div>

<div>2011-11-21 16:30:56 +0800 (1 year, 9 months ago) =C2=A0contrib/xiaofen=
g/update_libx11-trim</div><div>2011-11-23 23:35:43 -0800 (1 year, 9 months =
ago) =C2=A0contrib/dvhart/efi/rfc</div><div>2011-11-28 15:24:33 +0800 (1 ye=
ar, 9 months ago) =C2=A0contrib/wenzong/distro_tracking_fields_update</div>

<div>2011-11-29 09:39:12 +0800 (1 year, 9 months ago) =C2=A0contrib/wenzong=
/update_tracking_fields</div><div>2011-11-29 16:09:18 +0800 (1 year, 9 mont=
hs ago) =C2=A0contrib/wenzong/autotool_nativesdk</div><div>2011-11-30 11:16=
:22 -0800 (1 year, 9 months ago) =C2=A0contrib/dvhart/initramfs</div>

<div>2011-11-30 16:31:46 +0800 (1 year, 9 months ago) =C2=A0contrib/wenzong=
/1603</div><div>2011-12-05 23:00:34 +0000 (1 year, 9 months ago) =C2=A0cont=
rib/purdie/useradd4</div><div>2011-12-06 09:43:55 +0800 (1 year, 9 months a=
go) =C2=A0contrib/xiaofeng/gtk+-directfb</div>

<div>2011-12-06 14:45:23 -0800 (1 year, 8 months ago) =C2=A0contrib/eflanag=
an/license_m1</div><div>2011-12-07 03:06:45 -0800 (1 year, 8 months ago) =
=C2=A0contrib/eflanagan/consolidated_license</div><div>2011-12-08 10:00:45 =
-0600 (1 year, 8 months ago) =C2=A0contrib/mhatle/poky-rename</div>

<div>2011-12-08 16:59:05 +0800 (1 year, 8 months ago) =C2=A0contrib/fengxia=
h/hob2</div><div>2011-12-09 14:40:15 -0800 (1 year, 8 months ago) =C2=A0con=
trib/nitin/x32+1</div><div>2011-12-10 08:46:07 -0800 (1 year, 8 months ago)=
 =C2=A0contrib/eflanagan/license_1819</div>

<div>2011-12-12 14:56:57 -0800 (1 year, 8 months ago) =C2=A0contrib/nitin/x=
32</div><div>2011-12-13 12:05:29 -0800 (1 year, 8 months ago) =C2=A0origin/=
1.2_M1</div><div>2011-12-14 12:39:14 -0800 (1 year, 8 months ago) =C2=A0con=
trib/josh/contamination</div>

<div>2011-12-15 21:48:04 -0800 (1 year, 8 months ago) =C2=A0contrib/dvhart/=
mtools</div><div>2011-12-16 12:20:31 -0800 (1 year, 8 months ago) =C2=A0con=
trib/dvhart/tiny-dbg</div><div>2011-12-19 13:45:51 -0800 (1 year, 8 months =
ago) =C2=A0contrib/eflanagan/manifest</div>

<div>2011-12-20 16:28:49 +0800 (1 year, 8 months ago) =C2=A0contrib/fengxia=
h/hob2-v0.6</div><div>2011-12-20 22:35:18 +0000 (1 year, 8 months ago) =C2=
=A0origin/bernard</div><div>2011-12-21 11:19:43 -0800 (1 year, 8 months ago=
) =C2=A0contrib/dvhart/tiny-v2</div>

<div>2011-12-22 18:49:52 -0600 (1 year, 8 months ago) =C2=A0contrib/mhatle/=
bitbake-runtask</div><div>2011-12-22 18:58:17 -0600 (1 year, 8 months ago) =
=C2=A0contrib/mhatle/misc-fixes</div><div>2011-12-23 00:40:55 -0800 (1 year=
, 8 months ago) =C2=A0contrib/nitin/edison</div>

<div>2011-12-27 11:30:09 -0800 (1 year, 8 months ago) =C2=A0contrib/nitin/a=
utomake_upgrade</div><div>2011-12-28 15:28:20 -0800 (1 year, 8 months ago) =
=C2=A0contrib/dvhart/tiny-v3</div><div>2012-01-02 12:31:08 -0800 (1 year, 8=
 months ago) =C2=A0contrib/nitin/upgrades+fixes</div>

<div>2012-01-06 12:17:42 -0800 (1 year, 7 months ago) =C2=A0contrib/jzhang/=
sysroot</div><div>2012-01-11 15:09:06 +0800 (1 year, 7 months ago) =C2=A0co=
ntrib/wenzong/1590</div><div>2012-01-11 23:53:32 +0000 (1 year, 7 months ag=
o) =C2=A0origin/1.2_M2</div>

<div>2012-01-12 14:31:11 +0800 (1 year, 7 months ago) =C2=A0contrib/wenzong=
/upd_dtf</div><div>2012-01-13 13:06:35 -0800 (1 year, 7 months ago) =C2=A0c=
ontrib/eflanagan/license</div><div>2012-01-13 17:13:19 +0800 (1 year, 7 mon=
ths ago) =C2=A0contrib/xiaofeng/gtk-directfb</div>

<div>2012-01-16 13:57:14 -0800 (1 year, 7 months ago) =C2=A0contrib/nitin/g=
rub-efi</div><div>2012-01-16 23:47:23 +0800 (1 year, 7 months ago) =C2=A0co=
ntrib/zumeng/lttng-2.0</div><div>2012-01-20 15:14:45 +0800 (1 year, 7 month=
s ago) =C2=A0contrib/zumeng/rspro-conf</div>

<div>2012-01-23 11:57:22 -0800 (1 year, 7 months ago) =C2=A0contrib/nitin/g=
cc-multilib</div><div>2012-01-24 21:13:56 -0800 (1 year, 7 months ago) =C2=
=A0contrib/dvhart/bug/1852</div><div>2012-01-26 17:43:36 -0600 (1 year, 7 m=
onths ago) =C2=A0contrib/mhatle/cross_prelink</div>

<div>2012-01-30 11:26:26 -0800 (1 year, 7 months ago) =C2=A0contrib/josh/de=
bian</div><div>2012-01-30 11:27:27 -0800 (1 year, 7 months ago) =C2=A0contr=
ib/josh/init</div><div>2012-01-30 13:28:22 -0800 (1 year, 7 months ago) =C2=
=A0contrib/nitin/bsp/pegasus</div>

<div>2012-01-30 21:11:44 -0800 (1 year, 7 months ago) =C2=A0contrib/jzhang/=
adt-installer</div><div>2012-02-02 14:54:23 -0800 (1 year, 7 months ago) =
=C2=A0contrib/eflanagan/spdx</div><div>2012-02-03 08:58:50 -0800 (1 year, 7=
 months ago) =C2=A0contrib/dvhart/efi/dev</div>

<div>2012-02-14 09:42:59 +0800 (1 year, 6 months ago) =C2=A0contrib/wenzong=
/1934</div><div>2012-02-14 09:54:32 +0800 (1 year, 6 months ago) =C2=A0cont=
rib/wenzong/1786</div><div>2012-02-14 13:27:54 +0000 (1 year, 6 months ago)=
 =C2=A0contrib/paule/buildhistory-fix4</div>

<div>2012-02-21 21:40:34 -0800 (1 year, 6 months ago) =C2=A0contrib/nitin/g=
cc-multilib2</div><div>2012-02-21 22:35:18 -0800 (1 year, 6 months ago) =C2=
=A0contrib/nitin/gcc-multilib-for-push</div><div>2012-02-22 21:29:40 -0800 =
(1 year, 6 months ago) =C2=A0contrib/dvhart/osts-kernel-lab</div>

<div>2012-02-24 14:06:23 -0800 (1 year, 6 months ago) =C2=A0contrib/eflanag=
an/license_fixes</div><div>2012-02-28 16:50:28 +0800 (1 year, 6 months ago)=
 =C2=A0contrib/jingdonglu/bug1487</div><div>2012-02-29 13:12:13 +0000 (1 ye=
ar, 6 months ago) =C2=A0origin/1.2_M3</div>

<div>2012-03-05 11:51:46 -0800 (1 year, 6 months ago) =C2=A0contrib/jasonx.=
l.cawood/bsptool</div><div>2012-03-06 23:57:47 -0800 (1 year, 5 months ago)=
 =C2=A0contrib/dvhart/bug/2036</div><div>2012-03-11 23:21:51 -0700 (1 year,=
 5 months ago) =C2=A0contrib/eflanagan/cedartrail-pvr</div>

<div>2012-03-13 12:14:13 -0700 (1 year, 5 months ago) =C2=A0contrib/dvhart/=
bug1806</div><div>2012-03-14 14:01:58 +0800 (1 year, 5 months ago) =C2=A0co=
ntrib/wenzong/upd-ccache-chkconfig</div><div>2012-03-14 18:54:08 -0700 (1 y=
ear, 5 months ago) =C2=A0contrib/nitin/gcc-multilib-2</div>

<div>2012-03-14 18:59:33 -0700 (1 year, 5 months ago) =C2=A0contrib/nitin/g=
cc-multilib-2-for-push</div><div>2012-03-15 11:30:35 +0000 (1 year, 5 month=
s ago) =C2=A0contrib/rpurdie/wip2</div><div>2012-03-15 16:29:42 -0700 (1 ye=
ar, 5 months ago) =C2=A0contrib/nitin/gcc-multilib-3</div>

<div>2012-03-23 09:55:23 -0700 (1 year, 5 months ago) =C2=A0contrib/nitin/s=
dk-rpath</div><div>2012-03-23 15:02:34 -0700 (1 year, 5 months ago) =C2=A0c=
ontrib/yshi/1487</div><div>2012-03-23 16:03:23 -0700 (1 year, 5 months ago)=
 =C2=A0contrib/eflanagan/incompatible_license</div>

<div>2012-03-23 21:52:05 -0700 (1 year, 5 months ago) =C2=A0contrib/nitin/b=
ugfix</div><div>2012-03-26 14:11:15 -0700 (1 year, 5 months ago) =C2=A0cont=
rib/jzhang/multilib-rpm-fix</div><div>2012-04-03 15:01:31 -0500 (1 year, 5 =
months ago) =C2=A0contrib/mhatle/tunings</div>

<div>2012-04-03 21:04:03 +0100 (1 year, 5 months ago) =C2=A0contrib/rpurdie=
/python</div><div>2012-04-04 10:05:05 -0700 (1 year, 5 months ago) =C2=A0co=
ntrib/dvhart/bug2236</div><div>2012-04-04 10:33:09 -0700 (1 year, 5 months =
ago) =C2=A0contrib/sgarman/shadow-upgrade</div>

<div>2012-04-04 10:59:36 -0700 (1 year, 5 months ago) =C2=A0contrib/dvhart/=
syslinux</div><div>2012-04-05 14:24:43 -0700 (1 year, 5 months ago) =C2=A0c=
ontrib/dvhart/scripts</div><div>2012-04-06 15:20:05 -0700 (1 year, 4 months=
 ago) =C2=A0contrib/dvhart/skeleton</div>

<div>2012-04-09 14:43:44 -0700 (1 year, 4 months ago) =C2=A0contrib/dvhart/=
distro-tracking</div><div>2012-04-09 15:01:16 -0700 (1 year, 4 months ago) =
=C2=A0contrib/yshi/1487v2</div><div>2012-04-09 15:40:12 +0800 (1 year, 4 mo=
nths ago) =C2=A0contrib/xiaofeng/multilib</div>

<div>2012-04-09 16:43:39 -0700 (1 year, 4 months ago) =C2=A0contrib/eflanag=
an/meta-mozilla</div><div>2012-04-09 17:29:21 -0500 (1 year, 4 months ago) =
=C2=A0contrib/mhatle/mips-tune</div><div>2012-04-10 19:07:41 +0300 (1 year,=
 4 months ago) =C2=A0contrib/ag/js</div>

<div>2012-04-10 22:09:06 -0700 (1 year, 4 months ago) =C2=A0contrib/dvhart/=
edison/bug/2138</div><div>2012-04-11 18:48:44 +0300 (1 year, 4 months ago) =
=C2=A0contrib/ag/pythonbug2</div><div>2012-04-12 13:31:02 -0700 (1 year, 4 =
months ago) =C2=A0origin/1.2_M4</div>

<div>2012-04-13 13:27:11 +0300 (1 year, 4 months ago) =C2=A0contrib/ag/gdbm=
</div><div>2012-04-14 00:19:55 -0700 (1 year, 4 months ago) =C2=A0contrib/n=
itin/grub2</div><div>2012-04-14 01:00:39 -0700 (1 year, 4 months ago) =C2=
=A0contrib/nitin/grub3</div>

<div>2012-04-16 11:41:45 -0700 (1 year, 4 months ago) =C2=A0contrib/eflanag=
an/image_desc</div><div>2012-04-17 17:03:46 -0500 (1 year, 4 months ago) =
=C2=A0contrib/mhatle/fixes</div><div>2012-04-18 08:37:03 -0700 (1 year, 4 m=
onths ago) =C2=A0contrib/dvhart/gthumb</div>

<div>2012-04-23 14:01:17 +0800 (1 year, 4 months ago) =C2=A0contrib/chunhua=
/hob-test2</div><div>2012-04-23 14:13:51 -0700 (1 year, 4 months ago) =C2=
=A0contrib/josh/hob_next</div><div>2012-04-30 14:36:50 -0700 (1 year, 4 mon=
ths ago) =C2=A0contrib/nitin/bugfixes</div>

<div>2012-05-01 14:58:48 -0700 (1 year, 4 months ago) =C2=A0contrib/nitin/u=
pgrades</div><div>2012-05-03 11:39:32 -0700 (1 year, 4 months ago) =C2=A0co=
ntrib/nitin/upgrades2</div><div>2012-05-04 03:18:50 +0100 (1 year, 4 months=
 ago) =C2=A0contrib/paule/buildhistory-hostdeps</div>

<div>2012-05-04 10:07:01 -0700 (1 year, 4 months ago) =C2=A0contrib/nitin/a=
utomake-1.12</div><div>2012-05-04 17:42:01 -0700 (1 year, 4 months ago) =C2=
=A0contrib/nitin/automake-1.12_related_fixes</div><div>2012-05-07 13:49:10 =
-0700 (1 year, 3 months ago) =C2=A0contrib/josh/patchelf</div>

<div>2012-05-07 14:28:45 -0700 (1 year, 3 months ago) =C2=A0contrib/josh/py=
thon-hack</div><div>2012-05-09 11:11:20 -0700 (1 year, 3 months ago) =C2=A0=
contrib/nitin/gcc-multilib-1.3</div><div>2012-05-09 12:18:10 -0400 (1 year,=
 3 months ago) =C2=A0contrib/zedd/kern-tools</div>

<div>2012-05-09 14:51:19 -0500 (1 year, 3 months ago) =C2=A0contrib/mhatle/=
blacklist</div><div>2012-05-09 16:50:33 -0700 (1 year, 3 months ago) =C2=A0=
contrib/nitin/eglibc-fix</div><div>2012-05-09 21:44:48 +0800 (1 year, 3 mon=
ths ago) =C2=A0contrib/chunhua/webhob-2</div>

<div>2012-05-11 17:25:36 -0700 (1 year, 3 months ago) =C2=A0contrib/josh/ss=
tate</div><div>2012-05-15 13:10:36 -0500 (1 year, 3 months ago) =C2=A0contr=
ib/seebs/toolchain</div><div>2012-05-16 14:49:29 +0300 (1 year, 3 months ag=
o) =C2=A0contrib/ciorga/foomatic-filters-update</div>

<div>2012-05-16 14:49:53 +0300 (1 year, 3 months ago) =C2=A0contrib/bogdanm=
/gnutls</div><div>2012-05-16 15:00:34 +0300 (1 year, 3 months ago) =C2=A0co=
ntrib/rmoisan/man-pages-update</div><div>2012-05-17 15:31:53 -0500 (1 year,=
 3 months ago) =C2=A0contrib/mhatle/sstate</div>

<div>2012-05-18 10:42:27 -0700 (1 year, 3 months ago) =C2=A0contrib/josh/dp=
kg</div><div>2012-05-18 11:27:15 -0500 (1 year, 3 months ago) =C2=A0contrib=
/seebs/toolchains</div><div>2012-05-18 15:24:45 +0100 (1 year, 3 months ago=
) =C2=A0contrib/seebs/tracking</div>

<div>2012-05-22 15:29:53 -0500 (1 year, 3 months ago) =C2=A0contrib/mhatle/=
upd-alt</div><div>2012-05-22 15:31:48 -0500 (1 year, 3 months ago) =C2=A0co=
ntrib/mhatle/upd-alt-2</div><div>2012-05-22 16:24:31 -0700 (1 year, 3 month=
s ago) =C2=A0contrib/nitin/automake-1.12-related-fixes</div>

<div>2012-05-22 17:22:08 -0700 (1 year, 3 months ago) =C2=A0contrib/nitin/m=
trace</div><div>2012-05-23 10:10:10 -0700 (1 year, 3 months ago) =C2=A0cont=
rib/josh/external-python</div><div>2012-05-23 10:28:10 -0500 (1 year, 3 mon=
ths ago) =C2=A0contrib/mhatle/bitbake</div>

<div>2012-05-23 18:49:03 -0700 (1 year, 3 months ago) =C2=A0contrib/josh/sa=
nity</div><div>2012-05-24 04:49:09 -0400 (1 year, 3 months ago) =C2=A0contr=
ib/xtlv/webhob-v0.1</div><div>2012-05-24 14:01:17 -0500 (1 year, 3 months a=
go) =C2=A0contrib/mhatle/package</div>

<div>2012-05-24 15:46:05 +0300 (1 year, 3 months ago) =C2=A0contrib/bogdanm=
/lttng2</div><div>2012-05-25 13:23:56 +0300 (1 year, 3 months ago) =C2=A0co=
ntrib/rmoisan/mtd-utils-1.5.0</div><div>2012-05-27 09:29:03 -0700 (1 year, =
3 months ago) =C2=A0contrib/eflanagan/yocto-autobuilder</div>

<div>2012-05-30 15:38:41 -0700 (1 year, 3 months ago) =C2=A0contrib/eflanag=
an/license_1.3</div><div>2012-05-30 16:34:40 -0700 (1 year, 3 months ago) =
=C2=A0contrib/eflanagan/license_pkg</div><div>2012-05-31 16:16:06 +0800 (1 =
year, 3 months ago) =C2=A0contrib/chunhua/webhob-0.3</div>

<div>2012-06-02 21:09:28 -0700 (1 year, 3 months ago) =C2=A0contrib/stage/e=
flanagan_mut_noltprpm</div><div>2012-06-07 13:17:12 -0700 (1 year, 2 months=
 ago) =C2=A0contrib/stage/eflanagan_mut_norpm</div><div>2012-06-07 15:46:34=
 -0700 (1 year, 2 months ago) =C2=A0contrib/stage/eflanagan_mut-next</div>

<div>2012-06-07 15:48:43 -0700 (1 year, 2 months ago) =C2=A0contrib/stage/e=
flanagan_mut</div><div>2012-06-07 16:52:57 -0700 (1 year, 2 months ago) =C2=
=A0contrib/eflanagan/connman</div><div>2012-06-08 14:00:09 -0700 (1 year, 2=
 months ago) =C2=A0contrib/master+work</div>

<div>2012-06-08 14:00:09 -0700 (1 year, 2 months ago) =C2=A0contrib/nitin/m=
aster+work</div><div>2012-06-13 13:11:23 +0100 (1 year, 2 months ago) =C2=
=A0origin/1.3_M1</div><div>2012-06-15 12:16:33 -0400 (1 year, 2 months ago)=
 =C2=A0contrib/zedd/skeleton</div>

<div>2012-06-19 11:35:06 -0700 (1 year, 2 months ago) =C2=A0oe-core/2011-1<=
/div><div>2012-06-19 11:38:27 -0700 (1 year, 2 months ago) =C2=A0contrib/jo=
sh/edison</div><div>2012-06-20 10:13:34 -0400 (1 year, 2 months ago) =C2=A0=
contrib/zedd/perf</div>

<div>2012-06-22 11:49:01 -0400 (1 year, 2 months ago) =C2=A0contrib/zedd/li=
bc-headers</div><div>2012-06-29 12:58:18 -0700 (1 year, 2 months ago) =C2=
=A0contrib/dvhart/modules</div><div>2012-06-29 14:59:27 +0100 (1 year, 2 mo=
nths ago) =C2=A0origin/edison</div>

<div>2012-06-29 19:57:03 -0700 (1 year, 2 months ago) =C2=A0contrib/dvhart/=
modules-v3</div><div>2012-07-02 14:20:21 -0500 (1 year, 2 months ago) =C2=
=A0contrib/mhatle/oprofile</div><div>2012-07-03 15:22:45 -0700 (1 year, 2 m=
onths ago) =C2=A0contrib/kraj/denzil-fetcher-update</div>

<div>2012-07-03 16:21:57 -0700 (1 year, 2 months ago) =C2=A0contrib/dvhart/=
cleanup</div><div>2012-07-09 08:50:59 -0700 (1 year, 1 month ago) =C2=A0con=
trib/nitin/automake_upgrade_1.12.1</div><div>2012-07-10 03:42:33 -0700 (1 y=
ear, 1 month ago) =C2=A0contrib/nitin/automake_update</div>

<div>2012-07-11 11:20:52 +0800 (1 year, 1 month ago) =C2=A0contrib/wenzong/=
2734</div><div>2012-07-11 11:32:46 -0500 (1 year, 1 month ago) =C2=A0contri=
b/seebs/debugsrc</div><div>2012-07-12 23:41:18 -0700 (1 year, 1 month ago) =
=C2=A0contrib/nitin/automake_update_on_master</div>

<div>2012-07-16 11:58:39 -0500 (1 year, 1 month ago) =C2=A0contrib/seebs/pp=
c476</div><div>2012-07-16 15:29:07 -0700 (1 year, 1 month ago) =C2=A0contri=
b/jzhang/2761</div><div>2012-07-16 16:32:38 -0700 (1 year, 1 month ago) =C2=
=A0contrib/jzhang/2761-v2</div>

<div>2012-07-17 11:16:29 -0700 (1 year, 1 month ago) =C2=A0contrib/dvhart/i=
nstaller</div><div>2012-07-17 17:57:32 +0100 (1 year, 1 month ago) =C2=A0or=
igin/1.3_M2</div><div>2012-07-20 11:31:07 +0800 (1 year, 1 month ago) =C2=
=A0contrib/jhuang0/defect_groupadd_0718</div>

<div>2012-07-20 11:31:07 +0800 (1 year, 1 month ago) =C2=A0contrib/yocto277=
9_0720</div><div>2012-07-22 14:22:38 +0800 (1 year, 1 month ago) =C2=A0cont=
rib/jhuang0/defect2779_groupadd_0722</div><div>2012-07-22 14:46:15 +0800 (1=
 year, 1 month ago) =C2=A0contrib/jhuang0/yocto_2779_groupadd_0722</div>

<div>2012-07-22 19:52:18 +0800 (1 year, 1 month ago) =C2=A0contrib/jhuang0/=
yocto_2779_groupadd_0722_v2</div><div>2012-07-23 13:46:05 +0800 (1 year, 1 =
month ago) =C2=A0contrib/wenzong/2402</div><div>2012-07-23 16:25:04 +0800 (=
1 year, 1 month ago) =C2=A0contrib/jhuang0/defect2811_quota_msgfmt</div>

<div>2012-07-24 15:34:48 -0500 (1 year, 1 month ago) =C2=A0contrib/mhatle/s=
tatus</div><div>2012-07-25 14:49:41 +0800 (1 year, 1 month ago) =C2=A0contr=
ib/xouyang/master</div><div>2012-07-27 16:50:07 -0500 (1 year, 1 month ago)=
 =C2=A0contrib/seebs/pseudo</div>

<div>2012-07-29 22:43:22 -0700 (1 year, 1 month ago) =C2=A0contrib/nitin/wo=
rk</div><div>2012-07-30 14:34:06 -0500 (1 year, 1 month ago) =C2=A0contrib/=
mattsm/edison</div><div>2012-07-30 20:11:30 +0800 (1 year, 1 month ago) =C2=
=A0contrib/xouyang/2858</div>

<div>2012-07-31 19:46:09 -0500 (1 year, 1 month ago) =C2=A0contrib/mhatle/p=
ython-setuptools</div><div>2012-08-01 11:51:50 -0700 (1 year, 1 month ago) =
=C2=A0contrib/dvhart/bug2382-ssh-tiny</div><div>2012-08-02 09:36:57 +0800 (=
1 year, 1 month ago) =C2=A0contrib/wenzong/2845</div>

<div>2012-08-02 22:55:27 +0300 (1 year, 1 month ago) =C2=A0contrib/ag/pseud=
o</div><div>2012-08-03 11:25:58 +0800 (1 year, 1 month ago) =C2=A0contrib/w=
enzong/2883</div><div>2012-08-04 20:59:47 +0800 (1 year, 1 month ago) =C2=
=A0contrib/jhuang0/bug2749_bsddb_0804</div>

<div>2012-08-06 14:58:36 +0800 (1 year ago) =C2=A0contrib/jhuang0/bug2891_t=
cl_0806</div><div>2012-08-07 20:06:56 +0800 (1 year ago) =C2=A0contrib/wenz=
ong/2907</div><div>2012-08-08 13:00:53 +0800 (1 year ago) =C2=A0contrib/jhu=
ang0/expect_failed_0808</div>

<div>2012-08-08 13:57:04 +0800 (1 year ago) =C2=A0contrib/jhuang0/bug2905_g=
dk_0809</div><div>2012-08-08 15:22:55 +0800 (1 year ago) =C2=A0contrib/xouy=
ang/2916</div><div>2012-08-08 18:14:08 -0500 (1 year ago) =C2=A0contrib/see=
bs/cooker</div>

<div>2012-08-09 10:53:00 +0800 (1 year ago) =C2=A0contrib/wenzong/2919</div=
><div>2012-08-10 09:31:06 -0700 (1 year ago) =C2=A0contrib/sgarman/denzil-n=
ext-pull1</div><div>2012-08-10 18:12:41 -0500 (1 year ago) =C2=A0contrib/se=
ebs/blacklist</div>

<div>2012-08-13 15:02:41 -0500 (1 year ago) =C2=A0contrib/mhatle/prelink</d=
iv><div>2012-08-13 15:18:52 +0800 (1 year ago) =C2=A0contrib/roy/test</div>=
<div>2012-08-14 09:34:12 +0100 (1 year ago) =C2=A0origin/1.3_M3</div><div>2=
012-08-15 18:27:10 -0500 (1 year ago) =C2=A0contrib/seebs/ntracking</div>

<div>2012-08-15 20:08:43 -0500 (1 year ago) =C2=A0contrib/seebs/remove</div=
><div>2012-08-16 11:43:43 -0500 (1 year ago) =C2=A0contrib/seebs/cleanup</d=
iv><div>2012-08-17 01:17:09 +0300 (1 year ago) =C2=A0contrib/ag/fixes</div>=
<div>2012-08-17 11:01:38 +0800 (1 year ago) =C2=A0contrib/jhuang0/bug2947_a=
pr_0817</div>

<div>2012-08-17 11:17:14 -0500 (1 year ago) =C2=A0contrib/mhatle/rpm</div><=
div>2012-08-17 15:07:19 +0800 (1 year ago) =C2=A0contrib/jhuang0/t_bsddb_up=
stream_status_0817</div><div>2012-08-17 15:54:27 +0300 (1 year ago) =C2=A0c=
ontrib/ag/dbus-tests</div>

<div>2012-08-17 16:23:20 -0500 (1 year ago) =C2=A0contrib/mhatle/pseudo</di=
v><div>2012-08-20 14:30:45 -0500 (1 year ago) =C2=A0contrib/mhatle/grub</di=
v><div>2012-08-21 13:54:13 -0500 (1 year ago) =C2=A0contrib/mhatle/denzil-e=
glibc</div>

<div>2012-08-21 15:20:18 +0800 (1 year ago) =C2=A0contrib/jhuang0/bug2959_a=
cl_0821</div><div>2012-08-23 16:47:13 +0800 (12 months ago) =C2=A0contrib/j=
huang0/bug2905_gdk_0823</div><div>2012-08-24 13:53:52 -0500 (12 months ago)=
 =C2=A0contrib/mhatle/whitelist</div>

<div>2012-08-24 14:21:00 -0500 (12 months ago) =C2=A0contrib/mhatle/devshel=
l</div><div>2012-08-24 15:35:16 -0700 (12 months ago) =C2=A0contrib/vanilla=
/master</div><div>2012-08-27 11:21:29 -0500 (12 months ago) =C2=A0contrib/s=
eebs/varpseudo</div>

<div>2012-08-27 12:05:29 -0700 (12 months ago) =C2=A0contrib/sgw/psplash</d=
iv><div>2012-08-27 13:19:19 -0700 (12 months ago) =C2=A0contrib/eflanagan/y=
octo-autobuilder-bugfixes</div><div>2012-08-30 15:17:37 -0700 (12 months ag=
o) =C2=A0contrib/dlna</div>

<div>2012-09-01 14:12:11 -0700 (12 months ago) =C2=A0contrib/stage/meta-yoc=
to</div><div>2012-09-03 17:33:34 +0300 (12 months ago) =C2=A0contrib/bogdan=
m/b2162</div><div>2012-09-04 21:15:28 -0700 (12 months ago) =C2=A0contrib/s=
gw/meta-tlk</div>

<div>2012-09-05 15:23:33 -0700 (12 months ago) =C2=A0contrib/eflanagan/adtf=
ix</div><div>2012-09-05 16:26:22 -0700 (12 months ago) =C2=A0origin/1.3_bet=
a</div><div>2012-09-05 18:59:34 +0800 (12 months ago) =C2=A0contrib/limx/ho=
b-bug-fixes-continue</div>

<div>2012-09-06 16:05:44 -0700 (12 months ago) =C2=A0contrib/eflanagan/adt-=
beta-fixes</div><div>2012-09-07 16:59:21 -0500 (12 months ago) =C2=A0contri=
b/mhatle/comp_install</div><div>2012-09-07 17:00:57 -0500 (12 months ago) =
=C2=A0contrib/mhatle/qt4</div>

<div>2012-09-09 10:32:23 -0700 (12 months ago) =C2=A0contrib/eflanagan/yab-=
adt</div><div>2012-09-11 10:02:31 -0700 (11 months ago) =C2=A0contrib/eflan=
agan/eclipse_setup</div><div>2012-09-11 16:03:44 -0700 (11 months ago) =C2=
=A0contrib/jzhang/HOB2499</div>

<div>2012-09-11 17:19:49 +0800 (11 months ago) =C2=A0contrib/jhuang0/bug308=
1_libgnome-kering_0911</div><div>2012-09-11 17:58:52 +0300 (11 months ago) =
=C2=A0contrib/cmuscax/upgrades</div><div>2012-09-13 01:34:11 +0300 (11 mont=
hs ago) =C2=A0contrib/ag/rootfs_size</div>

<div>2012-09-13 12:51:07 -0500 (11 months ago) =C2=A0contrib/seebs/pseudo14=
1</div><div>2012-09-14 01:17:41 +0300 (11 months ago) =C2=A0contrib/ag/tagl=
ib</div><div>2012-09-14 15:40:26 -0700 (11 months ago) =C2=A0contrib/eflana=
gan/license_manifest</div>

<div>2012-09-14 16:04:14 -0500 (11 months ago) =C2=A0contrib/seebs/include<=
/div><div>2012-09-15 22:20:09 -0700 (11 months ago) =C2=A0origin/1.3_M4</di=
v><div>2012-09-18 12:36:46 +0300 (11 months ago) =C2=A0contrib/rmoisan/qa_c=
heck_libdir</div>

<div>2012-09-18 19:26:17 +0800 (11 months ago) =C2=A0contrib/robert/rpmdepe=
nd</div><div>2012-09-18 23:04:46 +0800 (11 months ago) =C2=A0contrib/robert=
/ipk_arch</div><div>2012-09-19 12:23:10 +0300 (11 months ago) =C2=A0contrib=
/rmoisan/tmp1</div>

<div>2012-09-19 14:54:31 +0800 (11 months ago) =C2=A0contrib/robert/rm_opkg=
018</div><div>2012-09-19 17:39:00 +0300 (11 months ago) =C2=A0contrib/bogda=
nm/b3025</div><div>2012-09-20 10:20:23 +0800 (11 months ago) =C2=A0contrib/=
robert/ipk_rebased</div>

<div>2012-09-20 11:25:20 -0700 (11 months ago) =C2=A0contrib/eflanagan/tmp_=
license</div><div>2012-09-20 15:13:50 -0700 (11 months ago) =C2=A0contrib/s=
garman/denzil-next-pull2</div><div>2012-09-24 14:06:38 -0400 (11 months ago=
) =C2=A0contrib/xtlv/webhob-webservice</div>

<div>2012-09-25 15:27:01 -0700 (11 months ago) =C2=A0contrib/eflanagan/ossp=
-uuid-native</div><div>2012-09-25 17:23:03 -0700 (11 months ago) =C2=A0orig=
in/1.3_M5</div><div>2012-09-25 18:14:38 +0300 (11 months ago) =C2=A0contrib=
/cmuscax/bblayersconf</div>

<div>2012-09-26 12:48:07 +0300 (11 months ago) =C2=A0contrib/bogdanm/b3025_=
test</div><div>2012-09-26 14:38:36 -0700 (11 months ago) =C2=A0contrib/efla=
nagan/LICENSE_PATH</div><div>2012-09-26 15:41:42 +0800 (11 months ago) =C2=
=A0contrib/robert/rpm_head</div>

<div>2012-09-26 17:13:53 +0800 (11 months ago) =C2=A0contrib/chunhua/webhob=
-0.4</div><div>2012-09-26 18:08:23 -0500 (11 months ago) =C2=A0contrib/mhat=
le/multilib</div><div>2012-09-27 11:39:34 +0800 (11 months ago) =C2=A0contr=
ib/robert/perl_config</div>

<div>2012-09-27 11:42:02 +0800 (11 months ago) =C2=A0contrib/robert/perl_ls=
b</div><div>2012-09-27 13:44:32 +0800 (11 months ago) =C2=A0contrib/chunhua=
/webhob-v0.5</div><div>2012-09-27 16:17:43 +0800 (11 months ago) =C2=A0cont=
rib/wenzong/2766</div>

<div>2012-09-28 14:49:37 +0800 (11 months ago) =C2=A0contrib/kangkai/ltp-de=
p</div><div>2012-09-28 15:31:17 -0700 (11 months ago) =C2=A0contrib/eflanag=
an/meta-lavalamp</div><div>2012-09-29 18:58:16 -0500 (11 months ago) =C2=A0=
contrib/mhatle/dep_cleanup</div>

<div>2012-09-30 16:13:09 -0700 (11 months ago) =C2=A0contrib/strassek/baryo=
n-nfsd-regression</div><div>2012-10-01 10:47:03 -0500 (11 months ago) =C2=
=A0contrib/mhatle/dep_cleanup2</div><div>2012-10-01 15:53:07 +0300 (11 mont=
hs ago) =C2=A0contrib/bogdanm/b2162_latest_fixes</div>

<div>2012-10-02 09:37:38 -0700 (11 months ago) =C2=A0contrib/nitin/bsps_boo=
t_fix</div><div>2012-10-03 11:21:58 -0700 (11 months ago) =C2=A0contrib/efl=
anagan/bzip</div><div>2012-10-04 15:42:23 +0300 (11 months ago) =C2=A0contr=
ib/bogdanm/b3026_1st</div>

<div>2012-10-05 10:27:23 -0700 (11 months ago) =C2=A0contrib/sgarman/denzil=
-next-pull3</div><div>2012-10-05 12:50:46 -0500 (11 months ago) =C2=A0contr=
ib/mhatle/rpm-fix</div><div>2012-10-05 17:34:12 +0300 (11 months ago) =C2=
=A0contrib/bogdanm/b3026</div>

<div>2012-10-05 17:40:18 +0300 (11 months ago) =C2=A0contrib/bogdanm/b3026_=
2nd</div><div>2012-10-07 20:33:46 -0700 (11 months ago) =C2=A0contrib/dvhar=
t/1.3/tiny</div><div>2012-10-08 17:06:08 +0800 (11 months ago) =C2=A0contri=
b/jhuang0/r_ruby_20121008_1</div>

<div>2012-10-08 17:39:29 +0800 (11 months ago) =C2=A0contrib/jhuang0/r_ruby=
_20121008_2</div><div>2012-10-09 00:11:34 -0700 (11 months ago) =C2=A0contr=
ib/eflanagan/gpl_compliance</div><div>2012-10-09 12:15:37 -0700 (11 months =
ago) =C2=A0contrib/eflanagan/bzip2</div>

<div>2012-10-09 12:15:37 -0700 (11 months ago) =C2=A0contrib/eflanagan/bzip=
_rename</div><div>2012-10-11 13:16:07 +0300 (10 months ago) =C2=A0contrib/b=
ogdanm/b3026_3rd</div><div>2012-10-12 14:01:48 -0500 (10 months ago) =C2=A0=
contrib/tzanussi/lttng-fixes.0</div>

<div>2012-10-15 17:10:10 -0700 (10 months ago) =C2=A0contrib/sgw/dlna</div>=
<div>2012-10-15 23:50:47 -0500 (10 months ago) =C2=A0contrib/tzanussi/switc=
h-to-lttng2</div><div>2012-10-21 18:32:34 +0300 (10 months ago) =C2=A0contr=
ib/ag/opkg</div>

<div>2012-10-22 10:00:22 -0500 (10 months ago) =C2=A0contrib/mhatle/sdk</di=
v><div>2012-10-23 12:27:15 +0100 (10 months ago) =C2=A0contrib/belen</div><=
div>2012-10-23 17:51:14 -0500 (10 months ago) =C2=A0contrib/seebs/mips64</d=
iv><div>2012-10-23 20:50:10 +0800 (10 months ago) =C2=A0contrib/robert/ncur=
ses</div>

<div>2012-10-26 11:13:23 -0500 (10 months ago) =C2=A0contrib/tzanussi/lttng=
-modules-remove-syscalls-patch</div><div>2012-10-29 17:12:53 +0000 (10 mont=
hs ago) =C2=A0contrib/rpurdie/wip3</div><div>2012-10-30 09:23:24 -0500 (10 =
months ago) =C2=A0contrib/tzanussi/perf-dwarf</div>

<div>2012-10-30 21:36:04 +0800 (10 months ago) =C2=A0contrib/robert/virtcla=
ss</div><div>2012-11-01 10:47:06 +0800 (10 months ago) =C2=A0contrib/ChenQi=
/hwclock</div><div>2012-11-01 16:18:26 +0800 (10 months ago) =C2=A0contrib/=
xouyang/2843</div>

<div>2012-11-02 18:29:24 +0800 (10 months ago) =C2=A0contrib/ChenQi/devshel=
l</div><div>2012-11-02 18:37:17 +0200 (10 months ago) =C2=A0contrib/mihaip/=
kvm</div><div>2012-11-04 18:13:19 +0800 (10 months ago) =C2=A0contrib/rober=
t/sdkperl</div>

<div>2012-11-06 18:57:27 +0800 (10 months ago) =C2=A0contrib/robert/assume<=
/div><div>2012-11-08 17:33:02 +0200 (10 months ago) =C2=A0contrib/cmuscax/u=
pgrades2</div><div>2012-11-11 17:53:56 -0600 (9 months ago) =C2=A0contrib/t=
zanussi/danny-next-lttng-fixes</div>

<div>2012-11-12 10:48:56 -0800 (9 months ago) =C2=A0contrib/jzhang/YOCTO338=
4</div><div>2012-11-12 11:02:17 +0800 (9 months ago) =C2=A0contrib/jhuang0/=
d_eglibc_1112_1</div><div>2012-11-12 17:56:22 +0800 (9 months ago) =C2=A0co=
ntrib/ChenQi/initscripts</div>

<div>2012-11-13 19:37:40 +0800 (9 months ago) =C2=A0contrib/robert/denzil_r=
pm</div><div>2012-11-14 17:02:03 +0800 (9 months ago) =C2=A0contrib/jhuang0=
/d_eglibc_1114_1</div><div>2012-11-15 09:16:11 +0800 (9 months ago) =C2=A0c=
ontrib/roy/bind</div>

<div>2012-11-15 10:23:12 +0200 (9 months ago) =C2=A0contrib/mihaip/meta-kvm=
</div><div>2012-11-15 10:29:06 +0800 (9 months ago) =C2=A0contrib/roy/chang=
e-applets-dir</div><div>2012-11-19 11:29:47 -0800 (9 months ago) =C2=A0cont=
rib/strassek/baryon-image-features</div>

<div>2012-11-19 15:49:57 +0800 (9 months ago) =C2=A0contrib/ChenQi/mdadm</d=
iv><div>2012-11-19 18:00:11 +0800 (9 months ago) =C2=A0contrib/jhuang0/d_py=
thon-pygtk_1119_1</div><div>2012-11-20 13:27:00 -0800 (9 months ago) =C2=A0=
contrib/eflanagan/package_licenses</div>

<div>2012-11-20 15:50:49 +0200 (9 months ago) =C2=A0contrib/yocto-eclipse-p=
lugin-windows</div><div>2012-11-20 15:52:03 +0200 (9 months ago) =C2=A0cont=
rib/yocto-eclipse-plugin-windows-ptp</div><div>2012-11-20 20:16:20 +0200 (9=
 months ago) =C2=A0contrib/windows-eclipse-plugin</div>

<div>2012-11-21 10:08:17 +0200 (9 months ago) =C2=A0contrib/cmuscax/nitra</=
div><div>2012-11-21 16:57:30 +0800 (9 months ago) =C2=A0contrib/hongxu/binu=
tils</div><div>2012-11-22 10:51:14 +0800 (9 months ago) =C2=A0contrib/kangk=
ai/lsb</div>

<div>2012-11-22 11:59:27 +0800 (9 months ago) =C2=A0contrib/jhuang0/d_pulse=
audio_1122_1</div><div>2012-11-22 14:06:33 +0800 (9 months ago) =C2=A0contr=
ib/jhuang0/d_pulseaudio_1122_2</div><div>2012-11-22 15:42:33 +0800 (9 month=
s ago) =C2=A0contrib/jhuang0/d_zlib_1122_1</div>

<div>2012-11-22 18:05:06 +0200 (9 months ago) =C2=A0contrib/bogdanm/bogdanm=
_smart_work</div><div>2012-11-22 18:22:45 +0800 (9 months ago) =C2=A0contri=
b/ChenQi/pkgconfig</div><div>2012-11-28 10:27:45 -0500 (9 months ago) =C2=
=A0contrib/zedd/kernel-fixes</div>

<div>2012-11-28 13:21:27 +0800 (9 months ago) =C2=A0contrib/jhuang0/d_eglib=
c_1128_1</div><div>2012-11-28 14:32:47 -0800 (9 months ago) =C2=A0contrib/e=
flanagan/incompat</div><div>2012-11-28 15:25:33 +0000 (9 months ago) =C2=A0=
origin/1.4_M1</div>

<div>2012-11-29 14:12:33 +0800 (9 months ago) =C2=A0contrib/roy/apr</div><d=
iv>2012-11-29 17:12:46 +0800 (9 months ago) =C2=A0contrib/roy/common-linux<=
/div><div>2012-11-30 14:56:54 -0800 (9 months ago) =C2=A0contrib/eflanagan/=
build-app-ab</div>

<div>2012-11-30 15:46:05 -0800 (9 months ago) =C2=A0contrib/sgarman/denzil-=
next-pull4</div><div>2012-12-02 10:43:07 -0600 (9 months ago) =C2=A0contrib=
/tzanussi/revert-xorg-abi-video</div><div>2012-12-02 14:53:23 -0800 (9 mont=
hs ago) =C2=A0contrib/sgarman/meta-yocto-layer-fix</div>

<div>2012-12-03 11:11:45 +0200 (9 months ago) =C2=A0contrib/cvoicu/adt-inst=
aller</div><div>2012-12-03 14:32:50 -0800 (9 months ago) =C2=A0contrib/stra=
ssek/baryon-proftpd</div><div>2012-12-04 15:23:41 +0200 (9 months ago) =C2=
=A0contrib/cmuscax/fetcher</div>

<div>2012-12-04 17:47:39 +0800 (9 months ago) =C2=A0contrib/ChenQi/pkgconfi=
g2</div><div>2012-12-05 10:11:11 +0800 (9 months ago) =C2=A0contrib/ChenQi/=
fixpatchstatus</div><div>2012-12-05 14:38:04 +0200 (9 months ago) =C2=A0con=
trib/rmoisan/updates</div>

<div>2012-12-06 11:49:40 -0800 (9 months ago) =C2=A0contrib/eflanagan/local=
e_license</div><div>2012-12-07 13:21:07 +0800 (9 months ago) =C2=A0contrib/=
jhuang0/d_rt-tests_1207_1</div><div>2012-12-07 13:44:46 +0800 (9 months ago=
) =C2=A0contrib/jhuang0/d_rt-tests_1207_2</div>

<div>2012-12-07 17:28:13 -0600 (9 months ago) =C2=A0contrib/mhatle/smart</d=
iv><div>2012-12-10 09:28:32 +0200 (8 months ago) =C2=A0contrib/cmuscax/pus2=
</div><div>2012-12-11 16:33:57 +0200 (8 months ago) =C2=A0contrib/cmuscax/m=
ultilib_warn</div>

<div>2012-12-12 12:37:18 +0800 (8 months ago) =C2=A0contrib/ChenQi/fix-ICU<=
/div><div>2012-12-12 21:51:22 -0600 (8 months ago) =C2=A0contrib/tzanussi/y=
octo-bsp-custom</div><div>2012-12-13 15:12:27 -0600 (8 months ago) =C2=A0co=
ntrib/tzanussi/3233-fix-denzil-backport</div>

<div>2012-12-13 16:52:16 +0800 (8 months ago) =C2=A0contrib/ChenQi/coreutil=
s</div><div>2012-12-13 23:09:32 -0600 (8 months ago) =C2=A0contrib/tzanussi=
/module-do-make-scripts-fix</div><div>2012-12-14 16:39:07 +0200 (8 months a=
go) =C2=A0contrib/cmuscax/multilib2</div>

<div>2012-12-14 16:44:15 -0600 (8 months ago) =C2=A0contrib/mhatle/smart2</=
div><div>2012-12-14 19:21:53 -0600 (8 months ago) =C2=A0contrib/seebs/pseud=
o_1_4_2</div><div>2012-12-17 10:35:02 +0800 (8 months ago) =C2=A0contrib/Ch=
enQi/ICU-upgrade</div>

<div>2012-12-17 11:13:16 -0600 (8 months ago) =C2=A0contrib/tzanussi/yocto-=
layer-rfc</div><div>2012-12-18 13:35:30 +0200 (8 months ago) =C2=A0contrib/=
cmuscax/udev</div><div>2012-12-18 16:52:56 +0200 (8 months ago) =C2=A0contr=
ib/lpalcu/apu</div>

<div>2012-12-19 15:05:38 -0600 (8 months ago) =C2=A0contrib/tzanussi/cmake-=
checksum-fix</div><div>2012-12-20 14:58:23 +0800 (8 months ago) =C2=A0contr=
ib/roy/rpcbind</div><div>2012-12-23 16:40:46 -0800 (8 months ago) =C2=A0con=
trib/sgarman/buildappliance-fix</div>

<div>2012-12-24 13:12:08 +0200 (8 months ago) =C2=A0contrib/cmuscax/multili=
b3</div><div>2012-12-26 16:11:39 -0800 (8 months ago) =C2=A0contrib/sgarman=
/denzil-next-buildappliance-fix</div><div>2012-12-27 16:06:04 +0200 (8 mont=
hs ago) =C2=A0contrib/cmuscax/multilib4</div>

<div>2012-12-27 22:04:30 -0800 (8 months ago) =C2=A0contrib/sgarman/denzil-=
next-pull5</div><div>2012-12-31 15:53:04 +0800 (8 months ago) =C2=A0contrib=
/ChenQi/live-image</div><div>2013-01-02 18:30:40 -0600 (8 months ago) =C2=
=A0contrib/mattsm/denzil</div>

<div>2013-01-03 15:26:16 -0800 (8 months ago) =C2=A0contrib/jzhang/3637</di=
v><div>2013-01-04 14:12:44 -0800 (8 months ago) =C2=A0contrib/eflanagan/den=
zil-release</div><div>2013-01-04 15:25:45 +0200 (8 months ago) =C2=A0contri=
b/cvoicu/consistency-conf-files</div>

<div>2013-01-07 16:40:09 -0600 (8 months ago) =C2=A0contrib/tzanussi/rm-leg=
acy-lttng</div><div>2013-01-08 14:45:04 +0800 (8 months ago) =C2=A0contrib/=
ChenQi/rootfs_rpm</div><div>2013-01-09 10:22:44 +0200 (7 months ago) =C2=A0=
contrib/cmuscax/gcc_enhan</div>

<div>2013-01-09 10:29:27 +0800 (7 months ago) =C2=A0contrib/ChenQi/runqemu-=
ramfs</div><div>2013-01-11 11:31:23 +0800 (7 months ago) =C2=A0contrib/Chen=
Qi/rm-finish.sh</div><div>2013-01-11 14:18:17 -0600 (7 months ago) =C2=A0co=
ntrib/tzanussi/yocto-layer-v1</div>

<div>2013-01-11 17:22:28 -0600 (7 months ago) =C2=A0contrib/tzanussi/rm-leg=
acy-lttng-v3</div><div>2013-01-11 17:50:26 -0600 (7 months ago) =C2=A0contr=
ib/tzanussi/updates-for-legacy-lttng-v3</div><div>2013-01-11 19:26:52 -0600=
 (7 months ago) =C2=A0contrib/seebs/incvar</div>

<div>2013-01-14 12:55:15 +0200 (7 months ago) =C2=A0contrib/cvoicu/warnings=
parsing</div><div>2013-01-14 13:23:40 +0800 (7 months ago) =C2=A0contrib/Ch=
enQi/runqemu-iso</div><div>2013-01-14 15:34:21 +0200 (7 months ago) =C2=A0c=
ontrib/cmuscax/gcc_enhan3</div>

<div>2013-01-14 15:34:24 +0200 (7 months ago) =C2=A0contrib/cmuscax/gcc_enh=
an2</div><div>2013-01-15 14:00:56 +0200 (7 months ago) =C2=A0contrib/cmusca=
x/gcc_enhan4</div><div>2013-01-15 14:00:56 +0200 (7 months ago) =C2=A0contr=
ib/cmuscax/gcc_enhan5</div>

<div>2013-01-15 16:38:05 -0600 (7 months ago) =C2=A0contrib/tzanussi/yocto-=
bsp-git-check</div><div>2013-01-16 09:26:26 -0600 (7 months ago) =C2=A0cont=
rib/tzanussi/lttng-pe-bump</div><div>2013-01-16 11:06:11 -0800 (7 months ag=
o) =C2=A0contrib/sgarman/denzil-next</div>

<div>2013-01-16 15:07:15 -0600 (7 months ago) =C2=A0contrib/mattsm/danny</d=
iv><div>2013-01-16 16:06:52 +0200 (7 months ago) =C2=A0contrib/rmoisan/syst=
emd</div><div>2013-01-17 14:49:42 -0800 (7 months ago) =C2=A0contrib/strass=
ek/create_diff_gz</div>

<div>2013-01-17 15:03:55 -0600 (7 months ago) =C2=A0contrib/mattsm/master-n=
ext</div><div>2013-01-18 09:40:38 +0800 (7 months ago) =C2=A0contrib/roy/en=
able_tcp_wrapper_xinetd</div><div>2013-01-18 10:56:20 +0200 (7 months ago) =
=C2=A0contrib/cmuscax/directfb</div>

<div>2013-01-18 13:43:40 +0200 (7 months ago) =C2=A0contrib/cmuscax/gtk-dir=
ectfb</div><div>2013-01-18 17:04:24 -0600 (7 months ago) =C2=A0contrib/mhat=
le/ua-dep</div><div>2013-01-21 10:23:02 +0800 (7 months ago) =C2=A0contrib/=
enable_tcp_wrapper_for_xinetd</div>

<div>2013-01-21 15:33:57 +0200 (7 months ago) =C2=A0contrib/cvoicu/sstatemi=
rrors_gtktreeview</div><div>2013-01-21 16:32:53 -0600 (7 months ago) =C2=A0=
contrib/tzanussi/yocto-bsp-qualify-user-with-machine-danny</div><div>2013-0=
1-21 18:05:25 -0600 (7 months ago) =C2=A0contrib/tzanussi/yocto-bsp-qualify=
-user-with-machine-master</div>

<div>2013-01-22 09:57:45 +0200 (7 months ago) =C2=A0contrib/cmuscax/migrate=
_localcount</div><div>2013-01-22 14:02:41 +0200 (7 months ago) =C2=A0contri=
b/mihaip/elc-meta-openembedded</div><div>2013-01-22 14:58:23 +0800 (7 month=
s ago) =C2=A0contrib/ChenQi/init-updatercd</div>

<div>2013-01-22 15:38:31 +0200 (7 months ago) =C2=A0contrib/mihaip/elc-meta=
-virtualization</div><div>2013-01-22 15:39:09 +0800 (7 months ago) =C2=A0co=
ntrib/ChenQi/postinst-error</div><div>2013-01-22 17:08:52 +0200 (7 months a=
go) =C2=A0contrib/nitin/mihaip/elc-demo</div>

<div>2013-01-22 17:23:16 +0800 (7 months ago) =C2=A0contrib/wenzong/3754-bi=
nd</div><div>2013-01-23 11:53:09 +0200 (7 months ago) =C2=A0contrib/cmuscax=
/prs_fix</div><div>2013-01-23 13:36:06 +0800 (7 months ago) =C2=A0contrib/C=
henQi/live-image-move-media</div>

<div>2013-01-23 16:37:01 -0500 (7 months ago) =C2=A0contrib/zedd/kernel-nex=
t</div><div>2013-01-24 00:00:47 -0600 (7 months ago) =C2=A0contrib/tzanussi=
/perf-trace-v0</div><div>2013-01-24 10:51:16 +0200 (7 months ago) =C2=A0con=
trib/cmuscax/pus24</div>

<div>2013-01-24 14:28:11 -0600 (7 months ago) =C2=A0contrib/tzanussi/yocto-=
bsp-user-fixes-master</div><div>2013-01-24 14:49:27 -0600 (7 months ago) =
=C2=A0contrib/tzanussi/yocto-bsp-user-fixes-danny</div><div>2013-01-24 15:1=
1:53 -0800 (7 months ago) =C2=A0contrib/strassek/archiver_copyleft_filter</=
div>

<div>2013-01-24 15:55:56 +0800 (7 months ago) =C2=A0contrib/ChenQi/readonly=
-rootfs</div><div>2013-01-24 16:02:53 -0600 (7 months ago) =C2=A0contrib/se=
ebs/unpackaged</div><div>2013-01-24 16:06:01 +0800 (7 months ago) =C2=A0con=
trib/kangkai/fix-perl-4danny</div>

<div>2013-01-24 16:27:39 +0200 (7 months ago) =C2=A0contrib/emac/meta-web-k=
iosk</div><div>2013-01-25 00:27:27 +0200 (7 months ago) =C2=A0contrib/mihai=
p/elc-demo</div><div>2013-01-25 10:35:00 +0800 (7 months ago) =C2=A0contrib=
/robert/cache.py</div>

<div>2013-01-25 14:03:12 +0800 (7 months ago) =C2=A0contrib/wenzong/3780-gi=
t</div><div>2013-01-25 18:06:41 +0200 (7 months ago) =C2=A0contrib/cmuscax/=
gcc_enhan6</div><div>2013-01-25 22:36:29 -0600 (7 months ago) =C2=A0contrib=
/seebs/skip_filedeps</div>

<div>2013-01-28 12:43:16 +0000 (7 months ago) =C2=A0oe-core/denzil</div><di=
v>2013-01-28 12:44:14 +0000 (7 months ago) =C2=A0origin/denzil</div><div>20=
13-01-28 14:02:04 -0600 (7 months ago) =C2=A0contrib/tzanussi/oprofile-oper=
f-enable-v1</div>

<div>2013-01-28 15:02:26 -0800 (7 months ago) =C2=A0contrib/strassek/docs_u=
pdates</div><div>2013-01-28 17:10:07 +0200 (7 months ago) =C2=A0contrib/cmu=
scax/gcc_enhan7</div><div>2013-01-29 09:43:16 +0800 (7 months ago) =C2=A0co=
ntrib/roy/xinetd-enable-tcp-wrap3</div>

<div>2013-01-29 12:24:43 +0800 (7 months ago) =C2=A0contrib/ChenQi/readonly=
-rootfs-unionfs</div><div>2013-01-29 15:24:27 +0200 (7 months ago) =C2=A0co=
ntrib/mihaip/elc-meta-intel</div><div>2013-01-29 16:41:49 +0200 (7 months a=
go) =C2=A0contrib/cmuscax/gcc_enhan8</div>

<div>2013-01-29 16:48:30 +0800 (7 months ago) =C2=A0contrib/ChenQi/rootfs_r=
pm-fix-error</div><div>2013-01-30 08:34:32 -0800 (7 months ago) =C2=A0contr=
ib/sgw/1.4_M3-rc2</div><div>2013-01-30 09:57:39 +0800 (7 months ago) =C2=A0=
contrib/ChenQi/udev-systemd-sysvinit</div>

<div>2013-01-30 15:15:34 -0800 (7 months ago) =C2=A0contrib/dvhart/noparavi=
rt</div><div>2013-01-30 17:45:33 +0200 (7 months ago) =C2=A0contrib/igrigor=
x/eclipse-automation</div><div>2013-01-31 10:05:30 +0200 (7 months ago) =C2=
=A0contrib/cvoicu/packagespage</div>

<div>2013-01-31 12:30:13 +0000 (7 months ago) =C2=A0origin/1.4_M3</div><div=
>2013-02-01 11:01:54 +0800 (7 months ago) =C2=A0contrib/qt4-check-neon-agai=
nst-tune-features</div><div>2013-02-01 13:40:19 +0800 (7 months ago) =C2=A0=
contrib/robert/knotty</div>

<div>2013-02-01 16:51:31 +0800 (7 months ago) =C2=A0contrib/ChenQi/busybox-=
config-fragments</div><div>2013-02-01 18:26:20 -0600 (7 months ago) =C2=A0c=
ontrib/tzanussi/systemtap-constructor-fix</div><div>2013-02-02 10:36:24 +08=
00 (7 months ago) =C2=A0contrib/qt4_use_on_neon</div>

<div>2013-02-02 10:44:28 +0800 (7 months ago) =C2=A0contrib/qt4_use_on_neon=
_v2</div><div>2013-02-02 15:50:01 +0800 (7 months ago) =C2=A0contrib/tcp_wr=
apper_remove_size_t_patch</div><div>2013-02-04 10:39:32 +0200 (7 months ago=
) =C2=A0contrib/cmuscax/ml_patches</div>

<div>2013-02-04 11:41:54 +0200 (7 months ago) =C2=A0contrib/cmuscax/pseudo<=
/div><div>2013-02-04 14:44:15 -0500 (7 months ago) =C2=A0contrib/zedd/kerne=
l-dev</div><div>2013-02-05 08:21:56 -0600 (7 months ago) =C2=A0contrib/tzan=
ussi/crosstap-x86-64-fix</div>

<div>2013-02-05 10:34:56 +0800 (7 months ago) =C2=A0contrib/robert/p4</div>=
<div>2013-02-05 14:16:55 -0600 (7 months ago) =C2=A0contrib/seebs/pseudo143=
</div><div>2013-02-05 17:48:56 +0200 (7 months ago) =C2=A0contrib/cmuscax/n=
etbase</div>

<div>2013-02-06 09:25:44 -0600 (7 months ago) =C2=A0contrib/tzanussi/3233-f=
ix-danny</div><div>2013-02-06 09:36:20 -0600 (7 months ago) =C2=A0contrib/t=
zanussi/3756-fix-danny</div><div>2013-02-06 10:56:11 +0000 (7 months ago) =
=C2=A0contrib/ross/i18n</div>

<div>2013-02-06 15:40:25 +0800 (7 months ago) =C2=A0contrib/robert/bbl_long=
_path</div><div>2013-02-07 08:29:34 -0600 (7 months ago) =C2=A0contrib/tzan=
ussi/yocto-bsp-user-include-fixes-master</div><div>2013-02-07 08:37:50 -060=
0 (7 months ago) =C2=A0contrib/tzanussi/yocto-bsp-user-include-fixes-danny<=
/div>

<div>2013-02-07 13:54:20 -0600 (7 months ago) =C2=A0contrib/mhatle/wr-denzi=
l</div><div>2013-02-07 14:11:54 -0600 (7 months ago) =C2=A0contrib/mhatle/w=
r-master</div><div>2013-02-08 10:10:19 +0200 (6 months ago) =C2=A0contrib/c=
muscax/toolchain</div>

<div>2013-02-08 14:23:14 -0800 (6 months ago) =C2=A0contrib/dvhart/gitproxy=
</div><div>2013-02-11 10:55:21 +0200 (6 months ago) =C2=A0contrib/cmuscax/p=
us</div><div>2013-02-11 14:43:29 +0200 (6 months ago) =C2=A0contrib/rmoisan=
/systemd-rework</div>

<div>2013-02-12 14:37:21 -0600 (6 months ago) =C2=A0contrib/seebs/debiannam=
es</div><div>2013-02-12 16:11:52 -0600 (6 months ago) =C2=A0contrib/seebs/p=
seudo144</div><div>2013-02-12 19:03:23 +0200 (6 months ago) =C2=A0contrib/m=
ihai/test-target</div>

<div>2013-02-13 11:34:26 +0200 (6 months ago) =C2=A0contrib/rmoisan/systemd=
-ross</div><div>2013-02-13 13:43:17 -0600 (6 months ago) =C2=A0contrib/seeb=
s/pseudo145</div><div>2013-02-14 12:44:49 -0800 (6 months ago) =C2=A0contri=
b/nitin/elcdemo/poky</div>

<div>2013-02-14 15:19:54 +0000 (6 months ago) =C2=A0contrib/ross/danny</div=
><div>2013-02-15 18:20:42 -0800 (6 months ago) =C2=A0contrib/nitin/elcdemo/=
webkiosk</div><div>2013-02-16 19:38:49 -0800 (6 months ago) =C2=A0contrib/n=
itin/elcdemo/meta-intel</div>

<div>2013-02-17 17:39:14 -0600 (6 months ago) =C2=A0contrib/seebs/pseudo_15=
</div><div>2013-02-18 14:44:03 +0800 (6 months ago) =C2=A0contrib/hongxu/in=
cremental-deb-image</div><div>2013-02-19 15:49:48 +0800 (6 months ago) =C2=
=A0contrib/ChenQi/rcs-default</div>

<div>2013-02-19 17:13:39 +0800 (6 months ago) =C2=A0contrib/kangkai/redirec=
t-postinst</div><div>2013-02-19 17:49:50 +0200 (6 months ago) =C2=A0contrib=
/bogdanm/b3575</div><div>2013-02-19 19:20:10 +0800 (6 months ago) =C2=A0con=
trib/hongxu/incremental-ipk-image</div>

<div>2013-02-19 23:07:23 -0800 (6 months ago) =C2=A0origin/1.4_M4</div><div=
>2013-02-20 14:24:34 +0800 (6 months ago) =C2=A0contrib/gcc_search_build_di=
r_firstly</div><div>2013-02-20 17:30:26 +0800 (6 months ago) =C2=A0contrib/=
ChenQi/readonly-rootfs-followups</div>

<div>2013-02-21 11:35:42 -0600 (6 months ago) =C2=A0contrib/seebs/gnun32</d=
iv><div>2013-02-21 16:26:23 +0200 (6 months ago) =C2=A0contrib/cmuscax/srcr=
ev</div><div>2013-02-23 21:11:38 -0600 (6 months ago) =C2=A0contrib/seebs/e=
rrors</div>

<div>2013-02-25 14:10:44 -0800 (6 months ago) =C2=A0contrib/jzhang/kernel-a=
rch-variable</div><div>2013-02-25 17:10:32 +0800 (6 months ago) =C2=A0contr=
ib/ChenQi/sysv-consistent</div><div>2013-02-26 13:47:35 +0800 (6 months ago=
) =C2=A0contrib/robert/lttng-ust</div>

<div>2013-02-26 14:16:13 +0800 (6 months ago) =C2=A0contrib/wenzong/alsa-to=
ols</div><div>2013-02-26 16:30:35 +0800 (6 months ago) =C2=A0contrib/kangka=
i/update-lsb</div><div>2013-02-26 18:50:57 +0200 (6 months ago) =C2=A0contr=
ib/bogdanm/b3575_2nd</div>

<div>2013-02-27 08:46:42 -0600 (6 months ago) =C2=A0contrib/tzanussi/perf-t=
race-v1</div><div>2013-02-27 13:22:41 +0800 (6 months ago) =C2=A0contrib/Ch=
enQi/matchbox-initscripts</div><div>2013-02-27 14:33:41 -0600 (6 months ago=
) =C2=A0contrib/seebs/pseudo151</div>

<div>2013-02-27 16:20:01 +0200 (6 months ago) =C2=A0contrib/bogdanm/multicl=
ient</div><div>2013-02-27 19:04:20 -0600 (6 months ago) =C2=A0contrib/mhatl=
e/depmod</div><div>2013-02-28 15:12:57 +0800 (6 months ago) =C2=A0contrib/k=
angkai/fix-rpm2cpio</div>

<div>2013-03-01 10:30:05 -0600 (6 months ago) =C2=A0contrib/tzanussi/minima=
l-and-sysprof-update-v0</div><div>2013-03-01 15:17:24 +0800 (6 months ago) =
=C2=A0contrib/kaikang/name-rpm-postinst</div><div>2013-03-01 16:29:09 +0200=
 (6 months ago) =C2=A0contrib/cmuscax/apt</div>

<div>2013-03-01 17:36:13 +0200 (6 months ago) =C2=A0contrib/cvoicu/searchHo=
b</div><div>2013-03-01 17:45:45 +0800 (6 months ago) =C2=A0contrib/hongxu/f=
ix-toolchain-relocation</div><div>2013-03-02 16:13:38 +0800 (6 months ago) =
=C2=A0contrib/hongxu/fix-deb-image</div>

<div>2013-03-02 16:33:28 +0000 (6 months ago) =C2=A0contrib/rpurdie/t4</div=
><div>2013-03-02 16:58:24 +0800 (6 months ago) =C2=A0contrib/robert/e2fspro=
gs</div><div>2013-03-04 10:17:20 +0000 (6 months ago) =C2=A0origin/danny-ne=
xt</div><div>

2013-03-04 19:57:33 +0800 (6 months ago) =C2=A0contrib/hongxu/sanity-check-=
march</div><div>2013-03-04 23:20:27 -0600 (6 months ago) =C2=A0contrib/tzan=
ussi/perf-parallel-make-fix-v0</div><div>2013-03-05 10:14:51 -0600 (6 month=
s ago) =C2=A0contrib/tzanussi/add-perf-3.8-v0</div>

<div>2013-03-05 11:14:37 +0800 (6 months ago) =C2=A0contrib/robert/what</di=
v><div>2013-03-06 14:05:19 +0800 (6 months ago) =C2=A0contrib/kangkai/sysvi=
nit-inittab-lsb</div><div>2013-03-06 15:57:07 +0800 (6 months ago) =C2=A0co=
ntrib/robert/bbs</div>

<div>2013-03-07 18:26:59 -0600 (6 months ago) =C2=A0contrib/tzanussi/rename=
-perf-v0</div><div>2013-03-10 04:36:52 +0000 (5 months ago) =C2=A0contrib/m=
attsm/master</div><div>2013-03-11 15:04:17 +0800 (5 months ago) =C2=A0contr=
ib/hongxu/fix-toolchain-relocation-danny</div>

<div>2013-03-11 15:14:24 +0200 (5 months ago) =C2=A0contrib/cmuscax/updates=
</div><div>2013-03-11 15:37:27 +0800 (5 months ago) =C2=A0contrib/wenzong/y=
octo-layers</div><div>2013-03-11 15:40:31 +0800 (5 months ago) =C2=A0contri=
b/wenzong/oe-layers</div>

<div>2013-03-11 16:07:20 +0800 (5 months ago) =C2=A0contrib/kangkai/externa=
l-python</div><div>2013-03-12 08:12:10 -0700 (5 months ago) =C2=A0contrib/n=
itin/poky_for_kiosk</div><div>2013-03-12 08:19:51 -0700 (5 months ago) =C2=
=A0contrib/nitin/kiosk-clean</div>

<div>2013-03-12 09:44:23 +0800 (5 months ago) =C2=A0contrib/hongxu/fix-qemu=
-native</div><div>2013-03-12 17:10:57 -0500 (5 months ago) =C2=A0contrib/tz=
anussi/bump-perf-epoch</div><div>2013-03-13 10:57:48 -0500 (5 months ago) =
=C2=A0contrib/tzanussi/yocto-bsp-features-update</div>

<div>2013-03-13 11:23:58 +0200 (5 months ago) =C2=A0contrib/cmuscax/nitra2<=
/div><div>2013-03-13 13:56:07 +0800 (5 months ago) =C2=A0contrib/robert/cai=
ro</div><div>2013-03-13 14:32:50 +0800 (5 months ago) =C2=A0contrib/ChenQi/=
rm_work</div>

<div>2013-03-15 15:36:00 +0800 (5 months ago) =C2=A0contrib/jhuang0/d_bpn_0=
315_0</div><div>2013-03-15 15:47:50 +0800 (5 months ago) =C2=A0contrib/jhua=
ng0/d_bpn_0315_1</div><div>2013-03-15 17:54:02 +0200 (5 months ago) =C2=A0c=
ontrib/emac/prs</div>

<div>2013-03-16 11:44:27 +0800 (5 months ago) =C2=A0contrib/robert/bb_white=
</div><div>2013-03-17 22:47:04 +0000 (5 months ago) =C2=A0contrib/rpurdie/t=
2</div><div>2013-03-18 22:58:14 -0500 (5 months ago) =C2=A0contrib/tzanussi=
/perf-make-pkgv-match-kernel</div>

<div>2013-03-19 13:53:53 +0800 (5 months ago) =C2=A0contrib/ChenQi/util-lin=
ux-systemd</div><div>2013-03-19 14:48:53 +0200 (5 months ago) =C2=A0contrib=
/cmuscax/fenrus</div><div>2013-03-19 14:56:35 +0800 (5 months ago) =C2=A0co=
ntrib/hongxu/fix-multilib-rpm</div>

<div>2013-03-19 15:11:33 -0700 (5 months ago) =C2=A0contrib/dvhart/mkefidis=
k</div><div>2013-03-20 10:21:10 +0800 (5 months ago) =C2=A0contrib/robert/c=
onf</div><div>2013-03-20 13:27:50 +0800 (5 months ago) =C2=A0contrib/ChenQi=
/meta-skeleton</div>

<div>2013-03-20 15:42:51 +0800 (5 months ago) =C2=A0contrib/robert/duplicat=
ed</div><div>2013-03-20 15:50:40 +0800 (5 months ago) =C2=A0contrib/robert/=
duplicated_yocto</div><div>2013-03-21 13:00:02 -0700 (5 months ago) =C2=A0c=
ontrib/strassek/baryon</div>

<div>2013-03-22 12:59:52 -0700 (5 months ago) =C2=A0contrib/strassek/archiv=
er</div><div>2013-03-25 18:02:13 +0800 (5 months ago) =C2=A0contrib/kangkai=
/insane</div><div>2013-03-26 10:24:57 +0800 (5 months ago) =C2=A0contrib/ka=
ngkai/lsb-libs</div>

<div>2013-03-26 10:41:01 +0800 (5 months ago) =C2=A0contrib/ChenQi/init-ins=
tall</div><div>2013-03-26 14:16:26 +0800 (5 months ago) =C2=A0contrib/kangk=
ai/debug-tweaks</div><div>2013-03-26 15:07:28 +0800 (5 months ago) =C2=A0co=
ntrib/ChenQi/xserver-nodm</div>

<div>2013-03-27 15:14:14 +0200 (5 months ago) =C2=A0contrib/rmoisan/upgrade=
-openssl<br></div><div>2013-03-27 16:25:02 +0800 (5 months ago) =C2=A0contr=
ib/ChenQi/psplash</div><div>2013-03-28 18:05:03 +0000 (5 months ago) =C2=A0=
contrib/paule/staging-fix</div>

<div>2013-03-29 16:34:43 +0200 (5 months ago) =C2=A0contrib/stefans/perf-te=
st</div><div>2013-04-01 12:06:46 +0300 (5 months ago) =C2=A0contrib/mihaip/=
meta-trusted</div><div>2013-04-02 05:12:38 +0300 (5 months ago) =C2=A0contr=
ib/andreeap/report</div>

<div>2013-04-02 11:07:11 +0800 (5 months ago) =C2=A0contrib/ChenQi/rpm-post=
insts-problem</div><div>2013-04-02 15:52:35 -0700 (5 months ago) =C2=A0cont=
rib/dvhart/yocto-bsp</div><div>2013-04-03 11:39:09 -0700 (5 months ago) =C2=
=A0contrib/dvhart/xuser</div>

<div>2013-04-03 14:11:12 +0800 (5 months ago) =C2=A0contrib/ChenQi/sato-siz=
e</div><div>2013-04-03 15:32:11 +0800 (5 months ago) =C2=A0contrib/hongxu/f=
ix-atompc-kernel-warn</div><div>2013-04-04 16:53:05 -0500 (5 months ago) =
=C2=A0contrib/tzanussi/yocto-bsp-3.8-rt-and-fixes</div>

<div>2013-04-05 11:57:56 -0700 (5 months ago) =C2=A0contrib/dvhart/tiny</di=
v><div>2013-04-05 16:35:37 +0200 (5 months ago) =C2=A0contrib/pkj/oe-init-b=
uild-env</div><div>2013-04-08 08:25:15 -0500 (5 months ago) =C2=A0contrib/t=
zanussi/gst-ffmpeg-yasm-check-fix</div>

<div>2013-04-09 11:12:26 +0800 (4 months ago) =C2=A0contrib/kangkai/libpng1=
2</div><div>2013-04-09 12:22:53 +0200 (4 months ago) =C2=A0contrib/pkj/oe-b=
uildenv-internal</div><div>2013-04-09 13:43:39 +0800 (4 months ago) =C2=A0c=
ontrib/jhuang0/d_modphp_lamp_0409_0</div>

<div>2013-04-10 00:19:06 -0700 (4 months ago) =C2=A0contrib/eflanagan/1.4</=
div><div>2013-04-10 09:48:16 -0700 (4 months ago) =C2=A0contrib/zedd/kernel=
-aufs</div><div>2013-04-10 11:14:03 +0800 (4 months ago) =C2=A0contrib/wenz=
ong/4234</div>

<div>2013-04-10 17:27:02 +0800 (4 months ago) =C2=A0contrib/ChenQi/postinst=
-logging</div><div>2013-04-10 20:55:45 -0700 (4 months ago) =C2=A0contrib/z=
edd/yocto-1.4-fixes</div><div>2013-04-11 12:38:22 +0300 (4 months ago) =C2=
=A0contrib/stefans/tests</div>

<div>2013-04-12 08:44:13 -0700 (4 months ago) =C2=A0contrib/zedd/yocto-1.4-=
final</div><div>2013-04-12 15:33:45 -0700 (4 months ago) =C2=A0contrib/stra=
ssek/docs</div><div>2013-04-12 18:49:45 +0100 (4 months ago) =C2=A0contrib/=
paule/lconf-fix</div>

<div>2013-04-15 10:29:44 +0800 (4 months ago) =C2=A0contrib/robert/monitor<=
/div><div>2013-04-15 10:54:18 +0800 (4 months ago) =C2=A0contrib/kangkai/rp=
m2cpio-segfault</div><div>2013-04-17 16:36:32 +0800 (4 months ago) =C2=A0co=
ntrib/kangkai/libpam</div>

<div>2013-04-19 13:52:10 -0700 (4 months ago) =C2=A0contrib/sgw/bastille</d=
iv><div>2013-04-23 11:12:23 +0800 (4 months ago) =C2=A0contrib/ChenQi/udev-=
early-mount</div><div>2013-04-24 19:12:40 +0800 (4 months ago) =C2=A0contri=
b/hongxu/fix-systemd</div>

<div>2013-04-25 14:51:12 +0800 (4 months ago) =C2=A0contrib/wenzong/groff_s=
ed</div><div>2013-04-25 15:03:21 +0300 (4 months ago) =C2=A0contrib/stefans=
/perf-test2</div><div>2013-04-26 04:10:53 -0400 (4 months ago) =C2=A0contri=
b/robert/glib</div>

<div>2013-04-26 05:19:42 +0300 (4 months ago) =C2=A0contrib/andreeap/report=
2</div><div>2013-04-26 05:31:18 +0300 (4 months ago) =C2=A0contrib/andreeap=
/report-web</div><div>2013-04-27 04:15:09 -0400 (4 months ago) =C2=A0contri=
b/robert/hardlink</div>

<div>2013-04-30 11:23:16 -0700 (4 months ago) =C2=A0contrib/jzhang/2342</di=
v><div>2013-04-30 12:45:05 +0300 (4 months ago) =C2=A0contrib/bogdanm/multi=
client_rebased</div><div>2013-05-03 14:13:51 -0700 (4 months ago) =C2=A0con=
trib/sgw/save</div>

<div>2013-05-07 05:43:35 -0400 (4 months ago) =C2=A0contrib/robert/ext4</di=
v><div>2013-05-07 08:24:40 -0500 (4 months ago) =C2=A0contrib/tzanussi/trad=
itional-qawarn-fix</div><div>2013-05-07 18:36:21 +0800 (4 months ago) =C2=
=A0contrib/robert/rm_old</div>

<div>2013-05-08 02:25:54 -0400 (4 months ago) =C2=A0contrib/robert/nohdd</d=
iv><div>2013-05-08 04:06:41 -0400 (4 months ago) =C2=A0contrib/wenzong/nati=
vesdk-libtool</div><div>2013-05-08 04:29:20 -0400 (4 months ago) =C2=A0cont=
rib/robert/fatal</div>

<div>2013-05-08 10:42:54 +0300 (4 months ago) =C2=A0contrib/stefans/qemu-pt=
est1</div><div>2013-05-08 12:36:51 +0100 (4 months ago) =C2=A0contrib/adami=
an/mc_rebased.1</div><div>2013-05-08 13:21:34 +0100 (4 months ago) =C2=A0co=
ntrib/adamian/serverrefactor.1</div>

<div>2013-05-08 14:05:31 +0100 (4 months ago) =C2=A0contrib/adamian/bbrefac=
tor.2</div><div>2013-05-08 14:14:35 +0800 (4 months ago) =C2=A0contrib/robe=
rt/python</div><div>2013-05-08 15:10:21 +0100 (4 months ago) =C2=A0contrib/=
adamian/wip.bbrefactor.3</div>

<div>2013-05-08 16:36:47 +0100 (4 months ago) =C2=A0contrib/adamian/mc_refa=
ctor-1</div><div>2013-05-08 16:45:05 +0100 (4 months ago) =C2=A0contrib/ada=
mian/wip_mc_refactor-1</div><div>2013-05-08 17:20:11 +0300 (4 months ago) =
=C2=A0contrib/adinux/test1</div>

<div>2013-05-09 10:03:15 +0100 (3 months ago) =C2=A0contrib/adamian/mc_refa=
ctor-2</div><div>2013-05-09 10:12:18 +0100 (3 months ago) =C2=A0contrib/ada=
mian/devenv-1</div><div>2013-05-09 11:12:24 +0100 (3 months ago) =C2=A0cont=
rib/ross/dylan</div>

<div>2013-05-09 13:50:08 +0300 (3 months ago) =C2=A0contrib/adinux/test</di=
v><div>2013-05-09 15:09:44 +0300 (3 months ago) =C2=A0contrib/igrigorx/comm=
on-remote1</div><div>2013-05-09 21:44:55 -0700 (3 months ago) =C2=A0contrib=
/zedd/kerntools-dylan</div>

<div>2013-05-09 21:54:35 +0000 (3 months ago) =C2=A0contrib/rpurdie/t1</div=
><div>2013-05-10 09:45:09 -0700 (3 months ago) =C2=A0contrib/stap-thread-ac=
cess</div><div>2013-05-10 10:25:24 +0800 (3 months ago) =C2=A0contrib/rober=
t/nostamp</div>

<div>2013-05-10 13:33:08 +0800 (3 months ago) =C2=A0contrib/robert/noiso</d=
iv><div>2013-05-10 13:49:10 +0800 (3 months ago) =C2=A0contrib/kangkai/root=
home</div><div>2013-05-10 15:32:59 +0300 (3 months ago) =C2=A0contrib/igrig=
orx/common-remote2</div>

<div>2013-05-10 18:37:37 +0300 (3 months ago) =C2=A0contrib/stefans/qemutes=
ts2</div><div>2013-05-10 19:36:38 +0300 (3 months ago) =C2=A0contrib/stefan=
s/qemutests4</div><div>2013-05-11 11:38:36 +0000 (3 months ago) =C2=A0contr=
ib/rpurdie/t3</div>

<div>2013-05-12 20:32:18 -0700 (3 months ago) =C2=A0contrib/zedd/kerntools-=
danny</div><div>2013-05-12 20:34:52 -0700 (3 months ago) =C2=A0contrib/zedd=
/kernel-master</div><div>2013-05-12 20:34:52 -0700 (3 months ago) =C2=A0con=
trib/zedd/kerntools-master</div>

<div>2013-05-13 02:18:23 -0400 (3 months ago) =C2=A0contrib/robert/qa</div>=
<div>2013-05-13 11:06:05 +0800 (3 months ago) =C2=A0contrib/robert/cachedpa=
th</div><div>2013-05-14 11:54:41 +0100 (3 months ago) =C2=A0contrib/adamian=
/configurationRefactor_1</div>

<div>2013-05-14 15:10:23 +0100 (3 months ago) =C2=A0contrib/adamian/mc_refa=
ctor-3</div><div>2013-05-14 17:21:17 +0300 (3 months ago) =C2=A0contrib/bog=
danm/b3812</div><div>2013-05-15 15:10:28 +0800 (3 months ago) =C2=A0contrib=
/ChenQi/bind</div>

<div>2013-05-15 15:51:16 +0300 (3 months ago) =C2=A0contrib/adinux/cdrtools=
</div><div>2013-05-15 15:51:16 +0300 (3 months ago) =C2=A0contrib/adinuxcdt=
ools_test</div><div>2013-05-15 20:04:45 +0300 (3 months ago) =C2=A0contrib/=
stefans/qemutests3</div>

<div>2013-05-16 10:51:08 +0300 (3 months ago) =C2=A0contrib/adinuxcdrtools_=
test</div><div>2013-05-16 15:33:59 +0100 (3 months ago) =C2=A0contrib/confi=
gurationRefactor_2</div><div>2013-05-17 03:33:39 -0700 (3 months ago) =C2=
=A0contrib/jzhang/cdt-remote</div>

<div>2013-05-17 03:58:08 -0700 (3 months ago) =C2=A0contrib/jzhang/remote-Y=
Pide</div><div>2013-05-17 10:52:55 +0300 (3 months ago) =C2=A0contrib/remot=
e-wizard</div><div>2013-05-17 10:53:32 +0300 (3 months ago) =C2=A0contrib/a=
dinuxcdrtools_test3</div>

<div>2013-05-17 11:04:56 +0300 (3 months ago) =C2=A0contrib/remote-wizard-i=
de</div><div>2013-05-17 11:12:11 +0300 (3 months ago) =C2=A0contrib/stefans=
/qemu-ptest2</div><div>2013-05-17 12:33:38 +0100 (3 months ago) =C2=A0contr=
ib/adamian/configurationRefactor_2</div>

<div>2013-05-17 15:25:28 +0300 (3 months ago) =C2=A0contrib/stefans/qemutes=
ts1</div><div>2013-05-18 10:31:53 +0300 (3 months ago) =C2=A0contrib/rpurdi=
e/t6</div><div>2013-05-21 15:35:28 -0700 (3 months ago) =C2=A0contrib/sgw/v=
te</div><div>

2013-05-21 15:39:12 -0700 (3 months ago) =C2=A0contrib/sgw/updates</div><di=
v>2013-05-22 15:43:58 +0100 (3 months ago) =C2=A0contrib/adamian/mc_refacto=
r-5</div><div>2013-05-23 12:36:52 +0800 (3 months ago) =C2=A0contrib/ChenQi=
/postinst-logging-reimplementation</div>

<div>2013-05-24 17:47:12 +0300 (3 months ago) =C2=A0contrib/adinuxbastille<=
/div><div>2013-05-24 17:51:39 +0800 (3 months ago) =C2=A0contrib/hongxu/fix=
-cracklib</div><div>2013-05-27 15:15:15 +0300 (3 months ago) =C2=A0contrib/=
bogdanm/work</div>

<div>2013-05-27 17:25:40 +0300 (3 months ago) =C2=A0contrib/bogdanm/b3868</=
div><div>2013-05-27 19:37:21 +0800 (3 months ago) =C2=A0contrib/hongxu/fix-=
scons</div><div>2013-05-28 13:36:21 +0800 (3 months ago) =C2=A0contrib/Chen=
Qi/tinylogin-busybox</div>

<div>2013-05-28 14:32:48 +0100 (3 months ago) =C2=A0contrib/adamian/mc_ref_=
28may_1</div><div>2013-05-28 19:08:27 +0100 (3 months ago) =C2=A0contrib/ad=
amian/mc_ref_28may_2</div><div>2013-05-29 03:23:17 -0400 (3 months ago) =C2=
=A0contrib/jhuang0/d_lrzsz_0529_0</div>

<div>2013-05-29 04:08:05 -0400 (3 months ago) =C2=A0contrib/jhuang0/d_lrzsz=
_0529_1</div><div>2013-05-29 04:15:17 -0400 (3 months ago) =C2=A0contrib/jh=
uang0/d_lrzsz_0529_2</div><div>2013-05-29 05:09:14 -0400 (3 months ago) =C2=
=A0contrib/jhuang0/d_multilib_image_0529_0</div>

<div>2013-05-29 05:15:01 -0400 (3 months ago) =C2=A0contrib/jhuang0/d_multi=
lib_image_0529_1</div><div>2013-05-29 13:00:08 +0100 (3 months ago) =C2=A0c=
ontrib/ross/sato</div><div>2013-05-29 17:34:10 +0800 (3 months ago) =C2=A0c=
ontrib/ning/znbug4558</div>

<div>2013-05-29 17:37:32 +0800 (3 months ago) =C2=A0contrib/hongxu/support-=
fuse</div><div>2013-05-29 18:54:57 +0100 (3 months ago) =C2=A0contrib/adami=
an/mc_ref_29may</div><div>2013-05-29 22:52:19 -0400 (3 months ago) =C2=A0co=
ntrib/wenzong/qt-mobility</div>

<div>2013-05-29 22:56:01 -0500 (3 months ago) =C2=A0contrib/mhatle/misc</di=
v><div>2013-05-30 14:29:41 +0800 (3 months ago) =C2=A0contrib/ChenQi/busybo=
x-individual<br></div><div>2013-05-31 13:33:26 +0200 (3 months ago) =C2=A0c=
ontrib/pkj/makedevs<br>

</div><div>2013-06-03 10:56:10 +0800 (3 months ago) =C2=A0contrib/ning/bug4=
558</div><div>2013-06-03 14:54:23 +0300 (3 months ago) =C2=A0contrib/bogdan=
m/work2</div><div>2013-06-03 15:16:46 +0800 (3 months ago) =C2=A0contrib/sz=
hang/glib</div>

<div>2013-06-03 18:21:28 +0100 (3 months ago) =C2=A0contrib/bbarrosp/b1804<=
/div><div>2013-06-04 06:52:07 -0400 (3 months ago) =C2=A0contrib/jhuang0/d_=
grub097_0604_0</div><div>2013-06-04 06:57:24 -0400 (3 months ago) =C2=A0con=
trib/jhuang0/d_grub097_0604_1</div>

<div>2013-06-04 15:26:34 +0300 (3 months ago) =C2=A0contrib/adinux/working-=
bastille</div><div>2013-06-05 10:10:37 +0800 (3 months ago) =C2=A0contrib/r=
obert/refactor</div><div>2013-06-05 10:35:47 +0800 (3 months ago) =C2=A0con=
trib/yizhao/bug4595</div>

<div>2013-06-05 13:55:26 +0800 (3 months ago) =C2=A0contrib/roy/socat</div>=
<div>2013-06-05 15:25:25 +0800 (3 months ago) =C2=A0contrib/szhang/doc</div=
><div>2013-06-06 14:14:26 +0800 (3 months ago) =C2=A0contrib/hongxu/fix-ini=
t-live</div>

<div>2013-06-06 14:26:00 +0800 (3 months ago) =C2=A0contrib/hongxu/fix-ddia=
mge</div><div>2013-06-06 14:57:21 +0800 (3 months ago) =C2=A0contrib/szhang=
/white</div><div>2013-06-06 15:05:13 +0800 (3 months ago) =C2=A0contrib/roy=
/socat-v1</div>

<div>2013-06-06 17:11:32 +0800 (3 months ago) =C2=A0contrib/wenzong/chkconf=
ig</div><div>2013-06-07 09:16:16 +0800 (3 months ago) =C2=A0contrib/roy/ope=
nssh</div><div>2013-06-07 10:27:06 +0800 (3 months ago) =C2=A0contrib/roy/p=
pp</div><div>

2013-06-07 13:31:35 +0800 (3 months ago) =C2=A0contrib/roy/trace-cmd</div><=
div>2013-06-07 13:46:23 +0800 (3 months ago) =C2=A0contrib/wenzong/cracklib=
</div><div>2013-06-07 14:38:19 +0300 (3 months ago) =C2=A0contrib/bogdanm/b=
3868_2nd</div>

<div><br></div></div><div>Ross</div></div></div></div>

--047d7bdc192ca1533404e471c2e5--
