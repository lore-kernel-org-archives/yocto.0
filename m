Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1848BE00B63; Tue, 18 Apr 2017 11:13:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C06AE00B3E
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:40 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id z129so872887wmb.1
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=JnrSB+71DpvwyKyXbhd4UcUh3P924CcCmmDsJuNiBjw=;
	b=cNGIGa6njQNW7R7eecP2cuSeZUe5md+kK2F1gHkyQ3FtcmyiYRE+CgQN+b0T/1ksGm
	vU34lpVp5o5nxEL5eh0e5c7nb2dxSTdkXgvsXa9wkH28wVYm+Ood00o+JiLaEg/S37mw
	neQ4tz9YNX5INhqlSPEwAzLP/Wba//sIc5FLWo/dRk6dh+/VLBTBeb6EoX5x27FbgFkK
	YIgAcpiFU4N0n8fS2/Vj639rXz3XVxn9Thq3t8KEjRxFkl6RiJ1aed6DlnPW2aIJd2xD
	S0eM1BRzOG6q6YpSbQxbB0IwB5XgPcXCuBz/0AAjo5jV14Cmq5001fq5+MNUJNxbtxMq
	DUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=JnrSB+71DpvwyKyXbhd4UcUh3P924CcCmmDsJuNiBjw=;
	b=bXPdZAIKTqGGyo41Gwsxo/OJ+fNAlrXh9Oh9BvNS6HhwUEWQ5tWc+SRBxrRIkd3yo8
	7rpdp61+c4pLznfJdxcYkQ3xXcrW9Ow8h7J6uOjEeEassH5IGirzYTd1H+NV2QdQeIwU
	sGEyFhMOKKtNO4wKpCJCnPZeC0omE5KSbB96rJ7Z5xJ0V25oiZUzxNqaepdnu21A264B
	+8DoLy5ELLNhf14JlZLmeAU+QGT8ErS4mjrfEIvJQHPVSxfxij4NpFFn9GzcPtGcgCgt
	G7cuGGm6iZzeUYXbQkILmTycbgj+3eleERRIbOg6670MFIsYCftMz8uzMlXk6HINAZOS
	76Ug==
X-Gm-Message-State: AN3rC/5CbcizvR0sy+eDnfORwx02ByL2AMYDHoIqXOP4GIES1D9sPgzd
	UukGRwiEFEcV5w==
X-Received: by 10.28.113.4 with SMTP id m4mr14207948wmc.18.1492539219792;
	Tue, 18 Apr 2017 11:13:39 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	i144sm361566wmf.13.2017.04.18.11.13.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 18 Apr 2017 11:13:39 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 18 Apr 2017 19:13:33 +0100
Message-Id: <20170418181334.14839-2-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170418181334.14839-1-andrei@gherzan.ro>
References: <20170418181334.14839-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 2/3] rpi-base.inc: Recommend udev-rules-rpi
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
X-List-Received-Date: Tue, 18 Apr 2017 18:13:54 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-base.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index dc98099..50eebb4 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -57,3 +57,6 @@ IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE
 # The kernel image is installed into the FAT32 boot partition and does not need
 # to also be installed into the rootfs.
 RDEPENDS_kernel-base = ""
+
+# Extra udev rules
+MACHINE_EXTRA_RRECOMMENDS += "udev-rules-rpi"
-- 
2.12.2


