Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A6C7E00A5C; Sun,  1 Sep 2019 15:10:25 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3584AE008D3
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 15:10:25 -0700 (PDT)
Received: by mail-pl1-f171.google.com with SMTP id go14so5713335plb.0
	for <yocto@yoctoproject.org>; Sun, 01 Sep 2019 15:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ZRdi1peAr/SjED2GP3nbCmbC4hu3RwlQlc5g4l6i/7E=;
	b=ghFK8R1En0PyW2tTAzSZO71fVec/l6ciiJhuLTtsa4IYJ2usyIJDCNFqO34JFKWsho
	YSTiNctmdDXp1MEGvM9cARlYEJqJ1i9h6xkMgCSs8ZGM9tOMJAUaczI2akCETW/ckHVB
	tu0SUdsJ7/KW4SuHjAiN8sZORAONMSxKchSziDFdukFbSjJkw8ZYW0ADZfndcYn4d7E/
	IDQLTeGj/0fqPtxhJWPdSUPbP1Iw+G5ZhsfDOVZYnld8I167ZqYr6lbPsZHSexi7rXQT
	58cv434TjSDFO/zjNcbTbbVfUtJTQQ1Vlu788fMaVxaSQS9WNk77yQYv2YYl7NDKkGZl
	m4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ZRdi1peAr/SjED2GP3nbCmbC4hu3RwlQlc5g4l6i/7E=;
	b=S4jcRDfMXSh3lavr71kiTvAtGNp7FehbY/I8kLBmq4SQe1EWwYBH2gOYsNsCK1zgio
	PgRCnH6nn9mgieGYJG7PrXO3+y1oD2b718ccdh8AM8X+X8dK11A6bymkgEpZzh9jeq1W
	JoDoTbb+AmCh4mFb1TegCT5zrDdxbokSeZ9zBCqhsLdG0A/nt0FINLudUoc3YTkZkhZ1
	MBtBMmp1BAHT8vt96ejN156pBxE8gBIhK6kw3SNotrIriusgNMndGAiMTfO4o/N+UFxb
	W8pUPjKz1Qj5cgFKTqieWupMQoD4ET0tXTtVblioS/DUWQyOqEI3FEexPKp2uZiJLn/r
	bsrw==
X-Gm-Message-State: APjAAAUtnaTyFQbElntjKd14bx2Qi0C3yTfmXcImE0++NP+49Ynm05nX
	rJNCqG5NkMBZ7u5eMTLXUq9HppqC
X-Google-Smtp-Source: APXvYqyctFkx/nelw5A5EIBGeTx6qYgvRThre54T5UVfbkMXHSF6CZtr/ypaG+d/xjQra4rk2pXXaQ==
X-Received: by 2002:a17:902:a714:: with SMTP id
	w20mr26414647plq.135.1567375824481; 
	Sun, 01 Sep 2019 15:10:24 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	y10sm16326643pjp.27.2019.09.01.15.10.23 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 01 Sep 2019 15:10:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Sep 2019 15:10:20 -0700
Message-Id: <20190901221021.25787-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190901221021.25787-1-akuster808@gmail.com>
References: <20190901221021.25787-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/4] busybox: fix sig changes when layer added
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
X-List-Received-Date: Sun, 01 Sep 2019 22:10:25 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/busybox/busybox_%.bbappend    | 4 +---
 recipes-core/busybox/busybox_libsecomp.inc | 3 +++
 2 files changed, 4 insertions(+), 3 deletions(-)
 create mode 100644 recipes-core/busybox/busybox_libsecomp.inc

diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
index 8bb0706..27a2482 100644
--- a/recipes-core/busybox/busybox_%.bbappend
+++ b/recipes-core/busybox/busybox_%.bbappend
@@ -1,3 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://head.cfg"
+require ${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'busybox_libsecomp.inc', '', d)}
diff --git a/recipes-core/busybox/busybox_libsecomp.inc b/recipes-core/busybox/busybox_libsecomp.inc
new file mode 100644
index 0000000..4af22ce
--- /dev/null
+++ b/recipes-core/busybox/busybox_libsecomp.inc
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/busybox:"
+
+SRC_URI_append  = " file://head.cfg"
-- 
2.17.1


