Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2773E00A08; Sat, 11 Feb 2017 21:27:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95801E009F0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:05 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 204so6503639pge.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Emybrd22u6WrNd6aaxB5wU0cE8WDbYM81BuQYR6QioM=;
	b=kP9RlX97s+NGkrgQ423WgQCvQXvG1LJQSCC2n6g8aLK1Vj5lKLE81L58BdflVLxoal
	aKjEkxOqDiZKeHzWwmYgAOY3CeT0EA7cwMKKBMBOFmqh6bI38CGysTpsOFNwZkiT6XRp
	aeadEmSFK52HMhwkRF+Vd1fifiYp2wE7IkRpiE5+TQ1H+IjRUSG/mNhgcfJVIf7uPldG
	GA3wCPOg0L0hNZSyqQnn+0yz6xz2/q8n1mXdzKhFjMjE6aV+mHfch6h1MG5o4j1Fxz5/
	AOaxyE2JxLsc/b3N6HV0mfMyo2rQ1+yVmVO4OoKBr8eZn69NE4fVCH8fvTxOERicSurp
	WH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Emybrd22u6WrNd6aaxB5wU0cE8WDbYM81BuQYR6QioM=;
	b=Xae8V4QBUHXxf0s22/A9DXcPFRJk/llhJMquP2wXHhFgz1S7PaCfAxE/tMKhDkK0px
	xPYbQzvXXS4xIMI7oc/umednsa0VZdv20raAg+xL4pAtaL1qQox1spXL9kOiYXqnHPkf
	So9J7fiLcXjAtI1Kz6+JCl6ciYU4OZENpB7x2Wf3Ip8btPUlahQj/t6eRJKRnofWzDQV
	XHkeDnBxDidMp8IAtF7FJoQ7xIK6i14inHvqspT7mTvbRl1S4kIKOTuPB7lc/2APorn2
	PX8nWj5bLqnmS9KR4yWnQYOEZtpZQsP3JVq6MOXEKfJgUX5xcFyvn8EtLQ5gCpdhwnTO
	2TJQ==
X-Gm-Message-State: AMke39nKYtalJNwiNtyQRF+PFKQDmg702PP34vFkzjBhtdFVA5kaYH7x8AeI4814TNbPAQ==
X-Received: by 10.84.191.129 with SMTP id a1mr21462370pld.62.1486877225058;
	Sat, 11 Feb 2017 21:27:05 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	f3sm13549604pfd.10.2017.02.11.21.27.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:27:03 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 11 Feb 2017 21:26:45 -0800
Message-Id: <20170212052655.12342-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH V2 01/11] Add raspberrypi3-64.conf
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
X-List-Received-Date: Sun, 12 Feb 2017 05:27:10 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 conf/machine/raspberrypi3-64.conf

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
new file mode 100644
index 0000000..5598e50
--- /dev/null
+++ b/conf/machine/raspberrypi3-64.conf
@@ -0,0 +1,15 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi 3 Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits mode
+
+MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
+
+require conf/machine/include/arm/arch-armv8.inc
+include conf/machine/include/rpi-base.inc
+
+SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-256"
+
+UBOOT_MACHINE = "rpi_3_config"
-- 
2.11.1


