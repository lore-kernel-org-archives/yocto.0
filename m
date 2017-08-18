Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73FE5E00C37; Fri, 18 Aug 2017 12:35:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74B9E00726
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 12:35:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v7IJZMBe009494
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Aug 2017 12:35:22 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 18 Aug 2017 12:35:21 -0700
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Gunnar Andersson
	<gandersson@genivi.org>, <yocto@yoctoproject.org>
References: <1502739375.26251.126.camel@genivi.org>
	<f75c19c6-e128-5932-fd29-1d3cb92b539d@windriver.com>
	<1503067579.6972.4.camel@genivi.org>
	<7d9c1bc9-648f-d5af-508e-089682e702e0@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <74383aef-827f-44d8-630e-310e42f6667a@windriver.com>
Date: Fri, 18 Aug 2017 14:35:17 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <7d9c1bc9-648f-d5af-508e-089682e702e0@windriver.com>
Cc: "automotive-discussions@lists.linuxfoundation.org"
	<automotive-discussions@lists.linuxfoundation.org>
Subject: Re: Idea for bbappend / layer organization and naming convention
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
X-List-Received-Date: Fri, 18 Aug 2017 19:35:26 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/18/17 1:47 PM, Bruce Ashfield wrote:
> On 08/18/2017 10:46 AM, Gunnar Andersson wrote:
>>
>> On Mon, 2017-08-14 at 23:02 -0400, Bruce Ashfield wrote:
>>> On 2017-08-14 3:36 PM, Gunnar Andersson wrote:
>>>>
>>>> Yocto community,
>>>>
>>>> Triggered by the previous email request to yocto@ about best practices
>>>> for layer organization I'm finally firing off this email for (hopefully)
>>>> some feedback on an idea we first kicked around, discussed for rough
>>>> consensus and then decided to implement in the Yocto based GDP project
>>>> [1].  You can see it as a trial, anything can be changed, but so far so
>>>> good...
>>>>
>>>> We adopted a somewhat novel (but actually not really unique, see inside)
>>>> naming convention [2] for all modifications to components that belong to
>>>> other layers.
>>>>
>>>
>>> I've been using a similar naming/sorting mechanism in layers that
>>> I maintain for several years now.
>>
>> Great.  Is it similar, or /exactly/ like this?  I'm only asking because I
>> think it would be useful to have some written down rules and if there are
>> additional tweaks that will improve this proposal, I'd like to hear them.
>>

I suspect suggestions for best practices along with examples are what people
would like to see.  This may be reasonable to do with both the Yocto Project and
OpenEmbedded communities.

Obviously there are currently a large number of existing layers.  So showing how
this works, and examples of how it makes it easier to maintain and manage the
work over the longer term is a really good idea.

(Keep in mind, many of the current layers were originally designed/updated
before there was a large ecosystem of layers.  So a lot of poor examples, of
this kind of maintenance, may exist.  It is a good idea to steer people away
from using these as examples, and even a way to potentially help the maintainers
of those layers evolve into a better and more efficient format.)

--Mark

> Exactly. The layer name and recipe-* structure is nested in a layer
> that is carrying bbappends. That way there's zero confusion about where
> the main recipe can be found.
> 
> Bruce
> 
>> I suspected it might actually be somewhat of a common practice.
>>
>>> When you have a single layer that is carrying bbappends to many other
>>> layers, I find that it really helps keep everything separated and aids
>>> finding the original recipe.
>>
>> Yes, that is the idea.
>>
>>>
>>> (that being said, recent work with layer index, etc, make it
>>> easier to locate the original recipe and any bbappends .. but that
>>> doesn't preclude keeping things organized in a layer).
>>
>> ... but I didn't get any more feedback than yours, so I'll just leave it
>> where it is for now.  Maybe this is not something the other Yocto community
>> cares about, or similar practices are actually done in practice, but not
>> written down.  Or maybe everyone is OK with the state of mixing .bb and
>> .bbappend files within the layers...
>>
>> So far I think the initial experience on our side is positive.  It's
>> something that needs to be looked after a bit (we have a few mistakes to
>> fix).  But since some directories will only have .bb files, and others only
>> .bbappend files, it's therefore easy to script a warning system for anything
>> that is out of place.
>>
>> Best Regards
>> - Gunnar
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>> [trimmed]
>>
>>>> -- 
>>>> Gunnar Andersson <gandersson@genivi.org>
>>>> Development Lead
>>>> GENIVI Alliance
>>>>
>>>> [1] https://github.com/GENIVI/genivi-dev-platform
>>>> [2] Naming strategy for bitbake extension layers:			
>>>> https://at.projects.genivi.org/wiki/x/w4Xk
>>
>>
> 


