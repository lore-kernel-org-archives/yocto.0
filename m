Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A41EE00C8B; Wed, 15 Jun 2016 02:37:36 -0700 (PDT)
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
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6B26E00C7D
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 02:37:34 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id e5so2412155ith.2
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 02:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=i4+z0qkR/KSorf5w6knDDXbVrVsquZnFqIZswcL86J0=;
	b=HvFwQ3zFHdJGDBqsYcthU3ADH+xXaJEhI+SYmlbBNuzPpx9opc7yoZvb2W/uUQHDOV
	STH/ZHBSe1dB8nuYqP13+z8E7qa9vrMZx6A4uhl3SslPtoUNa2AxvnINxOojus4Sn7BX
	oRwbXiWrrYX4KwONAhzBbOFA2NZhGxk+rGP7e7wlumDpODV1cdrVxGvJBLHKgRV3Qj9I
	Nuq+lPbEVay2XcR5R0HPHZmA14rVd0h3TTCo81Ue//6BmD/+TcigFt7qj5zSw8AWAZ+m
	S9biblPpZCIiCQ8ZP0cRlojOvCMQhLa1qT+0bARvFRCseZSb475Uk2vAheprVdc1Sn80
	EL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=i4+z0qkR/KSorf5w6knDDXbVrVsquZnFqIZswcL86J0=;
	b=hnoA1XxkemgpeHmnQptLvTfHp1chvmxNFmO32chi0gI33TOaX+XTUfu7gJASOFdxTK
	nSYxQ+4M/+G/PAAcL1VkApLI1jXWOH93O6ddnk5K7DfhRfZPAbc+d6BZ+0wJftWVE/+M
	5gVpD+4c7asMoYTfvPPl1126XEsFQCeMBxiqRLKJFLZHF6oZm2184MdzU8LYLfcT0UAb
	ov2q/NGHx8gjc88K7dwn1Uq1KhfYtzwfuHRsOwAlECUBbIhzzClFZzF3z74Uwhg5uhNZ
	HrPgC2UEVt1JoQycft0DSrH92JDQjJhU3e8lOn0b+Rq96NgEmEb9uMP6WG+KRombOn+n
	3BJQ==
X-Gm-Message-State: ALyK8tLA/9sa/I+/zEVV7RTdlI7LJ8MXPUUP+lPw+O5xoZOX+UY+dAiCOu+fOH1SyPdqOg==
X-Received: by 10.36.48.138 with SMTP id q132mr15539094itq.82.1465983453897;
	Wed, 15 Jun 2016 02:37:33 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	h193sm9710735ioe.40.2016.06.15.02.37.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 15 Jun 2016 02:37:33 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 15 Jun 2016 15:07:13 +0530
Message-Id: <1465983433-13244-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] eudev: add wildcard version
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
X-List-Received-Date: Wed, 15 Jun 2016 09:37:36 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

eudev version at poky updated to v3.2 from v3.1.5, so moving it to use
wildcard in order to fix the parsing error.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-core/eudev/eudev_%.bbappend     | 3 +++
 recipes-core/eudev/eudev_3.1.5.bbappend | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)
 create mode 100644 recipes-core/eudev/eudev_%.bbappend
 delete mode 100644 recipes-core/eudev/eudev_3.1.5.bbappend

diff --git a/recipes-core/eudev/eudev_%.bbappend b/recipes-core/eudev/eudev_%.bbappend
new file mode 100644
index 0000000..e1e7cd1
--- /dev/null
+++ b/recipes-core/eudev/eudev_%.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit enable-selinux
diff --git a/recipes-core/eudev/eudev_3.1.5.bbappend b/recipes-core/eudev/eudev_3.1.5.bbappend
deleted file mode 100644
index e1e7cd1..0000000
--- a/recipes-core/eudev/eudev_3.1.5.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-inherit enable-selinux
-- 
1.9.1


