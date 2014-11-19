Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42749E008CA; Wed, 19 Nov 2014 00:16:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD7F1E0087D
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 00:16:33 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id z12so111155wgg.29
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 00:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=6MS/hhLXk+8n0Kzz3lSUxKtxpSMMjLgGTaX0QjAKxeI=;
	b=NfJ3lvfuI+y0Pz+bK7t+NJFbpbZDAwCNWf6PmUpn2DoH+aJbZZJUMw8xm5905fVY69
	ccybqVkTyESAdaq02GVX3hbqDr4qsKG6mfBmq9uJuDBsblloNSUYYv4SgsKf26WrpkDp
	KBlM4zAMBobJoXgiSUxg9+2hApbqyf3gorZcY6DoMA7E/tdE3GHfcFZbF/wqdUZ+psqO
	hSyCRnnfyJJDtmH7gPcrrDBPnrbaTYeRyMZcpkEjqwpehZc85LrTNCydjy46ibV4czI8
	NfxjyWdlnF/ABhVrLLtS5RMVP4GihMVXvrFXbY9QJrXxHCNijpgFdCoHSO6KoL8thNUN
	a2sw==
X-Received: by 10.180.87.72 with SMTP id v8mr11239094wiz.22.1416384992126;
	Wed, 19 Nov 2014 00:16:32 -0800 (PST)
Received: from sbobade-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id cr6sm1192793wjb.44.2014.11.19.00.16.29
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 19 Nov 2014 00:16:31 -0800 (PST)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Nov 2014 13:46:21 +0530
Message-Id: <1416384981-18501-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: [meta-selinux][PATCH 3/3] pkggrp-core-selinux: coreutils addition
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
X-List-Received-Date: Wed, 19 Nov 2014 08:16:45 -0000

From: Shrikant Bobade <Shrikant_Bobade@mentor.com>

To add coreutils to packagegroup-core-selinux
inorder to get chcon avaibility.

Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
---
 .../packagegroups/packagegroup-core-selinux.bb     |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 1852aba..40b35d1 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -25,4 +25,5 @@ RDEPENDS_${PN} = " \
 	selinux-config \
 	refpolicy-standard \
 	refpolicy-mls \
+	coreutils \
 	"
-- 
1.7.9.5


