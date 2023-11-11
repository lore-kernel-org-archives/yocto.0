Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA380C4332F
	for <webhook@archiver.kernel.org>; Sat, 11 Nov 2023 00:54:09 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web10.44208.1699664044645093773
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 16:54:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b7+ZiyRv;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-357cf6725acso9788455ab.3
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 16:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699664043; x=1700268843; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jKqQ8cu1EEZQrKwlyARINukQn9m00VF7aIWln4tA0tc=;
        b=b7+ZiyRv4NTmRpa4xeJHwQEkVlt2XosLaedE5LForWd18FvovYu6oRMQQy4Ab5XQVP
         m14m/yOm+xyEmj9Jpwpqw4tbxmPnjS+gct8Cgj+e658ykekDtrKaWX+eavI1DXUl6e2d
         aLdSLJTu5zNHfOtTBuvAseahT3sAv7N4YsU8ZSgdEJzdaoxssxhrnT0mzDE9DYmPEBNN
         DuPJ3UmxsOSKjkH9s+PUdQ1YbNbigS7saXmzhqBMPAL5OUVpGy53eGZ5lqJ0h7FsUWaZ
         wz+1r42H4qHBee5SZaTEyFIS+VAeMV6S5nr2RiPDvJjRWfnvsQAbD+NXzRG1XfdMQcSU
         9QKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699664043; x=1700268843;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jKqQ8cu1EEZQrKwlyARINukQn9m00VF7aIWln4tA0tc=;
        b=bVoEW9rEhWwNU28kBs70erDDvIFpifMX6kTuFv2mGeEF9sEO8hKAxu9G88P6sK5CRx
         Rhedz4kysVSKmEVO3myqpMUIJVM0BdiXy496ufwUlDym1HFtUCfcn6lSPrvNIWarlL7n
         HeIYKBUhTYTDho4gapR3xmlZmuHZyOGkt5X9a8KcfXYBvVGwL6WCDDO8obEg+QFZitks
         BZXimfUwE26jr/uj9IyBhkanDf0GAwRtJXFOjFP08gr/2l3RBa9gFpTfTp5r+BkgDTlp
         Y1nNtUdiM/yZDd/nekCmhJf24l1NG0g73TKQIiT5rDsx/zyEItDu0XX+E21fvIqXx9Fv
         TUlg==
X-Gm-Message-State: AOJu0YyTIa6t2He7TbcXMyoy9iIefHPV8MqnnUq2W1LR8100ROnwjwlu
	VvVmGYjzRlkc2cnu3KJv0v4kCaQVSQKiTg==
X-Google-Smtp-Source: AGHT+IFTLk48pze+5wS8yWsSxDID4HKNUrfOby6T/FZpjvcWkd59RqanuYxJj2PMfDtNeE3jfmWaGA==
X-Received: by 2002:a05:6e02:1949:b0:359:6116:4d9a with SMTP id x9-20020a056e02194900b0035961164d9amr1477201ilu.7.1699664043497;
        Fri, 10 Nov 2023 16:54:03 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:3313:4488:79b1:32e])
        by smtp.gmail.com with ESMTPSA id n3-20020a170903110300b001bf8779e051sm241907plh.289.2023.11.10.16.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 16:54:02 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] utils.py: get dependent layers at same branch
Date: Fri, 10 Nov 2023 16:52:50 -0800
Message-Id: <20231111005249.343862-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Nov 2023 00:54:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61657

For both meta-poky/meta-yocto and meta-xilinx/meta-xilinx-core
we have a situation where the "collections" stayed the same
("yocto" and "xilinx" respectively) but the layer/layerbranch
changed. Without the "branch" argument to get_dependency_layers,
we were always defaulting to the older layer which first
defined the "collection".

Instead, add an option to use "branch" to filter on the expected
LayerBranch object. Keep the old behavior just in case someone
depends upon it.

[YOCTO #15221]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/utils.py | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 9d94015..0ea8e48 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -75,13 +75,20 @@ def is_deps_satisfied(req_col, req_ver, collections):
     # Return False when not found
     return False
 
-def get_dependency_layer(depname, version_str=None, logger=None):
+def get_dependency_layer(depname, branch=None, version_str=None, logger=None):
     from layerindex.models import LayerItem, LayerBranch
 
-    # Get any LayerBranch with a layer that has a name that matches depmod, or
-    # a LayerBranch that has the collection name depmod.
-    res = list(LayerBranch.objects.filter(layer__name=depname)) + \
-          list(LayerBranch.objects.filter(collection=depname))
+    if branch:
+        # Get LayerBranch with a layer that has a name that matches depname, or
+        # a LayerBranch that has the collection name depname
+        # AND also match branch [YOCTO #15221]
+        res = list(LayerBranch.objects.filter(layer__name=depname,branch__name=branch)) + \
+              list(LayerBranch.objects.filter(collection=depname,branch__name=branch))
+    else:
+        # Get any LayerBranch with a layer that has a name that matches depname, or
+        # a LayerBranch that has the collection name depname.
+        res = list(LayerBranch.objects.filter(layer__name=depname)) + \
+              list(LayerBranch.objects.filter(collection=depname))
 
     # Nothing found, return.
     if not res:
@@ -119,6 +126,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
     from layerindex.models import LayerBranch, LayerDependency
 
     layer_name = layerbranch.layer.name
+    branch_name = layerbranch.branch.name
     var_name = layer_name
 
     if layerbranch.collection:
@@ -143,10 +151,10 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
             ver_str = ver_list[0]
 
         try:
-            dep_layer = get_dependency_layer(dep, ver_str, logger)
+            dep_layer = get_dependency_layer(dep, branch_name, ver_str, logger)
         except bb.utils.VersionStringException as vse:
             if logger:
-                logger.error('Error getting %s %s for %s\n%s' %(name, dep. layer_name, str(vse)))
+                logger.error('Error getting %s %s for %s:%s\n%s' %(name, dep. layer_name, branch_name, str(vse)))
             continue
 
         # No layer found.
-- 
2.34.1


