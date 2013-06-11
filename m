Return-Path: <muhammad_shakeel@mentor.com>
Received: from gemini.alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66DD2E01512
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 08:31:53 -0700 (PDT)
Received: from pkl-mshakeel-ubuntu.mgc.mentorg.com ([137.202.157.119])
	by gemini.alm.mentorg.com (8.14.4/8.14.4) with ESMTP id r5BFVjGq013478; 
	Tue, 11 Jun 2013 10:31:47 -0500
From: "Shakeel, Muhammad" <muhammad_shakeel@mentor.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Date: Tue, 11 Jun 2013 20:32:04 +0500
Message-Id: <1370964724-30717-1-git-send-email-muhammad_shakeel@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/3] [meta-ivi] portmap: By default do not bind to 127.0.0.1
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
X-List-Received-Date: Tue, 11 Jun 2013 15:31:53 -0000

From: Muhammad Shakeel <muhammad_shakeel@mentor.com>

-l prevents portmap from binding to other external networking
interfaces i.e. ethernet

Signed-off-by: Muhammad Shakeel <muhammad_shakeel@mentor.com>
---
 .../portmap/portmap/portmap.service                |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/portmap/portmap/portmap.service b/recipes-connectivity/portmap/portmap/portmap.service
index a76754f..e14058d 100644
--- a/recipes-connectivity/portmap/portmap/portmap.service
+++ b/recipes-connectivity/portmap/portmap/portmap.service
@@ -4,7 +4,7 @@ After=connman.service
 
 [Service]
 Type=forking
-ExecStart=/sbin/portmap -l
+ExecStart=/sbin/portmap
 PIDFile=/var/run/portmap.pid
 
 [Install]
-- 
1.7.9.5


