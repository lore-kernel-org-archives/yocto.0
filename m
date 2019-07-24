Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD19FE00D9F; Wed, 24 Jul 2019 05:38:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F13B1E00D53
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:35 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id k18so44332652ljc.11
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=93vLc05lWPBbUdmyxSFraVw3fyQ1F1s4bw0yuyx86/g=;
	b=c6BdHyqRxM4w0tAgQGjEyexysRkd+EYQaeVeZ6xZhmrDEC8qVA7Y368ZLlE3OmYLEn
	2FkGYl/A6o6CjyOGVtyt51mhB1OeQp/sssO9O9SZSpuYNPDQtv+OVwla2JugafxCCYU1
	g5xEtEmLkrJakUKiewAybyolZvDxsm2WWRkYBHJrYJbViWqdJjUAgVTErUg4ESttdszD
	xPqpk4FSQVsm/VjHwpk94K5sCrcwRJcqEOlfRksnu2ATOcyL67ORw4ZvXQHLSBcOydjv
	VF+cHWcOGTXHOi8KDT0F26iSv5NkF5jedPT9F6pAMlZFM1d1LEQpbX+CKuWKhRgF4pkD
	nL9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=93vLc05lWPBbUdmyxSFraVw3fyQ1F1s4bw0yuyx86/g=;
	b=A1hSsHCeesHqk2v7bMyy5maV6Eynj6F+9MRNtP0iE+tMKcfNos8rlnWothWGFtOkHo
	xF2QnVnWWpqUp45FdVlEeG92bUC5S77cDyxQ0SjBgwIEgMWjoQYJsR4R2FT8Ufwx6C/K
	0xLqDSntTDtWWfLIA61tro5U1u4/0EIVQ6pZXeo+7YM/R56X1Vsiqz4a4h0i9oNbsRK/
	4U9T6/pWL4EvEKIuBBN9dChHX9rgdxtOtzpb8cHflw1AK5oJxXi44/lqdObssq0ssaDp
	J0wEB1ieTqRO5/PFhkHvvDH28WWzHXnVlevoxuR2HQId+YQAtFEYBVhjfOmi5SNYZ2M5
	TS7A==
X-Gm-Message-State: APjAAAVyrDpJ/zqFnazyqXNQirGxX48WboLyMlvAljwpApVWsJSeEq2r
	sJfF6A1OS7zOusWUTWQX3owNTE+xaA8=
X-Google-Smtp-Source: APXvYqwskN6rH6jPhZazqz5wtAqFgQML0q/jyIFz3dsmANXAKgiD4QqHBnZoYBVTWUbOcBTSFd/2FQ==
X-Received: by 2002:a2e:9a58:: with SMTP id k24mr42847251ljj.165.1563971914590;
	Wed, 24 Jul 2019 05:38:34 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id
	p15sm8694423lji.80.2019.07.24.05.38.33
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 05:38:33 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 15:38:27 +0300
Message-Id: <20190724123832.17417-1-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH 1/6] packagegroup-security-tpm2: stop including tpm2-tcti-uefi
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
X-List-Received-Date: Wed, 24 Jul 2019 12:38:36 -0000
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


