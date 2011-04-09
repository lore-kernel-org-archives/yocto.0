Return-Path: <joaohf@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B0BC4C80050
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2011 16:19:08 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so6343331iym.35
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2011 14:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=oOWnDeG1FmuXFGvBTPznKCI7tc/c8CmpolosdpbT2J8=;
	b=Oo0t/t42XZXjtmOjgFaRdNqwlpd99B1pSK2k7EpNgFKzQVq1nj17JOMaTvVKQC5QfD
	+0lL2ZsqyAIPlApibV2dmc8ZQF+N8/Z1r/o9UeBnkThI55UGcPoEnoghg1S8gsZBFK9a
	QvKJ8GIhirQz7iFRQ/7SjP/RZ8jdU8mXCOgiw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=mibBDN4crH3A443Kak/n1fQZU8UwEaZJsKU6L+/+NN4VCbBHUM/s6h+0SPqJ8xfslB
	bdjdTe5HrkKM5cnyJw49E799Yqy2TLS+CqFc4V+alm32+sKdvPGFjctqObfeWRBqM1FH
	CKp42dEbQd8JPj7tQ9W9JOHunmd3TeIpM2IPs=
MIME-Version: 1.0
Received: by 10.42.1.8 with SMTP id 8mr4841649ice.407.1302383947106; Sat, 09
	Apr 2011 14:19:07 -0700 (PDT)
Received: by 10.42.148.134 with HTTP; Sat, 9 Apr 2011 14:19:07 -0700 (PDT)
In-Reply-To: <4D9E1C97.2070107@mlbassoc.com>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
	<BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
	<BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>
	<4D9E0519.4060909@mlbassoc.com>
	<BANLkTimgL0PhaySxNvTqCzvCdOKj29wuGg@mail.gmail.com>
	<4D9E1C97.2070107@mlbassoc.com>
Date: Sat, 9 Apr 2011 18:19:07 -0300
Message-ID: <BANLkTimQ22OrQx6OzsfVjreSnkQxafW06w@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: recipes for sniffer tool
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
X-List-Received-Date: Sat, 09 Apr 2011 21:19:08 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I need to confirm same data but it works.

I have two build hosts Ubuntu 10.10 (OK, at home) Mandriva 2010.1
(FAIL, at work).

Thanks.

2011/4/7 Gary Thomas <gary@mlbassoc.com>:
> On 04/07/2011 01:48 PM, Jo=C3=A3o Henrique Freitas wrote:
>>>
>>> I used this recipe, along with the attached patch to build tcpdump.
>>>
>>
>> I am using the same recipes, without the patch. But it fails.
>>
>> With not-building-for-solaris.patch, fails too.
>>
>> I will try delete my build and try again.
>
> Be sure and start rebuilding the tcpdump package completely.
> Just running 'bitbake tcpdump' is probably not good enough.
> Here's what I would try:
> =C2=A0% bitbake tcpdump -c clean
> =C2=A0% rm -f sstate-cache/sstate-tcpdump*
> =C2=A0% bitbake tcpdump
>
> --
> ------------------------------------------------------------
> Gary Thomas =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=
=A0Consulting for the
> MLB Associates =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A0Embedded world
> ------------------------------------------------------------
>



--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

