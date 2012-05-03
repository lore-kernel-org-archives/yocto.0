Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5837BE00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 03:39:56 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so169678wib.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 03:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=7NMCdMBwhEiETC6IrcKqNWXm3/aUUVeKLTPXCAoNSCM=;
	b=d+NzugjBZTVyoQzdNVo/Uj7TtP78LUQyk0JzhQF9bcjDylqBUOZENNXdHMKepsEYM+
	2bu15KO6EeUav02VLqwXSb9fzmdwZ/waHZKoUXSAJ+rksOOe3t53PDlIu2qbbG2nZcjb
	92qljkzqR4t/3JmNvig31KigxeLYtLSFsosQTs6OP+l4T4fw3/CE8mVEpCP0LGvfbjj+
	JWQv+lXgDN32E3AyiFt/b4c/8LHTzmzPY0Jhx7BGBftxrPgAVq8CT5nisOAeWt56GerP
	1m5O7ewmaPmhxwfCnQOVK8tXCS48WKRhQIopE6Qq8C6cktPqd4UEflQ2A4BKCvTNYBC1
	9thw==
Received: by 10.180.103.35 with SMTP id ft3mr2126655wib.0.1336041595166;
	Thu, 03 May 2012 03:39:55 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id gd4sm2195196wib.6.2012.05.03.03.39.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 03:39:53 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 12:39:51 +0200
Message-Id: <BA52B53E-20CC-4598-B9C3-A0099FFB0CCB@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Is it correct to specify uboot in MACHINE_FEATURES?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 10:39:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      For my overo-fire-chestnut43.conf machine configuration, if I =
specify u-boot in the EXTRA_IMAGEDEPENDS as follows:

EXTRA_IMAGEDEPENDS =3D "u-boot x-load"

Is there any purpose served by specifying uboot in the MACHINE_FEATURES =
as follows ?

MACHINE_FEATURES =3D "kernel26 alsa apm usbgadget usbhost vfat ext2 =
screen touchscreen serial ethernet uboot"

Best regards,

Elvis Dowson


