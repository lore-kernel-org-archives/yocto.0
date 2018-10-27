Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE1E9E00BC4; Fri, 26 Oct 2018 23:25:05 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B54DE00AB9
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 23:25:03 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id p2-v6so3217578wmc.2
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2018 23:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Df5TMKNBOdZ5gRUEUa55wqmDv4k+k9LiegK4Hk7/kTk=;
	b=G/K6MVJHgAVPeLb/A0ict5HR2/OVzmT6ztfUdAONRFB9yq2WMBVDS1ltbLgi1WGKLM
	p1t/H4UyRfsVwZT1gKlYz+ucY2F05yduCDlBPurdg8EhYsemUXwVUrU7/2IlAl6Oq1qn
	05J0TPznEo92SaCmoH9kSW9bKp9hI7a5BPzk6ogKsF3eU9AdSxoF5eDNaSWuahkliv7m
	bA/bPUivReP83fTsXEDQYDzyC3U9k4Nk8IJPzLdtTVil4B/0YQuFvxoT2BXNOtelMETW
	SjSVM77IpIYmET9GGFWBuNvbP7vg8iLu45+xBQ1geMoA0dWWX5NLo5G6bHozQEOqZZMd
	os4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Df5TMKNBOdZ5gRUEUa55wqmDv4k+k9LiegK4Hk7/kTk=;
	b=syLbI46WFr8RfUwa59dnVabO73QpAKl29+SWV257b/ZRzv04uTx9pK3NLwraHlDDfI
	dhjkJcH8Kfea2j7E9M8gUCrlPOt8D48Vpvh9Sg6gwvv+ktymKv6hYflhmX89+P8bF4zE
	agqLz3k+70B2yjoCRzKpcyQW4SPDrPvxdC/4sgGgn79wpyV892aTYK53I6AV+UboWS2v
	5pN1xNJrL1fDNaWp4wasAdDP1roTenRrPDWE7gJI/pxiRmR1/6blohxBpdKibeUXn+Pj
	ddknNtin3FtgIzFXbkbEXgI7K58GMZwq8TZ40Lkt6E9kLm8D90alzAgDacAp8KixwES7
	2Fyg==
X-Gm-Message-State: AGRZ1gIHevT7W9fsIA7+203RAcPeNkxT0uFw1pSgjZHt0Ia8uAPdzEoQ
	F6VFq/W4yamRRpIiWsBsYlTEsDRpa74=
X-Google-Smtp-Source: AJdET5dNHTZgHS3qV3HoPQQgJt/1c3DS29hC1OARHe95j/zJ4QjJ8k6UzEeznZH2DiYbOQOdbsXjTw==
X-Received: by 2002:a1c:27c5:: with SMTP id
	n188-v6mr3691252wmn.88.1540621502076; 
	Fri, 26 Oct 2018 23:25:02 -0700 (PDT)
Received: from localhost.localdomain ([195.11.164.221])
	by smtp.gmail.com with ESMTPSA id
	c24-v6sm21528848wre.44.2018.10.26.23.25.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Oct 2018 23:25:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Sat, 27 Oct 2018 07:24:55 +0100
Message-Id: <1540621496-21289-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540621496-21289-1-git-send-email-akuster808@gmail.com>
References: <1540621496-21289-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] packagegroup-security-tpm2: add and remove packages
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
X-List-Received-Date: Sat, 27 Oct 2018 06:25:05 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 099e01c..c4c8fb2 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "Security packagegroup for Poky"
+DESCRIPTION = "TPM2 packagegroup for Security"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
@@ -14,5 +14,5 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     libtss2 \
     libtss2-tcti-device \
     libtss2-tcti-mssim \
-    resourcemgr \
+    tpm2-abrmd \
     "
-- 
2.7.4


