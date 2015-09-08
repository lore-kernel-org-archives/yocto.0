Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D83E4E00BF8; Tue,  8 Sep 2015 13:01:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4366BE00B6D
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 13:01:35 -0700 (PDT)
Received: by igxx6 with SMTP id x6so25296518igx.1
	for <yocto@yoctoproject.org>; Tue, 08 Sep 2015 13:01:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=bNYNNeZkhM3cQ02oMP0szHzbEN9sh5OMjKpM4dyAYx4=;
	b=JWOEHYCHBXRmFZqbVR0tmy+T2pGgCNt7MqpCnB8DHHTKIw/G/et43Dz/OZ3YdkBCES
	xLPVEigCTiHf1PXw/FUqz+RXMpXPP+aO1joDYXd0Cxzc1lAN49Rbm1DzDCczF8o09dK8
	HIX7LnI9t63zAifaOrG3TpSiNM98ukyjUcg1+pL6ayq8WTYSicl4XTQBrahwUJQzzboN
	hqlXfjA8SmagsJe+dF0lBvBhBkSHTmkEGhiCHCIoOJSYOXmIpcsRzySreDjNKuCEhwx4
	2h+03UZ8LU7S+kYTYHBC7heDhAfjedwyenhDx4ZlfQyDm0E+aIeGMuRwbN6G8YBXYIRz
	GY3w==
X-Gm-Message-State: ALoCoQmDshwY3PAn2P8mrx/cwFcjjNjwbAhNJLuvPYvqySaobRpZr6zeo4gDa31dDEEXVXcGfogB
X-Received: by 10.50.56.113 with SMTP id z17mr36813862igp.4.1441742495225;
	Tue, 08 Sep 2015 13:01:35 -0700 (PDT)
Received: from mir.deserted.net ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id
	p65sm2929431ioe.26.2015.09.08.13.01.34 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 08 Sep 2015 13:01:34 -0700 (PDT)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue,  8 Sep 2015 16:01:36 -0400
Message-Id: <1441742496-17619-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-selinux][PATCH] net-tools: update bbappend for new base recipe
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
X-List-Received-Date: Tue, 08 Sep 2015 20:01:40 -0000

Commit bf362e4a8bb9fef3d16b81dea7b39a057e293ee4 in poky updates net-tools,
take this opportunity to convert this to a wildcard, since the bbappend
still seems to apply.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 recipes-extended/net-tools/net-tools_%.bbappend       | 11 +++++++++++
 recipes-extended/net-tools/net-tools_1.60-25.bbappend | 11 -----------
 2 files changed, 11 insertions(+), 11 deletions(-)
 create mode 100644 recipes-extended/net-tools/net-tools_%.bbappend
 delete mode 100644 recipes-extended/net-tools/net-tools_1.60-25.bbappend

diff --git a/recipes-extended/net-tools/net-tools_%.bbappend b/recipes-extended/net-tools/net-tools_%.bbappend
new file mode 100644
index 0000000..e99a5bc
--- /dev/null
+++ b/recipes-extended/net-tools/net-tools_%.bbappend
@@ -0,0 +1,11 @@
+PR .= ".2"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://netstat-selinux-support.patch"
+
+inherit selinux
+
+DEPENDS += "${LIBSELINUX}"
+
+EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
diff --git a/recipes-extended/net-tools/net-tools_1.60-25.bbappend b/recipes-extended/net-tools/net-tools_1.60-25.bbappend
deleted file mode 100644
index e99a5bc..0000000
--- a/recipes-extended/net-tools/net-tools_1.60-25.bbappend
+++ /dev/null
@@ -1,11 +0,0 @@
-PR .= ".2"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://netstat-selinux-support.patch"
-
-inherit selinux
-
-DEPENDS += "${LIBSELINUX}"
-
-EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
-- 
1.9.1


