Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87E284C80287
	for <yocto@yoctoproject.org>; Fri, 29 Oct 2010 11:58:58 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9TGwu7o003735;
	Fri, 29 Oct 2010 09:58:56 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Oct 2010 09:58:56 -0700
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 29 Oct 2010 09:58:56 -0700
Message-ID: <4CCAFD4F.8040501@windriver.com>
Date: Fri, 29 Oct 2010 12:58:55 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: tiagoprn <tiagoprn@gmail.com>
References: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
In-Reply-To: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
X-OriginalArrivalTime: 29 Oct 2010 16:58:56.0507 (UTC)
	FILETIME=[92F764B0:01CB778A]
Cc: yocto@yoctoproject.org
Subject: Re: yocto tools on a nokia n800
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Oct 2010 16:58:59 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10-10-29 07:50 AM, tiagoprn wrote:
>   Hello everyone!
>
>   I have a question. I have just read about the yocto/poky projects and here I am with a hope. :)
>
>   I have a nokia n800 (an internet tablet abandoned by Nokia just about 2 years ago).
>
>   With poky/yocto project tools, is it possible to install a linux toolchain with X and the touchscreen/wireless components working, for an example, in a SD Card and boot my device into it?

I can comment on some of this from the kernel point of view,
I'll leave others to comment on platform/project/userspace
issues.

It is definitely possible to enable (basic or more capabilities)
in the N800 (in particular since most of the required support
is mainline) in the yocto kernel (or other). We could extend
the common set of features and sanity to the n800 and then
enable peripherals or boot methods .. it all depends on the
capabilities and interest.

maintable/doable in the kernel and userspace has the required
capabilities (from my point of view), so this is something
that could come back (others can comment more on the previous
support), with a little bit of assistance.

Cheers,

Bruce

>
>   I'm anxious for that.
>
>   Thanks for your support.
>
>   Regard,
>
>


