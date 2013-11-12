Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A747E017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:43:08 -0800 (PST)
Received: by mail-qe0-f41.google.com with SMTP id x7so5849295qeu.0
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=kD3VjdX0FvnbnS6Iiwlec2cK0qrM4PjvMCUzTkH7aQE=;
	b=F5XBtR7phQh5Gh0GJZYj3hR+56gC6ldyNuP9JHGwbvf1y1WYqv2C2Ylch1XFjuCThL
	rl6Wt2uUML/YE6J2PEdP4oqqBOWum+Y6RmIt+4Fmx1KkJcsQ27L+lbk7p5cRxAG3i6Bp
	KCeqvxjY98o4b2XoHxfjBOFhKKekcA3g0gS2YlypefeBw+ZMSPUW38iL9RR6GmxOp1xq
	7K4OeipUkgQOjOIyjIuGZh+s2Av2ewx+I7JdLkEmYO1agQW4A7yYGZ2deQeMmyr7gBc1
	yP0PaK/PYWAkEEmmo4MzomaJ7WK46ie36qhqz1DWQsjHmH5x9tvMlVBNNibWX9cUN7UA
	ZHiw==
X-Gm-Message-State: ALoCoQmzPllXoP43MQCfCerbyx0BrHPElkClQrVNGDK00joUliMFmpepUnALIm/4B/MDxALUKv7J
X-Received: by 10.49.17.137 with SMTP id o9mr58636573qed.72.1384274587776;
	Tue, 12 Nov 2013 08:43:07 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id 4sm72252580qak.11.2013.11.12.08.43.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Nov 2013 08:43:07 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 12 Nov 2013 18:42:57 +0200
Message-Id: <1384274577-16770-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Cc: Dan McGregor <dan.mcgregor@usask.ca>
Subject: [meta-raspberrypi][PATCH 1/1] raspberrypi.conf: is not a usb gadget
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
X-List-Received-Date: Tue, 12 Nov 2013 16:43:11 -0000

From: Dan McGregor <dan.mcgregor@usask.ca>

Change-Id: I93ed1832905e4fdfc5f5d387c37933b60a50f4c5
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index e25b59a..1e619a7 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -24,7 +24,7 @@ XSERVER = " \
 
 KERNEL_IMAGETYPE = "Image"
 
-MACHINE_FEATURES = "kernel26 apm usbgadget usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
+MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
 
 #RaspberryPi has no hardware clock
 MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
-- 
1.8.1.4


