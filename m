Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1BC9E008FD
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 10:49:42 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id t61so762300wes.22
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 10:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=JrU8Phi33DyhRCGz8ro3zISFDurr1+eNGEP64z5cvoE=;
	b=OZPGMfVzDlCyz/QfWKUal2WMzgHEKrNZc5cOn5Fjwed66DdWHa4xaurYtmY7zy5lEe
	hzgic954gGopzo9FwayEBnwYuynDEYkJ8z2lRLQgI1tbHAa3QMY4kx3gsqI+EGvoykH1
	JhWjC3KvZEE5J/eZHqK5Dl8Jt5fw9SDdBhopaB69p6jSQ4yKu86rUpP0fi9ua/LTJos9
	RzYF1IXUNBlvYF5cvGZr3RLArlGkWEi13M+EvZy/qsLp+0RQdGkqS3JiAc/jZw7Kms7X
	E6aT4cxJE0Z2PVIhVzspTeuT417pFHbUZG6rciNUNAV0JhP9xv8r4BdiOkRFUxl1nxac
	drAg==
X-Received: by 10.194.109.68 with SMTP id hq4mr26485554wjb.12.1393354180873;
	Tue, 25 Feb 2014 10:49:40 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id p1sm2648706wie.1.2014.02.25.10.49.38
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 25 Feb 2014 10:49:38 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, paul.eggleton@linux.intel.com, raj.khem@gmail.com
Date: Tue, 25 Feb 2014 18:48:16 +0000
Message-Id: <cover.1393353739.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono] [PATCH 0/2] mono: Update Mono to 3.2.8
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
X-List-Received-Date: Tue, 25 Feb 2014 18:49:44 -0000

See following patches for details.

The following changes since commit ac286b1682e6bcc486ceb30ef90a936949bbfeab:

  monotools-server: Remove multiline comment (2013-02-27 12:01:10 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/meta-mono ajl/mono-3.2.8
  http://git.yoctoproject.org/cgit.cgi/meta-mono/log/?h=ajl/mono-3.2.8

Alex J Lennon (2):
  libgdiplus: Fix build error relating to missing freetype/tttables.h,
    and update to libgdiplus 2.10.8
  mono: Update Mono to 3.2.8

 README                                             |   74 +++++++++-----------
 ...gdiplus-2.10.x-use-freetype-include-macro.patch |   14 ++++
 .../{libgdiplus_2.10.bb => libgdiplus_2.10.8.bb}   |    8 +--
 .../mono/files/mono-2.11/data/config.in.diff       |   11 ---
 .../mono/files/patch-mono-atomic-armv6.patch       |   66 -----------------
 .../files/patch-mono-native-atomic-armv6.patch     |   66 -----------------
 recipes-mono/mono/mono-2.10.8.1.inc                |   18 -----
 recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff   |   15 ----
 .../mono/mono-2.10.8.1/mcs/class/Makefile.diff     |   13 ----
 .../mono/{mono-2.11.inc => mono-3.2.8.inc}         |   15 ++--
 .../mono-2.11 => mono-3.2.8}/Makefile.am.diff      |    0
 .../dllmap-config.in.diff}                         |   13 +++-
 recipes-mono/mono/mono-native_2.10.8.1.bb          |   17 -----
 recipes-mono/mono/mono-native_2.11.bb              |   21 ------
 recipes-mono/mono/mono-native_3.2.8.bb             |   16 +++++
 recipes-mono/mono/mono_2.10.8.1.bb                 |   30 --------
 recipes-mono/mono/{mono_2.11.bb => mono_3.2.8.bb}  |   22 +++---
 17 files changed, 100 insertions(+), 319 deletions(-)
 create mode 100644 recipes-mono/libgdiplus/files/libgdiplus-2.10/libgdiplus-2.10.x-use-freetype-include-macro.patch
 rename recipes-mono/libgdiplus/{libgdiplus_2.10.bb => libgdiplus_2.10.8.bb} (68%)
 delete mode 100644 recipes-mono/mono/files/mono-2.11/data/config.in.diff
 delete mode 100644 recipes-mono/mono/files/patch-mono-atomic-armv6.patch
 delete mode 100644 recipes-mono/mono/files/patch-mono-native-atomic-armv6.patch
 delete mode 100644 recipes-mono/mono/mono-2.10.8.1.inc
 delete mode 100644 recipes-mono/mono/mono-2.10.8.1/Makefile.am.diff
 delete mode 100644 recipes-mono/mono/mono-2.10.8.1/mcs/class/Makefile.diff
 rename recipes-mono/mono/{mono-2.11.inc => mono-3.2.8.inc} (58%)
 rename recipes-mono/mono/{files/mono-2.11 => mono-3.2.8}/Makefile.am.diff (100%)
 rename recipes-mono/mono/{mono-2.10.8.1/data/config.in.diff => mono-3.2.8/dllmap-config.in.diff} (43%)
 delete mode 100644 recipes-mono/mono/mono-native_2.10.8.1.bb
 delete mode 100644 recipes-mono/mono/mono-native_2.11.bb
 create mode 100644 recipes-mono/mono/mono-native_3.2.8.bb
 delete mode 100644 recipes-mono/mono/mono_2.10.8.1.bb
 rename recipes-mono/mono/{mono_2.11.bb => mono_3.2.8.bb} (59%)

-- 
1.7.9.5


