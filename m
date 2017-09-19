Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D85CBE00CCC; Tue, 19 Sep 2017 09:22:08 -0700 (PDT)
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
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11C7E00CD4
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:07 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id j16so70952pga.2
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YcXz1dyEZC2epkRLduwh0SHbNckVxVVo3NowfWFqokQ=;
	b=azI2Hx+snsiL8EhcXX54QTo2ExynjWvteF6iEfOO10ibqCk1qoGr/uCkp75Au8ug1V
	nQG8+4eyuXhJ9FfBjysQ23z46tjLOKhQpwTZ+RCFEFX9aCDdf6T+P8nJ6Slky1+V+TMV
	I3iRDee/x65hCSDw/4iNRKZwz+Z2rHJBJzwFCvvvd8ZBOYehrcGK0Y/j9hmvOhs8Dbvi
	M9USwJ2yXZi7t0dgQVraUiLhFVEkHvvG7cy/SmDMfuKR3iD5EDnt3/h2NTpn3hIPsxxw
	HKJ+2Rn3HdPwt/e3kijtC0oP0xjHUmbspvwu3MkoHIu9LtquMnEqVJ1Lbd7A0oN70IAl
	8sYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YcXz1dyEZC2epkRLduwh0SHbNckVxVVo3NowfWFqokQ=;
	b=jaBelKItyTVC4MECv1sQNnt9danCyf3Q0Z1K5PYC6F8qvGw+63j1qKCOSvlGqoTbNz
	R9hZZ4DfCCKZzixbdjapL4spuvhxG7z+FgAZ1b+aK0+YMH/n1xXKNp51YK5YyJtnRN86
	o0XrQDNNRYeB5nZxfDv97i4i1rYfw53emdYkF0cxvAJOp0W2Pd98D1RN5qvdVzqdBTPI
	wrhcy80Q2cwKzlzu6ZKEeieZAkIFg8Bz10hPEupEN4eci0GfF0JR1wYGxsgyjE4he7JY
	SQwhCIY96OGai6BpPUNpcGk8AA8/YcsJvohOlPqETzKLfdn/N3lYQuEP8i8ETs3Ps2Ed
	xCyw==
X-Gm-Message-State: AHPjjUhWHu2y2KpMOYl1Nee+TAKJsoUSeOAgiAJtw6W3Vp4P9JRAm2i6
	BpkVYjIjLAE/zW5DVtnNLQWWxA==
X-Google-Smtp-Source: AOwi7QCtbKLrDOIPzgs0W0zQrL7duKZw9XfF8avo4R0LdTSixbCPsM4xvYUJ+fhR7bqCdH4iiRGjhQ==
X-Received: by 10.98.101.4 with SMTP id z4mr1800557pfb.6.1505838126984;
	Tue, 19 Sep 2017 09:22:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-158-54-208.hsd1.ca.comcast.net.
	[73.158.54.208]) by smtp.gmail.com with ESMTPSA id
	s81sm4906836pfg.162.2017.09.19.09.22.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Sep 2017 09:22:06 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Sep 2017 09:21:51 -0700
Message-Id: <20170919162152.37560-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20170919162152.37560-1-raj.khem@gmail.com>
References: <20170919162152.37560-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V2 3/4] linux-raspberrypi: Build dtbs with dtbs make target for rpi64
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
X-List-Received-Date: Tue, 19 Sep 2017 16:22:08 -0000

OE currently builds dtb files with its own custom targets by
specifying each dtb file as makefile target, this creates bad
dtb for rpi64 bit. This patch calles 'make dtbs' at the end
which regenerates the correct dtb files

This makes the vc4 initialize properly on rpi64

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Changes in v2: Use KERNEL_CC and KERNEL_LD

 recipes-kernel/linux/linux-raspberrypi.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index f336490..b348a9d 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -38,6 +38,11 @@ python __anonymous () {
     d.setVar("KERNEL_DEVICETREE", kerneldt)
 }
 
+do_compile_append_raspberrypi3-64() {
+    cc_extra=$(get_cc_option)
+    oe_runmake dtbs CC="${KERNEL_CC} $cc_extra " LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}
+}
+
 do_install_prepend() {
     install -d ${D}/lib/firmware
 }
-- 
2.14.1


