Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web09.29619.1613388073005884988
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=m+EKgFD6;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 6300BA3E;
	Mon, 15 Feb 2021 06:21:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 15 Feb 2021 06:21:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=HsnZ8VXo+pz+W
	7m0ZGiXOnx2f99Jnh/U8GhtTIMWTmg=; b=m+EKgFD6diu3fAhIcl7nz+Xz+d+H8
	/Wvh6FiSqsSFHJDdJE/7JP4WyeQgHL8eqKHkmd1AMf9BkTE2CwzMOnInlAZ1htTU
	QeP4w0zq4xbEpvtdIxyudIv4j1KoQR/3+eX2Ko87asKQ4om9jBQ1wrRSXacBfY73
	gq2CNra8p7ymzEy7ym0UUNjJBwFc4Ehpp2X9C7xWKjT+L6FyY2wPlX0DayJtMrwI
	recxGLNNOdlNCL5UI+5TIjux4N5A89tXJT8VJh6lZiZsZOsj/84lbA80Awy7utcp
	u5IVJrRUC85FuCUgsExUDujPeRNpnUBW9H6fhcqG4Hmqssow7Px9KdCtg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=HsnZ8VXo+pz+W7m0ZGiXOnx2f99Jnh/U8GhtTIMWTmg=; b=Fx/9j4KN
	miq5ptUmN4El+WqCqn5aBMBpC27a/4eAmW9XWCERUeXp9vcgyuR5zdATfAMTMEYH
	U3KoJYIFZuyVwukFfe6Pr+qmEelyDflAuJfwLvFQbbp+/CZjtUedizpwogk8gcBJ
	W10GMWpjQ10k50bhbgtWX6cB/vxx9lfkA+8a3fRU2TqxZX7i2BTpRQHyv1RtOLwh
	IapoSr6l0E3u12pZpZg19H4AbFe8oC0kRwY9mgWeewTvF/sswsr7UxBNzNktcQX+
	iAaymfFuwg2UmXrCXtDQfTKPwu1uB4Y7iwg1VsK/bmBpLSBqg/A7p8bxCz/NRomg
	syfdRX59QBHR5A==
X-ME-Sender: <xms:KFkqYBw-3L0PNfroYk8Z91j7F9tEmGk1YO2DTDUvDhV3gMDz9UIU1w>
    <xme:KFkqYE_b1DezgzkTNMQW5xtehPZ7tm9zwtwSyJqyMumHVhENCXCm05bhdHO0PjX8-
    RBF1H06ZB7Iq4zipAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhephfdtheeghfegteehtefhveeutd
    ffveehffelteegveegffeigfeileeiteeutdeinecuffhomhgrihhnpehgihhthhhusgdr
    tghomhdpsghorghrugdrthgrrhhgvghtnecukfhppeekiedrudeftddrudegiedruddtvd
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgu
    rhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:KFkqYFK1QfrwEUPcDGfR9WkPe8-2r1XY9m-eRf6sbo6xMeSb-OsTag>
    <xmx:KFkqYKdPZ759qHZLTYsjAeBK95h8QZK9bvbd8LMTw9krgMMlV8XohA>
    <xmx:KFkqYE_D9oknCjw1Qmm-dUi2F7LlRwAmEYnV1sOzRXWRhvnX3yznYg>
    <xmx:KFkqYJwwA_VzC4D0jNsp3665PKVl3zHGUaCbT57wdDKv25F2Ute9LQ>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9E9FA108006A;
	Mon, 15 Feb 2021 06:21:11 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 13/14] zephyr-flash-pyocd.bbclass: Implement configurable probe IDs to program
Date: Mon, 15 Feb 2021 11:20:02 +0000
Message-Id: <20210215112003.2025053-13-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Implement logic to configure what probes to program based on the
PYOCD_FLASH_IDS variable:
1. by default program all attached probes
2. change default behaviour by listing the probe IDs to flash

CONNECT_TIMEOUT_SECONDS was also renamed to maintain consistency with
the PYOCD_FLASH_IDS variable.

One can query the IDs using `pyocd list`.

The value of PYOCD_FLASH_IDS can also be injected into the datastore
using BB_ENV_EXTRAWHITE.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 README.txt                         |  9 +++++
 classes/zephyr-flash-pyocd.bbclass | 57 ++++++++++++++++++++----------
 2 files changed, 48 insertions(+), 18 deletions(-)

diff --git a/README.txt b/README.txt
index bda872b..ce5338b 100644
--- a/README.txt
+++ b/README.txt
@@ -67,6 +67,15 @@ dfu-util and/or pyocd need to be installed in your system. If you observe
 permission errors or the flashing process seem to hang, follow those instructions:
 https://github.com/pyocd/pyOCD/tree/master/udev
 
+By default, pyocd tries to flash all the attached probes. This behaviour can be
+customised by defining the PYOCD_FLASH_IDS variable as a space-separated list
+of IDs. Once that is set, the tool will only try to program these IDs. You can
+query for the IDs by running `pyocd list` on your host while having the probes
+attached. Besides setting this variable through the build's configuration or
+metadata, you can also inject its value from command line with something like:
+
+    $ PYOCD_FLASH_IDS='<ID1> <ID2> <ID3>' BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE PYOCD_FLASH_IDS" bitbake <TARGET> -c flash_usb
+
 Building and Running Zephyr Tests
 =================================
 Presently only toolchains for ARM, x86, IAMCU and Nios2 are supported.
diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
index 4d24e6a..7e1cec5 100644
--- a/classes/zephyr-flash-pyocd.bbclass
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -1,4 +1,5 @@
-CONNECT_TIMEOUT_SECONDS ?= "30"
+PYOCD_CONNECT_TIMEOUT_SECONDS ?= "30"
+PYOCD_FLASH_IDS ?= "all"
 
 python do_flash_usb() {
     try:
@@ -7,26 +8,46 @@ python do_flash_usb() {
     except ImportError:
         bb.fatal("Flashing with pyocd needs the relevant python package. Make sure your host provides it or consult your distribution packages for how to install this prerequisite.")
 
-    timeout = int(d.getVar('CONNECT_TIMEOUT_SECONDS'))
+    try:
+        timeout = int(d.getVar('PYOCD_CONNECT_TIMEOUT_SECONDS'))
+    except ValueError:
+        bb.fatal(f"PYOCD_CONNECT_TIMEOUT_SECONDS was set to an invalid value: {d.getVar('PYOCD_CONNECT_TIMEOUT_SECONDS')}.")
     image = f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.elf"
-    bb.plain(f"Attempting to flash {image} to board {d.getVar('BOARD')}")
+    ids = d.getVar('PYOCD_FLASH_IDS')
+
+    # Compute the list of IDs to program
+    if ids == 'all':
+        ids = []
+        for probe in ConnectHelper.get_all_connected_probes(blocking=False):
+            ids.append(probe.unique_id)
+        if not ids:
+            bb.fatal("No probe detected. Make sure your target is connected.")
+    else:
+        ids = ids.split()
+        if not ids:
+            bb.fatal("No probe requested for programming. Make sure PYOCD_FLASH_IDS is set.")
 
-    # Try to connect to a probe with a timeout
-    now = 0
-    step = 3
-    while True:
-        session = ConnectHelper.session_with_chosen_probe(blocking=False, return_first=True)
-        if session:
-            break
-        if now >= timeout:
-            bb.fatal("Timeout while trying to connect to a probe. Make sure the target device is connected and the udev is configured accordingly. See <https://github.com/mbedmicro/pyOCD/tree/master/udev> for help.")
-        bb.warn("Can't connect to the probe. Retrying in %d seconds..." % step)
-        time.sleep(step)
-        now += step
+    # Program each ID
+    for id in ids:
+        bb.plain(f"Attempting to flash {os.path.basename(image)} to board {d.getVar('BOARD')} [{id}]")
 
-    with session:
-        FileProgrammer(session).program(image)
-        session.board.target.reset()
+        # Try to connect to a probe with a timeout
+        now = 0
+        step = 3
+        while True:
+            session = ConnectHelper.session_with_chosen_probe(blocking=False, return_first=True, unique_id=id)
+            if session:
+                break
+            if now >= timeout:
+                bb.fatal(f"Timeout while trying to connect to probe ID: {id}. Make sure the target device is connected and the udev is configured accordingly. See <https://github.com/mbedmicro/pyOCD/tree/master/udev> for help.")
+            bb.warn(f"Can't connect to the probe ID: {id}. Retrying in {step} seconds...")
+            time.sleep(step)
+            now += step
+        
+        # Program the sepected probe
+        with session:
+            FileProgrammer(session).program(image)
+            session.board.target.reset()
 }
 
 addtask do_flash_usb after do_deploy
-- 
2.30.1

