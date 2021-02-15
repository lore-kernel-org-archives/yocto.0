Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web12.29420.1613388072438868320
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Feb 2021 03:21:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=PzeE8cXv;
 spf=pass (domain: gherzan.com, ip: 64.147.123.21, mailfrom: andrei@gherzan.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id DD7ACA21;
	Mon, 15 Feb 2021 06:21:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 15 Feb 2021 06:21:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=p2LSzbv8ThZE6
	7aeb3vbmFOfUnvVRAs6OqBnDnE6jd0=; b=PzeE8cXvWTL8xlGEpeJ+aPld89m5w
	6nOGbX4CUnlsPm2OhStnnWg7YbN09YW/loJpXwcVF6/CZm1aMas3Z0O3Z22sF70+
	1Qv0IKmP+6U6szb6rpRGHnyFIZs+FJ8RwhlaVKCB2eOqw/W1EKgxLUXX1aPykKJc
	VotfbjLmJMKNlH+o2HWyZTl1lp3iNLabcOyNAG1Oeu6ZEwdcyr2iyuTOV2sKET3C
	UZJWNXfa6eSYYb5QsNP8EcmYH1WQmvJ1fpTGNlnrZXeqQoGNZmy/IboWueudMzy6
	wFjqWCuGNn5diCW4cDShxeFqtk5g1sKUVGitn+PyVuQusbWqzbXoLZdHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=p2LSzbv8ThZE67aeb3vbmFOfUnvVRAs6OqBnDnE6jd0=; b=Ibp+N7s/
	3AbaCAl39fY0Bmm8FWPN+MEjolHRBrLO6dVVJgBKItxhO5U75Okk/84tQuanJ78p
	Ff/jpWIVim0Kks97SupYBuh5n+telPO52kBX8wje5PLADN91y9SzOdbIbICbpzkw
	xwZ+OweTb3gA7DUVEx+7wJXriYFNPp5pFuhblxL/mWAht+K0BYqJtv2JGN8iHcYx
	/J5N5DGDGXJ034vCXYu93uOBA5gfqBlVpQFb4ySa7yj1s62o0uD4HKz1J7yDQsUs
	K6S66c2Wu0IfJGSleV6fEDD8Xr35EKgjsUDMLgGSDYq1K0pHBgSJd0daLSE5DQnu
	b+t9y0CSvmJ5Ig==
X-ME-Sender: <xms:J1kqYLY0J_vEValnKOLkJjM2WOqU9xNhqDomv35YxIBmtc2oKJCOEQ>
    <xme:J1kqYKG3Tx6HE6kG-Wrkfthz1cYRErGwszUbm-d2Q08V_rfVovxndrIGWuYtnUdF-
    2xRoTGNv6WXUmqYHtk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieekgddvgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:J1kqYJlb0M-ejqy1UbJIY3Hp8U8sJ56p57S4AFcH0FRN8tTai6iyfQ>
    <xmx:J1kqYNe5XMTePQ3edB6NPypOYAvK2iMm3OPwWEVm7alLSOP88w6zJg>
    <xmx:J1kqYHEdi6Uyom0PhbJ6BycNJN5Cwn2df0pwA67AsOMG26YGCx6WiA>
    <xmx:J1kqYOxoi1Kh9dGUo-04TZC1PdVB-dbDnFAEHd4tOvQB3QI0yAkUPQ>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 1CC5D1080067;
	Mon, 15 Feb 2021 06:21:11 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephy][PATCH 12/14] zephyr-flash-pyocd.bbclass: Handle import error for pyocd modules
Date: Mon, 15 Feb 2021 11:20:01 +0000
Message-Id: <20210215112003.2025053-12-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210215112003.2025053-1-andrei@gherzan.com>
References: <20210215112003.2025053-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 classes/zephyr-flash-pyocd.bbclass | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyocd.bbclass
index df3b631..4d24e6a 100644
--- a/classes/zephyr-flash-pyocd.bbclass
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -1,8 +1,11 @@
 CONNECT_TIMEOUT_SECONDS ?= "30"
 
 python do_flash_usb() {
-    from pyocd.core.helpers import ConnectHelper
-    from pyocd.flash.file_programmer import FileProgrammer
+    try:
+        from pyocd.core.helpers import ConnectHelper
+        from pyocd.flash.file_programmer import FileProgrammer
+    except ImportError:
+        bb.fatal("Flashing with pyocd needs the relevant python package. Make sure your host provides it or consult your distribution packages for how to install this prerequisite.")
 
     timeout = int(d.getVar('CONNECT_TIMEOUT_SECONDS'))
     image = f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.elf"
-- 
2.30.1

