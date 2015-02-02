Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3ABAEE0086F; Mon,  2 Feb 2015 07:36:11 -0800 (PST)
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
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0777E00809
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 07:36:01 -0800 (PST)
Received: by mail-pa0-f41.google.com with SMTP id kq14so83716570pab.0
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 07:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=djtCg8sV88mcmGgL5zyOwv6hji9Y3lpFgqaFpNoBFsI=;
	b=CHsUu+NpV5iKTgoplyGLh8DqGD6m/lu5gjTAhgLlmth4/2iIx3bTwh7O8LynsBLtmw
	MWbpck+pwjWINxBwM9aadV/Y7Q6Ld7QWACfWdhJ2fj6EHVqkZ6ZbMlCkwWQqf4Wd+/n/
	Ur8/Sjx7c0QJHzBXs4m6+US8muja+gXXDDJQuOijlUXMjgNFAXfZLdPJs3PxHxg3N92M
	QR3F1Hwfjnxpvk4KMHU+fiqyUkcz7EjuWH6Ewjd/Xpo9ddg51HpwVndcXTRaZrnGwNB5
	aUDqTERPK1078qE7P/wTv/ufqMKRnxOEeLNdbJfRlq27/5ZWplTuMg6fQBAVFXtL3Pic
	v1MA==
X-Received: by 10.66.124.164 with SMTP id mj4mr30575211pab.83.1422891359278;
	Mon, 02 Feb 2015 07:35:59 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	v11sm19209396pdi.13.2015.02.02.07.35.56 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Feb 2015 07:35:57 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Feb 2015 07:35:51 -0800
Message-Id: <1422891351-17215-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] layer conf: update to include meta-networking
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
X-List-Received-Date: Mon, 02 Feb 2015 15:36:11 -0000

suricata needs a package in meta-networking

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index c5a717b..650e6ed 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "6"
 
-LAYERDEPENDS_security = "openembedded-layer perl-layer"
+LAYERDEPENDS_security = "openembedded-layer perl-layer networking-layer"
-- 
1.9.1


