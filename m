Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC540E00D74; Thu, 16 May 2019 01:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26CA1E00D59
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 01:02:29 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 454P6D0Scwz1n;
	Thu, 16 May 2019 10:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1557993748;
	bh=IRwpx79aAnqSEkE1oAhl8ItpX8ANzkB16NRscskgFKM=;
	h=From:To:Cc:Subject:Date:From;
	b=GnoOhUDMgLnFLsYFTzxQaBWzcK2kQ2yHnl1k5YfQIcd7KmwEW1wJr30sapPTkxoQa
	JMcFlN0MKbeF1bQ4TNk9Bxja9rkBJ3rfb/qO9rI6h5naRO9fPXsX98Dp/XP5L8OajJ
	ES6HUfW7z+JN22UP/TzkUTtTsw+HEmn2YlbheIO7A32QZCihMtfYX8OdLBukv8sKWn
	fCAmuTFd42W8RPZhMblbxJwXuACgW/MRIBXYYpHoOpN+Ma79fuZzTkLACTNdXO8uEz
	Loe+A+k9mRBFeSoxeZZIMI/dxrlzcuAE5YfNxijpmwALxekouiSWE/yiUIYmdt5weu
	QXxbNg4CGVA+SQGsSA0g/r3d1M8scu7n6j/caFGSuLszKIZt95E82F4zx5l0nxIevw
	v3/xGzNf12pfW8z2aRwi+q0J54jhErosdCbgxViCXlxHcIgDnvVDg9N8IAo7JkDKKR
	oUxn9QrAE3Vo+fT/xe+3mU4T3Ly2eTuDxenW9vtLATQYDHPxaODQKM7aTq8fp1z2vF
	RKmWnQpgy47iY2tnj6Y5/Kow0TKFIRsqfKHdxBctpQXbHeyWB6D5zgWa2chyXZp82c
	F9O5tD7ugUdDpLmiiZQPShAZ6xM3swM1HSs+WfOdNg/Uc41JegtC6/KSfk81HLtRB6
	0elbFnXxFfK9u83vOl31Zu1U=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Thu, 16 May 2019 11:02:27 +0300
Message-Id: <20190516080227.32265-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [yocto-docs][PATCH] ref-features.xml: Remove documentation for the removed irda feature
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
X-List-Received-Date: Thu, 16 May 2019 08:02:30 -0000

IrDA support was removed in upstream kernel 4.17,
and irda-utils as well as the feature are now also removed.

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 documentation/ref-manual/ref-features.xml | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index 7a3555d0b9..b057d2d040 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -76,8 +76,6 @@
                     </para></listitem>
                 <listitem><para><emphasis>ext2:</emphasis> Hardware HDD or Microdrive
                     </para></listitem>
-                <listitem><para><emphasis>irda:</emphasis> Hardware has IrDA support
-                    </para></listitem>
                 <listitem><para><emphasis>keyboard:</emphasis> Hardware has a keyboard
                     </para></listitem>
                 <listitem><para><emphasis>pcbios:</emphasis> Support for booting through BIOS
@@ -190,8 +188,6 @@
                     support.</para></listitem>
                 <listitem><para><emphasis>ipv6:</emphasis> Include IPv6 support.
                     </para></listitem>
-                <listitem><para><emphasis>irda:</emphasis> Include IrDA support.
-                    </para></listitem>
                 <listitem><para><emphasis>keyboard:</emphasis> Include keyboard
                     support (e.g. keymaps will be loaded during boot).
                     </para></listitem>
-- 
2.17.1


