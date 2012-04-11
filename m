Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5E0CE0059A
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:27 -0700 (PDT)
Received: by dajx4 with SMTP id x4so1653838daj.28
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=gk+/9A/zzYipnJHbcMYmqw2I3SKiEFVjspW6tNnR9Dw=;
	b=dTGxK1svh9tzuly+lZfz2vQA5/sQjeuqoynmBf90LmD4A5IiSBvEGxkCZgE1xaZkgW
	0QFjlLiwR9Jy+kYRVSL7j9NLSCuKGHLMBG4GDSY648xFTUGjpOPS/kQTHxXPQGa3LcQ/
	bQMNqOmkxsFnRkRKQSpxgtKRUinbFInV1l3gQwQeMfFut1AvRuzqRaZz+N6hjQ+nGJgT
	Xz7KQtoU/eSaT3MwGUfApIqfZXfaGhXSp3G6z96SjJT1k+GJXoHvSnTgEWbrop0NT7fY
	pheQX6Y16+SEEX2VbVD/IO+aQiXGe5EMe2YJL200KZXsMoB9gn+MsLlMpGtDdXwQjVWn
	q8vQ==
Received: by 10.68.233.102 with SMTP id tv6mr20700763pbc.12.1334166686617;
	Wed, 11 Apr 2012 10:51:26 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ms1sm3443313pbb.38.2012.04.11.10.51.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Apr 2012 10:51:25 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, josh@linux.intel.com,
	josh@hipro.co.in
Date: Wed, 11 Apr 2012 10:51:09 -0700
Message-Id: <cover.1334166452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQlj1qBJOVCw6s1PC4xODUEf5FY/2P336G56VyjuER8tHB28PXJBhLv+nVYplpZ4MZBitrbx
Subject: [PATCH 0/8][edison] bootimg and dosfstools fixes
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
X-List-Received-Date: Wed, 11 Apr 2012 17:51:28 -0000

This is V2 for a fix for YOCTO 2138. V2 pulls in fixes to dosfstools
which address a "Boot Error" message when attempting to boot in qemu.
The dosfstools patches were cherry-picked directly from master with no
modifications.

The following changes since commit 0fbd6a161576b2cafa8583adde0ffb15347c884a:

  poky.conf: Bumping SKD_VERSION (2012-03-14 15:49:33 -0700)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib dvhart/edison/bug/2138
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/edison/bug/2138

Darren Hart (4):
  bootimg: Use mcopy to construct the hddimg
  bootimg: Account for FAT filesystem overhead in image size
  bootimg: Fix a math thinko in the block count calculation
  bootimg: Do not force FAT32 on all images, it violates the FAT
    specification

Otavio Salvador (1):
  dosfstools: update native to 2.11

Richard Purdie (1):
  dosfstools: Add patch to disable fat32 autoselection and behave as
    2.10

Saul Wold (1):
  dosfstools: Add SRC_URI Checksum

Scott Garman (1):
  dosfstools: add Upstream-Status to patches

 meta/classes/bootimg.bbclass                       |   53 ++++++++++++--
 .../dosfstools/dosfstools-native_2.10.bb           |   19 -----
 .../dosfstools/dosfstools/2.6.20-syscall.patch     |   65 -----------------
 .../dosfstools/dosfstools/alignment_hack.patch     |    4 +
 .../dosfstools/dosfstools-2.10-kernel-2.6.patch    |   74 -------------------
 .../dosfstools/dosfstools-msdos_fs-types.patch     |    7 ++
 .../dosfstools/include-linux-types.patch           |    5 ++
 .../dosfstools/dosfstools/mkdosfs-bootcode.patch   |   75 ++++++++++----------
 .../dosfstools/dosfstools/mkdosfs-dir.patch        |   67 +++++++++--------
 .../dosfstools/msdos_fat12_undefined.patch         |    7 ++
 .../dosfstools/dosfstools/nofat32_autoselect.patch |   27 +++++++
 .../recipes-devtools/dosfstools/dosfstools_2.10.bb |   21 ------
 .../recipes-devtools/dosfstools/dosfstools_2.11.bb |   12 +++-
 13 files changed, 179 insertions(+), 257 deletions(-)
 delete mode 100644 meta/recipes-devtools/dosfstools/dosfstools-native_2.10.bb
 delete mode 100644 meta/recipes-devtools/dosfstools/dosfstools/2.6.20-syscall.patch
 delete mode 100644 meta/recipes-devtools/dosfstools/dosfstools/dosfstools-2.10-kernel-2.6.patch
 create mode 100644 meta/recipes-devtools/dosfstools/dosfstools/nofat32_autoselect.patch
 delete mode 100644 meta/recipes-devtools/dosfstools/dosfstools_2.10.bb

-- 
1.7.5.4


