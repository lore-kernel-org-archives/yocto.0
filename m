Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62AFFE00820
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:30 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id x13so3574246qcv.19
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 06:51:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=23UY3mYkn8GYnBJS4Q3Uf604dzpXfzTXPQFeZNSuloQ=;
	b=ebbT3o18m0bfAEw6gMHP5OgEjbNX84Iui3ZjdFROSfEbdAj8iDugVZgxVBMTXdmuxV
	L9pxBPoK2XJNZf/Q15XPD9ES7bzOhjihIQdBd/OtazMc/ZvxczH9XKIHAYr36XVm9M4T
	v61xLzyGCLQJCVuOP0xubS+nNVxMMzEORPjND05C+G9igeLk2CtLi4GQDVnZQeNiG7hr
	eqFm8QE+b1DdgN1lA6rWwDTE8YjP25GuJON9FPLrs6Xe2EZfXvB3abspwtPsQoqpwiqI
	N5UB+EYFE8LL+sERGOSPQTRGQVxoa+Ptp6Yzxl/e6Xjs43wgRrUjs0jCMfHft+K1gSeU
	0qMQ==
X-Gm-Message-State: ALoCoQmV+vIX9c64FxTCfd2wUCE6EGvfjneojZ9mg00G6UPb+hGQzdx3Utm1/s33Cwpj6wB08IIL
X-Received: by 10.224.166.70 with SMTP id l6mr3762232qay.25.1389970289435;
	Fri, 17 Jan 2014 06:51:29 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id w8sm14398658qag.15.2014.01.17.06.51.27
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Jan 2014 06:51:28 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 17 Jan 2014 16:51:13 +0200
Message-Id: <1389970274-26349-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
References: <1389970274-26349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/4] rpi-test-image: Add test image
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
X-List-Received-Date: Fri, 17 Jan 2014 14:51:30 -0000

Change-Id: Iff4f58b43d1dcf5ea4f866b565542807345d6066
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/images/rpi-test-image.bb | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-core/images/rpi-test-image.bb

diff --git a/recipes-core/images/rpi-test-image.bb b/recipes-core/images/rpi-test-image.bb
new file mode 100644
index 0000000..b5602a6
--- /dev/null
+++ b/recipes-core/images/rpi-test-image.bb
@@ -0,0 +1,4 @@
+# Base this image on rpi-basic-image
+include rpi-basic-image.bb
+
+IMAGE_INSTALL_append = " packagegroup-rpi-test"
-- 
1.8.1.4


