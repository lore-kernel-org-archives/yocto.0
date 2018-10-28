Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B407E00AC5; Sun, 28 Oct 2018 11:50:33 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7710E00718
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:32 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id f26-v6so2882038pfn.9
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Df5TMKNBOdZ5gRUEUa55wqmDv4k+k9LiegK4Hk7/kTk=;
	b=UWJ1X0SRKFjFwnwae5TqyCz7pyJOiz6FJGZ6BS9S+9HM/uhdYJY5Op/DPHby7o8IlR
	ByM1mXF6xU/HLdVtBrPYHJds3FrVjmQslC78+ybvX8gz2rYPxi4lEZVTr+BxP+Z/cikZ
	ayYz7TvqSb2F9Ne2CBezEd2KPQXgxpusbRrLuaA9nHd9lVldoQtn7sT+kwN3LR5HEFdR
	7R940W08ZHFNkK/X497u7qo1m6iIRhCH1QKCJ/k0C2PSREcYzxvkbBlu1Hn0qwtCR/nZ
	lT53xA53ZkXXvfJgfEPbg44T6XpTns+hoGaL5Fmt8nE7P6SMnzILhr1cUVrkxAD/IFf+
	advg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Df5TMKNBOdZ5gRUEUa55wqmDv4k+k9LiegK4Hk7/kTk=;
	b=DFo7uSCHh/mp7edarAWXsbXPu+1eIAm9vi0GaIYUDhd0M6Cf/q83axy+DNtVON6qpy
	X974A8el7xO5K96OHm7h9hQi250cH1TMXC9GP8XvYNpfLmnhaPOvDegok5k0PxjtM4IX
	VyGtjqyg0ZVNjNbyiAjBrIjCNNSZVbIUlXFO0XEzt2zvnctFOG1Asg1+w5l3k94En/qf
	cJf4b6g/zx75TUUp9CnCbwE5/vkhgBs1s5lt7Nuxg+9xk5IP7xHaP8ILZYb/PiwOkUzf
	Ve3ly6A5BePMB7tyWE+fvJNaGoGTDrJ93l/x9qqxFbScq32JSxBFpq99YEcKRT1YT7AY
	Tt+w==
X-Gm-Message-State: AGRZ1gJlsG5YwIz47q4VBtOeyT0otuKGvk02zT0iR6XmgcQG9j/Zj1bI
	c6vHQp/DLoLnG0IqBFI4f4vLcdaf
X-Google-Smtp-Source: AJdET5craZ+bUAX5BsiesM5d9B/AMeLK6F91DIf6V9LMr/rTixoY8G6j8S/Q7/BJjcI0rQpWxBTewQ==
X-Received: by 2002:a63:4a4a:: with SMTP id j10-v6mr3726479pgl.0.1540752632089;
	Sun, 28 Oct 2018 11:50:32 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.31
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:18 +0000
Message-Id: <1540752628-10832-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/13] packagegroup-security-tpm2: add and remove packages
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:33 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 099e01c..c4c8fb2 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "Security packagegroup for Poky"
+DESCRIPTION = "TPM2 packagegroup for Security"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
@@ -14,5 +14,5 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     libtss2 \
     libtss2-tcti-device \
     libtss2-tcti-mssim \
-    resourcemgr \
+    tpm2-abrmd \
     "
-- 
2.7.4


