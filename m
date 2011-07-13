Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 927BB4C80BEE
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 01:04:22 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Jul 2011 23:04:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,523,1304319600"; d="scan'208";a="25241864"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 12 Jul 2011 23:04:08 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 13 Jul 2011 14:04:00 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 13 Jul 2011 14:03:59 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Joshua Lock <josh@linux.intel.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Date: Wed, 13 Jul 2011 14:03:57 +0800
Thread-Topic: [yocto] Supporting upcoming distribution releases
Thread-Index: AcxAxNieDE3bHhCcRMStntXVBWbUMgAXP6Rg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D6D85AC0@shsmsx501.ccr.corp.intel.com>
References: <1310496703.2162.17.camel@scimitar>
In-Reply-To: <1310496703.2162.17.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Wed, 13 Jul 2011 06:04:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> In our technical team call today we spent some time discussing how to
> support distribution releases that are due to happen around the time of Y=
octo 1.1.
>=20
> Yocto 1.1 is scheduled for release on October 6th[1], the same month
> in which both Ubuntu and Fedora have new releases planned[2,3].
> OpenSUSE doesn't have a release scheduled until November 10th[4].
>=20
> We should accommodate for these releases in our planning around 1.1 as
> we need to ensure that Yocto 1.1 can be used on the new versions of
> the chosen supported distros.
>=20
> I had initially suggested we have people doing test and any relevant
> development around the beta cycles of Ubuntu and Fedora:
>=20
> Fedora Beta (2011-09-20)
> Ubuntu (2011-09-01)
> In this time frame OpenSUSE will be on Milestone 5 (2011-09-01) which
> afaict (based on the 6th milestone being followed by an RC) should
> roughly equate to a beta.
>=20
> However this aligns with our RC period at which point we may not want
> to accept large patches?
>=20
> To meet our stabilise complete goal of August 29th we'd have to have
> people testing with:
> Fedora Alpha (2011-08-16)
> Ubuntu Alpha 3 (2011-08-04)
> OpenSUSE Milestone 4 (2011-08-11)
>

Thanks for the information, Josh.
I will add these into our test plan to make sure the above distribution(N+1=
) is validated.

> What are peoples thoughts on this? I think the onus for this testing
> will fall on engineers as the project QA is already pretty stretched.
> I have a tendency to update to early releases on at least one machine
> so will no doubt do some testing on Fedora but it would be nice to
> have a genuine strategy for this rather than relying on ad-hoc developer =
upgrades.
>=20
> Final note: I'm left wondering if this emails contents also make sense
> as a wiki page?
>=20
> Cheers,
> Joshua
>=20
> 1. https://wiki.pokylinux.org/wiki/Yocto_1.1_Schedule
> 2. https://wiki.ubuntu.com/OneiricReleaseSchedule
> 3. http://fedoraproject.org/wiki/Releases/16/Schedule
> 4. http://en.opensuse.org/Roadmap

Best Regards,
Jiajun


