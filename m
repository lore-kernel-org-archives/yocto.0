Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34366E00BB3; Fri, 13 Jun 2014 12:45:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 785A7E00AFD
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 12:45:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 6546627E02B;
	Fri, 13 Jun 2014 19:45:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 1d2LghIjIere; Fri, 13 Jun 2014 19:45:26 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 80EB227E02A;
	Fri, 13 Jun 2014 19:45:26 +0000 (UTC)
Message-ID: <539B54CF.90603@dynamicdevices.co.uk>
Date: Fri, 13 Jun 2014 20:45:19 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Morgan <chmorgan@gmail.com>
References: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
	<CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
In-Reply-To: <CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Fri, 13 Jun 2014 19:45:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 28/05/2014 21:31, Khem Raj wrote:
> On Tue, May 27, 2014 at 3:44 PM, Chris Morgan <chmorgan@gmail.com> wrote:
>> Building a custom image with wayland and weston based on core-image,
>> seeing issues with virtual/mesa and virtual/libgl being provided by
>> multiple packages. Not sure if I'm doing something wrong here, like
>> not specifying packages that provide those virtual targets?
>>
>>
> you got to set PREFERRED_PROVIDERS for jpeg and virtual/libgl to be
> either mesa or mesa-gl

Did you find a solution to this Chris? I'm seeing the same thing with a
meta-raspberrypi build of core-image-weston.

The preferred provider seems set correctly by the RPi layer though

(rpi-default-providers.inc)
PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"

Thanks,

Alex


