Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E10ABE00C60; Thu, 17 Mar 2016 21:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93248E00C55
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 21:06:00 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 7297568A01A; Fri, 18 Mar 2016 04:05:59 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2C81468A019;
	Fri, 18 Mar 2016 04:05:58 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9F6B467400A8;
	Fri, 18 Mar 2016 05:05:57 +0100 (CET)
To: yocto@yoctoproject.org
References: <047fa5bc428c39bbc544c1c36b918692@reliableembeddedsystems.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56EB7EA4.8020605@mlbassoc.com>
Date: Fri, 18 Mar 2016 05:05:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <047fa5bc428c39bbc544c1c36b918692@reliableembeddedsystems.com>
Subject: Re: use yocto toolchain as external toolchain
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
X-List-Received-Date: Fri, 18 Mar 2016 04:06:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/17/2016 12:40 PM, gmane@reliableembeddedsystems.com wrote:
> Hi,
>
> It may sound slightly crazy:) but can I use a toolchain, which was created by Poky as an external toolchain for Poky?
>
> What I am after is something like this:
>
> I create a multiplatfrom v7 compatible Yocto project, which spits out toolchain/rootfs/kernel/various device trees.[1]
>
> Now I need to build for each board a custom u-boot, something like [2][3],...
>
> Obviously [2] and [3] build again the toolchain. Would it be possible to reuse the toolchain built by [1] like an
> external toolchain to save some build time?
>
> Regards,
>
> Robert
>
>
> [1] https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.4.x/multi-v7-ml
> [2] https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.4.x/beagle-bone-black-multi-v7-ml
> [3] https://github.com/RobertBerger/meta-mainline/tree/jethro-training-v4.4.x/zedboard-multi-v7-ml

No need for an external toolchain.  Simply point builds [2] & [3]
to the sstate-cache from build [1].  This will allow sharing of
much of the build, certainly the toolchain, with the subsequent
builds.  Modify your local.conf to include these lines:
   # Reusable state information
   SSTATE_MIRRORS ?= "\
   file://.* file:///BUILD1/sstate-cache/PATH"
(of course set BUILD1 to the actual path of your build tree)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

