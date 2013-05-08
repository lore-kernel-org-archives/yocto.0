Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E180BE0146E
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 02:07:01 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b13so1647245wgh.30
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 02:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=ZQm6fvUWkRdJ604Ku6lVKfWwdFqEnLWrdCDRanvaYfc=;
	b=IkP/NaIFll1Ku2g+k+SQam60xTu5T58M3L1kQGd4WB6HAocB6IOYF/u8nC6NNUNERF
	PRtpft+Y+DSuOrP0PWv03XaKMn5P8t3Un3wg1P8OBJZjnqniRQslQOr3EStrgs0TZ53r
	FkYY5YwNHD/SaYokxub9iuC4BNVc6sdjiaroQLvdvG9FEiJftZj/iFO6YJJy4lQ5qb7o
	wyj87End1SQdF1kRrKR/lI0zvgyRhWP/gr1pVaV6ZiqSh3lufW3XGW+QK+tH9uUsVfpy
	vIeIQGBdMsHvhyP9seWeN2vWiS9wnqT/vWkqlxB/+rP0oC54ripUBDbDZOywjY7O+QmZ
	JITg==
X-Received: by 10.194.24.38 with SMTP id r6mr8973840wjf.50.1368004020630;
	Wed, 08 May 2013 02:07:00 -0700 (PDT)
Received: from vesta.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id dj7sm7836785wib.6.2013.05.08.02.06.58
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 May 2013 02:06:59 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Wed,  8 May 2013 10:06:45 +0100
Message-Id: <1368004005-13185-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.2.2
Subject: [PATCH v2] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Wed, 08 May 2013 09:07:02 -0000

Package names shouldn't contain capital letters.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../python/{RPi-GPIO => rpi-gpio}/don-t-install-setuptools.patch          | 0
 recipes-devtools/python/{RPi-GPIO_0.2.0.bb => rpi-gpio_0.2.0.bb}          | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/python/{RPi-GPIO => rpi-gpio}/don-t-install-setuptools.patch (100%)
 rename recipes-devtools/python/{RPi-GPIO_0.2.0.bb => rpi-gpio_0.2.0.bb} (100%)

diff --git a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
similarity index 100%
rename from recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
rename to recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
diff --git a/recipes-devtools/python/RPi-GPIO_0.2.0.bb b/recipes-devtools/python/rpi-gpio_0.2.0.bb
similarity index 100%
rename from recipes-devtools/python/RPi-GPIO_0.2.0.bb
rename to recipes-devtools/python/rpi-gpio_0.2.0.bb
-- 
1.8.2.2


