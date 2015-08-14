Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FBEEE009BC; Fri, 14 Aug 2015 03:01:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679E3E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 03:01:20 -0700 (PDT)
Received: by pdrh1 with SMTP id h1so29953601pdr.0
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 03:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Q0+ps+npeHhJngu6WHMlug3KtAM38olPkRTkg4hrJws=;
	b=Yd/XQx7PhajKNOwSgGAWCMc68MfQoi5kgs4VbPggZF2uIrEnnW9EK3WtBaueNsX5WH
	xmkKneMsXLDzZvCIJrLbSKVqjOstyPh7TQR3DbsTzBhRzbBCMnE0HXO16+9eCwmZsTTA
	f+Dq2lE8aj8Ku+kBwflUB0W9+0cTO+Y+xoJ5pM2pMkqiK4upuJCLsXoxpYke2P8jgwtN
	bCO1Dt/p+Dry8gLuFSBw1jeNtW4doOQC2PW9Q3qvY3tzL8KvPH1kTDfuECSqurlC+uFb
	bqirOBhLqk31FyXlShPaQUycYHKmOhNilwv0yCdixr5x96z3Aap0Qos/F+CUdqSLkyJN
	gKgQ==
X-Received: by 10.70.108.137 with SMTP id hk9mr86776132pdb.105.1439546479899; 
	Fri, 14 Aug 2015 03:01:19 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	pk8sm5459772pdb.54.2015.08.14.03.01.17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Aug 2015 03:01:19 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Aug 2015 15:31:16 +0530
Message-Id: <1439546476-23068-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH v2] audit: fix qa warning, update config option
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
X-List-Received-Date: Fri, 14 Aug 2015 10:01:26 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

update config option '--with-armeb' to '--with-arm'
for audit qa warning fix.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/audit/audit_2.4.3.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.3.bb
index 8f125c0..869713a 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.3.bb
@@ -41,7 +41,7 @@ EXTRA_OECONF += "--without-prelude \
         --without-python3 \
         --disable-zos-remote \
 	"
-EXTRA_OECONF_append_arm = " --with-armeb=yes"
+EXTRA_OECONF_append_arm = " --with-arm=yes"
 
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
-- 
1.7.9.5


