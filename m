Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6084E00E08; Fri, 16 Aug 2019 03:28:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EEFAE00BF8
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 03:28:07 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id z1so1044251wru.13
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 03:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=2dZpXOffrSx9cukSTb2T3RpE6ZGPrP5uYkHT+FDg2dk=;
	b=UFWGWGlRIU+k/vom0+n2DXEePsdmDloA1P6bRR2ZxrJyRLFgHP4oAy8S/rCEHev/Kw
	SIpPB1YkCIyLgiyr3up+3eqHMlhQFZV25RLnuFKMsqL+oIkUJmnueKRKndULHGQNnlWG
	8J1o9376DuCzRb5g3LyhGCa17gSomh/LBILS9iqR99A8uk7OwB630bgQmCi9pgBMD/bC
	ZOQuAJaYg5jkzXf00GVni/AfopuLBpPmUyKzEVFBVs2geoc/hMCDMadMLsXxVH2+yQyi
	aR5Ld9NRiL6rMI3NhBeBrsmeamgJ5bSjNCfHmVEvKQhrtMJY9/oD+ck63MLrFcjO4AFC
	mKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2dZpXOffrSx9cukSTb2T3RpE6ZGPrP5uYkHT+FDg2dk=;
	b=rwjP0jC7/FKigTT4UuezOFyC0pZKcAu5CRYQkSc5XpO/pghltEYMVkt4ny8t5A8JY7
	yIMs0L3mxSpLLGKkVfBW1ehLXdhpoksyS8sfBW0L0iidZscluL7UjP/PCGH+GfDWh3/N
	HqC+oEchl3Snx1/VJ7O/3B0a/sQeJsLGXfMjkoAs5eitsbTt1C4wbTBj5BwCMDzIlDfE
	a3szWpeeII5QYxWJz4olU+UWd41xHs1/fOeH3XyzZjAs9Cv52QJ6SbLHBnE+MWHd18An
	SVEYIx+Jw2XSMCobshj+QOuQNRVyS5dke78vgYE+8MyK/zfJqj+CFjZe7cJokD87ZtZa
	JQsw==
X-Gm-Message-State: APjAAAX4y+NGsnQHKWBdZnwLaQAKpCN6NfknSQIL+J1N126N7/BVnRzI
	8y1SWjSwM6WrRdi0tbn8nmExPf9U4g0=
X-Google-Smtp-Source: APXvYqwzqcslJ/huh2bfnyiBjZwAdI1dl/lrvJOVl9EmBRxk+nCzldbMzz3d+Zq0IijU4bZnpbJQ9Q==
X-Received: by 2002:adf:e78c:: with SMTP id n12mr9695030wrm.83.1565951286085; 
	Fri, 16 Aug 2019 03:28:06 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id b3sm8503261wrm.72.2019.08.16.03.28.04
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 16 Aug 2019 03:28:05 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Aug 2019 10:28:09 +0000
Message-Id: <20190816102809.2701530-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] smack: add runtime dependency on python3-core
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
X-List-Received-Date: Fri, 16 Aug 2019 10:28:08 -0000

* fixes:
  ERROR: QA Issue: /usr/share/smack/smack_rules_gen contained in package smack requires /usr/bin/python3, but no providers found in RDEPENDS_smack? [file-rdeps]

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-mac/smack/smack_1.3.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index 246562a..f32d91b 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -48,7 +48,7 @@ INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
 FILES_${PN} += "${sysconfdir}/init.d/smack"
 FILES_${PN}-ptest += "generator"
 
-RDEPENDS_${PN} += "coreutils"
+RDEPENDS_${PN} += "coreutils python3-core"
 RDEPENDS_${PN}-ptest += "make bash bc"
 
 BBCLASSEXTEND = "native"
-- 
2.17.1


