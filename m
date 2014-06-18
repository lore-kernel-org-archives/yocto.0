Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7973E00B66; Wed, 18 Jun 2014 01:25:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C947E00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 01:25:25 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id l4so292011lbv.14
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 01:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=I9tD7BCNNhkCybjNLEb7O7QRmG/NMVHe/VgCPt1G80E=;
	b=kydtQzJK9LuobGKriXaI/PrmHUzolERM54zf02hupXJdNaYuP75wf0xOAMqymPthNm
	EuOIiEwV+Fy+L14/GjqiJ3F4bpF2gw+4GWTtPYKQOnFYz+MgNa8DchHdWXiLvfNOKL7d
	35PIVI23IfI7zkRE/7PWIfwXB6+gW0LMtFCKgJN7kQhgMj3m5eLyGU5zy/dqO8iT2aYL
	BT2PPPh6o7B7eioVQY7wbnzRLXmYilmnwS6YndNU8lnMVYWB+ptK6zqCwFqhfP0fGAS0
	LjH0c6BBR3CcPaxy6tzXNVwbv4wHBR6YQoewrYtMpRmOc+2WIvlgavj2tBtKY3hE0kuE
	SbIQ==
MIME-Version: 1.0
X-Received: by 10.152.36.38 with SMTP id n6mr412673laj.0.1403079924035; Wed,
	18 Jun 2014 01:25:24 -0700 (PDT)
Received: by 10.112.16.227 with HTTP; Wed, 18 Jun 2014 01:25:23 -0700 (PDT)
In-Reply-To: <53A0A107.4000300@bsmucker.eu.org>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
	<53A061C1.9040906@bsmucker.eu.org>
	<CAAQYJAv_U5a=umUMs1cTQudDktxYdGKco92WcgxrH-r+bAfBoA@mail.gmail.com>
	<53A0A107.4000300@bsmucker.eu.org>
Date: Wed, 18 Jun 2014 10:25:23 +0200
Message-ID: <CAAQYJAuKCoAEWSohRVixnXyakb=JBE5Fks5Vi-+7jvELkoLsCQ@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to copy recipe and have different target names
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
X-List-Received-Date: Wed, 18 Jun 2014 08:25:40 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 17, 2014 at 10:11 PM, Brian Smucker <bds@bsmucker.eu.org> wrote:
> Hi Andrea and all,
>
> So I am using your suggestion to make another variant of busybox:
> busybox-static, and I add the static.bblcass file.
>
> So when I try to do bitbake busybox-static, it ends up unpacking to
> busybox-static-1.20.2-r2/busybox-1.20.2 (which does not correspond to the S
> variable).
> And it errors out when it attempts to patch to
> busybox-static-1.20.2-r2/busybox-static-1.20.2 (the S variable path).
>
> What am I missing?
>

Hi,
sorry but I couldn't do a build-test yet so take my observations with
a grain of salt.
As I prevously hinted there are cases like this requiring some vars
adjustements because you have changed the BPN and PN (base/package
name).

In your -static recipe you could try to redefine

S = "${WORKDIR}/busybox-${PV}

Neverthless, busybox recipe is a special one because it is used
instead of a lot of single utilities.
This implies there are special cares to take to avoid conflicts with
busybox when a recipe is providing the same stuff.

AFAIS packaging should work because the recipe is using ${PN} so
you'll get distinct packages but check the manual about U_A (update
alternatives) and provider conflicts.

You have chosen one of the most complicate recipes to play with ;)

Cheers

Andrea
>
> Thanks,
>
> Brian
>
>
>
> On 6/17/2014 9:31 AM, Andrea Adami wrote:
>>
>> On Tue, Jun 17, 2014 at 5:41 PM, Brian Smucker <bds@bsmucker.eu.org>
>> wrote:
>>>
>>> Hello,
>>>
>>> I would like to have yocto generate two copies of busybox, one
>>> statically-linked and one dynamically linked. So I try to make a copy of
>>> the
>>> busybox recipe and give it a new name like busybox-s_xxxxx.bb
>>>
>>> But my knowlege of yocto comes up short and I get lots of errors.
>>>
>>> Is there a way to do this cleanly?  Or should I be trying to do a
>>> different
>>> approach?
>>>
>>> Thanks,
>>>
>>> Brian
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> Brian,
>>
>> I don't think there is an 'official' way to do that.
>> For a similar purpose (buidling static binaries against klibc) I have
>> developed two solutions, both using a custom class:
>>
>> 1) for easy-to-adapt recipes, BBCLASSEXTEND +  the custom class
>>
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-bsp/kexecboot/kexecboot_0.6.bb
>>
>> 2) for the stubborn cases, create a copy of the recipe and may need to
>> adjust some vars (S, FILESPATH or better FILESEXTRAPATHS, ...)
>> see  i.e.
>>
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-devtools/mtd/ubi-utils-klibc_1.5.0.bb
>>
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-kernel/kexec/kexec-tools-klibc_2.0.2.bb
>>
>> I guess busybox belongs to the heavy ones...
>>
>> Cheers
>>
>> Andrea
>
>

