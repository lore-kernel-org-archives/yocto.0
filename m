Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39B41E00862
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:29 -0800 (PST)
Received: by mail-qc0-f172.google.com with SMTP id w7so3344542qcr.31
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=9xNfst5Bj4OoFKNZ1mu8eJTK4WtXWfJjhuziMTAmdb4=;
	b=RRILjOr9UXLLAA3FGBgxAcFgh71d5/cY6PYGi1d4A3QSPKgGJsAK8PupJBTDc3d/2C
	4WR63KYuPU0W3A3htg+5WtYQUNE0ooOZ1yj/NflqnLCmYk4pI9Ncb8mNBF231mVQlRO6
	qsTghrKoxOSk7FFlFqiJLPZTyoSUHMFrhWKom2w6ODXBJLNcQT7/r4xq8IucVlIXqkCJ
	dn8LehGWnS6iHgIovuh5FQlWKZN1wyCNKxdAdg7AV+mNmAhiqcn9G93+mnfxNGcV0zSA
	SOn9cCRumqRkSxFp1NbdBNV/adU2ArXTMa+7TXAOXUN1fqGnG/Wr0YvWadZSmMsIJf6x
	LJpA==
X-Gm-Message-State: ALoCoQmjihcXgzN9O1k0qawHhH6nqH9dSCYoRnXtyL9KS+8N2ZIYWCTdizgdolCzg3hS45Cdf/rt
X-Received: by 10.224.166.137 with SMTP id m9mr8632800qay.81.1392978568609;
	Fri, 21 Feb 2014 02:29:28 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.26 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:05 +0200
Message-Id: <1392978548-31880-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi: Add v3.13.3
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:31 -0000

Change-Id: Iace039740f3b1b910d65bd3a2c82dc08836fde57
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.13.3.bb | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.13.3.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.13.3.bb b/recipes-kernel/linux/linux-raspberrypi_3.13.3.bb
new file mode 100644
index 0000000..078c031
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_3.13.3.bb
@@ -0,0 +1,6 @@
+SRCREV = "660b0008f5d318d8a29187b64c8717e75ad14c1c"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.13.y \
+           file://sl030raspberrypii2ckernel.patch \
+          "
+
+require linux-raspberrypi.inc
-- 
1.8.1.4


