Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5326AC46CD2
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 00:14:14 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.9594.1705968851329103403
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 16:14:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IeCl0+Vc;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d75ea3a9b6so10320215ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 16:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705968850; x=1706573650; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5IkegqEhUlzk80KBjEIN+focnOCljuwUhm4WAcEadXw=;
        b=IeCl0+VckjEbUbWzLOwdmml/+LZ6l115sYjqltY2Bkwptcvz/xpUL+ZZC+R0AfyaHD
         Ehf7LBlxLV38FFtZ1d0rabMHkHL7c06CifnzCaQvGnBb36inmosv5ivOwGuo18V4Nsc2
         eu+D2a9iPcfrtW2TOTcEh9iqeknVM9+0RIExjVTcD9TD6Tdp0by05g3mt5s3TzxsgBSg
         AXnzVa5JeBewapze4f26ZRat7P9hz0ta6jtNYUzujjNvO4SA8DMJ6xi4up608Tu3kMN6
         Fc1WgvP4z0/gHWBgKEGYJ4bIJvhApc8qpHruR18uEBiyMBRhxc6vC2Vr9ItiQIDfWtgh
         Bfxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705968850; x=1706573650;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5IkegqEhUlzk80KBjEIN+focnOCljuwUhm4WAcEadXw=;
        b=YfzznxwdT67O9BULXv13Sp4JBLMZbdYFCnBQKEL0P/tGIDaOuP79qzfPs4Pf7lga0I
         Wv4I1lumCx88ir3ZXgdolR4zs7yg5UQtUKTTd2/yhEIf8PfQzNCE8g2fdDBj+SlA1GUQ
         md+n0h4ZEABZDRyd2aqbdpUsGgsHi+4N1xjomsmhWFlMEmrIOt5JmsUwDe2WqSNZ0kUG
         NXSaQJA18VxiAqMcPdifWREuKkKOkHYgpmAh1X8tyv4H3JMXVpOTsxmm2VdZvqe6ioUz
         7eLBz4ta843GDbh+fmy6lWSjpEwy2pCYRF5CK6qCIikdTu7GKb4WkVUCSoh9dsw66bgq
         Dt8A==
X-Gm-Message-State: AOJu0YwsCtjWU5PThk1+ysPgNkx1tVMTnokXOFmq1sjhkGuUgLWv4nts
	AhBaZ7erWGIugCtUb2oB0h5LLD9vsa2Z5N/fMgf0MbE57/NKQxWGWk9ArZqm
X-Google-Smtp-Source: AGHT+IGOTPzRyfkblh61F4XZaUUNJlp2qjwPz6JQNKx9s1jEEJjzlLG/yHVHVVslrCch5MwokAD2qQ==
X-Received: by 2002:a17:903:1112:b0:1d4:25d5:5a75 with SMTP id n18-20020a170903111200b001d425d55a75mr6749698plh.74.1705968850249;
        Mon, 22 Jan 2024 16:14:10 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id ku8-20020a170903288800b001d7365fe0c7sm3842956plb.164.2024.01.22.16.14.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 16:14:09 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH v2] global: deprecated pkg_resources parse_version
Date: Mon, 22 Jan 2024 16:11:26 -0800
Message-Id: <20240123001125.1470142-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240118014528.564270-1-tim.orling@konsulko.com>
References: <20240118014528.564270-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 00:14:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62228

Since we are only using parse_version for comparison (typically checking
that we are greater than some minimum version for tool or package), one
would think we can use packaging.version.parse as if it was parse_version

Unfortunately, this requires conforming to PEP-440 version definitions,
which does not work for e.g. autotools (2.72d) nor older openssl (1.1.1p).
We rely in these (and to be sure other) cases on the LegacyVersion behavior.

https://packaging.python.org/en/latest/specifications/version-specifiers/#summary-of-differences-from-pkg-resources-parse-version

"This specification purposely restricts the syntax which constitutes a
valid version while pkg_resources.parse_version attempts to provide some
meaning from any arbitrary string."

In order to have the least impact to the overall code, we instead add
packaging_legacy to requirements.txt and use packaging_legacy.version.parse
as if it was parse_version.

https://pypi.org/project/packaging-legacy/
https://github.com/pypa/packaging/pull/407

Since pypi.org itself is depending on packaging_legacy (in fact, a pypi dev
developed the package), we can expect it to be supported for quite some time.

https://github.com/pypi/warehouse/pull/13500

[YOCTO #15348]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
Changes in v2:
  * Add packaging_legacy to requirements.txt
  * Use packaging_legacy instead of packaging since we rely
    on LegacyVersion behavior which has been removed
  * Fix a typo of "from packaging.version import parse_version" in
    layerindex/update_layer.py

 layerindex/update.py                  | 2 +-
 layerindex/update_layer.py            | 2 +-
 layerindex/views.py                   | 2 +-
 requirements.txt                      | 1 +
 rrs/tools/upgrade_history_internal.py | 2 +-
 5 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index c1886bd..df3939f 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -17,7 +17,7 @@ import codecs
 import logging
 import subprocess
 from datetime import datetime, timedelta
-from pkg_resources import parse_version
+from packaging_legacy.version import parse as parse_version
 import utils
 import operator
 import re
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 4a67a50..d9bec0c 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -19,7 +19,7 @@ import re
 import tempfile
 import shutil
 import errno
-from pkg_resources import parse_version
+from packaging_legacy.version import parse as parse_version
 import itertools
 import utils
 import recipeparse
diff --git a/layerindex/views.py b/layerindex/views.py
index 25c045e..04e39d7 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -11,7 +11,7 @@ import sys
 import re
 from datetime import datetime
 from itertools import islice
-from pkg_resources import parse_version
+from packaging_legacy.version import parse as parse_version
 
 import reversion
 from django import forms
diff --git a/requirements.txt b/requirements.txt
index ac06cfb..256bc28 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -24,6 +24,7 @@ gitdb==4.0.11
 GitPython==3.1.41
 kombu==5.3.4
 mysqlclient==2.2.1
+packaging_legacy==23.0.post0
 Pillow==10.2.0
 prompt-toolkit==3.0.43
 python-dateutil==2.8.2
diff --git a/rrs/tools/upgrade_history_internal.py b/rrs/tools/upgrade_history_internal.py
index 2ba96b1..842fe81 100644
--- a/rrs/tools/upgrade_history_internal.py
+++ b/rrs/tools/upgrade_history_internal.py
@@ -16,7 +16,7 @@ import os
 import optparse
 import logging
 import re
-from pkg_resources import parse_version
+from packaging_legacy.version import parse as parse_version
 import git
 from datetime import datetime
 import calendar
-- 
2.34.1


