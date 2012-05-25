Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A192AE01422
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:11 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so3054677pbb.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=SYt+dwscr5D7mKNWpRNjL1jSL3InWa/ZpM+DIribA+I=;
	b=NfWbTt8gx7fGsBUoSjOr4UtqufL2+3qXNoIn3CO+imreT1WlV50x6FqX6rg+qMPGKC
	hSUI7L9bcXPuFFNdqlaVr7a90kdBHQ4BfzkvhP3hMqUw9DiUk1/0W6QZiqaYKivqN9Yr
	t+TOZm6LvEdihXHLn4rarFKklUPQG7GPzE48P2OBdoPxNI/eHl9/2AIaUVVCdjQqYNyM
	t1WRAXasdxuYQd2eiro0sTvQRFP81FCCWhXSfy0XXThpFsBTZq3k/SJcWJ78anG7mJsI
	yiZR3CKHFUbAMd26E3qHzLb74RinD91a7ByCI3UuGttxnjY6sJA86pKOz4dMeM3++U3F
	cf5g==
Received: by 10.68.201.195 with SMTP id kc3mr1827813pbc.33.1337984471583;
	Fri, 25 May 2012 15:21:11 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id tk1sm2706155pbc.8.2012.05.25.15.21.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:11 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:54 -0700
Message-Id: <e5e45fa749903c6e9aaa5e67315b7c024d4c5db6.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmEOR8NeYbE0HBv6uhoJtE76f6JjD+sjaWvXRmbWqqJ5Vk0gWqrxq6KR11swr0sJXlpOQXj
Subject: [PATCH 3/6] iwlagn: Correct a comment typo
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
X-List-Received-Date: Fri, 25 May 2012 22:21:11 -0000

Comment said iwlan instead of iwlagn, which could cause some confusion when
verifying what is required.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc b/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
index 2552f2d..16b2425 100644
--- a/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
+++ b/meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc
@@ -1,4 +1,4 @@
-define KFEATURE_DESCRIPTION "Enable iwlan support"
+define KFEATURE_DESCRIPTION "Enable iwlagn support"
 define KFEATURE_COMPATIBILITY board
 
 kconf hardware iwlagn.cfg
-- 
1.7.5.4


