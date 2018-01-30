Return-Path: <jobol@nonadev.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 596DFE00E85; Tue, 30 Jan 2018 08:25:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.67.160.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 336 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Jan 2018 08:25:47 PST
Received: from erza.lautre.net (erza.lautre.net [80.67.160.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9E2E00E0B
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 08:25:47 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by erza.lautre.net (Postfix) with ESMTP id DBEC9A8BF;
	Tue, 30 Jan 2018 17:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nonadev.net;
	s=alternc; t=1517329210;
	bh=4MvthGpMbPAzBvwZB0bmFrUYfLOgZxRyvW1T8sWPR4Q=;
	h=From:To:Cc:Subject:Date;
	b=FE/Bh29q2M+f5ISZT7UBrEwz6uaDuu7AcP1wSHtT5CKFmo8nKHopV0r7PENWswhCV
	6+TGYsXrvwu8ENE6qutJZmF21G5RaM+w50+0fwyPNAx2vIkvdrK4/lZVaLD3yVi0b/
	Xv7qS4Seg/cPTV8sjuaWIo7qKoAo1W4JbK1+8bWE=
X-Virus-Scanned: Debian amavisd-new at erza.lautre.net
Received: from erza.lautre.net ([127.0.0.1])
	by localhost (erza.admin.lautre.net [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Np4wJUEhMExj; Tue, 30 Jan 2018 17:20:05 +0100 (CET)
Received: from d-jobol.iot.bzh (por56-1-78-229-206-229.fbx.proxad.net
	[78.229.206.229])
	by erza.lautre.net (Postfix) with ESMTPA id 0E8EAA8B6;
	Tue, 30 Jan 2018 17:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nonadev.net;
	s=alternc; t=1517329205;
	bh=4MvthGpMbPAzBvwZB0bmFrUYfLOgZxRyvW1T8sWPR4Q=;
	h=From:To:Cc:Subject:Date;
	b=EjTE5nmxsh+wM3wSYfRj+S1Om92/14emKq35hvjKI/5ys6m9rKggKNQpABUa64cjK
	nU7hMmyB4N9r54gBpL/WYmOH5wrpE5n49iFqzSrdfuP6Z7S0OaPE3ZUfJX3YDfSAMw
	VS45AS6fNoIYX4YHZReSehndSQP4Nrh5HaW/gHe4=
From: jobol@nonadev.net
To: yocto@yoctoproject.org
Date: Tue, 30 Jan 2018 17:19:58 +0100
Message-Id: <20180130161958.3247-1-jobol@nonadev.net>
X-Mailer: git-send-email 2.14.3
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 30 Jan 2018 08:54:36 -0800
Cc: =?UTF-8?q?Jos=C3=A9=20Bollo?= <jose.bollo@iot.bzh>
Subject: [meta-security][PATCH] xmlsec1: Allow native builds
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
X-List-Received-Date: Tue, 30 Jan 2018 16:25:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: José Bollo <jose.bollo@iot.bzh>

When used in native builds, the variable STAGING_DIR_HOST expands
to the empty string. This leads 'sed' to an error because the pattern
is empty. Using STAGING_DIR instead of STAGING_DIR_HOST allows
to use xmlsec1 in native builds with the correct behaviour.

Change-Id: I55f40ac2413863c489d4219e0080f7e4e274a6db
Signed-off-by: José Bollo <jose.bollo@iot.bzh>
---
 recipes-security/xmlsec1/xmlsec1_1.2.24.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb b/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
index 9798ce2..a34539b 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
@@ -45,7 +45,7 @@ do_compile_ptest () {
 }
 
 do_install_append() {
-    sed -i -e "s@${STAGING_DIR_HOST}@@g" ${D}${bindir}/xmlsec1-config
+    sed -i -e "s@${STAGING_DIR}@@g" ${D}${bindir}/xmlsec1-config
 }
 
 do_install_ptest () {
-- 
2.14.3


