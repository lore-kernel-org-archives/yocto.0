Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07F70E00E01; Wed, 24 Jul 2019 06:03:47 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8457FE00DB1
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:44 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id b17so31925778lff.7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=vjJg6febnf/ik6V7w9tR4hY2mlgY+MZlvcfIc751kww=;
	b=HxpCosQti7UhR+Au8ImZei0npOfDMDQ1jRDsV2v7OviUA9bC5xBmxzQLAitl+ESeXi
	0cYllYomC3AgFrF2UQ3EUBIj5A3AE3A0rVFP3n5rSvbmvjh4odmBezD7t0kAOURfh8jj
	YMoqbms7ASydpFSGLVPXb5EXyMz3kiJw1ELmiNYYQV/bg3osHCX2BeP6vhz310rjl2Kq
	8shszeNHUIkemXMy4lSXeko5t2MtKlyEpstUksR2wPXWCITQTC+BY+SFzOxzq0+xKE1h
	kjWS39+/mrCI4vR9uvwpgUmqVDxlpchiY4RNvVslySFHHl6rsArp0MXB7jX1c+BrDSJQ
	CJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=vjJg6febnf/ik6V7w9tR4hY2mlgY+MZlvcfIc751kww=;
	b=e08h6Lhsun3VsBcCKkrwGylkulowKtqEVwn7O1T5btxRlq8NF/uhivCcPhotm0S90Z
	uyraRCD/m+DLG31Hrh4YU6clNuGmuv0aoPGtr7sp6lYJmkQTRPqreyfEkQSxK8pqPKHC
	ckD9M1K2oMbTWrMZGfEKHxooB2u5sgc0vnspaqHlfGFu+BSLKCC3xEPOSzL5MksqVeQh
	Q5k6aZ6aMnJY0ipkh9gDA02/2QOxBWwpqe/mxala3TQfHFHCB0M+eMDcA6pe5hMQhUs5
	NDEi9tetg5xOH5mLJ+nh6qYwhu6IYemQ5bu/VVFsqrLFdnWKRQ0BdyBJPsXPdJ6HDfib
	KNbQ==
X-Gm-Message-State: APjAAAXyMm+dgILTd54r6IhaqUtreZKWwV2BXS9PCysFGlQtneR3oYQz
	qb/6PFNmm8Qo/9my3P7KYlvLn07ohGo=
X-Google-Smtp-Source: APXvYqzLinoEYReHVsx7ztbUb/KlgDGoV+cWFnRZJTF9xEMgXEQZ55bvJrh5/e2R3oudzt2gRfgTbQ==
X-Received: by 2002:ac2:44ce:: with SMTP id d14mr38661169lfm.143.1563973422831;
	Wed, 24 Jul 2019 06:03:42 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id 2sm8557038lji.94.2019.07.24.06.03.41
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 06:03:41 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 16:03:34 +0300
Message-Id: <20190724130337.24454-3-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724130337.24454-1-dbaryshkov@gmail.com>
References: <20190724130337.24454-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH v2 3/6] tpm2-tcti-uefi: add autoconf-archive-native dependency
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
X-List-Received-Date: Wed, 24 Jul 2019 13:03:47 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Add dependency on autoconf-archive-native to receive AX_* macro definitions.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 43854c414c22..983f72ebeb68 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -2,7 +2,7 @@ SUMMARY = "TCTI module for use with TSS2 libraries in UEFI environment"
 SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
-DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig"
+DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
            file://configure_oe_fixup.patch \
-- 
2.20.1


