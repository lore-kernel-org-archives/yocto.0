Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0958E00E07; Wed, 24 Jul 2019 05:38:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.167.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8FF8E00DCE
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:44 -0700 (PDT)
Received: by mail-lf1-f66.google.com with SMTP id v85so31813975lfa.6
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=bMfvNGs9uoCcblg2I+cidFtni/RzFna6+07ah+x3ztQ=;
	b=JZke/x0trNV8nPqVLAlyqQDW7HZv783KMcpjn8lkQC44RVQ0820Dtyi9Wf3gCxtS0X
	JdIucw5DnumkZF6BTe5YGblcLybYZeYdnN+Hhfifp1AR+GG38senDQNWBVyNV7Wj1ogQ
	jcrPBa1/sNxb8HS7+4vZFSjDP3q6hjR6hO/1eNkwr6YRuCEo9x0ThOt4nUeDllIceJ9B
	KI1XI0dF/cBimeVtcDRvRAe8JRRT6VNb2H+FjS5Mv61yPDFFOO5Ij5zqaR66WM2Xk0rk
	m0GadDX1vl4uw6J95pYJPHJTnYquwhMBv7vepa5hcpPNmJ/QAHhGujx549mWd92KCNhL
	4Zuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=bMfvNGs9uoCcblg2I+cidFtni/RzFna6+07ah+x3ztQ=;
	b=pvCFzW6dhkiJseGbkFbAMrdiRJqsYJ87iV1Gdbm4eNjbDlY/Ly6StjLISpY5/0sXf9
	84mOmL0sn+EeVkoG3M3KuE7mgtDdsB0MBis97cj1nkrfsy+80GW8r/w0MiVJBMPS8p4Q
	hSybNlxnoU8oNPCeEz9uJIrBXv6vmSQKQ5mVm5phzmcqMNGC41ICNNfWRnxmMKMsWMow
	J6YJa0mu5DiH5oyU35NiT4ylTL6SeRLSFNDODHH09tHlUWMWa/WzOtgbjuu9lDpHeBVg
	e7l5DFlmsYE5Mj9Szi6smdt2TmcKfFL8kyZ/JpSgviWEmpFnm8lHBOojdwkETNvFJSyk
	HurA==
X-Gm-Message-State: APjAAAVoVt8P6h0PGDttM+Zx3s/FwEGKqXoqaoqQawKASkN2PT/swotA
	UpXClOktWSgmSDjXnAswjl3N0/kFCng=
X-Google-Smtp-Source: APXvYqxxY1KvvF3+6xYUSXDdiMrJ7+TDQd5jbmCVBvTeXhVPiFwMqsg+dxXvla9A14fVeD9Xw7aq6w==
X-Received: by 2002:a05:6512:1d2:: with SMTP id
	f18mr37493259lfp.173.1563971923609; 
	Wed, 24 Jul 2019 05:38:43 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id
	p15sm8694423lji.80.2019.07.24.05.38.42
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 05:38:42 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 15:38:32 +0300
Message-Id: <20190724123832.17417-6-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724123832.17417-1-dbaryshkov@gmail.com>
References: <20190724123832.17417-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH 6/6] tpm2-tcti-uefi: build and install examples
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
X-List-Received-Date: Wed, 24 Jul 2019 12:38:46 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Examples are usefull to actually check TPM2 from UEFI shell. Add them to
tpm2-tcti-uefi package.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb          | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 78392289d7d9..958bb603aa7a 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -13,6 +13,17 @@ S = "${WORKDIR}/git"
 
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
 
@@ -23,3 +34,5 @@ EXTRA_OECONF_append = "\
     --with-efi-lds=${STAGING_LIBDIR_NATIVE}/elf_${EFI_ARCH}_efi.lds \
 "
 RDEPENDS_${PN} = "gnu-efi"
+
+FILES_${PN} += "${EFIDIR}"
-- 
2.20.1


