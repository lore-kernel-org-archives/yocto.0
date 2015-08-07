Return-Path: <ac.rossi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC72BE009F8; Fri,  7 Aug 2015 07:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ac.rossi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C8AE006CD
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 07:28:52 -0700 (PDT)
Received: by pawu10 with SMTP id u10so90046097paw.1
	for <yocto@yoctoproject.org>; Fri, 07 Aug 2015 07:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OBNgeuTHga4Wnrg1YGucdjQj6ewuIrJOv0awadsEg9s=;
	b=mP3uFOHOfvUYej0WSv8jW/xEfXnqZnR1eqmO4wXPqdNaIaX9iYcWK3Sv/U/YUhp4cY
	EUIHV5D6kTfh2OWhenR1Xzr2cnG/ymhvNI5xZScEt0F4BDiLiezT0qaxw3CeS/r+vgMI
	Oop5TxsdIQ6bd6NJ7fZ8tS98ei5hhg7EO8J3Iu93IHsSpI4yrMonxXPebuwt+4WAH7Dg
	p/EinwrgM1MO3mYzTxhOuODaVAMpiRhYhK01r4Sic0lK0PNd11OtHS9j5s1+iIUTQazh
	RstbrNEAn90MGw7O1BjXYWVExKb3XPVqo5XdXbZhObdM3XruEVg+50icEOm7h2CAQdIE
	UzFA==
MIME-Version: 1.0
X-Received: by 10.69.1.7 with SMTP id bc7mr15485332pbd.154.1438957731933; Fri,
	07 Aug 2015 07:28:51 -0700 (PDT)
Received: by 10.70.61.101 with HTTP; Fri, 7 Aug 2015 07:28:51 -0700 (PDT)
Date: Fri, 7 Aug 2015 10:28:51 -0400
Message-ID: <CAPzboycMBBs_d+06jX+CWCZ_9yaxvEbPOBzQrxDu6i3cEOgsLA@mail.gmail.com>
From: Adam Rossi <ac.rossi@gmail.com>
To: yocto@yoctoproject.org
Subject: autotools --prefix ignored?
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
X-List-Received-Date: Fri, 07 Aug 2015 14:28:53 -0000
Content-Type: text/plain; charset=UTF-8

Hi folks. I have tried a number of different ways to control the
installation location of an auto tools-based project. From the command
line I would run:

./bootstrap
./configure --prefix=/opt/myfolder
make
make install

In my recipe I tried a number of ways to keep the binary out of
/usr/bin, but none seem to work. Relevant parts of the recipe:

inherit autotools
EXTRA_OECONF = "--prefix=${D}/opt/myfolder"

The above is ignored, auto tools puts the results in /usr/bin

I also tried to override the do configure:

do_configure() {
        oe_runconf --prefix=${D}/opt/myfolder
}

But I get complaints that the configure script is not found. I realize
I am trying to swim upstream by controlling this location, but the
heart wants what the heart wants. Any ideas?

