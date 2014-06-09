Return-Path: <lynncyrin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6674FE00BEC; Mon,  9 Jun 2014 11:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lynncyrin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E61B6E00B71
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 11:33:49 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id fp1so5136167pdb.17
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 11:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=RZmtt0atKBy3s8yuHAqBWYIFppZJdLaq/R7Ajgcsl9Q=;
	b=tXdyy4FoH5IQ6zJi6gZXHwTesmzw+6i48Iqc6SUbuk7pkIfHfsZEdA4wmCL+h/OJpw
	JC2MtrflOlQoHNoxpIgv3eq/nt8ld0vEgfGQ6TBkaFKcLFpOduFb4LJlTOM3s/WREhkL
	GyfsIp7ytwPYJDLqa2R173t9ojJ2fEdMmVMwBqpNXaoLzZkK497ChhRRlyqCIiFZOWqY
	faduB0Q1i9jcfxoCrLxXzuit3O4ry3Zxo+h8qs7MAXI9kwEJS41SagPGK2Z01W+K+44L
	tvZS5qrLj8RIQGv0BOetvSpfmobwnUisEtFzLd/Mnga1Ym1/EK8G7IXOgnOxl4fGQfrh
	vt7A==
X-Received: by 10.66.119.136 with SMTP id ku8mr6326768pab.121.1402338829815;
	Mon, 09 Jun 2014 11:33:49 -0700 (PDT)
Received: from localhost.localdomain (mobile-166-137-186-015.mycingular.net.
	[166.137.186.15]) by mx.google.com with ESMTPSA id
	fv2sm65289752pbd.11.2014.06.09.11.33.48 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Jun 2014 11:33:49 -0700 (PDT)
Sender: Lynn Cyrin <firemagelynn@gmail.com>
From: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 11:33:44 -0700
Message-Id: <1402338825-20799-2-git-send-email-lynncyrin@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1402338825-20799-1-git-send-email-lynncyrin@gmail.com>
References: <1402338825-20799-1-git-send-email-lynncyrin@gmail.com>
Subject: [PATCH 2/3] MakeImageMD5s: delete file
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
X-List-Received-Date: Mon, 09 Jun 2014 18:33:59 -0000

REF: Bug ID 6354

The functionality of MakeImageMDs is being moved into PublishArtifacts.
Since MakeImageMD5s is no longer needed, this commit deletes it.

Signed-off-by: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
---
 .../autobuilder/buildsteps/MakeImageMD5s.py        |   42 --------------------
 1 file changed, 42 deletions(-)
 delete mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py b/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
deleted file mode 100644
index 84839fb..0000000
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/MakeImageMD5s.py
+++ /dev/null
@@ -1,42 +0,0 @@
-'''
-Created on May 5, 2014
-
-__author__ = "Elizabeth 'pidge' Flanagan"
-__copyright__ = "Copyright 2012-2014, Intel Corp."
-__credits__ = ["Elizabeth Flanagan"]
-__license__ = "GPL"
-__version__ = "2.0"
-__maintainer__ = "Elizabeth Flanagan"
-__email__ = "elizabeth.flanagan@intel.com"
-'''
-
-from buildbot.steps.shell import ShellCommand
-from twisted.python import log
-import os, datetime
-from autobuilder.config import *
-
-class MakeImageMD5s(ShellCommand):
-    haltOnFailure = False
-    flunkOnFailure = True
-    name = "Make Image MD5s"
-    def __init__(self, factory, argdict=None, **kwargs):
-        self.factory = factory
-        self.description = "Making image md5sum file"
-        self.slavedir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-slave"))
-        for k, v in argdict.iteritems():
-            setattr(self, k, v)
-        self.timeout = 100000
-        kwargs['timeout']=self.timeout
-        ShellCommand.__init__(self, **kwargs)
-
-    def start(self):
-        DEST=self.getProperty("DEST")
-        buildername=self.getProperty("buildername")
-        command=""
-        if str(os.environ.get('PUBLISH_BUILDS')) == "True":
-            command = command + "for x in `find build/tmp/deploy/images -type f`; do "
-            command = command + "filenm=`basename $x`; md5sum $x >> $filenm.md5sum; done"
-        else:
-            command="echo 'Not publishing build, skipping step'"
-        self.command = command
-        ShellCommand.start(self)
-- 
1.7.9.5


