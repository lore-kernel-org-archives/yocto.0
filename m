Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F7D4E00DE4; Wed, 24 Jul 2019 06:03:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FBC3E00DFA
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:45 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id x25so44482881ljh.2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=vDse2z4YvQ64lNz5PUH3n5I9sDN1rm7wLaC3vwxh5o0=;
	b=dInKFlI680Vp9+EcX6lKC1acIOvtHlM5if4YMAhTrrrcOGPT0W/cma3gAAdcMociD8
	7143kvagGaumlQzqGEZMTvIk4eL3qNjLEHpNYwdDz7WKGwk+qjwrP9l1DkYd6d/IWa5d
	Si+mwdQtKjIDTc4l3x2UDHzusS3sjF9wil3hIgrk4GwkRs6OwIWOvSkHx/FU64FVW7kX
	ZtFRuh0uAtnv0yT02iezhSdtqaW99ZrCokbCZccQ2jR1P7CGghOtypufhlRhQdOu8Nci
	AyCGiliJt6h+LE+VwJN5Zh09BtwKNGUcaKrjjsRVYt0NBYUI6nTJDHn65p/RaZDoV77e
	17bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=vDse2z4YvQ64lNz5PUH3n5I9sDN1rm7wLaC3vwxh5o0=;
	b=rGUObofhvKp+mNklQQ20CCVTXwGZdnJyIcBPUDJjOvysAlXrXpOyUDpQPLj9XZNCY8
	YsY2hteWBSqBxByI4TvHAWPBUhJZens3jBAzquxwLEzCJyCZgqgE28spNVsefrDX2nUh
	Nby5aMMkYM+epMHPk7pVGZBJMF2RZzxkFNquT0yLAeZtkEBIbWXgy+05YAcOw8rp5VmB
	GUtL2nOwy/JHwJqyJ5yzkjFVoDhWk2NnpMU5gGB3sqgn1n2wM2RLAhwZFdMU+7vqic4z
	KKsrHNrH9LZ7X69YIZrqcWnHCOx22CL+1BYOTgQ9MIfBhvEoOMA7+ynQjb6tflQ9eKWf
	2/Ug==
X-Gm-Message-State: APjAAAVJ5fFYv4+1yIJVLupk32bQhkoJrFVnP0ysIxU8YXJzhViUyz4+
	BmTHQkuWPTC0/DvSrcoJh2op/twWl68=
X-Google-Smtp-Source: APXvYqx2yQVi5MNavZzR1QuceK2EbT3FnfY4FlExqYkBdLn/A+AA+yaYMtMcW5SfxHWsH3j9Pand2Q==
X-Received: by 2002:a2e:9dca:: with SMTP id x10mr42262078ljj.17.1563973424165; 
	Wed, 24 Jul 2019 06:03:44 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id 2sm8557038lji.94.2019.07.24.06.03.42
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 06:03:43 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 16:03:35 +0300
Message-Id: <20190724130337.24454-4-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724130337.24454-1-dbaryshkov@gmail.com>
References: <20190724130337.24454-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH v2 4/6] tpm2-tcti-uefi: fix configure arguments
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
X-List-Received-Date: Wed, 24 Jul 2019 13:03:46 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Pass correct location of EFI's crt0 and ld script.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb  | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 983f72ebeb68..03140506931d 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -13,6 +13,13 @@ S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
 
+EFI_ARCH_x86 = "ia32"
+EFI_ARCH_x86-64 = "x86_64"
+
 COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
-EXTRA_OECONF_append = " --with-efi-includedir=${STAGING_INCDIR}/efi --with-efi-lds=${STAGING_LIBDIR_NATIVE}/"
+EXTRA_OECONF_append = "\
+    --with-efi-includedir=${STAGING_INCDIR}/efi \
+    --with-efi-crt0=${STAGING_LIBDIR_NATIVE}/crt0-efi-${EFI_ARCH}.o \
+    --with-efi-lds=${STAGING_LIBDIR_NATIVE}/elf_${EFI_ARCH}_efi.lds \
+"
 RDEPENDS_${PN} = "gnu-efi"
-- 
2.20.1


