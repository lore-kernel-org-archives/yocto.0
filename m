Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F900E00CD8; Sun,  1 Oct 2017 01:52:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4390E00C43
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 01:52:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 76C3F861B3;
	Sun,  1 Oct 2017 08:52:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 82AXbQkY--W1; Sun,  1 Oct 2017 08:52:08 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6F6A3860DC;
	Sun,  1 Oct 2017 08:52:08 +0000 (UTC)
To: yocto@yoctoproject.org, alexander.kanavin@linux.intel.com
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<08461abb-3f52-4110-3bb5-14773fa89286@fridu.net>
	<6ae04a22-4066-670a-87b8-f96c698c1621@linux.intel.com>
	<a82f2e23-0ef2-5f09-7ec1-2b68e229fd96@dynamicdevices.co.uk>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <b93b3607-9997-4df6-4e7a-4cb59f7f7040@dynamicdevices.co.uk>
Date: Sun, 1 Oct 2017 09:52:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <a82f2e23-0ef2-5f09-7ec1-2b68e229fd96@dynamicdevices.co.uk>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Sun, 01 Oct 2017 08:52:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB



On 01/10/2017 09:30, Alex Lennon wrote:
>
>
> On 01/10/2017 09:20, Alexander Kanavin wrote:
>> On 09/29/2017 05:01 PM, Dominig ar Foll (Intel Open Source) wrote:
>>>> Due to what our IT department can support, I am issued a Windows 
>>>> laptop for development.  In the past I have used VMWare to make a 
>>>> Linux virtual machine for my Yocto Project based image builds and 
>>>> application development. We are starting to get Windows 10 laptops 
>>>> so I am evaluating doing my builds using the Windows Subsystem for 
>>>> Linux (WSL) by building a poky/morty image.  Overall it seems to be 
>>>> working. I've had an issue that I've worked through and other 
>>>> issues that I'm not quite sure what is going on.
>>>>
>>> Hi Brian,
>>>
>>> I have been trying the same thing attempting to build Automotive Grade
>>> Linux from Linux for Windows subsystem.
>>> We have many adopter of AGL who also receive Windows PC from their IT
>>> department. While VM work, they impose a serious limitation on memory
>>> and CPU usage.
>>
>> Does anyone else think doing embedded linux development on windows 
>> machines is a ridiculous situation, and needs to be discussed with 
>> companies management? IT departments should either support product 
>> R&D work (because at the end of the day that is where the company 
>> makes money), or stay out of the way and let engineers self-manage 
>> their computers, including installing weird operating systems.
>
> +1
>
> I suspect that technical people saying technical things have very 
> little impact on upstream bean-counters.
>
> If one was to, say, quantify the amount of time and therefore money 
> the entire team are putting into wrangling the Windows machines into 
> doing a half baked job of building Linux versus the capital cost and 
> (presumably negligible) cost of IT support, with a commentary on 
> limiting any security impact, I suspect some spanking new Linux boxes 
> would arrive quite quickly
>

That said I don't want to sound negative about the effort.

I've been following bits of the thread and technically what the guys are 
doing here is pretty cool stuff.

I do feel that ultimately we're still using virtualisation though, 
whether type I or type II, whether Docker with VirtualBox hidden away or 
with the Win10 subystem.

My feeling is the I/O throughput, and possibly the process forking 
issue, is going to ruin performance but that doesn't stop me wanting to 
give it a go :)

In fact for a long time I've wanted a scalable cloud server I can bring 
up, pull a Yocto docker image into, and do a build. Not cost effective 
at the minute but perhaps in the future. And I think there are great 
benefits to having that kind of build control management system in place.

Cheers,

Alex


