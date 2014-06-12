Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D7B4E00B7B; Wed, 11 Jun 2014 23:56:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.218 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 235ECE0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 23:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1402556174; l=1588;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=Qkwzk49wEqr1yEeUfxQpCHWWEF4=;
	b=Yp6e/+CtUW8jtsgjnfeUNW8evLBd87pcD3ekA7FLPFsNfy0IprSkY/FcXP2lECrqWwd
	l5jQA6rvNijicrY8yaoYylnV2yz4rJlpjG1tUROFYvGoevi6POAXVL2NDE9i319LOk7kR
	ppyfmuzRgNBxSovUC3nSPRUWRWFTMqLPQ6I=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgBcHsubAgpng8lA5cA==
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p57915710.dip0.t-ipconnect.de [87.145.87.16])
	by smtp.strato.de (RZmta 34.3 DYNA|AUTH)
	with ESMTPSA id Y019c1q5C6uE7fu
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Thu, 12 Jun 2014 08:56:14 +0200 (CEST)
Message-ID: <53994EFE.7020201@jenslucius.de>
Date: Thu, 12 Jun 2014 08:55:58 +0200
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
In-Reply-To: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
Subject: Re: [meta-raspberrypi] how to customize kernel config?
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
X-List-Received-Date: Thu, 12 Jun 2014 06:56:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi

Had the same problem. The problem is in file linux-raspberrpi.inc the 
following line:

install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} 
${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / 
${KERNEL_DEFCONFIG} available."

it installs always the defconfig at the path above. I changed that and 
it works.

Am 12.06.2014 08:48, schrieb Jonatan Magnusson:
> Hi
>
> I’m trying to use the meta-raspberrypi BSP with Yocto (1.6, Daisy).
>
> It works great, except I have no idea how to use a custom kernel config!
>
> I have a custom kernel recipe that bbappends to the meta-raspberrypi kernel recipe.
>
> I’ve tried using defconfig as well as configuration fragments, but neither work.
>
> I’ve also tried using the kernel_configure_variable function, and that almost works, except if I try to disable an option that is enabled earlier in the the config file, the option is still enabled since kernel_configure_variable only appends to the config file.
>
> Example:
>
> do_configure_append() {
>    kernel_configure_variable SPI_SPIDEV n
> }
>
> So I wonder: how is this supposed to work?
>
> In my case I need to enable CONFIG_IEEE802154_MRF24J40 and it’s dependencies and disable CONFIG_SPI_SPIDEV and a few more.
>
> I’ve found no help on IRC and all Google comes up with is this old discussion, which does not lead to a solution:
>
> https://lists.yoctoproject.org/pipermail/yocto/2013-November/017113.html
>
> I would be very happy to get any hints on how this is supposed to work!
>
> Regards,
> Jonatan Magnusson


