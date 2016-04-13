Return-Path: <prvs=9046c8375=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 585D5E00D2C; Wed, 13 Apr 2016 06:58:39 -0700 (PDT)
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
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Apr 2016 06:58:35 PDT
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F6AE00AF4
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 06:58:35 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DOAQDJTw5X/0oKEKxehQcGrm6JSYIPAQ2BdIYOgXcUAQEBAQEBAYEMhUEoWjwOBYgTA719DYUtAQEIIIYhhwyCSoUKBZdXMYFUhxaDLQGBd4lPhT+HS4dcHgEBhCtqiHx+AQEB
X-IPAS-Result: A2DOAQDJTw5X/0oKEKxehQcGrm6JSYIPAQ2BdIYOgXcUAQEBAQEBAYEMhUEoWjwOBYgTA719DYUtAQEIIIYhhwyCSoUKBZdXMYFUhxaDLQGBd4lPhT+HS4dcHgEBhCtqiHx+AQEB
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Wed, 13 Apr 2016 15:57:50 +0200
Message-ID: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 1/3] AUTHORS: add list of git commit authors
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

Added an initial AUTHORS list in alphabetical order, created with
following commandline:
	git log --format='%aN <%aE>' | sort -u

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 AUTHORS | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/AUTHORS b/AUTHORS
index e69de29..953d867 100644
--- a/AUTHORS
+++ b/AUTHORS
@@ -0,0 +1,13 @@
+List of contributors (in alphabetical order):
+
+Aws Ismail <aws.ismail@windriver.com>
+Juro Bystricky <juro.bystricky@intel.com>
+Khem Raj <raj.khem@gmail.com>
+Matthew Allum <mallum@openedhand.com>
+Olaf Mandel <o.mandel@menlosystems.com>
+Richard Purdie <richard.purdie@linuxfoundation.org>
+Rob Bradford <rob@linux.intel.com>
+Robert Bragg <robert@linux.intel.com>
+Ross Burton <ross.burton@intel.com>
+Samuel Ortiz <sameo@linux.intel.com>
+Tomas Frydrych <tomas@sleepfive.com>
-- 
2.1.4


