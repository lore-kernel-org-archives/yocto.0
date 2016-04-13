Return-Path: <prvs=9046c8375=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5FC5E00CD1; Wed, 13 Apr 2016 06:58:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Apr 2016 06:58:38 PDT
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01445E00CD1
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 06:58:37 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CqBAAJTw5X/0oKEKxehAp9Brg3hBEahXQCgggBAQEBAQGBDYRCAQEEeRAYOVcGDgXLTQEBAQEGAQEBARyGIYlWhQoFmAiBVIQjiBiBT2SHHIU/jyeES2qIfH4BAQE
X-IPAS-Result: A2CqBAAJTw5X/0oKEKxehAp9Brg3hBEahXQCgggBAQEBAQGBDYRCAQEEeRAYOVcGDgXLTQEBAQEGAQEBARyGIYlWhQoFmAiBVIQjiBiBT2SHHIU/jyeES2qIfH4BAQE
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Apr 2016 15:57:51 +0200
Message-ID: <1460555872-27920-2-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
References: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 2/3] add initial .gitignore
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
X-List-Received-Date: Wed, 13 Apr 2016 13:58:41 -0000
Content-Type: text/plain

This initial version of .gitignore contains all files created during a
build.

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 .gitignore | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..7cf14ed
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,20 @@
+configure
+config.h
+config.h.in
+config.log
+config.status
+config.guess
+config.sub
+depcomp
+Makefile
+Makefile.in
+install-sh
+missing
+aclocal.m4
+autom4te.cache/
+.deps/
+*.o
+
+psplash
+psplash-write
+stamp-h1
-- 
2.1.4


