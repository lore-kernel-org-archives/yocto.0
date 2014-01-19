Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3398CE007A9
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:12 -0800 (PST)
Received: by mail-ea0-f174.google.com with SMTP id b10so2658218eae.5
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=FPFomjNPnPQrQAk2s9NMmZXScpx/SS3xfs2QC2SS/iA=;
	b=VJ+EmcrjlLGmQAxMOeNW0XKKoCI894GEiEMEVLoJ4K8ubaOcvVQyutTK0C1Ok7huMb
	IAzin5C6RJD8vUNVHs78Myq/lo5HnAFrNUgblvrTPGEZgA3x8HmwaOt1+lgiiEA/2rF0
	Rpwr8Jdtw2fUuyT/ja83B7JrP7WTgPaAorQFMh5p1gcSpF9FI0htj+EzBIe4+nuz2mpE
	KyB02mL6YbbLzSFKkVwdCjP61qDi1swmZ+B+Oi1UfJlYslltuJb7m9YcS2fJ6iY0v8RX
	H0kcvUBaWVhOG382VLQC5eL7g9LuEolxT55R6rux0g0EhQqqK3v4X3vP8+jqVlwDPp3j
	WMHg==
X-Gm-Message-State: ALoCoQn4roeoCcvwD94KtHJ25NSsRpBnEwd7jHQbtUyKGt+VYmJ/DiopA9UP7Nlyh3AVypUuYbj7
X-Received: by 10.14.176.195 with SMTP id b43mr13882682eem.39.1390158970285;
	Sun, 19 Jan 2014 11:16:10 -0800 (PST)
Received: from localhost.localdomain ([79.116.111.233])
	by mx.google.com with ESMTPSA id 4sm46036842eed.14.2014.01.19.11.16.08
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jan 2014 11:16:09 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 19 Jan 2014 21:15:52 +0200
Message-Id: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 0/4] Some updates
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
X-List-Received-Date: Sun, 19 Jan 2014 19:16:14 -0000

Updates and some additions in packagegroup-rpi-test

Andrei Gherzan (4):
  bcm2835: Update to v1.36
  rpi-gpio: Update to v0.5.4
  packagegroup-rpi-test: Add some packages
  omxplayer: Update to remote HEAD

 recipes-bcm/bcm2835/bcm2835_1.34.bb                | 41 ----------------------
 recipes-bcm/bcm2835/bcm2835_1.36.bb                | 41 ++++++++++++++++++++++
 .../packagegroups/packagegroup-rpi-test.bb         |  4 ++-
 recipes-devtools/python/rpi-gpio_0.5.3a.bb         | 20 -----------
 recipes-devtools/python/rpi-gpio_0.5.4.bb          | 19 ++++++++++
 ...nd-headers-from-ffmpeg-are-installed-in-u.patch | 24 ++++++-------
 .../omxplayer/fix-tar-command-with-DIST.patch      | 18 ++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb      | 10 +++---
 8 files changed, 98 insertions(+), 79 deletions(-)
 delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.34.bb
 create mode 100644 recipes-bcm/bcm2835/bcm2835_1.36.bb
 delete mode 100644 recipes-devtools/python/rpi-gpio_0.5.3a.bb
 create mode 100644 recipes-devtools/python/rpi-gpio_0.5.4.bb
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/fix-tar-command-with-DIST.patch

--
1.8.1.4


