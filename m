Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A92FE00BDF; Thu,  8 Jun 2017 05:10:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4BDBE00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 05:10:11 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 56D2468A01C; Thu,  8 Jun 2017 13:10:10 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id BCFC268A019;
	Thu,  8 Jun 2017 13:10:09 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4715267400FD;
	Thu,  8 Jun 2017 14:10:09 +0200 (CEST)
To: yocto@yoctoproject.org
References: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
	<CAJTo0LZysn_2MJO9ffhKBrweHC6i+cDnYn0unSqRB_P549D0cg@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <9abcba55-d1f5-c0a6-86f2-316367f419a7@mlbassoc.com>
Date: Thu, 8 Jun 2017 14:10:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZysn_2MJO9ffhKBrweHC6i+cDnYn0unSqRB_P549D0cg@mail.gmail.com>
Subject: Re: What's up with python3
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
X-List-Received-Date: Thu, 08 Jun 2017 12:10:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-06-08 13:52, Burton, Ross wrote:
> 
> On 8 June 2017 at 08:28, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     I've listed all the recipes used in my build (from bitbake -g => recipe-depends.dot)
>     and sucked out the ones that claim to depend on python3.  I don't see why, for
>     example, python(2) depends on python3?
> 
> 
> I'm 90% sure that this all comes through opkg-utils being the provider for update-alternatives.
> 
> You could verify this by disabling the python PACKAGECONFIG in opkg-utils.

I'm impressed!  That eliminated all of them :-)

What would I lose by do this, in general, as it's pretty obvious
that python3 is not needed by any of the recipes I use?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

