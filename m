Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA59BE00D83; Tue,  8 Oct 2019 15:54:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3398AE00D75
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 15:54:38 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id f21so57611plj.10
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2019 15:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=QGrpG5cOcJ7hsRn5bxyCLdKsxJGb9nzPj+1C6hflxCs=;
	b=QLsipCO1Q8zoeKBu+hlYbfTzg/L2JGL6gPZJJj/++sEMCEVTlaLiQA7KHlaJRhU3v5
	WzT3kfzZ/C2LDpTTNube6rOnRbILhUS3werGuCBVORofEeik+UqR6b4HhmArDOCH/Tvu
	lEYZSs2b47zpoRSrFfSeQ+GfpeDrz7TcpjTr5ZuqeIlL+NJpOwCYcR8zZZzi5j1Qhoxo
	1hvv0liCd6QrCtVdg7E3b0e69Bw1FhF75xAIFYorf6TrtjlS7lWynDtIeTrBrvK7zq+w
	Dky09JBx84oeWwSXAwMSCQNt2YIWwRKYETznevxliE5EYF4yAuu7xVRXLOCnoq3fy7+p
	5C4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=QGrpG5cOcJ7hsRn5bxyCLdKsxJGb9nzPj+1C6hflxCs=;
	b=UPPfsxolT7/iVG91bmgQR455KsqKZwCeUk+hqPQnoLLhH5WTIEyX1cGQ80YfeDCXwu
	C9WbfB5498zJFwKC21T7lof8yA01gDgU1jMtcq/t5NOVk8cQdyo+t71a72WT3ZKtbW2Z
	7oHPfINWa/CjeNCknJEFobICNZaM0SBCD8bK3Z5GJX0Y1ETb6iAIJrmoECStNDuDw5TG
	k3GZ01RHN7xHC0iDnza/osEIaZ919It3F71ZOdZCgZ+WqOpIvAtW8mev/dLv0piaXNG/
	SYsAHh7aP+DJTHXKK8m8FVi0JPsnPLACH3Jeszunekk3Rrcr7VAGfJaSRy6f5OVv4x/l
	n+Vw==
X-Gm-Message-State: APjAAAUTb8XW2EPk3fDbc+bNg9zzG4Uoq8msEWY4AS5kCvIi01ePTaSF
	buwFlvXyzwcunDTgGvjmvO0VerRLZ1Y=
X-Google-Smtp-Source: APXvYqza28+obnKPJAFiiwZuxFYAdLoi5DzAAdQRyAjA+1vL/Bwm8Z7kJmxw70WiPbUTCJ8lRIWP1A==
X-Received: by 2002:a17:902:8e81:: with SMTP id
	bg1mr23464282plb.137.1570575277358; 
	Tue, 08 Oct 2019 15:54:37 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	q13sm166870pfn.150.2019.10.08.15.54.36 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 08 Oct 2019 15:54:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  8 Oct 2019 15:54:35 -0700
Message-Id: <20191008225435.6074-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] layer.conf: Update for zeus series
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 08 Oct 2019 22:54:38 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index b9a4f25..3e890e1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "warrior"
+LAYERSERIES_COMPAT_security = "zeus"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 41989da..962424c 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -21,6 +21,6 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "warrior"
+LAYERSERIES_COMPAT_integrity = "zeus"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 9ccadab..0e93bd0 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "warrior"
+LAYERSERIES_COMPAT_scanners-layer = "zeus"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index cdccc55..3af2d95 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "warrior"
+LAYERSERIES_COMPAT_tpm-layer = "zeus"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.17.1


