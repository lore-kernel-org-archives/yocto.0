Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD59E011AC
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:41:52 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 17C332345D
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 14:58:43 +0100 (BST)
Message-ID: <4EA58743.10201@communistcode.co.uk>
Date: Mon, 24 Oct 2011 16:41:55 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4EA529F5.4010706@communistcode.co.uk>
	<4EA52BEF.8000100@communistcode.co.uk>
	<4EA58560.5060905@linux.intel.com>
In-Reply-To: <4EA58560.5060905@linux.intel.com>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Mon, 24 Oct 2011 15:41:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2011 16:33, Joshua Lock wrote:
>
> On 24/10/11 02:12, Jack Mitchell wrote:
>> On 24/10/2011 10:03, Jack Mitchell wrote:
>>> I am trying to use the new eclipse plugin, which I have had working
>>> fine for the past couple of weeks until I switched from the master
>>> branch to edison.
>>>
>>> I performed a fresh build using the stable edison branch, installed
>>> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto
>>> eclipse environment I receive the following error:
>>>
>>> Yocto Preferences Configuration Error!
>>> OECORE related items are not found in envrionement setup files.
>>> The ADT version you're using is too old.
>>> Please upgrade to our latest ADT Version!
>>>
>>> This pops up in a message box, not the eclipse console. I have
>>> followed the ADT Setup guide to the letter and it's not playing ball -
>>> could someone confirm this as working or point me towards a reason why
>>> I may be getting this error?
>>>
>>> Cheers,
>>> Jack.
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> This is a pastebin of my current environment setup file:
>>
>> http://pastebin.com/4vnWPAD2
>>
> I'm not ADT expert but I expect the problem is this line:
>
> export OECORE_DISTRO_VERSION="1.1+snapshot-20111021"
>
> By switching to the edison branch you'll now have a DISTRO_VERSION of
> "1.1", without the snapshot and date - hence version mismatch.
>
> I'm not sure if you need to change the plugin or just build a new
> meta-ide-support, though.
>
> Cheers,
> Joshua

Ah, that makes sense Joshua. However, this is a fresh build directory 
created after I had checked out the edison tag, so due to me checking 
out a git 'tag' I have the snapshot tag version listed instead of the 
1.1 clean download version?

So all the things I built were built while on an edision checkout which 
means I shouldn't have old git versions lingering about.

Cheers,
Jack.

