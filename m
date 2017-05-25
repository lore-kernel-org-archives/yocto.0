Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16B4FE00726; Wed, 24 May 2017 20:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40128E00524
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 20:33:16 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9E27468A01C; Thu, 25 May 2017 04:33:15 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 51CC368A019;
	Thu, 25 May 2017 04:33:13 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 043A167403FE;
	Thu, 25 May 2017 05:33:12 +0200 (CEST)
To: yocto@yoctoproject.org
References: <201bc784-23ea-c40d-beb4-511901b59157@mlbassoc.com>
	<CAJTo0LZaXqxUF=p4m5m6Ch6oWBc=N3+uHni-6ia3PrhDDmrykA@mail.gmail.com>
	<08842207-1f14-f53b-05d8-12ec4215f44b@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <0c2bbd43-e811-df76-9cd7-d3a90d88a486@mlbassoc.com>
Date: Thu, 25 May 2017 05:33:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <08842207-1f14-f53b-05d8-12ec4215f44b@mlbassoc.com>
Subject: Re: How to include libraries?
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
X-List-Received-Date: Thu, 25 May 2017 03:33:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-05-24 15:49, Gary Thomas wrote:
> On 2017-05-24 15:26, Burton, Ross wrote:
>>
>> On 24 May 2017 at 13:20, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>>
>>     I have an image which needs to include the libcups2 package from
>>     the cups recipe.  If I try adding this to my image recipe
>>        CORE_IMAGE_EXTRA_INSTALL_append = " libcups2"
>>     I get this error:
>>        ERROR: Required build target 'my-demo-image' has no buildable providers.
>>        Missing or unbuildable dependency chain was: ['my-demo-image', 'libcups2']
>>
>>     However, I can get it to build with this
>>        MACHINE_EXTRA_RRECOMMENDS_append = " libcups2"
>>
>>     What's the difference between these two approaches and why doesn't the first
>>     one work at all?
>>
>>
>> Does the latter actually work?  Recommends won't fail if the package doesn't exist, or is getting pulled in via 
>> another route.
>>
>> I've a feeling that you actually want the pre-renaming name here so try cups-lib.
> 
> Thanks, I'm rebuilding the image (after a Poky/master pull) and will let you know.
> 
> BTW, that would be awfully confusing to require cups-lib when building but my package
> manager (opkg) only knows about the [renamed] package libcups2.
> 

You were correct, using MACHINE_EXTRA_RRECOMMENDS didn't work, but explicitly
including cups-lib did.  Not very intuitive :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

