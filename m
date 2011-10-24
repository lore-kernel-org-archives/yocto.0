Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F084E012F3
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2011 20:12:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Oct 2011 20:12:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,396,1315206000"; d="scan'208";a="65552579"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 23 Oct 2011 20:12:45 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 24 Oct 2011 11:12:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 24 Oct 2011 11:12:13 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Mon, 24 Oct 2011 11:12:12 +0800
Thread-Topic: [yocto] Proposed roadmap and design for Hob improvement
Thread-Index: AQHMkDZTpBw+KHCQZkuO0BR9k/nt2JWKzEWw
Message-ID: <33AB447FBD802F4E932063B962385B3512DB2DBA09@shsmsx501.ccr.corp.intel.com>
References: <33AB447FBD802F4E932063B962385B3512DB258EA4@shsmsx501.ccr.corp.intel.com>
	<CAEsOVNeCEA73vjHeaL8S4S7wxWgus3TZ5XSQr0i=5m8KOwJrvg@mail.gmail.com>
In-Reply-To: <CAEsOVNeCEA73vjHeaL8S4S7wxWgus3TZ5XSQr0i=5m8KOwJrvg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Proposed roadmap and design for Hob improvement
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
X-List-Received-Date: Mon, 24 Oct 2011 03:12:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]
> Sent: Saturday, October 22, 2011 5:14 AM
> To: Yu, Ke
> Cc: Yocto Project Discussion
> Subject: Re: [yocto] Proposed roadmap and design for Hob improvement
>=20
> On Thu, Oct 20, 2011 at 10:16 PM, Yu, Ke <ke.yu@intel.com> wrote:
> > Hi,
> >
> > As the Yocto 1.2. plan is starting
> (https://wiki.yoctoproject.org/wiki/Yocto_1.2_Features ), here I draft a
> proposal for the roadmap and design on HOB improvement task
> (http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1588) . Please review=
. Any
> feedback is welcome.
>=20
> Seems like with the build packages and build image steps separated you co=
uld
> skip the build step completly for most packages if we ship or host pre-bu=
ilt build
> packages
>=20
> -M

Yes, current design supports this scenario, i.e. if some packages are alrea=
dy pre-built, HOB will notice that and won't build them again.

Regards
Ke

