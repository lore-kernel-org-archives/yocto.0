Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AA5BE00961; Mon, 19 Aug 2019 23:46:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A28EE00961
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 23:46:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7K6kJWC025248
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 23:46:19 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Mon, 19 Aug 2019 23:46:18 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Aug 2019 14:46:16 +0800
Message-ID: <1566283576-3132-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-anaconda][PATCH] packagegroup-installer-x11-anaconda: use libsdl2 instead of libsdl
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
X-List-Received-Date: Tue, 20 Aug 2019 06:46:21 -0000
Content-Type: text/plain

The libsdl had been moved out of oe-core because it is obsolete. Switch
to libsdl2.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-installer/packagegroups/packagegroup-installer-x11-anaconda.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-installer/packagegroups/packagegroup-installer-x11-anaconda.bb b/recipes-installer/packagegroups/packagegroup-installer-x11-anaconda.bb
index 87c57c9..aa53809 100644
--- a/recipes-installer/packagegroups/packagegroup-installer-x11-anaconda.bb
+++ b/recipes-installer/packagegroups/packagegroup-installer-x11-anaconda.bb
@@ -18,7 +18,7 @@ RDEPENDS_packagegroup-installer-x11-anaconda = "\
     xset \
     settings-daemon \
     xrandr \
-    libsdl \
+    libsdl2 \
     metacity \
     adwaita-icon-theme \
     pango \
-- 
2.7.4


