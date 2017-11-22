Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1092E00B48; Wed, 22 Nov 2017 05:06:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94B1EE006CA
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 05:06:47 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id u40so14457758wrf.10
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 05:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=VoeNNWtusYBU1pHhFJ1eYXHPzIEcG+L0OxMRxxnyuU4=;
	b=b9O07jqRvbZHljfXVxiipU6yfgtYSincmFWlZ+hDZWLLw73d/baGUgxS8LdC2P4cI7
	TJs4bZlmQlxASbkTWtpFYcLAUcQPwOE/AtjD0oWLlCvU9ELpSO4HOF9xQAcX793Ngfn6
	dxToIEPlaYjjm0ujdm5VEgw69UuqVs1MwUysXJkDh6LrRRADZl6MP0A3UmWfNEy6dbBd
	K+cv3AmyYqWO/Jvk9PZI0Oh4riSvRC5EopqPN5gRWsK+I0sGfnAdrYJh9CZCkEQWSvxp
	dlyrhjymSWLFnIKE4PT/QLvVTRDfOhgMYNmTzxFuAtQP5qSHUaMNZVTIFvRaDN1t8qyn
	+gIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VoeNNWtusYBU1pHhFJ1eYXHPzIEcG+L0OxMRxxnyuU4=;
	b=EaLeOHmFWSndvFOchgbcbUM/gjNf1sMAtFAqk89rWu1ZGl2OuDIWxtqRv6qMJ3phzt
	1oXDxK3Hs7GchGiRCNn7RrqF4N9fyXrdsWr19Ydu8jb6D2nVCZ4II+TZvSD0thOWluji
	h/m4F5xFrj2B0JV7Vo6sc0y4e5cV6cynAZbUAuUqpg8KXNkS/prqx2xUKeIfDBpKN0S5
	e4WftFksg7XYXsCSH8854wJsM6jp6uWq+/WuNaOaWDxHFnO1bfrbg8W4S4iB0RPTgbhX
	U2UqVhqaKS0dJ+85W2DEWeKnvT8Mr0HBWNi7hOIXpBLco6Q87756YziuIGkxxxEXyrRd
	lWeA==
X-Gm-Message-State: AJaThX5vNjA95SAMq2xOA/cEKRViUl2gTJuBJfnBStfafdYe5LfYxNyM
	hR3V0jh7axZcLMv5W4PNwSNIWw==
X-Google-Smtp-Source: AGs4zMagvx/h19siLF3VRIfayNjcZ7z1k5IxryVBhR+uUTC4ihJiaMWPK0+IJnPOfhmM5Z9Ro+paLw==
X-Received: by 10.223.139.73 with SMTP id v9mr19502464wra.77.1511356006153;
	Wed, 22 Nov 2017 05:06:46 -0800 (PST)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id
	y84sm2160104wmg.39.2017.11.22.05.06.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Nov 2017 05:06:45 -0800 (PST)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	maxin.john@intel.com
Date: Wed, 22 Nov 2017 14:05:48 +0100
Message-Id: <1511355948-12929-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-oracle-java][PATCH] Fix warning in do_populate_sysroot: sstate found an absolute path symlink
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
X-List-Received-Date: Wed, 22 Nov 2017 13:06:48 -0000

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 6b3aabe..1ec172f 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -16,10 +16,10 @@ do_install_class-native() {
 	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 
 	install -d				${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/javah		${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/jar		${D}${bindir}
+	ln -sf ../lib/jvm/${JDK_DIR}/bin/java		${D}${bindir}
+	ln -sf ../lib/jvm/${JDK_DIR}/bin/javac		${D}${bindir}
+	ln -sf ../lib/jvm/${JDK_DIR}/bin/javah		${D}${bindir}
+	ln -sf ../lib/jvm/${JDK_DIR}/bin/jar		${D}${bindir}
 
 	install -d				${D}${JDK_HOME}/bin
 	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
-- 
2.7.4


