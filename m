Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 064E5E00B74; Tue,  9 May 2017 07:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 319AFE00B3F
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:10 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id s62so205522pgc.0
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=8E1JbSc5I0avDvP6bRPiRxQSn24K5FKghi6YVTgwCLU=;
	b=CYy+kNeLjPresLu/aje2ddA9oVsrD4x4kNgzeNbmTb6whRR0rAc5XGDi63Or3OUERm
	B//Zqo0Th/7xaTZwNpXr7xQ2YqndethWORAfpKMr32p6KADlgPLgxq3RJcgooO2mNc33
	ScCzH7CiksJi+pCXHhMnoT5JYgSsCBMBxsklSjKWzWbu+dFd0R5e/NNVAADrSbRySOrG
	3wDNts7fdWPQEx0fjO4odaWdmr2dyHL4VsvHjnDpu04PVcDvKr7baKXYWDQLRI1gFEHt
	QTbK747gsVbRj+4vY1/rCgnldmQowEEyTMr/U7Y8/04KFBiOb8VHDffi5KcSOxd4ZWrr
	8UKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=8E1JbSc5I0avDvP6bRPiRxQSn24K5FKghi6YVTgwCLU=;
	b=cgasRDRvFg1ip7FNDXoP6n6+NQ8gzmKU1g0gTtuopPrT3fCIBbfvBucR586/oMTsJQ
	EB3prXyBxBRb1669+dFbFGsJXtHhv2tSlkykIUJKQDHqJlGrQRp+fel33DDuPfW48OiM
	GMQAy445oZqM60j+SXn5ebSsewbXdcJsWZncmVLfQUWnEh6UIIKVCoRPhTwIrNcZrmvg
	7EsaAkN6BZSk32NKypKakxhlWasuY1JXY24wcLHLruw31FkaUbd6Ycz63Q70Zc1oSQMQ
	XGjqVtSgsbt9oKOhrwoCT7bBEAjM2HJHbhrPbZiAzRyQnGs6lBgj2lw+cNbu3c2eZgjv
	uY8w==
X-Gm-Message-State: AODbwcCMBPdus+2j862VOcd68XUGwGrLEVS6yoSbce6u6GkTVEpz2UND
	gLpIAYEElh6r4pkj
X-Received: by 10.99.44.83 with SMTP id s80mr535434pgs.95.1494341230759;
	Tue, 09 May 2017 07:47:10 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:59 -0700
Message-Id: <1494341221-17621-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 08/10] tpm-image: used for testing for now.
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
X-List-Received-Date: Tue, 09 May 2017 14:47:19 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/images/security-tpm-image.bb | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 meta-tpm/recipes-core/images/security-tpm-image.bb

diff --git a/meta-tpm/recipes-core/images/security-tpm-image.bb b/meta-tpm/recipes-core/images/security-tpm-image.bb
new file mode 100644
index 0000000..a337076
--- /dev/null
+++ b/meta-tpm/recipes-core/images/security-tpm-image.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "A small image for building meta-security packages"
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm',  'packagegroup-security-tpm',  '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2', '', d)} \
+    os-release \
+    ${CORE_IMAGE_EXTRA_INSTALL}"
+
+IMAGE_LINGUAS ?= " "
+
+LICENSE = "MIT"
+
+inherit core-image
+
+export IMAGE_BASENAME = "security-tpm-image"
-- 
2.7.4


