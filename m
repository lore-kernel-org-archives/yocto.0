Return-Path: <yocto@gustad.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B953E00930; Thu, 18 Dec 2014 07:42:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gustad.com (gustad.com [94.23.222.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24335E00837
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 07:42:41 -0800 (PST)
Received: from filestore.home.gustad.com (c28823E56.dhcp.as2116.net
	[86.62.130.40]) by gustad.com (Postfix) with ESMTPA id AAA7B5802DE;
	Thu, 18 Dec 2014 16:51:07 +0100 (CET)
Received: from localhost (filestore.home.gustad.com [172.30.30.252])
	by filestore.home.gustad.com (Postfix) with ESMTP id E363E11A0E22;
	Thu, 18 Dec 2014 16:42:39 +0100 (CET)
Date: Thu, 18 Dec 2014 16:42:39 +0100 (CET)
Message-Id: <20141218.164239.741521888848437712.petter@gustad.com>
To: maciej.borzecki@open-rnd.pl
From: Petter Gustad <yocto@gustad.com>
In-Reply-To: <20141218091228.GA10057@localhost.localdomain>
References: <20141218.082256.838554820950505606.petter@gustad.com>
	<20141218091228.GA10057@localhost.localdomain>
X-Mailer: Mew version 6.5 on Emacs 24.3 / Mule 6.0 (HANACHIRUSATO)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Image will halt soon after boot
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
X-List-Received-Date: Thu, 18 Dec 2014 15:42:47 -0000
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Subject: Re: [yocto] [meta-raspberrypi] Image will halt soon after boot
Date: Thu, 18 Dec 2014 10:12:28 +0100

> Have you seen the same on 1.7 or current master? I'm using a number of
> Yocto built images (sone on 1.7.x, other mostly follow poky +
> meta-raspberrypi master branches) and things seem to work just fine.

Thanks! I just tried the master branch as given below and it works
fine. I will switch to a more recent release. However, I can't seem to
find a dizzy branch in meta-raspberrypi?

Best regards
//Petter

meta-yocto-bsp    = "master:8657c2fd57600e0b0eaf2a14692de7453c78e1bb"
meta-raspberrypi.git = "master:6c6f44136f7e1c97bc45be118a48bd9b1fef1072"

