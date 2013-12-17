Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E0FE007B6
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:59:51 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 31826F811EA; Tue, 17 Dec 2013 09:59:50 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from zeus.chez-thomas.org (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5A12FF811E9;
	Tue, 17 Dec 2013 09:59:47 -0700 (MST)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Dec 2013 09:59:50 -0700
Message-Id: <1387299591-29254-2-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1387299591-29254-1-git-send-email-gary@mlbassoc.com>
References: <1387299591-29254-1-git-send-email-gary@mlbassoc.com>
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: [meta-raspberrypi][PATCH 1/2] README: Add video camera control
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
X-List-Received-Date: Tue, 17 Dec 2013 16:59:52 -0000

Add optional 'VIDEO_CAMERA' setting to enable video
camera at boot time.

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 README |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/README b/README
index c1321a3..c4be792 100644
--- a/README
+++ b/README
@@ -158,6 +158,10 @@ CORE_FREQ = "500"
 SDRAM_FREQ = "500"
 OVER_VOLTAGE = "6"
 
+2.F. Optional - Video camera support with V4L2 drivers
+Set this variable to enable support for the video camera (Linux 3.12.4+ required)
+VIDEO_CAMERA = "1"
+
 
 3. Extra apps
 =============
-- 
1.7.9.5


