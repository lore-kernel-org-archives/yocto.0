Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D2BFE00B23; Thu, 25 Oct 2018 00:22:36 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E876CE00AD8
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 00:22:34 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id f10-v6so3456188plr.1
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 00:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=PnUIZGj9OSzaRdD28oyzExokY7PTPI1giSMqi+1QqNg=;
	b=dqa8w9J2uNqje7hE5a3rHBxSXEoEqfKUn9LQX/chwNBolLRTAXjLGgvY863yCpFwvd
	kajxwEOBDOKrc+2cgIZHhcQbVAOPivmVa17Azude/wFnJYCWyWDXGStPtADYqNdSF/4T
	cs7JRxgFjXjpo8S2pac0zmwNtIiL/ulCE63dgEOgHOOgezq8D4LesZ56aOXoDwvkoa8s
	2Q9CdLSC1maTEYoECJinfBnUtU1OnPOLXNO69PW7SeRlfK+viXsM2oGhlspxHtbbJwN/
	KQ+8h+Wr9nsiLg8Utermmr/WTYWPZsZkhsEDYqyXCuGlmbva25I28RKE8e9tcaUaCQq5
	4PXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=PnUIZGj9OSzaRdD28oyzExokY7PTPI1giSMqi+1QqNg=;
	b=lbJ3z3Far5OfEMUq64Wh9Jiepm2Ed+k7L/AeA8iDUBEZIY86vmD+qtl8N9WLA3FJTP
	o2QQKdbueRTDvWjGraRTteXK37oQFtFLxdzjmQi0pxxdekfBRDV8FiI1VKBu1jfQllBR
	dlFeV9HTjKKFcaa2oJsaQR52T/gmYvGsH3/CQqKETkkgahLu1VA9I1psYzH3tgb2qa7k
	iC4vD8DLTxNtfrJg9tuHyYYpNzrfkG1P6ZCrBXNpHm/QTkAV5VoyOVhNhIn5eUCaMXf5
	QQYUgZh2IrtEBhWckCY+9t/272nO+b2NslKhPPXH6CcN+CL1RB8xvvX49VN6bllFdkk0
	sYVw==
X-Gm-Message-State: AGRZ1gKtURKTuX3t1V7ugr6slaCJp8BT0Jv4Cn/IdM0F0BK1aCE85Rf3
	OKqd2wo1xWBrvhmaCHrPFRXX0RfpF4w=
X-Google-Smtp-Source: AJdET5dEnqev2qDdxzaBU7qsY72vG0Mg7i6uE1r3fxHNo88RtMOVB1fV9Zl2wFQL9oMb45gymNq6lg==
X-Received: by 2002:a17:902:22a:: with SMTP id
	39-v6mr411746plc.267.1540452154009; 
	Thu, 25 Oct 2018 00:22:34 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([185.7.230.213])
	by smtp.gmail.com with ESMTPSA id
	h3-v6sm2168053pfa.128.2018.10.25.00.22.32
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Oct 2018 00:22:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Oct 2018 08:22:29 +0100
Message-Id: <1540452149-22872-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] os-release: remove OS_RELEASE_FEILD extending
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
X-List-Received-Date: Thu, 25 Oct 2018 07:22:36 -0000

depends on the OS_RELEASRE_FEILD os-release changes in core
otherwise yocto-check-layer will fail

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/recipes-core/os-release/os-release.bbappend | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-security-compliance/recipes-core/os-release/os-release.bbappend b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
index e9fd44a..604bacb 100644
--- a/meta-security-compliance/recipes-core/os-release/os-release.bbappend
+++ b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
@@ -1,4 +1 @@
-OS_RELEASE_FIELDS += "CPE_NAME"
-
 CPE_NAME="cpe:/o:openembedded:nodistro:0"
-
-- 
2.7.4


