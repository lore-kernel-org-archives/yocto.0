Return-Path: <daniel.ammann@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55645E00950; Tue, 23 Apr 2019 04:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Apr 2019 04:00:51 PDT
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5D23E00927
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 04:00:51 -0700 (PDT)
Received: from mimas.bytesatwork.ch (162.40.150.83.ftth.as8758.net
	[83.150.40.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: daniel)
	by bytesatwork.ch (Postfix) with ESMTPSA id 18E9C101C00D6
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 12:55:47 +0200 (CEST)
From: Daniel Ammann <daniel.ammann@bytesatwork.ch>
To: yocto@yoctoproject.org
Date: Tue, 23 Apr 2019 12:55:40 +0200
Message-Id: <20190423105540.17676-1-daniel.ammann@bytesatwork.ch>
X-Mailer: git-send-email 2.11.0
Subject: [poky-container][PATCH] README.md: Add note about using git inside the container
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
X-List-Received-Date: Tue, 23 Apr 2019 11:00:53 -0000

Fixes bug 11385.

Signed-off-by: Daniel Ammann <daniel.ammann@bytesatwork.ch>
---
 README.md | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/README.md b/README.md
index c5276fd..cf49da9 100644
--- a/README.md
+++ b/README.md
@@ -8,6 +8,11 @@ host.
 
 The instructions will be slightly different depending on whether Linux, Windows or Mac is used. There are setup instructions for using **Windows/Mac** at https://github.com/crops/docker-win-mac-docs/wiki. When referring to **Windows/Mac** in the rest of the document, it is assumed the instructions at https://github.com/crops/docker-win-mac-docs/wiki were followed.
 
+Note that the poky-container should *not* be used to obtain the meta-data, but
+just to build it. This means that meta-data should be checked out using native
+tools that run on the host and not with tools in container. The reason is that
+the container has no dummy git user configured.
+
 Running the container
 ---------------------
 Here a very simple but usable scenario for using the container is described.
-- 
2.11.0


