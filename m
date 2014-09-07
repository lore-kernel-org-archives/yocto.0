Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8125FE007E4; Sun,  7 Sep 2014 01:51:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F393E003DB
	for <yocto@yoctoproject.org>; Sun,  7 Sep 2014 01:51:38 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id h18so1143190igc.4
	for <yocto@yoctoproject.org>; Sun, 07 Sep 2014 01:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=An1YIyIIRpiBhBFdUnHfkkabDZ++JhA1XD88WEj4CMk=;
	b=I70O2Mzt5x8umBpKDFuoMl82Wgrvq0sUDqV8/pniBfcwATYFTMhShVMIPv5v1lNJtt
	ZrEUiDgNoeEV+GKUn0S6p1snhOtjsjmIB2+lWVOruHIrE6Bsf7cAsCaWKn5U1t4DVQNx
	uXfjsPnQMwZMVn4EjkfoW30Z0kAh8s+dXRNWg0ll7G3zzVVhroRZwkbYmt4KnkBAJ6Nh
	tkVrreBktMrCmDEnoIV5XQXiSbq6vs2/rmRkdfeftEc+yuDBTtCFRq9cyPvR01PB2OCF
	PT4umyxE5FwSIAnLyaDJc7dfcGiOIho1Et3sUGfLED7dB2lo/iS9zkvD3FyTyJk/r1wx
	V1kQ==
MIME-Version: 1.0
X-Received: by 10.50.43.164 with SMTP id x4mr16511274igl.27.1410079897958;
	Sun, 07 Sep 2014 01:51:37 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Sun, 7 Sep 2014 01:51:37 -0700 (PDT)
Date: Sun, 7 Sep 2014 09:51:37 +0100
Message-ID: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Kernel features
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
X-List-Received-Date: Sun, 07 Sep 2014 08:51:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

Today I have spent quite a while trying to figure how KERNEL_FEATURES
works and why some of the things I pass in my configuration fragment
are not getting enabled.

It turned out that some of the options no longer existed and some had
been renamed.

The question is really why would this not get detected by
kernel_configcheck or any other step?

I'm guessing this might be the case of how kconfig works, perhaps...
So I wonder whether anyone have looked into how we could actually get
the feature dependency graph from kconfig to bitbake or at least some
sort of helper tool? Perhaps parsing kconfig manifests in Python would
be a starting point...

Cheers,
-- 
Ilya

