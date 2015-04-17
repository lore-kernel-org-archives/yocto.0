Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA7CE0086D; Fri, 17 Apr 2015 12:51:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 504 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Apr 2015 12:50:59 PDT
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC2DE007A0
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 12:50:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 2D1B260DA42
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 15:42:35 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Hb-uX6bjGHO0 for <yocto@yoctoproject.org>;
	Fri, 17 Apr 2015 15:42:34 -0400 (EDT)
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by mail.rogue-research.com (Postfix) with ESMTPSA id A7BB560DA3B
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 15:42:34 -0400 (EDT)
Received: by wgin8 with SMTP id n8so123299659wgi.0
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 12:42:33 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.181.13.16 with SMTP id eu16mr4282588wid.10.1429299753292;
	Fri, 17 Apr 2015 12:42:33 -0700 (PDT)
Received: by 10.194.24.97 with HTTP; Fri, 17 Apr 2015 12:42:33 -0700 (PDT)
Date: Fri, 17 Apr 2015 15:42:33 -0400
Message-ID: <CACgAsMcywJ-vWKqC5Sfm7r4mxdboqtKW-NqD32=24LkA3OuG1Q@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [daisy][powertop] powertop_2.5.bb, do_configure) failed with exit code '1'
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
X-List-Received-Date: Fri, 17 Apr 2015 19:51:03 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

This was not a problem on 1.6.2 then udpated and I'm unable to
configure powertop. I tried to erase sstate & tmp folder without
success.

The fix was to comment:
#LDFLAGS += "${EXTRA_LDFLAGS}"

in
poky/meta/recipes-kernel/powertop/powertop_2.5.bb


The logs show that the ${EXTRA_LDFLAGS} gets added during the configure?

Any thoughts on why?

I looks at commits from 1.6.2 to 1.6.3 and I don't see why this could happen.

Could it be a update on Ubuntu 14.04?

thx,

-KA

Here's the complete logs:

log.do_configure:
https://gist.github.com/kapare/971387ca3812c019a65f

