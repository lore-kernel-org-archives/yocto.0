Return-Path: <lynncyrin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B90DDE00BEB; Mon,  9 Jun 2014 11:52:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lynncyrin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.42 listed in list.dnswl.org]
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D76CE00B71
	for <yocto@yoctoproject.org>; Mon,  9 Jun 2014 11:51:56 -0700 (PDT)
Received: by mail-pb0-f42.google.com with SMTP id md12so5283090pbc.29
	for <yocto@yoctoproject.org>; Mon, 09 Jun 2014 11:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=RZmtt0atKBy3s8yuHAqBWYIFppZJdLaq/R7Ajgcsl9Q=;
	b=bUixcOpThrTZYtHJA17585HrJCNoTKi9da0db3bZzuw24cB3K4Kec/cJ5TiFHwblzH
	eoMIodCdr9zyOcB0aot/kbsEQgHRteyb55LrT57gOZL+lV6oviwdQTPj8mZ1R7gd66/N
	bvjjdiXb2pY7xUnZv22OVzNVl5YsMsGFpEXh2Pa6LU1wn0joN+YxHIgmLrDoyHoolYVL
	PkBk3p+E6A3MJSrH+Du/Q7y36YQuBEh0Dl+WRGz1wYnFdJwxuB4kVTt+Kby6ypv8+15N
	iCzfncdH1sdBWrOo1NoJ5orbVf0w3r/Zb4cnEhQvSuvLkDIrYTA9mZnvENI+StzoWuIq
	fzRA==
X-Received: by 10.68.254.70 with SMTP id ag6mr6437992pbd.33.1402339916450;
	Mon, 09 Jun 2014 11:51:56 -0700 (PDT)
Received: from localhost.localdomain (mobile-166-137-186-015.mycingular.net.
	[166.137.186.15]) by mx.google.com with ESMTPSA id
	ir10sm65271982pbc.59.2014.06.09.11.51.55 for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Jun 2014 11:51:55 -0700 (PDT)
Sender: Lynn Cyrin <firemagelynn@gmail.com>
From: Lynn 'Cyrin' Conway <lynncyrin@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Jun 2014 11:51:51 -0700
Message-Id: <1402339912-20927-2-git-send-email-lynncyrin@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1402339912-20927-1-git-send-email-lynncyrin@gmail.com>
References: <1402339912-20927-1-git-send-email-lynncyrin@gmail.com>
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
X-List-Received-Date: Mon, 09 Jun 2014 18:52:05 -0000

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


