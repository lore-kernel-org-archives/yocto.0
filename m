Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F6B2E00A16; Wed,  8 Feb 2017 21:49:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD8E7E009EA
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:29 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id v184so16925683pgv.1
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PJaEdc4daOaw7A9uO2ZuOh2B38cYuGEWecIauYY/lek=;
	b=FHNbm48I1QNS0LRpyBPQr6X5Khx9RPz8B9dqyv31hbC3dY+WqYieNvACP85rvBjVCX
	dD8TMcV1dOAw05mXcxerbawLm275zEJnIkeuA6tO/TYMiA1SjcMbh8g1sUkGlzX5/LzP
	plVNQTmBl+0CwxXZVgUXUeOPKAmNsn09/tQH8WCmX+oR8+z1f1NtSeeNh+SfEy0qB1r+
	6ai7kakv3Ximgr39xPLg+oFwh2AeRokuPRbbPauFgFCQuhoyIuA9EaQXVHNUW6fWVdwR
	N726V9O7fJVWxtzD7RR9tGb+pKKCd3TuYKq1fU2MWbtbRbI8UCFNgWVUD5oNxI+IrStW
	8WIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=PJaEdc4daOaw7A9uO2ZuOh2B38cYuGEWecIauYY/lek=;
	b=LD31yLYgK2fmW5DdBOct5SCct/YWmb0os3QxjvTnjvzGzctZOKnqzPH5anwf/359Sw
	4t3Y+OvPOXyLuSDzyKLno6g6FigzfR2bgEj7HkjE46wSOmLSiW6HN2Y2ApLrxmRXkGfI
	segxR+RoLa76vumdpLDY5A9RG8FrcOIpnW/RQiwQ5bRjP82b6sAZOD4Z2WudM8NipJiQ
	QZ0Dmo9ZjYjfGH+P3ngzjXVbSSjynv/nTr5FASBzxSObhV4623M1vBf3NQtLVREoo/UR
	16oIrDTVptkjrD8+yRVBd4LMdH9RbtL9L8430ih8dGT5aP08QEv/IgKVGOqOAuz7rTsr
	t9yg==
X-Gm-Message-State: AMke39ld4iUUndtZvz+hsezeX05Hi8AJpXbQUTYOiCgcxhROzS71M9sporR3+wIozD1Gyg==
X-Received: by 10.98.67.72 with SMTP id q69mr1739823pfa.14.1486619369485;
	Wed, 08 Feb 2017 21:49:29 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:28 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:49:03 -0800
Message-Id: <20170209054903.31598-9-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 9/9] firmware: Update to 20161215 release
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:30 -0000

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


