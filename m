Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF5F7E00B94; Sun,  8 Jun 2014 03:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D448EE00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 03:51:17 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hi2so731642wib.7
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 03:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=N3sp9kvr26zxsexniEeqFgo8kPo5HuuXS6rVpyEzCck=;
	b=R0ocmnGMWWGM/FyR/bJG8MgmRNobBhHVO7G0l5rZbYoPKJ+rvm4pBDgz+nk1eV8VLs
	LGmu0fuiGKcVJSyDmybTyxGd8ypJvalrTA++FbRfPcxBGOYUV2HW1a8J+rTBWRce/tyW
	tBNl3Jz2vjppGTyWb7aBm5Aesrev5yaXam6Jg/SlV5UId8iPQDvJ/2iO/G7eCZ5at0nX
	eDmIVItYoqXF46if0ge+myLpCFrYv8YFmI8W/AM0Hd2AJg8xJ3Iwbax5r/bLXCMPf9dO
	KUgehdqOp28fbI40JhJi3b9kH+v9zQ0fgwxe6LfcAKdTE9wm+vC+DczKgrKR5cUTttcG
	bcZQ==
X-Received: by 10.194.176.37 with SMTP id cf5mr3642175wjc.79.1402224675798;
	Sun, 08 Jun 2014 03:51:15 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id fg5sm8220938wib.17.2014.06.08.03.51.13
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Jun 2014 03:51:13 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Sun,  8 Jun 2014 11:50:38 +0100
Message-Id: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
Subject: [meta-raspberrypi][PATCH 0/1] gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.
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
X-List-Received-Date: Sun, 08 Jun 2014 10:51:19 -0000

Please see following patch for details

Alex J Lennon (1):
  gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.

 recipes-multimedia/gstreamer/gstreamer1.0-omx.inc            | 2 ++
 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend | 1 +
 2 files changed, 3 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend

-- 
2.0.0


