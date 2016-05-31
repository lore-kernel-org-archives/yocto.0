Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36143E00DA0; Tue, 31 May 2016 04:59:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DF4E00D99
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 04:59:16 -0700 (PDT)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])
	by msfrf2632.sfr.fr (SMTP Server) with ESMTP id BC8341C001CA8;
	Tue, 31 May 2016 13:59:15 +0200 (CEST)
Received: from localhost.localdomain (LFbn-1-3582-159.w90-127.abo.wanadoo.fr
	[90.127.97.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2632.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 31 May 2016 13:59:15 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 19:58:58 +0800
Message-Id: <1464695939-115117-1-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] KERNEL_OUTPUT has been removed in kernel.bbclass
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
X-List-Received-Date: Tue, 31 May 2016 11:59:20 -0000

The following patch has removed the KERNEL_OUTPUT variable:
http://permalink.gmane.org/gmane.comp.handhelds.openembedded.core/80172
But meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi.inc does use it in
do_rpiboot_mkimage() and do_bundle_initramfs_append()!
Use the new KERNEL_OUTPUT_DIR variable, along with parsing the types from KERNEL_IMAGETYPES,
which is what the patch that removed KERNEL_OUTPUT is about

Herve Jourdain (1):
  linux-raspberrypi.inc: KERNEL_OUTPUT has been removed in
    kernel.bbclass

 recipes-kernel/linux/linux-raspberrypi.inc | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

-- 
2.7.4


