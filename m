Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.13330.1621215310955113353
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 May 2021 18:35:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ux41O1dz;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id d16so3852477pfn.12
        for <yocto@lists.yoctoproject.org>; Sun, 16 May 2021 18:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JN5WouqsAAH7ZAJD3F1MbB7plnxCByzj7nh4nlX73Mk=;
        b=ux41O1dzC/FVy0hedT5UVbvNkzRRckFRtxjtOa6Ss8r8w55bh1ML+TU7voRu4+pkyT
         /sIDX/kz6Tq14DSNanrsExT1JC/qjxKpvRqHPh0QHrRX2KvezoIgciV4D+i/Mu5HgHXp
         Ueny/X6ziYKzGRvCZGqoIbUv/z9bg3hc2i7uqrM/JFOjUTOdGgbsLDozlfaWmya7Q1yd
         QtUSCd0/HPakPTv4ijkh+BvshKz2vaV+VhMa3vVZe0XOIPueOFbebjM/y2TJu0+enlnD
         3UW7yLlGnJle+ux5ImdsgrEm3gSG2DJZWrO6fFO2cpDHYepXwbSYebErB6B/N47fQTvB
         /O9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JN5WouqsAAH7ZAJD3F1MbB7plnxCByzj7nh4nlX73Mk=;
        b=ulCkkQiw/yTttWSDS3isMWhisXx83OYmOd7u4BHHjEAlY3oKg/TBJMporUtroRVIcv
         cGuxGQaVjrA1kOFKpN/oJsqPgq1F295TU5GgFXA7M8FHHohlGVUECnSAsaxTlgfGKQFx
         Zct/PhoqqGmrXOeAAHsrtVgg0nFLDwqDDpEQvFRXLvrB/1hYzPXlSIOzPDsBkgryDwRn
         w6T5L6vDs/dtIXYl7kT4bkzXPax503K99jFOVORhafLPn8eZdR+6ceKY1Bd5Zn4DA+Yh
         P4uGLvEHYhqXC9af+mDH0GvmKP+Wqq/uYEFsYgDpTPPENe57eVBnpboyfoqd4SQiVnK+
         jrSA==
X-Gm-Message-State: AOAM5329zob5t4y1/0oHOzX/53Z+PCFb7S9RL1/hSiGsaRX5TyzP22t3
	kCMeXBpOig+IKey1cKnT/eQmxlpn9Bo=
X-Google-Smtp-Source: ABdhPJynEHisQLIHUbDC0cPJFGjMkF2mSD8U0S7s1oc44hTfWMiN5+WYjjfH7ePGAe7y4S0cQ1fn/Q==
X-Received: by 2002:a63:7c10:: with SMTP id x16mr40356199pgc.3.1621215310377;
        Sun, 16 May 2021 18:35:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t1sm8910659pjo.33.2021.05.16.18.35.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 May 2021 18:35:10 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] python3-scapy: update to 2.4.5
Date: Mon, 17 May 2021 01:35:06 +0000
Message-Id: <20210517013507.4023975-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517013507.4023975-1-akuster808@gmail.com>
References: <20210517013507.4023975-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../scapy/{python3-scapy_2.4.4.bb => python3-scapy_2.4.5.bb}  | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)
 rename recipes-security/scapy/{python3-scapy_2.4.4.bb => python3-scapy_2.4.5.bb} (95%)

diff --git a/recipes-security/scapy/python3-scapy_2.4.4.bb b/recipes-security/scapy/python3-scapy_2.4.5.bb
similarity index 95%
rename from recipes-security/scapy/python3-scapy_2.4.4.bb
rename to recipes-security/scapy/python3-scapy_2.4.5.bb
index 23ddfce..8f36520 100644
--- a/recipes-security/scapy/python3-scapy_2.4.4.bb
+++ b/recipes-security/scapy/python3-scapy_2.4.5.bb
@@ -5,9 +5,7 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
-S = "${WORKDIR}/git"
-
-SRCREV = "95ba5b8504152a1f820bbe679ccf03668cb5118f"
+SRCREV = "32cd7eb0f620d9adf171c48d55514e8326a538d7"
 SRC_URI = "git://github.com/secdev/scapy.git \
            file://run-ptest"
 
-- 
2.25.1

