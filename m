Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57FF6E00DFC; Sat, 18 Jun 2016 04:06:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C142AE00CCD
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:50 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id k184so3289175wme.2
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2016 04:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=OHKjt5u3H1V6LdUaUeqMUk2TgHks8jLUzmkNUoOzx8M=;
	b=EcoH2UQlLPS7WP9jp1V0NhdzA9srRtjOVccUALpxUMZ7xyv4Qs8Nm1iLuSiNph+Awt
	Pl/qVJd4r1MnNz2j6owJYLD/DdjCbQo8NWmXFN1YVSZyOkX/kQryu6l9Lu6qPjHjoZIu
	Rwu/SoZ3z8LGCYkT78wFZt9ZpA+2BS11jnSbPoWpUa8A6VO3TrOdSVqzV/mMDf1ltxpZ
	wWmE1dlTCpYF/oVDpW4ADoIn9ZhssCcG9PX+SQev6tqmBAVFhDvx0AaV1yQdtpVSMQaf
	Es8lC38WVF6UL+WCcpRc88ZDUKXPZqP/m0Uv/4fMsm+FVsVSy9wBi09yVVNdRHuulp5Y
	q2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=OHKjt5u3H1V6LdUaUeqMUk2TgHks8jLUzmkNUoOzx8M=;
	b=g4mBYuPBLCEfacm193D/Ecw0T2TE0CCB37gaP6e5LU97anRi62D+cZSXz6QAPnK8bF
	JqdzgbRpdYAdAx+JqTIFSkgGVS8OxvkJsa733ehjTl9AO0vjwN5mgp+f8UraV0cxBuiQ
	u/f8Lo4lBOOdAGWqQnpHSrwOaKB/dHLE+nEhid/xBZVSrShwhe3E3ZHAlGvODH6yo3eS
	Bh8skRndNbJZY68/vVQw+lY4UoQnALZnkQj8r8OrDh5RzjP3RuUTXSIxyNc/62dXMEK2
	5Rhh/SQ+ovFUP26VRofWlawdVmDMF09VuWylPsGGCMoKHtQbm0nkjFn+DM687anm8jsV
	3zhw==
X-Gm-Message-State: ALyK8tLql3DZbFQe73pf7FYzkq3Jn7Er5jK9lVFrYRrsG6n1HmDoaFWFpvH8hFrb5irDwA==
X-Received: by 10.194.118.233 with SMTP id kp9mr6219413wjb.51.1466248009479;
	Sat, 18 Jun 2016 04:06:49 -0700 (PDT)
Received: from dev-jessie.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net. [86.27.96.131])
	by smtp.gmail.com with ESMTPSA id
	u71sm3201406wmu.13.2016.06.18.04.06.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 18 Jun 2016 04:06:48 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Sat, 18 Jun 2016 12:07:02 +0100
Message-Id: <1466248026-4838-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][PATCH V3 0/4] Drop rpi-mkimage and use upstream u-boot
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
X-List-Received-Date: Sat, 18 Jun 2016 11:06:53 -0000

Following discussion on the Raspberry Pi tools bug tracker it was found that
rpi-mkimage is no longer needed with recent firmware. It can therefore be
dropped from the layer completely.

Whilst looking into this I also found that the u-boot-rpi recipe in
meta-raspberrypi can now be replaced by direct use of the mainline u-boot recipe
from oe-core. The 2016.03 release of u-boot supports the original Raspberry Pi
and the Raspberry Pi 2. Configuration of the u-boot environment to directly boot
the uImage file on the SD card must still be done manually - I'm going to look
into making this work by default in the near future.

Changes for V2:
    * Don't remove linux-raspberrypi 3.18 just yet
    * Drop move of PV setting out of linux-raspberrypi.inc

Changes for V3:
    * Rebase onto latest master

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
 recipes-kernel/linux/linux-raspberrypi.inc         | 20 -----------
 9 files changed, 25 insertions(+), 135 deletions(-)
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
 delete mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
 delete mode 100644 recipes-bsp/u-boot/u-boot-rpi_git.bb

-- 
2.1.4


