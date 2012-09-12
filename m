Return-Path: <B19537@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C372BE01490
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:12 -0700 (PDT)
Received: from mail245-tx2-R.bigfish.com (10.9.14.243) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:50:12 +0000
Received: from mail245-tx2 (localhost [127.0.0.1])	by
	mail245-tx2-R.bigfish.com (Postfix) with ESMTP id 5A7A610400A7	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:12 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 10
X-BigFish: VS10(zz936eIc85fha1fflb922lc8kzz1202h1d1ah1d2ahzz17326ah8275bhz2dh2a8h668h839hd24he5bhf0ah107ah1288h12a5h12bdh1155h)
Received: from mail245-tx2 (localhost.localdomain [127.0.0.1]) by mail245-tx2
	(MessageSwitch) id 1347432609402731_19092;
	Wed, 12 Sep 2012 06:50:09 +0000 (UTC)
Received: from TX2EHSMHS014.bigfish.com (unknown [10.9.14.235])	by
	mail245-tx2.bigfish.com (Postfix) with ESMTP id 51A14154004B	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:09 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS014.bigfish.com
	(10.9.99.114) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:50:09 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-005.039d.mgd.msft.net (10.84.1.17) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:50:06 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQW025013;
	Tue, 11 Sep 2012 23:50:03 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:28 +0800
Message-ID: <1347433590-8481-14-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [meta-fsl-ppc 14/16] busybox: add fsl customized defconfig
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:13 -0000
Content-Type: text/plain

From: Ting Liu <b28495@freescale.com>

1.use largest general-purpose configuration
2.add a patch to fix possible build issue with kernel 3.0
  reference: http://www.gossamer-threads.com/lists/linux/kernel/1418363

Signed-off-by: Ting Liu <b28495@freescale.com>
---
 .../busybox-1.19.4/busybox-1.19.4-ubi-user-h.patch |  419 ++++++++
 .../busybox/busybox-1.19.4/defconfig-fsl           | 1013 ++++++++++++++++++++
 recipes-append/busybox/busybox-1.19.4/inetd        |   33 +
 recipes-append/busybox/busybox-1.19.4/inetd.conf   |   20 +
 recipes-append/busybox/busybox_1.19.4.bbappend     |   15 +
 5 files changed, 1500 insertions(+)
 create mode 100644 recipes-append/busybox/busybox-1.19.4/busybox-1.19.4-ubi-user-h.patch
 create mode 100644 recipes-append/busybox/busybox-1.19.4/defconfig-fsl
 create mode 100644 recipes-append/busybox/busybox-1.19.4/inetd
 create mode 100644 recipes-append/busybox/busybox-1.19.4/inetd.conf
 create mode 100644 recipes-append/busybox/busybox_1.19.4.bbappend

diff --git a/recipes-append/busybox/busybox-1.19.4/busybox-1.19.4-ubi-user-h.patch b/recipes-append/busybox/busybox-1.19.4/busybox-1.19.4-ubi-user-h.patch
new file mode 100644
index 0000000..42bcfa9
--- /dev/null
+++ b/recipes-append/busybox/busybox-1.19.4/busybox-1.19.4-ubi-user-h.patch
@@ -0,0 +1,419 @@
+20110926 Juergen Lambrecht <J.Lambrecht@televic.com>
+This patch add an include file from mtd-utils.
+
+diff --exclude CVS --exclude .git -uNr busybox-1.19.4/include/mtd/ubi-user.h busybox-1.19.4.modified/include/mtd/ubi-user.h
+--- busybox-1.19.4/include/mtd/ubi-user.h	1970-01-01 01:00:00.000000000 +0100
++++ busybox-1.19.4.modified/include/mtd/ubi-user.h	2011-09-26 15:48:54.884088675 +0200
+@@ -0,0 +1,412 @@
++/*
++ * Copyright (c) International Business Machines Corp., 2006
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
++ * the GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, write to the Free Software
++ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
++ *
++ * Author: Artem Bityutskiy (???????? ?????)
++ */
++
++#ifndef __UBI_USER_H__
++#define __UBI_USER_H__
++
++#include <linux/types.h>
++
++/*
++ * UBI device creation (the same as MTD device attachment)
++ * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * MTD devices may be attached using %UBI_IOCATT ioctl command of the UBI
++ * control device. The caller has to properly fill and pass
++ * &struct ubi_attach_req object - UBI will attach the MTD device specified in
++ * the request and return the newly created UBI device number as the ioctl
++ * return value.
++ *
++ * UBI device deletion (the same as MTD device detachment)
++ * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * An UBI device maybe deleted with %UBI_IOCDET ioctl command of the UBI
++ * control device.
++ *
++ * UBI volume creation
++ * ~~~~~~~~~~~~~~~~~~~
++ *
++ * UBI volumes are created via the %UBI_IOCMKVOL ioctl command of UBI character
++ * device. A &struct ubi_mkvol_req object has to be properly filled and a
++ * pointer to it has to be passed to the ioctl.
++ *
++ * UBI volume deletion
++ * ~~~~~~~~~~~~~~~~~~~
++ *
++ * To delete a volume, the %UBI_IOCRMVOL ioctl command of the UBI character
++ * device should be used. A pointer to the 32-bit volume ID hast to be passed
++ * to the ioctl.
++ *
++ * UBI volume re-size
++ * ~~~~~~~~~~~~~~~~~~
++ *
++ * To re-size a volume, the %UBI_IOCRSVOL ioctl command of the UBI character
++ * device should be used. A &struct ubi_rsvol_req object has to be properly
++ * filled and a pointer to it has to be passed to the ioctl.
++ *
++ * UBI volumes re-name
++ * ~~~~~~~~~~~~~~~~~~~
++ *
++ * To re-name several volumes atomically at one go, the %UBI_IOCRNVOL command
++ * of the UBI character device should be used. A &struct ubi_rnvol_req object
++ * has to be properly filled and a pointer to it has to be passed to the ioctl.
++ *
++ * UBI volume update
++ * ~~~~~~~~~~~~~~~~~
++ *
++ * Volume update should be done via the %UBI_IOCVOLUP ioctl command of the
++ * corresponding UBI volume character device. A pointer to a 64-bit update
++ * size should be passed to the ioctl. After this, UBI expects user to write
++ * this number of bytes to the volume character device. The update is finished
++ * when the claimed number of bytes is passed. So, the volume update sequence
++ * is something like:
++ *
++ * fd = open("/dev/my_volume");
++ * ioctl(fd, UBI_IOCVOLUP, &image_size);
++ * write(fd, buf, image_size);
++ * close(fd);
++ *
++ * Logical eraseblock erase
++ * ~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * To erase a logical eraseblock, the %UBI_IOCEBER ioctl command of the
++ * corresponding UBI volume character device should be used. This command
++ * unmaps the requested logical eraseblock, makes sure the corresponding
++ * physical eraseblock is successfully erased, and returns.
++ *
++ * Atomic logical eraseblock change
++ * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * Atomic logical eraseblock change operation is called using the %UBI_IOCEBCH
++ * ioctl command of the corresponding UBI volume character device. A pointer to
++ * a &struct ubi_leb_change_req object has to be passed to the ioctl. Then the
++ * user is expected to write the requested amount of bytes (similarly to what
++ * should be done in case of the "volume update" ioctl).
++ *
++ * Logical eraseblock map
++ * ~~~~~~~~~~~~~~~~~~~~~
++ *
++ * To map a logical eraseblock to a physical eraseblock, the %UBI_IOCEBMAP
++ * ioctl command should be used. A pointer to a &struct ubi_map_req object is
++ * expected to be passed. The ioctl maps the requested logical eraseblock to
++ * a physical eraseblock and returns.  Only non-mapped logical eraseblocks can
++ * be mapped. If the logical eraseblock specified in the request is already
++ * mapped to a physical eraseblock, the ioctl fails and returns error.
++ *
++ * Logical eraseblock unmap
++ * ~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * To unmap a logical eraseblock to a physical eraseblock, the %UBI_IOCEBUNMAP
++ * ioctl command should be used. The ioctl unmaps the logical eraseblocks,
++ * schedules corresponding physical eraseblock for erasure, and returns. Unlike
++ * the "LEB erase" command, it does not wait for the physical eraseblock being
++ * erased. Note, the side effect of this is that if an unclean reboot happens
++ * after the unmap ioctl returns, you may find the LEB mapped again to the same
++ * physical eraseblock after the UBI is run again.
++ *
++ * Check if logical eraseblock is mapped
++ * ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * To check if a logical eraseblock is mapped to a physical eraseblock, the
++ * %UBI_IOCEBISMAP ioctl command should be used. It returns %0 if the LEB is
++ * not mapped, and %1 if it is mapped.
++ *
++ * Set an UBI volume property
++ * ~~~~~~~~~~~~~~~~~~~~~~~~~
++ *
++ * To set an UBI volume property the %UBI_IOCSETPROP ioctl command should be
++ * used. A pointer to a &struct ubi_set_prop_req object is expected to be
++ * passed. The object describes which property should be set, and to which value
++ * it should be set.
++ */
++
++/*
++ * When a new UBI volume or UBI device is created, users may either specify the
++ * volume/device number they want to create or to let UBI automatically assign
++ * the number using these constants.
++ */
++#define UBI_VOL_NUM_AUTO (-1)
++#define UBI_DEV_NUM_AUTO (-1)
++
++/* Maximum volume name length */
++#define UBI_MAX_VOLUME_NAME 127
++
++/* ioctl commands of UBI character devices */
++
++#define UBI_IOC_MAGIC 'o'
++
++/* Create an UBI volume */
++#define UBI_IOCMKVOL _IOW(UBI_IOC_MAGIC, 0, struct ubi_mkvol_req)
++/* Remove an UBI volume */
++#define UBI_IOCRMVOL _IOW(UBI_IOC_MAGIC, 1, __s32)
++/* Re-size an UBI volume */
++#define UBI_IOCRSVOL _IOW(UBI_IOC_MAGIC, 2, struct ubi_rsvol_req)
++/* Re-name volumes */
++#define UBI_IOCRNVOL _IOW(UBI_IOC_MAGIC, 3, struct ubi_rnvol_req)
++
++/* ioctl commands of the UBI control character device */
++
++#define UBI_CTRL_IOC_MAGIC 'o'
++
++/* Attach an MTD device */
++#define UBI_IOCATT _IOW(UBI_CTRL_IOC_MAGIC, 64, struct ubi_attach_req)
++/* Detach an MTD device */
++#define UBI_IOCDET _IOW(UBI_CTRL_IOC_MAGIC, 65, __s32)
++
++/* ioctl commands of UBI volume character devices */
++
++#define UBI_VOL_IOC_MAGIC 'O'
++
++/* Start UBI volume update */
++#define UBI_IOCVOLUP _IOW(UBI_VOL_IOC_MAGIC, 0, __s64)
++/* LEB erasure command, used for debugging, disabled by default */
++#define UBI_IOCEBER _IOW(UBI_VOL_IOC_MAGIC, 1, __s32)
++/* Atomic LEB change command */
++#define UBI_IOCEBCH _IOW(UBI_VOL_IOC_MAGIC, 2, __s32)
++/* Map LEB command */
++#define UBI_IOCEBMAP _IOW(UBI_VOL_IOC_MAGIC, 3, struct ubi_map_req)
++/* Unmap LEB command */
++#define UBI_IOCEBUNMAP _IOW(UBI_VOL_IOC_MAGIC, 4, __s32)
++/* Check if LEB is mapped command */
++#define UBI_IOCEBISMAP _IOR(UBI_VOL_IOC_MAGIC, 5, __s32)
++/* Set an UBI volume property */
++#define UBI_IOCSETPROP _IOW(UBI_VOL_IOC_MAGIC, 6, struct ubi_set_prop_req)
++
++/* Maximum MTD device name length supported by UBI */
++#define MAX_UBI_MTD_NAME_LEN 127
++
++/* Maximum amount of UBI volumes that can be re-named at one go */
++#define UBI_MAX_RNVOL 32
++
++/*
++ * UBI data type hint constants.
++ *
++ * UBI_LONGTERM: long-term data
++ * UBI_SHORTTERM: short-term data
++ * UBI_UNKNOWN: data persistence is unknown
++ *
++ * These constants are used when data is written to UBI volumes in order to
++ * help the UBI wear-leveling unit to find more appropriate physical
++ * eraseblocks.
++ */
++enum {
++	UBI_LONGTERM  = 1,
++	UBI_SHORTTERM = 2,
++	UBI_UNKNOWN   = 3,
++};
++
++/*
++ * UBI volume type constants.
++ *
++ * @UBI_DYNAMIC_VOLUME: dynamic volume
++ * @UBI_STATIC_VOLUME:  static volume
++ */
++enum {
++	UBI_DYNAMIC_VOLUME = 3,
++	UBI_STATIC_VOLUME  = 4,
++};
++
++/*
++ * UBI set property ioctl constants
++ *
++ * @UBI_PROP_DIRECT_WRITE: allow / disallow user to directly write and
++ *                         erase individual eraseblocks on dynamic volumes
++ */
++enum {
++       UBI_PROP_DIRECT_WRITE = 1,
++};
++
++/**
++ * struct ubi_attach_req - attach MTD device request.
++ * @ubi_num: UBI device number to create
++ * @mtd_num: MTD device number to attach
++ * @vid_hdr_offset: VID header offset (use defaults if %0)
++ * @padding: reserved for future, not used, has to be zeroed
++ *
++ * This data structure is used to specify MTD device UBI has to attach and the
++ * parameters it has to use. The number which should be assigned to the new UBI
++ * device is passed in @ubi_num. UBI may automatically assign the number if
++ * @UBI_DEV_NUM_AUTO is passed. In this case, the device number is returned in
++ * @ubi_num.
++ *
++ * Most applications should pass %0 in @vid_hdr_offset to make UBI use default
++ * offset of the VID header within physical eraseblocks. The default offset is
++ * the next min. I/O unit after the EC header. For example, it will be offset
++ * 512 in case of a 512 bytes page NAND flash with no sub-page support. Or
++ * it will be 512 in case of a 2KiB page NAND flash with 4 512-byte sub-pages.
++ *
++ * But in rare cases, if this optimizes things, the VID header may be placed to
++ * a different offset. For example, the boot-loader might do things faster if
++ * the VID header sits at the end of the first 2KiB NAND page with 4 sub-pages.
++ * As the boot-loader would not normally need to read EC headers (unless it
++ * needs UBI in RW mode), it might be faster to calculate ECC. This is weird
++ * example, but it real-life example. So, in this example, @vid_hdr_offer would
++ * be 2KiB-64 bytes = 1984. Note, that this position is not even 512-bytes
++ * aligned, which is OK, as UBI is clever enough to realize this is 4th
++ * sub-page of the first page and add needed padding.
++ */
++struct ubi_attach_req {
++	__s32 ubi_num;
++	__s32 mtd_num;
++	__s32 vid_hdr_offset;
++	__s8 padding[12];
++};
++
++/**
++ * struct ubi_mkvol_req - volume description data structure used in
++ *                        volume creation requests.
++ * @vol_id: volume number
++ * @alignment: volume alignment
++ * @bytes: volume size in bytes
++ * @vol_type: volume type (%UBI_DYNAMIC_VOLUME or %UBI_STATIC_VOLUME)
++ * @padding1: reserved for future, not used, has to be zeroed
++ * @name_len: volume name length
++ * @padding2: reserved for future, not used, has to be zeroed
++ * @name: volume name
++ *
++ * This structure is used by user-space programs when creating new volumes. The
++ * @used_bytes field is only necessary when creating static volumes.
++ *
++ * The @alignment field specifies the required alignment of the volume logical
++ * eraseblock. This means, that the size of logical eraseblocks will be aligned
++ * to this number, i.e.,
++ *	(UBI device logical eraseblock size) mod (@alignment) = 0.
++ *
++ * To put it differently, the logical eraseblock of this volume may be slightly
++ * shortened in order to make it properly aligned. The alignment has to be
++ * multiple of the flash minimal input/output unit, or %1 to utilize the entire
++ * available space of logical eraseblocks.
++ *
++ * The @alignment field may be useful, for example, when one wants to maintain
++ * a block device on top of an UBI volume. In this case, it is desirable to fit
++ * an integer number of blocks in logical eraseblocks of this UBI volume. With
++ * alignment it is possible to update this volume using plane UBI volume image
++ * BLOBs, without caring about how to properly align them.
++ */
++struct ubi_mkvol_req {
++	__s32 vol_id;
++	__s32 alignment;
++	__s64 bytes;
++	__s8 vol_type;
++	__s8 padding1;
++	__s16 name_len;
++	__s8 padding2[4];
++	char name[UBI_MAX_VOLUME_NAME + 1];
++} __attribute__ ((packed));
++
++/**
++ * struct ubi_rsvol_req - a data structure used in volume re-size requests.
++ * @vol_id: ID of the volume to re-size
++ * @bytes: new size of the volume in bytes
++ *
++ * Re-sizing is possible for both dynamic and static volumes. But while dynamic
++ * volumes may be re-sized arbitrarily, static volumes cannot be made to be
++ * smaller than the number of bytes they bear. To arbitrarily shrink a static
++ * volume, it must be wiped out first (by means of volume update operation with
++ * zero number of bytes).
++ */
++struct ubi_rsvol_req {
++	__s64 bytes;
++	__s32 vol_id;
++} __attribute__ ((packed));
++
++/**
++ * struct ubi_rnvol_req - volumes re-name request.
++ * @count: count of volumes to re-name
++ * @padding1:  reserved for future, not used, has to be zeroed
++ * @vol_id: ID of the volume to re-name
++ * @name_len: name length
++ * @padding2:  reserved for future, not used, has to be zeroed
++ * @name: new volume name
++ *
++ * UBI allows to re-name up to %32 volumes at one go. The count of volumes to
++ * re-name is specified in the @count field. The ID of the volumes to re-name
++ * and the new names are specified in the @vol_id and @name fields.
++ *
++ * The UBI volume re-name operation is atomic, which means that should power cut
++ * happen, the volumes will have either old name or new name. So the possible
++ * use-cases of this command is atomic upgrade. Indeed, to upgrade, say, volumes
++ * A and B one may create temporary volumes %A1 and %B1 with the new contents,
++ * then atomically re-name A1->A and B1->B, in which case old %A and %B will
++ * be removed.
++ *
++ * If it is not desirable to remove old A and B, the re-name request has to
++ * contain 4 entries: A1->A, A->A1, B1->B, B->B1, in which case old A1 and B1
++ * become A and B, and old A and B will become A1 and B1.
++ *
++ * It is also OK to request: A1->A, A1->X, B1->B, B->Y, in which case old A1
++ * and B1 become A and B, and old A and B become X and Y.
++ *
++ * In other words, in case of re-naming into an existing volume name, the
++ * existing volume is removed, unless it is re-named as well at the same
++ * re-name request.
++ */
++struct ubi_rnvol_req {
++	__s32 count;
++	__s8 padding1[12];
++	struct {
++		__s32 vol_id;
++		__s16 name_len;
++		__s8  padding2[2];
++		char    name[UBI_MAX_VOLUME_NAME + 1];
++	} ents[UBI_MAX_RNVOL];
++} __attribute__ ((packed));
++
++/**
++ * struct ubi_leb_change_req - a data structure used in atomic LEB change
++ *                             requests.
++ * @lnum: logical eraseblock number to change
++ * @bytes: how many bytes will be written to the logical eraseblock
++ * @dtype: data type (%UBI_LONGTERM, %UBI_SHORTTERM, %UBI_UNKNOWN)
++ * @padding: reserved for future, not used, has to be zeroed
++ */
++struct ubi_leb_change_req {
++	__s32 lnum;
++	__s32 bytes;
++	__s8  dtype;
++	__s8  padding[7];
++} __attribute__ ((packed));
++
++/**
++ * struct ubi_map_req - a data structure used in map LEB requests.
++ * @lnum: logical eraseblock number to unmap
++ * @dtype: data type (%UBI_LONGTERM, %UBI_SHORTTERM, %UBI_UNKNOWN)
++ * @padding: reserved for future, not used, has to be zeroed
++ */
++struct ubi_map_req {
++	__s32 lnum;
++	__s8  dtype;
++	__s8  padding[3];
++} __attribute__ ((packed));
++
++
++/**
++ * struct ubi_set_prop_req - a data structure used to set an ubi volume
++ *                           property.
++ * @property: property to set (%UBI_PROP_DIRECT_WRITE)
++ * @padding: reserved for future, not used, has to be zeroed
++ * @value: value to set
++ */
++struct ubi_set_prop_req {
++       __u8  property;
++       __u8  padding[7];
++       __u64 value;
++}  __attribute__ ((packed));
++
++#endif /* __UBI_USER_H__ */
diff --git a/recipes-append/busybox/busybox-1.19.4/defconfig-fsl b/recipes-append/busybox/busybox-1.19.4/defconfig-fsl
new file mode 100644
index 0000000..52d5bbf
--- /dev/null
+++ b/recipes-append/busybox/busybox-1.19.4/defconfig-fsl
@@ -0,0 +1,1013 @@
+#
+# Automatically generated make config: don't edit
+# Busybox version: 1.19.4
+# Mon Aug 20 15:36:39 2012
+#
+CONFIG_HAVE_DOT_CONFIG=y
+
+#
+# Busybox Settings
+#
+
+#
+# General Configuration
+#
+# CONFIG_DESKTOP is not set
+# CONFIG_EXTRA_COMPAT is not set
+CONFIG_INCLUDE_SUSv2=y
+# CONFIG_USE_PORTABLE_CODE is not set
+CONFIG_PLATFORM_LINUX=y
+CONFIG_FEATURE_BUFFERS_USE_MALLOC=y
+# CONFIG_FEATURE_BUFFERS_GO_ON_STACK is not set
+# CONFIG_FEATURE_BUFFERS_GO_IN_BSS is not set
+CONFIG_SHOW_USAGE=y
+# CONFIG_FEATURE_VERBOSE_USAGE is not set
+CONFIG_FEATURE_COMPRESS_USAGE=y
+# CONFIG_FEATURE_INSTALLER is not set
+# CONFIG_INSTALL_NO_USR is not set
+CONFIG_LOCALE_SUPPORT=y
+# CONFIG_UNICODE_SUPPORT is not set
+# CONFIG_UNICODE_USING_LOCALE is not set
+# CONFIG_FEATURE_CHECK_UNICODE_IN_ENV is not set
+CONFIG_SUBST_WCHAR=0
+CONFIG_LAST_SUPPORTED_WCHAR=0
+# CONFIG_UNICODE_COMBINING_WCHARS is not set
+# CONFIG_UNICODE_WIDE_WCHARS is not set
+# CONFIG_UNICODE_BIDI_SUPPORT is not set
+# CONFIG_UNICODE_NEUTRAL_TABLE is not set
+# CONFIG_UNICODE_PRESERVE_BROKEN is not set
+CONFIG_LONG_OPTS=y
+CONFIG_FEATURE_DEVPTS=y
+# CONFIG_FEATURE_CLEAN_UP is not set
+CONFIG_FEATURE_UTMP=y
+CONFIG_FEATURE_WTMP=y
+CONFIG_FEATURE_PIDFILE=y
+CONFIG_FEATURE_SUID=y
+CONFIG_FEATURE_SUID_CONFIG=y
+CONFIG_FEATURE_SUID_CONFIG_QUIET=y
+# CONFIG_SELINUX is not set
+# CONFIG_FEATURE_PREFER_APPLETS is not set
+CONFIG_BUSYBOX_EXEC_PATH="/proc/self/exe"
+CONFIG_FEATURE_SYSLOG=y
+CONFIG_FEATURE_HAVE_RPC=y
+
+#
+# Build Options
+#
+# CONFIG_STATIC is not set
+# CONFIG_PIE is not set
+# CONFIG_NOMMU is not set
+# CONFIG_BUILD_LIBBUSYBOX is not set
+# CONFIG_FEATURE_INDIVIDUAL is not set
+# CONFIG_FEATURE_SHARED_BUSYBOX is not set
+CONFIG_LFS=y
+CONFIG_CROSS_COMPILER_PREFIX=""
+CONFIG_EXTRA_CFLAGS=""
+
+#
+# Debugging Options
+#
+# CONFIG_DEBUG is not set
+# CONFIG_DEBUG_PESSIMIZE is not set
+# CONFIG_WERROR is not set
+CONFIG_NO_DEBUG_LIB=y
+# CONFIG_DMALLOC is not set
+# CONFIG_EFENCE is not set
+
+#
+# Installation Options ("make install" behavior)
+#
+CONFIG_INSTALL_APPLET_SYMLINKS=y
+# CONFIG_INSTALL_APPLET_HARDLINKS is not set
+# CONFIG_INSTALL_APPLET_SCRIPT_WRAPPERS is not set
+# CONFIG_INSTALL_APPLET_DONT is not set
+# CONFIG_INSTALL_SH_APPLET_SYMLINK is not set
+# CONFIG_INSTALL_SH_APPLET_HARDLINK is not set
+# CONFIG_INSTALL_SH_APPLET_SCRIPT_WRAPPER is not set
+CONFIG_PREFIX="./_install"
+
+#
+# Busybox Library Tuning
+#
+CONFIG_FEATURE_SYSTEMD=y
+CONFIG_FEATURE_RTMINMAX=y
+CONFIG_PASSWORD_MINLEN=6
+CONFIG_MD5_SIZE_VS_SPEED=2
+CONFIG_FEATURE_FAST_TOP=y
+# CONFIG_FEATURE_ETC_NETWORKS is not set
+CONFIG_FEATURE_USE_TERMIOS=y
+CONFIG_FEATURE_EDITING=y
+CONFIG_FEATURE_EDITING_MAX_LEN=1024
+# CONFIG_FEATURE_EDITING_VI is not set
+CONFIG_FEATURE_EDITING_HISTORY=255
+CONFIG_FEATURE_EDITING_SAVEHISTORY=y
+CONFIG_FEATURE_REVERSE_SEARCH=y
+CONFIG_FEATURE_TAB_COMPLETION=y
+# CONFIG_FEATURE_USERNAME_COMPLETION is not set
+CONFIG_FEATURE_EDITING_FANCY_PROMPT=y
+# CONFIG_FEATURE_EDITING_ASK_TERMINAL is not set
+CONFIG_FEATURE_NON_POSIX_CP=y
+# CONFIG_FEATURE_VERBOSE_CP_MESSAGE is not set
+CONFIG_FEATURE_COPYBUF_KB=4
+CONFIG_FEATURE_SKIP_ROOTFS=y
+CONFIG_MONOTONIC_SYSCALL=y
+CONFIG_IOCTL_HEX2STR_ERROR=y
+CONFIG_FEATURE_HWIB=y
+
+#
+# Applets
+#
+
+#
+# Archival Utilities
+#
+CONFIG_FEATURE_SEAMLESS_XZ=y
+CONFIG_FEATURE_SEAMLESS_LZMA=y
+CONFIG_FEATURE_SEAMLESS_BZ2=y
+CONFIG_FEATURE_SEAMLESS_GZ=y
+CONFIG_FEATURE_SEAMLESS_Z=y
+CONFIG_AR=y
+CONFIG_FEATURE_AR_LONG_FILENAMES=y
+CONFIG_FEATURE_AR_CREATE=y
+CONFIG_BUNZIP2=y
+CONFIG_BZIP2=y
+CONFIG_CPIO=y
+CONFIG_FEATURE_CPIO_O=y
+CONFIG_FEATURE_CPIO_P=y
+# CONFIG_DPKG is not set
+# CONFIG_DPKG_DEB is not set
+# CONFIG_FEATURE_DPKG_DEB_EXTRACT_ONLY is not set
+CONFIG_GUNZIP=y
+CONFIG_GZIP=y
+CONFIG_FEATURE_GZIP_LONG_OPTIONS=y
+CONFIG_LZOP=y
+# CONFIG_LZOP_COMPR_HIGH is not set
+CONFIG_RPM2CPIO=y
+CONFIG_RPM=y
+CONFIG_TAR=y
+CONFIG_FEATURE_TAR_CREATE=y
+CONFIG_FEATURE_TAR_AUTODETECT=y
+CONFIG_FEATURE_TAR_FROM=y
+CONFIG_FEATURE_TAR_OLDGNU_COMPATIBILITY=y
+CONFIG_FEATURE_TAR_OLDSUN_COMPATIBILITY=y
+CONFIG_FEATURE_TAR_GNU_EXTENSIONS=y
+CONFIG_FEATURE_TAR_LONG_OPTIONS=y
+CONFIG_FEATURE_TAR_TO_COMMAND=y
+CONFIG_FEATURE_TAR_UNAME_GNAME=y
+CONFIG_FEATURE_TAR_NOPRESERVE_TIME=y
+# CONFIG_FEATURE_TAR_SELINUX is not set
+# CONFIG_UNCOMPRESS is not set
+CONFIG_UNLZMA=y
+CONFIG_FEATURE_LZMA_FAST=y
+CONFIG_LZMA=y
+CONFIG_UNXZ=y
+CONFIG_XZ=y
+CONFIG_UNZIP=y
+
+#
+# Coreutils
+#
+CONFIG_BASENAME=y
+CONFIG_CAT=y
+CONFIG_DATE=y
+CONFIG_FEATURE_DATE_ISOFMT=y
+# CONFIG_FEATURE_DATE_NANO is not set
+CONFIG_FEATURE_DATE_COMPAT=y
+CONFIG_ID=y
+CONFIG_GROUPS=y
+CONFIG_TEST=y
+CONFIG_FEATURE_TEST_64=y
+CONFIG_TOUCH=y
+CONFIG_TR=y
+CONFIG_FEATURE_TR_CLASSES=y
+CONFIG_FEATURE_TR_EQUIV=y
+CONFIG_BASE64=y
+CONFIG_WHO=y
+CONFIG_USERS=y
+CONFIG_CAL=y
+CONFIG_CATV=y
+CONFIG_CHGRP=y
+CONFIG_CHMOD=y
+CONFIG_CHOWN=y
+CONFIG_FEATURE_CHOWN_LONG_OPTIONS=y
+CONFIG_CHROOT=y
+CONFIG_CKSUM=y
+CONFIG_COMM=y
+CONFIG_CP=y
+CONFIG_FEATURE_CP_LONG_OPTIONS=y
+CONFIG_CUT=y
+CONFIG_DD=y
+CONFIG_FEATURE_DD_SIGNAL_HANDLING=y
+CONFIG_FEATURE_DD_THIRD_STATUS_LINE=y
+CONFIG_FEATURE_DD_IBS_OBS=y
+CONFIG_DF=y
+CONFIG_FEATURE_DF_FANCY=y
+CONFIG_DIRNAME=y
+CONFIG_DOS2UNIX=y
+CONFIG_UNIX2DOS=y
+CONFIG_DU=y
+CONFIG_FEATURE_DU_DEFAULT_BLOCKSIZE_1K=y
+CONFIG_ECHO=y
+CONFIG_FEATURE_FANCY_ECHO=y
+CONFIG_ENV=y
+CONFIG_FEATURE_ENV_LONG_OPTIONS=y
+CONFIG_EXPAND=y
+CONFIG_FEATURE_EXPAND_LONG_OPTIONS=y
+CONFIG_EXPR=y
+CONFIG_EXPR_MATH_SUPPORT_64=y
+CONFIG_FALSE=y
+CONFIG_FOLD=y
+CONFIG_FSYNC=y
+CONFIG_HEAD=y
+CONFIG_FEATURE_FANCY_HEAD=y
+CONFIG_HOSTID=y
+CONFIG_INSTALL=y
+CONFIG_FEATURE_INSTALL_LONG_OPTIONS=y
+CONFIG_LN=y
+CONFIG_LOGNAME=y
+CONFIG_LS=y
+CONFIG_FEATURE_LS_FILETYPES=y
+CONFIG_FEATURE_LS_FOLLOWLINKS=y
+CONFIG_FEATURE_LS_RECURSIVE=y
+CONFIG_FEATURE_LS_SORTFILES=y
+CONFIG_FEATURE_LS_TIMESTAMPS=y
+CONFIG_FEATURE_LS_USERNAME=y
+CONFIG_FEATURE_LS_COLOR=y
+CONFIG_FEATURE_LS_COLOR_IS_DEFAULT=y
+CONFIG_MD5SUM=y
+CONFIG_MKDIR=y
+CONFIG_FEATURE_MKDIR_LONG_OPTIONS=y
+CONFIG_MKFIFO=y
+CONFIG_MKNOD=y
+CONFIG_MV=y
+CONFIG_FEATURE_MV_LONG_OPTIONS=y
+CONFIG_NICE=y
+CONFIG_NOHUP=y
+CONFIG_OD=y
+CONFIG_PRINTENV=y
+CONFIG_PRINTF=y
+CONFIG_PWD=y
+CONFIG_READLINK=y
+CONFIG_FEATURE_READLINK_FOLLOW=y
+CONFIG_REALPATH=y
+CONFIG_RM=y
+CONFIG_RMDIR=y
+CONFIG_FEATURE_RMDIR_LONG_OPTIONS=y
+CONFIG_SEQ=y
+CONFIG_SHA1SUM=y
+CONFIG_SHA256SUM=y
+CONFIG_SHA512SUM=y
+CONFIG_SLEEP=y
+CONFIG_FEATURE_FANCY_SLEEP=y
+CONFIG_FEATURE_FLOAT_SLEEP=y
+CONFIG_SORT=y
+CONFIG_FEATURE_SORT_BIG=y
+CONFIG_SPLIT=y
+CONFIG_FEATURE_SPLIT_FANCY=y
+CONFIG_STAT=y
+CONFIG_FEATURE_STAT_FORMAT=y
+CONFIG_STTY=y
+CONFIG_SUM=y
+CONFIG_SYNC=y
+CONFIG_TAC=y
+CONFIG_TAIL=y
+CONFIG_FEATURE_FANCY_TAIL=y
+CONFIG_TEE=y
+CONFIG_FEATURE_TEE_USE_BLOCK_IO=y
+CONFIG_TRUE=y
+CONFIG_TTY=y
+CONFIG_UNAME=y
+CONFIG_UNEXPAND=y
+CONFIG_FEATURE_UNEXPAND_LONG_OPTIONS=y
+CONFIG_UNIQ=y
+CONFIG_USLEEP=y
+CONFIG_UUDECODE=y
+CONFIG_UUENCODE=y
+CONFIG_WC=y
+CONFIG_FEATURE_WC_LARGE=y
+CONFIG_WHOAMI=y
+CONFIG_YES=y
+
+#
+# Common options for cp and mv
+#
+CONFIG_FEATURE_PRESERVE_HARDLINKS=y
+
+#
+# Common options for ls, more and telnet
+#
+CONFIG_FEATURE_AUTOWIDTH=y
+
+#
+# Common options for df, du, ls
+#
+CONFIG_FEATURE_HUMAN_READABLE=y
+
+#
+# Common options for md5sum, sha1sum, sha256sum, sha512sum
+#
+CONFIG_FEATURE_MD5_SHA1_SUM_CHECK=y
+
+#
+# Console Utilities
+#
+CONFIG_CHVT=y
+CONFIG_FGCONSOLE=y
+CONFIG_CLEAR=y
+CONFIG_DEALLOCVT=y
+CONFIG_DUMPKMAP=y
+CONFIG_KBD_MODE=y
+CONFIG_LOADFONT=y
+CONFIG_LOADKMAP=y
+CONFIG_OPENVT=y
+CONFIG_RESET=y
+CONFIG_RESIZE=y
+CONFIG_FEATURE_RESIZE_PRINT=y
+CONFIG_SETCONSOLE=y
+CONFIG_FEATURE_SETCONSOLE_LONG_OPTIONS=y
+CONFIG_SETFONT=y
+CONFIG_FEATURE_SETFONT_TEXTUAL_MAP=y
+CONFIG_DEFAULT_SETFONT_DIR=""
+CONFIG_SETKEYCODES=y
+CONFIG_SETLOGCONS=y
+CONFIG_SHOWKEY=y
+
+#
+# Common options for loadfont and setfont
+#
+CONFIG_FEATURE_LOADFONT_PSF2=y
+CONFIG_FEATURE_LOADFONT_RAW=y
+
+#
+# Debian Utilities
+#
+CONFIG_MKTEMP=y
+CONFIG_PIPE_PROGRESS=y
+CONFIG_RUN_PARTS=y
+CONFIG_FEATURE_RUN_PARTS_LONG_OPTIONS=y
+CONFIG_FEATURE_RUN_PARTS_FANCY=y
+CONFIG_START_STOP_DAEMON=y
+CONFIG_FEATURE_START_STOP_DAEMON_FANCY=y
+CONFIG_FEATURE_START_STOP_DAEMON_LONG_OPTIONS=y
+CONFIG_WHICH=y
+
+#
+# Editors
+#
+CONFIG_PATCH=y
+CONFIG_VI=y
+CONFIG_FEATURE_VI_MAX_LEN=4096
+CONFIG_FEATURE_VI_8BIT=y
+CONFIG_FEATURE_VI_COLON=y
+CONFIG_FEATURE_VI_YANKMARK=y
+CONFIG_FEATURE_VI_SEARCH=y
+# CONFIG_FEATURE_VI_REGEX_SEARCH is not set
+CONFIG_FEATURE_VI_USE_SIGNALS=y
+CONFIG_FEATURE_VI_DOT_CMD=y
+CONFIG_FEATURE_VI_READONLY=y
+CONFIG_FEATURE_VI_SETOPTS=y
+CONFIG_FEATURE_VI_SET=y
+CONFIG_FEATURE_VI_WIN_RESIZE=y
+CONFIG_FEATURE_VI_ASK_TERMINAL=y
+CONFIG_FEATURE_VI_OPTIMIZE_CURSOR=y
+CONFIG_AWK=y
+CONFIG_FEATURE_AWK_LIBM=y
+CONFIG_CMP=y
+CONFIG_DIFF=y
+CONFIG_FEATURE_DIFF_LONG_OPTIONS=y
+CONFIG_FEATURE_DIFF_DIR=y
+CONFIG_ED=y
+CONFIG_SED=y
+CONFIG_FEATURE_ALLOW_EXEC=y
+
+#
+# Finding Utilities
+#
+CONFIG_FIND=y
+CONFIG_FEATURE_FIND_PRINT0=y
+CONFIG_FEATURE_FIND_MTIME=y
+CONFIG_FEATURE_FIND_MMIN=y
+CONFIG_FEATURE_FIND_PERM=y
+CONFIG_FEATURE_FIND_TYPE=y
+CONFIG_FEATURE_FIND_XDEV=y
+CONFIG_FEATURE_FIND_MAXDEPTH=y
+CONFIG_FEATURE_FIND_NEWER=y
+CONFIG_FEATURE_FIND_INUM=y
+CONFIG_FEATURE_FIND_EXEC=y
+CONFIG_FEATURE_FIND_USER=y
+CONFIG_FEATURE_FIND_GROUP=y
+CONFIG_FEATURE_FIND_NOT=y
+CONFIG_FEATURE_FIND_DEPTH=y
+CONFIG_FEATURE_FIND_PAREN=y
+CONFIG_FEATURE_FIND_SIZE=y
+CONFIG_FEATURE_FIND_PRUNE=y
+CONFIG_FEATURE_FIND_DELETE=y
+CONFIG_FEATURE_FIND_PATH=y
+CONFIG_FEATURE_FIND_REGEX=y
+# CONFIG_FEATURE_FIND_CONTEXT is not set
+CONFIG_FEATURE_FIND_LINKS=y
+CONFIG_GREP=y
+CONFIG_FEATURE_GREP_EGREP_ALIAS=y
+CONFIG_FEATURE_GREP_FGREP_ALIAS=y
+CONFIG_FEATURE_GREP_CONTEXT=y
+CONFIG_XARGS=y
+CONFIG_FEATURE_XARGS_SUPPORT_CONFIRMATION=y
+CONFIG_FEATURE_XARGS_SUPPORT_QUOTES=y
+CONFIG_FEATURE_XARGS_SUPPORT_TERMOPT=y
+CONFIG_FEATURE_XARGS_SUPPORT_ZERO_TERM=y
+
+#
+# Init Utilities
+#
+CONFIG_BOOTCHARTD=y
+CONFIG_FEATURE_BOOTCHARTD_BLOATED_HEADER=y
+CONFIG_FEATURE_BOOTCHARTD_CONFIG_FILE=y
+CONFIG_HALT=y
+# CONFIG_FEATURE_CALL_TELINIT is not set
+CONFIG_TELINIT_PATH=""
+CONFIG_INIT=y
+CONFIG_FEATURE_USE_INITTAB=y
+# CONFIG_FEATURE_KILL_REMOVED is not set
+CONFIG_FEATURE_KILL_DELAY=0
+CONFIG_FEATURE_INIT_SCTTY=y
+CONFIG_FEATURE_INIT_SYSLOG=y
+CONFIG_FEATURE_EXTRA_QUIET=y
+CONFIG_FEATURE_INIT_COREDUMPS=y
+CONFIG_FEATURE_INITRD=y
+CONFIG_INIT_TERMINAL_TYPE="linux"
+CONFIG_MESG=y
+CONFIG_FEATURE_MESG_ENABLE_ONLY_GROUP=y
+
+#
+# Login/Password Management Utilities
+#
+CONFIG_ADD_SHELL=y
+CONFIG_REMOVE_SHELL=y
+CONFIG_FEATURE_SHADOWPASSWDS=y
+CONFIG_USE_BB_PWD_GRP=y
+CONFIG_USE_BB_SHADOW=y
+CONFIG_USE_BB_CRYPT=y
+CONFIG_USE_BB_CRYPT_SHA=y
+CONFIG_ADDUSER=y
+CONFIG_FEATURE_ADDUSER_LONG_OPTIONS=y
+# CONFIG_FEATURE_CHECK_NAMES is not set
+CONFIG_FIRST_SYSTEM_ID=100
+CONFIG_LAST_SYSTEM_ID=999
+CONFIG_ADDGROUP=y
+CONFIG_FEATURE_ADDGROUP_LONG_OPTIONS=y
+CONFIG_FEATURE_ADDUSER_TO_GROUP=y
+CONFIG_DELUSER=y
+CONFIG_DELGROUP=y
+CONFIG_FEATURE_DEL_USER_FROM_GROUP=y
+CONFIG_GETTY=y
+CONFIG_LOGIN=y
+# CONFIG_PAM is not set
+CONFIG_LOGIN_SCRIPTS=y
+CONFIG_FEATURE_NOLOGIN=y
+CONFIG_FEATURE_SECURETTY=y
+CONFIG_PASSWD=y
+CONFIG_FEATURE_PASSWD_WEAK_CHECK=y
+CONFIG_CRYPTPW=y
+CONFIG_CHPASSWD=y
+CONFIG_SU=y
+CONFIG_FEATURE_SU_SYSLOG=y
+CONFIG_FEATURE_SU_CHECKS_SHELLS=y
+CONFIG_SULOGIN=y
+CONFIG_VLOCK=y
+
+#
+# Linux Ext2 FS Progs
+#
+CONFIG_CHATTR=y
+CONFIG_FSCK=y
+CONFIG_LSATTR=y
+# CONFIG_TUNE2FS is not set
+
+#
+# Linux Module Utilities
+#
+# CONFIG_MODINFO is not set
+# CONFIG_MODPROBE_SMALL is not set
+# CONFIG_FEATURE_MODPROBE_SMALL_OPTIONS_ON_CMDLINE is not set
+# CONFIG_FEATURE_MODPROBE_SMALL_CHECK_ALREADY_LOADED is not set
+CONFIG_INSMOD=y
+CONFIG_RMMOD=y
+CONFIG_LSMOD=y
+# CONFIG_FEATURE_LSMOD_PRETTY_2_6_OUTPUT is not set
+CONFIG_MODPROBE=y
+# CONFIG_FEATURE_MODPROBE_BLACKLIST is not set
+# CONFIG_DEPMOD is not set
+
+#
+# Options common to multiple modutils
+#
+# CONFIG_FEATURE_2_4_MODULES is not set
+# CONFIG_FEATURE_INSMOD_TRY_MMAP is not set
+# CONFIG_FEATURE_INSMOD_VERSION_CHECKING is not set
+# CONFIG_FEATURE_INSMOD_KSYMOOPS_SYMBOLS is not set
+# CONFIG_FEATURE_INSMOD_LOADINKMEM is not set
+# CONFIG_FEATURE_INSMOD_LOAD_MAP is not set
+# CONFIG_FEATURE_INSMOD_LOAD_MAP_FULL is not set
+CONFIG_FEATURE_CHECK_TAINTED_MODULE=y
+CONFIG_FEATURE_MODUTILS_ALIAS=y
+CONFIG_FEATURE_MODUTILS_SYMBOLS=y
+CONFIG_DEFAULT_MODULES_DIR="/lib/modules"
+CONFIG_DEFAULT_DEPMOD_FILE="modules.dep"
+
+#
+# Linux System Utilities
+#
+CONFIG_BLOCKDEV=y
+CONFIG_REV=y
+CONFIG_ACPID=y
+CONFIG_FEATURE_ACPID_COMPAT=y
+CONFIG_BLKID=y
+# CONFIG_FEATURE_BLKID_TYPE is not set
+CONFIG_DMESG=y
+CONFIG_FEATURE_DMESG_PRETTY=y
+CONFIG_FBSET=y
+CONFIG_FEATURE_FBSET_FANCY=y
+CONFIG_FEATURE_FBSET_READMODE=y
+CONFIG_FDFLUSH=y
+CONFIG_FDFORMAT=y
+CONFIG_FDISK=y
+# CONFIG_FDISK_SUPPORT_LARGE_DISKS is not set
+CONFIG_FEATURE_FDISK_WRITABLE=y
+# CONFIG_FEATURE_AIX_LABEL is not set
+# CONFIG_FEATURE_SGI_LABEL is not set
+# CONFIG_FEATURE_SUN_LABEL is not set
+# CONFIG_FEATURE_OSF_LABEL is not set
+# CONFIG_FEATURE_GPT_LABEL is not set
+CONFIG_FEATURE_FDISK_ADVANCED=y
+CONFIG_FINDFS=y
+CONFIG_FLOCK=y
+CONFIG_FREERAMDISK=y
+CONFIG_FSCK_MINIX=y
+CONFIG_MKFS_EXT2=y
+CONFIG_MKFS_MINIX=y
+CONFIG_FEATURE_MINIX2=y
+# CONFIG_MKFS_REISER is not set
+CONFIG_MKFS_VFAT=y
+CONFIG_GETOPT=y
+CONFIG_FEATURE_GETOPT_LONG=y
+CONFIG_HEXDUMP=y
+CONFIG_FEATURE_HEXDUMP_REVERSE=y
+CONFIG_HD=y
+CONFIG_HWCLOCK=y
+CONFIG_FEATURE_HWCLOCK_LONG_OPTIONS=y
+CONFIG_FEATURE_HWCLOCK_ADJTIME_FHS=y
+CONFIG_IPCRM=y
+CONFIG_IPCS=y
+CONFIG_LOSETUP=y
+CONFIG_LSPCI=y
+CONFIG_LSUSB=y
+CONFIG_MDEV=y
+CONFIG_FEATURE_MDEV_CONF=y
+CONFIG_FEATURE_MDEV_RENAME=y
+CONFIG_FEATURE_MDEV_RENAME_REGEXP=y
+CONFIG_FEATURE_MDEV_EXEC=y
+CONFIG_FEATURE_MDEV_LOAD_FIRMWARE=y
+CONFIG_MKSWAP=y
+CONFIG_FEATURE_MKSWAP_UUID=y
+CONFIG_MORE=y
+CONFIG_MOUNT=y
+CONFIG_FEATURE_MOUNT_FAKE=y
+CONFIG_FEATURE_MOUNT_VERBOSE=y
+# CONFIG_FEATURE_MOUNT_HELPERS is not set
+CONFIG_FEATURE_MOUNT_LABEL=y
+CONFIG_FEATURE_MOUNT_NFS=y
+CONFIG_FEATURE_MOUNT_CIFS=y
+CONFIG_FEATURE_MOUNT_FLAGS=y
+CONFIG_FEATURE_MOUNT_FSTAB=y
+CONFIG_PIVOT_ROOT=y
+CONFIG_RDATE=y
+CONFIG_RDEV=y
+CONFIG_READPROFILE=y
+CONFIG_RTCWAKE=y
+CONFIG_SCRIPT=y
+CONFIG_SCRIPTREPLAY=y
+CONFIG_SETARCH=y
+CONFIG_SWAPONOFF=y
+CONFIG_FEATURE_SWAPON_PRI=y
+CONFIG_SWITCH_ROOT=y
+CONFIG_UMOUNT=y
+CONFIG_FEATURE_UMOUNT_ALL=y
+
+#
+# Common options for mount/umount
+#
+CONFIG_FEATURE_MOUNT_LOOP=y
+CONFIG_FEATURE_MOUNT_LOOP_CREATE=y
+# CONFIG_FEATURE_MTAB_SUPPORT is not set
+CONFIG_VOLUMEID=y
+
+#
+# Filesystem/Volume identification
+#
+CONFIG_FEATURE_VOLUMEID_EXT=y
+CONFIG_FEATURE_VOLUMEID_BTRFS=y
+CONFIG_FEATURE_VOLUMEID_REISERFS=y
+CONFIG_FEATURE_VOLUMEID_FAT=y
+CONFIG_FEATURE_VOLUMEID_HFS=y
+CONFIG_FEATURE_VOLUMEID_JFS=y
+CONFIG_FEATURE_VOLUMEID_XFS=y
+CONFIG_FEATURE_VOLUMEID_NTFS=y
+CONFIG_FEATURE_VOLUMEID_ISO9660=y
+CONFIG_FEATURE_VOLUMEID_UDF=y
+CONFIG_FEATURE_VOLUMEID_LUKS=y
+CONFIG_FEATURE_VOLUMEID_LINUXSWAP=y
+CONFIG_FEATURE_VOLUMEID_CRAMFS=y
+CONFIG_FEATURE_VOLUMEID_ROMFS=y
+CONFIG_FEATURE_VOLUMEID_SYSV=y
+CONFIG_FEATURE_VOLUMEID_OCFS2=y
+CONFIG_FEATURE_VOLUMEID_LINUXRAID=y
+
+#
+# Miscellaneous Utilities
+#
+# CONFIG_CONSPY is not set
+CONFIG_LESS=y
+CONFIG_FEATURE_LESS_MAXLINES=9999999
+CONFIG_FEATURE_LESS_BRACKETS=y
+CONFIG_FEATURE_LESS_FLAGS=y
+CONFIG_FEATURE_LESS_MARKS=y
+CONFIG_FEATURE_LESS_REGEXP=y
+CONFIG_FEATURE_LESS_WINCH=y
+CONFIG_FEATURE_LESS_ASK_TERMINAL=y
+CONFIG_FEATURE_LESS_DASHCMD=y
+CONFIG_FEATURE_LESS_LINENUMS=y
+# CONFIG_NANDWRITE is not set
+# CONFIG_NANDDUMP is not set
+CONFIG_SETSERIAL=y
+CONFIG_UBIATTACH=y
+CONFIG_UBIDETACH=y
+CONFIG_UBIMKVOL=y
+CONFIG_UBIRMVOL=y
+CONFIG_UBIRSVOL=y
+CONFIG_UBIUPDATEVOL=y
+CONFIG_ADJTIMEX=y
+# CONFIG_BBCONFIG is not set
+# CONFIG_FEATURE_COMPRESS_BBCONFIG is not set
+CONFIG_BEEP=y
+CONFIG_FEATURE_BEEP_FREQ=4000
+CONFIG_FEATURE_BEEP_LENGTH_MS=30
+CONFIG_CHAT=y
+CONFIG_FEATURE_CHAT_NOFAIL=y
+# CONFIG_FEATURE_CHAT_TTY_HIFI is not set
+CONFIG_FEATURE_CHAT_IMPLICIT_CR=y
+CONFIG_FEATURE_CHAT_SWALLOW_OPTS=y
+CONFIG_FEATURE_CHAT_SEND_ESCAPES=y
+CONFIG_FEATURE_CHAT_VAR_ABORT_LEN=y
+CONFIG_FEATURE_CHAT_CLR_ABORT=y
+CONFIG_CHRT=y
+CONFIG_CROND=y
+CONFIG_FEATURE_CROND_D=y
+CONFIG_FEATURE_CROND_CALL_SENDMAIL=y
+CONFIG_FEATURE_CROND_DIR="/var/spool/cron"
+CONFIG_CRONTAB=y
+CONFIG_DC=y
+CONFIG_FEATURE_DC_LIBM=y
+# CONFIG_DEVFSD is not set
+# CONFIG_DEVFSD_MODLOAD is not set
+# CONFIG_DEVFSD_FG_NP is not set
+# CONFIG_DEVFSD_VERBOSE is not set
+# CONFIG_FEATURE_DEVFS is not set
+CONFIG_DEVMEM=y
+CONFIG_EJECT=y
+CONFIG_FEATURE_EJECT_SCSI=y
+CONFIG_FBSPLASH=y
+# CONFIG_FLASHCP is not set
+# CONFIG_FLASH_LOCK is not set
+# CONFIG_FLASH_UNLOCK is not set
+# CONFIG_FLASH_ERASEALL is not set
+CONFIG_IONICE=y
+# CONFIG_INOTIFYD is not set
+CONFIG_LAST=y
+# CONFIG_FEATURE_LAST_SMALL is not set
+CONFIG_FEATURE_LAST_FANCY=y
+CONFIG_HDPARM=y
+CONFIG_FEATURE_HDPARM_GET_IDENTITY=y
+CONFIG_FEATURE_HDPARM_HDIO_SCAN_HWIF=y
+CONFIG_FEATURE_HDPARM_HDIO_UNREGISTER_HWIF=y
+CONFIG_FEATURE_HDPARM_HDIO_DRIVE_RESET=y
+CONFIG_FEATURE_HDPARM_HDIO_TRISTATE_HWIF=y
+CONFIG_FEATURE_HDPARM_HDIO_GETSET_DMA=y
+CONFIG_MAKEDEVS=y
+# CONFIG_FEATURE_MAKEDEVS_LEAF is not set
+CONFIG_FEATURE_MAKEDEVS_TABLE=y
+CONFIG_MAN=y
+CONFIG_MICROCOM=y
+CONFIG_MOUNTPOINT=y
+CONFIG_MT=y
+CONFIG_RAIDAUTORUN=y
+CONFIG_READAHEAD=y
+# CONFIG_RFKILL is not set
+CONFIG_RUNLEVEL=y
+CONFIG_RX=y
+CONFIG_SETSID=y
+CONFIG_STRINGS=y
+# CONFIG_TASKSET is not set
+# CONFIG_FEATURE_TASKSET_FANCY is not set
+CONFIG_TIME=y
+CONFIG_TIMEOUT=y
+CONFIG_TTYSIZE=y
+CONFIG_VOLNAME=y
+CONFIG_WALL=y
+CONFIG_WATCHDOG=y
+
+#
+# Networking Utilities
+#
+CONFIG_NAMEIF=y
+CONFIG_FEATURE_NAMEIF_EXTENDED=y
+CONFIG_NBDCLIENT=y
+CONFIG_NC=y
+CONFIG_NC_SERVER=y
+CONFIG_NC_EXTRA=y
+# CONFIG_NC_110_COMPAT is not set
+CONFIG_PING=y
+CONFIG_PING6=y
+CONFIG_FEATURE_FANCY_PING=y
+CONFIG_WHOIS=y
+CONFIG_FEATURE_IPV6=y
+# CONFIG_FEATURE_UNIX_LOCAL is not set
+CONFIG_FEATURE_PREFER_IPV4_ADDRESS=y
+# CONFIG_VERBOSE_RESOLUTION_ERRORS is not set
+CONFIG_ARP=y
+CONFIG_ARPING=y
+CONFIG_BRCTL=y
+CONFIG_FEATURE_BRCTL_FANCY=y
+CONFIG_FEATURE_BRCTL_SHOW=y
+CONFIG_DNSD=y
+CONFIG_ETHER_WAKE=y
+CONFIG_FAKEIDENTD=y
+CONFIG_FTPD=y
+CONFIG_FEATURE_FTP_WRITE=y
+CONFIG_FEATURE_FTPD_ACCEPT_BROKEN_LIST=y
+CONFIG_FTPGET=y
+CONFIG_FTPPUT=y
+CONFIG_FEATURE_FTPGETPUT_LONG_OPTIONS=y
+CONFIG_HOSTNAME=y
+CONFIG_HTTPD=y
+CONFIG_FEATURE_HTTPD_RANGES=y
+CONFIG_FEATURE_HTTPD_USE_SENDFILE=y
+CONFIG_FEATURE_HTTPD_SETUID=y
+CONFIG_FEATURE_HTTPD_BASIC_AUTH=y
+CONFIG_FEATURE_HTTPD_AUTH_MD5=y
+CONFIG_FEATURE_HTTPD_CGI=y
+CONFIG_FEATURE_HTTPD_CONFIG_WITH_SCRIPT_INTERPR=y
+CONFIG_FEATURE_HTTPD_SET_REMOTE_PORT_TO_ENV=y
+CONFIG_FEATURE_HTTPD_ENCODE_URL_STR=y
+CONFIG_FEATURE_HTTPD_ERROR_PAGES=y
+CONFIG_FEATURE_HTTPD_PROXY=y
+CONFIG_FEATURE_HTTPD_GZIP=y
+CONFIG_IFCONFIG=y
+CONFIG_FEATURE_IFCONFIG_STATUS=y
+CONFIG_FEATURE_IFCONFIG_SLIP=y
+CONFIG_FEATURE_IFCONFIG_MEMSTART_IOADDR_IRQ=y
+CONFIG_FEATURE_IFCONFIG_HW=y
+CONFIG_FEATURE_IFCONFIG_BROADCAST_PLUS=y
+CONFIG_IFENSLAVE=y
+CONFIG_IFPLUGD=y
+CONFIG_IFUPDOWN=y
+CONFIG_IFUPDOWN_IFSTATE_PATH="/var/run/ifstate"
+# CONFIG_FEATURE_IFUPDOWN_IP is not set
+# CONFIG_FEATURE_IFUPDOWN_IP_BUILTIN is not set
+CONFIG_FEATURE_IFUPDOWN_IFCONFIG_BUILTIN=y
+CONFIG_FEATURE_IFUPDOWN_IPV4=y
+CONFIG_FEATURE_IFUPDOWN_IPV6=y
+CONFIG_FEATURE_IFUPDOWN_MAPPING=y
+# CONFIG_FEATURE_IFUPDOWN_EXTERNAL_DHCP is not set
+CONFIG_INETD=y
+CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_ECHO=y
+CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_DISCARD=y
+CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_TIME=y
+CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_DAYTIME=y
+CONFIG_FEATURE_INETD_SUPPORT_BUILTIN_CHARGEN=y
+CONFIG_FEATURE_INETD_RPC=y
+CONFIG_IP=y
+CONFIG_FEATURE_IP_ADDRESS=y
+CONFIG_FEATURE_IP_LINK=y
+CONFIG_FEATURE_IP_ROUTE=y
+CONFIG_FEATURE_IP_TUNNEL=y
+CONFIG_FEATURE_IP_RULE=y
+CONFIG_FEATURE_IP_SHORT_FORMS=y
+# CONFIG_FEATURE_IP_RARE_PROTOCOLS is not set
+CONFIG_IPADDR=y
+CONFIG_IPLINK=y
+CONFIG_IPROUTE=y
+CONFIG_IPTUNNEL=y
+CONFIG_IPRULE=y
+CONFIG_IPCALC=y
+CONFIG_FEATURE_IPCALC_FANCY=y
+CONFIG_FEATURE_IPCALC_LONG_OPTIONS=y
+CONFIG_NETSTAT=y
+CONFIG_FEATURE_NETSTAT_WIDE=y
+CONFIG_FEATURE_NETSTAT_PRG=y
+CONFIG_NSLOOKUP=y
+CONFIG_NTPD=y
+CONFIG_FEATURE_NTPD_SERVER=y
+CONFIG_PSCAN=y
+CONFIG_ROUTE=y
+CONFIG_SLATTACH=y
+CONFIG_TCPSVD=y
+CONFIG_TELNET=y
+CONFIG_FEATURE_TELNET_TTYPE=y
+CONFIG_FEATURE_TELNET_AUTOLOGIN=y
+CONFIG_TELNETD=y
+CONFIG_FEATURE_TELNETD_STANDALONE=y
+CONFIG_FEATURE_TELNETD_INETD_WAIT=y
+CONFIG_TFTP=y
+CONFIG_TFTPD=y
+
+#
+# Common options for tftp/tftpd
+#
+CONFIG_FEATURE_TFTP_GET=y
+CONFIG_FEATURE_TFTP_PUT=y
+CONFIG_FEATURE_TFTP_BLOCKSIZE=y
+CONFIG_FEATURE_TFTP_PROGRESS_BAR=y
+# CONFIG_TFTP_DEBUG is not set
+CONFIG_TRACEROUTE=y
+CONFIG_TRACEROUTE6=y
+CONFIG_FEATURE_TRACEROUTE_VERBOSE=y
+# CONFIG_FEATURE_TRACEROUTE_SOURCE_ROUTE is not set
+# CONFIG_FEATURE_TRACEROUTE_USE_ICMP is not set
+CONFIG_TUNCTL=y
+CONFIG_FEATURE_TUNCTL_UG=y
+CONFIG_UDHCPD=y
+CONFIG_DHCPRELAY=y
+CONFIG_DUMPLEASES=y
+CONFIG_FEATURE_UDHCPD_WRITE_LEASES_EARLY=y
+# CONFIG_FEATURE_UDHCPD_BASE_IP_ON_MAC is not set
+CONFIG_DHCPD_LEASES_FILE="/var/lib/misc/udhcpd.leases"
+CONFIG_UDHCPC=y
+CONFIG_FEATURE_UDHCPC_ARPING=y
+# CONFIG_FEATURE_UDHCP_PORT is not set
+CONFIG_UDHCP_DEBUG=9
+CONFIG_FEATURE_UDHCP_RFC3397=y
+CONFIG_FEATURE_UDHCP_8021Q=y
+CONFIG_UDHCPC_DEFAULT_SCRIPT="/usr/share/udhcpc/default.script"
+CONFIG_UDHCPC_SLACK_FOR_BUGGY_SERVERS=80
+CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n"
+CONFIG_UDPSVD=y
+CONFIG_VCONFIG=y
+CONFIG_WGET=y
+CONFIG_FEATURE_WGET_STATUSBAR=y
+CONFIG_FEATURE_WGET_AUTHENTICATION=y
+CONFIG_FEATURE_WGET_LONG_OPTIONS=y
+CONFIG_FEATURE_WGET_TIMEOUT=y
+CONFIG_ZCIP=y
+
+#
+# Print Utilities
+#
+CONFIG_LPD=y
+CONFIG_LPR=y
+CONFIG_LPQ=y
+
+#
+# Mail Utilities
+#
+CONFIG_MAKEMIME=y
+CONFIG_FEATURE_MIME_CHARSET="us-ascii"
+CONFIG_POPMAILDIR=y
+CONFIG_FEATURE_POPMAILDIR_DELIVERY=y
+CONFIG_REFORMIME=y
+CONFIG_FEATURE_REFORMIME_COMPAT=y
+CONFIG_SENDMAIL=y
+
+#
+# Process Utilities
+#
+CONFIG_IOSTAT=y
+CONFIG_MPSTAT=y
+CONFIG_NMETER=y
+CONFIG_PMAP=y
+CONFIG_POWERTOP=y
+CONFIG_PSTREE=y
+CONFIG_PWDX=y
+CONFIG_SMEMCAP=y
+CONFIG_UPTIME=y
+CONFIG_FEATURE_UPTIME_UTMP_SUPPORT=y
+CONFIG_FREE=y
+CONFIG_FUSER=y
+CONFIG_KILL=y
+CONFIG_KILLALL=y
+CONFIG_KILLALL5=y
+CONFIG_PGREP=y
+CONFIG_PIDOF=y
+CONFIG_FEATURE_PIDOF_SINGLE=y
+CONFIG_FEATURE_PIDOF_OMIT=y
+CONFIG_PKILL=y
+CONFIG_PS=y
+CONFIG_FEATURE_PS_WIDE=y
+# CONFIG_FEATURE_PS_TIME is not set
+# CONFIG_FEATURE_PS_ADDITIONAL_COLUMNS is not set
+# CONFIG_FEATURE_PS_UNUSUAL_SYSTEMS is not set
+CONFIG_RENICE=y
+CONFIG_BB_SYSCTL=y
+CONFIG_TOP=y
+CONFIG_FEATURE_TOP_CPU_USAGE_PERCENTAGE=y
+CONFIG_FEATURE_TOP_CPU_GLOBAL_PERCENTS=y
+CONFIG_FEATURE_TOP_SMP_CPU=y
+CONFIG_FEATURE_TOP_DECIMALS=y
+CONFIG_FEATURE_TOP_SMP_PROCESS=y
+CONFIG_FEATURE_TOPMEM=y
+CONFIG_FEATURE_SHOW_THREADS=y
+CONFIG_WATCH=y
+
+#
+# Runit Utilities
+#
+CONFIG_RUNSV=y
+CONFIG_RUNSVDIR=y
+# CONFIG_FEATURE_RUNSVDIR_LOG is not set
+CONFIG_SV=y
+CONFIG_SV_DEFAULT_SERVICE_DIR="/var/service"
+CONFIG_SVLOGD=y
+CONFIG_CHPST=y
+CONFIG_SETUIDGID=y
+CONFIG_ENVUIDGID=y
+CONFIG_ENVDIR=y
+CONFIG_SOFTLIMIT=y
+# CONFIG_CHCON is not set
+# CONFIG_FEATURE_CHCON_LONG_OPTIONS is not set
+# CONFIG_GETENFORCE is not set
+# CONFIG_GETSEBOOL is not set
+# CONFIG_LOAD_POLICY is not set
+# CONFIG_MATCHPATHCON is not set
+# CONFIG_RESTORECON is not set
+# CONFIG_RUNCON is not set
+# CONFIG_FEATURE_RUNCON_LONG_OPTIONS is not set
+# CONFIG_SELINUXENABLED is not set
+# CONFIG_SETENFORCE is not set
+# CONFIG_SETFILES is not set
+# CONFIG_FEATURE_SETFILES_CHECK_OPTION is not set
+# CONFIG_SETSEBOOL is not set
+# CONFIG_SESTATUS is not set
+
+#
+# Shells
+#
+CONFIG_ASH=y
+CONFIG_ASH_BASH_COMPAT=y
+# CONFIG_ASH_IDLE_TIMEOUT is not set
+CONFIG_ASH_JOB_CONTROL=y
+CONFIG_ASH_ALIAS=y
+CONFIG_ASH_GETOPTS=y
+CONFIG_ASH_BUILTIN_ECHO=y
+CONFIG_ASH_BUILTIN_PRINTF=y
+CONFIG_ASH_BUILTIN_TEST=y
+CONFIG_ASH_CMDCMD=y
+# CONFIG_ASH_MAIL is not set
+CONFIG_ASH_OPTIMIZE_FOR_SIZE=y
+CONFIG_ASH_RANDOM_SUPPORT=y
+CONFIG_ASH_EXPAND_PRMT=y
+CONFIG_CTTYHACK=y
+CONFIG_HUSH=y
+CONFIG_HUSH_BASH_COMPAT=y
+CONFIG_HUSH_BRACE_EXPANSION=y
+CONFIG_HUSH_HELP=y
+CONFIG_HUSH_INTERACTIVE=y
+CONFIG_HUSH_SAVEHISTORY=y
+CONFIG_HUSH_JOB=y
+CONFIG_HUSH_TICK=y
+CONFIG_HUSH_IF=y
+CONFIG_HUSH_LOOPS=y
+CONFIG_HUSH_CASE=y
+CONFIG_HUSH_FUNCTIONS=y
+CONFIG_HUSH_LOCAL=y
+CONFIG_HUSH_RANDOM_SUPPORT=y
+CONFIG_HUSH_EXPORT_N=y
+CONFIG_HUSH_MODE_X=y
+# CONFIG_MSH is not set
+CONFIG_FEATURE_SH_IS_ASH=y
+# CONFIG_FEATURE_SH_IS_HUSH is not set
+# CONFIG_FEATURE_SH_IS_NONE is not set
+# CONFIG_FEATURE_BASH_IS_ASH is not set
+# CONFIG_FEATURE_BASH_IS_HUSH is not set
+CONFIG_FEATURE_BASH_IS_NONE=y
+CONFIG_SH_MATH_SUPPORT=y
+CONFIG_SH_MATH_SUPPORT_64=y
+CONFIG_FEATURE_SH_EXTRA_QUIET=y
+# CONFIG_FEATURE_SH_STANDALONE is not set
+# CONFIG_FEATURE_SH_NOFORK is not set
+CONFIG_FEATURE_SH_HISTFILESIZE=y
+
+#
+# System Logging Utilities
+#
+CONFIG_SYSLOGD=y
+CONFIG_FEATURE_ROTATE_LOGFILE=y
+CONFIG_FEATURE_REMOTE_LOG=y
+CONFIG_FEATURE_SYSLOGD_DUP=y
+CONFIG_FEATURE_SYSLOGD_CFG=y
+CONFIG_FEATURE_SYSLOGD_READ_BUFFER_SIZE=256
+CONFIG_FEATURE_IPC_SYSLOG=y
+CONFIG_FEATURE_IPC_SYSLOG_BUFFER_SIZE=16
+CONFIG_LOGREAD=y
+CONFIG_FEATURE_LOGREAD_REDUCED_LOCKING=y
+CONFIG_KLOGD=y
+CONFIG_FEATURE_KLOGD_KLOGCTL=y
+CONFIG_LOGGER=y
diff --git a/recipes-append/busybox/busybox-1.19.4/inetd b/recipes-append/busybox/busybox-1.19.4/inetd
new file mode 100644
index 0000000..cf50bcd
--- /dev/null
+++ b/recipes-append/busybox/busybox-1.19.4/inetd
@@ -0,0 +1,33 @@
+#!/bin/sh
+#
+# start/stop inetd super server.
+
+if ! [ -x /usr/sbin/inetd ]; then
+	exit 0
+fi
+
+case "$1" in
+    start)
+	echo -n "Starting internet superserver:"
+	echo -n " inetd" ; start-stop-daemon -S -x /usr/sbin/inetd > /dev/null
+	echo "."
+	;;
+    stop)
+	echo -n "Stopping internet superserver:"
+	echo -n " inetd" ; start-stop-daemon -K -x /usr/sbin/inetd > /dev/null
+	echo "."
+	;;
+    restart)
+	echo -n "Restarting internet superserver:"
+	echo -n " inetd "
+	killall -HUP inetd
+	echo "."
+	;;
+    *)
+	echo "Usage: /etc/init.d/inetd {start|stop|restart}"
+	exit 1
+	;;
+esac
+
+exit 0
+
diff --git a/recipes-append/busybox/busybox-1.19.4/inetd.conf b/recipes-append/busybox/busybox-1.19.4/inetd.conf
new file mode 100644
index 0000000..b02fe85
--- /dev/null
+++ b/recipes-append/busybox/busybox-1.19.4/inetd.conf
@@ -0,0 +1,20 @@
+# /etc/inetd.conf:  see inetd(8) for further informations.
+#
+# Internet server configuration database
+#
+# If you want to disable an entry so it isn't touched during
+# package updates just comment it out with a single '#' character.
+#
+# <service_name> <sock_type> <proto> <flags> <user> <server_path> <args>
+#
+#:INTERNAL: Internal services
+#echo		stream	tcp	nowait	root	internal
+#echo		dgram	udp	wait	root	internal
+#chargen	stream	tcp	nowait	root	internal
+#chargen	dgram	udp	wait	root	internal
+#discard		stream	tcp	nowait	root	internal
+#discard		dgram	udp	wait	root	internal
+#daytime		stream	tcp	nowait	root	internal
+#daytime	dgram	udp	wait	root	internal
+#time		stream	tcp	nowait	root	internal
+#time		dgram	udp	wait	root	internal
diff --git a/recipes-append/busybox/busybox_1.19.4.bbappend b/recipes-append/busybox/busybox_1.19.4.bbappend
new file mode 100644
index 0000000..60d8b25
--- /dev/null
+++ b/recipes-append/busybox/busybox_1.19.4.bbappend
@@ -0,0 +1,15 @@
+PR_append_fsl = "+${DISTRO}.0"
+
+FILESEXTRAPATHS_prepend_fsl := "${THISDIR}/busybox-1.19.4:"
+
+SRC_URI_append_fsl += "file://defconfig-fsl \
+            file://busybox-1.19.4-ubi-user-h.patch \
+            file://inetd \
+            file://inetd.conf \
+"
+
+do_configure_prepend_fsl () {
+        cp ${WORKDIR}/defconfig-fsl ${WORKDIR}/defconfig
+}
+
+
-- 
1.7.9.5



