Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16B35E00839; Fri, 24 Feb 2017 16:04:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C471EE0052B
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 16:04:08 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id z128so4752059pgb.3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 16:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Rnr7DS5TKNaypPJi/J+0z2Mb/g1aSaJ/ql5Ea9+JrZ0=;
	b=YQO1jiRXKSul7PmDgfNqwzQa8xWZ0UdQ57b1jUA7MrXzGhjVPPb+CIxgVISHq+3WtY
	YrhJ4MrPCaVchm0hB1KWsXQkd/u0PAfkF08B613kL2HGheGQbsqmHb8UJ+sFalqNz+lc
	i9L4+IWQlmsSgq0txAGnj7RWzMS6a3UV7rzPD3gn0DBHU4tCyxYS/iiI2adiWYdC5zc0
	O9/QjsgT0OokVErp9jUq8lIrcizmLVmwUSP48nQnWhMoBzMZrZZBmT8zi6orE/nhflg/
	NZ56zc9qe6cVAc4fhVrt6QkVuI8oL5VSFWSI+OPtbzN/OqE0qpOi7zBFkQQnJa7jLSqR
	CNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Rnr7DS5TKNaypPJi/J+0z2Mb/g1aSaJ/ql5Ea9+JrZ0=;
	b=PsHmKigGULge8OnCVYBDslKjlZxVhff68bJiySj/l6Qll7rUiDi2WkJT7q/jyr0xah
	SGegvVK6xFdO1lIyjCRrdVk6N/U8vYJSKlnwWLGBHJj4BLwsjvv1YGSu+U12Esa7OdkV
	1o21fxZmQgaUs9iDlIFSkOkj9jnU5SgBtN81f6AuhZENdSizg8NKy2DAMB45IQwMIRZz
	F5OxAM8VrBe3jKAKY1CLMMiv8fttSvB3ZUBp1ZT9fe1XnuV43UZJAcVOor2wlNMb0FW0
	xxhaEx5JC7POF2oS5lPjR4YJBQ/d5aNhDPjVUMJ/cer1Eq1LRXSdDWiQ/SR3ld7OKjuk
	bBmg==
X-Gm-Message-State: AMke39kRjQsXlMHmMiZpolk95KlqiIMin9WTLZrCisz85ZmhBqDie1DeYO0TWTe48uWuHw==
X-Received: by 10.99.176.6 with SMTP id h6mr6984681pgf.184.1487981047761;
	Fri, 24 Feb 2017 16:04:07 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	l3sm17118541pgn.10.2017.02.24.16.04.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Feb 2017 16:04:06 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Feb 2017 16:03:59 -0800
Message-Id: <20170225000359.29173-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.12
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
X-List-Received-Date: Sat, 25 Feb 2017 00:04:11 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index dcca369..b41a8ef 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.10"
+LINUX_VERSION ?= "4.9.12"
 
-SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
+SRCREV = "c1271995832a090a94eb3b1c1678cb51b84ef1ca"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
            file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch \
 "
-- 
2.11.1


