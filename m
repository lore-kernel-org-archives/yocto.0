Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3DBCE00DD1; Wed, 24 Jul 2019 05:38:39 -0700 (PDT)
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
	*      [209.85.208.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55AD3E00DA7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:38 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id v18so44313355ljh.6
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=vjJg6febnf/ik6V7w9tR4hY2mlgY+MZlvcfIc751kww=;
	b=igRehdmXcy4qwfh4OHE5JFr/AQ5gXUfMyPdcsw0kASLexSF+Z+Gs08qiO0EoUgkI6U
	foHHiQdbKBOpXJRYNlTpR7OfOxmuuEgogx4Vbp0s66hG5jXkqDsCi3aw2ZTOYwYpTsNH
	uM0IeKyoiuuSjScoriPctvTkTkjDjujIRIAHYcj9+FseIlxW4KnPYwET93U9uTxkBRAR
	Q1EjwsSlLCaWwKrLZu/FcXlTbM8PTJR1PUxVKV4HTMWIrSIhuK0J822eN9bdZ6p2YPvC
	facEkSKke76ptnjq/sDauumqEyrBfbqvXocU5UV16it3Ple1rWxvv7/AZHAeKyua8DjM
	nsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=vjJg6febnf/ik6V7w9tR4hY2mlgY+MZlvcfIc751kww=;
	b=fP1pPR/OwNlDEsWPEUVTy4BvjDy7TO1w0h111PgEEO3R2RSaqPaUkY5tQc+zYXO3Ug
	4QPTJqnlVmSi4oGe1qTIofQgcBNtqIi7pN1IE2w1OULSbVg+zFXUA5TWTQ8VxbwKiQ84
	gZX5FFIR4aBN4WGwVU51MxUu/+bLOSiIeh8aRJU6OMynTX576lA/zgMUIn81sGIa/iVx
	ZaJ+hMqw/Sd6Vex7IZDnW4jrq8pFBWQzu1sBbQ0iZAlfSLTDZi/ehxRTSigCADTGHFa3
	8fWiZ/pRjYiB3doPzSUmU1gdxTDDdi3tIw8oyHs8hQY0g7dNfFdFDI5/Hcp0ozYHfD9j
	YNQQ==
X-Gm-Message-State: APjAAAU0QNS8F2k3W9U3eRvZggYXEjO3OJzOc8mEYk1kdWvEDzpQGdZy
	jWW6TuHom0YfA1eKVzXZCPonzijCrjM=
X-Google-Smtp-Source: APXvYqw6dNnWdrsfvS3Qq1TZds7N42QnjZ+MVIokZuLWDb8+a/SoGzn5KiLEPDSHo9N/cxSdySEVww==
X-Received: by 2002:a2e:9bc6:: with SMTP id w6mr44035300ljj.156.1563971916949; 
	Wed, 24 Jul 2019 05:38:36 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id
	p15sm8694423lji.80.2019.07.24.05.38.35
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 05:38:36 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 15:38:29 +0300
Message-Id: <20190724123832.17417-3-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724123832.17417-1-dbaryshkov@gmail.com>
References: <20190724123832.17417-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH 3/6] tpm2-tcti-uefi: add autoconf-archive-native dependency
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
X-List-Received-Date: Wed, 24 Jul 2019 12:38:39 -0000
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


