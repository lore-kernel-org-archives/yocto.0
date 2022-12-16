Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DADC4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:25 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.18016.1671208998878352373
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=duvhyg5v;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id v13-20020a17090a6b0d00b00219c3be9830so2895414pjj.4
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NqAVCUVUJB49GtwWSLG6FX5gCsF47MBXWCLk+AKGd8A=;
        b=duvhyg5vfJ8wqD/xoABCly9MtQj5zPahFL+h0Jbie/sghz72/BNMTqCy++uwkUa78+
         3dXtEW4Aa735wESuaLzVeSLJmeQwZZShAvsT3JSPLvdLMEUVbfcDtcgv9v7gfJ/YKWAA
         jxqO1gaEvRaFytwUxEXoXGeVao5vrD+s9Z5LsAPDsKSpDK4V4uKvILkA2xgdaIZlYJzy
         ofKQx0Ut/ME+62rsDoj7Gvof98PMnjCKbtXtg5K1SkX71PWsaCAW4kEOLy+7r+YwcSfC
         mTqMcwR37kK5qjFPnliwx0GygMnwD/pSBF2+IhWxtVbx9/RiI7YVRuyHXEVe39ViBSYZ
         iueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NqAVCUVUJB49GtwWSLG6FX5gCsF47MBXWCLk+AKGd8A=;
        b=KrD6VBIXAznF91+NprUiwQEpaXuSe3IJZYWeew9PjzbIh750MpLMFA6YvixvyvpvCX
         CVT2q9Mrq1zzhpJOGmFuURI779urthPUc5GziW6os1VsGr86Sjlme7qaDDEhIuGlHCTy
         q4S8o0m+vIKLshbNist19xzjd1Ey8vmXzKVWlrjyobzl82ti8SjU+6u89hpRbFMBwmDd
         BhWzlm+p3ZeicGrunpo6VXZSWad/9YgddcuADn0Jn+qhN6PiiO1CeL9IuPanTgtzzce/
         C90Z3SFYjPjovuG06Tsm2LvBhDKhIxOi6da0EdEYl2LT7SOUqK+p7NBHb5JeTJn7lxXe
         V2NQ==
X-Gm-Message-State: ANoB5pl/ZDX8XPFycGUMRjwpwmginjL6pN0mT1Vu+ehm1ihuUVKciqB4
	M3qcvQ+kAtfLZq80y6I/yS2nTtScCWw=
X-Google-Smtp-Source: AA0mqf7LcKInWZGe8JQiVBbyTj6XRAbzMsYXOJVBgJ4REugaq3MkRq8BQWqKxMPGyal1iitCKqzdPA==
X-Received: by 2002:a17:902:dac3:b0:189:62f7:e5fc with SMTP id q3-20020a170902dac300b0018962f7e5fcmr43785533plx.14.1671208997817;
        Fri, 16 Dec 2022 08:43:17 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:17 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 3/6] admin.py: Remove has_delete_permission()
Date: Fri, 16 Dec 2022 08:42:52 -0800
Message-Id: <fb0752904b5eafa161f9c26ce9726de2d18f52dd.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671208436.git.tim.orling@konsulko.com>
References: <cover.1671208436.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58826

From: Robert Yang <liezhi.yang@windriver.com>

The following commit has added on_delete=models.CASCADE to the ForeignKey:

===
commit 2d526f9b0d363f3e442abc97ef9bd9fab37ee5e4
Author: Amber Elliot <amber.n.elliot@intel.com>
Date:   Thu Jun 25 15:57:34 2020 -0700

    Updating models and imports for Django 2.2 upgrade.
===

The on_delete=models.CASCADE will remove the objects which reference the
removed objects, so there will be errors when removing a LayerBranch
with admin permissions:

===
Cannot delete layer branch
Deleting the selected layer branch would result in deleting related objects, but your account doesn't have permission to delete the following types of objects:

Append
distro
===

This is because has_delete_permission() always return False, remove it to use
Django's implementation to fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Minor rewording.
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/admin.py | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/layerindex/admin.py b/layerindex/admin.py
index 9ed6102..f8b2f6e 100644
--- a/layerindex/admin.py
+++ b/layerindex/admin.py
@@ -102,8 +102,6 @@ class RecipeAdmin(admin.ModelAdmin):
         return rofields
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class PackageConfigAdmin(admin.ModelAdmin):
     search_fields = ['feature', 'recipe__pn']
@@ -132,8 +130,6 @@ class ClassicRecipeAdmin(admin.ModelAdmin):
         return rofields
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class MachineAdmin(admin.ModelAdmin):
     search_fields = ['name']
@@ -141,8 +137,6 @@ class MachineAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in Machine._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class DistroAdmin(admin.ModelAdmin):
     search_fields = ['name']
@@ -150,9 +144,6 @@ class DistroAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in Distro._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
-
 
 class BBAppendAdmin(admin.ModelAdmin):
     search_fields = ['filename']
@@ -160,8 +151,6 @@ class BBAppendAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in BBAppend._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class BBClassAdmin(admin.ModelAdmin):
     search_fields = ['name']
@@ -169,8 +158,6 @@ class BBClassAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in BBClass._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class PatchAdmin(admin.ModelAdmin):
     search_fields = ['path']
@@ -178,8 +165,6 @@ class PatchAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in Patch._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class PatchDispositionAdmin(admin.ModelAdmin):
     fields = ['patch', 'user', 'disposition', 'comment']
@@ -199,8 +184,6 @@ class IncFileAdmin(admin.ModelAdmin):
     readonly_fields = [f.name for f in IncFile._meta.get_fields()]
     def has_add_permission(self, request, obj=None):
         return False
-    def has_delete_permission(self, request, obj=None):
-        return False
 
 class RecipeChangeInline(admin.StackedInline):
     model = RecipeChange
-- 
2.34.1


