Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD24BE00988; Fri, 29 May 2015 11:41:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FEE7E0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 11:41:40 -0700 (PDT)
Received: by igbjd9 with SMTP id jd9so21237213igb.1
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 11:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=/TCn2wqAPDAOaYN5Ggd/s5UTdZ5t8hXT3tX1Kpz0+K8=;
	b=GqTmEb7uM94zC0tkY/t2SCHHjQA+NRJgsnMJgypwg7fEpRx47zFS5D2Ef1uXlzmwv+
	YpREJAyYYUKBsIkdBiXaf1y5yWC86KrWP/LCB2IMDwcS+wyB7telT5mhJQecdrfi7WM4
	2gKqfM3FwmZxTwGG41ypHop//HxWQPGC6R9NpTAHfyR4D4E3G5fjY9twZhU9izvsVVM5
	l/iQ6PgI1nRMyBjAk6on+DKqiyehtsrD/p6TBZot1VLaZiqQ4KAkQORYPVFcvvw9BWKK
	F9JnfrqEGtyk6aPz6aJkTssQbxWDjMy/6jtPnZN2rd5KepOCI0n8kFc0IyDGCbjY17Fw
	ZUWQ==
X-Received: by 10.50.178.230 with SMTP id db6mr5813917igc.26.1432924900301;
	Fri, 29 May 2015 11:41:40 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	d185sm4735146ioe.42.2015.05.29.11.41.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 11:41:39 -0700 (PDT)
Message-ID: <5568B2E1.2000507@gmail.com>
Date: Fri, 29 May 2015 14:41:37 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ed Sutter <ed.sutter@alcatel-lucent.com>, yocto@yoctoproject.org
References: <556629F2.20605@alcatel-lucent.com>
In-Reply-To: <556629F2.20605@alcatel-lucent.com>
Subject: Re: getting started...
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
X-List-Received-Date: Fri, 29 May 2015 18:41:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Ed,

On 05/27/15 16:32, Ed Sutter wrote:
> This year I have two ongoing iMX6 based linux projects, and may need
> to use a beaglebone
> or RPi for some other small project.
>
> The point of the above detail is that I'd like to backup a bit and
> attempt to use Yocto to
> organize all four of these with one instance of Yocto/Poky.  Is that
> practical?

Yes, that would be a great idea!Have a look at angstrom, for example:
http://www.angstrom-distribution.org. They build one distro for a whole
bunch of different machines. As such, they start with a whole bunch of
different layers, most of which are BSP layers, and then simply do:

$ MACHINE=<machine> bitbake <image>

e.g.

$ MACHINE=raspberrypi2 bitbake angstrom-image
$ MACHINE=beaglebone bitbake angstrom-image
...

and build the exact same image for a bunch of different boards/machines.

They've recently switched to using a repo manifest (which I think is a
great idea): https://github.com/Angstrom-distribution/angstrom-manifest

I've been playing around with doing essentially the same thing for a
"poky" distribution here (but it's still a work-in-progress and not
really ready for prime time yet): https://github.com/twoerner/layer-repos

>   Seems
> to me that is the ideal goal of Yocto, but I don't see many BSPs
> listed under the project
> downloads page.

Take a look here:
http://layers.openembedded.org/layerindex/branch/master/layers this is
the "master" list of all the "known" layers, recipes, etc. As you can
see, there are quite a few BSP layers.

Best regards,
    Trevor

