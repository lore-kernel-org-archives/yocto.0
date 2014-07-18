Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA040E003FA; Fri, 18 Jul 2014 10:48:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F9CE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 10:48:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6IHmFGi025222
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Jul 2014 10:48:15 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 18 Jul 2014 10:48:15 -0700
Message-ID: <53C95DDA.5020400@windriver.com>
Date: Fri, 18 Jul 2014 13:48:10 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Enrique <microdevel@googlemail.com>, <yocto@yoctoproject.org>
References: <CAOB9jCJdQhUd4xq69psURj55-Dfzjt1xVOcx+w4=i6EzKx9cUg@mail.gmail.com>
In-Reply-To: <CAOB9jCJdQhUd4xq69psURj55-Dfzjt1xVOcx+w4=i6EzKx9cUg@mail.gmail.com>
Subject: Re: Best way to make use of kernel defconf for supported hw?
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
X-List-Received-Date: Fri, 18 Jul 2014 17:48:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-07-18 01:10 PM, Chris Enrique wrote:
> Hello,
>
> i need some advice:
>
> i have created a bsp for a board which is supported by the linux kernel.
> so my bsp doesn't focus on kernel patching or similar, just contains
> some other board specific content.
>
> how do i use the kernel defconf for this board which is located under
> arch/architecture/.../.../board_defconfig as kernel config in my bsp?
>
> i know there's several approaches. mine would have been to use defconfig
> and create a config fragment from it but somehow my mind tells me that
> there must be a better way?! just reference the board_defconfig file or sth?

The default configuration policies for the kernel classes require
the kernel defconfig to be in the SRC_URI, so you'd need to pull
it out of the kernel tree, put it in your layer and add it to the
SRC_URI.

If you just want to tweak a linux-yocto configuration, or tweak
that defconfig, you can add configuration fragments to the SRC_URI
as well.

To use the in-tree defconfig, you could always create a bbappend
to the base kernel recipe you are using, and arrange for that
in tree config to end up called "defconfig" in WORKDIR, and the
rest of the default processing would find and use it.

I have some tools that create kernel configuration fragments from
defconfigs, but if you are really just looking to get started and
set a baseline on something other than linux-yocto, the defconfig
is probably the best bet.

Bruce

>
> any help would be appreciated,
>
> chris
>
>


