Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 469C2E013B7
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 03:42:28 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so171381wib.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 03:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=jWmV2ejOy0rUHcTNSzzPJg92Ap2XhLIycVuR5DrlVWM=;
	b=MTMjpFNr4ihEcp/Fyl8G/21hwQr7mvv/vFWWxQV6N/6yHC3dO8ipkEtfKCVMVwDPDP
	5kajhzKU8ArEJ5mTbPx36j7VGMGXbq29Ugr2Y7h8el0DCTwkigBuHI4R0fUYleNl+uWL
	KAn4FxOi0UaPz/CTIpxawz/vnwVo1QfKp/Zk880fl9ui7QArWmomSooEEDZv/iIbmatY
	mZVzoi2MvzPS+yX1SwAel9BBIumyO0EaG3eFQZnMC2dtimTA5ska21PsdjgU6p9SvIqj
	2ljgPRmkaln+OU/hHBZXQ7Qd3fdUM2qyx/4GEH2MwiBG2ojYtvY9XLmN5IcfyxL+IJd7
	7tqA==
Received: by 10.216.139.79 with SMTP id b57mr1074572wej.37.1336041747443;
	Thu, 03 May 2012 03:42:27 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id b3sm1375981wib.4.2012.05.03.03.42.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 03:42:26 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 12:42:24 +0200
Message-Id: <44738C6D-691F-4F6D-ACCC-11A51F9CE4B2@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Is it necessary to specify TARGET_ARM = "arm" ?
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
X-List-Received-Date: Thu, 03 May 2012 10:42:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      If in my overo.inc file, I specify the following:

SOC_FAMILY =3D "omap3"
require conf/machine/include/soc-family.inc

require conf/machine/include/omap3.inc
require conf/machine/include/tune-cortexa8.inc

Is it necessary to specify TARGET_ARCH =3D "arm"  for the machine =
configuration?

The machine configurations in the meta-ti repositories don't have them =
any more.

Best regards,

Elvis Dowson




