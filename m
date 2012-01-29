Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C8E0E0072A
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 17:57:44 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0T1viUL000493
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 17:57:44 -0800 (PST)
Received: from localhost (128.224.162.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 28 Jan 2012 17:57:44 -0800
From: Jingdong.Lu@windriver.com
To: <yocto@yoctoproject.org>
Date: Sun, 29 Jan 2012 09:57:36 +0800
Message-ID: <b1d88029c51bf867d145588972e5938882058b50.1326792067.git.jingdong.lu@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1326792067.git.jingdong.lu@windriver.com>
References: <cover.1326792067.git.jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.192]
Subject: [PATCH 1/1] meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y
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
X-List-Received-Date: Sun, 29 Jan 2012 01:57:44 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Using CONFIG_PANEL_GENERIC_DPI=y instead of CONFIG_PANEL_GENERIC=y
for beagleboard.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
index 994e034..8bb9d87 100644
--- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
+++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
@@ -216,7 +216,7 @@ CONFIG_FB_OMAP2_NUM_FBS=2
 #
 # OMAP2/3 Display Device Drivers
 #
-CONFIG_PANEL_GENERIC=y
+CONFIG_PANEL_GENERIC_DPI=y
 CONFIG_PANEL_SHARP_LS037V7DW01=y
 # CONFIG_PANEL_LGPHILIPS_LB035Q02 is not set
 # CONFIG_PANEL_SAMSUNG_LTE430WQ_F0C is not set
-- 
1.7.0.4


