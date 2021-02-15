Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web10.29748.1613388070787468793
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=UcnyGg2v;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id 392609D0;
	Mon, 15 Feb 2021 06:21:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=D4A7v3G/qVtlo
	JGfu6s5duHLOioY9wGAx7mbk/oY8pA=; b=UcnyGg2vU5oCWTZgSN/zHRgyBBca7
	qygqq/OP/jQ+o3WVZZFp5WFNN8zeobAsTi69B5PgOhqc0Zdpnv8zCHCBk7Ps8u1/
	V6hMMNLhgIQDqhjjZrG2jHBPHcUZ6DBDnFlcNCrFtsfsuJB+6wkS2NJeXRVoqKP9
	BVJRUsJ/J+uOmnKLKPQrQT1w4/1mCsnaBhqIKYrukqfTpFQZ5n9QgytA+zvICD0d
	wyuc77VDA1ctP/afldnvk+jk8AmPeiGYHZMGL9Uqvu/9n5CVS2RxsMKJ8OoABjMy
	LcAb8YB8E70DfaufxIzwbw8suamRL5BEqDpHR+BsX4X/AwBdg/S6VOw+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=D4A7v3G/qVtloJGfu6s5duHLOioY9wGAx7mbk/oY8pA=; b=qPHU1feY
	1kKC7+LYnTXqBYTvOiTiwiFcY103IlCq2DWbLMslxWOsgznkk6VEjI6plrserB03
	8ZEN00+9g2v9iIc78inoyyLA84LTLFOGvLEiUIL5/hv+dgrhY4auMqg+E+kZ3cjj
	SF/cGkFQNwm8t2anweREMkoIv6gBM26rXxlh7Ww+HEQnE2TbPdUEUEgBgLDJaGom
	k85UN5Dbs71tzuBhAd0S4tOSVHkaSgHhIZzGSKgwWJo3oEywyYN0Ba4Jno4fuBxV
	svHzXzJ5WRjl6+TeanFAPySJuj+3J34SSd+K7Dm1ixeWTnJcegGGmV6Ah/XYgM/t
	J6cTlfr6dv7Wfw==
X-ME-Sender: <xms:JVkqYFENR1C95WY7zWTE_aUf81WZTbrTZMGuDrkVFSTRphzn3fPoNg>
    <xme:JVkqYPuEzhADYbdrdrktiWQ0eySOiXA1iCXXvbg6xq6pblNGDkmIEp3I3BKnHTAXx
    BrKqmNAzFM0id8DZss>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:JVkqYHUH-Q9nfHhdO2Wr3ZaR8uduLi9DPklbfE2Zth5_kgSHTFDc1A>
    <xmx:JVkqYLHdqYJWZwRXJlKP2usNLozetDmjsi_mYg6LbFL--zf0j2ZszQ>
    <xmx:JVkqYJ2UTaLMKZphlboaBzvxubnwYtvW3qFDovoUOmtnvWudsK2d-Q>
    <xmx:JVkqYBv7YO6QKVb-hwTuGImqHwt9juQH7rJC8LcR8IANOGtmzLfFVA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 6FAC21080068;
	Mon, 15 Feb 2021 06:21:09 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 09/14] Use an include file for the common parts of the sample recipes
Date: Mon, 15 Feb 2021 11:19:58 +0000
Message-Id: <20210215112003.2025053-9-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb | 16 ++--------------
 .../zephyr-kernel/zephyr-helloworld.bb          | 13 +------------
 .../zephyr-kernel/zephyr-kernel-test.bb         |  4 ----
 .../zephyr-kernel/zephyr-kernel-test.inc        |  2 --
 .../zephyr-kernel/zephyr-peripheral-esp.bb      | 17 +++--------------
 .../zephyr-kernel/zephyr-philosophers.bb        | 13 +------------
 recipes-kernel/zephyr-kernel/zephyr-sample.inc  | 13 +++++++++++++
 7 files changed, 20 insertions(+), 58 deletions(-)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-sample.inc

diff --git a/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb b/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
index ec6b13e..c66c7ec 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-hci-uart.bb
@@ -1,17 +1,5 @@
-require zephyr-kernel.inc
-require zephyr-kernel-common.inc
-inherit deploy
-
-COMPATIBLE_MACHINE = "(96b-nitrogen)"
+include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/hci_uart"
-ZEPHYR_BASE = "${S}"
-
-OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
 
-do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
-}
-
-addtask deploy after do_compile
-do_install[noexec] = "1"
+COMPATIBLE_MACHINE = "(96b-nitrogen)"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
index 84db068..ac5ce62 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -1,14 +1,3 @@
-require zephyr-kernel.inc
-require zephyr-kernel-common.inc
-inherit deploy
+include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/hello_world"
-ZEPHYR_BASE = "${S}"
-OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
-
-do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
-}
-
-addtask deploy after do_compile
-do_install[noexec] = "1"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.bb b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.bb
index 46d93f0..2918d2d 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.bb
@@ -2,7 +2,3 @@ require zephyr-image.inc
 require zephyr-kernel-test.inc
 
 BBCLASSEXTEND = '${@" ".join(["zephyrtest:" + x for x in d.getVar("ZEPHYRTESTS", True).split()])}'
-
-
-
-
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index a1e62af..b6b4766 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -2,11 +2,9 @@ ZEPHYRTESTS_remove = "fifo fpu_sharing lifo mbox mem_heap mem_pool \
     mem_protect mem_slab msgq mutex pipe profiling sched semaphore \
     stack threads tickless timer workq"
 
-
 # Exclude tests which does not build for various reasons
 ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
 
-
 # test_context will fail because QEMU for ARM does not emulate CortexM3 BASEPRI register
 #ZEPHYRTESTS_remove_arm += ""
 
diff --git a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
index 24f030a..8be90d1 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-peripheral-esp.bb
@@ -1,16 +1,5 @@
-require zephyr-kernel.inc
-require zephyr-kernel-common.inc
-inherit deploy
+include zephyr-sample.inc
 
-ZEPHYR_SAMPLE_NAME="samples/bluetooth/peripheral_esp"
-ZEPHYR_SRC_DIR = "${S}/${ZEPHYR_SAMPLE_NAME}"
-ZEPHYR_BASE = "${S}"
-OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
-ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
-
-do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
-}
+ZEPHYR_SRC_DIR = "${S}/samples/bluetooth/peripheral_esp"
 
-addtask deploy after do_compile
-do_install[noexec] = "1"
+ZEPHYR_MODULES_append = "\;${S}/modules/crypto/tinycrypt"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
index b8262ca..a2afb57 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -1,14 +1,3 @@
-require zephyr-kernel.inc
-require zephyr-kernel-common.inc
-inherit deploy
+include zephyr-sample.inc
 
 ZEPHYR_SRC_DIR = "${S}/samples/philosophers"
-ZEPHYR_BASE = "${S}"
-OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
-
-do_deploy () {
-    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
-}
-
-addtask deploy after do_compile
-do_install[noexec] = "1"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-sample.inc b/recipes-kernel/zephyr-kernel/zephyr-sample.inc
new file mode 100644
index 0000000..f7621d1
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-sample.inc
@@ -0,0 +1,13 @@
+require zephyr-kernel-src.inc
+require zephyr-kernel-common.inc
+inherit deploy
+
+ZEPHYR_BASE = "${S}"
+OECMAKE_SOURCEPATH = "${ZEPHYR_SRC_DIR}"
+
+do_install[noexec] = "1"
+
+do_deploy () {
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT} ${DEPLOYDIR}/${PN}.elf
+}
+addtask deploy after do_compile
-- 
2.30.1

