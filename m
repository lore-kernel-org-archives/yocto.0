Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web08.9340.1613489657208022975
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=jYiwGQR1;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id A464EB43;
	Tue, 16 Feb 2021 10:34:16 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=D4A7v3G/qVtlo
	JGfu6s5duHLOioY9wGAx7mbk/oY8pA=; b=jYiwGQR1N/fx7GTeLc8pAEHdNKQI7
	mfeGPH3EuisjBnqrTB90k5BqtLJPu9Ym7DUbANgvRWPT+KPOjCoWzC7CUwrcLOiB
	Lgkhydbz0Yb6La7Ii3NZ799YKeKDwGxeqruxUDhEmU7MfE+k922iIgae7yf3vXoA
	k7qkJwq8dlI/Gki6lWs9QKSam5SEqzNW+YEPlwYB/jkCeHibgh97D0RBsJ1xUaZG
	GbHL6yZFqJli6qEKLqCQ/AEXNRAcLQGw2vuZzlFSfeSq8JEfXM/hsSI3WkVWHFhA
	vHPHzFt0UWwEnXTDmT+ij65pctCn3rwOTYFcw75kiQHxecF9Ybk4/k+zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=D4A7v3G/qVtloJGfu6s5duHLOioY9wGAx7mbk/oY8pA=; b=jsQdqOEd
	nBq1YmJO1A1byqxpbgB7mL6OjR+t4a5/AjCJyCV26ocHnuZUJfR1Vus8F97qhwK6
	wvsfnvGHaeRRRQVBcD7F8GEPcuz+tSv+yGG/aWcIAYJhGBAbj0qc+3LV9gS/oNgC
	f7b58uhBhf5vZZg5yoR5jbLQ4zQVVhMBrABnS4qYhYvjtILnCqM4b+ikYS6q1zBn
	ao307JynsrVaOshM4y276rWYTWoPtxDX/7dMLJqwmkOEXfVvUXt4ddnZ84twOvp9
	AEi8jU8PFyLBQAzFs7FZXKNX1uBAFqeRsjDDMbB3LCf/LHuh09eMSUF6fZ7LEqsr
	bXgfttQmkdxwKA==
X-ME-Sender: <xms:-OUrYEV9jRCwNgHLYmFidBDVHMcUQNwF6tDNuFSrI55k5spwAwn44g>
    <xme:-OUrYIlwXMQtsrJhIocMX97JWLaUO6Iw5lSaq6MszOGvHH43uzq5UoPfx8bc7kIXI
    9LxiFgh1fyJG88y94g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:-OUrYIZYIyxZy-Jh0fVbePI8OQMgFbfpxX3LFZCdWxkixMcT_9t_pA>
    <xmx:-OUrYDWBAKExDDLvk93Q0XlDkQpatIIBd-eiKcGgixKTHy6s-4cHuA>
    <xmx:-OUrYOllbFDDPvvAGJNpn7wZ_cL2p5K1AIIIsTtPPTeQXYd4CUPIdA>
    <xmx:-OUrYITLYIR_qatmRGjGpV3mmUK_aryOTpi_Qr-5h1uAYRq_Il4AkQ>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id AC84E108005F;
	Tue, 16 Feb 2021 10:34:12 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 09/15] Use an include file for the common parts of the sample recipes
Date: Tue, 16 Feb 2021 15:33:04 +0000
Message-Id: <20210216153310.79138-9-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
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

