Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6DAFE00DA7; Wed, 24 Jul 2019 06:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6C89E00AB4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:41 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id i21so44451273ljj.3
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=93vLc05lWPBbUdmyxSFraVw3fyQ1F1s4bw0yuyx86/g=;
	b=RC1X9uytdLXjJbtpWYcr1ucAMjmpl5ARyNeagxUc945SHPsxFoz6C46wn6///d8USn
	JPh2qp1ubGxFXeViWuQaGKEb7IevO65M3IPO+gi9Cn9C9dcB+CiJsotorQG/haalhJNy
	nUucU/F8FSf74Fn3QQVtfezDCqfGqGhM8tTaHn9MZ4AmlViEEqujaccFjAQMbeCAweAV
	Pv21haPrTEwA6Zqk051E+V+l5B3Avzc0IWAtcXLUtBWeQQj7mYA6X9lQWzp9btVazASr
	QnemEO1vlOaotE77H9jMSzkQgrvv0ujaz7kfH5V5u9+LC8TLPD6qawA7y5qqDZ43vzC2
	EWzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=93vLc05lWPBbUdmyxSFraVw3fyQ1F1s4bw0yuyx86/g=;
	b=ASlfHQxLxM7eTLTLngzkUUWebthSae2wDZ6MZ2cRZ64ny+fOX65PKULHpDOS2uIWBI
	gbxK+EUg9Q2hgTEKJcWTtj+ABuAnt8tq6gGEqBBwk6jMOKDfNGb5w5lJDV8tzNIFhC9G
	zR+mANjWI6vrw8T1rdu1ab3TSFTbRGwK67D6EO4QH/zycXapvtMzOED7nVgNOexXg88k
	zwh6QdnYwHlC47YORorH3Lqp0g+kwfZQo5nS22EneUVsVtubnPyi5xQSA2/lQd/WYt+I
	76hs7FKIMzRczaIFBqk0X5cJNr6zPvy4SsW8J1dYltX+BrVLRB/6nicKQNlPxU9RytZx
	5ZxA==
X-Gm-Message-State: APjAAAXif6gs010Y3OlAm0Q3QW4M3ZZRZtKux2q2GyLC3fgDtSeB5R/D
	oLHjMRhGb5hf9ogTj8TYgH8/6AjZAU0=
X-Google-Smtp-Source: APXvYqy6xaTTbMziIambCDuIK8QM6aIzmv2SIrYfCrI4QvSDUjLIxTU/MwWDAE1Ak4ODvomN7B3nKA==
X-Received: by 2002:a2e:8801:: with SMTP id x1mr42165486ljh.1.1563973420082;
	Wed, 24 Jul 2019 06:03:40 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id 2sm8557038lji.94.2019.07.24.06.03.38
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 06:03:39 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 16:03:32 +0300
Message-Id: <20190724130337.24454-1-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH v2 1/6] packagegroup-security-tpm2: stop including tpm2-tcti-uefi
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
X-List-Received-Date: Wed, 24 Jul 2019 13:03:42 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

tpm2-tcti-uefi is a EFI module, so it should not be included in the
rootfs.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb    | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 9296d9967e32..8f5c537b9505 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -21,6 +21,3 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     ibmswtpm2 \
     cryptsetup-tpm-incubator \
     "
-
-RDEPENDS_packagegroup-security-tpm2_append_x86 = " tpm2-tcti-uefi"
-RDEPENDS_packagegroup-security-tpm2_append_x86-64 = " tpm2-tcti-uefi"
-- 
2.20.1


