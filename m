Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 080EFE00B65; Sat, 14 Apr 2018 08:33:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8612AE00571
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 08:33:38 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id bj1-v6so7675977plb.8
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 08:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=flYWsej6rMpI0uwxCwmGQz2LsuLSoGL9BS6/+xptau0=;
	b=DgB6s/Bavtym5o+bXjutigUZmDe5cj9UK+KxekMyj9ZnRIR07q25+lBMRMW2ApLiTa
	yOALp3JXDsoyEZaSBpZVb32zKjJs6QBoGtSLE1sfNzhe7cBRryG/YpjXnwZqm85g5QuZ
	nOxWGtSCOPTnuutv5cg+J+mmCwshgaw3hTRlHwDJxQgHeInB8euRuHaMNbRBRLlgxcop
	CXWHmI7np3e+QJIfeq+s3c/DEPoYDlkaYABV3ee3izBRX+rWQooE6JWvkV2WdowSX8TL
	b65IiAJQt5oI37vGD8YOp2/4UCXzIEJxjJrf55CV5dH6JmV7itU5eO2hEQPMMqEBBGkA
	toYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=flYWsej6rMpI0uwxCwmGQz2LsuLSoGL9BS6/+xptau0=;
	b=jCLlRK95GKW8zPkKbF/MJfasL1amvPO9LTr4JdEODDFyutHVdTL78mATYw9R7PWjoD
	So2MjNeCBTYsEE4h3D39Jje0RLfF0bIG9HwWo5vx52M7GTkohFR/5/JDSxkjfPSMN6+F
	dj/5/Q1MWKgkeY18+ne+nFy8sAgbRUfgpjlIrEouW7XdyC57l4NGVa7iUojPVw6f3/Qp
	IxFtrcMKe5PoxxkjQPJuvk5C+qEdfvzMFyR3gNtb7dmBCp0CX5I8T4+t9Yltxgw/Vvbb
	bJwO6/cPtXahhGxW8+D4QDr6wB6y15Okv2jONSmnjUJPe5/Rl+OQwnuaV3KUhDOj8ZwV
	w6Rw==
X-Gm-Message-State: ALQs6tBFMO7DPrxBE+AiTRe9qCkK0re3klYxbsrDSQZQ/6/5ZVR37JQ9
	524a1aD4flertN7Pu6xQnw4=
X-Google-Smtp-Source: AIpwx4+gf9wCBu5KHa3M8RfKseWboKGlN8EWJ74yyY289t0bVIk7IV/uONGbAuWs3bQQusrua0Ph2A==
X-Received: by 2002:a17:902:6541:: with SMTP id
	d1-v6mr3276841pln.196.1523720018112; 
	Sat, 14 Apr 2018 08:33:38 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	c66sm16419281pfc.56.2018.04.14.08.33.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Apr 2018 08:33:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Sat, 14 Apr 2018 08:33:35 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sat, 14 Apr 2018 08:33:33 -0700
Message-Id: <1523720014-3204-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH 1/2] layer: add LAYERSERIES_COMPAT for rocko
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
X-List-Received-Date: Sat, 14 Apr 2018 15:33:39 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/conf/layer.conf  | 2 ++
 meta-cgl-fsl-ppc/conf/layer.conf | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index bdf5f3f..bcbff51 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -14,3 +14,5 @@ BBFILE_PRIORITY_cgl-common = "7"
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
 require conf/distro/include/cgl_common_security_flags.inc
+
+LAYERSERIES_COMPAT_cgl-common-layer = "rocko"
diff --git a/meta-cgl-fsl-ppc/conf/layer.conf b/meta-cgl-fsl-ppc/conf/layer.conf
index 353824d..2fee17e 100644
--- a/meta-cgl-fsl-ppc/conf/layer.conf
+++ b/meta-cgl-fsl-ppc/conf/layer.conf
@@ -10,3 +10,5 @@ BBFILE_PATTERN_cgl-fsl-ppc = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-fsl-ppc = "7"
 
 LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"
+
+LAYERSERIES_COMPAT_cgl-fsl-ppc-layer = "rocko"
-- 
2.7.4


