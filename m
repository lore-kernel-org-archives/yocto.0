Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4026EE00B30; Thu,  8 May 2014 10:01:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f46.google.com (unknown [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C0BE0077C
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:01:01 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id t10so1919395eei.19
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=R6LNaasUUexNzCrXP7U3juOnP1Q7NKtF9PbMnk40ywc=;
	b=wxcfwvuXkttFz/Fmdes9W1t5gFtWzOg69iyyZJSgLtY7POJGpQLrsKVkhtx3kjMsL1
	IEg9CVSfzbTv60k0ElgxlQR6PeHVi8U96jZ+b9wiTZB1/0ezbbc4zSVZg+UNr69esxau
	/xKi/e62y0ZogNew7HYys9O4d7RoVohq/HoifKuGeqfbaExdSIM9GiG7Xo9X1REwT6PM
	JA9GBXR5eNOZHthLajBt+w7t8YxKEKu5U445h7AAI3NA6xmdJEHog9IMOfipKvjisrM8
	U/B2Wf1bGgoGeNtuVoDQwDgD/lM2qz6HbWLUOfyFbQB/VqFWQCfptz75qQFzd1S6KPJE
	MX9g==
X-Received: by 10.15.82.132 with SMTP id a4mr6963570eez.47.1399568094730;
	Thu, 08 May 2014 09:54:54 -0700 (PDT)
Received: from localhost.localdomain (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id x42sm5390510eel.41.2014.05.08.09.54.53
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 May 2014 09:54:54 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Thu,  8 May 2014 16:54:43 +0000
Message-Id: <1399568085-11592-2-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.9.2
In-Reply-To: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
References: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
Subject: [opkg-utils][PATCH 1/3] opkg.py: Allow filename to be a relative path
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
X-List-Received-Date: Thu, 08 May 2014 17:01:03 -0000

In order to support package files residing in a different directory to the
'Packages' index file, we need to allow filename entries in the index to be
relative paths. In order to not break existing code, filename remains the
basename of fn by default. However, if the new relpath argument is set then
filename is the path of fn relative to relpath.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 opkg.py | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/opkg.py b/opkg.py
index c839100..ae0fbcd 100644
--- a/opkg.py
+++ b/opkg.py
@@ -116,7 +116,12 @@ def parse_version(versionstr):
 class Package:
     """A class for creating objects to manipulate (e.g. create) opkg
        packages."""
-    def __init__(self, fn=None):
+
+    # fn: Package file path
+    # relpath: If this argument is set, the file path is given relative to this
+    #   path when a string representation of the Package object is created. If
+    #   this argument is not set, the basename of the file path is given.
+    def __init__(self, fn=None, relpath=None):
         self.package = None
         self.version = 'none'
         self.parsed_version = None
@@ -150,7 +155,10 @@ class Package:
             # see if it is deb format
             f = open(fn, "rb")
 
-            self.filename = os.path.basename(fn)
+            if relpath:
+                self.filename = os.path.relpath(fn, relpath)
+            else:
+                self.filename = os.path.basename(fn)
 
             ## sys.stderr.write("  extracting control.tar.gz from %s\n"% (fn,)) 
 
-- 
1.9.2


