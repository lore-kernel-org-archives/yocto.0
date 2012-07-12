Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD69CE0027D
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 18:18:47 -0700 (PDT)
Received: by eaab16 with SMTP id b16so652682eaa.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 18:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yguSh9Kf2Qijc7eexdOAprUuER4gX3jDWlCdzbXAaaU=;
	b=UTsmYTqttcgR8ddn3rYshsmsICeFBsqbI1M+hWcqzeKGh26hxOHenu+ulreN3XIUtM
	5SWh2qZWpDFVbC6dvZSH4MGnELW4axeJGKqY9Q+HvB40H7weO5O11aHBrxj4YFMzIjP0
	FQ5ijX3p3CpirFAFSlp/6uAB4q/U2vl7+7y24Zdg1J9cIIXkKykRIMBnnQ0zQoe8KBwM
	w5ie22FHL3+XEtnr6l+59ERivrX7e5cTe4qUJ3lF+fAH5BKucFsvrFD6z91WVxv315Vw
	6GNTP8D0G5eX9Y59zCZkf1D/ywBQ0RISZuITvJvr63FyCdzZdSHJ1ZWwBIMvlCoD0I2m
	1mYg==
Received: by 10.14.37.76 with SMTP id x52mr6368667eea.102.1342055926383; Wed,
	11 Jul 2012 18:18:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Wed, 11 Jul 2012 18:18:16 -0700 (PDT)
In-Reply-To: <F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEB@banasiexm01.ASIA.ROOT.PRI>
References: <F949F2ADAD67534D8F639CC2B9DE2B0F4A12AAEB@banasiexm01.ASIA.ROOT.PRI>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jul 2012 18:18:16 -0700
Message-ID: <CAMKF1spHS_n5=qUmB7-OTwwCDNoYOELGBAoBbu+SubRmDW-1vw@mail.gmail.com>
To: Sreekanth Nandakumar <Sreekanth.Nandakumar@csr.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: clarification
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
X-List-Received-Date: Thu, 12 Jul 2012 01:18:48 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 10, 2012 at 10:05 PM, Sreekanth Nandakumar
<Sreekanth.Nandakumar@csr.com> wrote:
> Hi,
>
>
>
> As I am new to yocto can you clarify the following things.
>
>
>
> We have our own kernel code(v 2.6.38) placed in local directory
> /home/administrator/testing/kernel) . I have written recipe for it.
>

would you show it to us.

>
>
> We have Makefile to build the kernel. Will bitbake identify the Makefile &
> start building or how will it work?
>

bitbake acts on recipes. So if you have recipe defined and its
available for bitbake parse then it will include it
>
>
> Kindly let me know where should the SRC_URI should point if it is pointing
> to local directory.
>

There are examples of it e.g. in poky-extras repo.
>
>
> Please clarify how to run a single recipe using bitbake or wat is the
> process to run a single recipe file?
>
>
>
> Regards
>
> Sreekanth
>
>
>
>
>
> Member of the CSR plc group of companies. CSR plc registered in England and
> Wales, registered number 4187346, registered office Churchill House,
> Cambridge Business Park, Cowley Road, Cambridge, CB4 0WZ, United Kingdom
> More information can be found at www.csr.com. Follow CSR on Twitter at
> http://twitter.com/CSR_PLC and read our blog at www.csr.com/blog
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

