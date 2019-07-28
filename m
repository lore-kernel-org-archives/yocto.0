Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09F46E00D31; Sun, 28 Jul 2019 08:32:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B8E7E0098A
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:31:58 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id d24so56031864ljg.8
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=y2G94C/TKeFlZ/aa7qRFMP14LKz81uale3GIzJ59Wc4=;
	b=Nc09hXq27fIUYOKz01wCez/Y9sd7vpb4IekvbfyeiDVhHgFDd7Q3ZEoxGFQoHumsDJ
	FG5Y6DtzgwFr8EXIy3CAyIodyAk890VUlNvLw1dWsJaY0ODK0JRlVhouYQJrdyzSwVqi
	fFavPlOjusZPgN2PWmF8Dsf1G8Z0z2d1QkBK/tgJl17sqpk+apCyAoo9f5kCSY4i6y7d
	vzvMbWWAYf9CLFakvj490U4a0lthSaPIVftEMqaTsWTD/0RQwjTvZGc1902o2WC70JAn
	uYcvUYij42VnRXngrTRLVmPcw+3IIrx0QzpbUMh0zYRDp/4WHZSFhESC/Exj/Ja38JoB
	p+rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=y2G94C/TKeFlZ/aa7qRFMP14LKz81uale3GIzJ59Wc4=;
	b=rVm+cp+oiRN06v82AdQYVHqbWprR0dPEA7Y6PiI5KwD/1YBXwVSbUnfKT3HvbVwN2P
	Iyrp9HK43HUn3P1gKXuCmhyEBFnuvOn4JqKaAXtsrd33G/dytiy5bgB1QtJ0PWT9vq5+
	BJYFLmsSxS8Q0JIdw0WZLReOSLpyKP7+C+pP7RxoYRDDjRjUZdyv6l75azgkVDLhBI3e
	K56OSh56bATksBNx+RG092Qq82Gqn+VGBSinCwwIK0cTNQtg1ZqtrMegtxQJIVefDCoz
	5lh4bXE6IujLJXmZPeToGdcNROzS/xQaJd2qo2NMYdZ5yHdO3TvnnPYqna/OFiZTOMa4
	5Pkg==
X-Gm-Message-State: APjAAAXWqO1CQ6ycD1tYCokfhxd8XFQJUYUtRuHNNqW14DJ/TA0adMQI
	wWGg9iEmWotOx3ng004oNO6j327AkTM=
X-Google-Smtp-Source: APXvYqyXF/86rgN1HG6DK+qkOhEk49fAVhhn4yE1KyCuoiAPNFBlIvyDpee07eR+zKOemEtnE4Ie0w==
X-Received: by 2002:a2e:b0f0:: with SMTP id h16mr31269728ljl.21.1564327916933; 
	Sun, 28 Jul 2019 08:31:56 -0700 (PDT)
Received: from localhost.localdomain ([94.25.228.134])
	by smtp.gmail.com with ESMTPSA id
	j7sm13520555lji.27.2019.07.28.08.31.55 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 28 Jul 2019 08:31:56 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Jul 2019 18:31:50 +0300
Message-Id: <20190728153150.9438-3-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190728153150.9438-1-dbaryshkov@gmail.com>
References: <20190728153150.9438-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Subject: [meta-security 3/3] linux: add support for kernel modules signing
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
X-List-Received-Date: Sun, 28 Jul 2019 15:32:01 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 meta-integrity/recipes-kernel/linux/linux-%.bbappend  | 3 +++
 meta-integrity/recipes-kernel/linux/linux/modsign.cfg | 5 +++++
 meta-integrity/recipes-kernel/linux/linux/modsign.scc | 4 ++++
 3 files changed, 12 insertions(+)
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/modsign.cfg
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/modsign.scc

diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
index 931854ef8257..ca96c8d1901e 100644
--- a/meta-integrity/recipes-kernel/linux/linux-%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
@@ -1,3 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/linux:"
 
 SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' file://ima.cfg', '', d)}"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' file://modsign.scc file://modsign.cfg', '', d)}"
+
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
diff --git a/meta-integrity/recipes-kernel/linux/linux/modsign.cfg b/meta-integrity/recipes-kernel/linux/linux/modsign.cfg
new file mode 100644
index 000000000000..c0c4ebcf2e7b
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/modsign.cfg
@@ -0,0 +1,5 @@
+CONFIG_MODULE_SIG=y
+CONFIG_MODULE_SIG_FORCE=y
+CONFIG_MODULE_SIG_SHA256=y
+CONFIG_MODULE_SIG_HASH="sha256"
+CONFIG_MODULE_SIG_KEY="modsign_key.pem"
diff --git a/meta-integrity/recipes-kernel/linux/linux/modsign.scc b/meta-integrity/recipes-kernel/linux/linux/modsign.scc
new file mode 100644
index 000000000000..bce78ae9b145
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/modsign.scc
@@ -0,0 +1,4 @@
+define KFEATURE_DESCRIPTION "Kernel Module Signing (modsign) enablement"
+define KFEATURE_COMPATIBILITY all
+
+kconf non-hardware modsign.cfg
-- 
2.20.1


