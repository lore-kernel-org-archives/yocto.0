Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FD27E00CC6; Sun, 17 Sep 2017 22:41:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD289E00C8F
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:41:50 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id v82so4746440pgb.1
	for <yocto@yoctoproject.org>; Sun, 17 Sep 2017 22:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=jiJL6EazQnUZyJGqwSq/WBFDcMeeqUccE18CNQuKcN0=;
	b=QQaxiKNU6GTRQ8hYH5T3JGAH/lkr/IMCNVJn1ite2WcKeN6XfkWW10z9HOMmMfd22F
	YIfThxzYkjCd7qpkaxqPq8WQT0m8jfaKJM02IOapdm/K0T2cpsJOp+/R+HoUVeu98xuU
	SHKgI5TMuizKACc2MbcbP6unEjtZnseDrk+/LOcER7KGfffLy/EJ4b16kkSCIN2TS/tj
	ah2q05h92+aH+BfSJ3NFHSqgDRSldwSeBFYrSyPQE2g/O5UJ6OtWqlJEFLU1BTqpjchn
	jgPMDL5aM05HXI+TbJd9BawfziU1LCdi+oKhvQEScPMWHDkUdlLwf7+NIHLWAGUPqtmI
	UJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=jiJL6EazQnUZyJGqwSq/WBFDcMeeqUccE18CNQuKcN0=;
	b=iiGufn8vTrzbGAGztAE5qIDxk+mn0hNf3bdWGscxII/0qNBlYRnU7TmbsiFC+DICk+
	Im6G3KdSJKpszGmOrs01U4zvjWQCKEjapMGjMJv2ZLAbMkPzZxJz0kXag4dscwEAaBiU
	fQZQo7Tm0EM/CnIG6FWvKum8R7db6cL5J6wf5CI5xwzz4GAajYms/gPy9cSn9q02pxiX
	zm9mwGTFkjc5D0cPLErYMkxNtbe0mz1DS/Z4NRuc8yVmPeEJcGJMGMYX1SFQZPK5oaqd
	Il760i40l33872Io2uIxj2ag0KAJ4ket15y6LYEXvxpmTMEuscqZ4N6XvQTJCJa9rjop
	dn+g==
X-Gm-Message-State: AHPjjUgronrCj6O6MMrJWsKPaJUAQkl2WFUA5ayLTFg5AnW1fDOdpvRn
	44+URNJ8TI8G8vmy
X-Google-Smtp-Source: ADKCNb53xmMxj+4vESnC9Ug3hp1pG7+jBnwgU1aSL4Ye8cCF2h/Nyra7GF0GikKr3rsRS8D4Ru+Tnw==
X-Received: by 10.99.185.86 with SMTP id v22mr32980457pgo.236.1505713310403;
	Sun, 17 Sep 2017 22:41:50 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:8882:b8c::a20b])
	by smtp.gmail.com with ESMTPSA id
	h186sm11406591pge.72.2017.09.17.22.41.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 Sep 2017 22:41:49 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Sep 2017 22:41:37 -0700
Message-Id: <20170918054137.33583-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20170918054137.33583-1-raj.khem@gmail.com>
References: <20170918054137.33583-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] linux-raspberrypi: Build dtbs with dtbs make target for rpi64
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
X-List-Received-Date: Mon, 18 Sep 2017 05:41:51 -0000

OE currently builds dtb files with its own custom targets by
specifying each dtb file as makefile target, this creates bad
dtb for rpi64 bit. This patch calles 'make dtbs' at the end
which regenerates the correct dtb files

This makes the vc4 initialize properly on rpi64

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index f336490..e0b14e9 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -38,6 +38,10 @@ python __anonymous () {
     d.setVar("KERNEL_DEVICETREE", kerneldt)
 }
 
+do_compile_append_raspberrypi3-64() {
+    oe_runmake dtbs
+}
+
 do_install_prepend() {
     install -d ${D}/lib/firmware
 }
-- 
2.14.1


