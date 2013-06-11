Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6580E01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 02:26:53 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 1059A68A01C; Tue, 11 Jun 2013 10:26:51 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id A5BFF68A019;
	Tue, 11 Jun 2013 10:26:49 +0100 (BST)
Message-ID: <51B6ED57.8010307@mlbassoc.com>
Date: Tue, 11 Jun 2013 10:26:47 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <CAPMJ7HqEvt4UWPC=648nQ=RwJDqrv0qmcfmEkaVggX4wCCZs3w@mail.gmail.com>
	<51B1BFDF.1010806@mlbassoc.com>
	<CAMKF1soLrkdRWc5CoUGDsRU9aHQickPnnnBRLK=DeU6E8wdW-Q@mail.gmail.com>
	<2513519.TnlYEDHE6H@helios> <20130611090708.GC3233@jama>
In-Reply-To: <20130611090708.GC3233@jama>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Distributing Compilation of Yocto
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
X-List-Received-Date: Tue, 11 Jun 2013 09:26:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-11 10:07, Martin Jansa wrote:
> On Tue, Jun 11, 2013 at 09:20:05AM +0100, Paul Eggleton wrote:
>> On Monday 10 June 2013 20:16:22 Khem Raj wrote:
>>> On Fri, Jun 7, 2013 at 4:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>> Looks interesting and I think I'd like to try it myself.  However, that
>>>> page has a reference to
>>>> http://bugs.openembedded.org/attachment.cgi?id=1032&action=view
>>>> which seems to be down at the moment (tested from both sides of the pond)
>>>
>>> OE bugzilla has been decommissioned long ago.
>>
>> In that case the "Using IceCC" page on the OE wiki [1] should not be linking
>> to it. Can someone who has actually used IceCC in conjunction with OE (or has
>> contact with someone who has) please update the page? Martin?
>
> We're not using create-icecc-env.sh script, I've updated the page how to
> use icecc service in ubuntu and removed old link.

I'm confused (sorry) - there are still references to that script on the Wiki page.
If you're not using the create-icecc-env.sh, how do you set it up and what does
ICECC_ENV_EXEC point to?

Also I assume based on the current page that your patch to icecc.bbclass is not
yet merged?

Thanks

>
>>
>> Thanks,
>> Paul
>>
>> [1] http://www.openembedded.org/wiki/Using_IceCC
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

