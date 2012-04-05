Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84C16E013FB
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 14:10:03 -0700 (PDT)
Received: by dajx4 with SMTP id x4so2331715daj.28
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2012 14:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=d9gkuGDEsfGeb7MQokGuGAZpaLyLaEghjVcQn1sLCu4=;
	b=K6kLOycTdffR0qvnbsHSvZuA5PqKl8BHsCVYN2kbzSeaBqXnBSXnLFSffUcFXktpTV
	/qlQo5/hBtw2ShEwOTj+vLG4PQeYYIfnqGn2ISzqxEdzvRmKKOCza3QIjvEpa1FQOQ2j
	8zP4rgSv90mOpaPERNax8Ctw5V2z1e9xmMMK+uq0FCdvrqpny9IiNrxR8yNm9SPSFZMi
	lsghh0YuVttxYHVochcqp6M/EWhsJXKr7iw+27sBetul+oK7EM87JcoPiZZ+rzUmc/rz
	5jimwQdjyPCpWNg2uIu/yYz5ZOxkz1niOtbKUUkfa6pYYIqdnB/e4qPycpvjeMdfwOw5
	sDjA==
Received: by 10.68.235.101 with SMTP id ul5mr10032783pbc.108.1333660203251;
	Thu, 05 Apr 2012 14:10:03 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id y5sm4224436pbk.5.2012.04.05.14.10.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Apr 2012 14:10:02 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	josh@linux.intel.com
Date: Thu,  5 Apr 2012 14:09:48 -0700
Message-Id: <9b1d520a14832ebf15ef5130dbb26993dbffa280.1333660034.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333660034.git.dvhart@linux.intel.com>
References: <cover.1333660034.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmTAkulACtEej8QFdOWndgKvBvgsdC8bcaHZxt+25O970Wwj6/uGQUwh4+p2hNS+m+dyjTp
Subject: [PATCH 3/4] bootimg: Fix a math thinko in the block count calculation
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
X-List-Received-Date: Thu, 05 Apr 2012 21:10:03 -0000

Fixes [YOCTO #1852] ... again.

The conversion from sectors to blocks was multiplying by 2 instead
of dividing by 2. Blocks are 1024 bytes, sectors are 512 bytes. The
result was images being much larger than intended.

Reported-by: Tom Zanussi <tom.zanussi@intel.com>
(From OE-Core rev: b35384fa3ca96b31c63d764322215abced2066e4)

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Joshua Lock <josh@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Backported to edison by Darren Hart.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/bootimg.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
index c2d43c8..489819b 100644
--- a/meta/classes/bootimg.bbclass
+++ b/meta/classes/bootimg.bbclass
@@ -92,7 +92,8 @@ build_boot_bin() {
 	SECTORS=$(expr $SECTORS + $(expr $DIR_SECTORS + $FAT_SECTORS))
 
 	# Determine the final size in blocks accounting for some padding
-	BLOCKS=$(expr $(expr $SECTORS \* 2) + ${BOOTIMG_EXTRA_SPACE})
+	BLOCKS=$(expr $(expr $SECTORS / 2) + ${BOOTIMG_EXTRA_SPACE})
+
 
 	# Ensure total sectors is an integral number of sectors per
 	# track or mcopy will complain. Sectors are 512 bytes, and we
-- 
1.7.5.4


