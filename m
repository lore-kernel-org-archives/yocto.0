Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE6EE00288
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:42:15 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so4161581vcb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=d88jJDsyV1dLMCmkC/gYQprv97uuOxcCzZ1HVBv5ng8=;
	b=KpqedpPpPLu0BT9dsLcpdIHBplRuvedzFJ9hsGzh9cyoPWiuHZSlNWkd6Z/KN4OITk
	O1aEDTE7G+cMsEDQ55xi8/cRAOPKfX3NlaCuCASuCmgKKz45TP2AjdwDHwOExFyArDzI
	CzsOL15YW0LiJ8bTIBKLWDtovkj4JErRGHrhB6AcNTFj+7mZfBM8O41vCp89XC3qPoS4
	pQ3xZqnXuaNyYNv1saDt5JkOdvYWGqOB5S0f35BbrcFu+nGS8XZM+eTHTLGgO4YkCBiZ
	pWRg6bm8d4G7+OuYYcZlWsDLTl04vRDlgrkp114qoRplbwT3oD8no3++DGJCEDIca0x/
	a3Kg==
Received: by 10.221.12.195 with SMTP id pj3mr5604671vcb.68.1342816934790;
	Fri, 20 Jul 2012 13:42:14 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id bj6sm3841072vdc.12.2012.07.20.13.42.13
	(version=SSLv3 cipher=OTHER); Fri, 20 Jul 2012 13:42:14 -0700 (PDT)
Message-ID: <5009C2A5.5050802@gmail.com>
Date: Fri, 20 Jul 2012 16:42:13 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
	<5009C119.3070801@gmail.com>
	<1342816760.2274.2.camel@trz-ThinkPad-T420>
In-Reply-To: <1342816760.2274.2.camel@trz-ThinkPad-T420>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: nothing building under denzil-7.0.1
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
X-List-Received-Date: Fri, 20 Jul 2012 20:42:15 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/20/2012 04:39 PM, Tom Zanussi wrote:
> On Fri, 2012-07-20 at 16:35 -0400, Jim Abernathy wrote:
>> On 07/20/2012 04:29 PM, Scott Garman wrote:
>>> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
>>>> There must be some basic thing I'm missing.  Nothing that I used to
>>>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
>>>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
>>>> you can run?
>>>>
>>>> I'd thought I'd check before I post a bunch of log files.
>>>>
>>>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
>>>> directory and untarred the 7.0 Intel BSPs.
>>>>
>>>> There must be a step I'm missing.  otherwise this would not have gotten
>>>> thru testing before deployment.
>>>>
>>>> Jim A
>>> Hi Jim,
>>>
>>> We need more specific information about the error(s) you're seeing.
>>> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there
>>> must be a step you've forgotten.
>>>
>>> For example, you are using the denzil branch of meta-intel, right?
>>>
>>> Scott
>>>
>> I think it maybe that old problem with the n450 SRCREC being blank in
>> the linux-yocto bbappend file.  Obviously that BSP didn't get fixed
>> before 7.0.1 was deployed.  I'll put in the ones I used to patch in and
>> see if it works.
>>
> I updated the n450 in both the denzil and master meta-intel branches,
> but the tarball still needs to be updated with that fix.
>
> Is this the problem you're seeing, or are there other problems you're
> seeing with this and/or the other meta-intel BSPs?
>
> Tom

I should know shortly. I patched the n450 like I did before. I forgot 
that BSP didn't get updated when denzil 7.0.1 came out. Duh!

If you have it fixed in Denzil and master branch, I'll test that as well.
>> Jim A
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


