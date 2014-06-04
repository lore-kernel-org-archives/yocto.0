Return-Path: <lynncyrin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92589E00BDF; Tue,  3 Jun 2014 18:03:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lynncyrin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65746E00B20
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 18:03:53 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id z10so5316963pdj.6
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 18:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=0ADiety4DIioZrA5V/jdS+4LWqfqasxxCkkTyyQETOQ=;
	b=FtJWZnAMLwMDZQyQVl2gP05svA8rvpfuaMo2kF5sLBB1eSj+FbPgiiygktigTc9Xwn
	0EETE3ujRLUEussfvdxQdcYQp/fFuE6K7N8aqtweqtMdufosG10yq2az2aV0oEpLqeae
	o6dxuga+2ocVQ+JgIIsgV/V5khveILFnNbOpJ5lnZFHIzAJjzxaR2pnn3twxnN+xUkpw
	GszBe0YugSr6RAjozYV1IcNoKUO3RzozhqPynQirJOGAmDUWW9TI9Qc7/Cbi0ogeRaEr
	6YKHhprYA3yVc4FAZHspMbGZcn3HBcOVtBwsd7DjT4FWqHNxmGETCwyGRiNKfbMHIZnx
	f1Ew==
X-Received: by 10.68.204.225 with SMTP id lb1mr57161307pbc.63.1401843833171;
	Tue, 03 Jun 2014 18:03:53 -0700 (PDT)
Received: from localhost.localdomain (mobile-166-137-177-174.mycingular.net.
	[166.137.177.174])
	by mx.google.com with ESMTPSA id oz7sm2794992pbc.41.2014.06.03.18.03.49
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Jun 2014 18:03:52 -0700 (PDT)
Sender: Lynn Cyrin <firemagelynn@gmail.com>
From: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jun 2014 18:03:42 -0700
Message-Id: <1401843822-13967-3-git-send-email-lynncyrin@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1401843822-13967-2-git-send-email-lynncyrin@gmail.com>
References: <1401843822-13967-1-git-send-email-lynncyrin@gmail.com>
	<1401843822-13967-2-git-send-email-lynncyrin@gmail.com>
Subject: [PATCH 3/3] PublishArtifacts: add md5sums artifact
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
X-List-Received-Date: Wed, 04 Jun 2014 01:03:56 -0000

REF: Bug ID 6354

Added a md5sums artifact into PublishArtifacts

Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py     |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index db86ec2..bb69d18 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -180,6 +180,10 @@ class PublishArtifacts(ShellCommand):
                     command=command+"cp -R --no-dereference " + \
                                      os.path.join(self.basedir, "conf/") + \
                                      "/* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
+                elif artifact == "md5sums":
+                    artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
+                    command = command + "for x in `find " + deploy_image_dir + " -type f`; do "
+                    command = command + "filenm=`basename $x`; md5sum $x >> $filenm.md5sum; done"
                 elif artifact == "None":
                     command=command+"echo 'Skipping copy of " + artifact + ".'"
                 else:
@@ -216,7 +220,7 @@ class PublishArtifacts(ShellCommand):
             artifact_name = artifact_name + "-lsb"
         if self.layerversion_core is not None and int(self.layerversion_core) > 2:
             deploy_dir_image = os.path.join(os.path.join(self.basedir, "tmp/deploy/images/"), artifact)
-        else:
+        else:1
             deploy_dir_image = os.path.join(self.basedir, "tmp/deploy/images/")
         return artifact_name, deploy_dir_image
 
-- 
1.7.9.5


