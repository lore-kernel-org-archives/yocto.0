Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.9519.1613489643887660903
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=maEvd8Lx;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 5E4B5B58;
	Tue, 16 Feb 2021 10:34:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=Bt0pvEs2SLwuJ
	xbq9ORg+/+ac1M2/howmNBAw3HqP/E=; b=maEvd8Lx0orKatHlxiIvWJ8yxO0OS
	j24+0M33iIruKX198MelRyO1BhEo5VPY4N3PfCx1z/GLElimuf3JUWo8UbahTO+7
	nui+p51SY7LbDdmn2qyi1P4J7A0XVGuUebGJY692imNsFau6U+Iz5syk0kiRlvF9
	BrZFxlsQyqC5pVmgcSbqztdoR2VhCUx9mnCvesKASVZNSSuQU/tY9Gf8GcqyjP9H
	EKFqcIn35h9XnblfpTb2RPR67g6P1Zr1SNDl8tkyreXj6e5wEVP00m8q/g2GZo4f
	LlfRvISQL9fOTfEbqdHll9hkGn5YSczhA9toen1nUUY30Y10QCfiwUxQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=Bt0pvEs2SLwuJxbq9ORg+/+ac1M2/howmNBAw3HqP/E=; b=NjvyAhuS
	gBKFCZEnrkgauZGYrYgW32LgiRVTdutDE23y14pQ8l1EyJg0+82IiTEB1NEuWQ5B
	vMwrvh370BXl9FmK4Q3ybu9K/YnMbB9ePJ/Q1fTm5jHLj1C1HRugMlXBheA2fOJE
	cwEa81NXjIIK1ncCr5iIHE26HqHprykEAclMFg27APGuKEOVUlR0F18CEwfQp+tC
	MMssMvH4w3UtJn4DMS/5kA6yv8VStZs61XooN1BvSVXPO1sCojO+9hvzWzivbjkX
	/xr490u7Keotuj+XpAFAwHuJC3zV8qkecKg9iy2R0igsc8+R2qQOZgp75pnk1yEi
	HFeNFo+QeMO4zg==
X-ME-Sender: <xms:6uUrYJ3bfyTQnjQOWoHQRomwmIyvY3mwFiV-uLF7sfzs241aqdg7PA>
    <xme:6uUrYFkmBku42J_BdTcCa1vrbq0kH6t0pNpMs-80Oj4BOS_DY52aAwDwZH03wWaou
    wwip6FftbdALw3-O7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:6uUrYI8bHStu5aYxYx5lfp5Ts_LymSeTYb8AVH7jAkU6mkL9pR5huQ>
    <xmx:6uUrYLJDlLXUh3T4KzXeqjUeWBIepDQybH6aKGsaWOAgjxsg8HA9Fg>
    <xmx:6uUrYFg9dZubbt5y9QIljRbUqUQhVhgxE8nBVa-kkCoKB1yaNwJlhQ>
    <xmx:6-UrYKfT56UFoJTHkkUa159_NnOSLqoTyXr6WmyyK4qcwz39qvJb7g>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9BED6108005B;
	Tue, 16 Feb 2021 10:34:01 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 03/15] Cleanup superflous new lines
Date: Tue, 16 Feb 2021 15:32:58 +0000
Message-Id: <20210216153310.79138-3-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyrtest.bbclass          | 2 --
 conf/distro/zephyr.conf             | 1 -
 conf/machine/include/tune-arc.inc   | 1 -
 conf/machine/include/tune-iamcu.inc | 1 -
 conf/machine/include/tune-nios2.inc | 1 -
 5 files changed, 6 deletions(-)

diff --git a/classes/zephyrtest.bbclass b/classes/zephyrtest.bbclass
index 3acc4c3..248fd15 100644
--- a/classes/zephyrtest.bbclass
+++ b/classes/zephyrtest.bbclass
@@ -51,5 +51,3 @@ python testdata_clean() {
 }
 
 addtask do_testdata_write before do_build after do_deploy
-
-
diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
index a98da32..6ecd421 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -1,4 +1,3 @@
-
 DISTRO = "zephyr"
 DISTRO_NAME = "Zephyr"
 DISTRO_VERSION = "1.0"
diff --git a/conf/machine/include/tune-arc.inc b/conf/machine/include/tune-arc.inc
index 4bb6f4f..ff841e7 100644
--- a/conf/machine/include/tune-arc.inc
+++ b/conf/machine/include/tune-arc.inc
@@ -18,4 +18,3 @@ AVAILTUNES += "no-sdata"
 TUNEVALID[nodata] = "ARC no-delete-null-pointer-checks"
 TUNE_CCARGS .= "${@bb.utils.contains('TUNE_FEATURES', 'no-delete-null-pointer-checks', ' -fno-delete-null-pointer-checks', '', d)}"
 AVAILTUNES += "no-delete-null-pointer-checks"
-
diff --git a/conf/machine/include/tune-iamcu.inc b/conf/machine/include/tune-iamcu.inc
index 6935375..20a93a6 100644
--- a/conf/machine/include/tune-iamcu.inc
+++ b/conf/machine/include/tune-iamcu.inc
@@ -9,4 +9,3 @@ TUNE_ARCH = "i586"
 TUNEVALID[iamcu] = "Intel MCU"
 
 PACKAGE_EXTRA_ARCHS_tune-iamcu = "iamcu"
-
diff --git a/conf/machine/include/tune-nios2.inc b/conf/machine/include/tune-nios2.inc
index c74326d..e8662eb 100644
--- a/conf/machine/include/tune-nios2.inc
+++ b/conf/machine/include/tune-nios2.inc
@@ -1,4 +1,3 @@
-
 # Nios2 Architecture Definition
 
 DEFAULTTUNE ?= "nios2"
-- 
2.30.1

