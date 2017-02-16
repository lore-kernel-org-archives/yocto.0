Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D6DBE009B9; Thu, 16 Feb 2017 06:58:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C690FE009B9
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:38 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id c85so3544251wmi.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Jv211Yeii/9Odp91vDnUSfPXRzX0E7GHERNxOzbSWjo=;
	b=oDdqTGRUOeU+1y10N8Tzd+rXIVzTL+vetpheIcJcGpVhotuc0SCBh7DbF1/WrjzTpW
	TVpUNULugQkVLa+IqXz1PTQZWWq0ZzPcZRwuyrrlYvg1CDtuBnFyjwOImYUpGYUciCcT
	eH6rKuwmAnHFRxtWt5R9RYxue9axrmHK8A3hMoicjRj95MnTM8uVRE7v8flBYvZ1TC3a
	Is5zxJIEUJOeAa4j3Jf9hOKVHkS3d5t/FJSPjdSGfiB2BvGJJYCYy1NMgzk6xn2NZc1E
	jWn0DcHNz+XrL5eve+zRkmiH7/mSZHqOJtL/Su1VuYbVh9qI9tiD4Bix6TTg9uO7IbDY
	G7Dg==
X-Gm-Message-State: AMke39mfCmz92MHVpT+ZgGk342Q28TVdb1BqjvkVCxI01DB0HOSVNc6c5266Qx0zaBYj0g==
X-Received: by 10.28.87.19 with SMTP id l19mr13219527wmb.95.1487257117409;
	Thu, 16 Feb 2017 06:58:37 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 8sm700233wmg.1.2017.02.16.06.58.36
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 06:58:36 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 14:58:29 +0000
Message-Id: <20170216145830.21766-3-git@andred.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170216145830.21766-1-git@andred.net>
References: <20170216145830.21766-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-swupd][PATCH 2/3] path.py: always clean up temporary file in copyxattrfiles()
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
X-List-Received-Date: Thu, 16 Feb 2017 14:58:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Use try: finally: to make sure the file is removed even
on exceptions.

Signed-off-by: André Draszik <git@andred.net>
---
 lib/swupd/path.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/lib/swupd/path.py b/lib/swupd/path.py
index 61e979e..a55c22c 100644
--- a/lib/swupd/path.py
+++ b/lib/swupd/path.py
@@ -50,10 +50,12 @@ def copyxattrfiles(d, filelist, src, dst, archive=False):
             bb.fatal('Extracting files from an archive and writing into an archive not implemented yet.')
         else:
             cmd = "bsdtar --no-recursion -C %s -xf %s -T %s" % (dst, src, copyfile)
-    output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
-    if output:
-        bb.fatal('Unexpected output from the following command:\n%s\n%s' % (cmd, output))
-    os.remove(copyfile)
+    try:
+        output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
+        if output:
+            bb.fatal('Unexpected output from the following command:\n%s\n%s' % (cmd, output))
+    finally:
+        os.remove(copyfile)
 
 
 def remove_empty_directories(tree):
-- 
2.11.0


