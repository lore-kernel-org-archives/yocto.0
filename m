Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web08.9342.1613489662383775728
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=HBExs+7/;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id D67F2AE8;
	Tue, 16 Feb 2021 10:34:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=oNXH3tdR7iQVo
	hYHZfS/oJP6FQXs100aGCg05cbNO7k=; b=HBExs+7/XYCLeYnCudfUrXrog8zf5
	RAXWth4Zj0Ecs1P2iCvuGXYMwcXP8ncAyJ5aHEkJ5aMNcqe7+I2+mh0fUXav6BLB
	SasiS6/cQiiiUqJcb5r9s3hg9inPUIpl65huCaxbSMUqe2cBfte++GkVWupdFBbV
	pufoTWSGd2ysPWuadr3BpYQ4vjUy86Fro6Zx/ISpz8mgevJn8BNN2mZMq7UXNrEx
	WIaAJrgl3MM2Ht8EHNjmeUohP/GYiDdf+zYjXdNw5CJSjQhAYC9zGVfKOhzw/dsN
	6gwtPv1S5eTlwmuxdUXCfoJlamNDd/aI2SaFFJBgLeK3HDV10cxia3s+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=oNXH3tdR7iQVohYHZfS/oJP6FQXs100aGCg05cbNO7k=; b=NniKKXD0
	LgwRTN7hmlDNKl+oxKxNaLdVzAIF8f24s3nyjwWlTPlhtbakfmwzFidS395bamGf
	BF8tqMHnMsEuOPGY6g2s8vLW2w2G2L9eDcblUgrK4WqxmOj0SAmASNN9VKA/SYzx
	DK6BvvUZgqrPy6skGcQeIC03+lDjCRTrOIMRs/cdZvJ5qI5l01Gky1SxE7f+SDp7
	pBOLj+YFxwnLth4vp3O8/f2gO5xg9gTBOJX9KMhYjSkqgJ0rl4LTMqRQnFT2Z+oR
	JmaOeLqNeLHfIO7LJqlWvoYtzmqlMgh6JPZZZ3btp1jlIIF9mkIFSvp6W7QppCrh
	UTYCIapSrOBl3w==
X-ME-Sender: <xms:_eUrYGAFSYEscME2K2xrJDvRCLkpzMaGxiLTt9NOVgojVvMgPESQiQ>
    <xme:_eUrYAimYSOtkB2qV8Z7GieFSzpJs6ri7PtXbqTKfboyZF8LWyOEWrjOGS9oVb71L
    WhFJbOIfPY3Swax8NA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhephfdtheeghfegteehtefhveeutd
    ffveehffelteegveegffeigfeileeiteeutdeinecuffhomhgrihhnpehgihhthhhusgdr
    tghomhdpsghorghrugdrthgrrhhgvghtnecukfhppeekiedrudeftddrudegiedruddtvd
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgu
    rhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:_eUrYJk5f8K4HUiKSD__Yz8LJ_rgtRqp3w0olNN67Jr6q825_ARCpg>
    <xmx:_eUrYExo2in_Eqyp0zHTDyKQDov0ddlP4FCW-_DUCmDIRdh4tYC9wg>
    <xmx:_eUrYLR0BlaumDQ_y7MKD4VHV-xxTLLLqT2tOa-GW39gKjF6es49xA>
    <xmx:_eUrYOORoZzlkjZBe8JeBW82iLil5OnJuiRm1kz4Mi6TcuCMdLKImg>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id BA08E108005B;
	Tue, 16 Feb 2021 10:34:19 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 11/15] zephyr-flash-pyocd.bbclass: Flash the first probe found with a timeout
Date: Tue, 16 Feb 2021 15:33:06 +0000
Message-Id: <20210216153310.79138-11-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Currently the code flashes the firmware in a blocking way. If the host
is not configured accordingly (for example in terms of permissions),
this would hang undefinitely. This can easily confuse users and in order
to avoid this, the patch changes to unblocking session creation and
opening call, wrapping the tries in some relevant logging. The timeout
can be defined with `CONNECT_TIMEOUT_SECONDS` which defaults to 30
seconds.

Also, by default, when multiple probes are attached, the session call
will return a selection choice. This would obviously break under bitbake
with an exception:
    Exception: EOFError: EOF when reading a line
Avoid this by selecting the first found probe.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-flash-pyocd.bbclass | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
index eca30c9..df3b631 100644
--- a/classes/zephyr-flash-pyocd.bbclass
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -1,11 +1,27 @@
+CONNECT_TIMEOUT_SECONDS ?= "30"
+
 python do_flash_usb() {
     from pyocd.core.helpers import ConnectHelper
     from pyocd.flash.file_programmer import FileProgrammer
 
+    timeout = int(d.getVar('CONNECT_TIMEOUT_SECONDS'))
     image = f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.elf"
     bb.plain(f"Attempting to flash {image} to board {d.getVar('BOARD')}")
 
-    with ConnectHelper.session_with_chosen_probe() as session:
+    # Try to connect to a probe with a timeout
+    now = 0
+    step = 3
+    while True:
+        session = ConnectHelper.session_with_chosen_probe(blocking=False, return_first=True)
+        if session:
+            break
+        if now >= timeout:
+            bb.fatal("Timeout while trying to connect to a probe. Make sure the target device is connected and the udev is configured accordingly. See <https://github.com/mbedmicro/pyOCD/tree/master/udev> for help.")
+        bb.warn("Can't connect to the probe. Retrying in %d seconds..." % step)
+        time.sleep(step)
+        now += step
+
+    with session:
         FileProgrammer(session).program(image)
         session.board.target.reset()
 }
-- 
2.30.1

