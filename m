Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24BA0E0080A; Fri,  7 Oct 2016 08:57:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F821E00C11
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u97FvQfB016462
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 7 Oct 2016 08:57:27 -0700 (PDT)
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:26 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:12 -0400
Message-ID: <1475855841-30009-4-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 03/12] layerindex/tools/import_layer.py: Avoid failing if there is any layer to add.
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:29 -0000
Content-Type: text/plain

Subdirectories are scanned when adding layers.  If any of the
subdirectories or root directory layers already exist in the database,
then the addition fails.  This changes that behaviour to report the
failure as a warning and remove it from the list.  That way, if a repo
has a new layer added it can be rescanned without issue.  Layers being
rescanned are checked against the vcs_url to ensure there is not a name
collision.  A name collision without the same vcs_url will still produce
a hard failure.

Note that multiple layers with the same vcs_url are supported in the
error reporting even though this should never happen.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/tools/import_layer.py | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index fefef0c..184c5cc 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -334,8 +334,20 @@ def main():
                 else:
                     subdir = ''
                 if LayerItem.objects.filter(name=layer.name).exists():
-                    logger.error('A layer named "%s" already exists in the database' % layer_name)
-                    sys.exit(1)
+                    if LayerItem.objects.filter(name=layer.name).exclude(vcs_url=layer.vcs_url).exists():
+                        conflict_list = LayerItem.objects.filter(name=layer.name).exclude(vcs_url=layer.vcs_url)
+                        conflict_list_urls = []
+                        for conflict in conflict_list:
+                            conflict_list_urls.append(conflict.vcs_url)
+                        cln = ', '.join(conflict_list_urls)
+                        logger.error('A layer named "%s" already exists in the database.  Possible name collision with %s.vcs_url = %s' % (layer.name, layer.name, cln))
+                        sys.exit(1)
+                    else:
+                        logger.info('The layer named "%s" already exists in the database. Skipping this layer with same vcs_url' % layer.name)
+                        layer_paths = [x for x in layer_paths if x != layerdir]
+                        continue
+
+
 
                 logger.info('Creating layer %s' % layer.name)
                 # Guess layer type
@@ -411,6 +423,10 @@ def main():
 
                 layer.save()
 
+            if not layer_paths:
+                logger.error('No layers added.')
+                sys.exit(1);
+
             if options.dryrun:
                 raise DryRunRollbackException()
     except DryRunRollbackException:
-- 
1.9.1


