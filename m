Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8834FC47258
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 01:45:51 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.1497.1705542348719193182
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 17:45:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PjeqSDPM;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-28e73631189so1352093a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 17:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705542348; x=1706147148; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PaHQ5RFpWylY8oowrCSuaZ+l4Ez3TrP5aotVYV8iY5c=;
        b=PjeqSDPMVETkyDcF1J99vqOZBjGF3Tb10F+twhhmRjKxjKafKAHZizMWkD7izgQBya
         qCk066NqRF8EG4COxxCn6CPQH1sXJCgB+GjKhJDf7PXySB4SwvYs2mmUF5QpsGNJe9LW
         taPeWDxF3z4x06f3VfYl9zXm9ubyKd0OPJHxC0BnGgl54NlL0HaiRa8fXtgkaoChYaBp
         i0BCTZqxkkCSCXYJqWf17z1DBbqqLMrL5PDGfMDBNe0beFNbME9rJTt2xJPbKYgmt5O9
         AKCtIRBsg3RNrl/skPi0scMQP1EW/wn1TRgIJNLcso+/JvNY2ODxeWf1yaqmUulfxZuS
         +bHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705542348; x=1706147148;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PaHQ5RFpWylY8oowrCSuaZ+l4Ez3TrP5aotVYV8iY5c=;
        b=ULihZdL9haooYracHE8KXK4OqbyiiQLxVleBtxYOlF2LdAHFxxpwRBpp6M2bCxL0Ni
         JAYHIGPgIbvekcDccZNkuOj9AD4ubG0bZ4PilSGIrn6Gc+SgLxGrr5NyxTZZoMcgTPWJ
         3HVyhgP+O+aq78KdBqZGWsrN115+yA8qt9STQGymhhH56xqBMNH3J6VrCEnMB8DP4o3K
         L6joemqjejYKGPxINMX7d6VgVXfgWUz+OuAjG9pDOXf3RWJzNC6Ds/sLISh9Ca7PrMca
         VPjd5U8nmPy82V57LBYC/ejqt2okbCTjCJhVHgpCtc0/3erpRgsPICd6JJ34YgarG3Q2
         iPVQ==
X-Gm-Message-State: AOJu0YwiriCMl60blA2tJsX6eLBj2Tc7nHRaWcZgkkvh5990UAAKcIMn
	aFXQmqCu/bxvu2MSIF1u4wAkRDtDjIcz8+pz1CvoE2GqImoa46skioZFGUz/
X-Google-Smtp-Source: AGHT+IGXAra7sw+YZnYPaJSaaUD5Lazvo1q1q89zy049l5nCW0TK/jiiKEOvGHJsgIY2Q96BZNVS0Q==
X-Received: by 2002:a17:90b:374d:b0:28d:b5de:91e with SMTP id ne13-20020a17090b374d00b0028db5de091emr134341pjb.32.1705542347763;
        Wed, 17 Jan 2024 17:45:47 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:d15d:f80:769b:8c60])
        by smtp.gmail.com with ESMTPSA id r5-20020a17090ad40500b0028e01ddb6c2sm369221pju.12.2024.01.17.17.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 17:45:47 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] global: deprecated pkg_resources parse_version
Date: Wed, 17 Jan 2024 17:45:28 -0800
Message-Id: <20240118014528.564270-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 01:45:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62183

Since we are only using parse_version for comparison (typically checking
that we are greater than some minimum version for tool or package), we
can use packaging.version.parse as if it was parse_version

[YOCTO #15348]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py                  | 2 +-
 layerindex/update_layer.py            | 2 +-
 layerindex/views.py                   | 2 +-
 rrs/tools/upgrade_history_internal.py | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index c1886bd..471a830 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -17,7 +17,7 @@ import codecs
 import logging
 import subprocess
 from datetime import datetime, timedelta
-from pkg_resources import parse_version
+from packaging.version import parse as parse_version
 import utils
 import operator
 import re
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 4a67a50..8a963a3 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -19,7 +19,7 @@ import re
 import tempfile
 import shutil
 import errno
-from pkg_resources import parse_version
+from packaging.version import parse_version
 import itertools
 import utils
 import recipeparse
diff --git a/layerindex/views.py b/layerindex/views.py
index 25c045e..e83febb 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -11,7 +11,7 @@ import sys
 import re
 from datetime import datetime
 from itertools import islice
-from pkg_resources import parse_version
+from packaging.version import parse as parse_version
 
 import reversion
 from django import forms
diff --git a/rrs/tools/upgrade_history_internal.py b/rrs/tools/upgrade_history_internal.py
index 2ba96b1..2ea22c9 100644
--- a/rrs/tools/upgrade_history_internal.py
+++ b/rrs/tools/upgrade_history_internal.py
@@ -16,7 +16,7 @@ import os
 import optparse
 import logging
 import re
-from pkg_resources import parse_version
+from packaging.version import parse as parse_version
 import git
 from datetime import datetime
 import calendar
-- 
2.34.1


