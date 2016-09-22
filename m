Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BADEE00C28; Thu, 22 Sep 2016 10:22:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACBDDE00444
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 10:22:23 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id 192so1394480vkl.1
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 10:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aYODeZ6vdmw7+zV5c5GX0vpA4eXtToILdKba7JK73hU=;
	b=QDH7ni7nBb0/A5PZSJB0mbbjzKGH2CBlEWFIsovqAxonI1wW3uCgp60JsCon2PqbLY
	8CPG28CHxT9BVo3v7XJetcLgrM6xixqjI+XfAuNYUddPa0WdbO3fNhUWXOrA/pQ2K5HA
	dO0IqNXynVxjW6pYdza+Qlx4bk8dKy7Xckks7oEPotRk5otBIH3S4X9z8nFYRxYfHm+i
	nABouuir+IPWvz/vEggFNVF97QUVJjVZ2FrnWomb5D2labs3LHasIYcDHTFYvr90YylH
	PMusjtuZVX9uq0agmUXyk3hNY4e3V+xsbM1CyJlT7LkJ0EX1LvOTpM86d0YttAlJoWxI
	uz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aYODeZ6vdmw7+zV5c5GX0vpA4eXtToILdKba7JK73hU=;
	b=Q1Sz9AyGkGmJIp6MHlzY7dbn6qibE4DzBhOclnEuCICXCJayRAumTtoUps2YaA5mJF
	zKCrcUgcJi5TFwYwHflolJBB1o/RyONGPGS8XJ1784vGkipXGFNhJNb069+iqGye5iGK
	xIiJIkiYQih7AsVlcnYcj1a6aOu2Mc4tCRHpSUyrrA5IaDWWJa7DFiwaVIM3FvU8842r
	KxAu/VT3otJKxMmfqfv9tqxNbLNTsAEK3etpQmi3lLknWDfvxOl+kvYftmXgiSvcwP+2
	veH2W3pc7k6nzikDVD+XFdtI+MuxjAUINHzKasoDsNHkzyp/xsNk4EOjcylLxjnjEsXV
	lMzA==
X-Gm-Message-State: AE9vXwN4QYVJgsR9tCn7nupqrhOdkIFwQV+HAcM9o+GQC/J/48gTs2f0Ph+30+E3FiCXQz3PTW6wYIhLvp+jww==
X-Received: by 10.31.96.201 with SMTP id u192mr2450649vkb.84.1474564942527;
	Thu, 22 Sep 2016 10:22:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.33 with HTTP; Thu, 22 Sep 2016 10:21:51 -0700 (PDT)
In-Reply-To: <20160922152917.GP4814@bill-the-cat>
References: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
	<CAMKF1sqg30KEW2U+bCOcYaekrgkz9SxM1vRjydtp_xhxfONXuA@mail.gmail.com>
	<20160922152917.GP4814@bill-the-cat>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Sep 2016 10:21:51 -0700
Message-ID: <CAMKF1sro2dOqgBVR+mXU0VmcWBQP0XPt6fEJW4=4+MRAAarFSQ@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Meta layer for pine64
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
X-List-Received-Date: Thu, 22 Sep 2016 17:22:25 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 22, 2016 at 8:29 AM, Tom Rini <trini@konsulko.com> wrote:
> On Wed, Sep 21, 2016 at 11:39:48AM -0700, Khem Raj wrote:
>> On Fri, Sep 16, 2016 at 2:01 PM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>> > Hi all,
>> >
>> > I just finished a first beta version of a meta layer for SBC pine64.
>> > You can find it in  https://github.com/mont3z/meta-pine64
>> >
>> > I'd appreciate if anyone has any comments on possible improvements. A
>> > major problem I had was the necessity of two toolchains: one for
>> > compiling u-boot (32 bits) and another for compiling all other
>> > components (64 bis). At the moment I have a very ugly hack to do it.
>> > The 32 bit toolchain is an external toolchain and I set PATH
>> > environmental variable in u-boot recipe.
>>
>> I think it would be desirable to have single toolchain, u-boot is a
>> stand alone app
>> in general, if your compiler can do multilib builds for 32bit then it
>> would be possible
>> to build it. May be you should work with the toolchain team for pine64 to see if
>> that can be done. It will simplify using this layer.
>
> Actually, pine64 has a 64bit U-Boot, I think maybe the layer just needs
> to be updated to use mainline (or v2016.09.01) U-Boot.
>
>> Other option I would suggest to build u-boot externally for your SoC, we do
>> not necessarily need a bootloader for building final images anyway.
>
> Well, you do if you want a bootable image to be made :)  iirc all of the
> models are SD card only, no eMMC so assuming firmware "elsewhere" is a
> bad idea.

You can always write a recipe to package a prebuilt u-boot.

>
> --
> Tom

