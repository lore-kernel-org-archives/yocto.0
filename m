Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15E0F4C80287
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 10:49:58 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA3FntjD005947;
	Wed, 3 Nov 2010 08:49:55 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 08:49:55 -0700
Received: from [128.224.143.32] ([128.224.143.32]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 08:49:55 -0700
Message-ID: <4CD1849F.6010303@windriver.com>
Date: Wed, 03 Nov 2010 11:49:51 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
In-Reply-To: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
X-OriginalArrivalTime: 03 Nov 2010 15:49:55.0567 (UTC)
	FILETIME=[C2D6D7F0:01CB7B6E]
Cc: yocto@yoctoproject.org
Subject: Re: ppc e500v2 support?
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
X-List-Received-Date: Wed, 03 Nov 2010 15:49:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-03 11:34 AM, Frans Meulenbroeks wrote:
> Hi,
>
> I'm trying to add my powerpc board to yocto (as a test). This board
> mpc8536ds has an e500v2 core. It works under OE (MACHINE =

I can definitely guarantee that this would work in
the yocto kernel (with a small local step for you), in
fact, I've got a full BSP for this, and any of the extra
features in the kernel (SPE, IEEE float, lttng, etc) will
all work for any e500* board.

When doing the initial freescale board work, I ran into
similar (same) problems with userspace (and gcc), and
ended up backing off to a more generic optimization level
to get things working. So there are a definitely few things
to do. I was experimenting with FPU settings, but haven't
gone back to look again.

Cheers,

Bruce

> "calamari"). but gcc-cross-initial fails in do_compile when it tries
> to run configure for the libgcc subdir.
> The problem is similar to http://patchwork.openembedded.org/patch/2026/
>
> Basically gcc-cross-initial fails building libgcc, config.log has:
> cc1: error: not configured for ABI: 'spe'
>
> I feel this is related to the generation of the host triplet.
> OE has conf/distro/include/sane-toolchain.inc which has a func
> compute_os_portion_of_target_triplet
> this one adds gnuspe to the host triplet (and maybe some other things).
>
> poky does not give me that part of the triplet.
>
> Anyone an idea what is wrong (I can provide machine description etc,
> but it is also all in the OE git).
>
> Best regards, Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


