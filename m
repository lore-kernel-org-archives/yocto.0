Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23BB5E00CA0; Thu, 10 Mar 2016 05:51:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D00B0E00B45
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 05:51:20 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id F3FE068A01A; Thu, 10 Mar 2016 13:51:19 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7507868A019;
	Thu, 10 Mar 2016 13:51:19 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 1ECFE6740554;
	Thu, 10 Mar 2016 14:51:19 +0100 (CET)
To: Martin Jansa <martin.jansa@gmail.com>
References: <56E174E6.1050305@mlbassoc.com> <20160310135128.GH2573@jama>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E17BD7.1070503@mlbassoc.com>
Date: Thu, 10 Mar 2016 14:51:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160310135128.GH2573@jama>
Cc: yocto@yoctoproject.org
Subject: Re: Dualing downloads
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
X-List-Received-Date: Thu, 10 Mar 2016 13:51:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-10 14:51, Martin Jansa wrote:
> On Thu, Mar 10, 2016 at 02:21:42PM +0100, Gary Thomas wrote:
>> If I have a package X that depends on X-native and they build
>> from the same sources, doesn't the fetch step duplicate effort
>> if the sources need to be downloaded from scratch?  I just saw
>> this [appear to] happen and it's not clear if the sources were
>> downloaded once or twice.
>
> The first one should create the lock file and second fetch task should
> just reuse the already downloaded source.
>
> Otherwise sharing whole downloads directory between multiple builders
> wouldn't work as well.
>

That's great, thanks

>> I this is the case, perhaps if X depends on X-native then X.fetch
>> should depend on X-native.fetch so then download happens only once?
>> Or is that too hard to detect?
>>
>> For many packages (and fast network links) this probably isn't an
>> issue, but I could imagine some very large packages simply wasting
>> network bandwidth.
>>
>> Note: I'm happy if I'm wrong about this, it just jumped out at me.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

