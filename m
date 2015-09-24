Return-Path: <ajcurtis@ac2enterprises.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3325AE00C70; Thu, 24 Sep 2015 16:18:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC44E006CD
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:18:04 -0700 (PDT)
Received: by oige134 with SMTP id e134so4240548oig.2
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:content-transfer-encoding
	:subject:message-id:date:to:mime-version;
	bh=3I7LnxBhdkc9gMku8WJAAJcecNWcvCdCavO1VrzcQKc=;
	b=Z0yBfdr+yha/rOwywx2pFIVQAuy1xMYyCmlVtyMGEmG2iCuAAkWTvE4UPl3G1mi4j6
	WZCBpxtMYh/Wif6D5EpVcpWih1fioN1VBMIKKQa/A5EfBZP3tW8x2/Y6y1BqqtmOmfK8
	RVYeNAOJEy77gsOWBnA2SgE5reUVxB1XS+OmPTdcqeEV8FONOjpu956y13dZFswCSB1Z
	mZcqE5A9IK2a1QBBU/O7tFFo+IBrfIM+CNL0QRPrFRuD54UEBOMNYOoCAQByqtVCYd2c
	jK2cLzewyhjJl/+HWLRmMKd1wpuRbf3k7Hrxn+soRkpsid9xgL0j64HQNcezXEWPh3lC
	LngA==
X-Gm-Message-State: ALoCoQkOoyeIGtewGb0x/GdOjZBeaNONhpkHoR80aIJ0pTswOtIQWe7Y1XBYLJu4/YpfLaiANrsM
X-Received: by 10.202.97.196 with SMTP id v187mr1324192oib.91.1443136683604;
	Thu, 24 Sep 2015 16:18:03 -0700 (PDT)
Received: from [192.168.0.6] (ip68-225-237-157.oc.oc.cox.net. [68.225.237.157])
	by smtp.gmail.com with ESMTPSA id yw8sm431794obb.29.2015.09.24.16.18.02
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 24 Sep 2015 16:18:02 -0700 (PDT)
From: Allen Curtis <ajcurtis@ac2enterprises.com>
Message-Id: <5551EDA3-4D20-44A0-BA06-DDC2AEC3B7AC@ac2enterprises.com>
Date: Thu, 24 Sep 2015 16:18:01 -0700
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
X-Mailer: Apple Mail (2.1510)
X-Mailman-Approved-At: Fri, 25 Sep 2015 08:23:22 -0700
Subject: bbappend a "required" bb file
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
X-List-Received-Date: Thu, 24 Sep 2015 23:18:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello,

I am working with a BSP that has multiple image recipes.

foo-hwbringup-image.bb
foo-qt5demo-image.bb

foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"

However if I create foo-hwbringup-image.bbappend, it gets ignored.

What are the rules with appending included recipes?

TIA


