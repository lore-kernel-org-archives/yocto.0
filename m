Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FFC0E00C28; Fri,  7 Oct 2016 08:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC024E0080A
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvQY2018839
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:26 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:25 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:11 -0400
Message-ID: <1475855841-30009-3-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 02/12] layerindex/tools/import_layer.py: Sanitize layer name.
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:28 -0000
Content-Type: text/plain

Django will produce a cryptic error message if layers are added with
invalid names.  Sanitize the layer names when trying to add them.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/tools/import_layer.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 9b5da22..fefef0c 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -181,6 +181,8 @@ def get_github_layerinfo(layer_url, username = None, password = None):
 
 
 def main():
+    valid_layer_name = re.compile('[-\w]+$')
+
     parser = optparse.OptionParser(
         usage = """
     %prog [options] <url> [name]""")
@@ -222,6 +224,10 @@ def main():
             if layer_name.endswith('.git'):
                 layer_name = layer_name[:-4]
 
+    if not valid_layer_name.match(layer_name):
+        logger.error('Invalid layer name "%s" -  Layer name can only include letters, numbers and dashes.', layer_name)
+        sys.exit(1)
+
     if options.github_auth:
         if not ':' in options.github_auth:
             logger.error('--github-auth value must be specified as username:password')
-- 
1.9.1


