Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BEA9E0096C; Fri,  2 May 2014 06:01:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F3AE00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 06:01:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 3A22127E015;
	Fri,  2 May 2014 13:01:50 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Vm3OEit12QVn; Fri,  2 May 2014 13:01:49 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 253C227E006;
	Fri,  2 May 2014 13:01:49 +0000 (UTC)
Message-ID: <5363973A.6020106@dynamicdevices.co.uk>
Date: Fri, 02 May 2014 14:01:46 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <5362171B.8010000@dynamicdevices.co.uk>	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>	<536285BC.8010200@dynamicdevices.co.uk>	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>	<53632C0B.1010401@dynamicdevices.co.uk>
	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
In-Reply-To: <CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 13:01:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 02/05/2014 13:56, Otavio Salvador wrote:
> On Fri, May 2, 2014 at 2:24 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
> ...
>> So I guess I'm at the point where I'm wondering if a getVar() with a
>> flag is behaving as you would expect it to,
>> or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
>> isn't defined?
>>
>> Thanks in advance for any advice,
> I think we have a simple error error. You are mixing a recipe, which
> is old and a metadata layer with new concepts.
>
> The u-boot-imx, in 2009.08 recipe, used to set the UBOOT_MACHINE in
> the recipe as it was left as a fallback in case user needed it and the
> value was different from newer releases.
>
> In your case, the easier is to make a new yourmachine.conf and use the
> UBOOT_CONFIG or UBOOT_MACHINE setting there so it will work just fine.
>

If I have to do that, then I have to do that.

However if I could just undefine one of the two variables defined in the
meta-fsl-arm
layer then I could continue with what I am doing without having to spend
the time
right now to rework the configuration, which is wasted effort for me, as
I will be moving
up to the new version of u-boot in the near future.

Is there no simple way to undefine a variable in a recipe?

Thanks,

Alex


