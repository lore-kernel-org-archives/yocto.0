Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED95CE006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 08:31:39 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsg1 with SMTP id g1so660606qcs.35
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 08:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=wuOhRICEa4McvZGKiaaXZY2XMZnEu5OcVqf4KaXwgaI=;
	b=ApB8PBqF3uSjP5+8VKANd2v5wrSWChLrgRfEDqOXl8our97SYxV/YPbXeLTTwj05PO
	ZYA4QKyt0OwHA3Kj13JLhaL51Z+NcHsTcN0YtGajnxuyS07dpvMgCO7eC1llQ7GbSgJN
	2UHZR/8AO6q4oddQYMrFCI9pJ4o0/a1uZyB3w=
Received: by 10.229.75.216 with SMTP id z24mr7679010qcj.134.1326213099323;
	Tue, 10 Jan 2012 08:31:39 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	df3sm150266474qab.6.2012.01.10.08.31.38 (version=SSLv3 cipher=OTHER);
	Tue, 10 Jan 2012 08:31:38 -0800 (PST)
Message-ID: <4F0C67E9.7040307@gmail.com>
Date: Tue, 10 Jan 2012 11:31:37 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <CANFv2Emzgi2GqXGbLCJ4Ej+umyPHsNmJQ_eMj-6A0XAcVeFtyg@mail.gmail.com>
	<4F0C5E5F.1050709@windriver.com>
In-Reply-To: <4F0C5E5F.1050709@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto on Acer Aspire One NAV50
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
X-List-Received-Date: Tue, 10 Jan 2012 16:31:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2012 10:50 AM, Bruce Ashfield wrote:
> On 12-01-10 10:47 AM, James Abernathy wrote:
>> I created a core-image-sato using the meta-n450 BSP hoping I could work
>> with it on the Acer Aspire One 532h-2588. However, that netbook uses the
>> Atheros AR5B95 wireless NIC and the Atheros AR8132 wired NIC, which are
>> not recognized. Is there anything already in Yocto that could be turned
>> on to support these devices, or am I left with porting the drives?
>> Since Ubuntu 11.10 with it's kernel 3.0.0 supports these devices and
>> runs on the netbook, I'm guessing it's a matter of configuring the
>> kernel to include these modules.
>> Does this sound right??
>
> That should be all that is required. If the drivers you need are
> indeed in 3.0 (I didn't go check explicitly), then you can create
> a bbappend for the BSP in a layer, and add a configuration fragment
> that enables the drivers you need (as modules or builtin, your
> choice).
>
> Examples of config fragments are in the BSP/kernel guides found on
> the yocto project pages.
>
If I'm only making changes to the .config parameters, do I still need to 
create
a local bare clone of the yocto kernel and also git the poky-extras 
repository as mentioned
in the Developers Manual appendix B?

Jim A


> Cheers,
>
> Bruce
>
>> Jim A
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


