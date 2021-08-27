Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web09.8800.1630074429463594597
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 07:27:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qElRF1jH;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id j187so5847941pfg.4
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 07:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vOZXb0jv7kf43rIAo/OmvS+L0cMRzRCbiDR71XbzhcY=;
        b=qElRF1jHlhU+CdSuMJ591e12xJttT7ETgMp1oZwuZiT7epfWjMhr4p/8gojJWXO8f5
         Vlkxzc0IQX3g0sRmWak8xAlw0LcXc6t9vKldghx9aUqn2g1SAm98gwQAtBrgpvVNjoD0
         ehbqcy15rUpWrXkTFgQH43X5nn2Vhr4oKEJt3LFMxRKr8qEyPmcUJ8hRGShcwn0/ExQp
         /UXz7Z/uf5EpeqCkxrIZ/fwAcIUa4IMEKob9q79fJicOn+S+fVUGp4OyvfyDSVMPg8BD
         13wYsrdYRjqFXL/wgwgFVAKJzis5CIOVCckEi9G1q4qCOr7RV4Nsy4w8EfUQo7MNHbXx
         tp4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vOZXb0jv7kf43rIAo/OmvS+L0cMRzRCbiDR71XbzhcY=;
        b=tSyU0lZI0puprDBcpP+E9cGXjVdDb4WRK8gZzkQqSd+4ygS0dGaz+wgWOcJtVRh+ZO
         2bXpdXg9Knc6XGKANHvMbb/7CLD9O5LPlQaDplyRLru0Gs10+4WNaGXHJFp61Jb8jkHx
         5F2DFjzT4AEpMWjaTtQ5+3KUiNk/NvOAg3gLsTKAKwUS0CJuFOQlehgFoWPV2t/HONZT
         OsmSUcnhqaWrNgdMAzTWz/Y30Nwgh7xFxx0t0Im46ORVdFIAXRv76sc78FLxmKMxhqE0
         iJWJ+K2N6alIvN7htGi+fpi6MSOii+hORYc1qTza+rrWfJWWPAIREWPfhuy3hbn1KrQH
         /iew==
X-Gm-Message-State: AOAM532cGrUrVZQp3J5f0b5hDPSSzm/axR4OxOP2ejam7h8bMAxygB+o
	McnWbOqsamo7eJc6cT9b9OYLPc2F4OU=
X-Google-Smtp-Source: ABdhPJyqoGGsv+rnBH77ACczam03k55VMkS1/pE6zevjnyl2aVy4zJoreoHqgNaG1kT97EPv3VvVPQ==
X-Received: by 2002:a62:1593:0:b0:3f1:d6c7:9cca with SMTP id 141-20020a621593000000b003f1d6c79ccamr9444129pfv.39.1630074428628;
        Fri, 27 Aug 2021 07:27:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:6d42:ed7e:4699:884f])
        by smtp.gmail.com with ESMTPSA id u17sm6512064pfh.184.2021.08.27.07.27.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 07:27:08 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] dm-verity-img.bbclass: more overided fixups
Date: Fri, 27 Aug 2021 07:27:02 -0700
Message-Id: <20210827142707.3710584-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 classes/dm-verity-img.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 16d395b..a0950da 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -63,8 +63,8 @@ verity_setup() {
 VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity"
 IMAGE_TYPES += "${VERITY_TYPES}"
 CONVERSIONTYPES += "verity"
-CONVERSION_CMD_verity = "verity_setup ${type}"
-CONVERSION_DEPENDS_verity = "cryptsetup-native"
+CONVERSION_CMD:verity = "verity_setup ${type}"
+CONVERSION_DEPENDS:verity = "cryptsetup-native"
 
 python __anonymous() {
     verity_image = d.getVar('DM_VERITY_IMAGE')
-- 
2.25.1

