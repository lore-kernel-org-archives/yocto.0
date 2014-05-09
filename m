Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6CD0E00B75; Fri,  9 May 2014 06:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-ee0-f54.google.com (unknown [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACB77E00B8C
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:17 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id b57so2639326eek.41
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=PEYLrCebDQA6xCiPE4+ENHlWT2ElxllZeVQhLSD1oP4=;
	b=aMBnqibMio+Ly98zs8G3FYgrl5UzGEX66dvs2hCmLsM7zTSX0zeqWvvMgB5//eLe/Z
	91mzs9N2bpdsbBbfd9I9lDD4rmhcc86ozjbpub8KpxyQVFl0yVc5/LNTEp23zeiWCuE3
	SVRakFW9WdJf4a4fFhSZquyX8iUsNEhqyr9TGsU7C3Sgm0K5wNDGTc3mmY7azO7iokMJ
	mv6/409kGmDSaK9U+9sSOT/JX//z5bdlaVlHypEDQMxCid+w2FJ7ta53zrHRTlzdvHFt
	q2RtJXlaBwJiZoqY/kL/pA78mDCNjcuUBWyRIErEyBEpAqBZJ1pXF1q6joWitII2PJE8
	yGMA==
X-Gm-Message-State: ALoCoQmx07ef0uSt7Oiq2iVZ/qZbexDGTONMYe11ZP39FRLJiN4ntz6DKDDiyrzCYwOqn0QR3oxI
X-Received: by 10.14.183.5 with SMTP id p5mr13492244eem.52.1399640957014;
	Fri, 09 May 2014 06:09:17 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.16 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:16 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:01 +0300
Message-Id: <1399640946-21680-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/9] linux-raspberrypi: Update v3.12.11 to v3.12.18
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
X-List-Received-Date: Fri, 09 May 2014 13:09:30 -0000

Change-Id: Ifa763e4352051e4533eac98b4f7c74daf791cf72
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.12.11.bb | 6 ------
 recipes-kernel/linux/linux-raspberrypi_3.12.18.bb | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.12.18.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
deleted file mode 100644
index ff8ed2a..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.11.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-SRCREV = "e297b214d77ce06a321e5ff98d74ae511ce18696"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
new file mode 100644
index 0000000..736be5f
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.18.bb
@@ -0,0 +1,6 @@
+SRCREV = "b09a27249d61475e4423607f7632a5aa6e7b3a53"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.5.3


