Return-Path: <lynncyrin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC4EEE00BEC; Mon,  9 Jun 2014 11:34:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lynncyrin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9904E00B7B
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 11:33:51 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id v10so5146906pde.9
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 11:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=jxzo0MKvxjFHa43FP8seXeYKf1x3Oppc8ZPe9h+8N6M=;
	b=sx93TtShrlRZmVeC89K1MYX4eGUWpAwdyb1FXbX+KsVfAhQZUqkYf4bCBCkqaG6nYl
	kLhNMUZpO9k8QDTeid8nqlX1Rd6FzZlqH767hyt9spT4pwq42yZnqeRoqMLxJ/4ObY02
	szX4FXktcWhI1KDcSWZNDkY+DVsQPqQUTKQXMbXmFfjJd/jUzup+YWAJjOS/hYQ3YgFZ
	db4Qmu0bpS335SKT9k3qW116oJDmQ2cGpm569I7u8HyqlE0iT9oZZbnSxCLYhic4SwN1
	+69uO0ctusFnndyV+PNCU0PcyGEwxK51AKbF7yTq5cB6w4PpIw6EzARBKTFYtic5bCnX
	VIbw==
X-Received: by 10.66.65.204 with SMTP id z12mr181972pas.60.1402338831228;
	Mon, 09 Jun 2014 11:33:51 -0700 (PDT)
Received: from localhost.localdomain (mobile-166-137-186-015.mycingular.net.
	[166.137.186.15]) by mx.google.com with ESMTPSA id
	fv2sm65289752pbd.11.2014.06.09.11.33.50 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Jun 2014 11:33:50 -0700 (PDT)
Sender: Lynn Cyrin <firemagelynn@gmail.com>
From: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 11:33:45 -0700
Message-Id: <1402338825-20799-3-git-send-email-lynncyrin@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1402338825-20799-2-git-send-email-lynncyrin@gmail.com>
References: <1402338825-20799-1-git-send-email-lynncyrin@gmail.com>
	<1402338825-20799-2-git-send-email-lynncyrin@gmail.com>
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
X-List-Received-Date: Mon, 09 Jun 2014 18:34:01 -0000

REF: Bug ID 6354

Added a md5sums artifact into PublishArtifacts

Also changed md5sums to generate in the
temp/deploy/images directory

Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py     |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index db86ec2..5995200 100644
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
-- 
1.7.9.5


