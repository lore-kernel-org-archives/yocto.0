Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C259CE0086F; Tue,  2 Dec 2014 12:33:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 598B4E00521
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 12:33:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sB2KXNXb027773
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 2 Dec 2014 12:33:23 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 2 Dec 2014 12:33:23 -0800
Message-ID: <547E21F0.7060307@windriver.com>
Date: Tue, 2 Dec 2014 15:32:48 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
	<634293792.2309525.1417529010302.JavaMail.yahoo@jws100116.mail.ne1.yahoo.com>
	<20141202193747.GC12784@mentor.com>
	<547E17B2.6090502@windriver.com>
	<20141202201724.GE12784@mentor.com>
In-Reply-To: <20141202201724.GE12784@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add some recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 20:33:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-12-02 03:17 PM, Joe MacDonald wrote:
> [Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:49) Bruce Ashfield wrote:
>
>> On 14-12-02 02:37 PM, Joe MacDonald wrote:
>>> [Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:03) Alexandru Vaduva wrote:
>>>
>>>> Hello Bian,
>>>>
>>>> Did you know that the multipath tools recipe was also available inside the
>>>> meta-oe and meta-virtualization?
>>>> I do not have any problems with it being available in meta-cgl.  I just wanted
>>>> to hear other opinions because I would like to make sure we do not get to that
>>>> point where we keep various versions of various recipes in a variety of places.
>>>> It will be a nightmare to work with them in the future.
>>>
>>> I completely agree, and I that's mostly the consensus of the community.
>>> Since meta-cgl already has dependencies on both meta-virtualization and
>>> meta-oe, I think it makes the most sense to try to keep updates for the
>>> multipath recipes in one or both of those layers.  My recommendation
>>> would be to update the meta-oe one as it has broader applicability, but
>>> of course that's up to the submitter and the layer maintainers to
>>> decide.  It may be that it's appropriate to maintain a bbappend for the
>>> recipe in meta-cgl, but I think it'd be good to send it for inclusion in
>>> meta-oe first.
>>
>> I'm with Joe on this one.
>>
>> I only did a really quick check on the history of the two copies
>> that we have, but I see the meta-virt variant was added in January 2013
>> and what could be the first version in meta-oe in March the same year.
>
> I actually intended to say "update the meta-oe one as it has broader
> applicability and if you're feeling ambitious, send the same update to
> meta-virtualization" since I thought meta-virt didn't have dependencies
> on meta-oe and I can see an argument in favour of keeping a separate
> recipe if you're keeping the layer contained.  But it looks like that's
> not the case, so consolidation makes sense here.

Yep, there are dependencies on meta-oe where it makes sense, or if
there's a package in meta-virt that isn't particularly twitchy about
versions and update cadence.

>
>> The layer index may not have been as helpful back then (but honestly
>> I can't recall) .. either way we failed to coordinate as a wider community
>> and managed to end up with two different recipes in the layers.
>>
>> There's no sense making this any worse than it already is, so I'd say
>> that we could spend the time looking at the two (three?) recipes, and
>> get a consolidated variant in meta-oe, and I'd be happy to drop the
>> one in meta-virtualization and bbappend the same way that Joe suggests.
>>
>> Thoughts ? We should figure out if someone is going to take a crack
>> at it, so we don't all go do the same thing :)
>
> It's not on my to-do list, so don't worry about me running in parallel.
> iscsi was (and is again) the only meta-networking one and libcap-ng (as
> discussed with Armin the other day) and swig are the meta-selinux ones.
>

Sounds good.

Bruce

> -J.
>
>>
>> Bruce
>>
>>
>>
>>>
>>> Just my thoughts on it.
>>> -J.
>>>
>>>> Once again, just to make it clear. I am ok with the patches, I will merge all
>>>> three of them (corosync, multipath and drbd) but I just wanted to make sure you
>>>> took this into consideration.
>>>> Also I like the idea of having drbd recipe inside and the fact that you like to
>>>> get involved in this initiative.
>>>> Hope to hear more from you and also that I will be able to help more.
>>>>
>>>>
>>>> Alex Vaduva
>>>>
>>>>
>>>> On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng <biannm@cn.fujitsu.com>
>>>> wrote:
>>>>
>>>>
>>>> Bian Naimeng (2):
>>>>    [meta-cgl] device-mapper-multipath: add recipe
>>>>    [meta-cgl]drbd: add recipe
>>>>
>>>> .../device-mapper-multipath/multipathd.init.patch  | 12 +++++
>>>> .../device-mapper-multipath_0.5.0.bb              | 53 ++++++++++++++++++++
>>>> meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
>>>> meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb    | 57 ++++++++++++++++++++++
>>>> 4 files changed, 134 insertions(+)
>>>> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/
>>>> device-mapper-multipath/multipathd.init.patch
>>>> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/
>>>> device-mapper-multipath_0.5.0.bb
>>>> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
>>>> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
>>>>
>>>> --
>>>> 1.9.1
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>>
>>
>


