Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5A9C3DA66
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 17:22:48 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web10.668.1692984163059689534
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Aug 2023 10:22:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=fuxs2kyA;
 spf=pass (domain: baylibre.com, ip: 209.85.219.50, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6490c2c4702so6124446d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 10:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1692984162; x=1693588962;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQs526+fjE41GexB/EVserf7H28y37B5vI6okbsFkZo=;
        b=fuxs2kyA+NXt5rqlFY8vaLKJE9lIqX09c8Gxcdb0tn1kQ+9YNZQImLz1atyfp4nVWl
         fjLluYBb47yCtJBYCWtoKPHTYkP+cevQfvRtA3I6w6gfudEfl1zG41CU7Kqze9OopAx4
         QWyab5LwUhuZftFgZa3iajB57/BRPbMXDhcjmlRVN6o05T84KXdNgHyHJ5R8fchI++tZ
         6HMxqiUWuKvaqQnMG6ZeLKatM6kxIw2K9pShrL0bzCsOeBXouT4//NnSH5r8zan6nPQ4
         Im6tnn7QC/TZn0C5wX4c1THCr0ORwz+ACs5boi32s/jphc1RwAKHU3ckpl2DieSVMqb+
         OA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692984162; x=1693588962;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQs526+fjE41GexB/EVserf7H28y37B5vI6okbsFkZo=;
        b=EdMi90rSpRNbF/YRatZM6mbb+iPKS8YjA2Yxv/EzouMcnntrAC4JW05QF5mVGK1D/L
         Lq5Mcej/Gx7gxBV7zDSjgpxdQe8s7C8HgowWIFZoBf507HwvgA5RFIXrgCvs7eEJs0kA
         EMTPMahqCCQuMfqdJzozR5niq07jPOE57Zf0KrJ9jfgWXmT/P3Qt+UAbWo24aNYu276p
         Np/c1TauTnsQJ5pgzZ087dV4xr2dfJye6RK3CYzqNBHpzFiGMheafWOyq7/TnRTfZjoT
         xBVH7BuHljra6qHpoPsqNmwk6eZn7u2OUwJbaJAb6pW9iLn9rDquC403/l5rB9uR1tAv
         yb1g==
X-Gm-Message-State: AOJu0YyDfuKy51AgfJQzyJBO2eZKdMQEXlktxO30hL19zRPiOL8OhVio
	GQcJtgSqdlq9yajbMEqkcubqe/htf7CaK4XB9M0=
X-Google-Smtp-Source: AGHT+IHUmCQUoEjJrUWev1hMc30XFojAG7ePCmMRqhw3KkcCMldJiw/GkdfVv2jHjzSyY/OEpxShYQ==
X-Received: by 2002:a0c:a78a:0:b0:64f:70a8:60bf with SMTP id v10-20020a0ca78a000000b0064f70a860bfmr4244437qva.53.1692984161564;
        Fri, 25 Aug 2023 10:22:41 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:fc4e:ec42:7e5d:48dd])
        by smtp.gmail.com with ESMTPSA id u25-20020a0cb699000000b0063d0b792469sm680595qvd.136.2023.08.25.10.22.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 10:22:41 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH] get-latest-series: add script
Date: Fri, 25 Aug 2023 13:22:40 -0400
Message-ID: <20230825172240.134666-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 17:22:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60894

As a first step in replacing the non-functional poll-events script, add
a new one that uses git-pw and the date command to download patch series
by ID, with configurable time intervals, maximum number of series,
download locations, log files, and Patchwork projects to query. Use a
log file (defined as $SERIES_TEST_LOG in the script) to track
previously-consumed series so that they don't get tested multiple times.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 scripts/get-latest-series | 112 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)
 create mode 100755 scripts/get-latest-series

diff --git a/scripts/get-latest-series b/scripts/get-latest-series
new file mode 100755
index 0000000..dda4165
--- /dev/null
+++ b/scripts/get-latest-series
@@ -0,0 +1,112 @@
+#!/bin/bash -e
+#
+# get-latest-series: Download latest patch series from Patchwork
+#
+# Copyright (C) 2023 BayLibre Inc.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+# the interval into the past which we want to check for new series, in minutes
+INTERVAL_MINUTES=30
+
+# Maximum number of series to retrieve. the Patchwork API can support up to 250
+# at once
+SERIES_LIMIT=250
+
+# Location to save patches
+DOWNLOAD_PATH="."
+
+# Name of the file to use/check as a log of previously-tested series IDs
+SERIES_TEST_LOG=".series_test.log"
+
+# Patchwork project to pull series patches from
+PROJECT="oe-core"
+
+help()
+{
+    echo "Usage: get-latest-series [ -i | --interval MINUTES ]
+        [ -d | --directory DIRECTORY ]
+        [ -l | --limit COUNT ]
+        [ -h | --help ]
+	[ -t | --tested-series LOGFILE]
+        [ -p | --project PROJECT ]"
+    exit 2
+}
+
+while [ "$1" != "" ]; do
+    case $1 in
+        -i|--interval)
+        INTERVAL_MINUTES=$2
+        shift 2
+        ;;
+    -l|--limit)
+        SERIES_LIMIT=$2
+        shift 2
+        ;;
+    -d|--directory)
+        DOWNLOAD_PATH=$2
+        shift 2
+        ;;
+    -p|--project)
+        PROJECT=$2
+        shift 2
+        ;;
+    -t|--tested-series)
+        SERIES_TEST_LOG=$2
+        shift 2
+        ;;
+    -h|--help)
+            help
+        ;;
+    *)
+        echo "Unknown option $1"
+        help
+        ;;
+    esac
+done
+
+# The time this script is running at
+START_TIME=$(date --date "now" +"%Y-%m-%dT%H:%M:%S")
+
+# the corresponding timestamp we want to check against for new patch series
+SERIES_CHECK_LIMIT=$(date --date "now - ${INTERVAL_MINUTES} minutes" +"%Y-%m-%dT%H:%M:%S")
+
+echo "Start time is $START_TIME"
+echo "Series check limit is $SERIES_CHECK_LIMIT"
+
+# Create DOWNLOAD_PATH if it doesn't exist
+if [ ! -d "$DOWNLOAD_PATH" ]; then
+    mkdir "${DOWNLOAD_PATH}"
+fi
+
+# Create SERIES_TEST_LOG if it doesn't exist
+if [ ! -f "$SERIES_TEST_LOG" ]; then
+    touch "${SERIES_TEST_LOG}"
+fi
+
+# Retrieve a list of series IDs from the 'git-pw series list' output. The API
+# supports a maximum of 250 results, so make sure we allow that when required
+SERIES_LIST=$(git-pw --project "${PROJECT}" series list --since "$(date --date "now - ${INTERVAL_MINUTES} minutes" +"%Y-%m-%dT%H:%M:%S")" --limit "${SERIES_LIMIT}" | awk '{print $2}' | xargs | cut -f 2- -d ' ')
+
+# Check each series ID
+for SERIES in $SERIES_LIST; do
+    # Download the series only if it's not found in the SERIES_TEST_LOG
+    if ! grep -w --quiet "${SERIES}" "${SERIES_TEST_LOG}"; then
+        echo "Downloading $SERIES..."
+        git-pw series download "${SERIES}" "${DOWNLOAD_PATH}"
+	echo "${SERIES}" >> "${SERIES_TEST_LOG}"
+    else
+        echo "Already tested ${SERIES}. Skipping..."
+    fi
+done
-- 
2.41.0


