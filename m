Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E87E0E0141D
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 04:29:46 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2031547eek.35
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 04:29:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=KcmyehExsRXNnVeA5TYk1DnZ77blzlGNfvYlUTP8hxE=;
	b=UDTkw6pvtSgKeZKgelhs3F8BaixbY6q/hfRiMqVdg/oCY3gF5FvcPVEmrg7sGBJmnZ
	vOD/t/N86+ub8oMhX6P5ZA2nP64tlKunkAdLMvm/La6IOU7BeQEyUfZLkRePY9kZqQSN
	X6g43zVlysj0bejVLLZjStt8hRUN17LCyOaT+7QZ7g5k5ExS/jgKbtkn3Y4OdlMaBdEq
	CEX7ZgW0AK09T2r3HIOG1uTm61e0f4pd5wpIhfiucPaRTCkDe7JplX/IIEOeVRSxay7W
	jiGPS8NOrSj6IWZgx6AzTy2fhNNIATSNAAWCMlHHXqkGxly/HWptP7FtTxwtcoNieCDu
	tjyg==
Received: by 10.14.29.13 with SMTP id h13mr3052225eea.30.1340710185500;
	Tue, 26 Jun 2012 04:29:45 -0700 (PDT)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id t3sm148036455eeb.15.2012.06.26.04.29.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 26 Jun 2012 04:29:44 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <alpine.DEB.2.02.1206260459040.8547@oneiric>
Date: Tue, 26 Jun 2012 13:29:38 +0200
Message-Id: <8AEAB326-0A04-4916-80FE-556EEFDBA8DD@dominion.thruhere.net>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
To: Robert P. J. Day <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.1278)
X-Gm-Message-State: ALoCoQmitF0zXk59aQRJgg71nQJOX1mt1b068Q1pPL9og03DhyZPKKOKv8IvauAndmzZF4CnyJhZ
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 11:29:47 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Op 26 jun. 2012, om 11:09 heeft Robert P. J. Day het volgende =
geschreven:

>=20
>  i mentioned this to scott rifenbark privately a few days ago, but i
> figured i might as well antagonize a few people on the list by saying
> it publicly -- the yocto FAQ as it stands is pretty much worthless.
>=20
>  https://wiki.yoctoproject.org/wiki/FAQ
>=20
>  by way of explanation, i'll reproduce the first part of the superb
> foreword in the subversion red book:
>=20
> =3D=3D=3D=3D=3D start =3D=3D=3D=3D=3D
>=20
> A bad Frequently Asked Questions (FAQ) sheet is one that is composed
> not of the questions people actually ask, but of the questions the
> FAQ's author wishes people would ask. Perhaps you've seen the type
> before:
>=20
> Q: How can I use Glorbosoft XYZ to maximize team productivity?
>=20
> A: Many of our customers want to know how they can maximize
> productivity through our patented office groupware innovations. The
> answer is simple. First, click on the File menu, scroll down to
> Increase Productivity, then=85
>=20
> The problem with such FAQs is that they are not, in a literal sense,
> FAQs at all. No one ever called the tech support line and asked, =93How
> can we maximize productivity?=94 Rather, people asked highly specific
> questions, such as =93How can we change the calendaring system to send
> reminders two days in advance instead of one?=94 and so on. But it's a
> lot easier to make up imaginary Frequently Asked Questions than it is
> to discover the real ones.
>=20
> =3D=3D=3D=3D=3D end =3D=3D=3D=3D=3D
>=20
>  in other words, a *good* FAQ might be:
>=20
> "how can i use the yocto prebuilt toolchains to save build time?"
>=20
>  a *bad* FAQ would be:
>=20
> "Does the Yocto Project have a special governance model, or is it
> managed as an open source project?"
>=20
>  the kicker is that that last question is, in fact, in the yocto FAQ,
> along with a number of other questions that have never been asked by
> anyone in the history of the planet.  i chat about yocto with people
> on a regular basis, and i can assure you, not a single one of them has
> ever asked, "hey, rob, can you explain yocto's governance model?"
>=20
>  no, what they ask is, "hey, rob, how can i add a single package to
> an existing target?"  a question that, i should point out, is not
> answered definitively in the existing docs *anywhere*.

I'm afraid you have fallen into the yocto trap of confusing the umbrella =
project with the buildsystem project under that umbrella. There's an =
easy way to find out, everytime you hear someone state 'yocto' you just =
ask:

	 'Do you mean "yocto" or do you mean "poky"?'.=20

The reaction to that can go a few ways and the follow up actions I =
recommend:

1) People don't get the question and/or don't know the difference =
between 'yocto' and 'poky'. Pretend you have a nosebleed and walk away, =
fast
2) People say "Right, I meant the buildsystem, not the umbrella project" =
or "No, I really meant 'yocto' as the umbrella project". Continue the =
conversation.
3) People say "Koen put you up to this, didn't he?". You're most likely =
talking to Dave or Saul, buy them lunch :)

regards,

Koen=

