Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DDCDE00D97; Tue, 30 Jul 2019 11:36:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
	[209.85.222.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5751E00D4D
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 11:36:36 -0700 (PDT)
Received: by mail-ua1-f66.google.com with SMTP id o2so25889744uae.10
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 11:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=McnbQlfyjsWqkOGLWEtL6SLw3BrZkq0fl7EMNnEEMQo=;
	b=wf/4HNym/MhHahYd44xnrvFFZQm7e2W1Qd5MnK9iicvwdSZmu1FxwJ7Az/22QHj4dJ
	SnWTR+tAyYIhUOHWqyKWp3UuWC2MZUpbW5e1KBRvrqS7R6zBqK6CxVeA0P3LBtLbLkXj
	ZR9RZNPBwEfupe6RoxYKDweSHAdXMETEHLSH7DumIElxOk58gOej3NL8jyeNiCbeqKg6
	9H1BhNnD7D5o+7ITBOy0syrcK5t/mtaaX0GmQ+apN9UJxKHnQsVSIUbWd868SBGOXFzw
	6PBhzWrGBxrXd2gdNkFEcA9/xzQcQWuLrt5xD26hwJPcQO3zMEcASvEiE0gAOEHQ//2E
	kVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=McnbQlfyjsWqkOGLWEtL6SLw3BrZkq0fl7EMNnEEMQo=;
	b=MoU399umEnIYHs4QM7HffVNfplfWeaRMF5wc5u3WJMWF0Y5VoWcuDwXxmwvvHETfBh
	nAe7r9oQaZ2gWarQP8VrxntLhZcQ4B0ISsoMNC+h4iXvpEtffOMsKLMykX1FQIqIUpCH
	fgNXBc3pG8aClcUY4VnsnJ3VG+qZCsNCZ9qeYVUvr8oilRBhGeYWLsUP4+0nPt3zF/Nx
	un6A1HmBJBtQQec/xzU+GJaNcVIn5waCC92f6ANR2ipXFOQsw172G7qOLTFhH4RCq+vy
	MDcTnCYA43ezOLGda2ZHkmx6jDYwGobBaYNtSb98exgZawItX/Yl19qEVOzFFmXmnds8
	0+Xw==
X-Gm-Message-State: APjAAAUsT3wm/1kWsHh+B7M45sHtUvOMSCv1YlIPwUjlGlcKW3A9SpzV
	GJxSCIXgUuHsSJCBg91N7no8cs38bYY=
X-Google-Smtp-Source: APXvYqyPds/hi6t5ST/fyoUpcRP+GcEtXOzuuiNhGew5cT+IJlaAUl7sktDfusvSh5Fxvu8ZX3aQrw==
X-Received: by 2002:ab0:208c:: with SMTP id r12mr66407105uak.27.1564511795780; 
	Tue, 30 Jul 2019 11:36:35 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	y71sm15036900vsc.19.2019.07.30.11.36.35
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 11:36:35 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Jul 2019 14:36:21 -0400
Message-Id: <20190730183621.26193-3-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730183621.26193-1-btgoodwin@geontech.com>
References: <20190730183621.26193-1-btgoodwin@geontech.com>
X-Mailman-Approved-At: Tue, 30 Jul 2019 11:45:43 -0700
Subject: [yocto-autobuilder2][PATCH 3/3] Support for absolute paths to config files
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
X-List-Received-Date: Tue, 30 Jul 2019 18:36:37 -0000

Using absolute paths in ABHELPER_JSON with remote-loading
now works; the paths are stripped to os.path.basename()
before being provided to the builders.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 builders.py | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/builders.py b/builders.py
index 35903de..16c1344 100644
--- a/builders.py
+++ b/builders.py
@@ -4,6 +4,7 @@ from yoctoabb import config
 from yoctoabb.steps.writelayerinfo import WriteLayerInfo
 from yoctoabb.steps.observer import RunConfigLogObserver
 from datetime import datetime
+import copy
 
 import os
 import json
@@ -38,6 +39,13 @@ def add_abhelper_steps(factory):
             workerdest=worker_helper,
             haltOnFailure=True ))
 
+# At the worker, all paths are relative to builddir/yocto-autobuilder-helper
+# once the add_abhelper_steps run.
+worker_env = copy.deepcopy(extra_env)
+if worker_env.get('ABHELPER_JSON'):
+    configs = [os.path.basename(c) for c in worker_env['ABHELPER_JSON'].split(" ")]
+    worker_env['ABHELPER_JSON'] = " ".join(configs)
+
 @util.renderer
 def get_sstate_release_number(props):
     """
@@ -216,7 +224,7 @@ for builder in config.subbuilders:
         workers = config.builder_to_workers['default']
     builders.append(util.BuilderConfig(name=builder,
                                        workernames=workers,
-                                       factory=f, env=extra_env))
+                                       factory=f, env=worker_env))
 
 def create_parent_builder_factory(buildername, waitname):
     factory = util.BuildFactory()
@@ -337,5 +345,5 @@ def create_parent_builder_factory(buildername, waitname):
 
     return factory
 
-builders.append(util.BuilderConfig(name="a-quick", workernames=config.workers, factory=create_parent_builder_factory("a-quick", "wait-quick"), env=extra_env))
-builders.append(util.BuilderConfig(name="a-full", workernames=config.workers, factory=create_parent_builder_factory("a-full", "wait-full"), env=extra_env))
+builders.append(util.BuilderConfig(name="a-quick", workernames=config.workers, factory=create_parent_builder_factory("a-quick", "wait-quick"), env=worker_env))
+builders.append(util.BuilderConfig(name="a-full", workernames=config.workers, factory=create_parent_builder_factory("a-full", "wait-full"), env=worker_env))
-- 
2.17.1


