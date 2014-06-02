Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F00BE00B0B; Mon,  2 Jun 2014 03:04:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F977E009C1
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:04:34 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id z12so4872155wgg.12
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=bniye0m/tffAyMfcS9Zs6BT0Tc4xVoySLM8hdiLSnG0=;
	b=pJNI+gEmJ+mSNqO3Rp8UEqWjNpb94XRyfmxepAvZnOj8xRyWDei7c8+vIEKeq8z+Ru
	HHQTOkBJ3WzOS6H64aGvXokciBUftZUlYNeYFM0Cu392Hutj+7+spcOX1zSTpNICHFLf
	7qOq3lZIh8IRSAOCZhfaNI991dIpEgvImLsKDPFG4vdoNjQmZZssnx20xJpRs8ohWID8
	YJEnGjnAWz0lpAsLdoB6fQECTxT2ul36aJ+Y3ZcW3qtcAHu8tfB5DrFjtjuzhkwy+iTV
	nsk8j1MMwwqPEl4rr3LDYak4x7KqNhMy/+rh1czQvhnUlX/s+Mm5BjtyNraEqKU5oNYX
	frOg==
X-Received: by 10.180.11.37 with SMTP id n5mr20841510wib.41.1401703473670;
	Mon, 02 Jun 2014 03:04:33 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	kp5sm34175114wjb.30.2014.06.02.03.04.32 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Jun 2014 03:04:33 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, vaduva.jan.alexandru@gmail.com, andrei@gherzan.ro,
	gary@mlbassoc.com
Date: Mon,  2 Jun 2014 11:04:14 +0100
Message-Id: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
Subject: [meta-raspberrypi][PATCH 0/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:04:36 -0000

Please see following patch for details

Alex J Lennon (1):
  userland: Add '--no-as-needed' linker flag to ensure all specified
    shared libraries are linked against applications (e.g. raspivid)

 recipes-graphics/userland/userland_git.bb | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
2.0.0


