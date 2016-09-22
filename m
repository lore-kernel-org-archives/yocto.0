Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EA96E00CFC; Wed, 21 Sep 2016 22:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9095E00571
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id w84so12084827wmg.0
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=rqgbtuKTWSypnydSEILF1TmhRr3ueAx2tmYOpNHpFQE=;
	b=tzAssXUZtJHcvNkZNDR7e6NURhrNfrj3kjAf087wo/ZVmsVfhQrr+nM5o6NFBhBrOS
	4gHRlOS+GOb7gY11CAd+kfKPxdA/AXnrKhBlpYv2WalbgkFN565DcNOfy8u9R1UvT+3F
	0dx2FYIr7eI3i6vEDz2rRJKzDaRdS8QGWArOzreauP7RuSNA6Kh4Ud4SOvtAgWmBsuoS
	04WqqfFGEQ4vA4QtvDHYO+ZD+DbJcBfupitca1t+BGxAzH7LUJLkw+hzGKdwo/G2WRTz
	LWtWg5bJSKkoRszyOLd8bJe6jXzLrJz8T03QRZ0JNFD1idJlygo35prdFzAhnT+ioT9F
	4TpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=rqgbtuKTWSypnydSEILF1TmhRr3ueAx2tmYOpNHpFQE=;
	b=K6LNJKiZO8inMLdCL9quHLSBB/TY/RIPqO0qHy4seyFSv1NKgl3BMRiak9/l/REue+
	Ag3/bqWNCow90wKSQm+GZfryEffwAZE1ueIe8v8FaP0uHAYSGDQS0EIuLdFASx8azhHE
	2Q3OoYXOZ01YznPhtzr7JgAhSquNoLgW5te/dT4hc1C3M4OTrT3cQEkuMXrnsZLyI+Dk
	knVTXLpTfviUF7Zke5S6gp4mYu5G3s3BDtqamQBZzR0KQ99+aBHscpJh4w17ey8h9x0C
	3xlqcJySlXjIoLPyPx6cC0pXEkdWxL96EMMxKbRpk/UDDpUbn4sBY5cfjCN9nwXTsNWU
	frXQ==
X-Gm-Message-State: AE9vXwP0YhyuRyYQFWKZt62u21ND/C+CzNvA/qQws/r/dnBJHGoivgZU+ucTk1TGkrNjuQ==
X-Received: by 10.194.200.198 with SMTP id ju6mr195059wjc.184.1474523284216;
	Wed, 21 Sep 2016 22:48:04 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:03 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:48 +0200
Message-Id: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/6] Kernel update + VC4-enhancements
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Patches I am using for a while. If my images don't break for other
issues I am able to run X11 and weston accelerated in one image. Had
never a machine before able to do that.

Andreas Müller (6):
  mesa: align for vc4
  xorg align for vc4
  vc4: why no framebuffer device?
  linux-raspberrypi: update to 4.4.21
  eglinfo-x11: align to VC4
  rpi-base.inc: build vc4-fkms-v3d.dtbo

 conf/machine/include/rpi-base.inc                  |  1 +
 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend    |  2 +-
 recipes-graphics/mesa/mesa_%.bbappend              |  1 +
 .../xorg-xserver/xserver-xorg_%.bbappend           |  9 +++++++
 .../0002-vc4-ioctl-rendering-allow.patch           | 29 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
 recipes-kernel/linux/linux-rpi.inc                 |  2 +-
 7 files changed, 15 insertions(+), 34 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xorg_%.bbappend
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch

-- 
2.5.5


