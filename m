Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.7370.1575653853897113727
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 09:37:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BLyVh/58;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id a33so3433033pgm.5
        for <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2019 09:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=Wa62WWol5r6g6vaniz4eas5h5NLexoCgc51lkxhT+v0=;
        b=BLyVh/584w1vNCOwPWhn/tXg/hk+96W11RRDS7yMRb49W3GKCKdb8kgk69fDpPP0lR
         YYCG3hiIGdS23J5TkPjSjuWjeDezLcbzUFwsbd9pvmOZEPvkSwUFpTn147l/eRLxRt1r
         BVC6vDa1reBoROI9x1QxcX/h/Z9rg/ooeJUkg52rmLRqfUMGd+xO+Lbubhgos5VNhjl1
         KtCxLO4zvsxGMemeJrB61aZyT70eXUkNGa+WLSdkGVBBBIlVLeqoXQifVQDjm5GlkNCW
         KJhDAMs85iVOI+662Xtxs/pto47BACAn51evrQf9aQ9JiIQ4dPdJEAHvExZI+Aq5gUBN
         OuHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=Wa62WWol5r6g6vaniz4eas5h5NLexoCgc51lkxhT+v0=;
        b=NtJSFGKSjY/n8NaRAFaq+zzVqWOBJEQLv4Fhv3CKQfiOHZicSjKD8nWfE+LxvQxvM8
         dGiyvskhkF9s4F8It7WKIDCptneliKPr5UFlIqEaego3VE9kLNT/FjdwBfWr1je/Za8u
         yD4dzKUii7BPG+m1nCdXfeQR8MQJV9iBtd3u1EpGNd7ldxrymGIKJi+wLG1txZoOgDnL
         FzQlzFQmV1UHhTpIcIZlAaB5d1DWEoUWlK/gywk9Fu+CQyNwr38o9A2r18E5mCFaGuPW
         ygOw0M+ZQsPvDaRu4HKMdKRZMAbthJLYIQ35xSD7Ja+MMwv2SpfIlwZvwZYrW0WBQx7c
         Y65g==
X-Gm-Message-State: APjAAAVWbJndNQLy5oliV82MCnKInDDX8ZP7YTODu2zlxcU/FdEM9KR4
	N2pfzG9a9Z5yF474Gyssku+/D2ZY
X-Google-Smtp-Source: APXvYqzgaOacdzSgttoQKbhyjWzgqN207f1Srp0TUi6o+dWaYSTs169Fjhf/7JniboPvXHIxyy3l+g==
X-Received: by 2002:a62:6884:: with SMTP id d126mr15012114pfc.109.1575653852929;
        Fri, 06 Dec 2019 09:37:32 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x33sm3872990pga.86.2019.12.06.09.37.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2019 09:37:32 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] meta-security: add layer index callouts
Date: Fri,  6 Dec 2019 09:37:31 -0800
Message-Id: <20191206173731.2563-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/conf/layer.conf           | 2 ++
 meta-security-compliance/conf/layer.conf | 2 ++
 meta-tpm/conf/layer.conf                 | 1 +
 3 files changed, 5 insertions(+)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 962424c..bfc9c6f 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -24,3 +24,5 @@ OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 LAYERSERIES_COMPAT_integrity = "zeus"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
+
+BBLAYERS_LAYERINDEX_NAME_integrity = "meta-integrity"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 0e93bd0..e346bf3 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -11,3 +11,5 @@ BBFILE_PRIORITY_scanners-layer = "10"
 LAYERSERIES_COMPAT_scanners-layer = "zeus"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
+
+BBLAYERS_LAYERINDEX_NAME_integrity = "meta-security-compliance"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 3af2d95..175eba8 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -14,3 +14,4 @@ LAYERDEPENDS_tpm-layer = " \
     core \
     openembedded-layer \
 "
+BBLAYERS_LAYERINDEX_NAME_tpm-layer = "meta-tpm"
-- 
2.17.1

