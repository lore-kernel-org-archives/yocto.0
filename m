Return-Path: <joaohf@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 153744C80509
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2011 10:07:41 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so9620336iym.35
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2011 08:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=KTs5jntTMCdPgy5sDNrEliKC98fDtLBcxwvAFMIdr7g=;
	b=pLJ1kaoYScZqOO8nZHC8nt2mnOVWn8+zlKusKKyJSaO0pXlJSIWKWlyJUDl/tM2wST
	NQin/hFo7ycEwzWgMoBDlBlA3TVceGeGnDneXpo4l7Eh2azFhRIxh45XaYF+4Eed7z+W
	9qBqxHH/hkUpniY93J8EIOOtaDHjuxrO7kzOo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=xbUtRbl+Edkns/p2M4x9vIduOK0o/AxQF5gxgv8qfkMNrVTSwP9WL1GhPpKOujbXs8
	Dy16KvOuW6sJS2V4MlIq+DXsMfwQ8WEBkfJTKXPEoMCHmdkIfLDrRsRcXL8XWUfxxvO/
	IUQJpFDK4V0HZUh4Tb1uhcmSr5kv44a9y2TyU=
MIME-Version: 1.0
Received: by 10.42.82.211 with SMTP id e19mr1932301icl.134.1302620859994; Tue,
	12 Apr 2011 08:07:39 -0700 (PDT)
Received: by 10.42.170.7 with HTTP; Tue, 12 Apr 2011 08:07:39 -0700 (PDT)
In-Reply-To: <BANLkTimQ22OrQx6OzsfVjreSnkQxafW06w@mail.gmail.com>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
	<BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
	<BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>
	<4D9E0519.4060909@mlbassoc.com>
	<BANLkTimgL0PhaySxNvTqCzvCdOKj29wuGg@mail.gmail.com>
	<4D9E1C97.2070107@mlbassoc.com>
	<BANLkTimQ22OrQx6OzsfVjreSnkQxafW06w@mail.gmail.com>
Date: Tue, 12 Apr 2011 12:07:39 -0300
Message-ID: <BANLkTi=ULVfDrC7-0n0+8xLyJZ+4cjC_bw@mail.gmail.com>
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
X-List-Received-Date: Tue, 12 Apr 2011 15:07:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I found the problem: host contamination.

tcpdump search by pcap-config script and runs it to get where pcap
library lives.

On my ubuntu box I haven't the pcap-devel package installed. But on
mandriva box I had.

I have two question:

How Yocto can protect against this situation?

Is any guide or hint about how I can patch a autotools based  and
removes this host contamination?

Thanks.


2011/4/9 Jo=C3=A3o Henrique Freitas <joaohf@gmail.com>:
> Hello,
>
> I need to confirm same data but it works.
>
> I have two build hosts Ubuntu 10.10 (OK, at home) Mandriva 2010.1
> (FAIL, at work).
>
> Thanks.
>
> 2011/4/7 Gary Thomas <gary@mlbassoc.com>:
>> On 04/07/2011 01:48 PM, Jo=C3=A3o Henrique Freitas wrote:
>>>>
>>>> I used this recipe, along with the attached patch to build tcpdump.
>>>>
>>>
>>> I am using the same recipes, without the patch. But it fails.
>>>
>>> With not-building-for-solaris.patch, fails too.
>>>
>>> I will try delete my build and try again.
>>
>> Be sure and start rebuilding the tcpdump package completely.
>> Just running 'bitbake tcpdump' is probably not good enough.
>> Here's what I would try:
>> =C2=A0% bitbake tcpdump -c clean
>> =C2=A0% rm -f sstate-cache/sstate-tcpdump*
>> =C2=A0% bitbake tcpdump
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0Consulting for the
>> MLB Associates =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A0Embedded world
>> ------------------------------------------------------------
>>
>
>
>
> --
> -----------------------------------------------------------
> Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
> Campinas-SP-Brasil
> BSD051283
> LPI 1
> http://www.joaohfreitas.eti.br
>



--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

