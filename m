Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D14ECE00DD2; Wed, 20 Dec 2017 07:51:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,LONGWORDS,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.0 LONGWORDS Long string of long words
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B041CE00DD2
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 07:51:18 -0800 (PST)
Received: by mail-wr0-f182.google.com with SMTP id w68so10233319wrc.10
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 07:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ze6ztWA5XEmhfT5evwOme634i4PDkZG7WwTJLp3z040=;
	b=w86lakk8fpWqRl2pqECMvdTRLp3XEOLCPJCu+zyfNIYMdp/QJGm2bzaWWw3tpdwDiH
	HD+SkJE1NTXejK+LmxNJHBpZl5MruwW1ErKHAcOc/PEqvO3PPWOlRZkHSVSpQ1m8mtDv
	G4BGwRmv6H+/bAlMGTGbIT4jVjKGmrRR0XXJEeb7T2Z0a8BxIiujbD6riz6om0OyknTB
	gC2ftvImmNwKwyQt6YP4Y6yE6lXmhkKjj8zPW3ll+tsXa1HV8bmYgEgySE8962qMUMuM
	dM7a4cdcm82wnrMiUyZmmmm9zkv5paGtyptMBZO/P1l4K/uwNFStqrfN1WJG1ZOGETgG
	9tVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ze6ztWA5XEmhfT5evwOme634i4PDkZG7WwTJLp3z040=;
	b=sc7gmt3qttABt3/+q4HdVZA0wxkRT0iKK3jyxnvEklvNGZUA9xiy2fCVZlbVWsPZpB
	G+xBQ8jk6HKJnQr4njjQDySR7D9N3DLKM15RlQYRvarCvEa1wxqVq6p3JB+F2JUBEadR
	B72BTxS3IZmh1O/8GOikEtXiEfmzFM7mlCRAa19sydlgRDQUiiwOKD/w4qXx91qwhAR/
	C4nK+M+yVvunL2avKQemJgC+RZ19K+m7RR3G/kqyKw2310mhKw+mCwaDwoYei1MA7NFm
	dtaSATq0EuYPJZcfVVZvxHfdxGGAq4Sj4XSuJP8v3mxs7Sd2muxFxemDMKIr7/YAaR0a
	J9+w==
X-Gm-Message-State: AKGB3mId2Y1j4sjWU5XlIHiMsG1Nbu9wsKewBQrnntVthRy45DvYvNcP
	Y96f6Fr7tqanO5jC1Xiurpz71mc=
X-Google-Smtp-Source: ACJfBovl0XpUTJTTtK+tsIPbSyQJ4vCsgTzY8qZ/zEvd8/Z8QNKN5Ag8YevC0EFY05jCXxvhqO9CNA==
X-Received: by 10.223.132.163 with SMTP id 32mr1904301wrg.283.1513785077486;
	Wed, 20 Dec 2017 07:51:17 -0800 (PST)
Received: from pohly-desktop.fritz.box (p54BD58F7.dip0.t-ipconnect.de.
	[84.189.88.247]) by smtp.gmail.com with ESMTPSA id
	i65sm13291363wme.20.2017.12.20.07.51.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Dec 2017 07:51:16 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Dec 2017 16:50:58 +0100
Message-Id: <20171220155058.8961-1-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <1513785034.5979.256.camel@intel.com>
References: <1513785034.5979.256.camel@intel.com>
Cc: ingo.flaschberger@gmail.com
Subject: [meta-swupd][PATCH 1/1] bundles.py: allow username/password encoded in URLs
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
X-List-Received-Date: Wed, 20 Dec 2017 15:51:23 -0000

Downloading content and version information via HTTP may need a
username/password for basic authentication. To support this,
SWUPD_VERSION_URL and SWUPD_CONTENT_URL can now contain URLs of the
form http(s)://<user>:<password>@<host>/.

Original patch from: Ingo Flaschberger <ingo.flaschberger@gmail.com>

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 lib/swupd/bundles.py | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
index e1eec5a..48c7455 100644
--- a/lib/swupd/bundles.py
+++ b/lib/swupd/bundles.py
@@ -5,6 +5,7 @@ import subprocess
 import shutil
 import urllib.request
 import urllib.error
+import urllib.parse
 from bb.utils import export_proxies
 from oe.package_manager import RpmPM
 from oe.package_manager import OpkgPM
@@ -153,6 +154,27 @@ def copy_bundle_contents(d):
     for bndl in bundles:
         stage_empty_bundle(d, bndl)
 
+def handle_plain_auth(url):
+    """
+    Check for special urls with username/password (as in http://user:password@host/),
+    extract those and install an auth handler which will provide them
+    to the HTTP server when needed. Returns the URL that is to be instead of the original one.
+    """
+    parsed_url = urllib.parse.urlsplit(url)
+    if parsed_url.username != None:
+        # Use the netloc with just the hostname, without username/password.
+        parsed_url.netloc = parsed_url.hostname
+        # The username/password are installed permanently in the urllib.request module
+        # for future use with all URLs beneath url.
+        manager = urllib.request.HTTPPasswordMgrWithDefaultRealm()
+        manager.add_password(None, parsed_url, parsed_url.username, parsed_url.password)
+        authHandler = urllib.request.HTTPBasicAuthHandler(manager)
+        opener = urllib.request.build_opener(authHandler)
+        urllib.request.install_opener(opener)
+        return urllib.parse.urlunsplit(new_source)
+    else:
+        return url
+
 def download_manifests(content_url, version, component, to_dir):
     """
     Download one manifest file and recursively all manifests referenced by it.
@@ -204,8 +226,8 @@ def download_old_versions(d):
     a normal build and thus is not on the critical path.
     """
 
-    content_url = d.getVar('SWUPD_CONTENT_BUILD_URL', True)
-    version_url = d.getVar('SWUPD_VERSION_BUILD_URL', True)
+    content_url = handle_plain_auth(d.getVar('SWUPD_CONTENT_BUILD_URL', True))
+    version_url = handle_plain_auth(d.getVar('SWUPD_VERSION_BUILD_URL', True))
     current_format = int(d.getVar('SWUPD_FORMAT', True))
     deploy_dir = d.getVar('DEPLOY_DIR_SWUPD', True)
     www_dir = os.path.join(deploy_dir, 'www')
-- 
2.11.0


