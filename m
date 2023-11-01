Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C1FC41535
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:25 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.11096.1698797178048292764
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=j0s90BDN;
 spf=pass (domain: smile.fr, ip: 209.85.221.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-32f9268bf8cso1075604f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797176; x=1699401976; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HHtkMnNQvQkEo3QBe0gpq50UsYkgthNWQwuhu+gR0Sw=;
        b=j0s90BDNNmQpSotcCjzUq9Ws7bBcQTbKJiFEWnAGYqsvMaCYtdCbrwx+8e8sbvdhuY
         X4P7JDvlLWGQVszo/2xeKQ9TZFdRiq3vCiS1HPNZMIYW+RwbY+vdGBqyXU3//cnIfqK/
         DhrsGM0GyxwSlIwqgYIWFH/SseqZne5tV+UnKqOpcartiti94mY8AZaNpc03CT8SBACZ
         wgxN0xGoBuZHgjqPiAOhhM7bhl1Pot1GogG0fDWwDqMZJz6EXlIJXV94SG5EWyfWtbmj
         xzRbDqYIn8af+T/jVrEeuTWlS4PR05VyJeA7I6abr1lNZupIPLpzxNew4DFF+17bgAz9
         KLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797176; x=1699401976;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HHtkMnNQvQkEo3QBe0gpq50UsYkgthNWQwuhu+gR0Sw=;
        b=WY46iiQ+UpaWzk3zjFK6vakQFP6qBPnCLZHh1biGiiP7871oUJZf1BhhIkhpYO4LXz
         HxC2wkhSjzfEI2s/4GQWR+L3404yvnfLpIEgb4AmbN4urWujo7hbG/x/iDYIZkKc3lzu
         X/hh+FG2m1HqT23qgDV/y7BQqu7jhA3PZ2tTAFaTrBXN/RIzbU/5V6RLCYxtgjkYpfAG
         NWLUKC6R+l7xkIixtkvlzXtwzfocXZe7tUcKMr0am0B21xXknIoLXzO8ACI2fVLKYec2
         uzEItLTArjhCNlw4lAz8oSimK681xyzF++EvlaTRwhaBbC6VnVqLrutET7Yaua4UEYH/
         UHhQ==
X-Gm-Message-State: AOJu0YyIriTyzizLwykbo41ihPp6ArNZjYT3T/lUqBzi7nPo5yYtf4vQ
	PwV6eaB5vKsgONutQk7or8uSRiPTdggslYi8LyE=
X-Google-Smtp-Source: AGHT+IF1y3stEEWEo+459V8tLiqAh8QvnXQFDt603cruhyPIt/GMaiQazOZB/szBV4imYdDRZtHoqA==
X-Received: by 2002:a05:6000:1ce:b0:31f:f753:5897 with SMTP id t14-20020a05600001ce00b0031ff7535897mr13176666wrx.59.1698797176342;
        Tue, 31 Oct 2023 17:06:16 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:15 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 6/6] weeklyjob.sh: Add options to handle upgrading meta-oe
Date: Wed,  1 Nov 2023 01:05:34 +0100
Message-Id: <20231101000534.241551-7-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61544

For example:
  ./weeklyjob.sh --layer-dir ../meta-openembedded/ --layer-names "meta-oe"

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 weeklyjob.sh | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/weeklyjob.sh b/weeklyjob.sh
index 94598a2..00f3575 100755
--- a/weeklyjob.sh
+++ b/weeklyjob.sh
@@ -13,6 +13,59 @@ poky_dir=~/poky
 build_dir=~/build-tmp-auh-upgrades
 sstate_dir=~/sstate-cache
 
+ARGS=$(getopt -o '' --long 'layer-dir:,layer-names:,layer-machines:' -n 'weeklyjob.sh' -- "$@")
+if [ $? -ne 0 ]; then
+    echo 'Cannot parse arguments...' >&2
+    exit 1
+fi
+eval set -- "$ARGS"
+unset ARGS
+
+LAYERDIR="."
+LAYERNAMES=""
+LAYERMACHINES=""
+DEFAULT=1
+
+while true; do
+    case "$1" in
+        '--layer-dir')
+            LAYERDIR=$(realpath $2)
+			DEFAULT=0
+            shift 2
+            continue
+        ;;
+        '--layer-names')
+            LAYERNAMES+=" $2"
+			DEFAULT=0
+            shift 2
+            continue
+        ;;
+        '--layer-machines')
+            LAYERMACHINES+=" $2"
+			DEFAULT=0
+            shift 2
+            continue
+        ;;
+        '--')
+            shift
+            break
+        ;;
+        *)
+            echo "Unexpected value $1" >&2
+            exit 1
+        ;;
+    esac
+done
+
+# Default to poky/meta
+if [ "$LAYERNAMES" == "" ]; then
+    LAYERNAMES="meta"
+fi
+# Default to qemux86-64
+if [ "$LAYERMACHINES" == "" ]; then
+    LAYERMACHINES="qemux86-64"
+fi
+
 pushd $poky_dir
 
 # Base the upgrades on poky master
@@ -20,7 +73,11 @@ git fetch origin
 git checkout -B tmp-auh-upgrades origin/master
 
 source $poky_dir/oe-init-build-env $build_dir
-$auh_dir/upgrade-helper.py -e all
+if [ "$DEFAULT" -ne 0 ]; then
+	$auh_dir/upgrade-helper.py -e all
+else
+	$auh_dir/upgrade-helper.py -e all --layer-dir $LAYERDIR --layer-names "$LAYERNAMES" --layer-machines "$LAYERMACHINES"
+fi
 
 # clean up to avoid the disk filling up
 rm -rf $build_dir/tmp/
-- 
2.30.2


