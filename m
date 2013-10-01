Return-Path: <Tudor.Florea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 86522E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 08:26:37 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.2.318.1; Tue, 1 Oct 2013
	17:26:34 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4200)	id 8583728C24E;
	Tue,  1 Oct 2013 17:26:34 +0200 (CEST)
From: Tudor Florea <tudor.florea@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 1 Oct 2013 17:26:30 +0200
Message-ID: <1380641190-15127-1-git-send-email-tudor.florea@enea.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: tudor.florea@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] [eclipse-poky-kepler] sdk.remotetools: use xterm for latencytop
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
X-List-Received-Date: Tue, 01 Oct 2013 15:26:40 -0000
Content-Type: text/plain

 Use xterm instead of vt100 in order to avoid having
 unreadable output for latencytop due to some control characters.

Signed-off-by: Tudor Florea <tudor.florea@enea.com>
---
 .../src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java     |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
index e931388..1ef34cb 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java
@@ -13,7 +13,7 @@ package org.yocto.sdk.remotetools.actions;
 
 public class LatencytopHandler extends DialogHandler {
 	
-	private static String initCmd="export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
+	private static String initCmd="export TERM=xterm; export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
 	
 	@Override
 	protected String getInitCmd() {
-- 
1.7.10.4


