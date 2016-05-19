Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC8ACE00D73; Thu, 19 May 2016 00:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75510E00D47
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 00:43:54 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2606.sfr.fr (SMTP Server) with ESMTP id 5D37F1C002C05
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:43:53 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2606.sfr.fr (SMTP Server) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 09:43:51 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
References: <1463220952-67318-1-git-send-email-herve.jourdain@neuf.fr>
In-Reply-To: <1463220952-67318-1-git-send-email-herve.jourdain@neuf.fr>
Date: Thu, 19 May 2016 09:43:47 +0200
Message-ID: <025e01d1b1a2$305218c0$90f64a40$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIyJPNwEnlyfj66462JgTz5r8DBQp7++Z5Q
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH v2 0/1] Support for .dtbo files for dtb overlays, required by firmware after 2016/04/12
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
X-List-Received-Date: Thu, 19 May 2016 07:43:55 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi,

Sorry, it seems there has been some mismatch in my test setup...
So while .dtbo are required for 4.4.9+, there NOT to be used for 4.1.21 =
it
seems...
I will therefore send soon a v3 patchset, that will work fine for 4.4
(what's laid out here is needed for 4.4) without breaking overlay =
support
for 4.1.

Best regards,

Herv=E9

-----Original Message-----
From: Herve Jourdain [mailto:herve.jourdain@neuf.fr]=20
Sent: samedi 14 mai 2016 12:16
To: yocto@yoctoproject.org
Cc: Herve Jourdain <herve.jourdain@neuf.fr>
Subject: [yocto][meta-raspberrypi][PATCH v2 0/1] Support for .dtbo files =
for
dtb overlays, required by firmware after 2016/04/12

Please disregard v1, there was 1 patch missing for 4.4 kernel...

The firmware after 2016/04/12 () seems to have altered the behavior of
device tree loading on RaspberryPi: for overlays, it loads only .dtbo =
files,
not .dtb anymore.
Also, it does not check for -overlay extension, so the name of the =
overlay
that is placed in the "overlays" directory must be <overlay_name>.dtbo,
instead of <overlay_name>-overlay.dtb.

This patch tries to address this issue for 4.4 and 4.1 kernels.
It must be used in conjunction with another patch to
meta/recipes-kernel/linux-dtb.inc, which will allow the processing of =
.dtbo
files, instead of only .dtb.

.dtb are still used, but only for the "real" device trees (not the
overlays).

This is in line with the behavior of kernels 4.4.6+

Herve Jourdain (1):
  Support for .dtbo files for dtb overlays, required by firmware after
    2016/04/12

 classes/linux-raspberrypi-base.bbclass             |  4 +--
 classes/sdcard_image-rpi.bbclass                   |  6 ++--
 conf/machine/include/rpi-base.inc                  | 30 =
+++++++++----------
 .../0002-fix-dtbo-rules.patch                      | 35
++++++++++++++++++++++
 .../0001-fix-dtbo-rules.patch                      | 13 ++++++++
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  1 +
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 7 files changed, 70 insertions(+), 20 deletions(-)  create mode 100644
recipes-kernel/linux/linux-raspberrypi-4.1/0002-fix-dtbo-rules.patch
 create mode 100644
recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch

--
2.7.4


