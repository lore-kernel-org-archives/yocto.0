Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.3052.1602957839717791227
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fTfD8TTG;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id a200so3408567pfa.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=65XSjhWT0Pvc2UMdnJiILfJbQ06ND3scXiaRjWoreE0=;
        b=fTfD8TTG/K2bd9po5pVB2QQivW+7NA0PSd3Zp35S7L35aMKvRN6iyZakbpIb/rKgot
         QLmavLP7HBtjuzJxV1v25zC7rzeCChxKSURJ+xYF/A3v/ImXUAcjPT3oQjkFu4ErSW5t
         /UhpUL6o/mw2GzdiR72e+kjwjOxwcUnNCeN1aU/+0cq0XC7ubJ1IiXen2XPpriLL0MGC
         5KFquNxAkBPlO5tDXffORYCm5LxBJeTJMyyJWNNXkapZa6ce349HQYVW+a7ekt0uCRDd
         sFElPLnS77h00ajLzWDmp28B9g1JSMOlpVqFAE0t5oRotZrTicfhY3B90/YEQvdy3QkW
         q87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=65XSjhWT0Pvc2UMdnJiILfJbQ06ND3scXiaRjWoreE0=;
        b=IfIf0Tqq6mqau0yi8++fdbC6CGEAJWWiMH8eB8LPhdhi5Zl49WA786bhw5Vq9dw/zK
         cKKN2kbqs9n9FAXkFVq9wbXvTDZ9y2HqO+By7sf0sy4MMvVaBbp9n07qaBlrq8tOXpwj
         jlPruro2UrCo5LsU0jC/F0uademQcbmaoA9lsFH8vo8IXwBUW3WtwY/HN3TCSMG/mOb8
         geMV0yIkxMuQPH6dzUBgpVhWTj9L9aG+oQC67Jwavm4Eqc6KMZGzVd7OmXZT1q7aUb4A
         DWtvPCts3jK9uuh9zrBDFUSH8IQWPkYwE5WykGEVL9kW873agavauurH0D7PeiyE56O3
         T8uQ==
X-Gm-Message-State: AOAM530UB8ZOQAWP3Qsx38E3rnDNa7LgbGP/vdgxI0WBpQWOyuM/lKiH
	FSlSBYuGFV8VWsR/oej+ac4MbAxE/5s=
X-Google-Smtp-Source: ABdhPJzu6A5NlyS6MKDfaJMgGvMSxukMn1jThEJOiFggj20cmuHKtvM8gIx+l7+5m5qPuXM9P7I4Wg==
X-Received: by 2002:a63:1b44:: with SMTP id b4mr7801972pgm.175.1602957838987;
        Sat, 17 Oct 2020 11:03:58 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:58 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 22/32] initramfs-framework/dmverity: add retry loop for slow boot devices
Date: Sat, 17 Oct 2020 11:03:19 -0700
Message-Id: <4aab56bbca7162d9152436fd793dc1ed1d5bd798.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: Naveen Saini <naveen.kumar.saini@intel.com>

Detection of USB devices by the kernel is slow enough. We need to
keep trying for a while (default: 5s seconds, controlled by roottimeout=<seconds>)
and sleep between each attempt (default: one second, rootdelay=<seconds>).

Fix is based on https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-core/initrdscripts/initramfs-framework/rootfs?id=ee6a6c3461694ce09789bf4d852cea2e22fc95e4

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit e23767fc72040cc58e638b08925ab467221c91f9)
---
 .../initramfs-framework/dmverity              | 64 +++++++++++--------
 1 file changed, 37 insertions(+), 27 deletions(-)

diff --git a/recipes-core/initrdscripts/initramfs-framework/dmverity b/recipes-core/initrdscripts/initramfs-framework/dmverity
index bb07aab..888052c 100644
--- a/recipes-core/initrdscripts/initramfs-framework/dmverity
+++ b/recipes-core/initrdscripts/initramfs-framework/dmverity
@@ -10,33 +10,43 @@ dmverity_run() {
 
     . /usr/share/misc/dm-verity.env
 
-    case "${bootparam_root}" in
-        ID=*)
-            RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
-            ;;
-        LABEL=*)
-            RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
-            ;;
-        PARTLABEL=*)
-            RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
-            ;;
-        PARTUUID=*)
-            RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
-            ;;
-        PATH=*)
-            RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
-            ;;
-        UUID=*)
-            RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
-            ;;
-        *)
-            RDEV="${bootparam_root}"
-    esac
-
-    if ! [ -b "${RDEV}" ]; then
-        echo "Root device resolution failed"
-        exit 1
-    fi
+    C=0
+    delay=${bootparam_rootdelay:-1}
+    timeout=${bootparam_roottimeout:-5}
+    RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+    while [ ! -b "${RDEV}" ]; do
+        if [ $(( $C * $delay )) -gt $timeout ]; then
+            fatal "Root device resolution failed"
+            exit 1
+        fi
+
+        case "${bootparam_root}" in
+            ID=*)
+                RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
+                ;;
+            LABEL=*)
+                RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
+                ;;
+            PARTLABEL=*)
+                RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
+                ;;
+            PARTUUID=*)
+                RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
+                ;;
+            PATH=*)
+                RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
+                ;;
+            UUID=*)
+                RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
+                ;;
+            *)
+                RDEV="${bootparam_root}"
+        esac
+        debug "Sleeping for $delay second(s) to wait root to settle..."
+        sleep $delay
+        C=$(( $C + 1 ))
+
+    done
 
     veritysetup \
         --data-block-size=1024 \
-- 
2.17.1

