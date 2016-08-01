Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A20E00E48; Mon,  1 Aug 2016 05:02:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E7D9E00E3E
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 05:02:12 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id g86so13861332ioj.1
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 05:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=/XgllMXh3rjjOandks0bPAYFvZY10mfzulpQn1yUPMI=;
	b=ePvwJvzwzn9MkymwzI0eshwMzYOrPByND9uJepNnlPJzCI+WDqM+Ac67PNE/ZCeenk
	qrclNz7aUL4zcMZYOenOy8896Ce0K2/H7YWJ1OGDHGa9zR21rfQjA1OFb3+dkuo0pvGW
	knfXKb6t0y3R8yHL10OZHsZJl+O6fhVN6bRlDDz+mBY1Wbh9BqlkF6QL0ilMNQ2OQ43P
	aiLscD3nLb/9BaGh087AYoQDgEGlXD96XXqCGorKVSdpEBE36b4jmKp7hwl4guuje24F
	ObL/zGRduSx6ppLAdRSGzqzgC/SDBv0gDR7jBCIf4tfzHrHX6ov+T+mzyJKxVZEkPx64
	PhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/XgllMXh3rjjOandks0bPAYFvZY10mfzulpQn1yUPMI=;
	b=cMk+fmw5FCRf4cnMleuvDPK3eLWsXO1GFnF4UHhIjGioTV5CdCMqlHkV68kRTvqTbn
	3yIdHuwLcllbhGLAVb5Ujuu4YFJi+pB8oOQ9eUtKv3TNnI2LtK0t5iMtGJSQHT+mF7eu
	IR/roIMIzkIhN3CHsbgEMgpXCh/WPi1RFCoHr4xJp3cfykPM1hPaTEp+jjO5Mm4kAxqN
	L2uILX1uM5uVfGaoFmxUv0F2MF0Le1zuVC/SlAM59j5MWXNCkzDLzTJzWdKfzJ/q+dk8
	fFoPtrLUAbBMX6jBIN3Y1cdEBQC6/CuZyisLbFw+vFpFBSkls2ByaSW9p2p9jDdNTc66
	doBw==
X-Gm-Message-State: AEkooutITPa5+OR1ZlvYbE3NQoqsh2nyPiXkX/0exEvqq8a/2hzWoF7/6OAqDaG8RZu2hw==
X-Received: by 10.107.40.133 with SMTP id o127mr53564578ioo.183.1470052931366; 
	Mon, 01 Aug 2016 05:02:11 -0700 (PDT)
Received: from brrussell-Latitude-E6530.natcky.rr.com
	(cpe-76-177-112-62.natcky.res.rr.com. [76.177.112.62])
	by smtp.gmail.com with ESMTPSA id
	d67sm13482821ioe.5.2016.08.01.05.02.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 01 Aug 2016 05:02:10 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Aug 2016 08:01:55 -0400
Message-Id: <1470052915-2839-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Kyle Russell <bkylerussell@gmail.com>
Subject: [meta][PATCH v2] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Mon, 01 Aug 2016 12:02:15 -0000

Several packages were missing RDEPENDS on other modules they import.

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 scripts/contrib/python/generate-manifest-3.4.py | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/contrib/python/generate-manifest-3.4.py b/scripts/contrib/python/generate-manifest-3.4.py
index ca2fa61..ba4ab72 100755
--- a/scripts/contrib/python/generate-manifest-3.4.py
+++ b/scripts/contrib/python/generate-manifest-3.4.py
@@ -229,7 +229,7 @@ if __name__ == "__main__":
     m.addPackage( "${PN}-curses", "Python curses support", "${PN}-core",
     "curses lib-dynload/_curses.*.so lib-dynload/_curses_panel.*.so" ) # directory + low level module
 
-    m.addPackage( "${PN}-ctypes", "Python C types support", "${PN}-core",
+    m.addPackage( "${PN}-ctypes", "Python C types support", "${PN}-core ${PN}-subprocess",
     "ctypes lib-dynload/_ctypes.*.so lib-dynload/_ctypes_test.*.so" ) # directory + low level module
 
     m.addPackage( "${PN}-datetime", "Python calendar and time support", "${PN}-core ${PN}-codecs",
@@ -282,7 +282,7 @@ if __name__ == "__main__":
     m.addPackage( "${PN}-json", "Python JSON support", "${PN}-core ${PN}-math ${PN}-re",
     "json lib-dynload/_json.*.so" ) # package
 
-    m.addPackage( "${PN}-lang", "Python low-level language support", "${PN}-core",
+    m.addPackage( "${PN}-lang", "Python low-level language support", "${PN}-core ${PN}-importlib",
     "lib-dynload/_bisect.*.so lib-dynload/_collections.*.so lib-dynload/_heapq.*.so lib-dynload/_weakref.*.so lib-dynload/_functools.*.so " +
     "lib-dynload/array.*.so lib-dynload/itertools.*.so lib-dynload/operator.*.so lib-dynload/parser.*.so " +
     "atexit.* bisect.* code.* codeop.* collections.* _collections_abc.* dis.* functools.* heapq.* inspect.* keyword.* opcode.* symbol.* repr.* token.* " +
@@ -294,7 +294,7 @@ if __name__ == "__main__":
     m.addPackage( "${PN}-mailbox", "Python mailbox format support", "${PN}-core ${PN}-mime",
     "mailbox.*" )
 
-    m.addPackage( "${PN}-math", "Python math support", "${PN}-core",
+    m.addPackage( "${PN}-math", "Python math support", "${PN}-core ${PN}-crypt",
     "lib-dynload/cmath.*.so lib-dynload/math.*.so lib-dynload/_random.*.so random.* sets.*" )
 
     m.addPackage( "${PN}-mime", "Python MIME handling APIs", "${PN}-core ${PN}-io",
@@ -340,10 +340,10 @@ if __name__ == "__main__":
     m.addPackage( "${PN}-resource", "Python resource control interface", "${PN}-core",
     "lib-dynload/resource.*.so" )
 
-    m.addPackage( "${PN}-shell", "Python shell-like functionality", "${PN}-core ${PN}-re",
+    m.addPackage( "${PN}-shell", "Python shell-like functionality", "${PN}-core ${PN}-re ${PN}-compression",
     "cmd.* commands.* dircache.* fnmatch.* glob.* popen2.* shlex.* shutil.*" )
 
-    m.addPackage( "${PN}-subprocess", "Python subprocess support", "${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl ${PN}-pickle",
+    m.addPackage( "${PN}-subprocess", "Python subprocess support", "${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl ${PN}-pickle ${PN}-threading",
     "subprocess.*" )
 
     m.addPackage( "${PN}-sqlite3", "Python Sqlite3 database support", "${PN}-core ${PN}-datetime ${PN}-lang ${PN}-crypt ${PN}-io ${PN}-threading",
-- 
1.9.1


