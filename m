Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D70D7E00874; Thu, 16 Feb 2017 10:46:59 -0800 (PST)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53306E006D8
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:55 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id o64so2183746pfb.1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:46:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=uI43tv9/VSKImqCYfi/pfmnk2RoWSJepbegkoH/iuhk=;
	b=ZC6TtpHjrxxSsNsHRz4613SVKMolw/jzBccV/m2AFFk0pBhcfMNMLINj7KBBxSa0nq
	lCU/v19lwIY43+fmHvL2srHqsLFwB4OW4HdS4PkdPYX3qnVSx+3awrljdiJssP2LKLNL
	2OynXENrDGJpD4x5cpcbqSW5kbOdx//J2P6pstGVlcAstocTPxqiT7Wi2rIoFG9v/cBs
	bMBW1vtveISlMtWi8qjf53NNXBhE7Mfz0qKE9cDElzc/Mr7mBoiqhg32nEockZspam3Y
	jD2by6QGZC3bFhys/L/FV/Wid0mTWy8QSucnIdwaD0/2St2fLYRMRMBp0ze4nTgvnGIe
	cI5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=uI43tv9/VSKImqCYfi/pfmnk2RoWSJepbegkoH/iuhk=;
	b=RxkFzrBpOMOBQIv0ecjk/A8CIp+SzV5kqcPSOtTJgPpAoxHa2UpVVItbpCohe2/ner
	ttRB2ypc7WwYx+S6uKOAQ+8I/L1d3cRuc0hg1Vzthdcq19L589ikpz2w0niEpWpO+4HO
	bW7TtsTHAl5zBdWZD4d043upnIvf64y1fp0T4r/jZ45kHKA4seLEOIcesA6tdUo29Klr
	AlaxLcOdwDmZbPmoOD6zd2jtsRaTYTNEAG6yGzHraimHVG2XojIlSfQjeEQcsJTWjoBW
	1kiVDvGzzwKSMviX8JkSyxpTiJNrWienhObtW98mvslOLIAaKRlEY0sCgNEmHG5uoNg3
	OwmA==
X-Gm-Message-State: AMke39kdwAxW6hRKTtNQEk0rZAQ7WueVDZPHdVBgEneMV4JE0wG1x3Arffl4bM3LxfM0hA==
X-Received: by 10.99.115.12 with SMTP id o12mr4593860pgc.165.1487270815652;
	Thu, 16 Feb 2017 10:46:55 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.46.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:46:55 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:35 -0800
Message-Id: <20170216184645.6258-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 04/14] linux-raspberrypi_dev.bb: Add recipe for tracking development tip
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
X-List-Received-Date: Thu, 16 Feb 2017 18:46:59 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_dev.bb | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_dev.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_dev.bb b/recipes-kernel/linux/linux-raspberrypi_dev.bb
new file mode 100644
index 0000000..2a5b692
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_dev.bb
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.10.0-rc8"
+
+SRCREV = "9aa91f43583fdb07306f962e6ee6797fba1cc62d"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.10.y \
+"
+require linux-raspberrypi.inc
-- 
2.11.1


