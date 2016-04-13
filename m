Return-Path: <prvs=9046c8375=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F44E00CE8; Wed, 13 Apr 2016 06:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 847A8E00C5D
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 06:58:36 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DOAQDJTw5X/0oKEKxehAp9BrpGAQ2BdBcLhWwCgXUUAQEBAQEBAYEMhEIBAQQBAQFrCxAYOScBHhEGDgWINsMXAQEBAQEFAQEBAQEbhiGIWhEBaoUKBZgIgVSEI4UsgmyBZU6EAIMchT+PJx4BAYQraohGNn4BAQE
X-IPAS-Result: A2DOAQDJTw5X/0oKEKxehAp9BrpGAQ2BdBcLhWwCgXUUAQEBAQEBAYEMhEIBAQQBAQFrCxAYOScBHhEGDgWINsMXAQEBAQEFAQEBAQEbhiGIWhEBaoUKBZgIgVSEI4UsgmyBZU6EAIMchT+PJx4BAYQraohGNn4BAQE
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Apr 2016 15:57:52 +0200
Message-ID: <1460555872-27920-3-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
References: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 3/3] README: add "Contributing" guideline
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
X-List-Received-Date: Wed, 13 Apr 2016 13:58:39 -0000
Content-Type: text/plain

The "Contributing" guideline section should help people sending their
patches correctly.

A similar section is available in nearly all
layers/repositories hosted on yoctoproject.org. Therefore add it also
the the psplash repository.

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 README | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/README b/README
index 86ef6ba..8779a38 100644
--- a/README
+++ b/README
@@ -8,3 +8,21 @@ rotation. Its visual look is configurable by basic source changes.
 
 Also included is a 'client' command utility for sending information to
 psplash such as boot progress information.
+
+Contributing
+============
+To contribute to this layer you should submit the patches for review to the
+mailing list (yocto@yoctoproject.org).
+
+Please refer to
+    http://openembedded.org/wiki/Commit_Patch_Message_Guidelines
+for some useful guidelines to be followed when submitting patches.
+
+Mailing list:
+    https://lists.yoctoproject.org/listinfo/yocto
+
+When creating patches, please use something like:
+    git format-patch -M -s --subject-prefix='psplash][PATCH' origin
+
+When sending patches, please use something like:
+    git send-email --to yocto@yoctoproject.org <generated patch>
-- 
2.1.4


