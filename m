Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B7AFE0078E; Fri, 29 Aug 2014 17:00:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24A08E0034C
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 17:00:08 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so10426143igb.9
	for <yocto@yoctoproject.org>; Fri, 29 Aug 2014 17:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=niHGcRWSasJdvzSNoN+UzDbdYx5WAnQSQSuSydetGnQ=;
	b=W+iZcy/NIS5o/xH/Yr966n3I30I9URS9dWNsJgnfppun57Rl2fMOk42FEV9HRXxLtM
	P7JU9m4nZbYSAinz9kHqMV3/f0iHvubVRT9fLoEqljNnqSzSs1FbKIu/BAFuhTgTYnH8
	jdL0lN5dYxvZjLT9O2bUaF1hCmvLj5ECRihaix9j5ydtNn3Wd56/WRZWhbaVgrGmAOlQ
	lmwbGs4zRSgw51F1c/5lENRCP008EbhheXdOHyDCl9RfM9F/v7sfOUsTF7CxojXw6wWF
	83PzUYDqIGkyPRYz/pfRP2ex708bCS+V189Gw7vGL4IvdMUU7wdi4muptpQQkQ9RokFV
	xaEg==
X-Received: by 10.50.39.8 with SMTP id l8mr7897502igk.13.1409356807740; Fri,
	29 Aug 2014 17:00:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Fri, 29 Aug 2014 16:59:36 -0700 (PDT)
In-Reply-To: <1409314734.29296.169.camel@ted>
References: <20140828064051.GA13139@haswell> <1409266291.29296.147.camel@ted>
	<CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
	<CAMKF1spj67i2i_50m=oTUpS3x2J=de0UxGf70zLhn-a7c4M3QA@mail.gmail.com>
	<1409314734.29296.169.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Aug 2014 16:59:36 -0700
Message-ID: <CAMKF1spiNQm8GVSNApqqhd6WFJnD8-=2A0_JxD85dKGaqkgOoA@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Otavio Salvador <otavio@ossystems.com.br>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Sat, 30 Aug 2014 00:00:17 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 29, 2014 at 5:18 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2014-08-28 at 18:46 -0700, Khem Raj wrote:
>> On Thu, Aug 28, 2014 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> > reproduced. will apprise as I have some fix.
>>
>> OK pushed another patch to the contrib tree that should take care of both
>> xf86-input-synaptics xf86-input-vmmouse
>
> https://autobuilder.yoctoproject.org/main/builders/nightly-fsl-arm/builds/17/steps/BuildImages/logs/stdio
>
> xf86-video-imxfb has the same issue and will need the same fix. Otavio
> cc'd...
>

I have sent a patch to meta-fsl-arm for this

> Cheers,
>
> Richard
>

