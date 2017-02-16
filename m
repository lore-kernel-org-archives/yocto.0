Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3C5FE00A1C; Wed, 15 Feb 2017 18:46:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95D75E00A0A
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:46:11 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id e4so414112pfg.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=04+AmjkQpnwObj84zHN6KV/sqIc4HoLq5l/DJKmpfDU=;
	b=PwQWe8d/j6nDpyxpzpA3dN24hAmOF4uQ4+QS58Gl3iCg5t8A8OmryV5/+95u77L4xX
	8oYW8G9yVd0KotRZ2PA8MG9tsI/9x7bjbf5CFjaWLUv59rT27LQ2HD8Nvtf/43HNfOqJ
	TKe0wHfEZlXNv1EUYnzIFoQUoPJeFBbtugmKH12ZOpQgzkdBGwUJqyE/7rIlQbG4DtQg
	RmnFbsntVc1IMVJAqEvGYIFrT1DwG0T9799DMxEBueShL14bFw11tf69z0BWsZiguKeB
	xegNbG0p7KBKmyT45pCvGGzOSgHveh0Ic36osUc72OgCVws+mzZL5VOA+ETBFwNkQqOP
	AxCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=04+AmjkQpnwObj84zHN6KV/sqIc4HoLq5l/DJKmpfDU=;
	b=g5ZyIoS9YBMbfIY6CDT5AeWH9drd8httqyUqcQe83YaL2QsaQNNsekgQUNtlcRjTOd
	J1/ez8LXn9xH5WOqZR8grOy0BLDWuikBtXJaKeONoNz77UbnJQoaZHChHo9BHtOAPUF5
	ss9OrhlI4IqPBGpVjB/SdQBI+aC4nGqRAz2aYWEPgzB6uCg/rZbK0eBe8un2soOEr/4a
	yI6+ZIaIFFOqEmP1PtxtVz8Dokzb0EADpjzdftr11punl7kauGzdpY+cywJbls2cSuL+
	AaHKyO5li5HtHrXc63qtlI3zMi+Bgbh8wTMO7/T3RBFckT6xaWr1Ljx4nYSFPyWnGkgt
	1OsQ==
X-Gm-Message-State: AMke39k+ZK/XOuS/Nm1imrW3LLX1qIgaTAhVIp4r/l7wRfFrR7Kzt8a3n3T//S45dBi/2g==
X-Received: by 10.84.142.101 with SMTP id 92mr47681533plw.66.1487213171055;
	Wed, 15 Feb 2017 18:46:11 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	l22sm9854728pgc.43.2017.02.15.18.46.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 18:46:10 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 15 Feb 2017 18:45:56 -0800
Message-Id: <20170216024557.10474-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216024557.10474-1-raj.khem@gmail.com>
References: <20170216024557.10474-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/3] raspberrypi3-64.conf: Add vc4graphics to MACHINE_FEATURES
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
X-List-Received-Date: Thu, 16 Feb 2017 02:46:15 -0000

Userland wont work in 64bit mode

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index e7d9af2..0bf1397 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -36,5 +36,6 @@ SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
+MACHINE_FEATURES_append = " vc4graphics"
 
 PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
-- 
2.11.1


