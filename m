Return-Path: <andrei@gherzan.ro>
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EEE4E007F6
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:23 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id i50so7117969qgf.0
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Eg0vFsW7J6yPt4a3rD7TZ4EIJ4dPHe0O/+alF0xOexU=;
	b=l1kNPPeYvPHOll00uw6cD7ldTwsvViTHu9VHf62U2TC3YSMAf0Hlfy2lvCRhy8aRQW
	L714fOFR7l/DIfJ8Na+U0yYMhO4vp0rTkWXzXQDKoEfpeC1ZUOa4ZzskzVHiThRI9DsT
	K3uqKNklYEwF6ZHn26tTfnOBjW6LEtqGBKt5dKAb0xuwSJY4uxkFr9HfI16ogDNP4k+l
	9xZEicoS3nif7tZ/oyfc1gVYPQe5Kf8kNEHyGeCmipPqR6pyt1uf4zTAanlk+iWC+pF9
	77bYSSaSTOM46I1ewvSlyFcF54Io3+KS186dStFsJarGBBFkr6om+npLdZ98EUV9tEhV
	5p3Q==
X-Gm-Message-State: ALoCoQl9A2fdnwhQVZNRDqD7srJrp/truqfzgMQPeT5wu/onf1bYeChnZhOSBaegje0iPKDAnSN+
X-Received: by 10.224.119.147 with SMTP id z19mr8656360qaq.20.1392978562818;
	Fri, 21 Feb 2014 02:29:22 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.20 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:21 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:02 +0200
Message-Id: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/7] linux-raspberrypi: Update v3.11.10 to current remote HEAD
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:24 -0000

Change-Id: I724511ad5e96ff1b7779c3afe772eaf0d5250c8e
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_3.11.10.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
index 3962b40..6df11fe 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.11.10.bb
@@ -1,4 +1,4 @@
-SRCREV = "71397e18fb1038619f3066827b83d6fcd5d8bd62"
+SRCREV = "8f768c5f2a3314e4eacce8d667c787f8dadfda74"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.8.1.4


