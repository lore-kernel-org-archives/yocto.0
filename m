Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 995F8E00E4A; Thu, 14 Apr 2016 08:36:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.67 listed in list.dnswl.org]
Received: from mail-pa0-f67.google.com (mail-pa0-f67.google.com
	[209.85.220.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F84DE00C1E
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 08:36:00 -0700 (PDT)
Received: by mail-pa0-f67.google.com with SMTP id vv3so7092963pab.0
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 08:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=+aj8VL56rRSc4rgexVP7xztXudRQee7I/P6/lUUG7eM=;
	b=pVlBG1VVKEYnFOjdjPq/zfIrCMDpyGDWs7SkLHYklPEcsP4QkJ8FSvq7tr1p5oOOCi
	iUefMinPLKeraoRaFeiK36IPiBq9sZ7PZVB52nvJ5o+3xZ5ViUUK8mw5wXVpeUAbb8M+
	rWMjLMbo5gYJ5HUcL19zaOKXCCOYZ19Cbgcl8dXkwZDqtXDufKcH9Wn6KpWCWNKXl4Es
	UoOk6aQ7Y4QonFa2ACXkewGHIcAUOjgnIzqNPKAe3QGXc+47aF/0JoV7MfC1vlJ9oFSH
	U6uHNt7ZhX8tGPm+9CE9EaE5sWJCi2RhYwRPB+0e0J/OgSoKu767T+ror7xn/Qgu4Ixo
	tBVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=+aj8VL56rRSc4rgexVP7xztXudRQee7I/P6/lUUG7eM=;
	b=ZhiwRGR3xEzAqQ2izhQz75V6mNTr5umj6Wp/+gKjBfPEfpqgEtlJKnLYhxoJp7SyFN
	xVR68GK3MIRRRjG+7HzW1090OzekKU3qS4uQuafHi8cK/GhPmSM1I92z/8Occfn84xWd
	uOhq+6qxlxZW1Zlqe6BbxUvhCOxKkmM0mLEYvwkWWyz2Q6itbiherhKuAOmyxJwYdxb8
	MCwJvtjBKnsH7iLw98r6l6/ZRKZT6PDcEqi6YbhrTzbwerFawsUa4FACADTCpydViDy9
	kFg6xwsiZjVhMxyhgVec1kOZCz1Qf64lhMUlYx8wLZLyB1lCgqm9lqUnXA/ET0rq0vmb
	73Ig==
X-Gm-Message-State: AOPr4FXDQZOXC3sp3KJ4PMLTSrOgYo8AZZb+gLBNgC5B6QJiEgFyDMCMhYtNG38ZKTMp+Q==
X-Received: by 10.66.33.1 with SMTP id n1mr22099686pai.65.1460648159679;
	Thu, 14 Apr 2016 08:35:59 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	c9sm58728396pfd.24.2016.04.14.08.35.57 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 14 Apr 2016 08:35:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Apr 2016 08:35:46 -0700
Message-Id: <1460648147-15324-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/2] libdhash: add package
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
X-List-Received-Date: Thu, 14 Apr 2016 15:36:01 -0000

required by sssd

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libdhash/ding-libs_0.5.0.bb | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 recipes-security/libdhash/ding-libs_0.5.0.bb

diff --git a/recipes-security/libdhash/ding-libs_0.5.0.bb b/recipes-security/libdhash/ding-libs_0.5.0.bb
new file mode 100644
index 0000000..9db66e8
--- /dev/null
+++ b/recipes-security/libdhash/ding-libs_0.5.0.bb
@@ -0,0 +1,13 @@
+SUMMARY = "Dynamic hash table implementation"
+DESCRIPTION = "Dynamic hash table implementation"
+HOMEPAGE = "https://fedorahosted.org/released/ding-libs"
+SECTION = "base"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+SRC_URI = "https://fedorahosted.org/released/${BPN}/${BP}.tar.gz"
+
+inherit autotools pkgconfig
+
+SRC_URI[md5sum] = "786f2880d30136a61df02e5d740ddc6e"
+SRC_URI[sha256sum] = "dab937537a05d7a7cbe605fdb9b3809080d67b124ac97eb321255b35f5b172fd"
-- 
2.3.5


