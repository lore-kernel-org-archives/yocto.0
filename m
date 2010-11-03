Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 151D64C803A5
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 14:32:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so1210429iwn.35
	for <yocto@yoctoproject.org>; Wed, 03 Nov 2010 12:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=BKMc4i9mw2Dx4VrEHUR7irTn0PvBr9ZJJzHjWGmu6Ro=;
	b=pnyB3Z6w36DisK3nNX1blYajfRkOcNpaZSGr9TpWEwtjlMSrumvvdG78wNOIWkuMlH
	nQdBdL9mcRSJL5gVzai3rUYu8GD3Nkqk1ceZSk+pvAvPmhaViUAcaBSmZiilj2Z7PY28
	kpWtvsvNRAuHAJnST5bGSi9huuXyfjaVpJKG8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=wwgj2kSYfMyvQVa99Gqhqvjq0b2D8uuS4DltbU60Q1tbnDrYBlAzdf/Cppodn9cn3S
	7T4Q9FHuTktxqZUiWenIQfj5myaM7WXswMxAmINvn7MNGqkRriy5nLjmnscXvRpLefni
	S+ZIoNW7DsMFOliyB2ORH3TGQFa835tjdCS98=
MIME-Version: 1.0
Received: by 10.231.152.143 with SMTP id g15mr3212917ibw.76.1288812777695;
	Wed, 03 Nov 2010 12:32:57 -0700 (PDT)
Received: by 10.231.40.13 with HTTP; Wed, 3 Nov 2010 12:32:57 -0700 (PDT)
In-Reply-To: <4CD1849F.6010303@windriver.com>
References: <AANLkTi=+SkeQJbAvCcmzk20XzY-2Wk9rnypte59Lnkxs@mail.gmail.com>
	<4CD1849F.6010303@windriver.com>
Date: Wed, 3 Nov 2010 20:32:57 +0100
Message-ID: <AANLkTinn4+daefZeckAgbS5H0nuSudv3kxZEQtBxgVEq@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Wed, 03 Nov 2010 19:32:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/11/3 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 10-11-03 11:34 AM, Frans Meulenbroeks wrote:
>>
>> Hi,
>>
>> I'm trying to add my powerpc board to yocto (as a test). This board
>> mpc8536ds has an e500v2 core. It works under OE (MACHINE =
>
> I can definitely guarantee that this would work in
> the yocto kernel (with a small local step for you), in
> fact, I've got a full BSP for this, and any of the extra
> features in the kernel (SPE, IEEE float, lttng, etc) will
> all work for any e500* board.

Sounds good. Is there anything you could share as a starting point?

Frans
>
> When doing the initial freescale board work, I ran into
> similar (same) problems with userspace (and gcc), and
> ended up backing off to a more generic optimization level
> to get things working. So there are a definitely few things
> to do. I was experimenting with FPU settings, but haven't
> gone back to look again.
>
> Cheers,
>
> Bruce
>
>> "calamari"). but gcc-cross-initial fails in do_compile when it tries
>> to run configure for the libgcc subdir.
>> The problem is similar to http://patchwork.openembedded.org/patch/2026/
>>
>> Basically gcc-cross-initial fails building libgcc, config.log has:
>> cc1: error: not configured for ABI: 'spe'
>>
>> I feel this is related to the generation of the host triplet.
>> OE has conf/distro/include/sane-toolchain.inc which has a func
>> compute_os_portion_of_target_triplet
>> this one adds gnuspe to the host triplet (and maybe some other things).
>>
>> poky does not give me that part of the triplet.
>>
>> Anyone an idea what is wrong (I can provide machine description etc,
>> but it is also all in the OE git).
>>
>> Best regards, Frans
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.pokylinux.org/listinfo/yocto
>
>

