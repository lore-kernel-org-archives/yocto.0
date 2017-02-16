Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61DEFE007C2; Thu, 16 Feb 2017 10:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4EFE00724
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:58 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id o64so2183828pfb.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PJaEdc4daOaw7A9uO2ZuOh2B38cYuGEWecIauYY/lek=;
	b=BhTX50OgLHeZ9VNAAXP/aBaY68HuRFLTI54CD8OO7diu1WigPC10g1L15xrKQbxGfG
	F+Qx4BBoScYfwdJj5Gx4Gkh4Z+XopMa+HlUobDTJF1OYToAtpGxEuAxvev2PxxCwajwq
	cCSsGg+sk2bYgBltCHcaTvLkdclQqSExsWm2SBcxSddkIdWuv7k6vedG0b5FkR+faN6G
	A/IwNFDXSwMztAx5/++kv0xgjaIpn6Sz08KtWp0pliBCkJf5yfX11Uz9KrMKGxcholSP
	6EI0WapkqDPKmJWAuQhEZP5Ml5CRf5kJo7lSNX+2YftCt3OU5E7VMLFKs+BbgK2+gosJ
	nqgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=PJaEdc4daOaw7A9uO2ZuOh2B38cYuGEWecIauYY/lek=;
	b=otYpuSrym3v+lP+YNWVhBijSRySvpbY4YVBOslN9AYcJF2ttEqYVlG6AeotMnHyizw
	VIEIZtPZfAIt3Mx4bH3sU0LihyJT9WGzRaLzdD46KHi/a3OX9vAXmGXknCwMTFoHozM9
	zMH+GnBRp2dVTeMec8q5qeIGdzH0Z72GCZ3GlSr+Rome62YXYqO2PRMHz3pEo3jRd+JS
	NrB8oF4jXB9H5eEhukMuMSvCPPfNwadXBXikMu4ZHdans1cWRZPP2m4cZjsM1h24QJrA
	QBw8fq+1wC7H2xid3ZNHa6cgA09Y/AtwdUaykj8+vUOonb/26AadQ6eDC7lxOYS7pf2z
	f7eQ==
X-Gm-Message-State: AMke39nSTsymfgK4u7XnUWruDsHSi2IYSx2a2BodlA3tgxlTERfjQYUTT37rccZJcJc8cw==
X-Received: by 10.99.36.3 with SMTP id k3mr4745416pgk.136.1487270818273;
	Thu, 16 Feb 2017 10:46:58 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:57 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:38 -0800
Message-Id: <20170216184645.6258-7-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 07/14] firmware: Update to 20161215 release
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:00 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 1961b48..8aea628 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,10 +1,10 @@
-RPIFW_DATE ?= "20161125"
+RPIFW_DATE ?= "20161215"
 RPIFW_SRC_URI ?= "https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
 RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
 
 SRC_URI = "${RPIFW_SRC_URI}"
-SRC_URI[md5sum] = "a9281d2869e2d7673a83d41bacfa66c2"
-SRC_URI[sha256sum] = "744e050630621c70991c91e0ee8663dc2f579e743583ca762b13b00bc75859bc"
+SRC_URI[md5sum] = "ddd7645988360d7ef267b48c32293ad7"
+SRC_URI[sha256sum] = "bda18f2affb50053940fd88c3f3bec5af9a4b4ced753d01107a2b106cfb02d13"
 
 PV = "${RPIFW_DATE}"
 
-- 
2.11.1


