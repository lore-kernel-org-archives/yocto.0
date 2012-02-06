Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A20E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 09:14:00 -0800 (PST)
Received: by qauh8 with SMTP id h8so4161286qau.14
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 09:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=1UrL6QYCfCiEXid9yawG0bxz2jE1vOadfFksRTjNn64=;
	b=Bz242XTUnat1GaKexJAVJyrwcNdbW8c0Yb41vLEvEtskOwRAe8y4J/mNMBRZHZow5C
	kzaggnzibl8Yg/9/4sJdrbyNJ7CqqHcCpSSA1dQ8y2uxr7nrl02+bgyozmV1qFcddw8E
	RxVZ2MANpARYAqEpqS0z0LCuNB4maA525gyN0=
Received: by 10.229.78.86 with SMTP id j22mr6844468qck.95.1328548439569;
	Mon, 06 Feb 2012 09:13:59 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	hi8sm34863703qab.3.2012.02.06.09.13.58 (version=SSLv3 cipher=OTHER);
	Mon, 06 Feb 2012 09:13:58 -0800 (PST)
Message-ID: <4F300A55.2060305@gmail.com>
Date: Mon, 06 Feb 2012 12:13:57 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4F2D4D12.3060500@gmail.com> <4F2ED655.5020808@linux.intel.com>
	<2779C8B7-F034-4F86-8BCF-0CC6374AD803@gmail.com>
	<4F2EE44C.7090809@linux.intel.com>
	<F23113B0-A013-4723-A4D9-09FC4FB5FA38@gmail.com>
	<4F2FF8F6.7060601@linux.intel.com>
In-Reply-To: <4F2FF8F6.7060601@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: HOW DO I - new one added for EMGD and Crownbay
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
X-List-Received-Date: Mon, 06 Feb 2012 17:14:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/06/2012 10:59 AM, Darren Hart wrote:
>
> On 02/06/2012 05:00 AM, James Abernathy wrote:
>> On Feb 5, 2012, at 3:19 PM, Darren Hart wrote:
>>
>>>
>>> On 02/05/2012 11:44 AM, James Abernathy wrote:
>>>> On Feb 5, 2012, at 2:19 PM, Darren Hart wrote:
>>>>
>>>>> On 02/04/2012 07:21 AM, jfabernathy wrote:
>>>>>> I just added and EMGD example to the How Do I in the wiki.
>>>>> Jim, really appreciate your work here. For those of us not
>>>>> following quite as closely, please provide links to the pages
>>>>> you update so we don't have to go hunting for them.
>>>>>
>>>> It's the How Do I link on the wiki page:
>>>>
>>>> https://wiki.yoctoproject.org/wiki/How_do_I
>>> I see. This Question heading seems a bit inconsistent with what you
>>> are actually doing. Step 1 of getting EMGD on Crownbay is adding
>>> alsa to MACHINE_FEATURES for a BSP called meta-mymachine?
>>>
>>> This appears to be just trying to get commercial codecs working
>>> with accelerated graphics.
>>>
>>> The reason I raise this, is that while it's good to have these
>>> sorts of "Tactical" guides, if we aren't careful they can dilute
>>> the documentation space and end up confusing users more than they
>>> help. The README for crownbay covers what is necessary to enable
>>> EMGD accelerated graphics. Please consider renaming the title to
>>> someting more consistent with what you're trying accomplish.
>>>
>> Look, I'm not a documentation expert or understand what the project
>> team is trying to accomplish with their documentation or wiki.  A
>> user on the mailing list asked me to summarize what I did to get all
>> the issues resolve related to media acceleration and decoder.  What I
>> put in  the How Do I was a summation of the questions and answers
>> that were in the email thread. I can just as easily email that user
>> the summary, if it's not appropriate for the wiki.
>>
> Please don't take the above as a criticism of the "How Do I" concept, as
> I said at first, I appreciate you doing it - I understand it takes some
> considerable additional time to publish it. The goal is clearly to make
> things easier for others when they attempt what you're doing. I saw
> something in there that might not fit the goal and raised it as a point
> of improvement, that's all.
>
>
>> Please feel free to edit what I put there or remove it.
> I've CC'd Scott R. to review and see if he might care to adjust things a
> bit. I certainly don't want to remove it :)
>
> --
> Darren
>
What I feel is missing from the standard documentation for EMGD v1.10 
integration into the Crownbay BSP is all the "other" stuff you need.  
The README file in the meta-crownbay includes exactly what is needed to 
integrate the EMGD v 1.10 driver.  But generally, after that users will 
have the next level of questions about how do I get video and audio 
media files to play correctly, or test 3D . This is technically not a 
driver integration question, but can be anticipated because you wouldn't 
care about integrating the EMGD driver unless you had media and 3D needs 
in your application/.

Just my thoughts.

Jim A

>> Jim A
>>
>>> -- Darren
>>>
>>>>> I'm interested to see what more was needed for EMGD and
>>>>> Crownbay than is already in the BSP README.
>>>>>
>>>>>> In my opinion, we need to think about breaking this one big
>>>>>> edit up into individual How Do I's.  It would simplify
>>>>>> editing and make getting to the individual How Do I's much
>>>>>> easier and quicker.
>>>>>>
>>>>>> I don't know how to do that, but I think it needs doing.
>>>>>>
>>>>>> Jim A
>>>>>>
>>>>>> _______________________________________________ yocto mailing
>>>>>> list yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>> -- Darren Hart Intel Open Source Technology Center Yocto
>>>>> Project - Linux Kernel
>>> -- Darren Hart Intel Open Source Technology Center Yocto Project -
>>> Linux Kernel


