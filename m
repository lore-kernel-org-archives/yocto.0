Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADE4E00931; Tue,  9 Dec 2014 06:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15FA8E0090E
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 06:24:07 -0800 (PST)
Received: by mail-qg0-f49.google.com with SMTP id a108so447366qge.36
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 06:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:organization;
	bh=mTOMeVeoH5ckO27RVwbaZ4wL6/hHazSvhXlSDT7I/kY=;
	b=OSX5Qx4IID/jYnv84ngtrT3LEVY8OmNc6fmRS3qN53mJufduPbqbnC18UuyJC/L2qv
	tkoX5sijxLtYOtnkHELTkaZerUfWcdPZ1zmHy5Pbdm9Yu7wZ8s9T+I48yF0+No2lWI4L
	k6Enf1z7emnadzirSWsbcPscBZ+f9znKsFumBc9g9q5TyF9l97GNpWsXp0BSteyal01+
	7/FQjn4eT1fABPLBXP9KOKd5CfhRk+EMfsnuqRLTKHPVw7SoR6emYtjHEKGwV8YmHJD3
	3xFmTnzVs297/mOR6KvVghrD+QiMDzFbtyI5wdMFB4rUiQbRw7HYMfTJ393T3IcCgOXm
	DWBA==
X-Received: by 10.224.56.3 with SMTP id w3mr3986930qag.51.1418135047024;
	Tue, 09 Dec 2014 06:24:07 -0800 (PST)
Received: from nano.lab.ossystems.com.br ([177.194.193.50])
	by mx.google.com with ESMTPSA id p14sm1219067qaa.1.2014.12.09.06.24.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Dec 2014 06:24:06 -0800 (PST)
Sender: Otavio Salvador <otavio.salvador@gmail.com>
Received: by nano.lab.ossystems.com.br (Postfix, from userid 1000)
	id CA5561C9342E0; Tue,  9 Dec 2014 12:24:02 -0200 (BRST)
From: Otavio Salvador <otavio@ossystems.com.br>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Date: Tue,  9 Dec 2014 12:23:56 -0200
Message-Id: <1418135036-30801-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 2.1.3
Organization: O.S. Systems Software LTDA.
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 14:24:10 -0000

The Debian 8 (codename Jessie) is frozen and has been in use in our
machines for some time. It has been working fine and as it is about to
be released it is better to whitelist it and remove the ugly warning
from build logs.

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 0e66e84..72db36d 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -81,6 +81,7 @@ SANITY_TESTED_DISTROS ?= " \
             Fedora-20 \n \
             CentOS-6.5 \n \
             Debian-7.* \n \
+            Debian-8.* \n \
             openSUSE-project-12.3 \n \
             openSUSE-project-13.1 \n \
             "
-- 
2.1.3


