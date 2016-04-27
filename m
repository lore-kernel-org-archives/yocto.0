Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DC72E00D8E; Wed, 27 Apr 2016 05:22:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA91AE00D89
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 05:22:03 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A4E1468A01D; Wed, 27 Apr 2016 13:22:02 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 29FC368A01A;
	Wed, 27 Apr 2016 13:22:00 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id CDB096740363;
	Wed, 27 Apr 2016 14:21:59 +0200 (CEST)
To: yocto@yoctoproject.org
References: <5720A4B2.2060509@visionweeding.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5720AEE7.8050905@mlbassoc.com>
Date: Wed, 27 Apr 2016 14:21:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <5720A4B2.2060509@visionweeding.com>
Subject: Re: Manipulating code and Building in offline environment
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
X-List-Received-Date: Wed, 27 Apr 2016 12:22:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-04-27 13:38, Lars Larsen wrote:
> Hello
>
> I have 2 questions
>
> I have finally managed to build an image like I want it.
>
>
> I consists of a kernel.
>
> The ROS framework.
>
> And our proprietary software under git control
>
>
> What I want to achieve is the following:
>
> When online it should fetch the latest commit (or what ever branch/tag) from our git repo.
>
> It should be possible to take a laptop with a fresh checkout of all the software, go to the field where the is NO
> INTERNET access, and be able to patch our code on the spot ,and build fresh images, for the target.
>
> When online in our office environment all our own software is correctly checked out from our git repo. and build.
> Beautifully.....
>
> But when offline ( I disconnect the LAN ) I continually gets errors like “Failure expanding variable SRCPV” on our
> software modules.
>
> I have following in build/conf/local.conf
>
>
> BB_GENERATE_MIRROR_TARBALLS = "1"
>
> INHERIT += "own-mirrors"
>
> SOURCE_MIRROR_URL = "file://${DL_DIR}"
>
>
> and I experimented with BB_FETCH_PREMIRRORONLY = "1"
>
> with no appearent effect
>
>
> So question 1:
>
> How do I achieve the offline building. ?
>
> Is should be possible - right ?
>
>
> Question 2:
>
> Where in the tree is the checked out source code located, that bitbake compiles from.
>

I do this all the time successfully.

What is your target and what recipe(s) are having issues?

Note setting BB_NO_NETWORK = "1" in local.conf can help diagnose these issues


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

