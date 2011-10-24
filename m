Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BDCFE011AC
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 08:44:18 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id A567D2345D;
	Mon, 24 Oct 2011 15:01:09 +0100 (BST)
Message-ID: <4EA587D6.1090406@communistcode.co.uk>
Date: Mon, 24 Oct 2011 16:44:22 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 24 Oct 2011 15:44:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2011 16:42, Zhang, Jessica wrote:
> Hi Jack,
>
> So you mean you did "bitbake meta-ide-support" to use the build tree?
>
> I just tried with my Edison build tree mode on my laptop and it works fine. So can you check under your build/tmp directory, there should be an environment-setup-*-poky-linux file, where * is your target arch.  At the end file do you have several OECORE_* settings ? If not, you need to rerun "bitbake meta-ide-support" and ensure there're OECORE_* settings at the end.
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
> Sent: Monday, October 24, 2011 2:24 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Eclipse Plugin: ADT Version too old
>
> On 24/10/2011 10:18, Lu, Lianhao wrote:
>> Jack Mitchell wrote on 2011-10-24:
>>> I am trying to use the new eclipse plugin, which I have had working
>>> fine for the past couple of weeks until I switched from the master branch to edison.
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
>>> could someone confirm this as working or point me towards a reason why I may be getting this error?
>>>
>> Hi Jack,
>>
>> How did you install your ADT? You can check the ADT version by "cat" the file /opt/poky/${version}/version-xxxx, where xxxx is your target sys architecture.
>>
>> -Lianhao
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> Hi Lianhao,
>
> I am using the yocto build tree so I don't have an installed ADT in /opt
> but one that has been generated within my build directory, this is
> correct yes?
>
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Jessica,

I posted my environment settings earlier, which are located here: 
http://pastebin.com/4vnWPAD2

Yes, I did use bitbake meta-ide-support to build my root.

