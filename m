Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1295CE00D1B; Thu, 28 Mar 2019 11:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0891CE00D16
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 11:56:17 -0700 (PDT)
Received: by mail-yw1-f46.google.com with SMTP id l5so15369282ywa.0
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 11:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=CahqgI18piQO1Hk164bdL97y+BR1JDehvXph7B1Ay1g=;
	b=g80PMLnI9C7CR3/wPifsH2FRIBQ7wWAZLuPB8hadhp+omaGZaXsgcy+GHA0Xpqg4Zm
	CsyOZhpFSb0hRMWyz9hJL9KtZVm2RUzkLGq9XhWTqyhDJ5foF+wx65pMTz1b5+AIt/cN
	GjiNHDCXVSW3Q5RzGFL+A5VmdkYWsedLxcJIrrvgA1wzM44IABMoZWeuTDmsszIPwVqN
	mxSB53VDFrfMGUrMBA5ghDsNRauj90VZ31w0gmxqgzaMe7f+X8wogOWWC2hZICFbZ8Rd
	icFzeyi2eRQoORJNFsCUyT3HOBiMkz5mHqjAjtC5JH72qXpAKt7Q0H2I0PHmKp/cqnDv
	0RHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CahqgI18piQO1Hk164bdL97y+BR1JDehvXph7B1Ay1g=;
	b=BkSXnGi19+w+biqsq6zPUxyv+f5WoOab4keAqCSrg2ciX964LmzHv+BwhfdMAGecjL
	4tZLTcaYU8DVGN1H5OK+EpP58fndClm/J64sM8JOGLrgjQsq7iwoq+3GQGIBXuQXekKY
	xmcspUdrSEGM9LcFuc1Xx8asGbPCwbOqqblXTjnPxXmechLbJ6w/OPEgfqVlKxcz5Yit
	dwQUzXs05JVYwYM6gDq9G6cMOPpXXTzmZvHq9ysbA094AVBEKAab33l8qJaC/odxlaQf
	aMP6n9jrHqcR23YJhOnIB5mKc6+xTDNIKq5ds+EF5Of9YXT1/vsVhatnyEjHQ2PG4E3T
	MkYw==
X-Gm-Message-State: APjAAAVEFzL888iqgqvBs622gTjISru6BOsgjuwCV6YeO0/U6s4fdPjp
	PSjS1zeq5+8tOYIJAgXjqSida/Y3WYTdfz0d
X-Google-Smtp-Source: APXvYqyx/kpanls/CTqOt6LSTgOGNGJsvXTcSdqS0Au5c7jjB2qhnEDq6Q76eGmiV74ZuBwwXFAsew==
X-Received: by 2002:a0d:e185:: with SMTP id
	k127mr36885301ywe.456.1553799377313; 
	Thu, 28 Mar 2019 11:56:17 -0700 (PDT)
Received: from graymalkin (76-230-155-4.lightspeed.rlghnc.sbcglobal.net.
	[76.230.155.4]) by smtp.gmail.com with ESMTPSA id
	x16sm22654176ywx.74.2019.03.28.11.56.15
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 28 Mar 2019 11:56:16 -0700 (PDT)
Received: by graymalkin (sSMTP sendmail emulation);
	Thu, 28 Mar 2019 14:56:15 -0400
From: Jon Mason <jdmason@kudzu.us>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Thu, 28 Mar 2019 14:55:52 -0400
Message-Id: <20190328185553.5247-2-jdmason@kudzu.us>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20190328185553.5247-1-jdmason@kudzu.us>
References: <20190328185553.5247-1-jdmason@kudzu.us>
Subject: [PATCH 1/2] meta-yocto-bsp: clean up machine config files
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
X-List-Received-Date: Thu, 28 Mar 2019 18:56:20 -0000

Beautify the machine config files by making the names and descriptions
more uniform and verbose

Signed-off-by: Jon Mason <jdmason@kudzu.us>
---
 meta-yocto-bsp/conf/machine/edgerouter.conf    | 2 +-
 meta-yocto-bsp/conf/machine/genericx86-64.conf | 5 ++---
 meta-yocto-bsp/conf/machine/genericx86.conf    | 5 ++---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf  | 3 ++-
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 78c87f2f87..88592dbc85 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -1,6 +1,6 @@
 #@TYPE: Machine
 #@NAME: Edgerouter
-#@DESCRIPTION: Edgerouter
+#@DESCRIPTION: Machine configuration for a generic edgerouter
 
 require conf/machine/include/tune-mips64.inc
 
diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index 12f7c0d200..c489462dca 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -1,7 +1,6 @@
 #@TYPE: Machine
-#@NAME: Generic X86_64.
-
-#@DESCRIPTION: Machine configuration for generic X86_64 (64-bit) PCs and servers. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
+#@NAME: Generic x86_64
+#@DESCRIPTION: Machine configuration for generic x86_64 (64-bit) PCs and servers. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
 
 DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 798b62ec2b..9929d2788a 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -1,7 +1,6 @@
 #@TYPE: Machine
-#@NAME: Generic X86.
-
-#@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
+#@NAME: Generic x86
+#@DESCRIPTION: Machine configuration for generic x86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
 
 DEFAULTTUNE ?= "core2-32"
 require conf/machine/include/tune-core2.inc
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 54a34be3aa..e2dce56738 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -1,5 +1,6 @@
 #@TYPE: Machine
-#@DESCRIPTION: Machine configuration for running
+#@NAME: Freescale MPC8315E-RDB
+#@DESCRIPTION: Machine configuration for Freescale MPC8315E-RDB
 
 TARGET_FPU = ""
 
-- 
2.17.2


