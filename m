Return-Path: <joaohf@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E7D224C800A4
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2011 14:48:53 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so3992963iym.35
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2011 12:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=0+igCrvVEK+V4zuv99wIVAf29tLp7l6+snfi9awMWHg=;
	b=Z/On+LTHP7lZf+Osf6J8kJNje5o1DEXfazJ+b6YnejG+I6GjuQ1/p6oAJm8u9WnwKY
	CtpxvyO+YTuTNATCBs+dal5rYA3KM4+BJcysB1Curoafq3rptfqlIPJzkVjbhR0dbjGC
	vegORVRqGrBl1s10Y2tzbU6Utyl7Ioi0x+6KE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=KEH1AxlOXR56tdXlh+AbZYsZmLI/fs4H7I7GEsgNfRL4BME0OVNMF61H0IwK5cUpEs
	PZ8GP54pH4YHWuj6ed1CfkFaRfRgX+ylnNXgg6VQAurhGY67hwXcfFHWKLUDUBMTk8TQ
	Y9FoI8hhkWJNwAa0R2dMFhUrhesO50WucqzZk=
MIME-Version: 1.0
Received: by 10.42.135.201 with SMTP id q9mr2096430ict.340.1302205733712; Thu,
	07 Apr 2011 12:48:53 -0700 (PDT)
Received: by 10.42.148.134 with HTTP; Thu, 7 Apr 2011 12:48:53 -0700 (PDT)
In-Reply-To: <4D9E0519.4060909@mlbassoc.com>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
	<BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
	<BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>
	<4D9E0519.4060909@mlbassoc.com>
Date: Thu, 7 Apr 2011 16:48:53 -0300
Message-ID: <BANLkTimgL0PhaySxNvTqCzvCdOKj29wuGg@mail.gmail.com>
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
X-List-Received-Date: Thu, 07 Apr 2011 19:48:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>
> I used this recipe, along with the attached patch to build tcpdump.
>

I am using the same recipes, without the patch. But it fails.

With not-building-for-solaris.patch, fails too.

I will try delete my build and try again.

Thanks.


--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

