Return-Path: <pranaymankad@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38B31E00CB9; Mon, 30 Sep 2019 20:21:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pranaymankad[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08A0FE00790
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 20:21:17 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id u40so19796680qth.11
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 20:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=AdVfiF27sgnH+XNsnWaOnfasy0emJFAEfmgNlYyEEN4=;
	b=S9oVeUT30MN/dHk7mBCqwAEZm4yc0iNJxz+RJiW7kg8hZYwn6E27+x0pL5PtTyAueZ
	ReLeu6ovXKtvbB0NC6sf7KrXb6320o9hHcTFmbwOj7emL7a6X39ELgCPrBp6MZ1VvcCk
	aSvCO4bPgSYJU3qni4FXZQmWW53oCngYqa5nG15ibunDn5wu0wykNL8s80t3jifW3oNn
	SlUous5mdjP3FJfX/ckwSB63VCHNNE8pLFAh0DKfh9rSHOSmFpf9wsQt7/OM9lGx/0JM
	bEZ7ECLj9vc/3EfaMFaeZi4B+hxhLp3fL9DJFy5hjCLUyr7XTXNgZKVQCSgqMMAK0t2j
	dlow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=AdVfiF27sgnH+XNsnWaOnfasy0emJFAEfmgNlYyEEN4=;
	b=KJSBTmuRyzU1KH40shPZFQ9SOy3zQOPQzO1G0AHjiisXWyyZx7aEWfLtP49TfLg4p9
	CVQoOWHw8VXXOU1vXXPJHRvTlB061DNZLsZeUpJ4kxZ6/PVmd304I52QqdznuTeUoc3q
	dLIm775K/IENbIFYhjx0dUdrK+vbBX4oxnJFcK6F3ZrtAuNvkE4Kz96fA3/cBIekQqwr
	XMSdlI9b29jroiD3DSScYv3eTfXw9ojGIBqLadnqTNOMo/dlJ08VpBP7N+Yys1x81jX+
	sgBtJXLIy2CivvwroKr59srYOnYEnCzW+pVHHCKVBw6jBtIBMbjcsUIU08GgKcruLwd2
	HbWg==
X-Gm-Message-State: APjAAAVdZtRmAOuuQqX3JUTedxhLExCCYxrw7q5lZANoHADJ8KbxOLep
	PbzW1D1F8UdFN76rlPQaDLl2VrZwijc=
X-Google-Smtp-Source: APXvYqxloSNGbXyR9upXqO1BllAbHwiE4bAXNmDRoqoOAg3M9GeszQiXpx+6mvfTgL4wKCLGiVk7rg==
X-Received: by 2002:a0c:abcd:: with SMTP id k13mr23569243qvb.69.1569900077067; 
	Mon, 30 Sep 2019 20:21:17 -0700 (PDT)
Received: from pranay.local.net (c-66-30-118-236.hsd1.ma.comcast.net.
	[66.30.118.236])
	by smtp.gmail.com with ESMTPSA id 64sm6584610qkk.63.2019.09.30.20.21.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Sep 2019 20:21:16 -0700 (PDT)
From: Pranay Mankad <pranaymankad@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Sep 2019 23:21:14 -0400
Message-Id: <20191001032114.67790-1-pranaymankad@gmail.com>
X-Mailer: git-send-email 2.15.1
X-Mailman-Approved-At: Fri, 04 Oct 2019 08:37:50 -0700
Cc: Pranay Mankad <pranaymankad@gmail.com>, mankad@synopsys.com,
	paul.eggleton@intel.com
Subject: [layerindex-web][PATCH] Track PE and PR for recipes
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
X-List-Received-Date: Tue, 01 Oct 2019 03:21:19 -0000

This change is to report PE (epoch) and PR (release) values for recipes from the bitbake cooker. These values will be reflected in the Rest API and will not be exposed on the UI. The aim of this change is to enrich metadata availability to consumers of the feed.
`
Signed-off-by: Pranay Mankad <pranaymankad@gmail.com>
---
 .../migrations/0042_recipe_property_addition.py      | 20 ++++++++++++++++++++
 layerindex/models.py                                 |  2 ++
 layerindex/update_layer.py                           |  2 ++
 3 files changed, 24 insertions(+)
 create mode 100644 layerindex/migrations/0042_recipe_property_addition.py

diff --git a/layerindex/migrations/0042_recipe_property_addition.py b/layerindex/migrations/0042_recipe_property_addition.py
new file mode 100644
index 0000000..5583696
--- /dev/null
+++ b/layerindex/migrations/0042_recipe_property_addition.py
@@ -0,0 +1,20 @@
+# -*- coding: utf-8 -*-
+# Generated by Django 1.11.24 on 2019-09-24 21:34
+from __future__ import unicode_literals
+from django.db import migrations, models
+class Migration(migrations.Migration):
+    dependencies = [
+        ('layerindex', '0041_recipe_configopts'),
+    ]
+    operations = [
+        migrations.AddField(
+            model_name='recipe',
+            name='pe',
+            field=models.CharField(blank=True, max_length=100),
+        ),
+        migrations.AddField(
+            model_name='recipe',
+            name='pr',
+            field=models.CharField(blank=True, max_length=100),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index 0ca7c06..332ba39 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -461,6 +461,8 @@ class Recipe(models.Model):
     filepath = models.CharField(max_length=255, blank=True)
     pn = models.CharField(max_length=100, blank=True)
     pv = models.CharField(max_length=100, blank=True)
+    pr = models.CharField(max_length=100, blank=True)
+    pe = models.CharField(max_length=100, blank=True)
     summary = models.CharField(max_length=200, blank=True)
     description = models.TextField(blank=True)
     section = models.CharField(max_length=100, blank=True)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 9dc395f..7131d70 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -108,6 +108,8 @@ def update_recipe_file(tinfoil, data, path, recipe, layerdir_start, repodir, sto
         envdata.setVar('SRCPV', 'X')
         recipe.pn = envdata.getVar("PN", True)
         recipe.pv = envdata.getVar("PV", True)
+        recipe.pr = envdata.getVar("PR", True) or ""
+        recipe.pe = envdata.getVar("PE", True) or ""
         recipe.summary = envdata.getVar("SUMMARY", True)
         recipe.description = envdata.getVar("DESCRIPTION", True)
         recipe.section = envdata.getVar("SECTION", True)
-- 
2.15.1


