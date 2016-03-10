Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 192D9E00C92; Thu, 10 Mar 2016 01:43:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9C5AE00C28
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 01:43:13 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A4D5F68A01C; Thu, 10 Mar 2016 09:43:12 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5809968A019;
	Thu, 10 Mar 2016 09:43:12 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 18ED36740554;
	Thu, 10 Mar 2016 10:43:12 +0100 (CET)
To: yocto@yoctoproject.org
References: <56E12C5E.6030904@mlbassoc.com>
	<1457602551.4090.0.camel@linux.intel.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E141B0.8060102@mlbassoc.com>
Date: Thu, 10 Mar 2016 10:43:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1457602551.4090.0.camel@linux.intel.com>
Subject: Re: Long-term package revision maintenance
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
X-List-Received-Date: Thu, 10 Mar 2016 09:43:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-10 10:35, Joshua G Lock wrote:
> On Thu, 2016-03-10 at 09:12 +0100, Gary Thomas wrote:
>> I've been running local PR servers for my builds.  This works
>> quite well, as long as I don't touch my build trees.
>>
>> What's the best way to manage versions long-term?  i.e. if I
>> have a deployed system that I build today, but may not touch
>> for a long time (years?) and I might not want to keep my build
>> trees for that long.  If I just blow away the build tree, the
>> next time I build for that target, all of the version info will
>> be lost.  I'd like to be able to pick up where I left off.
>
> We have a bitbake-prserv-tool script:
>
> $ bitbake-prserv-tool
> Usage: bitbake-prserv-tool command
> Avaliable commands:
> 	export <file.conf>: export and lock down the AUTOPR values from
> the PR service into a file for release.
> 	import <file.conf>: import the AUTOPR values from the exported
> file into the PR service.
>
> I haven't used it but it certainly reads like what you want?
>

Did you miss all the questions I had about it (that you cut from the reply)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

