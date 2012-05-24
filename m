Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F1E9E013EC
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 09:59:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 May 2012 09:59:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147394390"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 24 May 2012 09:59:48 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.105.40])
	by linux.intel.com (Postfix) with ESMTP id D8E3E2C8001
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 09:59:48 -0700 (PDT)
Message-ID: <4FBE693C.7040506@linux.intel.com>
Date: Thu, 24 May 2012 20:00:44 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120420 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FBE4BD6.5060800@gmail.com>
	<CABcZANmZ1k3vpJJxKKGNYG-bbZ-YH2bS5Fej6O5E=Fg5aRkitA@mail.gmail.com>
	<4FBE5702.2090301@gmail.com>
	<CABcZANnO3p7AfG1a4cm=PLZv74=-F_zm1Z6=9CTG9yLDw4fONg@mail.gmail.com>
In-Reply-To: <CABcZANnO3p7AfG1a4cm=PLZv74=-F_zm1Z6=9CTG9yLDw4fONg@mail.gmail.com>
Subject: Re: checking out branches: tracking vs. tags
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 May 2012 16:59:49 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2012 07:32 PM, Chris Larson wrote:
> On Thu, May 24, 2012 at 8:42 AM, jfabernathy<jfabernathy@gmail.com>  wrote:
>> On 05/24/2012 11:21 AM, Chris Larson wrote:
>>>
>>> On Thu, May 24, 2012 at 7:55 AM, jfabernathy<jfabernathy@gmail.com>
>>>   wrote:
>>>>
>>>> the Development Manual Appendix A
>>>>
>>>> (http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#dev-manual-bsp-appendix),
>>>> I see the statement:
>>>>
>>>>   $ git checkout denzil-7.0 -b denzil
>>>>
>>>>
>>>> What I think this does is create me a local branch that is fixed to what
>>>> was
>>>> committed when the denzil-7.0 tag was created and it will remain that way
>>>> and will not track the denzil branch as it gets updated.  Right????
>>>>
>>>> Now if I want to track the denzil branch as changes are committed, I
>>>> think I
>>>> do the following.
>>>>
>>>>   $ git checkout origin/denzil -b denzil
>>>>
>>>>
>>>> Now I can do git pull commands to get the updates that are committed.
>>>> Right??
>>>
>>> Your arguments are backwards. See git help checkout.
>>
>> I looked at git help and man git, but it is still unclear because if I do
>> the first one where I checkout using the tag, I cannot git pull at all; I
>> get an error, about not enough information to merge.  However, if I use the
>> name of the branch I can now do git pull when changes are committed to
>> denzil.  That's why I thought I understood it.  But who knows.
>
> You're right, my mistake. Those commands are fine, and your
> understanding is largely correct. I highly recommend reading Pro Git
> for further information.

If you checkout the tag you get the source as it was when the tag was made, without being able to pull, as there's nothing new to be pulled (in detached head state, that's why you get an error). You may see it as a snapshot of the repository.
If you checkout the branch, you'll pull commits brought to that remote branch.
Bye,
-- 
Mihai Lindner

