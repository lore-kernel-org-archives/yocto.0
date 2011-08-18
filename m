Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB1DAE011B7
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 06:33:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7IDXKHN027146
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Aug 2011 06:33:20 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 18 Aug 2011 06:33:19 -0700
Message-ID: <4E4D149D.60704@windriver.com>
Date: Thu, 18 Aug 2011 09:33:17 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E4C85B8.3000301@linux.intel.com> <4E4C90F2.7040904@windriver.com>
	<4E4C97B3.1060308@windriver.com> <4E4CA3B0.8070607@linux.intel.com>
In-Reply-To: <4E4CA3B0.8070607@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Thu, 18 Aug 2011 13:33:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-18 01:31 AM, Darren Hart wrote:
>
>
> On 08/17/2011 09:40 PM, Bruce Ashfield wrote:
>> On 11-08-18 12:11 AM, Bruce Ashfield wrote:
>>> On 11-08-17 11:23 PM, Darren Hart wrote:
>>>> We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
>>>> with messages like:
>>>>
>>>> NOTE: preferred version 3.0+git% of linux-yocto not available (for item
>>>> virtual/kernel)
>>>>
>>>> I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
>>>> just released and I'd have to do it again tomorrow. For 2.6.37, the
>
> and 3.0.3 is out...
>
>>>> LINUX_VERSION remained the same across point releases. I recommend we do
>>>> the same for 3.0. I really don't want to have to go through and update
>>>> all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
>>>> point release comes out.
>>>
>>> I made this change due to some other explicit requests about the
>>> kernel version not being obvious. I don't really see this as a big
>>> deal, I'm already updating SRCREVs, we are already updating the
>>> SRCREVs in the meta-* layers .. so I fail to see how this is much
>>> more load.
>
> Don't forget the -rt variant, it is still at 3.0.
>
>>> I'd argue that 2.6.37 was a mistake, and you shouldn't even need
>>> to set the preferred version anymore once the latest kernel works
>>> for your machines. It will always be selected and you shouldn't
>>> need to force it. We only needed this during the transition phase,
>>> and I'm about to change the default in meta-yocto .. so you definitely
>>> won't need it.
>>
>> Another thought on this is that we follow up on the discussion that
>> we had when I first had to force some boards back to 2.6.37. We drop
>> all the preferred version manipulations and control this via
>> DEFAULT_PREFERENCE.
>>
>> I can just set DEFAULT_PREFERENCE = -1 in the linux-yocto_<ver>.bb
>> file, and as machines are tested/validated, they'll just set
>> the DEFAULT_PREFERENCE_$MACHINE in their recipe/bbappend file. That
>> saves us all the PREFERRED version fun.
>
> It makes a lot more sense to me to specify the kernel to use in the
> machine config and not allow whatever recipe claim DEFAULT_PREFERENCE
> for the machines.
>
>>
>> Alternatively, we go back to just setting it to 3.0 and leaving it
>> there and those folks that don't want to check the tags in the kernel
>> I can put a comment in the recipe that lets them know the true
>> version.
>
> It is a bit odd to have to specify a version that doesn't match the
> filename itself. But I guess we already have to do that in part with the
> "+git%" thing. What is the "%" by the way - is it a wildcard? If so, can
> we use a wildcard to include point releases?

It is a wildcard .. I tried briefly to get it to match the point
release. I had the same problem here, and didn't get the right
combination to match the point release. I'll look at it more today
as well .. or if someone knows the matching semantics off the top
of their head, feel free to speak up! :)

Bruce

>
>


