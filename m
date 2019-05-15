Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEBEEE00D73; Wed, 15 May 2019 03:57:05 -0700 (PDT)
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
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D977E0049C
	for <yocto@lists.yoctoproject.org>;
	Wed, 15 May 2019 03:57:04 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id 198so2165477wme.3
	for <yocto@lists.yoctoproject.org>;
	Wed, 15 May 2019 03:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=FIBZfm6lpecuYlOQLoYFzeoVlcrk3wF+j6pYdPC7lC4=;
	b=pgXOe7BCQxf2fBawFWSPhNObE95Asq1IWXo/JrvwOx0/Ti+MsaQBhXChcoF/Req7Ry
	Km5unZoL+kRanUyvsE6pQm/INb55wtWjvonv/PafbqXkv9Y4jcXXmWNO96Skk8Pdn6h2
	ga9j4yrlnM7FIeFTn+qOZYHBiniYpylqKRTqb1n4siDtyDBYhi39E92UKKLPgX5ir8WS
	MO2BDp4IPjKOAzT1wrKnm7X5KMHYrh0Jy0aKfabVWwpDQ9t/NoCTEKKlQnD6O6vNeija
	EDKSKj/dIDtPAGJWuGc8jKfOUAU5lq1ZOOqBbMt/IXonDVcAn4PgnfSruwsxzsteq8hv
	TLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FIBZfm6lpecuYlOQLoYFzeoVlcrk3wF+j6pYdPC7lC4=;
	b=th3+k6PZpG9g7AkOF2kpyhP1GLn6jx14myGpMhpREdJv2OsgRon+dYrBwYbMp6G6Of
	l+Htwk0PXei9IA27rABiezE6HzA326l1AE5W+BHcvv5NDd9DIw01nnQN40EHjef1EcNf
	CbdkYdEShxB+RButXQ4VfQPyZwOUU8BXBk1EJmqvzwtTAM+vqZ6bTXmtPRtypj1jYUnG
	gn72g3GpXf8RNHEeFMTHXP3h7uk/YVvyyOi9yTTwJHF9/kZFRcg4X7uszf2JqZVg7Oka
	nedp4ZzT62n33vNWbf0wyVBO4XxlROoAmip7oqbqc/tYUsXfmTMbq4b4gsU8KePOEgt5
	LvuQ==
X-Gm-Message-State: APjAAAXJqJiXQIoq6FYja3idm17ltQtePzUlRUbviJzDFJL2vKwvfyZa
	err5V+DTSFCs00toyiNCidcmVYFw
X-Google-Smtp-Source: APXvYqytOZpj/rSa0CZfngNYEkRtUEj+P44rsSBW465KJ8oqF+4s/oID9VQ1AVcWkm540loBMZq0Zw==
X-Received: by 2002:a1c:2d45:: with SMTP id t66mr22495839wmt.106.1557917823053;
	Wed, 15 May 2019 03:57:03 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	v184sm2366095wma.6.2019.05.15.03.57.02
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 15 May 2019 03:57:02 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Wed, 15 May 2019 10:57:00 +0000
Message-Id: <20190515105700.22802-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 16 May 2019 01:10:21 -0700
Subject: [meta-gplv2][warrior][master][PATCH] licenses: restore Elfutils-Exception from oe-core
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
X-List-Received-Date: Wed, 15 May 2019 10:57:05 -0000

* it's still used by:
  recipes-devtools/elfutils/elfutils_0.148.bb:LICENSE = "(GPL-2+ & Elfutils-Exception)"
* was removed in oe-core with:
  http://git.openembedded.org/openembedded-core/commit/?id=88188807a6ac9bab738a69f6b4caba9ed092d78f
* causing:
  do_rootfs: The license listed Elfutils-Exception was not in the licenses collected for recipe elfutils

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf             |  2 ++
 licenses/Elfutils-Exception | 12 ++++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 licenses/Elfutils-Exception

diff --git a/conf/layer.conf b/conf/layer.conf
index 59f6a89..44c6712 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,3 +15,5 @@ LAYERVERSION_gplv2 = "1"
 LAYERDEPENDS_gplv2 = "core"
 
 LAYERSERIES_COMPAT_gplv2 = "warrior"
+
+LICENSE_PATH += "${LAYERDIR}/licenses"
diff --git a/licenses/Elfutils-Exception b/licenses/Elfutils-Exception
new file mode 100644
index 0000000..627d769
--- /dev/null
+++ b/licenses/Elfutils-Exception
@@ -0,0 +1,12 @@
+   This file describes the limits of the Exception under which you are allowed
+   to distribute Non-GPL Code in linked combination with Red Hat elfutils.
+   For the full text of the license, please see one of the header files
+   included with the source distribution or the file COPYING found in the
+   top level directory of the source.
+
+   The Approved Interfaces are the functions declared in the files:
+
+   libelf.h
+   libdw.h
+   libdwfl.h
+
-- 
2.17.1


