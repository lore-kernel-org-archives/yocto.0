Return-Path: <f@rtfs.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85875E00BAA; Mon, 24 Sep 2018 13:08:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rsk6.de (h1435773.stratoserver.net [85.214.108.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C431E00B6C
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 13:08:50 -0700 (PDT)
Received: from yoga (ipbcc04aa7.dynamic.kabel-deutschland.de [188.192.74.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
	bits)) (No client certificate requested)
	by mail.rsk6.de (Postfix) with ESMTPSA id 6B3852525582
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2018 22:08:48 +0200 (CEST)
Message-ID: <1537819727.29496.5.camel@rtfs.org>
From: Fabian Sturm <f@rtfs.org>
To: yocto@yoctoproject.org
Date: Mon, 24 Sep 2018 22:08:47 +0200
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Subject: Python3 sqlite does not work
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
X-List-Received-Date: Mon, 24 Sep 2018 20:08:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi, 

I added python3 to my yocto build and it seems python-sqlite3 is not
working due to a missing file. If I change python3-manifest.json from
here:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devt
ools/python/python3/python3-manifest.json?h=sumo

to also include the __init__.py file. Them it seems to be woking fine.


diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json 
b/meta/recipes-devtools/python/python3/python3-manifest.json
index 2491f36..607eb2b 100644
--- a/meta/recipes-devtools/python/python3/python3-manifest.json
+++ b/meta/recipes-devtools/python/python3/python3-manifest.json
@@ -979,12 +979,14 @@
         "cached": [
             "${libdir}/python3.5/sqlite3/__pycache__",
             "${libdir}/python3.5/sqlite3/__pycache__/dbapi2.*.pyc",
-            "${libdir}/python3.5/sqlite3/__pycache__/dump.*.pyc"
+            "${libdir}/python3.5/sqlite3/__pycache__/dump.*.pyc",
+            "${libdir}/python3.5/sqlite3/__pycache__/__init__.pyc"
         ],
         "files": [
             "${libdir}/python3.5/lib-dynload/_sqlite3.*.so",
             "${libdir}/python3.5/sqlite3/dbapi2.py",
-            "${libdir}/python3.5/sqlite3/dump.py"
+            "${libdir}/python3.5/sqlite3/dump.py",
+            "${libdir}/python3.5/sqlite3/__init__.py"
         ],

To test it it is enough to run python3 and do:

  import sqlite3
  help(sqlite3)

You should see many functions like e.g. connect instead of only two.

Is this a bug, or am I doing something wrong?

Kind regards,
Fabian


