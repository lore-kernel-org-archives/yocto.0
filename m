Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC1C9E00DF0; Fri,  3 Jun 2016 12:58:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F6FFE00DE5
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 12:58:49 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id a136so1697192wme.0
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 12:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=pHBXT7b9Qc9Dyq/mjTTtVIo/3CaTd/yChQuWHrXSFFM=;
	b=STWpqY/udSDaLJAuM62uBKqHCGExpp2eArQpJxr2lYk3eYKuLEmC7iV37zoOkBdG8T
	ffKlagnVKjDfIJhgAFXezfrlDR/MqfCh8wTzUKHdMwKLKE1CU8Oqck+3D00pPd95Rpsa
	phbb58zlaVZ9nTKegTZMWTTAB0W/Uwuzc3gCfYsKLNGmmY1qHHMbW/ygLl18ZEIRZTBR
	6xS50ISiRwo4s4sK2uVx6Wcj5An9JoFV+2T0wxPUZk/C/2G8ggC8CQlluFXEtv1/Ia3I
	Q2oU8S8SzeFBcmtRaGZ8/ikumj+8SfHof4+ukfGp2p2k7jUiky2MON+ce7lUOKZ0a2hK
	f1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=pHBXT7b9Qc9Dyq/mjTTtVIo/3CaTd/yChQuWHrXSFFM=;
	b=ZQlKbF8aQe74DIzm+EyZMrplQFiZdi2v8XxECSnQLgiQQnlHvE+7g3bzE57HgzBJ/n
	Mixw/P8cP97F1OL2GiurVJzzPS27Zh1vuR0KtrG7fo993GKfv47+oiZ7gb7j3g60FWUy
	V57+UK5cn0uuFZOk0NLyacozAYZ1nEsU+Q4kBt2HMUeSXirOAJEzaSN8Cxx+i9+w28UM
	J+mtmvfPtm/lY1+tSLcL2M/ss00Z0eyU7avd2kSqXBKUim+uzSkl7K0U+fvAKlY43JmA
	aftipjy8zKfD+S3YEkdFAGEtic/Yh3Ait2seUh/W9jvWrLR5uz9ARrn0eI0UBYGfITph
	U4IA==
X-Gm-Message-State: ALyK8tIFDltKEd75mXAKdi1F95fA6HB07TrD5dXvmcBV8461x8nX35KmkGtoTb4SDn4VpA==
X-Received: by 10.28.46.83 with SMTP id u80mr964275wmu.35.1464983928511;
	Fri, 03 Jun 2016 12:58:48 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id v5sm7219500wjv.36.2016.06.03.12.58.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Jun 2016 12:58:47 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  3 Jun 2016 20:58:56 +0100
Message-Id: <1464983940-32210-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH V2 0/4] Drop rpi-mkimage and use upstream u-boot
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
X-List-Received-Date: Fri, 03 Jun 2016 19:58:54 -0000

Changes for V2:
    * Don't remove linux-raspberrypi 3.18 just yet
    * Drop move of PV setting out of linux-raspberrypi.inc

Paul Barker (4):
  linux-raspberrypi: rpi-mkimage is no longer needed
  u-boot: Use mainline u-boot recipe from oe-core
  rpi-mkimage: Remove unused recipe
  sdcard_image-rpi: Always install dtb files

 classes/sdcard_image-rpi.bbclass                   | 42 +++++++++++-----------
 conf/machine/include/rpi-default-providers.inc     |  1 -
 conf/machine/raspberrypi.conf                      |  2 ++
 conf/machine/raspberrypi2.conf                     |  2 ++
 recipes-bsp/rpi-mkimage/rpi-mkimage/License        | 25 -------------
 .../open-files-relative-to-script.patch            | 17 ---------
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         | 22 ------------
 recipes-bsp/u-boot/u-boot-rpi_git.bb               | 29 ---------------
 recipes-kernel/linux/linux-raspberrypi.inc         | 18 ----------
 9 files changed, 25 insertions(+), 133 deletions(-)
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
 delete mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb

-- 
2.1.4


