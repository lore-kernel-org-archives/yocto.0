Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web08.9347.1613489673871076205
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 07:34:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=mHJjWnOZ;
 spf=pass (domain: gherzan.com, ip: 64.147.123.20, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 4F5B7B21;
	Tue, 16 Feb 2021 10:34:33 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Tue, 16 Feb 2021 10:34:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=fm1; bh=SBktZeyBkTYV5
	faZRRBdVCf4FvwYAJI/oyXAYFJ2zrY=; b=mHJjWnOZzpw7yGmNXRCHIt4Vq5iDC
	rcxyj2jlRKL4+dcnBj4t2Cl0fprhJBJbkXbtN5Qr9tMlP5VSj1GHs44i8DgwHRZG
	+3CZHP1ewiUNZXbhL6YY3Rn5U5GHd6C6fv6W3M5JIWW6JpS+LswIG64C9BiP4krS
	04DE6unC6Su6mGCfTpI1TLrjQ/Y1lKX3oAivECapcE+zCNXbeobH3d6YmLrbLp6n
	HS7Tlj631Vg+W6545mKByJgImebT9O0xtGtMYcesspKQ6QIPd7vlxZWB5JK/8OHL
	kT1vKvPR+RcdR1w+V8qdArhHnJOltdasaVG78T37Rv2t/nt6uNjW+S90w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:date:from
	:in-reply-to:message-id:mime-version:references:subject:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; bh=SBktZeyBkTYV5faZRRBdVCf4FvwYAJI/oyXAYFJ2zrY=; b=CWjZxpvD
	h2y+3v4Tf0g/cq50Zr05gLSTuwdhfZ+YJrFToY5t+Lqiqxuf8Exz82cMVbancRx8
	Ve5AIa9jd/INZh/ka5b4ot9R3/BMFpQ/xEgI4yYAFpoJe+GGvx8Fpl373Z0tvcPC
	b9PNZHY1Pj8bTRtOJz2b1Sy5DZ0DOz7reYlihuI8IWa5gVVq0xx62BEUA3KUj924
	zfEqQiiA47vgY/VckhMuOQmv09RhWvAvC176HNCpl5XWkJZ/s6M/Aovdr/1QXeyM
	0l2P1tL5ouluHaRTT/wUnn43lvTgrvXB7F5NTUtIyj1KsNAnVmeeMr+o7OhF2Ze/
	tkg13s2IY+J6Xg==
X-ME-Sender: <xms:COYrYGBMqtPSumFdiwODgLW3M8YDlzJO_O1I6ZTqx7eq-5U1o234iA>
    <xme:COYrYAjhlhDo7EKYyvRbTY8A0LZYDI3vWwclV536RfZA68uKUl1FXF0qFXmVsB3_H
    g4MRwZo7XQHZ6cT2-o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjedtgdejlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihesghhh
    vghriigrnhdrtghomheqnecuggftrfgrthhtvghrnheptedtvdfffeekteevkeetieevge
    egveeiiedujeefieetvdekledvkeehjeelffefnecukfhppeekiedrudeftddrudegiedr
    uddtvdenucevlhhushhtvghrufhiiigvpeegnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:COYrYJlYK_n2Xe5I0UkYnjk7Jj1N3hMCT5u8YYkptb500CXFyjVjXA>
    <xmx:COYrYEyb_ag6qlKMH1Su-_arMhFrB2Zi9d56fuEjBkvDDJSmsaLk3Q>
    <xmx:COYrYLQr1RvR332mBZ9qBlpddpPrvMU1_EXTz1HXaLJWrgI4wBf8Xw>
    <xmx:COYrYOMsI8d4yaGeKvRG1Mf5ayIHqvfj0qOdEF8G9xh3jBjoPL3uXw>
Received: from qwirkle.internal (host86-130-146-102.range86-130.btcentralplus.com [86.130.146.102])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9EC321080063;
	Tue, 16 Feb 2021 10:34:31 -0500 (EST)
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-zephyr][PATCH V2 15/15] README.txt: Fix small typo in email subject prefix
Date: Tue, 16 Feb 2021 15:33:10 +0000
Message-Id: <20210216153310.79138-15-andrei@gherzan.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210216153310.79138-1-andrei@gherzan.com>
References: <20210216153310.79138-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Andrei Gherzan <andrei.gherzan@huawei.com>

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 README.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.txt b/README.txt
index ce5338b..5a0ccc7 100644
--- a/README.txt
+++ b/README.txt
@@ -116,4 +116,4 @@ the patches are identifable.
 Git can be configured to send mails appropriately when using git send-email:
 
 $ git config --local sendemail.to yocto@lists.yoctoproject.org
-$ git config --local format.subjectPrefix meta-zephy][PATCH
+$ git config --local format.subjectPrefix meta-zephyr][PATCH
-- 
2.30.1

