Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76530E00B5E; Wed, 17 Oct 2018 12:25:48 -0700 (PDT)
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
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BAC6E00AB9
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 12:25:47 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id n31-v6so12993710pgm.7
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 12:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=+ZLEVgWmpM8YyHPDayD7kBkTIBrTfMi1zTQhg2qFueE=;
	b=G1fKnHkeQrnjAXJoDSPfDT8ST2ST/MoPmjYixY2O9oKjsSZBIlWYAQ79bKi7a8y9ye
	PW14iKltK/3Rv7IcSMPY9MySm2S60oDT8WCtGIQO3oZ1hpeuDV6sRw4khr8J00yZ/X6s
	GVPo0+8u9pr77WBsQwzZFNmz5pZojwpGWWLsgHVZ9PkSfoiVhVZkWWalO111BKzyA9X0
	z0j1E0PQ8GtCqIqttKxqsl2q8MRCYc4HirQCjTfDq2HMPf/xk2TH7qZZWOJU9ZothlY+
	5zi8DtZmD8otUkDzHgAC87ZLbjGCcBfVGoRhm76QD1W+N5xqYvhlsv/dD81wvDy9bgRh
	51TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=+ZLEVgWmpM8YyHPDayD7kBkTIBrTfMi1zTQhg2qFueE=;
	b=fzksDqu9UdjsojPU4bAWfBVhyR4haGem9/hyxnn/eF9EHfQG3PoPJ5GPBmDkghO/J7
	lWEdZ+L6b7DMrkzbnKVNzsdDdXILLLlK3IRW3fX3Qc2uYXaOh1gbNQMCDK36V6HRO5TL
	JcJyLmrOLCDYR7FhDVMX9oNxG3zvO7UXxmdVj9epS6wkZD/uPceWIBmvV+nr+xk3GSAZ
	gsv/pE4YjjEqMdU63H5kkLodEYSCRjT6Iouw4SutP6CImnpU+xLXhLkAh7zfNDF3ceog
	yleLt0RsftC56CPNAnllRAqXyHK8UFnMKCvWtrUCD/Fte3XqE68ByNmDAY598Kx+AZyg
	phFQ==
X-Gm-Message-State: ABuFfoj7oGAhY/j9ts6vRmb70nYKSUw1fYpMLZ8h7Bi1aHrrQHXr3X9u
	F2EojlQkaPWpyDEq/6nGZwn6yq8j
X-Google-Smtp-Source: ACcGV61wVuT365I2WjqZqkubGpiETJmWqU8/lXtezPTTxdL8ehaNA/isi2YxvLQauMTNWUbFvSLJzQ==
X-Received: by 2002:a63:d753:: with SMTP id
	w19-v6mr25216238pgi.415.1539804347460; 
	Wed, 17 Oct 2018 12:25:47 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:e9ce:55a:1407:e711])
	by smtp.gmail.com with ESMTPSA id
	a79-v6sm26875598pfa.124.2018.10.17.12.25.46
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 17 Oct 2018 12:25:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Oct 2018 12:25:45 -0700
Message-Id: <1539804345-17080-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] tpm2 packagegroup: fix filenames
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
X-List-Received-Date: Wed, 17 Oct 2018 19:25:48 -0000

tpm2.0-tss package names changed, update accordingly

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 13b505f..099e01c 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -12,7 +12,7 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2.0-tools \
     trousers \
     libtss2 \
-    libtctidevice \
-    libtctisocket \
+    libtss2-tcti-device \
+    libtss2-tcti-mssim \
     resourcemgr \
     "
-- 
2.7.4


