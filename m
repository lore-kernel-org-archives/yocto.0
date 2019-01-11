Return-Path: <scottellis.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56198E00CD8; Fri, 11 Jan 2019 12:43:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (scottellis.developer[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE82E00BE8
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 12:43:25 -0800 (PST)
Received: by mail-qk1-f177.google.com with SMTP id z18so7307301qkj.10
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 12:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=mZ7jgHrAwbAIMTO/e2EC83+hKYbFD0M3A9Ctk9MdR6U=;
	b=S6IijaM69REqnf7SqG0Y2ciOUdWsLl8hzINbnyIB7CMnu2D3dSuuLk6GjNtoxJxWt/
	eqMQ43h7J/PHuFzISzsjaqJKBZ6uEAvj7d6ZK3A8kF06PtwMWid3lXIGfsxTYhOKliuV
	YbT39xttvXJCInWSV3AVCybQtH/4oglmQI06hKjSkHoN5ON5YcwV0FE6l0hK4vNoaMew
	XQX65ZzHdglV0f75NycqvARVZnGLgJmJAsNvymy9CWiitBmkFmG8MyocjzxZb9pDFf/h
	qY1yxUXOmepb20G1FdSxxFUm5k9uLqQCvTyh94Qv/UR+5nWIRHW7Nq4VegS9tWWRp8hU
	7c+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mZ7jgHrAwbAIMTO/e2EC83+hKYbFD0M3A9Ctk9MdR6U=;
	b=oMeYqCIvaBLJ9U+3KluVZGFjjfrPCaVcEro+prgW1Pniti8ISqL2mUJYABsnaiOWWN
	knp4DVQz7R3CaHGilGUVcKyboZJmOY2jtZsABWse/oywySfkAZ/Z5C5oLR9ZyeWU6bSm
	BNJXjkMp3JEp4fNIdjC4VDLGutmqbrxDp64AIDJLMH6pp1IAlL8m1zwcSSacdhWfcI6N
	D/+NAXaohZrcpfLG8G+Pb4/kcIIewKySL1eawne4YnC7renkknhXqyeasrpQL700/jGA
	oiPkzFwsh/GpXlRbhpKfDr4hQ3QmEKTLcCCWbwfcVjt2grjcvpSNhtfBJOLEnSK/cYed
	tGsQ==
X-Gm-Message-State: AJcUukdfz89B1gagE8kewTUp2vLWboD1uX6MVZLDMdHQKzheYjVmz4XF
	b+MKTsupmLGRcQjjpIM8IDkkTYTQ
X-Google-Smtp-Source: ALg8bN7ouiZE4SDM436y7FWze6bWHLIj8GT8OdyLighcBZjU8NFPfxQhD7R+g7q+CBRsILRR/td/HA==
X-Received: by 2002:ae9:dc43:: with SMTP id q64mr14151202qkf.223.1547239405095;
	Fri, 11 Jan 2019 12:43:25 -0800 (PST)
Received: from fractal.jumpnow (c-73-234-253-132.hsd1.me.comcast.net.
	[73.234.253.132]) by smtp.gmail.com with ESMTPSA id
	e17sm45225991qte.12.2019.01.11.12.43.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 11 Jan 2019 12:43:24 -0800 (PST)
From: Scott Ellis <scottellis.developer@gmail.com>
X-Google-Original-From: Scott Ellis <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
Date: Fri, 11 Jan 2019 15:43:22 -0500
Message-Id: <1547239402-28361-1-git-send-email-scott@jumpnowtek.com>
X-Mailer: git-send-email 2.7.4
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: [meta-security][PATCH] Add recipe for ncrack
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 11 Jan 2019 20:43:26 -0000

Ncrack is a network authentication cracking tool.

Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
---
 recipes-security/ncrack/ncrack_0.7.bb | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 recipes-security/ncrack/ncrack_0.7.bb

diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncrack/ncrack_0.7.bb
new file mode 100644
index 0000000..06ba2b6
--- /dev/null
+++ b/recipes-security/ncrack/ncrack_0.7.bb
@@ -0,0 +1,18 @@
+SUMMARY = "Network authentication cracking tool"
+DESCRIPTION = "Ncrack is designed for high-speed parallel testing of network devices for poor passwords."
+HOMEPAGE = "https://nmap.org/ncrack"
+SECTION = "security"
+
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=198fa93d4e80225839e595336f3b5ff0"
+
+SRCREV = "3a793a21820708466081825beda9fce857f36cb6"
+SRC_URI = "git://github.com/nmap/ncrack.git"
+
+DEPENDS = "openssl zlib"
+
+inherit autotools-brokensep
+
+S = "${WORKDIR}/git"
+
+INSANE_SKIP_${PN} = "already-stripped"
-- 
2.7.4


