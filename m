Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
 by mx.groups.io with SMTP id smtpd.web10.6117.1622195482682014649
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 02:51:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=Gz/bQ1tb;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.24, mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
	by mailout.west.internal (Postfix) with ESMTP id B07DE1A01;
	Fri, 28 May 2021 05:51:21 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
  by compute2.internal (MEProxy); Fri, 28 May 2021 05:51:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm3; bh=UxZK/F32zMQcUW3/WCuRGUvH8GcQsbV
	yyDV3njZIjCs=; b=Gz/bQ1tbFIpdWdRDcqhl8V18Xjun0IHM5dH/VPY8ZpYKN8m
	1VT+czZjKmfCNj4qxSUSrZU1wOkpTvMgLJIBWttQqiQonDTO1lLIWuum9qwvqpgs
	4KTQh1C1FkY4JPdFRYvbf2cIJ/4ZuTH8Dhymy4hR8gpjkrSnl9/4+6u8LIcLPV8m
	v3SUvzVaQXTyWNQdK5gZbIaPLB7j/2qXY08EHumO6GtQc9lbIv4+0dW7OJuGkBS2
	L/f6ce8Oy1xOeDkB942c7kMyQNtFh6Nri0Cf9HIo6I4TlSj/kQ6xe3vU8Egm7gpp
	noc4SlJ2bdx6J0BXBZYNkd7aAs0BPwUkG1hNmeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=UxZK/F
	32zMQcUW3/WCuRGUvH8GcQsbVyyDV3njZIjCs=; b=cIY0bRFu3S2VT/BIKDR9P6
	5adG0AZVXrmi0QypofpKteG7sKnGm4tBfQxi0OQiWU7xTNwQAV02DJufVua5EZmG
	XlUE0p2iykOfSZ4ugrhDjH8fKhXT9Py34mEj2Uy9x+xxNM2QG/OE3mwH8PHpOK3F
	ZzXcuaS0fY4xpENL7oO/5GcMytACta5DvP6J0iGRA0UP9JDr8B2UGDOVvnY0ZFTS
	B7eZUEOMMzNcPJV4bXJCZgxXQ7sPfxK/od/6Rqq/hzQB15gIXnP/JCqWIMCc7gko
	5kDkEBAI/pY653tV374av+XkJizRf9pgXu7AvtxJi5VFxpzigIkaLsOg228NC5hQ
	==
X-ME-Sender: <xms:GL2wYFNuJzpF1-zsnbg22i8LsIMZW2TfpzhZGWO3zg2LzeAEQiilTQ>
    <xme:GL2wYH-nYiZgd6URM8p0AWgRut6R-ZNrgkq8AaCfGmOqpkeIdmzfMYZyeXhSh_KF8
    ZjTLIqaY0fKfcFb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdekjedgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreerjeenucfhrhhomhepfdforghn
    uhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghnhggrgheshfgrshhtofgrihhlrd
    fhofeqnecuggftrfgrthhtvghrnhepudekfefgudehgfffieelleefteefjeduhfejueej
    ieevfeevueeivdefieduhfevnecuffhomhgrihhnpehsohhmvghsvghrvhgvrhdrthhlug
    dphihotghtohhprhhojhgvtghtrdhorhhgpdhhthhtphifihhthhgsrghsihgtrghuthhh
    vghnthhitggrthhiohhnvddrhhhofienucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:GL2wYETD8Xyrv6XjdwLFV_IzfiXwzVSk9u-yfry2bm105d8IlBgh0w>
    <xmx:GL2wYBuo8qdIL4MVefU1sXkVAqreeefjTzDxWSK2ponbBcQ5FhENWw>
    <xmx:GL2wYNeZgSSpG97C-0pS8_XEZX0xw-ai-D_cjujYukrH9MFUNNXuLg>
    <xmx:Gb2wYDqr3r5emWrMHZeqfrTXG3cRUL8uvS9mhWjY_jWqdyN5oPRiyQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 9B3D22E003D; Fri, 28 May 2021 05:51:20 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-468-gdb53729b73-fm-20210517.001-gdb53729b
Mime-Version: 1.0
Message-Id: <1159eaa0-608a-4b05-ab67-6c06b4408120@www.fastmail.com>
In-Reply-To: <20210528093505.s2rh2uuejkmwhyzu@qschulz>
References: <5246693f-118f-4c05-93f9-f49cbb3ed5b4@www.fastmail.com>
 <20210528093505.s2rh2uuejkmwhyzu@qschulz>
Date: Fri, 28 May 2021 11:50:59 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Where to define username/password when fetching sstate via http with basic authentication?
Content-Type: multipart/alternative;
 boundary=09dd9a5ca6ac4f8abb4940c6a65d852e

--09dd9a5ca6ac4f8abb4940c6a65d852e
Content-Type: text/plain

Hi Quentin,

obviously I didn't read that page carefully enough. Sorry for the noise and thanks for the hint.

Cheers, Manuel


Am Fr, 28. Mai 2021, um 11:35, schrieb Quentin Schulz:
> Hi Manuel,
> 
> On Fri, May 28, 2021 at 11:26:26AM +0200, Manuel Wagesreither wrote:
> > Hello all,
> > 
> > to speed up builds, we would like to make the CI generated sstate-cache available via internet. Due to IP concerns, we don't want to make it publically available but for authenticated hosts only.
> > 
> > [1] indicates it is possible to serve the sstate-cache over http with basic authentication [2].
> > 
> > How does one set the username & password? By putting it into the URL like in the following example, or are other ways available?
> > ```
> > SSTATE_MIRRORS ?= "\
> > file://.* http://username:password@someserver.tld/share/sstate/PATH"
> > ```
> > 
> 
> There is an example in the commit you sent, so I would say:
> SSTATE_MIRRORS ?= " \
> file://.* http://someserver.tld/share/sstate/PATH;user=username:password;downloadfilename=PATH \n"
> ?
> 
> Cheers,
> Quentin
> 
> 
> 
> 
> 

--09dd9a5ca6ac4f8abb4940c6a65d852e
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.MsoNor=
mal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi Quentin,<br></div>=
<div><br></div><div>obviously I didn't read that page carefully enough. Sor=
ry for the noise and thanks for the hint.<br></div><div><br></div><div>Chee=
rs, Manuel<br></div><div><br></div><div><br></div><div>Am Fr, 28. Mai 2021,=
 um 11:35, schrieb Quentin Schulz:<br></div><blockquote type=3D"cite" id=3D=
"qt" style=3D""><div>Hi Manuel,<br></div><div><br></div><div>On Fri, May 28=
, 2021 at 11:26:26AM +0200, Manuel Wagesreither wrote:<br></div><div>&gt; H=
ello all,<br></div><div>&gt;&nbsp;<br></div><div>&gt; to speed up builds, w=
e would like to make the CI generated sstate-cache available via internet. =
Due to IP concerns, we don't want to make it publically available but for a=
uthenticated hosts only.<br></div><div>&gt;&nbsp;<br></div><div>&gt; [1] in=
dicates it is possible to serve the sstate-cache over http with basic authe=
ntication [2].<br></div><div>&gt;&nbsp;<br></div><div>&gt; How does one set=
 the username &amp; password? By putting it into the URL like in the follow=
ing example, or are other ways available?<br></div><div>&gt; ```<br></div><=
div>&gt; SSTATE_MIRRORS ?=3D "\<br></div><div>&gt; file://.*&nbsp;<a href=
=3D"http://username:password@someserver.tld/share/sstate/PATH">http://user=
name:password@someserver.tld/share/sstate/PATH</a>"<br></div><div>&gt; ```<=
br></div><div>&gt;&nbsp;<br></div><div><br></div><div>There is an example i=
n the commit you sent, so I would say:<br></div><div>SSTATE_MIRRORS ?=3D " =
\<br></div><div>file://.*&nbsp;<a href=3D"http://someserver.tld/share/sstat=
e/PATH;user=3Dusername:password;downloadfilename=3DPATH">http://someserver.=
tld/share/sstate/PATH;user=3Dusername:password;downloadfilename=3DPATH</a> =
\n"<br></div><div>?<br></div><div><br></div><div>Cheers,<br></div><div>Quen=
tin<br></div><div><br></div><div><br></div><div><br></div><div><br></div><d=
iv><br></div></blockquote><div><br></div></body></html>

--09dd9a5ca6ac4f8abb4940c6a65d852e--
