Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8570DE0157B
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2013 02:28:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Aug 2013 02:28:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,861,1367996400"; d="scan'208";a="379542802"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.221])
	by fmsmga001.fm.intel.com with ESMTP; 12 Aug 2013 02:28:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
Date: Mon, 12 Aug 2013 10:28:11 +0100
Message-ID: <3375908.sLNS3qEgcB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130812091145.GE12589@sestofb10.enea.se>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<3217805.kYDiUIXKQu@helios>
	<20130812091145.GE12589@sestofb10.enea.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Mon, 12 Aug 2013 09:28:17 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Bj=F6rn,

On Monday 12 August 2013 11:11:45 Bj=F6rn Stenberg wrote:
> Paul Eggleton wrote:
> > We do definitely want automated testing on real hardware; it's just=
 that
> > that it presents a number of problems that need solving:
> >  * How do you deploy the image/kernel/bootloader onto the board in =
an
> > automated manner? To different kinds of boards?
> >  * How do you manage access to the boards when you have multiple
> > autobuilders potentially wanting to make use of them at around the =
same
> > time?
>=20
> These are all solved problems. We build and auto-test Yocto nightly o=
n a
> bunch of different hardware using tftp and nfs. I'm sure other teams =
do
> something similar. However, since there is no Yocto standard for this=
 yet
> we all do it slightly differently.

Right, that's what we would be aiming for. Perhaps you could talk a lit=
tle bit=20
about how you manage your hardware testing and any additional software =
and=20
scripts you make use of there?

> Also, even when/if Intel sets up an automated hardware lab for Yocto,=
 it
> will necessarily only have a limited selection of boards. Perhaps we =
could
> have a system where we pool community test results into one place rat=
her
> than depend on a single test lab.

I agree. In fact our test lab would probably be limited to the referenc=
e=20
boards that the Yocto Project officially supports within meta-yocto i.e=
. what we=20
currently test on manually.

> I have said it before, and I'll remind/nag about it again: Please don=
't run
> off and do this on your own. This is something that touches the daily=
 work
> of many community members and it should be done with open discussion.=


Good point, but this is one of the reasons we haven't done anything oth=
er than=20
some thinking about it on my part :) FWIW we still haven't started anyt=
hing on=20
ptest automation either so it's not the case that work is being done on=
 these=20
things outside of community channels. In either case, we can definitely=
 start=20
talking about it now if folks are ready but it's likely the implementat=
ion=20
work won't get done until 1.6.

The automated testing work we have done so far for 1.5 is just about en=
suring=20
there is a simple way to define runtime tests (completely separate from=
 ptest)=20
and make that easy for people to extend to cover their own use cases. T=
his in=20
turn makes it easier runtime tests to be written to automate a large po=
rtion=20
of our existing manual QA process.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

