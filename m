Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67F654C80B70
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 10:40:49 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA3Fem9P004343
	for <yocto@yoctoproject.org>; Wed, 3 Nov 2010 08:40:48 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 08:40:48 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 08:40:48 -0700
Message-ID: <4CD1827E.5020709@windriver.com>
Date: Wed, 03 Nov 2010 10:40:46 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
In-Reply-To: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
X-OriginalArrivalTime: 03 Nov 2010 15:40:48.0744 (UTC)
	FILETIME=[7CE84680:01CB7B6D]
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
X-List-Received-Date: Wed, 03 Nov 2010 15:40:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/3/10 10:34 AM, Frans Meulenbroeks wrote:
> Hi,
>
> I'm trying to add my powerpc board to yocto (as a test). This board
> mpc8536ds has an e500v2 core. It works under OE (MACHINE =
> "calamari"). but gcc-cross-initial fails in do_compile when it tries
> to run configure for the libgcc subdir.
> The problem is similar to http://patchwork.openembedded.org/patch/2026/

At this point we have no added any e500 support to Poky.

It would certainly be interesting to me to add/enable e500 support, as well as 
other spe optimizations that eglibc might provide.

--Mark

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


