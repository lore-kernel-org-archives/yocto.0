Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28249E009F3; Sat, 11 Feb 2017 17:48:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC1AE009D7
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 17:47:59 -0800 (PST)
Received: by mail-qk0-f175.google.com with SMTP id s140so70399902qke.0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 17:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=MHa0BzKnfwoCTjP/mvg4y0yjEgcvPy/VWmjpCPOuuwk=;
	b=QvA9h6NZhrsCH3qX9xq4Z8z7NsT0T7eLSjExNPoJiqP/J0K47OBsGMy8c8rdTtFbz+
	wd2mBFsLntJztEk2AFRTXx5XezWlkgiYndw2YRFDL7jJczXZHaAsiPHuzgK+V72+cxvh
	QII6aMSByyXvYSnPC6PKj2o/vese+Gb64pVD/HQfQfOKd8FnB/10IIYCRCVkHyOA9rNn
	jV4kywELeAnOF2DmUB32vbHfARU8qsPrRcxB4EqMbxl7ECZ7te2z35SY1wtFc0Ih0J8j
	yMy7o4+YHqDObhmqyt00fl9esCVcRBSly6Y4TG/RGLasBhNAKvC2UiKnb+jev7/vAtlC
	/U2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=MHa0BzKnfwoCTjP/mvg4y0yjEgcvPy/VWmjpCPOuuwk=;
	b=fk6YmpBV6VGCQ4PxRrNrX19/hZcMJWpd0M53Ssy8La3MZiawSZYCUnp3PkryPAIlw0
	MQ5CHMXCNbci+0T4uVZcuzYNE9JLqZ6Y1jywTyeM1pDDp6aSpwUDMSM0B5q04vxAgl8+
	WmtcWVKbpXo8EocEPNNH5qcosW6uaozipe+CiTTi30l74uI04sm+TzskZjWZMhKMDsO3
	SA9leuZBqTDC4sYKOUabGMcTfC8cLj5arlqKQuLEuf2Oue1bbpyS1l6m6qz/UtFLjKPM
	DE6ZeHVO8HtmLHhT+onymXWViYVW/e4CQjmavh5Sj5q1DoznbOVv/1viwSVrft7u5k7e
	9WNg==
X-Gm-Message-State: AMke39lBIrNfdgRXxZo8RQ4i58077J1lLfbZlKB/G5/MWkUS/ihooH/dZ78Ek9ItsowjVV47RyZWCDFrFl/79Q==
X-Received: by 10.55.103.200 with SMTP id b191mr14852642qkc.243.1486864078492; 
	Sat, 11 Feb 2017 17:47:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Sat, 11 Feb 2017 17:47:58 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Sat, 11 Feb 2017 23:47:58 -0200
Message-ID: <CAF3SDA7qoMq=ejqR9QCx7xCFk9kFg9MkJ6Lph4JUGQ0rrNj0WA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to make a recipe MACHINE specific?
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
X-List-Received-Date: Sun, 12 Feb 2017 01:48:00 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I have two machines and a recipe that uses MACHINE value to decide, at
compilation time, proper code to be used. The package (.rpm in my
case) ends up at tmp/deploy/rpm/cortex-arm-v6-hf-... folder.

I see at my tmp/deploy/rpm/ folder both of my machines folders aside
of cortex-arm-v6-hf-... folder. How can I make the package goes to the
specific machine that was used in build instead of the cortex-arm-...
one?

I'm asking this because I'm using the package feed area to populate a
rpm repository and I use smart package manager to do software update.
The overriding is making impossible for me to properly update this
package... :/

Regards
-- 
"Do or do not. There is no try"
  Yoda Master

