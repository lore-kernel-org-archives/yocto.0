Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF83FE00AD5; Sun, 15 Nov 2015 04:34:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97D19E0088C
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 04:34:26 -0800 (PST)
Received: by pacej9 with SMTP id ej9so39191000pac.2
	for <yocto@yoctoproject.org>; Sun, 15 Nov 2015 04:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=9RMNgQisqJpRgTigfS7RB6CFqbJhUunDhjFbPobirSU=;
	b=O8xc0ES4MSPjKt9Dc9P+o17Jqge0fRTNCkm0M27tRBEzGgJeJtPM0Do85qiAgzqOVp
	NYh0PHoj5xriOMe4paf4AQxTfi1ey7mv7o2TiJupmEZrSGHD2u7QYTrsYT1udh3/1R3g
	P4dN74kPueJc4zz5hcK1BHgATHZRcKdzEc5SCSan2JSNPI36mPsiE74Hy/L5oZi4G4zP
	13TWGzLGwUl+/Ctb4fFjHBjSSmCUKu6gDuEY5fUSvi7z4G37XkGSqxiTghOVKJEVoaHX
	7M5uRNnoPcXSpCi3CMJqTf2J94UtiD7gQ6fnQW39xbIxXkvmFskNEzVccFwgkKSO98o3
	4Igg==
X-Received: by 10.68.65.6 with SMTP id t6mr46087394pbs.90.1447590865962;
	Sun, 15 Nov 2015 04:34:25 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	cs7sm30568243pad.35.2015.11.15.04.34.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 15 Nov 2015 04:34:25 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 15 Nov 2015 23:34:14 +1100
Message-Id: <1447590854-8280-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.6.2
Subject: [meta-raspberrypi][PATCH] README: Fix documentation to disable overscan
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
X-List-Received-Date: Sun, 15 Nov 2015 12:34:27 -0000

To disable overscan, DISABLE_OVERSCAN should be set to 1 rather than 0.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index e16dee9..add74fb 100644
--- a/README
+++ b/README
@@ -105,7 +105,7 @@ KEY_DECODE_WVC1 = "0x12345678,0xabcdabcd,0x87654321"
 By default the GPU adds a black border around the video output to compensate for
 TVs which cut off part of the image. To disable this set this variable in
 local.conf:
-DISABLE_OVERSCAN = "0"
+DISABLE_OVERSCAN = "1"
 
 2.E. Optional - Set overclocking options:
 =========================================
-- 
2.6.2


