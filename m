Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F733E00C62; Tue, 19 Sep 2017 09:22:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDF14E00C01
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:04 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id m30so61415pgn.5
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 09:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=lyI0ph/3EfXUJtBoNm0G7mlrYLKrbjXHafLkN4XysNM=;
	b=mwZ7DgxHcL4eSSERd5vPhKOvQgMOaALqgbpjLo4NmB5qbxHVlu7CPW5aNsxdCx4730
	yqL8FxNn5rFLK+Y3H2+INJw8Hjdvh0S8/QQFdcYqpmZwZu+SBD6YT3HM03x0V2P6r2S9
	gj+8kDhoALGK4h+suyo9lZO0rWlO97sZwO9kLloDRTX+1c9UoIHqHvC2Kk00Rs4/PA6O
	zm3VJy2L4gxZjgAUTMgmCvak1f+LO6/Q3V+SRymPYJLZyIsOah50TpzFm6mXlR76lwzZ
	N3HNNpcce5ZphCiJPLkd3+NWMcY+iE1Bi/+tbRiy5/eWCUTDIXN0VaeEsiEyMaEsKPy/
	/VPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lyI0ph/3EfXUJtBoNm0G7mlrYLKrbjXHafLkN4XysNM=;
	b=PFh1RLgz5XN222OlGjeWXLmgN0cOB7jXknwYQVRZgTLat8gfJ8lKX7wGQH/J7xfBZL
	IoQw7o+B4L26FcQD6jvrQjSxyVej0WJ0BGsH+oevbJZQagGPFGUwqOWSNOvv4ByWEy7A
	q6UrPFYiaOu25lOKcOHGVf9TedDpy9EKDGxkrt/mhz64xK3EYT9DrgtJJQtGjoglfuj+
	nnoelRHmGJ+cJ0Qrl4KdwQ0leHawN0aowb/8I0a7SMfGxTKXq/DGKg5O2fQLGsWumBVX
	cyCsVlNlvw5oj4tz7f90n6MZL4tyFksXDNnpkg5PblcZdymR9WIAVj2NTso631LiYbth
	vrhQ==
X-Gm-Message-State: AHPjjUgvt/byHNJFEtgCeV+mwkiatA0kIAdp9L1WC1Nrzx6gAs6REgvy
	4kTgbLUb9JgPJxLQSQSDST+vkg==
X-Google-Smtp-Source: AOwi7QDs9dQfwoPVlWPfxGbg1NcO6g2icCieQnkROVbAEZaUhRAahxmgejVIEoC2CvEmKovtUoROmg==
X-Received: by 10.99.181.23 with SMTP id y23mr1820696pge.191.1505838124270;
	Tue, 19 Sep 2017 09:22:04 -0700 (PDT)
Received: from localhost.localdomain (c-73-158-54-208.hsd1.ca.comcast.net.
	[73.158.54.208]) by smtp.gmail.com with ESMTPSA id
	s81sm4906836pfg.162.2017.09.19.09.22.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Sep 2017 09:22:03 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Sep 2017 09:21:49 -0700
Message-Id: <20170919162152.37560-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.14.1
Subject: [meta-raspberrypi][PATCH V2 1/4] linux-raspberrypi_4.9.bb: Upgrade to 4.9.50
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
X-List-Received-Date: Tue, 19 Sep 2017 16:22:05 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Changes in v2: None

 recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
index ba17020..068965f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.9.41"
+LINUX_VERSION ?= "4.9.50"
 
-SRCREV = "4153f509b449f1c1c816cf124c314975c3daa824"
+SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
 
 require linux-raspberrypi.inc
-- 
2.14.1


