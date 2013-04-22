Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B777FE014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 01:09:36 -0700 (PDT)
Received: by mail-qe0-f41.google.com with SMTP id b4so450013qen.14
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 01:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=TkvH3qkkVafr5LLG3/Ymwi9Dv1zw1Tyt0UGAalPTQnI=;
	b=WAxit/ajvymtR294qW4l1fdYhK2oen8PYdqLJu+Faopyp6dkKWc9sVRgh+ydC8WU2u
	v2H9Xr2BK3pZV59oGNRm0lDYtfSoxAalAEcf7yHmEjGJ1iwu7AL6duJFDRoyMJsww96F
	YLybIUb/MMPFu9Fy8bZCBU2OVtIqUYkB9XKtb0bFUYxjk21rZjGoqe0ABnBt1m7OJreO
	mrat5tOao/7fLaYW/qSPdq56R3uJQQtLSaZ7JcrKZg5lQ9CJeAlmGTXPERm8oGCw7nrV
	7ZPv+juUIM4C5ykED1E1GOeKAiDFe6XnpWLLOK7IL39oSm528oW+rTT9SeOWhUMgCGi3
	CImA==
MIME-Version: 1.0
X-Received: by 10.224.75.133 with SMTP id y5mr21473765qaj.78.1366618176000;
	Mon, 22 Apr 2013 01:09:36 -0700 (PDT)
Received: by 10.49.38.195 with HTTP; Mon, 22 Apr 2013 01:09:35 -0700 (PDT)
In-Reply-To: <d39e1aa5-4722-4c85-8295-8c95ebb7f11f@email.android.com>
References: <CAFyqS9rXZcC9EWFsM=9MfXtrr--8QmRq9+5kn2rJ_TzeE6nEBg@mail.gmail.com>
	<a2f752ad-070b-4b95-bf55-8ce4f031b199@email.android.com>
	<CAFyqS9oR-s4Mo5a-OyU6=NynDKTy+FsprDjxe1ubbkKLFmK=Ug@mail.gmail.com>
	<d39e1aa5-4722-4c85-8295-8c95ebb7f11f@email.android.com>
Date: Mon, 22 Apr 2013 10:09:35 +0200
Message-ID: <CAFyqS9pJcqvGxwn6eFf5NbbueRjQOQUD6KpxPTUz7uCEnPn8Jw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Anders Darander <anders@chargestorm.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gnupg vs gpgme
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Apr 2013 08:09:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 22, 2013 at 10:04 AM, Anders Darander <anders@chargestorm.se> w=
rote:
>
>
> "Hans Beck=E9rus" <hans.beckerus@gmail.com> wrote:
>
>>On Mon, Apr 22, 2013 at 9:47 AM, Anders Darander
>><anders@chargestorm.se> wrote:
>>> Hi,
>>>
>>> "Hans Beck=E9rus" <hans.beckerus@gmail.com> wrote:
>>>
>>>>Hello. I wish to bring in gnupg to our system but from what I can
>>tell
>>>>gnupg is not part of Yocto nor OpenEmbedded. However, gpgme is. Is
>>>>gpgme to consider a complete replacement for gnupg? I have no need
>>for
>>>>any gpg application libraries, but need the ability to sign and
>>>>perhaps encrypt/decrypt information. Is an option here to bring in
>>>>gnupg 1.4.13 myself or is this not something you should recommend?
>>>
>>> Well there are recipes for gnupg versions 1.4.7 and 2.0.19 in
>>OE-Core, and this in Yocto. See meta/recipes-support.
>>>
>>
>>Ah. Yes, now I see it. I think my mistake was that I searched for gpg
>>not gnupg :( My bad.
>>Is there anything that should make me consider 1.4.7 before 2.x? I am
>>looking for something as lean as possible since there are very limited
>>resources on the target system. Also, 1.4.13 seems to be considered
>>current stable. I guess OE is lagging behind somewhat on this package?
>>
>
> Well, 1.4.7 was the last release under GPLv2, which is the primary reason=
 for keeping it. 2.0 19 is what you'll get when >requesting gnupg from the =
build system, unless you either prefer the old version or declare that you =
don't want GPLv3 in >your images.

Ok I see. Thanks. GPLv2 vs GPLv3 is not an issue in my case. More
important is which version adds the lesser footprint. My guess is that
1.4.x is what I am looking for. But I will try and build both to see
which suits the best.

Hans

On Mon, Apr 22, 2013 at 10:04 AM, Anders Darander <anders@chargestorm.se> w=
rote:
>
>
> "Hans Beck=E9rus" <hans.beckerus@gmail.com> wrote:
>
>>On Mon, Apr 22, 2013 at 9:47 AM, Anders Darander
>><anders@chargestorm.se> wrote:
>>> Hi,
>>>
>>> "Hans Beck=E9rus" <hans.beckerus@gmail.com> wrote:
>>>
>>>>Hello. I wish to bring in gnupg to our system but from what I can
>>tell
>>>>gnupg is not part of Yocto nor OpenEmbedded. However, gpgme is. Is
>>>>gpgme to consider a complete replacement for gnupg? I have no need
>>for
>>>>any gpg application libraries, but need the ability to sign and
>>>>perhaps encrypt/decrypt information. Is an option here to bring in
>>>>gnupg 1.4.13 myself or is this not something you should recommend?
>>>
>>> Well there are recipes for gnupg versions 1.4.7 and 2.0.19 in
>>OE-Core, and this in Yocto. See meta/recipes-support.
>>>
>>
>>Ah. Yes, now I see it. I think my mistake was that I searched for gpg
>>not gnupg :( My bad.
>>Is there anything that should make me consider 1.4.7 before 2.x? I am
>>looking for something as lean as possible since there are very limited
>>resources on the target system. Also, 1.4.13 seems to be considered
>>current stable. I guess OE is lagging behind somewhat on this package?
>>
>
> Well, 1.4.7 was the last release under GPLv2, which is the primary reason=
 for keeping it. 2.0 19 is what you'll get when requesting gnupg from the b=
uild system, unless you either prefer the old version or declare that you d=
on't want GPLv3 in your images.
>
> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB          Tel: +46 702 44 84 36
> Laxholmstorget 3        Email: anders@chargestorm.se
> 602 21 Norrk=F6ping       Web: www.chargestorm.se
>
> Sent from my Android phone with K-9 Mail. Please excuse my brevity.

