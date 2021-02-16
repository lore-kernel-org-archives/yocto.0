Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.9534.1613489669837483598
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=VwUm6xC3;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 53577B00;
	Tue, 16 Feb 2021 10:34:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=GJTWa7DYqdasg
	82wuGP3EAt/mXARIahiN37JjELeNhY=; b=VwUm6xC3mH1pg22jvPRdlEgNcyWTh
	y1mNXcQBYh49OJp0oH9wdzDXOEm3EV9IUtqPq8VBE6mY1+cjXCebWHxKel5si6lN
	c5HVkCu5/Cj0PuJaVYzDFWP7ZI16h9W4/8FqHJ0vAgw8J6L6O5u/pEapgbYBHbVS
	Q+6Ecmxo+bywZrNoEYqt68U4AkJlZneNGn9V2lyywtWBLdvPdemHIBG8QZMShZ/G
	yceGpc3aZbs41XMcZbjRtTHBSxwuhUAybhKznlMn3qAWJeW9nh+Lwuoe2x2ba9CC
	Xjio2MfcoYbpXaghXiMUn4qTV1Et+A3wfxhGBLcR7CZZEXhkQxzxB9/1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=GJTWa7DYqdasg82wuGP3EAt/mXARIahiN37JjELeNhY=; b=aOrv2BBB
	ssWQbGrOukGPozD8rzln5kmXpLZs5t22dtxHi3P8i8G9unvLB+gTiZ6PPd0UKFf7
	u4ukus/iQOZz6f0AvI59YiMvCHFHF/RJI1qYE+vVn+Be9tKe5Bm1o5XLKCpS9CWU
	cODApZE4MTPcX1zibGV2AHYQmK+l04HNLPPOwpMKbLmLn/QIO0ZMmjOrbwpn3Sun
	CwWFK3Xr+IkojDb/H5RaxIAqEU//ydmYPCvWBnpNpvpX1FS3+wpuILyU6n7bV78u
	3AZ6zm2hYxiQPK5+iW+TXwIijij35fXLXp5kxL/XZ495Mdt5hhZdE7BfNVoZ+7w6
	PthrVKxyr5Th8A==
X-ME-Sender: <xms:BOYrYGWV8kivwrcLIliMviJnO-_igSGvbD9Tw4tcDcsHLUNBQr2RWQ>
    <xme:BOYrYCl2lJjqXwHv2RlX_z83R8IZWovvSks0pzYJ4yQ2vmIUL0GJcRMyCS86iMbCp
    zMidFg0umh3kwOXeXs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhephfdtheeghfegteehtefhveeutd
    ffveehffelteegveegffeigfeileeiteeutdeinecuffhomhgrihhnpehgihhthhhusgdr
    tghomhdpsghorghrugdrthgrrhhgvghtnecukfhppeekiedrudeftddrudegiedruddtvd
    enucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgu
    rhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:BOYrYKZ9i8yqoOz_XqRgfkBXuq6D_IBz4HkHDDxL4KCg-NrazbVsIg>
    <xmx:BOYrYNUPM3jq-UCtFuILU62rl966CM_aut6Py2MZdMlaUk6BOHd_0g>
    <xmx:BOYrYAnglpi_UDZEhYt28lrxDEofsiO2R63I7UhOcdrzYNTc2Y6tNw>
    <xmx:BOYrYCTlN9seMz3ojg907feqOpy6SzMMe0fHyGxgabK1uzwQ1h4yfA>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 182D51080068;
	Tue, 16 Feb 2021 10:34:24 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 13/15] zephyr-flash-pyocd.bbclass: Implement configurable probe IDs to program
Date: Tue, 16 Feb 2021 15:33:08 +0000
Message-Id: <20210216153310.79138-13-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
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
 classes/zephyr-flash-pyocd.bbclass | 61 ++++++++++++++++++++----------
 2 files changed, 50 insertions(+), 20 deletions(-)

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
index 4d24e6a..a873be4 100644
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
-
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
-
-    with session:
-        FileProgrammer(session).program(image)
-        session.board.target.reset()
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
+
+    # Program each ID
+    for id in ids:
+        bb.plain(f"Attempting to flash {os.path.basename(image)} to board {d.getVar('BOARD')} [{id}]")
+
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
+        # Program the selected probe
+        with session:
+            FileProgrammer(session).program(image)
+            session.board.target.reset()
 }
 
 addtask do_flash_usb after do_deploy
-- 
2.30.1

