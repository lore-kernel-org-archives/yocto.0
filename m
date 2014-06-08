Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A399E00B9F; Sun,  8 Jun 2014 04:10:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37D33E00B88
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 04:10:23 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id u57so4653046wes.18
	for <yocto@yoctoproject.org>; Sun, 08 Jun 2014 04:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=sgcTQej0ZOlABw5Rm7yV34pKu7rNUdRCc4I6VA9lWCA=;
	b=WlgZdl1OTZtCY727LTKJAQJpLhTx9EMOmM/viqamm7fm2c+7TGbpHKVIftidhefd0h
	QTXO5BMhkP2mBHIPg12INYjOfX6PCytbGg1GFfYNQYpPZEDwW+od3nAOfxpu+n4iA+pV
	f6iWs3V77N5ZP6Yr44wIW4gtQ/2lx51/LFSUZtQ6kDegZdo1oB+JUpH1qQGh9GSqN6xU
	nAN/3POY2N3q0h2kjbqmWTB/CjmGWAJHoQxa4lDXlc7buUzEcH2T41pKIhIezeGZStT8
	DCMg2WQPOOHRj7B2OAf33yTs+bgt5A7E1mvKXSDvefcbdI6ebFvzt1vokVM/h7N7pg0d
	LUcw==
X-Received: by 10.180.14.168 with SMTP id q8mr22527863wic.47.1402225822810;
	Sun, 08 Jun 2014 04:10:22 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id gb6sm8320639wic.6.2014.06.08.04.10.21
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Jun 2014 04:10:22 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Sun,  8 Jun 2014 12:10:06 +0100
Message-Id: <cover.1402225565.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
Subject: [meta-raspberrypi][PATCH 0/1] linux-raspberrypi: Update kernel to 3.12.21
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
X-List-Received-Date: Sun, 08 Jun 2014 11:10:26 -0000

Please see following patch for details

Alex J Lennon (1):
  linux-raspberrypi: Update kernel to 3.12.21

 .../{linux-raspberrypi_3.12.18.bb => linux-raspberrypi_3.12.21.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.12.18.bb => linux-raspberrypi_3.12.21.bb} (77%)

-- 
2.0.0


