Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B6C5E00C27; Sat, 24 Aug 2019 20:54:06 -0700 (PDT)
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
	*      [209.85.215.177 listed in list.dnswl.org]
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F063E00B6C
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 20:54:05 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id i18so8283083pgl.11
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 20:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=2EdIsszimqv4CD5utsPORdtQ3ijZ/3nx53m2Ec+c4g4=;
	b=VTZPMptomJZmqfVt766Tt/E9XTpv5DETfZ7NrbFK9Zk/nm4jylZWZ5xwdIrMRBhPPm
	Ac9JnrMMFza9sI/X8k3KmFiAVo4ifzaZS69XJHoI35PQEBESaQW979mtFm0Rl/HOpNte
	WQjCiM+5cSxkoKJExDcnee3E+u6bxaIUXe5KrnVSDHp7DgCLenr8q36qoSbvLoOsvcOn
	jC3LkXnxMdw54ydkeWJQFCLaDKYsHekonVHQ551v2epBTgp+WD1EEmbh1vY+eqU3l3BP
	cnR+j5AVz2CFLKlr6o1TjpVU3ikGrh9EnArmPI2JBnCU3mzhA6sRERvjqv4el6yU6fnV
	yCjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=2EdIsszimqv4CD5utsPORdtQ3ijZ/3nx53m2Ec+c4g4=;
	b=pesLDqAuihCPIkKpou/u3gucYkDekQ9D6HoZPYspbx81Fy1qSfKHn/7siuwD0WVhtX
	O6IUYMokrNcWKHSJWCQi/031BTXCLOUY9VadCgEvdl+INbLQZ3HlkZryVrXEbUEmInnu
	q1kWsk3CdI9Zry8KTpYQH5XKTxGW0fFlChJ8sUOE9Fn8xtWUzXifXtqQ3cN6hx7+Wl7+
	uNcMGZx9KU9FRKXnUuDgk2QSW4ODfOS/j9litddh9E/K5uhJZ+O8ikMDKgbmw/x/u+d+
	Ic9Rusj954DVxuzV7272CWirMMg5My3b5jolSwX9wJwnYNfC7dDJ+xwqScHt4AjCwMKy
	D5Wg==
X-Gm-Message-State: APjAAAW2YKK8EJk3USSEKEiWBaGs0GRIJLNYHQ3+Zk+NuvJ56kHQHuP6
	caUVzchENS5lULHOveQzZUwv2aiS
X-Google-Smtp-Source: APXvYqxofCUbJzSyfgJbRvWv8oc77LTTi6a0InKicMwGEqTn+PgK6t7SgUNFyRrMutjGujUp68UfCw==
X-Received: by 2002:a65:4c4d:: with SMTP id l13mr10408570pgr.156.1566705244521;
	Sat, 24 Aug 2019 20:54:04 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	t23sm7662213pfl.154.2019.08.24.20.54.03 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 24 Aug 2019 20:54:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 24 Aug 2019 20:54:01 -0700
Message-Id: <20190825035401.9120-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] integrity-image: IMA_EVM_KEY_DIR has no affect, remove
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
X-List-Received-Date: Sun, 25 Aug 2019 03:54:06 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/recipes-core/images/integrity-image-minimal.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index e1bc6ff..1a3a30a 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -17,6 +17,5 @@ inherit core-image
 export IMAGE_BASENAME = "integrity-image-minimal"
 
 INHERIT += "ima-evm-rootfs"
-IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
 
 QB_KERNEL_CMDLINE_APPEND_append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
-- 
2.17.1


