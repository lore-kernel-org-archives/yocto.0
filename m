Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9695EE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:40:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Jun 2012 07:40:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="158381697"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 26 Jun 2012 07:40:36 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 07:40:35 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.235]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 07:40:35 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>, Robert P.J.Day
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] <rant>the current yocto FAQ is pretty much
	valueless</rant>
Thread-Index: AQHNU48RnoS5QgKWOUuvTAuuAhdU5pcMqoKw
Date: Tue, 26 Jun 2012 14:40:34 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1307E@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<8AEAB326-0A04-4916-80FE-556EEFDBA8DD@dominion.thruhere.net>
In-Reply-To: <8AEAB326-0A04-4916-80FE-556EEFDBA8DD@dominion.thruhere.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much	valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 14:40:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks all - I enjoyed the rant.  The obvious point is that the FAQ needs a=
ttention.  A good thing to do would be if you have a question that you woul=
d like included in a "good" FAQ, such as the one mentioned by Robert about =
how to add a single package, put the question up on this list or actually s=
ubmit a patch to the list.  As this little discussion thread noted, the FAQ=
 was initially created when the project launched and I think much of it rev=
olved around trying to answer the general "What the hell is Yocto anyway" q=
uestion.  I think we have moved into a "how do I do this" type of phase now=
 and the FAQ should have more of those types of entries.  That is not to sa=
y that questions about the Yocto Project in general should be deleted. =20

I will put some attention on the FAQ to try and inject a bit of value into =
it. =20

Thanks,=20
Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Koen Kooi
Sent: Tuesday, June 26, 2012 4:30 AM
To: Robert P.J.Day
Cc: Yocto discussion list
Subject: Re: [yocto] <rant>the current yocto FAQ is pretty much valueless</=
rant>


Op 26 jun. 2012, om 11:09 heeft Robert P. J. Day het volgende geschreven:

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
> Increase Productivity, then...
>=20
> The problem with such FAQs is that they are not, in a literal sense,
> FAQs at all. No one ever called the tech support line and asked, "How
> can we maximize productivity?" Rather, people asked highly specific
> questions, such as "How can we change the calendaring system to send
> reminders two days in advance instead of one?" and so on. But it's a
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

I'm afraid you have fallen into the yocto trap of confusing the umbrella pr=
oject with the buildsystem project under that umbrella. There's an easy way=
 to find out, everytime you hear someone state 'yocto' you just ask:

	 'Do you mean "yocto" or do you mean "poky"?'.=20

The reaction to that can go a few ways and the follow up actions I recommen=
d:

1) People don't get the question and/or don't know the difference between '=
yocto' and 'poky'. Pretend you have a nosebleed and walk away, fast
2) People say "Right, I meant the buildsystem, not the umbrella project" or=
 "No, I really meant 'yocto' as the umbrella project". Continue the convers=
ation.
3) People say "Koen put you up to this, didn't he?". You're most likely tal=
king to Dave or Saul, buy them lunch :)

regards,

Koen
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

