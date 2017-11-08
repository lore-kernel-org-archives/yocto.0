Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 889CBE00D51; Wed,  8 Nov 2017 11:30:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC405E00D4D
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 11:30:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vA8JUl7K022162
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Nov 2017 11:30:47 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.231) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 8 Nov 2017 11:30:46 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1510093646.git.amanda.r.brindle@intel.com>
	<1736558.4YOozJbAai@peggleto-mobl.ger.corp.intel.com>
	<ddc7ec5b-62bc-afbd-fa1d-ddef31b72a0d@windriver.com>
	<1664393.zSGbuEELsx@peggleto-mobl.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <1c894b20-0cca-812e-8727-ef771bf6ffec@windriver.com>
Date: Wed, 8 Nov 2017 13:30:45 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1664393.zSGbuEELsx@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: Re: [layerindex-web][patch v3 1/1] recipes.html: Require keyword for recipe search
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
X-List-Received-Date: Wed, 08 Nov 2017 19:30:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/8/17 1:08 PM, Paul Eggleton wrote:
> On Thursday, 9 November 2017 4:42:50 AM NZDT Mark Hatle wrote:
>> On 11/7/17 8:43 PM, Paul Eggleton wrote:
>>> On Wednesday, 8 November 2017 11:47:49 AM NZDT Mark Hatle wrote:
>>>> On 11/7/17 4:31 PM, Amanda Brindle wrote:
>>>>> Use JavaScript to check if the search box for recipe search is
>>>>> empty before querying the database. This will prevent the "502
>>>>> Bad Gateway" error that occurs when the query takes too long due
>>>>> to the large list of recipes. Since there are so many recipes
>>>>> spread across the layers in the OE index, there's no point in
>>>>> allowing a user to search without a keyword in order to browse
>>>>> the list; it simply isn't digestible as a whole.
>>>>>
>>>>> Add a browse button for the Machines, Classes, and Distros pages.
>>>>
>>>> There are reasons to view all of the recipes, machines, classes, distros,
>>>> etc. (Not necessarily good reasons, but I know people do it.)
>>>>
>>>> If the query is too long, it would be better to figure out a way to get a
>>>> partial response and formulate the first page based on partial
>>>> responses... having a multipage response that the user can look at.
>>>
>>> I'm willing to be proven wrong, but unfortunately it looks to me like this 
>>> will require major re-engineering to sort out for a fairly weak use case.
>>> If you consider this important, would you be able to look into making it
>>> work?
>>
>> I suspect much of the display engine probably needs a rework as the contents
>> of the layer index have grown.  I can't promise anything, but I'll see if I
>> can find anyone who can work on it.
> 
> Could be yes, thanks.
> 
>> For recipes, the use-case is very weak.  I have talked with people though
>> who have just wanted a list of what is available (one big list).  Primarily
>> so they can compare what is available to some magic spec sheet they are
>> looking at.
> 
> If that's the use case though we should provide a proper export capability, 
> because comparing big lists manually 50 items at a time isn't how you'd best 
> support that. Theoretically the API could be used there but an explicit export 
> function would be more accessible.

For my own uses, I export this using the restapi.  So it can certainly be
exported easily enough and processed externally.  (Of course, few people know
about the restapi or how to use it.)

>> For the Machines, Distros pages..  people do want a full list here, as they
>> simply won't know what is available or what something is called.  The scope
>> of the machines and distros of course is nowhere near the scope for the full
>> recipe list.
> 
> Right, and this patch doesn't remove the ability to browse those - in fact it 
> makes it easier to do so by adding an explicit browse button, so I think we're 
> OK there.

I misunderstood that.  I though the machine/distro would be restricted like recipes.

> Cheers,
> Paul
> 


