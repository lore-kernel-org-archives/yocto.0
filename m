Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D725E9410F
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:38 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.4021.1696622373169265980
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZmgOQQN3;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-278fde50024so2875646a91.1
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622372; x=1697227172; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LpjPR8HsYV74zCB9XFevMhgm6mF+eiH2vIum7Qzp2t8=;
        b=ZmgOQQN3gsPbaluEztxaTCFU3Oaos4WNMA/cod8PxOJ3wmZgPg37N1OsiWKVWSXaRP
         lp+Ss0dcfshRMO7sjL9Ljz8VIXWPMncZ8y579ugxpmP6wBslnRL3u6TxyznhQPRGPZHI
         uCJ79P690BGDjGjezGm9LHfxicng7ZSqMVc8CwPtLYI31BKpRqrMw6NFuIECJ20oWQ5E
         NeNxMG/vT64Tvqp2bJJFDGgHs+AySEg5E56GNHcY1mTLa+TtEZI5uyGvnUnMJm4esZdh
         zd0FVV6W1DaAdlyRpSTuRv8wwnETK7RGhAmWR2qvFCb1GR8ZCSdmIWolhLgS/fRkgEof
         +cQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622372; x=1697227172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LpjPR8HsYV74zCB9XFevMhgm6mF+eiH2vIum7Qzp2t8=;
        b=DLvnTgQ0WuGjM7TH7tdSYlJ3noQJR9vy4SnImV5364lBpfeR8D6zELXzMJ8h1Q5weD
         dMsGEJHdzVwfX/YMVRo7zLNMZAGOc+SxjyI1Cxd6roqvKNzAcqpYF16tZTvUF1TINqJc
         IC3nwqC9WJqVCUgPKxQgn5/Ru2Pe2Qhf3LKDe4J0FSWV2KhcoIeDRkc7ZqBRoJfbYGTi
         xglre3Bvwxom2unfzxTgVZWH7MUFkGzs7mIT4KRI84nmaLDrh/7xuWAKxN7clDlmLZFT
         I/T56wquRHYaZlJRAk4lmxl10fNsCIaKcn4JvCiFjhxW79rFgo1UK9qXaPStJqAD24qG
         /H2w==
X-Gm-Message-State: AOJu0YxO0ph23OGyZDmpuZozsoU5c/5kAiLCMkGkFs0Km6lx3EB74fBJ
	75kGY/zMumCJgXJO7OfoBEgZ4qBPyLo=
X-Google-Smtp-Source: AGHT+IFZOUe/w7Ji07soSDtMoCrfXfOjeLibvSSBVlQqB3yJtDE3RoXgKDbMsDo7cgTLvKeYq9TPAw==
X-Received: by 2002:a17:90a:b785:b0:274:7db1:f50f with SMTP id m5-20020a17090ab78500b002747db1f50fmr10119272pjr.15.1696622372260;
        Fri, 06 Oct 2023 12:59:32 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:31 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 04/10] bootstrap_pagination: disable via comment
Date: Fri,  6 Oct 2023 12:59:07 -0700
Message-Id: <bd58fbe7df84fc79dde79785f893ec9656da5a7c.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61268

Wrap the is_pagination usage of bootstrap_pagination with comment/endcomment
to avoid incompatible module.

We will need to re-write the pagination code.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 templates/layerindex/bulkchangesearch.html | 2 ++
 templates/layerindex/classes.html          | 2 ++
 templates/layerindex/classicrecipes.html   | 2 ++
 templates/layerindex/distros.html          | 2 ++
 templates/layerindex/history.html          | 2 ++
 templates/layerindex/layers.html           | 2 ++
 templates/layerindex/machines.html         | 2 ++
 templates/layerindex/recipes.html          | 2 ++
 templates/layerindex/reviewlist.html       | 2 ++
 templates/layerindex/updatelist.html       | 2 ++
 10 files changed, 20 insertions(+)

diff --git a/templates/layerindex/bulkchangesearch.html b/templates/layerindex/bulkchangesearch.html
index 7f6b8c9..e8d6bd8 100644
--- a/templates/layerindex/bulkchangesearch.html
+++ b/templates/layerindex/bulkchangesearch.html
@@ -90,10 +90,12 @@
                     <input type="submit" class="btn btn-default" name="add_all" value="Add all"></input>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     {% if searched %}
diff --git a/templates/layerindex/classes.html b/templates/layerindex/classes.html
index bd3b67d..bc3d0ac 100644
--- a/templates/layerindex/classes.html
+++ b/templates/layerindex/classes.html
@@ -62,10 +62,12 @@
                 </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     {% if search_keyword %}
diff --git a/templates/layerindex/classicrecipes.html b/templates/layerindex/classicrecipes.html
index deedbbb..cf911a5 100644
--- a/templates/layerindex/classicrecipes.html
+++ b/templates/layerindex/classicrecipes.html
@@ -287,10 +287,12 @@
                 </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     {% if searched %}
diff --git a/templates/layerindex/distros.html b/templates/layerindex/distros.html
index 549257b..0c1b276 100644
--- a/templates/layerindex/distros.html
+++ b/templates/layerindex/distros.html
@@ -65,10 +65,12 @@
                 </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     {% if search_keyword %}
diff --git a/templates/layerindex/history.html b/templates/layerindex/history.html
index 3c80d92..9ae4431 100644
--- a/templates/layerindex/history.html
+++ b/templates/layerindex/history.html
@@ -60,10 +60,12 @@
 </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 
 
diff --git a/templates/layerindex/layers.html b/templates/layerindex/layers.html
index 3e6a4b3..ae9befb 100644
--- a/templates/layerindex/layers.html
+++ b/templates/layerindex/layers.html
@@ -105,10 +105,12 @@
             </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     <p>No matching layers in database.</p>
diff --git a/templates/layerindex/machines.html b/templates/layerindex/machines.html
index ebbc158..685506d 100644
--- a/templates/layerindex/machines.html
+++ b/templates/layerindex/machines.html
@@ -64,10 +64,12 @@
                 </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     {% if search_keyword %}
diff --git a/templates/layerindex/recipes.html b/templates/layerindex/recipes.html
index a1878fa..9c15e6c 100644
--- a/templates/layerindex/recipes.html
+++ b/templates/layerindex/recipes.html
@@ -90,10 +90,12 @@
                 </table>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     {% if search_keyword %}
diff --git a/templates/layerindex/reviewlist.html b/templates/layerindex/reviewlist.html
index f72787a..18e0d78 100644
--- a/templates/layerindex/reviewlist.html
+++ b/templates/layerindex/reviewlist.html
@@ -69,10 +69,12 @@
     </div>
 
     {% if is_paginated %}
+    {% comment %}
         {% load bootstrap_pagination %}
         <div class="text-center">
         {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
         </div>
+    {% endcomment %}
     {% endif %}
 {% else %}
     <p>No unpublished layers to review.</p>
diff --git a/templates/layerindex/updatelist.html b/templates/layerindex/updatelist.html
index f4f786a..b68a860 100644
--- a/templates/layerindex/updatelist.html
+++ b/templates/layerindex/updatelist.html
@@ -54,10 +54,12 @@
 </div>
 
 {% if is_paginated %}
+{% comment %}
     {% load bootstrap_pagination %}
     <div class="text-center">
     {% bootstrap_paginate page_obj range=10 show_prev_next="false" show_first_last="true" %}
     </div>
+{% endcomment %}
 {% endif %}
 
 {% endautoescape %}
-- 
2.34.1


