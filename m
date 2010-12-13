Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3499C4C80048
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 12:01:51 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDI1n5t014527;
	Mon, 13 Dec 2010 10:01:49 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 10:01:49 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 10:01:49 -0800
Message-ID: <4D065F8C.4050102@windriver.com>
Date: Mon, 13 Dec 2010 13:01:48 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <33AB447FBD802F4E932063B962385B35318F541B@shsmsx501.ccr.corp.intel.com>
	<4D064E22.8060003@intel.com>
In-Reply-To: <4D064E22.8060003@intel.com>
X-OriginalArrivalTime: 13 Dec 2010 18:01:49.0552 (UTC)
	FILETIME=[D0771F00:01CB9AEF]
Cc: yocto@yoctoproject.org
Subject: Re: Bug Verify
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
X-List-Received-Date: Mon, 13 Dec 2010 18:01:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-13 11:47 AM, Scott Garman wrote:
> On 12/13/2010 01:20 AM, Yu, Ke wrote:
>> Hi,
>>
>> I hate to raise this question, but there is still bunch of bugs that
>> is fixed but not verified. According to the process, it is reporter's
>> responsibility to verify the bug, so could I ask the reporter's help
>> on this? Process is sometime tedious but helpful to quality
>> assurance. Thanks a lot for your effort.
>
> I have now verified all my bugs.
>
> However, the process doesn't seem right to me. As the person who fixed
> the bug, presumably I performed verification that my fix actually works,
> which is why I marked the bug as fixed to begin with.
>
> At every other company I've been with, bug verification is performed by
> the QA team - and I think the purpose of it is to ensure someone other
> than the developer who fixed the bug can independently verify the bug is
> indeed resolved. A second pair of eyes can spot new problems more easily.

I'd second Scott's opinion here. I wasn't marking my bugs
as verified, since as a submitter, I've never had to do
this in 10+ years in the 'biz'.

Cheers,

Bruce

>
> JMO,
>
> Scott
>


