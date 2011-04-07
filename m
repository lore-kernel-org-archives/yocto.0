Return-Path: <joaohf@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBAEB4C800A4
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2011 13:11:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so3889380iwr.35
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2011 11:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=ThIU+5j7JbNKkXBwemEJCCkuydvuGbezElrUmFLV9Ss=;
	b=SmD13qY2Emn3HCpfZnaKJcGGwRV705lZk10llqSLXdxyVy/GKLQKPOZRNGD/vzDzKY
	7a6br8uQ8i11GWTfADEdL2ezvbHYWyN3KqzQMx0bs9M+7cgK9NOMabyL+b4B1x1tkRb3
	Po++jNZ4Peq7yPzeYVEAMKYKwdbj/2dJWiGq8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=rc7VZha7hThA5AbvZmbUlQZu1oY2ctaH7kT0ZaJIYJVmJPFwjmGi5rz0XrA0zdhCQ4
	moUwFwdAdokRtv9+DjMY5bCXkJx3mFyKAQvxJgfQUOI1snKUl34pDYKO7nTU66y8GjcE
	EkCIqutTf4EYHOeycmurmbcfHNueDdqQ32BPg=
MIME-Version: 1.0
Received: by 10.42.1.8 with SMTP id 8mr1754649ice.407.1302199888999; Thu, 07
	Apr 2011 11:11:28 -0700 (PDT)
Received: by 10.42.148.134 with HTTP; Thu, 7 Apr 2011 11:11:28 -0700 (PDT)
In-Reply-To: <BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
	<BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
Date: Thu, 7 Apr 2011 15:11:28 -0300
Message-ID: <BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
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
X-List-Received-Date: Thu, 07 Apr 2011 18:11:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi

>
> You can move the recipes over from oe.dev to meta-oe if you wish. Should =
be a matter of adding the license info and building them.
>

I get tcpdump from oe.dev and put it inside my meta-test layer. I am
using yocto (bernard track).

When I run 'bitbake tcpdump':

| configure: WARNING: unrecognized options: --with-libtool-sysroot
| NOTE: Checking autotools environment for common misconfiguration
| ERROR: This autoconf log indicates errors, it looked at host include
and/or library paths while determining system capabilities.

I think this problem is trivial but I can't figure how to solve.

Any hint?




--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

