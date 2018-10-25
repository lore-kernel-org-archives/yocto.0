Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D863E00BE2; Wed, 24 Oct 2018 23:27:54 -0700 (PDT)
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
	*      [209.85.221.67 listed in list.dnswl.org]
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F12A0E00AD8
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:27:52 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id d10-v6so7979384wrs.5
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 23:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=THI4MlxC7g8QI02dARaVseCdqNYfDuNYEB1G6w2n8r8=;
	b=Q6+aBBXjBuZIX2Pb627FJK76VszT3AwSI7CepwREcOG8h7nIv+mvLrPj0go/MFRVjL
	I6cFklHwdEANrF9Hwk5qp8zLbmY4z6WmrWlc5bVCEMylH7FPRK31lyRBiITD+gIRc6/l
	dTYUbxKmWnuoXlrPgls8xVOmf233ZeUZZEYbzUtwnlcUmOOfrq7DvADSZzbBQrIYz8jF
	1rso9orHJ2iQU4baLyFD0flKA9SSvJNfDF7GUc/4h32z8l3/dL3YRYPZ+7lLMHwFOxoT
	8d1QAPRXjzcD7ayFWD5iGF87VTIqc1wWuYr6DhIDumfnQxGq44IW7pRgf/frUh8ngyF0
	53Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=THI4MlxC7g8QI02dARaVseCdqNYfDuNYEB1G6w2n8r8=;
	b=sCBh2oKLYVoMEjckGP5LT1tAV1EKTVw5Y7c9iho44y1Xfb1m7Uf7Jm+QOQFmZdRKoD
	1g6/aOc9Uz2o6/frHUDZa4R9ObH0zEW9mxAEjbZYY+jWSONVIgatXcVTY9IA7r7jB2Mp
	9Nz6Mek+S0AE+nuuVzm84GtkE3pKAeETOP6D13WOlFWgu+DE7GWmXjYVf+312/mUB2nj
	/BSKfk9/Ei4SRhO+zIMMrcZKvRqlrogqA3q8tpO3tJ05T/Y20f1OCQdZkp/i+aD0z7y9
	ZwyrBV0NfgLVUG+b0gg5UHqqQHmNupA/xS7OXh9sUXxPLURN2BVdtnFEY40n3NumqpII
	Ljpg==
X-Gm-Message-State: AGRZ1gKQ6WHDQ/L1Et22md1MR4jzno+Sz70HnOVBGqJQdWaHXsBdBtZh
	L4Gsg57vsx1G9coED6k2VUQ1JgmY98E=
X-Google-Smtp-Source: AJdET5f8tNBaf5yyg4nuOu6IYmAW5EWqMTP19BLbJ3zA9OGiBYoMXw1jyYckTZKzhMUisbYMAWW5eg==
X-Received: by 2002:a5d:628c:: with SMTP id k12-v6mr342991wru.83.1540448871141;
	Wed, 24 Oct 2018 23:27:51 -0700 (PDT)
Received: from localhost.localdomain ([109.144.208.247])
	by smtp.gmail.com with ESMTPSA id
	z18-v6sm2170193wrh.33.2018.10.24.23.27.50
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 24 Oct 2018 23:27:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Oct 2018 07:27:47 +0100
Message-Id: <1540448867-12695-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540448867-12695-1-git-send-email-akuster808@gmail.com>
References: <1540448867-12695-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] layer.con: add TESTSUITE define
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
X-List-Received-Date: Thu, 25 Oct 2018 06:27:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 675a149..76f5bd6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,5 @@ BBFILE_PRIORITY_security = "8"
 LAYERSERIES_COMPAT_security = "thud"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
+
+DEFAULT_TEST_SUITES_pn-security-build-image = " ${MINTESTSUITE} ssh scp ptest"
-- 
2.7.4


