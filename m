Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25AC8E0059A
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:36 -0700 (PDT)
Received: by mail-pz0-f41.google.com with SMTP id x4so1653838daj.28
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=0Zm5pcCDFepN6I36BQvWIiH/FLcivUpDoEvG3IJWZS4=;
	b=GkGshrsKsOT9X/CsXWITyrPQIXoSOuvtY1Oz+PnJKRxoQESfVEcxhEDRLcXRVCn1Iz
	hk3EpZjqjbcxx+l68aIIZEeBgmNx741mhifeOdWkYIbvesha0bgPeQbMmY88jVRnHz1S
	Sns1pSNhq1yr3up5hx+ZgnU4qrxxLH1rtUV+q8IDySpaa2pNqT4edoZmPQfgsdcel2GK
	dl4KyFVT1csFMsfXwjyqGBGjQVfXI/pEJ6ISddUgZFjdy94SJh/4n1QD3E67qU6jA8mX
	TvGEtvbcwCF855YrT+L09yuJzDZWZMVuKzQ2jJ3kQLTT9RJo1Wo/oeIGaxcYWZnTO1M1
	EVCQ==
Received: by 10.68.221.74 with SMTP id qc10mr16905775pbc.80.1334166695849;
	Wed, 11 Apr 2012 10:51:35 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id r6sm3441868pbc.40.2012.04.11.10.51.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Apr 2012 10:51:35 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, josh@linux.intel.com,
	josh@hipro.co.in
Date: Wed, 11 Apr 2012 10:51:14 -0700
Message-Id: <bcb5f0b9b20e2bfba0fff1d39ae41406ad83173c.1334166452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQkUXd5SQMjjS9PR9sf9MUgXynQQhik6LbZiG2rsPdLBk+xjwqEVTSVS0HERxf/uoGk4Fj1u
Subject: [PATCH 5/8] dosfstools: Add SRC_URI Checksum
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
X-List-Received-Date: Wed, 11 Apr 2012 17:51:36 -0000

From: Saul Wold <sgw@linux.intel.com>

(From OE-Core rev: a19bfc10e60ddc7e9317654ca7565d39acbc3987)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-devtools/dosfstools/dosfstools_2.10.bb |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb b/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb
index 1beb5dd..c23c02d 100644
--- a/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb
+++ b/meta/recipes-devtools/dosfstools/dosfstools_2.10.bb
@@ -7,7 +7,7 @@ DESCRIPTION = "DOS FAT Filesystem Utilities"
 SECTION = "base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://mkdosfs/COPYING;md5=cbe67f08d6883bff587f615f0cc81aa8"
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}.src.tar.gz \
 	   file://alignment_hack.patch \
@@ -15,6 +15,9 @@ SRC_URI = "ftp://ftp.uni-erlangen.de/pub/Linux/LOCAL/dosfstools/dosfstools-${PV}
            file://msdos_fat12_undefined.patch \
 	   file://include-linux-types.patch"
 
+SRC_URI[md5sum] = "59a02f311a891af8787c4c9e28c6b89b"
+SRC_URI[sha256sum] = "55a7b2f5ea4506bde935ee3145573e1773427fc72283a36796c7c2cf861dd064"
+
 do_install () {
 	oe_runmake "PREFIX=${D}" "SBINDIR=${D}${sbindir}" \
 		   "MANDIR=${D}${mandir}/man8" install
-- 
1.7.5.4


