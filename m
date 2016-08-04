Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5029AE009A0; Thu,  4 Aug 2016 10:32:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECF2E009CA
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 10:32:26 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 6A2B468A01C; Thu,  4 Aug 2016 18:32:24 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1B45E68A019;
	Thu,  4 Aug 2016 18:32:24 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id AA02367402C9;
	Thu,  4 Aug 2016 19:32:23 +0200 (CEST)
To: yocto@yoctoproject.org
References: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
	<CAD4b0_Js_XrQSGLbzqbGO5ihN9x-LkdYBz7vM-BTEdeGfh-0hA@mail.gmail.com>
	<1470329247657.58080@seescan.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <e760618d-7be9-8351-6d57-557c27ae6357@mlbassoc.com>
Date: Thu, 4 Aug 2016 19:32:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1470329247657.58080@seescan.com>
Subject: Re: where to find license files?
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
X-List-Received-Date: Thu, 04 Aug 2016 17:32:28 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-08-04 18:47, Fred Ollinger wrote:
> I'm working on getting a list of license files and I don't know where to get the exact text of each license.
>
> Is there a place where this is provided by yocto?
>
> For example, is there some directory which has all the license files?
>
> I see there's an md5sum for each file so I assume this is the case.

After you build an image, look in <BUILD>/tmp/deploy/licenses/*

These are the exact licenses used by your image

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

