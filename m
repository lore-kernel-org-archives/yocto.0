Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98074E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:13:32 -0700 (PDT)
Received: by lagr15 with SMTP id r15so564881lag.35
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2012 10:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pOD5G/ToYsV2PDEUAUK60yTMbE86ERqwsNx7/BuF0sM=;
	b=F0+LSH5sE0wKbZ8FnWu+S3BxFLNMi5DODN5DKLFx9voZL2z3Msedr4nwdzGVc49iMR
	VaQq4LflQMmMUq+qwq+VC6Hj5KUzqWpNgpBE9xUJWhvld6fxa9uguWFInIfoczQnbcY5
	XToPQWUvYNiACiEBM7AWbz6BqKtTQt4sE6Q20dqjB1yTS8JQ8SyiwAOZm68BkVaXo5im
	mI+QGa0ZsXRq9sJSjtYfz1sDvplQBNQaHeBAOJGR5dwcF/H9ZXAGBqF2y8/GC2C/PIcq
	uZN6E0E7a48tF7KGySB6DZVuqGssIm08Tkr0H2YJVRgyiBS64tctclymGWyM+FZPkdrw
	YRmg==
MIME-Version: 1.0
Received: by 10.152.46.203 with SMTP id x11mr3474885lam.46.1346865211272; Wed,
	05 Sep 2012 10:13:31 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Wed, 5 Sep 2012 10:13:31 -0700 (PDT)
In-Reply-To: <50477015.7010603@communistcode.co.uk>
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
	<50472249.1010009@communistcode.co.uk>
	<CAHUNapQmyBhDVfCHD2H2JO1NmSN6atW1XO7uQr+sH-nGJKgiKg@mail.gmail.com>
	<50477015.7010603@communistcode.co.uk>
Date: Wed, 5 Sep 2012 13:13:31 -0400
Message-ID: <CAHUNapTnkzJtpfeXeqpTqB1yHd43gOwWFNpDnGZqQDU-fWPUUg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: ml@communistcode.co.uk
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building a Custom Raspberry Pi Image using OpenEmbedded and Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Sep 2012 17:13:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

I also found that I had to add:

    BB_DANGLINGAPPENDS_WARNONLY = "yes"

at the end of my conf/local.conf since I received a:

    ERROR: No recipes available for:
      /home/trevor/devel/yocto/raspi/poky/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend

the first time I tried baking (even when using the exact commits for
both poky and meta-raspberrypi as specified in the instructions).
Maybe it's just me?

