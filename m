Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AFA3E00BE0; Fri,  9 May 2014 06:09:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f46.google.com (unknown [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42329E00B94
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 06:09:20 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id t10so2665640eei.19
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 06:09:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=d5x1aHRuWtd8m8n2A91zFHr1NrRogwUPARgTTOF3IDg=;
	b=VM/jvRjARnXAzreT3RN4LnSVzc9I1v0gF/ACmalOCo0OuNpL5pP+jAnAYB0577MOYq
	8fR4NR0Nl2zpd4zJJCPHxakzIoC0pXPIbpqT6jaqWt75ZNmkkyWRCjAMtv3ywxfOvcHp
	GbtGV8LKh8QK3wWMqB4d8esbtoCy7I3hym1asouL9KXCyhquoos31aQZykLu//A5KZhF
	kN4pA34bVRSsiMwULhaJT4/OQExAxr3hAPYNXmCD0fhM3sUnsZikk8d4mu5s3dGHMjaK
	YzFKbYrzLs3AhLR6AhbfJ2kaJUl2t9lzS3y+v9g0YekjEOK6v3ewOipj4/8lvrlr54fR
	kw1w==
X-Gm-Message-State: ALoCoQl3I9p37Y1MsRNhEQkErdUHnIVMKUcSbvawNoi/uGN4chZuU9Exat1ebirA6hQ0OhZ2HCFC
X-Received: by 10.15.53.135 with SMTP id r7mr13296290eew.102.1399640959227;
	Fri, 09 May 2014 06:09:19 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17]) by mx.google.com with ESMTPSA id
	x45sm11341136eef.15.2014.05.09.06.09.18 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 May 2014 06:09:18 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  9 May 2014 16:09:03 +0300
Message-Id: <1399640946-21680-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/9] firmware: Update to remote's HEAD
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
X-List-Received-Date: Fri, 09 May 2014 13:09:35 -0000

Change-Id: I9e28318c5746484ebde636295c66f7b6b64ba2fb
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 390f6b3..168cd37 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,5 @@
-# 21/02/2014 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "cf20d522e926f30e91fa890d42d010ca98913286"
-RPIFW_DATE ?= "20140221"
+RPIFW_SRCREV ?= "c8881991d9181779aee9637d6f4b215f108021a3"
+RPIFW_DATE ?= "20140508"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.8.5.3


