Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AFA9E007AD; Tue, 19 Aug 2014 04:57:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52EDCE0079B
	for <yocto@lists.yoctoproject.org>;
	Tue, 19 Aug 2014 04:57:37 -0700 (PDT)
Received: by mail-yk0-f177.google.com with SMTP id 79so5243614ykr.22
	for <yocto@lists.yoctoproject.org>;
	Tue, 19 Aug 2014 04:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:organization;
	bh=KYF8De4WDD44GDeBa3RfUrrW3r6/I8EXHO0X8OMYyfw=;
	b=I+if6sFoC9LkUwlXoHn6cfAq7IorlqA8UhNOP5sou573kyfq9WkN3vsJB6ts6+O0uL
	9B6wQDniVd7kGucsnIN1JF2aFJrySF8BI1UQ8GSj82pCHj0w3iaf7ExIrOfNC+iDIZ3z
	xBNXnLX+AZAzQLNGS7u4c7e0esZMn6UFg9rnFAhf4n6RmYgFi9uQu+mIv4UoBL8iXfbH
	hn9RRgJiZqyeMXZzhSNFTPgmtTiOqrF7mmHpfkXdfZa2eB3bqDvk+QZ2fS9hT8jDpYST
	g88UChODQyQBBMJINwCbL8SaCSnBatt1P7hrdxQBJU/63ZcpxouR3PYsMAUxPMZcYOgo
	0pqw==
X-Received: by 10.236.174.10 with SMTP id w10mr52679193yhl.30.1408449456858;
	Tue, 19 Aug 2014 04:57:36 -0700 (PDT)
Received: from nano.lab.ossystems.com.br ([177.35.70.10])
	by mx.google.com with ESMTPSA id
	s48sm15078144yhk.48.2014.08.19.04.57.35 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Aug 2014 04:57:36 -0700 (PDT)
Sender: Otavio Salvador <otavio.salvador@gmail.com>
Received: by nano.lab.ossystems.com.br (Postfix, from userid 1000)
	id 83E331C2EE968; Tue, 19 Aug 2014 08:57:32 -0300 (BRT)
From: Otavio Salvador <otavio@ossystems.com.br>
To: yocto@lists.yoctoproject.org
Date: Tue, 19 Aug 2014 08:57:31 -0300
Message-Id: <1408449451-8566-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 2.1.0.rc1
Organization: O.S. Systems Software LTDA.
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: [PATCH] distro/poky: Add Debian 7.5 and 7.6 version as validated
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
X-List-Received-Date: Tue, 19 Aug 2014 11:57:42 -0000

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 meta-yocto/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index ec251f9..34ce8ec 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -88,6 +88,8 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-7.2 \n \
             Debian-7.3 \n \
             Debian-7.4 \n \
+            Debian-7.5 \n \
+            Debian-7.6 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
             openSUSE-project-13.1 \n \
-- 
2.1.0.rc1


