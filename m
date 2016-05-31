Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D976E00D9E; Tue, 31 May 2016 04:41:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED145E00C80
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 04:41:38 -0700 (PDT)
Received: from 1b7i3E-0001fm-Um by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b7i3F-0001gk-T7
	for yocto@yoctoproject.org; Tue, 31 May 2016 04:41:37 -0700
Received: by emcmailer; Tue, 31 May 2016 04:41:37 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>) id 1b7i3E-0001fm-Um
	for yocto@yoctoproject.org; Tue, 31 May 2016 04:41:36 -0700
Received: from sestofb11.enea.se (172.21.3.146) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 31 May 2016 13:41:35 +0200
Received: by sestofb11.enea.se (Postfix, from userid 4451)	id 258402413BE;
	Tue, 31 May 2016 13:41:36 +0200 (CEST)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 31 May 2016 13:41:36 +0200
Message-ID: <1464694896-49675-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: [eclipse-poky][PATCH] plugins/org.yocto.sdk.ide: Account for multiple PATH exports
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
X-List-Received-Date: Tue, 31 May 2016 11:41:40 -0000
Content-Type: text/plain

In the current implementation of the HashMap parsing of the source
script only the last $PATH export is considered, which leads to
issues in the case of eSDK.

By concatenating the new value with HashMap values from previous
iterations we make sure that previous exports are not lost.

[YOCTO #9361]

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java                 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 6afc185..5fe74a5 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -223,9 +223,12 @@ public class YoctoSDKUtils {
 						if (sValue.startsWith("\"") && sValue.endsWith("\""))
 							sValue = sValue.substring(sValue.indexOf('"') + 1, sValue.lastIndexOf('"'));
 						/* If PATH ending with $PATH, we need to join with current system path */
-						if (sKey.equalsIgnoreCase("PATH")) {
-							if (sValue.lastIndexOf("$PATH") >= 0)
+						if (sKey.equalsIgnoreCase("PATH") && (sValue.lastIndexOf("$PATH") >= 0)) {
+							if (envMap.containsKey(sKey)) {
+								sValue = sValue.substring(0, sValue.lastIndexOf("$PATH")) + envMap.get(sKey);
+							} else {
 								sValue = sValue.substring(0, sValue.lastIndexOf("$PATH")) + System.getenv("PATH");
+							}
 						}
 
 						if(sValue.toUpperCase().contains("$SDKTARGETSYSROOT")) {
-- 
1.9.1


