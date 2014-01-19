Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CCE7E00875
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:16 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id d17so3026879eek.23
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=rxNfrwh6MQHKKv3TxxOtTn6hLBXyHSBG+DonmkJAhLo=;
	b=iFWKBAtlLFINpAVyEve2NY1WzEhtHqzVxSH5/Et439ZuHlxNoz0E5m13ilmsx+AwSC
	KNKjbU1pzyr57qYh3xzlzcEALfcqQwhCI0vjOpz7APfY6dptzpvimNknjAOMjH/EDPDU
	nvCaEqaY6ZBDkAAkBdOdhwVpzU/D34dbLVbYkesLHJ4EU32I1YTH7qlgQBldHUdCPy4r
	2iRIeZfiQMCOZHq2qwm/Vdp2K2FT5FGy6D4iOIzt947PfQSmtC0ldp+4RndqQq9+Jbtk
	jp4WrBIKZUY4rLUqMAkCbHzNKrW7Wr7vIAt1p7Jlnrn7mR4TxTY+H+EkaiaL5FT2z+KQ
	OY5Q==
X-Gm-Message-State: ALoCoQnTdF8eRn8dsHRt/e+WXibi4BvcuA+eiE1gX2HrWDTiUWf1Cf/82jIMxYkmoq+fJY/+ir7z
X-Received: by 10.14.107.3 with SMTP id n3mr892606eeg.67.1390158975795;
	Sun, 19 Jan 2014 11:16:15 -0800 (PST)
Received: from localhost.localdomain ([79.116.111.233])
	by mx.google.com with ESMTPSA id 4sm46036842eed.14.2014.01.19.11.16.14
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jan 2014 11:16:14 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 19 Jan 2014 21:15:55 +0200
Message-Id: <1390158956-24554-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
References: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/4] packagegroup-rpi-test: Add some packages
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
X-List-Received-Date: Sun, 19 Jan 2014 19:16:19 -0000

bcm2835 is an empty package because this recipe provides a static library.
Install on target only bcm2835-tests package in which files are statically
linked to that library.

Add forgotten GPIO packages: rpi-gpio and rpio.

Change-Id: I498d2a3948ad5faf963d492bc496d4725a79e136
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-core/packagegroups/packagegroup-rpi-test.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packagegroups/packagegroup-rpi-test.bb
index 3f1866a..e16e79e 100644
--- a/recipes-core/packagegroups/packagegroup-rpi-test.bb
+++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
@@ -6,8 +6,10 @@ inherit packagegroup
 
 RDEPENDS_${PN} = "\
     omxplayer \
-    bcm2835 \
+    bcm2835-tests \
     wiringpi \
+    rpio \
+    rpi-gpio \
 "
 
 RRECOMMENDS_${PN} = "\
-- 
1.8.1.4


