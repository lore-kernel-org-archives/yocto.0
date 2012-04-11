Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67CDDE013FF
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:32 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id jt11so1947961pbb.35
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:51:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=d9gkuGDEsfGeb7MQokGuGAZpaLyLaEghjVcQn1sLCu4=;
	b=XtlPWeqLLQJha6nwjeDLcd6k1lzNX8lIPUo2r9ijF/IoVj84yuKmxQJUD2guN9sYFT
	m6Hx7hkEU9iCngHbL8Es3bB4Xdo4N26hpttl87MDmjgEL9YwFVhDxxqYf6y4Qw4Yw7nL
	YGBGnkNYUaYbx/WxWHZupIBso+32WTATWvt2K6zLMbhrl2+ENVv86L4wq15Q9LoQmsWt
	voQv/Oq+f2St8SUhrbpDtWRIjONO4fKfeHmXzJMFemMUq9EFsTgt/1goJI0JvYruXwnA
	3yn0n64S3st/wnBUBoFZdiYP/X6IWH+v3xOfbUtlsc0ZnH2z3jLh1HrEZIkx8GykI7p8
	4ElQ==
Received: by 10.68.134.133 with SMTP id pk5mr20302865pbb.17.1334166692319;
	Wed, 11 Apr 2012 10:51:32 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id g8sm3447335pbo.25.2012.04.11.10.51.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 11 Apr 2012 10:51:31 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, josh@linux.intel.com,
	josh@hipro.co.in
Date: Wed, 11 Apr 2012 10:51:12 -0700
Message-Id: <9b1d520a14832ebf15ef5130dbb26993dbffa280.1334166452.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1334166452.git.dvhart@linux.intel.com>
References: <cover.1334166452.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQm691gTcBGR6lhDGua46dcoCsxSTnTkgV/s0lKoVYefjlsqGWQ9O181UiM0C4j3Qu0WyoVk
Subject: [PATCH 3/8] bootimg: Fix a math thinko in the block count calculation
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
X-List-Received-Date: Wed, 11 Apr 2012 17:51:32 -0000

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


