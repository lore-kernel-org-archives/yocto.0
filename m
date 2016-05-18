Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD4FE00CFC; Wed, 18 May 2016 08:15:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7756CE00C39
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 08:15:56 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2625.sfr.fr (SMTP Server) with ESMTP id D06BD1C001421
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 17:15:55 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2625.sfr.fr (SMTP Server) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 17:15:54 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
In-Reply-To: <1463574082-126198-6-git-send-email-herve.jourdain@neuf.fr>
Date: Wed, 18 May 2016 17:15:48 +0200
Message-ID: <01a301d1b118$2c7aecc0$8570c640$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEtUi5bhiN/8kFfLyNrCwxIn2H/LwE7hK8zoP2u64A=
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
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
X-List-Received-Date: Wed, 18 May 2016 15:15:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi,

There has been a revision mismatch for the kernel version, in this patch.
It should be c317a023583b17a4350f066924d5fff47a81f91e, instead of
4c2795dd50f98fa162cb53190eb557be44f92f58.
Shall I resend the whole patch series as v2, or is it acceptable to only
send again the faulty patch as v2?

Herve

-----Original Message-----
From: Herve Jourdain [mailto:herve.jourdain@neuf.fr] 
Sent: mercredi 18 mai 2016 14:21
To: yocto@yoctoproject.org
Cc: Herve Jourdain <herve.jourdain@neuf.fr>
Subject: [yocto][meta-raspberrypi][PATCH 5/8] Support for vc4 graphics
driver: upgrade 4.4 kernel to 4.4.10

This patch series enables the support for the VC4 graphics driver from Eric
Anholt.
Kernel upgrade to 4.4.10 (some 4.4.9 version would be enough, but the
required firmware supports 4.4.10, so bump it anyway)

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 831ac5a..0bc6531 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.8"
+LINUX_VERSION ?= "4.4.10"
 
-SRCREV = "fe7ad6aa5c6940817fe971d80a7b2a1d6052190a"
+SRCREV = "4c2795dd50f98fa162cb53190eb557be44f92f58"
 SRC_URI =
"git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \  "
--
2.7.4


