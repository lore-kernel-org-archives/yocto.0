Return-Path: <lschwab@xeralux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8421EE00786; Mon,  8 Sep 2014 16:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yh0-f53.google.com (mail-yh0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC857E0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 16:08:28 -0700 (PDT)
Received: by mail-yh0-f53.google.com with SMTP id a41so9529728yho.26
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 16:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=D7F9SQ0YDPb3O5w720vch6SukmmhZkQogu8SqOM2/Ik=;
	b=htEwD4c6b/tr1Nap6Mce83cIy5qq5PpQErOHWbuyrl2PRT8oHpKRtLzU8EjpVd0FOx
	TpM7OOMjxZrnOsOOlqCD6+YGOxRAemfBPbkarpN2v0wcSIuICU5LbvkWB05VQJUHF03p
	mh7NBO8j8RgW77oNZzwu69LKMbub23iBdkoP0qYQEjBIacdWJ5icSBLpkA0vQ15Xnx9A
	pRGUULsB5Dg3yweWkditjE3jyxO3VcU9Yhe2c2u7WiMKDXWakdG4PjNx6ZWldQTys5kX
	usj5UDOBlEcixW/dovH0xZ+JPp4U9h3mIScWXybaVeG63lVSL1dNFbosInjbwIpa3Aac
	N0uw==
X-Gm-Message-State: ALoCoQn9DyuojI7Y4k7KBWEdRKz0Ng+igZw1E9+1vogxiYE+u5bb1M61Guh2z8ZPIV/nnMbeFMpv
MIME-Version: 1.0
X-Received: by 10.236.231.38 with SMTP id k36mr47178101yhq.75.1410217708057;
	Mon, 08 Sep 2014 16:08:28 -0700 (PDT)
Received: by 10.170.162.135 with HTTP; Mon, 8 Sep 2014 16:08:28 -0700 (PDT)
Date: Mon, 8 Sep 2014 16:08:28 -0700
Message-ID: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: yocto <yocto@yoctoproject.org>
Subject: Adding 'build-id' to Build Image
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
X-List-Received-Date: Mon, 08 Sep 2014 23:08:34 -0000
Content-Type: text/plain; charset=UTF-8

We'd like to have the system images we build to contain a build id, or
at least a pile of information inside the image itself that lets us
identify which build is being run/tested.  Indeed, the information
'bitbake' kicks out just as it starts a build is exactly the sort of
thing we'd like sitting in a file in the image somewhere.

I turned on the 'buildhistory' feature in conf/local.conf which, among
other things, generates a 'build-id' file.  However, it doesn't place
it in the image, but in an entirely separate directory hierarchy.

Surely this sort of thing has been done before.  Is there an existing
recipe I can use, or will I have to cobble together a custom recipe
out of buildhistory_get_layers() or get_layers_branch_rev()?

Thanks,
Schwab

