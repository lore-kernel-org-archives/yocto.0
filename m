Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B893CE00CC9; Tue,  1 Nov 2016 06:47:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F2EE00C97
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 06:47:25 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id a136so8356105pfa.0
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 06:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ZlZn7xNGVq8HVWVrCYGgsLyw1D516X8s8dGNmb1HE2g=;
	b=NyJhO2NVDGBwIqFyacpH0/iPDnxd1rbNR36XQmagJG/ziw3lLQUZ1nlMhBR/OwLxd+
	i39SrGizEfEG4HbL7Z7GtX2ARGziPT6kjAVJNu3IFmLsBcly0SZ2+tbHyJ+LFkCiFtU2
	ssOpRSX96NFEMxBlQILp2qwyR3zPxb/zYIv8oRDWEhgZIlpbHz8dcJlQKWoOQYvSKTDy
	5ZSonQge+kJOrmPr/Wq1TVBRK8T3yI2xE/HrLro9ENiHvWIIze/IUtBnQ2+MyhWqnQ/7
	ATInSwyqUBhoiEU9EpE2gj/OFUcpbXJpwmSXeeOe/mE6gTxYwg89j7Xi5AGKxBmExdMm
	70xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ZlZn7xNGVq8HVWVrCYGgsLyw1D516X8s8dGNmb1HE2g=;
	b=GwtaBZwdKHYst3o0RbbH3v6NPDPiCKTG3cjFqaQOIg6vgfLi5ds24o+kdHseShkW+e
	y42J+8K5PEoCOJV8fdzAkMcMGQn42FfJOP8+/VRICJqot4IVrVwntwK1qfxvycfz++oi
	zBtbSe+4/JKR9/wWtOKmFBHTkGUUxPiwcGZhHKbmZmEC4Sr7GnKZA8NTu1r+InjEZNB8
	KrvN/p9sZbTt+OAHEjnaw5Ve6Wl5VNSj6eHIxUYC7A3YuSeeDCwR/HJKE5h7r2Xy2DTx
	mcICKXYd5BKoNLKlwoul8Xq3Rhh1VuAk923JS+KqUrBImrtec3odyut6hvdLBuPAqGWr
	S9Ag==
X-Gm-Message-State: ABUngveerNtoESmrbebr8IIJt7tWv7YlE0Igsaw6EyInZs2vmgvz8EIuSWiHE5rY9aBPCg==
X-Received: by 10.98.66.77 with SMTP id p74mr60385004pfa.15.1478008045026;
	Tue, 01 Nov 2016 06:47:25 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	d15sm42445043pfl.90.2016.11.01.06.47.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Nov 2016 06:47:24 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Nov 2016 00:46:47 +1100
Message-Id: <20161101134647.11370-1-net147@gmail.com>
X-Mailer: git-send-email 2.10.1
Subject: [meta-raspberrypi][PATCH] u-boot: Fix appending to RDEPENDS
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
X-List-Received-Date: Tue, 01 Nov 2016 13:47:27 -0000

The += operator should not be used in combination with overrides as it
will clear any existing values in the variable.

Example:
FOO = "bar"
FOO_rpi += "baz"

The above example would result in FOO being equal to " baz" instead of
"bar baz".

The bbappend is changed to use a wildcard instead of a specific version
to simplify updating U-Boot.

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/u-boot/u-boot_%.bbappend       | 1 +
 recipes-bsp/u-boot/u-boot_2016.03.bbappend | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend
 delete mode 100644 recipes-bsp/u-boot/u-boot_2016.03.bbappend

diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
new file mode 100644
index 0000000..3781666
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -0,0 +1 @@
+RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
diff --git a/recipes-bsp/u-boot/u-boot_2016.03.bbappend b/recipes-bsp/u-boot/u-boot_2016.03.bbappend
deleted file mode 100644
index 35dfc37..0000000
--- a/recipes-bsp/u-boot/u-boot_2016.03.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-RDEPENDS_${PN}_rpi += "rpi-u-boot-scr"
-- 
2.10.1


