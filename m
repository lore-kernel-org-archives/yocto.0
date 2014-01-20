Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C389FE0087A
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 09:23:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0KHNTud005096
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 20 Jan 2014 09:23:29 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 20 Jan 2014 09:23:29 -0800
Message-ID: <52DD5B7A.4000200@windriver.com>
Date: Mon, 20 Jan 2014 12:23:06 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Bob Cochran <yocto@mindchasers.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <52B879B7.8000808@mindchasers.com>	<CADkTA4Pxv1hnjxMW4b7yy3Q1-xn2scMROyU2ZaLmZ_i_R+VLQQ@mail.gmail.com>
	<52DD47DD.8080706@mindchasers.com>
In-Reply-To: <52DD47DD.8080706@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Development of Yocto Project Kernel outside of Intel?
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
X-List-Received-Date: Mon, 20 Jan 2014 17:23:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-01-20 10:59 AM, Bob Cochran wrote:
> On 12/23/2013 09:10 PM, Bruce Ashfield wrote:
>> I can add a few thoughts.
>>
>> We obviously have the reference BSPs to represent the major
>> architectures, and
>> on the linux-yocto mailing list, we've been looking at BSPs from LSI
>> as well as
>> some other pending boards (I'm waiting on them to be submitted, so I
>> won't mention
>> them here). The xilinx boards also have some yocto-style support in
>> their repository
>> with us working to adopt and integrated version of them as we move
>> into Yocto 1.6+.
>>
>> It's generally a slow process to get kernel versions aligned, but with
>> the LF LTSI
>> kernel(s), it helps create a neutral version that the Yocto project,
>> OSVs, semis and
>> others can use as a synchronization point. LTSI is part of the
>> linux-yocto kernel
>> trees as an integrated baseline, and LTSI has recently picked up more
>> attention ..
>> which has a byproduct of more BSPs being available in a similar
>> format, version and
>> configuration.
>>
>> Obviously we'd also love to see all relevant BSPs completely
>> mainlined, with short
>> stays in the Yocto tree (or others) as a BSP is developed, stabilized
>> and eventually
>> upstreamed.
>>
>> There's obviously a place for cutting edge trees, semi trees for the
>> latest and greatest,
>> stable trees .. and integrated staging grounds for all of the above.
>> So navigating that
>> mix, takes time, and we are getting there.
>>
>> Cheers,
>>
>> Bruce
>
>
> Hi Bruce (& other yocto developers),
>
> Thank you for the information.  Below is a related follow on question,
> as I try to sort out who's doing what with kernel patches for the
> varying embedded system chips / SoCs:
>
> To what extent do kernel patches exist for Intel chip sets that are
> released to embedded Intel customers but aren't yet posted as patches in
> the yocto kernels?  I assume there are proprietary drivers for IP
> covered under NDA.  Is this the case?  Does an Intel customer find
> themselves picking some kernel patches from the linux-yocto branches and
> others from login protected Intel sites?

Adding Darren, since he can elaborate better than I can.

The target for kernel modifications is inevitably the mainline
linux kernel, but in the meantime, yes you will have patches that are
both developed to support boards and then sent to LTSI or the Linux
Yocto kernel as intermediate "release" mechanisms .

To what extend the mixing and matching happens, that wouldn't be
a goal, since that is a home-brew mix of changes that no one really
calls a BSP. Maybe Darren has  more information, or knows where to
direct the query.

Bruce

>
> Thank you,
>
> Bob
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


