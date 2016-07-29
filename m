Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F736E00DBB; Fri, 29 Jul 2016 13:21:04 -0700 (PDT)
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
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BA4E00AA2
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 13:20:58 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id j124so7811276ith.3
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 13:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=JkKBuT8E69di72peffIOkR5u0icaDANoBBKbtpG430o=;
	b=G6Q/dy79nMdILD8T4R02p8oAJc7SQ664znYUTa5J6fCIckjSgowWjxDEKJcDaIzpU7
	7cCIsiEvyHTff3JhundAnF/B0d1Rjevi4VP5PSQfGVbkO/fpzmGSX8nwqgRyn4uhky7R
	YIWLWFDZOyZ51AfRw6b6IBAF94DyX0EX8yOqH65iO2Y5SlrFKszQLcVcKWmApMP3qNLp
	hGT2DHPiMpv0MfWFjHOsU6n43gBwTTw0BMInObcMYAaXoyaibJorIiwLm02QyiLojE/c
	3rGWxfduC3NCg8SR+tWFZ7WFmoV2jWXF7o4y88cw97fk4hVO8uW4X6zKvufFcqT1WJcI
	ZWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JkKBuT8E69di72peffIOkR5u0icaDANoBBKbtpG430o=;
	b=Hbnon9rtuv/tuod/TpZbiafEWLDc2iPH/gHxgI9fjXUDWMxmouZicp9NFosH4+aanZ
	kX9z5HlcMLkjZlVrSYCgger0ASg8NpkugGgkfdUdX1mJ2ISYeRvOX6hPO0CAN5zwoGP6
	aLcW7ImAufmE/JQ7y/1KxSYBjV8NxpvD2DAxL8JvSDl8LNEQ2uz7D3ipe1r4OLwxdVAX
	M2XbkFjUGYfx7NSfJIxCWvLFdKiIQD4nOoCcWLT74SO6jNcuBhL4FNPFo4g2EbBzoiod
	MzZErFX9xUUYU/856S73qXY6AaWlyFQzpUQFyrIIEhhRg+/f/5tvfAFY58vWUY8+J5tE
	kWdw==
X-Gm-Message-State: AEkooutMZbmCyrh0iZiSmPj0eQrdUf7+YcNkuEvO22o9Ti0NNJmzEUtoFnZC9CJCCDuLNQ==
X-Received: by 10.36.48.16 with SMTP id q16mr3140087itq.67.1469823657915;
	Fri, 29 Jul 2016 13:20:57 -0700 (PDT)
Received: from brrussell-Latitude-E6530.dhcp.lexmark.com ([192.146.101.8])
	by smtp.gmail.com with ESMTPSA id k12sm7889198iok.8.2016.07.29.13.20.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 13:20:57 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jul 2016 16:20:37 -0400
Message-Id: <1469823637-29815-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Kyle Russell <bkylerussell@gmail.com>, wesley.lindauer@lexmark.com
Subject: [meta][PATCH] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Fri, 29 Jul 2016 20:21:04 -0000

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 meta/recipes-devtools/python/python-3.4-manifest.inc | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-devtools/python/python-3.4-manifest.inc b/meta/recipes-devtools/python/python-3.4-manifest.inc
index 97070b6..f744441 100644
--- a/meta/recipes-devtools/python/python-3.4-manifest.inc
+++ b/meta/recipes-devtools/python/python-3.4-manifest.inc
@@ -42,7 +42,7 @@ RDEPENDS_${PN}-crypt="${PN}-core"
 FILES_${PN}-crypt="${libdir}/python3.4/hashlib.* ${libdir}/python3.4/md5.* ${libdir}/python3.4/sha.* ${libdir}/python3.4/lib-dynload/crypt.*.so ${libdir}/python3.4/lib-dynload/_hashlib.*.so ${libdir}/python3.4/lib-dynload/_sha256.*.so ${libdir}/python3.4/lib-dynload/_sha512.*.so "
 
 SUMMARY_${PN}-ctypes="Python C types support"
-RDEPENDS_${PN}-ctypes="${PN}-core"
+RDEPENDS_${PN}-ctypes="${PN}-core ${PN}-subprocess"
 FILES_${PN}-ctypes="${libdir}/python3.4/ctypes ${libdir}/python3.4/lib-dynload/_ctypes.*.so ${libdir}/python3.4/lib-dynload/_ctypes_test.*.so "
 
 SUMMARY_${PN}-curses="Python curses support"
@@ -122,7 +122,7 @@ RDEPENDS_${PN}-json="${PN}-core ${PN}-math ${PN}-re"
 FILES_${PN}-json="${libdir}/python3.4/json ${libdir}/python3.4/lib-dynload/_json.*.so "
 
 SUMMARY_${PN}-lang="Python low-level language support"
-RDEPENDS_${PN}-lang="${PN}-core"
+RDEPENDS_${PN}-lang="${PN}-core ${PN}-importlib"
 FILES_${PN}-lang="${libdir}/python3.4/lib-dynload/_bisect.*.so ${libdir}/python3.4/lib-dynload/_collections.*.so ${libdir}/python3.4/lib-dynload/_heapq.*.so ${libdir}/python3.4/lib-dynload/_weakref.*.so ${libdir}/python3.4/lib-dynload/_functools.*.so ${libdir}/python3.4/lib-dynload/array.*.so ${libdir}/python3.4/lib-dynload/itertools.*.so ${libdir}/python3.4/lib-dynload/operator.*.so ${libdir}/python3.4/lib-dynload/parser.*.so ${libdir}/python3.4/atexit.* ${libdir}/python3.4/bisect.* ${libdir}/python3.4/code.* ${libdir}/python3.4/codeop.* ${libdir}/python3.4/collections.* ${libdir}/python3.4/_collections_abc.* ${libdir}/python3.4/dis.* ${libdir}/python3.4/functools.* ${libdir}/python3.4/heapq.* ${libdir}/python3.4/inspect.* ${libdir}/python3.4/keyword.* ${libdir}/python3.4/opcode.* ${libdir}/python3.4/symbol.* ${libdir}/python3.4/repr.* ${libdir}/python3.4/token.* ${libdir}/python3.4/tokenize.* ${libdir}/python3.4/traceback.* ${libdir}/python3.4/weakref.* "
 
 SUMMARY_${PN}-logging="Python logging support"
@@ -134,7 +134,7 @@ RDEPENDS_${PN}-mailbox="${PN}-core ${PN}-mime"
 FILES_${PN}-mailbox="${libdir}/python3.4/mailbox.* "
 
 SUMMARY_${PN}-math="Python math support"
-RDEPENDS_${PN}-math="${PN}-core"
+RDEPENDS_${PN}-math="${PN}-core ${PN}-crypt"
 FILES_${PN}-math="${libdir}/python3.4/lib-dynload/cmath.*.so ${libdir}/python3.4/lib-dynload/math.*.so ${libdir}/python3.4/lib-dynload/_random.*.so ${libdir}/python3.4/random.* ${libdir}/python3.4/sets.* "
 
 SUMMARY_${PN}-mime="Python MIME handling APIs"
@@ -198,7 +198,7 @@ RDEPENDS_${PN}-resource="${PN}-core"
 FILES_${PN}-resource="${libdir}/python3.4/lib-dynload/resource.*.so "
 
 SUMMARY_${PN}-shell="Python shell-like functionality"
-RDEPENDS_${PN}-shell="${PN}-core ${PN}-re"
+RDEPENDS_${PN}-shell="${PN}-core ${PN}-re ${PN}-compression"
 FILES_${PN}-shell="${libdir}/python3.4/cmd.* ${libdir}/python3.4/commands.* ${libdir}/python3.4/dircache.* ${libdir}/python3.4/fnmatch.* ${libdir}/python3.4/glob.* ${libdir}/python3.4/popen2.* ${libdir}/python3.4/shlex.* ${libdir}/python3.4/shutil.* "
 
 SUMMARY_${PN}-smtpd="Python Simple Mail Transport Daemon"
@@ -218,7 +218,7 @@ RDEPENDS_${PN}-stringold="${PN}-core ${PN}-re"
 FILES_${PN}-stringold="${libdir}/python3.4/lib-dynload/strop.*.so ${libdir}/python3.4/string.* ${libdir}/python3.4/stringold.* "
 
 SUMMARY_${PN}-subprocess="Python subprocess support"
-RDEPENDS_${PN}-subprocess="${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl ${PN}-pickle"
+RDEPENDS_${PN}-subprocess="${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl ${PN}-pickle ${PN}-threading"
 FILES_${PN}-subprocess="${libdir}/python3.4/subprocess.* "
 
 SUMMARY_${PN}-syslog="Python syslog interface"
-- 
1.9.1


