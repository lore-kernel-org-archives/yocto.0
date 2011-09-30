Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D142E0120A
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 19:44:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8U2iWaF016330
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Sep 2011 19:44:32 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.68) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 29 Sep 2011 19:44:32 -0700
Message-ID: <4E852D0F.8070108@windriver.com>
Date: Thu, 29 Sep 2011 22:44:31 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.23) Gecko/20110920 Thunderbird/3.1.15
MIME-Version: 1.0
To: Darren Hart <darren.hart@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018A7E818B@orsmsx502.amr.corp.intel.com>	<4E851EF5.2010900@intel.com>	<4BD43A85686FC34D819098DB1C3999D9018A7E81C9@orsmsx502.amr.corp.intel.com>
	<4E852C18.7010500@intel.com>
In-Reply-To: <4E852C18.7010500@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: preempt-rt kernel shutdown now command does not work
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
X-List-Received-Date: Fri, 30 Sep 2011 02:44:34 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-29 10:40 PM, Darren Hart wrote:
> On 09/29/2011 07:32 PM, Bodke, Kishore K wrote:
>> Hi Darren,
>>
>> For the non-rt "shutdown now" works perfectly fine. For the rt
>> kernel, after the command is issued, it tries to halt the system and
>> hangs there  forever after the connection to the X server is lost.
>
> Sounds like a legitimate bug. It works in qemux86 with -rt. I'll be able
> to test an rt image on a meta-intel board in the morning. In the mean
> time, please open a bug and let us know how critical you feel it is.

It's also worth trying the board booted UP versus SMP. We've seen
this in the past with kstop and thread migration interacting badly
on -rt. Forcing them to cpu0 on shutdown fixed those problems.

Bruce



>
> Thanks,
>
> --
> Darren
>
>>
>> Thanks Kishore.
>>
>> -----Original Message----- From: Hart, Darren Sent: Thursday,
>> September 29, 2011 6:44 PM To: Bodke, Kishore K Cc:
>> yocto@yoctoproject.org Subject: Re: preempt-rt kernel shutdown now
>> command does not work
>>
>> On 09/29/2011 05:54 PM, Bodke, Kishore K wrote:
>>> Hi,
>>>
>>> "shutdown -h now" command is not working on core-image-sato image
>>> with preempt-rt kernel 3.0.4  on Romley and crystal forest BSP
>>>
>>> I get Warning**: could not initialize ACPI battery. Xinit:
>>> connection to X server lost. xinit: uexpected signal 15
>>
>> Hi Kishore,
>>
>>
>> I don't know that I've tried that specific command.
>>
>> I see the unexpected signal message when shutting down the qemux86
>> sato image (non-rt) with that or the halt command, but it does shut
>> all the way down. In your case does the system continue to be
>> responsive after issuing the command?
>>
>>
>
>


