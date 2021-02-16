Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.9533.1613489665548369351
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=oLoABmy9;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id F2455B47;
	Tue, 16 Feb 2021 10:34:24 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=p2LSzbv8ThZE6
	7aeb3vbmFOfUnvVRAs6OqBnDnE6jd0=; b=oLoABmy9kysyw4oxYc+xqhBBhikiw
	4Tzj+8QugDtPovejNB4xUUV6zG2+CivxwjEAP6vQQkVGeyepFdu2PL9zPQ92HGZm
	CIaWWKrpMWd3e1oHC/kVMcN5EwU/r2irXfMaAPW7duo0cixn9DnLSdcRN9dvcfq8
	bb9xseLMN/JU2w/fWSv8qiVGk+xwu9do3NDqlVli9uk2LmilYnfMBuZK18KANoa2
	1BbH9XJvl1bOYpwbjqVBNgdgdqxn5/H10fNkO478s0KhSgQFedvkgidZuvf+4uR4
	0Pb04PEGf1aWBb8dlVXsUEaM/NKtAnKhqf/gizLz5LmEOpat/lg2M4ufg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=p2LSzbv8ThZE67aeb3vbmFOfUnvVRAs6OqBnDnE6jd0=; b=mFY/DoNj
	ATco7nnlFmRdbJWfpbu2f+3FGEt9yTsymbj36yQHLZYxWCMzGIfiC/dyguxKCJzj
	N3Borj627ewxT6JKSxvM3MI5Gy7S0IvU7qVyoQn+3/4xwLYQEcJIGke7CbCc670R
	ozclW1UJUVWE3bTwaZrqh1UAsmVHlLnnYqVVTuoR7NUdd1qxVgdAz2l1oWTs2QTo
	Af3rbxMS76aoXfbfMKNsanHDee2sRWMEuyvrl5D+LLNb+CLUa4SOZPKX6OShzn/O
	JmF0FY6pCZRYRtWyLj24ZBSV9BGqkVdv81BLVYvWRmd2iYTtNDyForqdJQe6w68l
	SllQdGcqqrOxug==
X-ME-Sender: <xms:AOYrYO56xjI_a_1Ni_Sb1NfkS9C0JxnnK12yirhAk0HTRkseUPF-4w>
    <xme:AOYrYH5HUvBqe8T_as0QACERDf1QuSu8H9D1kFA3EGBFPgqv4c_J9-UDIcx0InS4R
    8IvclUATXIPsiCBL30>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:AOYrYNf8y2IBV2unVHY2QF_aj99eI-rGxaLsTcuj9chN3Bw7tetndQ>
    <xmx:AOYrYLI9GyOfcWjJZJPTf_7CEP1shg9DZ11qm7Ot68Rv3enMB_49zA>
    <xmx:AOYrYCL1YuTU8ZyTRO7jmn-i94BvTQ0jjDQrboc-Z-p_-oB7ABY05A>
    <xmx:AOYrYBms_BuM12_NYrnXTKXKxChiDyTrd3lrkMW2i3Ze4qyh3FQL4Q>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 62C9A108005B;
	Tue, 16 Feb 2021 10:34:21 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 12/15] zephyr-flash-pyocd.bbclass: Handle import error for pyocd modules
Date: Tue, 16 Feb 2021 15:33:07 +0000
Message-Id: <20210216153310.79138-12-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
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

