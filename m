Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E298DE00AD5; Mon,  1 Apr 2019 19:31:41 -0700 (PDT)
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
	*      [209.85.215.171 listed in list.dnswl.org]
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8F43E00AB0
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 19:31:40 -0700 (PDT)
Received: by mail-pg1-f171.google.com with SMTP id g8so5748360pgf.2
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 19:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=TP+tzyJxU+j0CCYhKQLsP8VvjWACiubjeHP1AbQfqzY=;
	b=lS1bIryFZAI5i/M/SLjE+Q+wwq/a7ylG8d1L5zpzrNMTCg9Xr1kIg4niCim/7TXPkm
	YW3KCsln57DKewFTa6ZGeqg+0Am3fE45qFgptSut2xminB+u7Drl7sjadasUawl8yMrs
	SdaMdW6SZg2Gtr+xh6YjRNNvYJISF8p0nvEMLsTTIGlUF7Wizvvb0Yp62wD5q3nTDqtc
	LIXBCs4AepNiVkNCPiTGUZBjh2hK/5fNDUZMmaOJS/E2jiowvqXLe9pHZ6+K+NVPvG89
	r8FeKQK5cC8/V1wW6oKM9depXobH+h2OioiB4p1lu6sqZWY1SXrp2xBHLo73YWUuYVDw
	ANpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=TP+tzyJxU+j0CCYhKQLsP8VvjWACiubjeHP1AbQfqzY=;
	b=clj1tFhd4ZX/cjv2xSmAoN3WkrfsXkYZIDVQS8NeGAUV1eZ4Bps1ggVVynJac/PlGY
	ks15aXKKbXcOFpav0XH9uk9v8JEXBRO58/StHm35YetEcyYAJSh7r74tXbss/ssF6pAa
	74+xBm0C7bSaQbKiteA3tbGkJG/1zfzxEUvavTyQ9RqZQy0RR/eLYdMI9hEs4I7vR7aM
	FNbXL7L5Dtz2Vk48NTweukm90ZmRnCWwU8zbyOe3FX/VaEg0OqGuFtuXYdTknJyNaOFk
	ePvkhSxumSgrjjfLgzKwi0tOFBOypkGwZxiR9TUDO3iPtBeJ4qJivOlEtJVbTtuKdm4B
	W8qg==
X-Gm-Message-State: APjAAAVC2Ij4aG7soX4b67YokkfH0tjYxJFaf5RNiWWjrPhSXG2+hwJV
	NjjMce9HtdRujm8i969uOkB1K0rz
X-Google-Smtp-Source: APXvYqyx4tg2kVRGfkcHaKYO0jZlZD49uDvh4LMCR+lLX17u/pfndBYoeD2frOnj466/unT99VQd+w==
X-Received: by 2002:a63:ed10:: with SMTP id d16mr6902195pgi.75.1554172299991; 
	Mon, 01 Apr 2019 19:31:39 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:4157:7fb6:2684:2e1])
	by smtp.gmail.com with ESMTPSA id
	y5sm13910969pgv.15.2019.04.01.19.31.38 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 01 Apr 2019 19:31:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  1 Apr 2019 19:31:37 -0700
Message-Id: <1554172297-16258-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] layer.conf: Add warrior to compatible release series
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
X-List-Received-Date: Tue, 02 Apr 2019 02:31:42 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 716f8ac..4beac38 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "thud"
+LAYERSERIES_COMPAT_security = "thud warrior"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index fcc5cd6..d48feb9 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "thud"
+LAYERSERIES_COMPAT_scanners-layer = "thud warrior"
 
 LAYERDEPENDS_scanners-layer = " \
     core \
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 1b5f7d5..15a2bef 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "thud"
+LAYERSERIES_COMPAT_tpm-layer = "thud warrior"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.7.4


