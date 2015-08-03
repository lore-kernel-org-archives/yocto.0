Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3179E00A01; Mon,  3 Aug 2015 15:42:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A209E009D6
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 15:42:33 -0700 (PDT)
Received: by wibxm9 with SMTP id xm9so133128539wib.1
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 15:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=/Cv4+v02RnAYHBZ0RmknCVSEzcnCWFa461OoPvfpKfU=;
	b=02PH+ZNPHGppRZtVIExx4pjRI3jtzhws++wgXH3IaKRP0DGw+/1UF+uvRoV6KoXhRI
	K64CSToLOoDM9VrP2tFTJs7qLXmtT7UvttxBwdD0V1hmsulSBypeaSjvs0vUTuZX/pgW
	nLkdrtP5V+ZzFAIS/OrEgA81vxmDtPMYWDiGCxrjOiET1k4pjBzGXWegegn0JO9hAo0T
	szpUljneSm4bwKXtVV2M6U72pJhXaq31go7OOJeE9nndb/Fzj4B3zZg4mjqzj2zrUsNB
	ZbjxJI/1OwGBTMl9caGO925VYhHJE3o+h37gWpv0mKkSlq9YVHOM7uPPXnzhtQM551TU
	Pp6Q==
X-Received: by 10.194.236.161 with SMTP id uv1mr852962wjc.158.1438641752615;
	Mon, 03 Aug 2015 15:42:32 -0700 (PDT)
Received: from localhost.localdomain (ram31-2-82-228-88-46.fbx.proxad.net.
	[82.228.88.46]) by smtp.gmail.com with ESMTPSA id
	q19sm15681458wik.16.2015.08.03.15.42.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 03 Aug 2015 15:42:31 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Tue,  4 Aug 2015 00:42:28 +0200
Message-Id: <1438641748-29395-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-security][PATCH] Corrects a typing error.
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
X-List-Received-Date: Mon, 03 Aug 2015 22:42:36 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 recipes-security/libseccomp/libseccomp_2.2.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/libseccomp/libseccomp_2.2.0.bb b/recipes-security/libseccomp/libseccomp_2.2.0.bb
index bd970ed..3b6aa67 100644
--- a/recipes-security/libseccomp/libseccomp_2.2.0.bb
+++ b/recipes-security/libseccomp/libseccomp_2.2.0.bb
@@ -30,7 +30,7 @@ inherit autotools-brokensep pkgconfig
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
 
-do_compile_appned() {
+do_compile_append() {
     oe_runmake -C tests check-build
 }
 
-- 
2.1.4


