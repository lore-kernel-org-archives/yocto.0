Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F8C4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:35 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.18023.1671209011421782727
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YBoGGXgI;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso6685937pjt.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ipoGwnZ7/vMq14zJd0yHCyL/ENR/y99AJiCJdgCQliA=;
        b=YBoGGXgIQTVGXddmonmgLmeI0P9Wil02K4slGy66O1+6ISou3zBdkeknUy3DnPooA6
         j/KoWTpCU9RywY4vnKRCZ+JYPNkwVxWTvMi0Z1TUPL7txpqOzUTLZM+HSf0zTM4pAFm2
         GEyTf2onyFVeKHWANF6hRQfC2uDTK4ZcZBSnL7d9BHGJ01P2Js1Q0rR/wobCapl2ZByc
         5r5fjkamVwT1ODw/GaP1ZY7Kx6I7/zCIHOwxny8gJpRaQhdzDFQomLr90/VagpHOjuow
         tYmRtFzR9ZSBx3td8FTnqMnAcCTIT5rf4gWClGDJCopDhpLXJ3905oxIzYyl2/5VApAP
         Bs+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ipoGwnZ7/vMq14zJd0yHCyL/ENR/y99AJiCJdgCQliA=;
        b=691hXgN5Yuoe7bhmpLDtclscU6JWdNERlL6OX5np9vWsk/aoUHiSOekGCqPn2O2j1O
         ZFAtydst4ja9LW9MGemVpovBVKfbSRKc63YSVMjphc6UMPoKdVCWjrs/bVMre7OX6ij8
         ruQ/OF6bU+nKcZCL6foospyJrM92/7uN4tKU9eFjasRKJj4TTlY5+yX/noLGlFxYbTtn
         x2hX3JN4GzZ91e5pD27XHAWOW2sQugcNgDs8hb/ZZiXGnWxhJMEPFPIXY5MqyNNfihAx
         WYMWUEtiUXeEzG5uAckpAyowLBjvMkpKijO592MT31sWENMyfHDY4Gw3+HNoKyNKtNhX
         ulyg==
X-Gm-Message-State: ANoB5pmYljwTUIFHuA7oEl3HxA78uJlr1pe2ePAFW9Jy4GBAnp2voCNY
	pQYdTC21sIIKIzb4qL1+ykTNqfOA2UI=
X-Google-Smtp-Source: AA0mqf7zEOhkgzLd4ITNvY2zBdzpGJgQ/5vxRR/yQDetJbqfG7RsLR0eI1pbrX56bhmaYIdnDZTMow==
X-Received: by 2002:a17:902:ab54:b0:189:6bda:e98f with SMTP id ij20-20020a170902ab5400b001896bdae98fmr32651796plb.58.1671209010410;
        Fri, 16 Dec 2022 08:43:30 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:30 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 6/6] global: replace deprecated distutils
Date: Fri, 16 Dec 2022 08:42:55 -0800
Message-Id: <125fe439624b307582389aad8c8a6b920bb6b2c8.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671208436.git.tim.orling@konsulko.com>
References: <cover.1671208436.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58829

Replace distutils.version.LooseVersion with pkg_resource.parse_version

https://majornetwork.net/2021/05/comparing-version-numbers-in-python/

[YOCTO #14990]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/recipedesc.py               | 1 -
 layerindex/tools/import_classic.py     | 1 -
 layerindex/tools/import_otherdistro.py | 1 -
 layerindex/update.py                   | 4 ++--
 layerindex/update_layer.py             | 6 +++---
 layerindex/views.py                    | 6 ++----
 rrs/tools/upgrade_history_internal.py  | 4 ++--
 7 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
index a844186..33aef31 100644
--- a/layerindex/recipedesc.py
+++ b/layerindex/recipedesc.py
@@ -13,7 +13,6 @@ import logging
 import subprocess
 from datetime import datetime
 import fnmatch
-from distutils.version import LooseVersion
 
 
 logger = None
diff --git a/layerindex/tools/import_classic.py b/layerindex/tools/import_classic.py
index 0216221..44f8f88 100755
--- a/layerindex/tools/import_classic.py
+++ b/layerindex/tools/import_classic.py
@@ -22,7 +22,6 @@ import fnmatch
 import re
 import tempfile
 import shutil
-from distutils.version import LooseVersion
 import utils
 import recipeparse
 
diff --git a/layerindex/tools/import_otherdistro.py b/layerindex/tools/import_otherdistro.py
index 0c6640f..5c00115 100755
--- a/layerindex/tools/import_otherdistro.py
+++ b/layerindex/tools/import_otherdistro.py
@@ -23,7 +23,6 @@ import subprocess
 import string
 import shlex
 import codecs
-from distutils.version import LooseVersion
 
 sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), '..')))
 sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), 'lib')))
diff --git a/layerindex/update.py b/layerindex/update.py
index 5a2642b..7de9c0d 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -17,7 +17,7 @@ import codecs
 import logging
 import subprocess
 from datetime import datetime, timedelta
-from distutils.version import LooseVersion
+from pkg_resources import parse_version
 import utils
 import operator
 import re
@@ -130,7 +130,7 @@ def extract_value(valuename, output):
         return ''
 
 def main():
-    if LooseVersion(git.__version__) < '0.3.1':
+    if parse_version(git.__version__) < parse_version('0.3.1'):
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
         sys.exit(1)
 
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index e8b210e..e0ecc94 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -19,7 +19,7 @@ import re
 import tempfile
 import shutil
 import errno
-from distutils.version import LooseVersion
+from pkg_resources import parse_version
 import itertools
 import utils
 import recipeparse
@@ -239,7 +239,7 @@ def update_distro_conf_file(path, distro, d):
         distro.description = desc
 
 def main():
-    if LooseVersion(git.__version__) < '0.3.1':
+    if parse_version(git.__version__) < parse_version('0.3.1'):
         logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
         sys.exit(1)
 
@@ -808,7 +808,7 @@ def main():
         logger.error(traceback.format_exc().rstrip())
         sys.exit(1)
     finally:
-        if tinfoil and (LooseVersion(bb.__version__) > LooseVersion("1.27")):
+        if tinfoil and (parse_version(bb.__version__) > parse_version("1.27")):
             tinfoil.shutdown()
 
     if tempdir:
diff --git a/layerindex/views.py b/layerindex/views.py
index 6f22c0c..e660578 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -41,7 +41,6 @@ from django.views.generic.base import RedirectView
 from django.views.generic.edit import (CreateView, DeleteView, FormView,
                                        UpdateView)
 from django_registration.backends.activation.views import RegistrationView
-from pkg_resources import parse_version
 from reversion.models import Revision
 
 import settings
@@ -1736,7 +1735,6 @@ class BranchCompareView(FormView):
     form_class = BranchComparisonForm
 
     def get_recipes(self, from_branch, to_branch, layer_ids):
-        from distutils.version import LooseVersion
         class BranchComparisonResult:
             def __init__(self, pn, short_desc):
                 self.pn = pn
@@ -1791,9 +1789,9 @@ class BranchCompareView(FormView):
         changed = []
         removed = []
         for _, recipe in sorted(recipes.items(), key=lambda item: item[0]):
-            recipe.from_versions = sorted(recipe.from_versions, key=lambda item: LooseVersion(item.pv))
+            recipe.from_versions = sorted(recipe.from_versions, key=lambda item: parse_version(item.pv))
             from_version_exprs = [x.version_expr() for x in recipe.from_versions]
-            recipe.to_versions = sorted(recipe.to_versions, key=lambda item: LooseVersion(item.pv))
+            recipe.to_versions = sorted(recipe.to_versions, key=lambda item: parser_version(item.pv))
             to_version_exprs = [x.version_expr() for x in recipe.to_versions]
             if not from_version_exprs:
                 added.append(recipe)
diff --git a/rrs/tools/upgrade_history_internal.py b/rrs/tools/upgrade_history_internal.py
index e3a96d9..2ba96b1 100644
--- a/rrs/tools/upgrade_history_internal.py
+++ b/rrs/tools/upgrade_history_internal.py
@@ -16,7 +16,7 @@ import os
 import optparse
 import logging
 import re
-from distutils.version import LooseVersion
+from pkg_resources import parse_version
 import git
 from datetime import datetime
 import calendar
@@ -561,7 +561,7 @@ def generate_history(options, layerbranch_id, commit, logger):
             pass
 
     finally:
-        if tinfoil and hasattr(tinfoil, 'shutdown') and (LooseVersion(bb.__version__) > LooseVersion("1.27")):
+        if tinfoil and hasattr(tinfoil, 'shutdown') and (parse_version(bb.__version__) > parse_version("1.27")):
             tinfoil.shutdown()
         utils.rmtree_force(tempdir)
 
-- 
2.34.1


