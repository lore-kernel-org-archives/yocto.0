Return-Path: <lynncyrin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF595E00B71; Mon,  9 Jun 2014 11:52:07 -0700 (PDT)
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
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C53F3E00BBA
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 11:51:57 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id w10so5151662pde.28
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 11:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=F35kuSHBG71GYQTFJTc+mCdOdUm3yrL0XaJO3qc3v4E=;
	b=arS+SYZgAIzdjA/aLZ9fX5emGV7y0u3Ft0N0V6IQSqVMxpom8O7iTR0vtzhDRijKXf
	bJYhehpOaobemhEo51GkJl4qEKLhwr4aGIN69dNw8l6fIDKPex8+FjhPc9dFEw+NbvyR
	/gzT4F87fi5bb+gN4/aSd/zNoKIuolXeeQ2ppayWIiG/j2JqZxzV6JTd3kwhxNaS4ehY
	w4ER63+dG++zB312mdTC8NvCkezLXw0vd2FHM9ySe3whoRqb2T+6t5S/pbbAwyZ79je9
	sv4m8GBkHrd7hAcqOlfnCeceymDGOup3HUq9erzIhw8qnX6/F7KzvpIBMfTKOHTo76eI
	CvrQ==
X-Received: by 10.66.158.10 with SMTP id wq10mr305765pab.32.1402339917575;
	Mon, 09 Jun 2014 11:51:57 -0700 (PDT)
Received: from localhost.localdomain (mobile-166-137-186-015.mycingular.net.
	[166.137.186.15]) by mx.google.com with ESMTPSA id
	ir10sm65271982pbc.59.2014.06.09.11.51.56 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Jun 2014 11:51:56 -0700 (PDT)
Sender: Lynn Cyrin <firemagelynn@gmail.com>
From: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 11:51:52 -0700
Message-Id: <1402339912-20927-3-git-send-email-lynncyrin@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1402339912-20927-2-git-send-email-lynncyrin@gmail.com>
References: <1402339912-20927-1-git-send-email-lynncyrin@gmail.com>
	<1402339912-20927-2-git-send-email-lynncyrin@gmail.com>
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
X-List-Received-Date: Mon, 09 Jun 2014 18:52:07 -0000

REF: Bug ID 6354

Added a md5sums artifact into PublishArtifacts

Also changed md5sums to generate in the
temp/deploy/images directory - (for real this time!!!)

Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py     |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index db86ec2..289d045 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -180,6 +180,10 @@ class PublishArtifacts(ShellCommand):
                     command=command+"cp -R --no-dereference " + \
                                      os.path.join(self.basedir, "conf/") + \
                                      "/* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
+                elif artifact == "md5sums":
+                    artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
+                    command = command + "for x in `find " + deploy_image_dir + " -type f`; do "
+                    command = command + "md5sum $x >> $x.md5sum; done"
                 elif artifact == "None":
                     command=command+"echo 'Skipping copy of " + artifact + ".'"
                 else:
-- 
1.7.9.5


