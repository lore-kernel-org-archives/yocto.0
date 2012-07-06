Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A209EE006AD
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 10:13:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jul 2012 10:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="162210089"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2012 10:13:46 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 6 Jul 2012 10:13:46 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.133]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.125]) with mapi id
	14.01.0355.002; Fri, 6 Jul 2012 10:13:45 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: 'Paul Eggleton' <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Some questions about the webhob design
Thread-Index: Ac1ZFOdFGM6SyguyTo+eIH9a2sio8AButnyAAAOjafAAFi9XgAANgOmgAA3QgYAAAkr5UA==
Date: Fri, 6 Jul 2012 17:13:45 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8985E5@ORSMSX105.amr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<1609342.c99bAcXVHq@helios>
	<CDED78A957032E45B3239CDDA7642D151C8977DE@ORSMSX105.amr.corp.intel.com>
	<63888840.0N6Y68VfOI@helios>
In-Reply-To: <63888840.0N6Y68VfOI@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some questions about the webhob design
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
X-List-Received-Date: Fri, 06 Jul 2012 17:13:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Friday, July 06, 2012 4:23 AM
> To: Stewart, David C
>=20
> On Thursday 05 July 2012 23:00:17 Stewart, David C wrote:
> > Guys - I'm really struggling with this overall concept of concurrency.
> >
> > It implies that if Paul and I are sharing the same project and I make
> > a change to a .bb file to experiment with something (assuming we have
> > the ability to do that, refer to my last email) and my change breaks
> > my build, it will break everyone else's build as well.  But the beauty
> > thing is that it breaks it silently, because the configuration
> > silently changed for everyone on the project.
>=20
> The key word there I think is "experiment". Is it reasonable to expect to
> handle people making experimental changes to something that others are
> relying upon? It seems to me that whether experimental changes are likely
> and whether or not it will seriously impact other users depends on what
> development stage the particular project is at.

Whether it is reasonable or not, if it's possible for people to shoot thems=
elves in the foot, they will.  Even with safety guards on a circular saw, I=
 have seen people routinely disable them, so there you go.

How about a strongly visible warning on the Projects page that simultaneous=
 user changes will affect all users of the project's files? How about an as=
ynchronous notification to users on the main screen that some files have ch=
anged since their last build (and maybe list them).

Again, writing a user story is what I'm looking for. I would do it myself, =
but I'm still struggling. :-)


