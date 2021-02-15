Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web11.29900.1613388067830762351
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=jSET1MRb;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 428192C7;
	Mon, 15 Feb 2021 06:21:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=Bt0pvEs2SLwuJ
	xbq9ORg+/+ac1M2/howmNBAw3HqP/E=; b=jSET1MRbUdCwtjP50xfpLl9076FeB
	DIrpbqv7ytkyQfS5GLax8NsbjdNIi+j/eZLo9ED+Ru9LmhtGgtZ6EtSGaiC9zmhO
	HbRufYzkUOqJoTuc3izBlPaVnrl0BhoCD5gYUl8I2i7IuIKFQW+racuEjre/+/58
	GSbi34Dwn9qc2CHCzLvB6r/xKqOdVnB4eblxf2sbn55PKgFFcmzVaYD1tyPaP1jE
	Uz9Xcxiql0hna4RqMLG7K1CPZSbtoh23PXDfHaYAiJQxYSPmriM4x9swAwC79zT9
	78PWtfZr7nuCfYLBQJ7NGn5S2uCQADGS4QvW4VU4gRxUgDBhqM92Ilf7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=Bt0pvEs2SLwuJxbq9ORg+/+ac1M2/howmNBAw3HqP/E=; b=L91TOymq
	fY2mzw2sAe7sjbDTQZ1EdMEZfQdFHCGfyQReaxX2vbgj98HEzC+Ag7rDAYV8pzdQ
	szOPnyr0LyrZ5fCvUGpe88GmS76BWy00GED5JOip5rmIctu+3opigjkcB36eGSWL
	zqfPPON6QpMgFjXbjenbpSytuJ/zoDu7gwkUAweU55GHfhteaCHP8tRWHbOiNKQD
	CSl6v2Vw8LOkPe4jkjM5sV31ImQJSxHHBd1xPsK1WvMWoYzl9aKRJf542ifpS1I5
	1Zt2spYJ+Rns3wKPdV0fl0lblh9XEl7tR4fT2srIkisz44MBtkArIpXEoNtiqzhy
	GsnNnWnBlGRrBg==
X-ME-Sender: <xms:IlkqYIL2zmpdJrBtJkmM5VCh_tWMaWcB8Bb9FIYykAZ9F4dUICEWDA>
    <xme:IlkqYI6Q5c2vKNUf22l9E2sezzPFWbIqNGG0ekdmeJiEqD2JVkuSpDgDY2zaDI_cP
    PgYJ-tyrAqAnJlOV1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:IlkqYE0_tuByjeb4eEqJpqgtCAhm3P2AXLhoXzgGQenLfIa5xEAcUQ>
    <xmx:IlkqYGeYfJnqxSAQN6g0rPK_UAyfbm7qhSfM6iavZjQmQ32nRGQZeg>
    <xmx:IlkqYCdyuxqIZWvFnuCki1p7jtY6pHg1ckOZqC_4nbkFPT_9RD5m0A>
    <xmx:IlkqYA8ubF4cYXpQhoMf9SQEI6e87Hd7UPKnZ7_fr99NoiJbv6wuoQ>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 38CDB108006A;
	Mon, 15 Feb 2021 06:21:06 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 03/14] Cleanup superflous new lines
Date: Mon, 15 Feb 2021 11:19:52 +0000
Message-Id: <20210215112003.2025053-3-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
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

