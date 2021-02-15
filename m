Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web09.29618.1613388071918825937
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=mMrb9KI9;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 552925E6;
	Mon, 15 Feb 2021 06:21:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Mon, 15 Feb 2021 06:21:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=oNXH3tdR7iQVo
	hYHZfS/oJP6FQXs100aGCg05cbNO7k=; b=mMrb9KI908jzzZhtgW760yztDgCM0
	wl54wczJHa1qM4QfoFnzBy9p/cjTSS0euFTtAx+eAiWsxgDhDcLnYZOPnkZ3NPYa
	wvh2B74Dqr2unm7CTyFcUiElK+7P9rCE+pL2DtEz1BIrE9FdMiHXw/znnEmISXxr
	FQ8QiJAo0PHJ4R/mnnfOe+9fytahlvH+paBXpJWyqm7HGi/3lawRsLY8JU8HGkzE
	X772mTGoMPS0fzAdYCmprIMA18lGNzTrN8Ta20bIy/DOMX4Hs1HJSnQPHcVWXun6
	OKG4TidVf7R7/8NmQnnxVzDru3MenEsAmwGjVH+OUUkEivBUikx2tPMBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=oNXH3tdR7iQVohYHZfS/oJP6FQXs100aGCg05cbNO7k=; b=mMlJkVNy
	Cy+K+fNDoKV61E1s2cJMMy4YzQuwbnVLBXf4j02XQnn9z4Kece9od3tCu7olARUB
	sgOmYZXQftyf3ExVhs5JSuU9w/h+Upkt3kPCnfn1wYe6zhMZcgfMgAqyqrgWm/ms
	XM7HzkCmEs40cLaJL/dneLkOSpfa9KE7JeO2JK/BB466YP3eidg6+Xy/Aw4SBd4b
	WLljow04Jk55gJCDeNs9V6oAST3pfx2Ifo7dZqkVRMvxWAmSzUYNQUL4+VlI/dxq
	1251bOesSAwbjCVq0weEvH379u6cd/1E5RlYmJgXoYBQGAZ36ox0RaJP6qFlwAoC
	ELqulFr37FY0QQ==
X-ME-Sender: <xms:JlkqYA61ZaJeKT6Ds_6dNRAVCTDoRcFGqOIespz7PAsLYQWiqffQOQ>
    <xme:JlkqYNX4duHucd9GZyX_Wnn1JZf-jdy7ewgOkpX-cIFps3YkfbsIjjqkrUNmlwPn1
    86cO08g3KJg3P_3dnY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhephfdtheeghfegteehtefhveeutd
    ffveehffelteegveegffeigfeileeiteeutdeinecuffhomhgrihhnpehgihhthhhusgdr
    tghomhdpsghorghrugdrthgrrhhgvghtnecukfhppeekiedrudeftddrudegiedruddtvd
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgu
    rhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:JlkqYC9kfoVLf2CvwbXbgn5OnS9IG-YincaMKmkr1ruEZvLnFY7Htg>
    <xmx:JlkqYJnIU517B6C32QJbUQPWLeqIOtDEcxc90TNKIsG5KH8ClXy7Gw>
    <xmx:JlkqYAVyBIFbw5kHGVMyxV__hxRjOm7QpcZJ7F4nnNiOnH7FEzN6jw>
    <xmx:JlkqYKCmRCTI_SxUd2lRRabIXXxnxewUYdLM6QpeQEH17wnYn-Qkiw>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8D7281080064;
	Mon, 15 Feb 2021 06:21:10 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 11/14] zephyr-flash-pyocd.bbclass: Flash the first probe found with a timeout
Date: Mon, 15 Feb 2021 11:20:00 +0000
Message-Id: <20210215112003.2025053-11-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
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

