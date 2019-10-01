Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F2F6E00C46; Mon, 30 Sep 2019 17:56:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C748EE00782
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 17:56:52 -0700 (PDT)
Received: by mail-pf1-f176.google.com with SMTP id y5so6662903pfo.4
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 17:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=SXGUz/JGnbLDTcxy+LCO/79WRepclWahP5W0CYZhHFw=;
	b=D9C8dVGWebr84zkWCgi2Mim84MfBLUy/Na7EDQ+7O/viVPuLa0mjEDJ9Y3dT62A3Qy
	Ycm3zLQ4XhAhoi9vaPTNd8foa5yx2X0Zk9ow/dQO543uAIkHEgeyb+pQHvy/s9QKoWhC
	hpcnKZmbvTEH7Vn0Ux/Okbcfij2KRX5yXFoXlC24oZZzaYZBOQgF/mLxOrpCNZy9zRfR
	N8hk6hDksWFD5WtqB+cQNj3H8D9be99LtpVw86aUVsFZVVjhiuj+SapKLUrHvJvgG6+z
	XCxnJpNOQJbwArKi2c9cQqGfx2Xz9lDSn0hybSGK/bN3zj1rjphmrflrMp3gvQWBPEbE
	KJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=SXGUz/JGnbLDTcxy+LCO/79WRepclWahP5W0CYZhHFw=;
	b=PSBbz0sH97ODC/yqVMcBWIneGqswAfQN25oWesBYREM4Ol9pnHPnBNaUAW+G5cr61N
	lYHoyDxLuZUV6taXQ4NKbzCQ0lbUzCPp5wr+mniow7luML3hDlfvA4F6rWElEnPKOdrW
	m9JCMce8D2pJM30V+/U27dRWijZ3A6XuaRT+yrxbxDRECh7Rc8cH0oFuIrV5rML6rSYD
	JyCNdx0jn4Rqq1QfHi0gcIX+ZxMbYq3Po1F2x2t/zMF0af2D9mHs+DW0KEg69ngGK3mm
	U38o3yKbLWJci/cz7SILv4NcvvUAkBdpvfk6BeuBcoxS6tdSedgjZF1gPrzpJoMU2AjN
	RyQw==
X-Gm-Message-State: APjAAAWVvAf87I2eap04BvHGJ0lxroAYZvIjyR3N6zDJ3RXSDjNSM94i
	4Y/TT8KFSV41Mq2pHKay7ZGtTs0yBZE=
X-Google-Smtp-Source: APXvYqxbnm7LUASKsFLfA2CnMpai6yAFylwRnoLHtISYFRV6zTR3N7mo17LL+hPHH66g0CetWS/F/A==
X-Received: by 2002:a63:6bc5:: with SMTP id g188mr8805383pgc.315.1569891412199;
	Mon, 30 Sep 2019 17:56:52 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	v5sm14211834pfv.76.2019.09.30.17.56.51 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 30 Sep 2019 17:56:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Sep 2019 17:56:43 -0700
Message-Id: <20191001005643.11146-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001005643.11146-1-akuster808@gmail.com>
References: <20191001005643.11146-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] suricata-update: add package to pull rules
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
X-List-Received-Date: Tue, 01 Oct 2019 00:56:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../suricata/python3-suricata-update_1.0.5.bb     | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 recipes-ids/suricata/python3-suricata-update_1.0.5.bb

diff --git a/recipes-ids/suricata/python3-suricata-update_1.0.5.bb b/recipes-ids/suricata/python3-suricata-update_1.0.5.bb
new file mode 100644
index 0000000..63f75e0
--- /dev/null
+++ b/recipes-ids/suricata/python3-suricata-update_1.0.5.bb
@@ -0,0 +1,15 @@
+SUMMARY = "The tool for updating your Suricata rules. "
+HOMEPAGE = "http://suricata-ids.org/"
+SECTION = "security Monitor/Admin"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
+
+SRCREV = "dcd0f630e13463750efb1593ad3ccae1ae6c27d4"
+SRC_URI = "git://github.com/OISF/suricata-update;branch='master-1.0.x'"
+
+S = "${WORKDIR}/git"
+
+inherit python3native setuptools3
+
+RDEPENDS_${PN} = "python3-pyyaml"
-- 
2.17.1


