Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB644E00A2C; Sat, 18 Feb 2017 18:43:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E8F1E00A18
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:52 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id e137so7398014itc.0
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 18:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=2Vj3asUYuDbZobOU36d+/maQZ2q1ehDnvaIhvwKkYbY=;
	b=PlhfSdqPGTpTT38XYShzb7bXiWzfBt7zHjlPr1axtc2NkmhZU2NJggCybJ+c5JzzMC
	1wx2GsJJis+4ZGA3Tbt47ugIrPoILg/P63Yvuq8nyzc3p94Za6Yl5GXxXWpfXghTSQ+Y
	W/EUYifp8v9jJsEzhMpRB5mIsmMnRFwkjFrcLCMJt9uFTeKkz6UxY0H88kScXafWvxi/
	nQ14QgqGIyi3jnuN5mzh1+yjEZkmJ2lyKaMClPFuFg60MNnDtXHgbOiRRCI4pjbOqkz2
	5409cWIejPrfWx4CL9e1RFu/rYRad+LbfI2zgb0eV1TL/rCYgcSAutFj8uQrBECnR9n0
	/ULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=2Vj3asUYuDbZobOU36d+/maQZ2q1ehDnvaIhvwKkYbY=;
	b=oANQVmgBBB6J+imTcdP4KC4bA8ls0oyYAQ8aL/nQavI56pqlUaqHywfB22fYiVxfke
	wgl4ROeUOKnO0yZXfyMEEhS1DRN1EraAh4xIsIXM8ztk5OR8/kms4i2v/ebJGvI54Afs
	GV7wKx10x7MjuoLSk5SUc6eC8x3n9vU+bpa3KhXp6lyjwIYcHtBbYX5pl1HiEtWkIGpt
	PtCUlZ5A6CW/3VlpeR6/SM7KeXaI3+nUMroslH3PLtZ3qPrPfK6LHXTPdSZyL9cVo+Kj
	Zpa6r9ei+NNNIVVb5HDWSxYkztma1Ge0/V0AsrT2ZcnxJlVyWllQboYDkH7fRPni24Rw
	X1pw==
X-Gm-Message-State: AMke39kocMe7clMiGM8RJ0UHwK+LfBPhn9LNKJxVuWp95/2y9WUoCAzX+gVdiDm1Th1Fuw==
X-Received: by 10.36.92.70 with SMTP id q67mr13660108itb.55.1487472232289;
	Sat, 18 Feb 2017 18:43:52 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id
	a197sm1957754ita.1.2017.02.18.18.43.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Feb 2017 18:43:51 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Feb 2017 21:43:37 -0500
Message-Id: <20170219024340.23664-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
In-Reply-To: <20170219024340.23664-1-twoerner@gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
Subject: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Sun, 19 Feb 2017 02:43:54 -0000

This recipe was taken from the Rockchip team's recipe at
https://github.com/rockchip-linux/meta-rockchip/commit/6a139d5b7510c7ba36aace82c239b894d5741cac

It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and I've made a
couple small modifications.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb

diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
new file mode 100644
index 0000000..3b4f109
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
@@ -0,0 +1,19 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+require recipes-bsp/u-boot/u-boot.inc
+
+DESCRIPTION = "Rockchip next-dev U-Boot"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
+COMPATIBLE_MACHINE = "(firefly-rk3288)"
+
+SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
+SRCREV = "${AUTOREV}"
+S = "${WORKDIR}/git"
+
+do_deploy_prepend () {
+	# copy to default search path
+	cp ${B}/spl/${SPL_BINARY} ${B}/
+}
-- 
2.12.0.rc1.48.g076c053


