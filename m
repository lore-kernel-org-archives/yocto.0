Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.5492.1621498603575499068
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 01:16:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4Fm2dN2192z5tlB;
	Thu, 20 May 2021 10:16:40 +0200 (CEST)
Date: Thu, 20 May 2021 10:16:39 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] hostile freenode takeover
Message-ID: <20210520081639.ybcnadwxsjvdgsme@qschulz>
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com>
 <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
 <CAMKF1srcOQwH41Z9g00ZRgaLuN=JS9D1wVNv-+3TP2c=GWOxYA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srcOQwH41Z9g00ZRgaLuN=JS9D1wVNv-+3TP2c=GWOxYA@mail.gmail.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Khem, all,

On Wed, May 19, 2021 at 10:09:12AM -0700, Khem Raj wrote:
> On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
> >
> >
> >
> > On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko <Jasper.Orschulko@ir=
is-sensing.com> wrote:
> >>
> >> -----BEGIN PGP SIGNED MESSAGE-----
> >> Hash: SHA256
> >>
> >> Dear all,
> >>
> >> there have been recent reports of a hostile takeover of the freenode
> >> service, as described in
> >> https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409
> >>
> >> The Yocto Project should verify these reports and take the necessary
> >> actions, in order to protect its users.
> >
> >
> > Thanks for your email. We are aware, and have started to look into th=
at.
> >
> > It looks like some open source communities have started to move to ht=
tps://www.oftc.net/ or https://libera.chat/.. If anyone wants to bring an=
y insights or recommendations... feel free!
>=20
> perhaps good time to consider matrix
>=20

I disagree. Matrix just does not work. I've been using with a few
friends with mixed homeservers, chat.privacytools.io, matrix.org,
converser.eu and self-hosted homeservers... I've sometimes not received
tens of messages in a row, usually for a duration of at least 15 mins
and there's obviously no indication whatsoever that I didn't receive
messages except that the discussion does not make sense at all. And this
happened to three other people on the room, each on a different homeserve=
r
than the other, so not a PEBKAC :) Sometimes there are delays for
messages too (I've seen 30min delays), so the whole context is lost.

For a federated chat solution, that's really a bummer that its main
feature is just so buggy it's unusable.

If YP is ok with potentially not receiving questions or having people
ask questions and not receive answers, then fine by me :)

I'm probably among the small (?) minority of people experiencing those
issues but that's not a bet I'd take with my projects.

My 2=A2.

Cheers,
Quentin
