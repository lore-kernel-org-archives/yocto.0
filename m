Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31232E00A0C; Wed, 26 Sep 2018 08:14:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1EE1E00953
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 08:14:04 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id d4-v6so13602607pfn.0
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 08:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=s2+Sor1MyJojsj4U0bpMOiugPzvBfgdXUuK37x30jo8=;
	b=OBccPhPCo6r8I0BFa+AGX7mlTtf7HkdS/RorY9ffmOZUbXquGlKJVIgWSbDhpuqtyg
	dnsbg/NEiBM7LjJ/4VhTLq3na8alSQu5dBP2nWSedbsuPcp39OijoLmH6jYzZsAGk1Y9
	3ZhuuYF+qVjL/nSWUtmTfWIniODSb/Q2cm6Yas8yiO/mQ7KsJPz6jaAA0Zvk4a+PwdRl
	fLCzw0XRVjYFa2H+BjH9gehDGMrEwEtbBQBEFvcB77swFMAIcdVXLmb4f6juEgpCOija
	2fo3dYJ2Fi2oUWHzo5haIWk7K/ZIL3B6fvjwnN21Eb7pOKjCJj8APhDLTBlHMZj2Wlm/
	qNyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=s2+Sor1MyJojsj4U0bpMOiugPzvBfgdXUuK37x30jo8=;
	b=JQSu9V2VXum2AF7pYkAdrx0etknNAYZx8N6oEruKDuVKRqpwbCXh3GAH3266SNLvYu
	r35Wyn2F8rrDRTqztETbvwcJES5mdyX/8mf+icgPJqtF2Jy14Ysn5El8v+SsdSP8+2Cg
	GvCyIhb6B+jPXDn2Z+DkJy10MhPkPkQS9AqQgSazti932woHCFBgVZyXRrx7zoZWLQc6
	MkASFMN1sUn5aXZ5bjo3lhZoWVyLFUD2st5AdW6D+fK67By3o5AEWDMLCwQP/fZUKX/I
	C0ulkkFrZW5XVkumRUJp4BBbJScHZwjXbdr5hxeHFGAgDRGLVBtjDTMzC7E1X3OUf1Or
	2Ygg==
X-Gm-Message-State: ABuFfoiiGi8yMGP2+Y/I7LMO1txlwqKWVaBrHdR+6orXGDQONsH8APgk
	xr9rEwyBbPlwbiWFXbO+fESS2tHO
X-Google-Smtp-Source: ACcGV61febdDsuPVfc69hctLf/oLxb9j98isYcXrEJnjqsPOHQ7vypVKn+oeBFs8lUf6J9MPOW3yDg==
X-Received: by 2002:a62:280a:: with SMTP id
	o10-v6mr6725288pfo.129.1537974844223; 
	Wed, 26 Sep 2018 08:14:04 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24-v6sm7594825pfh.67.2018.09.26.08.14.03
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 26 Sep 2018 08:14:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Sep 2018 08:14:02 -0700
Message-Id: <20180926151402.20245-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] meta-security: add THUD
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
X-List-Received-Date: Wed, 26 Sep 2018 15:14:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index f8bbe57..675a149 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "sumo"
+LAYERSERIES_COMPAT_security = "thud"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 8aff382..fcc5cd6 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "sumo"
+LAYERSERIES_COMPAT_scanners-layer = "thud"
 
 LAYERDEPENDS_scanners-layer = " \
     core \
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 5350159..1b5f7d5 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "sumo"
+LAYERSERIES_COMPAT_tpm-layer = "thud"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.17.1


