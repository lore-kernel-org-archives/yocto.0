Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83E97E008DE; Wed, 14 Jan 2015 07:12:53 -0800 (PST)
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
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2040E008E5
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:43 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id eu11so10979024pac.11
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 07:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=6a1QnGutH5QgfDcOa0URlWWWlLaTHV8PxSI2PzNl/uw=;
	b=ruvXSu1S1NojCxE64Ssc/UplLDtt7OZvQmmh3/1P1QFUnKF/eyqnbIdb1L/vDD7D93
	xScrcU4DqtXTkxO5NZvZ3IpBeUFEqcB/buT+LEOzsq4TaZHWHcE2ul0nehzUm5yKA0i6
	Ciu3S29/4XNiSqc7QXykJUGs23LNWLIciTmPcSy6vxzMtAV7B0TFAdONtmlgUf0VLc1h
	1ggLaHZvo2ciPhWV4DcWKadWbNkbSscFpbdbZRXm2LJBgbiZU6f6BBNFrBfdaYNbM5h8
	sM1rF6EBt3DG7taxIuCXpFa49rQRk0gQ5/B1Tfao/foBJ4SiEByQ9ZwowBBBG4QRD/kb
	7cVA==
X-Received: by 10.70.109.203 with SMTP id hu11mr6602096pdb.36.1421248363220;
	Wed, 14 Jan 2015 07:12:43 -0800 (PST)
Received: from Pahoa2.mvista.com (c-107-3-174-189.hsd1.ca.comcast.net.
	[107.3.174.189]) by mx.google.com with ESMTPSA id
	re13sm2094690pdb.28.2015.01.14.07.12.40 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Jan 2015 07:12:41 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Jan 2015 07:12:34 -0800
Message-Id: <1421248358-14391-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/5] samhain: client fix rdepends
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
X-List-Received-Date: Wed, 14 Jan 2015 15:12:53 -0000

WARNING: QA Issue: samhain-client requires /bin/bash, but no providers in its RDEPENDS [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain-client_3.1.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/samhain/samhain-client_3.1.3.bb b/recipes-security/samhain/samhain-client_3.1.3.bb
index 501c3b8..c671b48 100644
--- a/recipes-security/samhain/samhain-client_3.1.3.bb
+++ b/recipes-security/samhain/samhain-client_3.1.3.bb
@@ -18,4 +18,4 @@ FILES_${PN} += "\
     /run \
     "
 
-RDEPENDS_${PN} = "acl zlib attr"
+RDEPENDS_${PN} = "acl zlib attr bash"
-- 
1.9.1


