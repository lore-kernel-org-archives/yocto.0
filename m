Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87B60C47DDB
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:16:25 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.4228.1705983382948368442
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:16:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mCJCCCqT;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1d730b6943bso7207665ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983382; x=1706588182; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qb/WcP8KOQKFhFEnpi/TNbrotTo8U/kP/8tn/jTKwNY=;
        b=mCJCCCqTzw9eZ0Wo09wZ2FC0IcfYy5mri/hPBdyMBvW2WomIaMkPeywXG/clSXzWP/
         xOOI03QuUEd5WPVwyVnAS4LtambCRbH2za5VPPB1/FPDq+uCJLmu8dnLqqTgXEKVixzx
         GWUDTbk6468iEqO85tuKSdiGtk63L0cw9LilPQgzW8v4LthMWC0J0rHKEJKAY1mdU33j
         63tw2FNNu+1mIGrerUnH0zw21ALnyDYcvB/z8PWv1xWGowLR3vVZzAPCO3uDWuhZA2i9
         DB3OcBCQw++q82N6GZfMZbWkxalVqWAqoIBiWZ34hTxkxal5RB14EEAo+KOhfTM1JV+i
         wuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983382; x=1706588182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qb/WcP8KOQKFhFEnpi/TNbrotTo8U/kP/8tn/jTKwNY=;
        b=ZEiD1DAGQ1gnuyB8pQ5le3GETjMRRRwEnNvvR5KQLy3//rQxLmrnMPiCg2hbOD//Mo
         ZFyrMnFr+AlKIewBtsvkGoWI6lZSKIxO5rBdDYyMZOmbq0wVJ8MDF63mLxT7jWucwyfY
         vHddbfe0nguqZAg1ClosE8Q1x0h2RQWP8fdjJZdUcpyBKxnSbOX4EpnuYQ56sht5Ugl+
         yJHQ0BDN0iZJzKpneE+hW0Mp5XZDp2ps1fdglkSaLAxDyEDBGveyednBsgzmacKz53pZ
         7/jnvagel9H5WsdvOSXZLqX2qM4YmLamAlZy9nWfA2K25ApwjCnW8ghxE8RNEs+2dKO0
         YLqw==
X-Gm-Message-State: AOJu0Yw+os/4bwLIYAu+Ef4IV5j5GkUyAk1ZXWjao3n27PQL4L+yI3Zu
	bpQb0UN4nZB0xXcFEOQc8RNGrD/BmQpw1sFYfPFq36mvXnA9HmnuT7XFa1eq
X-Google-Smtp-Source: AGHT+IEdx5C3cUo1LYB8hnpo0vWq0Pnh0wsbBcpIf4+hAFCzCVrvw17kfXCcPUWsXLad0ied/dbp7A==
X-Received: by 2002:a17:902:e548:b0:1d7:51e8:7cdc with SMTP id n8-20020a170902e54800b001d751e87cdcmr2040106plf.124.1705983381909;
        Mon, 22 Jan 2024 20:16:21 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id iz11-20020a170902ef8b00b001d73126cac1sm4380274plb.173.2024.01.22.20.16.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:16:21 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 1/5] layerindex/models: add BBClassRecipe BBClassGlobal
Date: Mon, 22 Jan 2024 20:15:19 -0800
Message-Id: <c2a8e070204493d04d0bd7d4c8e53718a1b47379.1705982792.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705982792.git.tim.orling@konsulko.com>
References: <cover.1705982792.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62233

Add support for classes-global and classes-recipe, but use
"proxy=True" to not create new tables for the new classes.
Rather, we use the bbclass_type field.

[YOCTO #15238]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 ...obal_bbclassrecipe_bbclass_bbclass_type.py | 41 ++++++++++++++++++
 layerindex/models.py                          | 43 ++++++++++++++++++-
 2 files changed, 83 insertions(+), 1 deletion(-)
 create mode 100644 layerindex/migrations/0048_bbclassglobal_bbclassrecipe_bbclass_bbclass_type.py

diff --git a/layerindex/migrations/0048_bbclassglobal_bbclassrecipe_bbclass_bbclass_type.py b/layerindex/migrations/0048_bbclassglobal_bbclassrecipe_bbclass_bbclass_type.py
new file mode 100644
index 0000000..dba7927
--- /dev/null
+++ b/layerindex/migrations/0048_bbclassglobal_bbclassrecipe_bbclass_bbclass_type.py
@@ -0,0 +1,41 @@
+# Generated by Django 4.2.9 on 2024-01-20 21:20
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+    dependencies = [
+        ("layerindex", "0047_layerbranch_updates_enabled"),
+    ]
+
+    operations = [
+        migrations.CreateModel(
+            name="BBClassGlobal",
+            fields=[],
+            options={
+                "proxy": True,
+                "indexes": [],
+                "constraints": [],
+            },
+            bases=("layerindex.bbclass",),
+        ),
+        migrations.CreateModel(
+            name="BBClassRecipe",
+            fields=[],
+            options={
+                "proxy": True,
+                "indexes": [],
+                "constraints": [],
+            },
+            bases=("layerindex.bbclass",),
+        ),
+        migrations.AddField(
+            model_name="bbclass",
+            name="bbclass_type",
+            field=models.CharField(
+                choices=[("", "Class"), ("Global", "Global"), ("Recipe", "Recipe")],
+                default="",
+                max_length=25,
+            ),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index 676f05f..c52927f 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -784,18 +784,59 @@ class BBAppend(models.Model):
 class BBClass(models.Model):
     layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
     name = models.CharField(max_length=100)
+    # Type field
+    TYPE_CHOICES = [
+        ('', 'Class'),
+        ('Global', 'Global'),
+        ('Recipe', 'Recipe')
+        ]
+    bbclass_type = models.CharField(max_length=25, choices=TYPE_CHOICES, default='')
 
     class Meta:
         verbose_name = "Class"
         verbose_name_plural = "Classes"
 
     def vcs_web_url(self):
-        url = self.layerbranch.file_url(os.path.join('classes', "%s.bbclass" % self.name))
+        # We cannot override vcs_web_url in the sub-classes without defining self.url
+        # but we want url to be dynamic
+        if self.bbclass_type == 'Global':
+            url = self.layerbranch.file_url(os.path.join('classes-global', "%s.bbclass" % self.name))
+        elif self.bbclass_type == 'Recipe':
+            url = self.layerbranch.file_url(os.path.join('classes-recipe', "%s.bbclass" % self.name))
+        else:
+            url = self.layerbranch.file_url(os.path.join('classes', "%s.bbclass" % self.name))
         return url or ''
 
     def __str__(self):
         return '%s (%s)' % (self.name, self.layerbranch.layer.name)
 
+class BBClassGlobalManager(models.Manager):
+    def get_queryset(self):
+        return super().get_queryset().filter(bbclass_type='Global')
+
+class BBClassGlobal(BBClass):
+    objects = BBClassGlobalManager()
+
+    class Meta:
+        proxy = True
+
+    def save(self, *args, **kwargs):
+        self.bbclass_type = 'Global'
+        return super(BBClassGlobal, self).save(*args, **kwargs)
+
+class BBClassRecipeManager(models.Manager):
+    def get_queryset(self):
+        return super().get_queryset().filter(bbclass_type='Recipe')
+
+class BBClassRecipe(BBClass):
+    objects = BBClassRecipeManager()
+
+    class Meta:
+        proxy = True
+
+    def save(self, *args, **kwargs):
+        self.bbclass_type = 'Recipe'
+        return super(BBClassRecipe, self).save(*args, **kwargs)
 
 class IncFile(models.Model):
     layerbranch = models.ForeignKey(LayerBranch, on_delete=models.CASCADE)
-- 
2.34.1


