Return-Path: <daniel.ammann@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B57E00CCC; Thu, 21 Feb 2019 04:10:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 423 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Feb 2019 04:10:50 PST
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4EE9E00BB7
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 04:10:50 -0800 (PST)
Received: from mimas.bytesatwork.ch (162.40.150.83.ftth.as8758.net
	[83.150.40.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: daniel)
	by bytesatwork.ch (Postfix) with ESMTPSA id 0441A101C037A
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 13:03:43 +0100 (CET)
From: Daniel Ammann <daniel.ammann@bytesatwork.ch>
To: yocto@yoctoproject.org
Date: Thu, 21 Feb 2019 13:03:42 +0100
Message-Id: <20190221120342.23013-1-daniel.ammann@bytesatwork.ch>
X-Mailer: git-send-email 2.11.0
Subject: [yocto-docs][PATCH] ref-manual: Fix typo
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
X-List-Received-Date: Thu, 21 Feb 2019 12:10:51 -0000

Signed-off-by: Daniel Ammann <daniel.ammann@bytesatwork.ch>
---
 documentation/ref-manual/ref-variables.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index d9d0915a8..9a47bcd33 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -16884,7 +16884,7 @@
      USERADD_PACKAGES = "${PN}"
                     </literallayout>
                     <note>
-                        If follows that if you are going to use the
+                        It follows that if you are going to use the
                         <filename>USERADD_PACKAGES</filename> variable,
                         you need to set one or more of the
                         <link linkend='var-USERADD_PARAM'><filename>USERADD_PARAM</filename></link>,
-- 
2.11.0


