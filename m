Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1464DE00C4D; Fri, 16 Nov 2018 07:36:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96B2BE00C18
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:36:28 -0800 (PST)
Received: by mail-it1-f196.google.com with SMTP id k141-v6so34852032itk.3
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Z/1y68m4X/g0quoOvftyHWSmoiHSPl7EsZK+bkoAyk0=;
	b=OQ0ErXEt3aQf/sAjyXBVOwx+I8Oe38xPSjkkj5jIbiejWckYkM1MLn6zf+nWuiSOT4
	3dfVKCG/NkJmniCf/3LR3xXp4vaL75qb3NHj7QOY1YzlmhTm/Zac2wJUiS0OsAOfE1HJ
	CEWtS4+MutovQavMZzLkEO8rzJoPmvPTXLq/X3/jbcxuVm1KzjVpbJxgFuDXoQF5etTj
	8MZpDrr3BIgA9bF7JUuoBpKagINn5bAjdLI9m9NgaAh7a4MVPd6F4dWA4lSf9KnyHtCF
	pUDFczwvX0t3GyU2RdD+bDilcm+sxvoeIsFSqtL5tJG6vFkV5oWJI4Y7310dAfF1YDgR
	H8FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Z/1y68m4X/g0quoOvftyHWSmoiHSPl7EsZK+bkoAyk0=;
	b=XHHGE4xi25v9EpokcBphTOc9LnL3GJjxt4XgUY0HPy786b8Y8h6FdSJ+rD9Ai5IiUb
	/94O4f+WtF85Z2pxf92SvIxPw7mcjMEGK+ThzgAJCef85RPFYpZlK8S4IBOGz1p9SN0x
	IL0ExkXjKGX5bFw8yyYOJwyGvBBmVSLQJo9u2CmC1hj4fujsSQ6w8tDgdoO74rRncT0C
	K0nH5WULEVXmsnOKt+7HU0y5PkskjoxuLg7pXnw4G9O4sQE+JGpD/6VVf0knvgOJrCWg
	XKYx0lOTTSrMXjlBcTHcAmSILJ4SRpFd+bexTtbg0B8UQPB/c9EGNtzjEbPSXClp0rMm
	jG6w==
X-Gm-Message-State: AGRZ1gIoSyt1unucdTWwM9MgLVwV0BXIsXRaKc6R8CcS5B3Hbxxb9yKk
	b2R4hokMyb5xxFJJRMqcyGsmD9P9xtQ=
X-Google-Smtp-Source: AJdET5dM7pRVdzdjGWV98KWnGgrnetsYf0f+E5cWx1SGe+hbeab/eURT+vViJEShBNAFUgl+BaFc5A==
X-Received: by 2002:a24:ce45:: with SMTP id
	v66-v6mr9728740itg.26.1542382587764; 
	Fri, 16 Nov 2018 07:36:27 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	r65-v6sm8051819ita.8.2018.11.16.07.36.26
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 16 Nov 2018 07:36:26 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Nov 2018 09:36:08 -0600
Message-Id: <20181116153608.24733-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] README: Add myself as a maintainer
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
X-List-Received-Date: Fri, 16 Nov 2018 15:36:29 -0000
Content-Transfer-Encoding: 8bit

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 README | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/README b/README
index 2ed1395..e866213 100644
--- a/README
+++ b/README
@@ -11,7 +11,9 @@ This layer depends on:
  layers: meta
  branch: master
 
-Layer Maintainer: Juro Bystricky <juro.bystricky@intel.com>
+Layer Maintainers:
+    Juro Bystricky <juro.bystricky@intel.com>
+    Joshua Watt <jpewhacker@gmail.com>
 
 Please send changes to the yocto mailing list with [meta-mingw] in the subject line,
-cc'ing the maintainer.
+cc'ing the maintainers.
-- 
2.19.1


