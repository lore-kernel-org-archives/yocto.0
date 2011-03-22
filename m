Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16FA84C800BB
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 12:00:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2011 10:00:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="900044561"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 22 Mar 2011 10:00:18 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 Mar 2011 10:00:17 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Tue, 22 Mar 2011 10:00:17 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, Matt Madison <madison@cisco.com>
Date: Tue, 22 Mar 2011 10:00:13 -0700
Thread-Topic: [yocto] Older versions of Linux as build hosts?
Thread-Index: AcvosPeBWjAn0ceaTYWqBoK/lj6xagAAWnEQ
Message-ID: <DE8BA75F34A0404282AC5E15F691BC765074554D@orsmsx504.amr.corp.intel.com>
References: <C9AE1F25.3EB2F%madison@cisco.com> <4D88D2D0.7050202@windriver.com>
In-Reply-To: <4D88D2D0.7050202@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Mailer <yocto@yoctoproject.org>
Subject: Re: Older versions of Linux as build hosts?
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
X-List-Received-Date: Tue, 22 Mar 2011 17:00:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes - the wiki is a great place for this type of information.  All the spec=
ifics for a particular build system and the steps you have to take to make =
it work can be collected there.  Then from the Quick Start we can mention w=
here to get support information for older versions.

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mark Hatle
Sent: Tuesday, March 22, 2011 9:48 AM
To: Matt Madison
Cc: Yocto Mailer
Subject: Re: [yocto] Older versions of Linux as build hosts?

On 3/22/11 11:40 AM, Matt Madison wrote:
> Hi,
>=20

I have done builds with both RHEL 4 and RHEL 5.  Both on machines in which =
I do
not have root access.

For me I was able to simply provide an update python, some additional tools=
 and
it worked.  (Note, I haven't tried it in the last 2 months though, so somet=
hing
may have broken since then.)

> I know the documentation mentions that you should be running a "reasonabl=
y
> current" Linux as your build host, but in my enterprise environment I'm s=
tuck
> with having to run fairly old versions, based on RHEL 4 and 5.  I've got =
some
> patches that I've been maintaining so I can bootstrap Bernard builds on t=
hese
> systems.  Is there any interest in supporting older systems as build host=
s?  Any
> thoughts on how far back "reasonably current" is going to be with each Yo=
cto
> release?  I'm trying to work with my IT group to upgrade a bit more frequ=
ently,
> and for developer workstations, that might be possible, but I'm not sure =
I'll be
> able to convince them to do that for servers in our data centers.
>=20
> Is anyone else having this kind of problem?

I think this is a fairly typical problem.  In my experience it's usually ea=
sier
to solve in a commercial space then pure open source.

As for the question about interest, we're always interested in patches.  At=
 a
minimum, it would be nice to document what steps you had to do and what pat=
ches
you may have had to apply in order to get "unsupported" functionality out o=
f the
build environment.  The yocto wiki seems a fairly natural place for this.

So please send what you have, or start an account on the Yocto Wiki and pos=
t it
there.

--Mark

> Thanks,
> -Matt
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

