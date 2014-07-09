Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6672CE0073C; Tue,  8 Jul 2014 22:53:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD684E00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 22:53:41 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id i13so6764659veh.29
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 22:53:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=s2kFMstvGdR82DWr5pOUo3yneg9RJI86vCmy++67EKo=;
	b=WbJQDR0guYIGORYT3eEP20wEJjYZdhkegO52fz42MXkFPdHdA0P+I+hBvfdBfWXTKs
	tgiXSj32jXKDkYBidAg46DB6E88M3aDE31tQML0TseP39OxhMV/txdZ5AidKx73vXK0b
	mAkoQa7PjQW+GE2jEmoU+SmBL1IabEDrsWaerjPEhSm+H+nEz16JaY/rzJyygE8zQWuq
	a059CcQFuseVXcDt8B63h7ZP7EOBqILYPRjeOAG7lxjzc+3aHYiEh7kYlwbOEVYABVN2
	KDdg/Aidi4wa16BteBMf0yjl7OEumr+J4sCVDnvg2OZXd/dK2oXAbWCkBK/GHgOsQ3d7
	SSMA==
X-Gm-Message-State: ALoCoQmRdNUoNKPonS3N+hET4mR82WeSSIA5IAYLkXj3S7z1TDUdjq6pTDm5EDZLEDLklnWM3R+j
MIME-Version: 1.0
X-Received: by 10.58.188.199 with SMTP id gc7mr37876899vec.4.1404885220450;
	Tue, 08 Jul 2014 22:53:40 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Tue, 8 Jul 2014 22:53:40 -0700 (PDT)
Date: Wed, 9 Jul 2014 06:53:40 +0100
Message-ID: <CAPhnLPDFnmrgAG54aqTgNKPNyC9ewmY2DoX2NDqOqurJgStRLg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: yocto-1.5.3.rc1 now available
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
X-List-Received-Date: Wed, 09 Jul 2014 05:53:43 -0000
Content-Type: text/plain; charset=UTF-8

The first release candidate for 1.5.3 is now available at:

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.5.3.rc1

bitbake 3bb3f1823bdd46ab34577d43f1e39046a32bca77
eclipse-poky-juno 79cd3c6ff119526f3f85567253450d2e857afed0
eclipse-poky-kepler e2cc15b1549d197ab15073f52274401d0fd86686
meta-fsl-arm 5fdb620c09df11e70434092f675c891e0ba84108
meta-fsl-ppc 40465bac88ca28b554cff35346341d19552548bf
meta-intel 7203d4de60f69190b5eae308ed2d09edbc63ea1f
meta-minnow 9aa60d0eaf03fe30670acf581eaf7e57c76b5f99
meta-qt3 4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore 026d26e3b6c2f608cc03aa00fe1fb1ace9e070d8
poky dc743744d8e3a9caef577aeab6b7f51bc08ded17


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

