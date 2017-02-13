Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 892B0E009B2; Sun, 12 Feb 2017 16:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44272E00754
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 16:29:51 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id o64so5264983pfb.1
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 16:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=9EJrUfERZJQPhUaR3HmCmd0MVXsH0ByQ6bd4qAc4H+w=;
	b=eLkMiCP3ROegEkU9JFErV4WfzlOBIds0VwD//kHEbnFDLZLsHYn6LuT745pczR08eN
	K6NvP/WotHzyzF9RKp94MoPV8UaEcnFUqtjY1BsNMPFY1X0/oYTt4dN+OLbvhmVfmszh
	UgB2O16MuRELLmWG5wMq2koBrSu0QjC0Xkh9OKYaTLPTpoHHgPczHlJVb9+Z5nF4T74L
	6xJs8tnW0odi0EZT3p2T9tNxDIrGwOi52AQlLmcQH5nLwlkwrza4gGt7VvI+F3tRpjKi
	NvB0OTvne2heaOTqlk6p5yDfYdlZAF12RWTKpy14+I4851MGy2405XoB7bUppX0fQAz2
	FB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=9EJrUfERZJQPhUaR3HmCmd0MVXsH0ByQ6bd4qAc4H+w=;
	b=niQVs9cNlOltKcHjvfJanF40V2e3oy/qRodkWO/bgZELOOi0S69pDhfurY9w6ux1SS
	tp55hDnQzcnMF6L/CU5ssnxrmRZFMUQEWxtBXwtdrxmOOI6PBPSCyDR4HCasDKKrWsBe
	ZIraRzp+MrydsrwttmVbym5W6LUmRc/4xfQzalqbhgR/Vy+K1aIudwlFl0WifoeakqWT
	7KXDM4d2rNTgYjIQAOONTc65suR9Ev8+cLrqs0Yd21MUmETf2UPKpSFhm3CbwZgfb9jF
	LepVYEoMB5pbUkWqDN/3CwlmEY7cIiaY8wX0xI9gutVSaPyxyJFdlXDac8VLDBZpA78f
	smmw==
X-Gm-Message-State: AMke39nDCNdeX87kcSA9Qs5O0YHSrQc890zoUtk90hug4T8QX4JhZj5Nvm/kLB8NGhen2Q==
X-Received: by 10.84.170.195 with SMTP id j61mr26775369plb.26.1486945791292;
	Sun, 12 Feb 2017 16:29:51 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	g85sm16880905pfe.38.2017.02.12.16.29.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 12 Feb 2017 16:29:50 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 12 Feb 2017 16:29:40 -0800
Message-Id: <20170213002940.27365-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-raspberrypi][PATCH V3 04/11] linux-raspberrypi_dev.bb: Add recipe for tracking development tip
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
X-List-Received-Date: Mon, 13 Feb 2017 00:29:53 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_dev.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
new file mode 100644
index 0000000..f186ac0
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.10.0-rc7"
+
+SRCREV = "28439f3b9b1de5c3b5ccf04fc359730fc8cd0646"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y \
+"
+require linux-raspberrypi.inc
-- 
2.11.1


