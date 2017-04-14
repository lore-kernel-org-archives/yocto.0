Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5469BE00A30; Fri, 14 Apr 2017 13:13:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44FFCE00939
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:25 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id o21so13563807wrb.3
	for <yocto@yoctoproject.org>; Fri, 14 Apr 2017 13:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=8+AuTQIsVv9ku8X6148UBfzXyzcqxSyh1OWqNuFKhOM=;
	b=DmPEDL6+5cfYINQUJiZOnz0X1L2OgWf5tdNy6Z628ewuU8WVLJPnockNp5Mh3S5GJF
	ArcugdclmKlgmWq2YvYvfNExIRFDXJWNQ8YyMiDKKIfFZCA1X+10DcURCeaC50UiScJ1
	SxD4N/+PDz+4C4RbPtYIHTZXcvTCE3U6OhiBwc7G9DqqYg65IkmBtNCfoKMcfzzuBR5Q
	po/Kh+qyvGtHfnEe5vxPTCdtEEHKsO4tpYGR7JdRqPOablF34s8PYYVjwAs8m1z/OnYi
	pyv6s/3NgNBMbKp233brsqVcfsAKM1qcUnM7Rc0DRDk8lO8wNlJHZCKSUtFE25m5yoV7
	WUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=8+AuTQIsVv9ku8X6148UBfzXyzcqxSyh1OWqNuFKhOM=;
	b=Vz9BGjHNFZIk8LAlXdWUz0x5LyI3ArZdMRiu5snGWD7pNbMxbNjLyELU34QZjK/VDf
	tHy7maRCTKqeWcKmDn3EXssFjjzr8iYIcnvtKhp0WpbihKq3NPcqrn1Cc6sosF1W34Ap
	/MI98Njo3+F5/VyuOv4TRIIoQBAVmdts0d/eMFV1frc65LkRUkuscHhL8SS50k3YxrFg
	vcdxREsUfcJOzDVfm3YT7GoflxwtAlbGK64cApe/1I+DgwiOhpRq1qgH2dopXx2euooQ
	PWQAJOga8166SR1Jt2KDNXpyJRlA7bkTEtinOjZg8osVT82AaDwEFqvqLPIOeW+HfdnM
	pAdg==
X-Gm-Message-State: AN3rC/7cYb2GJ2Ko7ej401riShYrny6zXbT6i+PpZQpx96Yf05NXU0W/
	4JV890KlT8iR5EvZFFQ=
X-Received: by 10.223.142.23 with SMTP id n23mr8769783wrb.188.1492200804714;
	Fri, 14 Apr 2017 13:13:24 -0700 (PDT)
Received: from localhost.localdomain
	(host86-170-80-134.range86-170.btcentralplus.com. [86.170.80.134])
	by smtp.gmail.com with ESMTPSA id
	i144sm3983021wmf.13.2017.04.14.13.13.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Apr 2017 13:13:24 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 14 Apr 2017 21:13:12 +0100
Message-Id: <20170414201313.3138-6-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.1
In-Reply-To: <20170414201313.3138-1-andrei@gherzan.ro>
References: <20170414201313.3138-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/7] raspberrypi0-wifi.conf: Add machine configuration file
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
X-List-Received-Date: Fri, 14 Apr 2017 20:13:27 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi0-wifi.conf | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 conf/machine/raspberrypi0-wifi.conf

diff --git a/conf/machine/raspberrypi0-wifi.conf b/conf/machine/raspberrypi0-wifi.conf
new file mode 100644
index 0000000..2b7cea4
--- /dev/null
+++ b/conf/machine/raspberrypi0-wifi.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi Zero WiFi Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi Zero  WiFi board (https://www.raspberrypi.org/blog/raspberry-pi-zero-w-joins-family/)
+
+MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
+include conf/machine/raspberrypi.conf
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-128"
-- 
2.12.1


