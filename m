Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3389E009D6; Tue,  5 May 2015 10:06:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B3AE009AF
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 10:06:07 -0700 (PDT)
Received: by wgso17 with SMTP id o17so190775285wgs.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 10:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=WVIgIrRbcTSBVJileA1oBuzDNNTpnKNGinnD5Nk4+SY=;
	b=tyuDI+AaE2KCl0utOg64LAYBnfu3PKDOmpKJFB0/m99eDr50UpSQkiFIgYCVANq6nU
	hFbToPT08AHKwwg/7uhQgJawIBao9pvvseDnNM0fLM1HfWeB4NSleSwaQxNBQXOwHER5
	Z3bvjVpT2UFLnziYNB0EBQ8gNSFrq83g2FswNRk9BFf/l+B2psgLvvjXlYzJ/IcWcl5A
	7Or6WTv4AzGda4JfVrEDTzaeMJx9rRsAXvxxqaxjW+yZ92y4VtJ4khzmfDaJ5qmspWlK
	h5gFik4MHg/oFsdXgRNJ8Gqc7MIB5KGQjPIbag99M3gYjnEWlUmeL6xg8MOLs7Br+JEY
	J2bg==
X-Received: by 10.180.39.147 with SMTP id p19mr5936909wik.15.1430845566494;
	Tue, 05 May 2015 10:06:06 -0700 (PDT)
Received: from X220.tupi.fr ([37.165.14.36]) by mx.google.com with ESMTPSA id
	di7sm17040196wib.23.2015.05.05.10.06.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 May 2015 10:06:05 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Tue,  5 May 2015 19:06:02 +0200
Message-Id: <1430845562-25422-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 1.7.10.4
Cc: tprrt <tprrt@tupi.fr>
Subject: [meta-selinux][PATCH] Fix setools building (-fPIC error)
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
X-List-Received-Date: Tue, 05 May 2015 17:06:12 -0000

From: tprrt <tprrt@tupi.fr>

Signed-off-by: tprrt <tprrt@tupi.fr>
---
 recipes-security/setools/setools_3.3.8.bb |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/setools/setools_3.3.8.bb b/recipes-security/setools/setools_3.3.8.bb
index 050f4ff..24c10b8 100644
--- a/recipes-security/setools/setools_3.3.8.bb
+++ b/recipes-security/setools/setools_3.3.8.bb
@@ -28,6 +28,9 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=26035c503c68ae1098177934ac0cc795 \
                     file://${S}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe \
                     file://${S}/COPYING.LGPL;md5=fbc093901857fcd118f065f900982c24"
 
+CFLAGS_append = " -fPIC"
+CXXFLAGS_append = " -fPIC"
+
 DEPENDS += "bison-native flex-native python libsepol libselinux libxml2"
 
 PACKAGE_BEFORE_PN += "${PN}-libs"
-- 
1.7.10.4


