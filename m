Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEEDBE00DE1; Wed, 19 Jun 2019 22:49:12 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7448E00D38
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 22:49:11 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id s27so980726pgl.2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 22:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=I7iLe9S196pWldJOdq+Z+cZ9ngUtK9gOs6nhvZ2Hay0=;
	b=LRiNDOu8K2v8/2fBs2tiz/wP1eSZnvgC9HUklDT1LZK/aECxIu639niDPolWR96eyM
	WZy1uYi1C6VMEPX4qXD4+jKrKWox2kbi6pFrHaZDWt77i2Rqd9Oz7/jRCtF+E1u6SRKT
	ekE/tO7qaw2Np20LjAm5UlW4hl+sOS6LpwmbQtVM+uRj0OywDtQN4V146AfPEMYPy+xu
	PfVLJ5w+ebKLgCxgszXVcnXHtoErsczNrY6nMDwtQMBYxjuVuKpZAGsJSToA0c6O55um
	UGkv1FXf1Xh5caU9C57p4/4zYxg6Z3fjzo6vLZJIDKzpewpLJzUYPXPm1Jcus51MiSIP
	iDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=I7iLe9S196pWldJOdq+Z+cZ9ngUtK9gOs6nhvZ2Hay0=;
	b=L4jpAwTNFBIZv88hKHAZ9VP6hwjdJ/fdED89YwgSyvoTZUOoS9b7WLSzJVy33jVzc4
	e2AQzY/XdhYIxDYkKtZ9nnxqSDsv3UU97PqtbGHaEQ9z6aJN5bJY2+SRoVt2yXUimZXS
	fz1AzTnv3Iku+z4db9zX6IrrklULTiM+Q1tXxmvlLnoHFxkKHP+cvBOmmNnaPL8lr0zf
	cHVfvs8yH5JbtHOH9CiqTOOt7om0Xo7D0G/aQhigxzFh/dvvp9YDse743GLKGmpxnKGa
	ATnhFy/wYdVvAz+pYbHwWG1Ba23k1rm6wf1kqdd/nOgtOBjp82VJEjMlwCQCT5+xepHr
	JXvA==
X-Gm-Message-State: APjAAAV5ln//cRyDDVOQQCoNs14x/SKTYEP0/fPhaIeoiXfM7JPkXJ1L
	1GgoiYyUQcztnZNMJTTTh3VH6uzhV7g=
X-Google-Smtp-Source: APXvYqxn2IkG/2ImKnDaPoYGvT/F5IHCXFPnWn6swGmycQixmwRNkjRC2TbCKfCWgMDCJzU92DSpXw==
X-Received: by 2002:a17:90a:32ed:: with SMTP id
	l100mr1226098pjb.11.1561009751173; 
	Wed, 19 Jun 2019 22:49:11 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	q1sm27600666pfn.178.2019.06.19.22.49.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Jun 2019 22:49:10 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Jun 2019 22:49:08 -0700
Message-Id: <20190620054908.20554-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-integrity][PATCH] ima-evm-utils: update to tip
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
X-List-Received-Date: Thu, 20 Jun 2019 05:49:12 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index 929d853..623de09 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -7,7 +7,7 @@ DEPENDS += "openssl attr keyutils"
 DEPENDS_class-native += "openssl-native keyutils-native"
 
 PV = "1.0+git${SRCPV}"
-SRCREV = "0267fa16990fd0ddcc89984a8e55b27d43e80167"
+SRCREV = "782224f33cd711050cbf6146a12122cd73f9136b"
 SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils"
 
 # Documentation depends on asciidoc, which we do not have, so
-- 
2.17.1


