Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6167E00D8D; Tue, 30 Jul 2019 11:36:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
	[209.85.222.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49AF9E00D77
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 11:36:36 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id g11so3323085uak.0
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 11:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=jJXqI9DPMLOlkvd9aOjb3nRIdHrXPVTUDm1E+CzHxFw=;
	b=FpewNj5G9qWbDlG0UExUd+rwexqReh2dwME7eVfokVU/LKX9yl9rmbKD2JaDQvoV1/
	3Gn0w/4tLWZsM+rHKZyQFeYSpMH8IkTC2AuIwfqC0mlrPUjI1I/FCP6ZK+F1GwCS7Ulr
	733Q69E6OkVdxJ6AGKO+o71060hhdITfQNODFoK0CajlnYYbtf40+698WvrpLJnCmgaT
	wHzBRiMBqv0cjHCcJ9ojYU+MTu5TdIY+n1R8n6naTDfF+KKqGD0KxS9fpbY/W3byDDgA
	OeSKI799qkT5XbrE3SwBe9GoW84lRxVjESrziy/b+rUnrL/9mX9NCYIdgNiEg3rGkzpD
	hBqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=jJXqI9DPMLOlkvd9aOjb3nRIdHrXPVTUDm1E+CzHxFw=;
	b=cQYHaCVswwG97v6lE2N6qRwxfhLS34uKknyqoZ6LrPlcSLpn3oZjRbHFJuOU700gpa
	HyS8KXZgCV8VSSXQmnreAR4pf37vuxiIUdHqW3QzjIR2CvfSvRsyY17MdwX+eXAkIH+9
	hpHjvDaRrGv7kAsQ7CfNZs0f0LuhLskFVoNTvUqIPiE/M7hnhZ1u7B2myUfMw/Qx19QZ
	orl/gtwJkGIUWH1cuESkhQAS3rFg2LU9e+C8uJ2zK0jJK/57SFIm80dFibiiUDyNI03L
	kr3Xi+skBERCVeywyB2rx0of+Frfv8uvqazYjqaTLEVZys0dBqethYN1OrJ749fNX0Xf
	SEww==
X-Gm-Message-State: APjAAAWgByNeyaCJR7Pln8juxTEMy5NP5MoTbHKWN1PDAUTkiKKjmVDB
	MCn1jAgPlYqfFm016L5anm3tQ/3eQ7c=
X-Google-Smtp-Source: APXvYqyULyh/ZYosRif42xq6IFOOB9kAf/vX3spOjCGBU5NqOnpHzOAlSfiDi1gp+x9Pk4Khvt4weQ==
X-Received: by 2002:ab0:6911:: with SMTP id b17mr22624401uas.18.1564511795281; 
	Tue, 30 Jul 2019 11:36:35 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	y71sm15036900vsc.19.2019.07.30.11.36.34
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 30 Jul 2019 11:36:34 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Jul 2019 14:36:20 -0400
Message-Id: <20190730183621.26193-2-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730183621.26193-1-btgoodwin@geontech.com>
References: <20190730183621.26193-1-btgoodwin@geontech.com>
X-Mailman-Approved-At: Tue, 30 Jul 2019 11:45:43 -0700
Subject: [yocto-autobuilder2][PATCH 2/3] Added remote distribution of config JSON files
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

This feature/fix allows the worker to download the
autobuilder helper JSON files from the controller
rather than having to store them in the
yocto-autobuilder-helper repository.  The process
installs the file into the worker's
builddir/yocto-autobuilder-helper path.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 builders.py | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/builders.py b/builders.py
index 3d12969..35903de 100644
--- a/builders.py
+++ b/builders.py
@@ -18,6 +18,26 @@ extra_env = {}
 if os.environ.get('ABHELPER_JSON'):
     extra_env['ABHELPER_JSON'] = os.environ['ABHELPER_JSON']
 
+def add_abhelper_steps(factory):
+    """
+    Adds FileDownload steps to the factory for each specified autobuilder
+    helper JSON file and installs the file in the worker's
+    builddir/yocto-autobuilder-helper/ path.
+    """
+    abhelper_dir = os.path.expanduser("~/yocto-autobuilder-helper")
+    abhelper_configs = extra_env.get("ABHELPER_JSON", "config.json").split(" ")
+    for helper in abhelper_configs:
+        helper_name = os.path.basename(helper)
+        worker_helper = util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/" + helper_name)
+        master_helper = helper
+        if not helper.startswith("/"):
+            master_helper = os.path.join(abhelper_dir, helper)
+        factory.addStep(steps.FileDownload(
+            name="Download '{}'".format(helper_name),
+            mastersrc=master_helper,
+            workerdest=worker_helper,
+            haltOnFailure=True ))
+
 @util.renderer
 def get_sstate_release_number(props):
     """
@@ -145,6 +165,7 @@ def create_builder_factory():
         mode='incremental',
         haltOnFailure=True,
         name='Fetch yocto-autobuilder-helper'))
+    add_abhelper_steps(f)
     f.addStep(steps.SetProperties(properties=ensure_props_set))
     f.addStep(WriteLayerInfo(name='Write main layerinfo.json', haltOnFailure=True))
     f.addStep(steps.ShellCommand(
@@ -213,6 +234,7 @@ def create_parent_builder_factory(buildername, waitname):
         mode='incremental',
         haltOnFailure=True,
         name='Fetch yocto-autobuilder-helper'))
+    add_abhelper_steps(factory)
     factory.addStep(WriteLayerInfo(name='Write main layerinfo.json', haltOnFailure=True))
     factory.addStep(steps.ShellCommand(
         command=[
-- 
2.17.1


