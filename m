Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEDD3E008CF; Sun,  1 Mar 2015 15:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD125E00905
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:06:31 -0800 (PST)
Received: by labhs14 with SMTP id hs14so26907416lab.1
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:06:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=0btNfj9uQJ6Vf0T38LLypcKc5GY9LSxrAPCh+GoAQXg=;
	b=IBEhRVgTDQNA+ae9u6RBW7Ix31YKuNChog3S8jt2Q1ds6J1ksYSYzsBw3y4p7FvXLo
	bI2UjcvvmzU28IGhhsC2gBrpAkbTWGRs3ew0ibkRWtcQOmpuNKMamP8ly+eHfxdWINMY
	NKwqXINlTwPqrtxvVethBPuK85mqfTSq2masK7nCX1/C1uxn0iIW0EGO80S+TuZRE4fR
	2sN2zbvaC2lLRb+3He8mCQ+S5KvGWexiSC/jtWbg2nA3TkHw0NMYNcHgCf4vIPfur6Nv
	o+1PjWITWVRPsgZ4sOLwedu9ZOKu15TOnay523gOF5B2jYci7phAvM3+j28OCO6hMhYH
	8l1Q==
X-Gm-Message-State: ALoCoQnwFMsNjhfnYGnXS8v60dsfUPUfhcIvLreogkPb8ZqmWJXkftUysL21lc/D93AbcSwvGX1F
X-Received: by 10.152.19.9 with SMTP id a9mr22049822lae.80.1425251190123;
	Sun, 01 Mar 2015 15:06:30 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	n12sm2148284lbg.31.2015.03.01.15.06.29 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:06:29 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:06:19 +0100
Message-Id: <87907fe9c822456036379cfb7349a62938897fb6.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
References: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
References: <cover.1425251029.git.andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/6] vc-graphics: Move to recipes-graphics
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
X-List-Received-Date: Sun, 01 Mar 2015 23:06:39 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 {recipes-bcm => recipes-graphics}/vc-graphics/files/egl.pc          | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/files/vchiq.sh        | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics-hardfp.bb | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.bb        | 0
 {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.inc       | 2 +-
 5 files changed, 1 insertion(+), 1 deletion(-)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/files/egl.pc (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/files/vchiq.sh (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics-hardfp.bb (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.bb (100%)
 rename {recipes-bcm => recipes-graphics}/vc-graphics/vc-graphics.inc (97%)

diff --git a/recipes-bcm/vc-graphics/files/egl.pc b/recipes-graphics/vc-graphics/files/egl.pc
similarity index 100%
rename from recipes-bcm/vc-graphics/files/egl.pc
rename to recipes-graphics/vc-graphics/files/egl.pc
diff --git a/recipes-bcm/vc-graphics/files/vchiq.sh b/recipes-graphics/vc-graphics/files/vchiq.sh
similarity index 100%
rename from recipes-bcm/vc-graphics/files/vchiq.sh
rename to recipes-graphics/vc-graphics/files/vchiq.sh
diff --git a/recipes-bcm/vc-graphics/vc-graphics-hardfp.bb b/recipes-graphics/vc-graphics/vc-graphics-hardfp.bb
similarity index 100%
rename from recipes-bcm/vc-graphics/vc-graphics-hardfp.bb
rename to recipes-graphics/vc-graphics/vc-graphics-hardfp.bb
diff --git a/recipes-bcm/vc-graphics/vc-graphics.bb b/recipes-graphics/vc-graphics/vc-graphics.bb
similarity index 100%
rename from recipes-bcm/vc-graphics/vc-graphics.bb
rename to recipes-graphics/vc-graphics/vc-graphics.bb
diff --git a/recipes-bcm/vc-graphics/vc-graphics.inc b/recipes-graphics/vc-graphics/vc-graphics.inc
similarity index 97%
rename from recipes-bcm/vc-graphics/vc-graphics.inc
rename to recipes-graphics/vc-graphics/vc-graphics.inc
index 1dee53e..a1c8d29 100644
--- a/recipes-bcm/vc-graphics/vc-graphics.inc
+++ b/recipes-graphics/vc-graphics/vc-graphics.inc
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://LICENCE;md5=86e53f5f5909ee66900418028de11780"
 PROVIDES = "virtual/libgles2 virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-include ../common/firmware.inc
+include recipes-bsp/common/firmware.inc
 
 SRC_URI += " \
     file://egl.pc \
-- 
2.1.0


