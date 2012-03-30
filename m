Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0222E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:33:14 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2727546pbb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 13:33:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=c6CD0kanj3h4fzqSyi+KGjRWbcAAZasCPhZUaZGFUa0=;
	b=Y+X2Jakkj2ND83+JqvpaEJzDYz5uS/IbU8GZ7b49kp526tsYElqGdK+mL5EkzHT3Zo
	71zX2d3ayHfap8lhLoa9k1g8CGsPm84PKW8fTGwqgt3EEfbPQtZwnKfjjFcz2Co38M7Y
	Yi9LdThQHSx62xOJbI4M906LB/tgru9pW4CkDNpyQMkxoabvB8emzeiA72DZi6JKLYLe
	KaYflZ6fUpWBRB8DzLXuGPV3r+V170xW/CRyKVegF0+pXcyjF4m7BYUssBvTEu1JdEtZ
	RY5F/EiDzlaWA6F2ZYA0g8eb8cNKItdjtNuRCoHo47xd5zF9GmPBP9uqc3M86TLXaWoc
	FRvQ==
Received: by 10.68.229.169 with SMTP id sr9mr175245pbc.164.1333139594609;
	Fri, 30 Mar 2012 13:33:14 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id d3sm1795217pbq.9.2012.03.30.13.33.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 13:33:13 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F7614FE.5000107@windriver.com>
Date: Fri, 30 Mar 2012 13:33:23 -0700
Message-Id: <FA561F8C-6F8E-4B1C-8E8B-F704B8056B79@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQnNWyrhzL6MFHbIQtqIm5v0W3SvwdqgDooL7K+CZKCTvRe8jUOGzqnznbgpko61sXBCzDwQ
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Fri, 30 Mar 2012 20:33:15 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 13:18 heeft Mark Hatle het volgende geschreven:

> On 3/30/12 2:33 PM, Koen Kooi wrote:
>>=20
>> Op 30 mrt. 2012, om 12:26 heeft Mark Hatle het volgende geschreven:
>>=20
>>> On 3/30/12 1:44 PM, Koen Kooi wrote:
>>>> Hi,
>>>>=20
>>>> RP said I should raise this on the yocto lists, so here it is:
>>>>=20
>>>> The Angstrom core team would like to move angstrom under the yocto =
banner so
>>>> we can formally claim to be 'yocto'.
>>>=20
>>> For it to be on the yocto project web site, it just need to have the =
layers hosted on the git.yoctoproject.org.  But there is no "yocto".. =
It's the Yocto Project, Poky, or specific git repositories.  There is no =
reason we can't have an angstrom repository.  It could be in a similar =
format to the Poky repository (everything combined for a single =
download), or it could be a layer [or layers] that sit on top of Poky.
>>=20
>> Why on top of poky? I do not want poky, nor do my customers, oe-core =
is what
>> we need and want. This proposal to move angstrom under yocto is =
targeted at
>> eliminating 'poky' from the stack while still being able to say =
'yocto'.
>=20
> Poky is a repository made up of bitbake + oe-core + meta-yocto, as =
well as a distribution definition (in meta-yocto).  I assume angstrom =
has it's own distribution definition.
>=20
> So my question is why NOT on top of Poky (the repository, not =
distribution definition)?

1) It's downstream, I want to use upstream (oe-core, bitbake)
2) meta-yocto is *absolutely* unwanted, the meta-ti layer angstrom uses =
has much, much better support for the beagleboard.
3) It's downstream
4) The combo repo makes it harder to contribute things back upstream
5) It's downstream

I know I can change bblayers.conf to remove any unwanted layers, but =
what's the point of using that combo repo if I do that? It means that =
angstrom developers have to spend more time explaining that yes, it's a =
single git repo, but no, you can't send patches against it.

>> We both know that saying it is 'yocto' is wrong and misleading, but =
that's
>> what users are asking for and yocto advocates seem to push. Just =
watch the ELC
>> videos for yocto related presentations, 'yocto' and 'poky' are used
>> interchangeably in most of them.
>>=20
>> A 'reference' should be just that, a reference, not a mandated part.
>=20
> It's hard to call something Yocto Project based unless it used =
something from the Yocto Project.  meta-yocto being on of those =
components.

So you are saying that meta-yocto is an absolute requirement for =
anything that wants to use 'yocto' in its messaging?

> There is enough confusion about yocto vs poky vs..  It's slowly being =
reconciled and defined.. but it's a slow process for all of us.

Hence this proposal.



