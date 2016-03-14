Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D3CE00D5C; Mon, 14 Mar 2016 05:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72230E00D57
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 05:51:20 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 998EC68A01B; Mon, 14 Mar 2016 12:51:19 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id F1F8268A019;
	Mon, 14 Mar 2016 12:51:11 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9FBBF67400B3;
	Mon, 14 Mar 2016 13:51:11 +0100 (CET)
To: "Burton, Ross" <ross.burton@intel.com>
References: <56E6B182.1060505@mlbassoc.com>
	<CAJTo0LZYi3PK2KJC3vqrN2AVwMGSN=dVZZckWk_0XpNsvu9jeA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E6B3BF.7020307@mlbassoc.com>
Date: Mon, 14 Mar 2016 13:51:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZYi3PK2KJC3vqrN2AVwMGSN=dVZZckWk_0XpNsvu9jeA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange build dependency
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
X-List-Received-Date: Mon, 14 Mar 2016 12:51:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2016 01:46 PM, Burton, Ross wrote:
>
> On 14 March 2016 at 12:41, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     How can I find out what's going on here?
>
>
> bitbake-whatchanged is generally helpful here.  Do a build in one configuration, switch to the other, run
> bitbake-whatchanged.  It will identify the hashes that have changed and try and chase them down.
>
> That said perl is quite a deep recipe so rebuilding that will certainly bubble up the tree causing all sorts of rebuilds.

Thanks, I'll give this a try.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

