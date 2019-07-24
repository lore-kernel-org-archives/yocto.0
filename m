Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7712E00DD2; Wed, 24 Jul 2019 06:03:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.42 listed in list.dnswl.org]
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD28CE00DF8
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:48 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id z15so27629313lfh.13
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=Wugs3SAIo9To4ydzWlN6rSEwnJwHGFaf0Rn4fHLmADA=;
	b=lk/4865/CSeraXf51AgOITftvIriifEzeoh54Ei1r5k7Qwl6erGWQxJfiuyZbJeDWQ
	kiijlDFp0GtfxhG6NOjjJ0R423/AMJayEKAqtsImS5ZWRphpulrgr6lBLfubNBJDYayH
	Jv2EMrTSPP1H4ufUV+x2jqOhgDFnP88CK4i/CsUOoKeqWADVDiBlNdFRSoMzo6puLMTO
	v7U2I5sZN11TcNBRQJXyNxVaMftmwYsB14Kcf3pVFfoY2yoov9dZCTSxx6GRGzF1f8lJ
	D6i2L/z5lR6vOEuk4Hb1UG5s0hD7HiLW+2RvwHIM6jY7i8c1ayc+pb3/cpYRCPE1o7Qa
	ZSGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Wugs3SAIo9To4ydzWlN6rSEwnJwHGFaf0Rn4fHLmADA=;
	b=aqDcd+fImYzpiRqQMp07UdCF4SmlNa3fCaFrxmbBFczpfCtamYaYPmDpvylOM9hZvS
	wgxcEWjrlPXV3zGMczYdSVK52yg+XTql4tsIy0S2E0rMB1FvIaurxPp/8GgZ7OoI3X3V
	hnjPkBmDx3CFHQsIQ518enE0MnXwGeET+AJS5LoQ/LT51vArZLbwMEPMQF9aTSgd7jbJ
	FrHAdh2nX6f0X/UsVNZ+RxWkRPTB2i8lRBLJyQY83K+TQc0MexhVjDn3bUwZetQi5wTX
	StUi7shJyd7EbZJrgqGMDpnIRocPzbVNQJ5gsNxjLD7i35dmYEkL6VH8j8wE1sVudH3l
	CxmQ==
X-Gm-Message-State: APjAAAX0nIenKNsXYH8rm3wgdte7W1pf1I8iRLwyNZ2nJG6gpIV9vCXd
	+74ybYp8N808+Qdvh4SOoBWUBTjBzW4=
X-Google-Smtp-Source: APXvYqyrfa77mCZF4+hmQ2Xk7uZAX1JB4sUnsJvf/FUh5NlWeZ7wWZtX4Ji1qQ135UcoFLleO3peFg==
X-Received: by 2002:ac2:4466:: with SMTP id y6mr38545566lfl.0.1563973426988;
	Wed, 24 Jul 2019 06:03:46 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id 2sm8557038lji.94.2019.07.24.06.03.45
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 06:03:45 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 16:03:37 +0300
Message-Id: <20190724130337.24454-6-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724130337.24454-1-dbaryshkov@gmail.com>
References: <20190724130337.24454-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH v2 6/6] tpm2-tcti-uefi: build and install examples
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
X-List-Received-Date: Wed, 24 Jul 2019 13:03:52 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Examples are usefull to actually check TPM2 from UEFI shell. Add them to
tpm2-tcti-uefi package.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb          | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index b2d0b85af280..e822e2974f37 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -14,6 +14,17 @@ S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
 
+EFIDIR ?= "/EFI/BOOT"
+
+do_compile_append() {
+	oe_runmake example
+}
+
+do_install_append() {
+	install -d "${D}${EFIDIR}"
+	install -m 0755 "${B}"/example/*.efi "${D}${EFIDIR}"
+}
+
 EFI_ARCH_x86 = "ia32"
 EFI_ARCH_x86-64 = "x86_64"
 
@@ -24,3 +35,5 @@ EXTRA_OECONF_append = "\
     --with-efi-lds=${STAGING_LIBDIR_NATIVE}/elf_${EFI_ARCH}_efi.lds \
 "
 RDEPENDS_${PN} = "gnu-efi"
+
+FILES_${PN} += "${EFIDIR}"
-- 
2.20.1


