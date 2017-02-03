Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC69BE009A5; Thu,  2 Feb 2017 16:38:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C502E009FD
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 16:38:14 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id v184so382156pgv.1
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 16:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=7gtO5DPlcSvr2hM+cF49UXXYHhxG0IToRAASoqksp9Y=;
	b=TPu/uVuXvLOmx/Y9LqauoYLp4Fesm3G5/LuJz7kjTRTJksetFv+j7NOxkTO9PfovNM
	zgWsuVUiItGzz6vZxLI6NYkXaEz4ADHdjTwxnqPEXCcKQrhpM9Fljj6CqGh9qCE7BOly
	cW+Na/qGJd4fa5j+AAsyxI06rjJTzmdd6Giz191WHdpNuj7mt8WahsR9leHbvkieS94K
	Bm9qxuCOkFvifbifJ4ry9ncFG9Cpzp453anid8t8Z9OqxMNJ2p+5tAZWafKi3U/tIDxs
	H7884ru2ZJd4r7YCzjvNKbPIO4iWf+F3/qzEtfPDTsvv50fn9OqcYGlNjOa0itNlOoWG
	yLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=7gtO5DPlcSvr2hM+cF49UXXYHhxG0IToRAASoqksp9Y=;
	b=jRzyNvfoUfAhlKzQnEHF6nHi/GUGbgv3v4KTL80zLdIP1Ve2+jE2gnrZX79Usccy9f
	ivLFKsYzJJA9sND/c1jm0uS4Kg/0Lll2akAuWuCy0wKj2tfGip/2xVN3soqFifuJu5PG
	RjtaW1sSPcqRsutrIwdQe+Rt2qmCEgnGBhb1WKW6i2+IQ87qDmezJvS7krC7aiWYG/iP
	jf91ELKbcVSd3pEAPMSe6PWEUY/ATtaBqBT5jSM5luVkA+XN4v+MZCKA0p4CIeeGzJsB
	bFhOe7PVUSysvpPl3/4cMW7Th3hHSh+mJrtCB+zgF6AOIXnocsQr3CFuTaC71v7EFrTJ
	GN4Q==
X-Gm-Message-State: AIkVDXI1IvrZok9ekAfxSDNBOLt8uilGQS0NS49FERYZeWWnc1/CGizkUcQpas6OeDdnnw==
X-Received: by 10.99.228.69 with SMTP id i5mr14394724pgk.63.1486082294167;
	Thu, 02 Feb 2017 16:38:14 -0800 (PST)
Received: from akuster-ThinkPad-X240.mvista.com
	(50-233-148-156-static.hfc.comcastbusiness.net. [50.233.148.156])
	by smtp.gmail.com with ESMTPSA id
	b10sm62032560pga.21.2017.02.02.16.38.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Feb 2017 16:38:13 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  2 Feb 2017 16:38:10 -0800
Message-Id: <1486082292-29971-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH 1/3] cgl layer.conf: add layer depends
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
X-List-Received-Date: Fri, 03 Feb 2017 00:38:27 -0000

From: Armin Kuster <akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 0c19a95..dfd0d1f 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,4 +11,6 @@ BBFILE_COLLECTIONS += "cgl-common"
 BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-common = "7"
 
+LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security openclovis selinux"
+
 require conf/distro/include/cgl_common_security_flags.inc
-- 
2.7.4


