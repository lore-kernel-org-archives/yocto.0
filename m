Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ADD3E00CEE; Wed,  6 Mar 2019 08:47:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF844E00CD5
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:47:38 -0800 (PST)
Received: by mail-io1-f65.google.com with SMTP id x3so10772110ior.6
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=Yv9VpkykvXkyR9XCvCks0cCzbIlW6hUDLg9/UgdRtcg=;
	b=ikQRIAgBSx/ridL15kFT9o4w/LhlEdA1/RAJgyo5UDGwH3l2l0OiYSYgAGCJPz1X9k
	hIZ0OsA3k8VX7D2vM4sftTTH3/lZ4p9veLfl9npC5LhJyvvbTK7I3X/uIPgIGjhHfFed
	Ro4tOOVGC3cQ3MIYSRNE2sW1Is9/Mf6kY8CNZ533fefQccJ/z0cGXFNh1xDZ64JC6OIY
	z711YEtMYQO7MxQa3SRW4SRI8wvbGg+RpONEvSUYocGDQTa6GNHy6/Xy5iNbOlmIP0Uh
	IhK7TkjIHCt+ltIAIzXIQ3vwphCHSnuyX8I8MKDf02WLlLRKzmC7oe4eeWnDifxSuHk5
	Gd/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Yv9VpkykvXkyR9XCvCks0cCzbIlW6hUDLg9/UgdRtcg=;
	b=czbJCpN7BlSy6SRa1qupxTIhKPLY0ftcvbqVSH4oPXNCBV0RNuvqSg4MeBNoMPwzEL
	BslepXT0om7n8G4R1/QCZGFVTjFGcTcnda7MdpyQAMNlt+n5KOdmD71qXFF305n3HClF
	cNPDygzPWVcdPjhn9AFglDukzbR61vQ06lN1Vg3gXjG+ZGPSkvthuh6bLRCX+Uwuh0PC
	CuMQpwJ+ANQuzYH53+ptedIyzJ/2V3FdEW+i6tk9G84O9mgXO5hIXfTvViXGgUa6TSrR
	BdoHKKcZaCaX2dBecLfCmH91pAPiPvI4+RMiTU+nGEQWUH2qh9+WuPtlA1m3lxWWdx+A
	gNKQ==
X-Gm-Message-State: APjAAAXvqCBqd5VdFz5V/olz9XJVzGMcVQ2MJ/vGPlCzKq6h3pwc5nip
	78Ql2WwPdY/rYAH1/7lxv6k=
X-Google-Smtp-Source: APXvYqz2Xun6MKfkUyR2SGtGy08T5P03Ui6+P/Tw7IDM8BdkglHt8Mnm6eWXMiE01WQPV0+bkAG4AA==
X-Received: by 2002:a6b:691c:: with SMTP id e28mr3530646ioc.295.1551890858149; 
	Wed, 06 Mar 2019 08:47:38 -0800 (PST)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.116.254.195])
	by smtp.gmail.com with ESMTPSA id v14sm700227iol.61.2019.03.06.08.47.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Mar 2019 08:47:37 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Wed,  6 Mar 2019 11:47:30 -0500
Message-Id: <816c02e25f2d66e867705483bd04360059f260a4.1551890688.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1551890688.git.bruce.ashfield@gmail.com>
References: <cover.1551890688.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 4/4] poky/kernel: make default 5.0
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
X-List-Received-Date: Wed, 06 Mar 2019 16:47:39 -0000
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

The 5.0 kernel is available and 4.18 will soon be dropped,
so we updated the preferred version to 5.0.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index adb2af9c9d..6544c03396 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "4.18%"
+PREFERRED_VERSION_linux-yocto ?= "5.0%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.19.1


