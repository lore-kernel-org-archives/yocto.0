Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40353E01443
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 05:07:30 -0700 (PDT)
Received: by qadz32 with SMTP id z32so1620942qad.14
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 05:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZSyVAnAH/pLYiquGqLrrZ6bDsBwwwzhw/sba7bzjdrw=;
	b=wBSDf0KJ6GG7sQYltNXzxPF2SL4eLSmdruh5UOZChmUZABsmTHHNCDIpEwbPq8u8mJ
	g+IYC9omiEUnKgw2HYlyN//IA73xemx2QFTP4xFDSdZrBueMcj1U1ij/RzmJItHPrQGc
	s9sdU2bD2nnEuTrTi/v4/kVwe1dSnI52M12aV6rIR7eei8BBg5a0k3V3W115qEHBh31u
	l7dwkLeryV95RNU7TPU0ig32C3mofeqdF3IWmwFyM9Sofuqy5QpmQu4POzAozcgiPnXz
	XJryXahkVcuieWbgdVpZSWyAMza4iusfWuQY4khNGXzmN6XmaxLu28z7QSK7IEeDgrTV
	S0hA==
MIME-Version: 1.0
Received: by 10.224.203.8 with SMTP id fg8mr8790908qab.38.1341835649432; Mon,
	09 Jul 2012 05:07:29 -0700 (PDT)
Received: by 10.229.41.5 with HTTP; Mon, 9 Jul 2012 05:07:29 -0700 (PDT)
In-Reply-To: <CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
References: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
	<CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
Date: Mon, 9 Jul 2012 08:07:29 -0400
Message-ID: <CADkTA4N6WEQMd+wq_mA38oncby_AMiiCX0im+wdDb9UP6R28qA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: menuconfig vs. config fragments?
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
X-List-Received-Date: Mon, 09 Jul 2012 12:07:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 9, 2012 at 6:42 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy <jfabernathy@gmail.com>
> wrote:
>>
>> my goal of this test was to see if I could use the n450 BSP as a starting
>> point for a BSP to support my Acer Aspire One n450 based netbook.  The
>> core-image-sato will boot from USB key on the netbook if I use the ZIP drive
>> format for the USB key, but the current n450 BSP doesn't include the drivers
>> for the networking hardware in the netbook.
>>
>> I found by testing, using the menuconfig option documented in the
>> Developer Manual Appendix B example, that I needed to add 2 parameters to
>> the .config:
>>
>> CONFIG_ATH9K_PCI
>> CONFIG_ATL1C
>>
>> To make this change easier to manage and more permanent, I thought about
>> creating a config fragment.  I put the config parameters in a file,
>> myconfig, in the linux-yocto directory at the same level as the
>> linux-yocto_3.2.bbappend file, where I added:
>>
>> SRC_URI += "file//myconfig"
>>
>
> Try to use myconfig.cfg.

This would be the key part, since as a few noted, .cfg is what
triggers the fragment
processing to actually notice the file and stack it after the base /
defined configuration.

Cheers,

Bruce

>
> @g
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

