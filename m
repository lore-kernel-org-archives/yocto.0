Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36F3B4C8086E
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 20:26:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Feb 2011 18:26:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,197,1297065600"; d="scan'208";a="659757960"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2011 18:26:24 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 21 Feb 2011 10:25:24 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 21 Feb 2011 10:25:22 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Chris Tapp <opensource@keylevel.com>
Date: Mon, 21 Feb 2011 10:25:20 +0800
Thread-Topic: [yocto] What builds 'netbase'?
Thread-Index: AcvQUHjiFVbMbtk+TEiS3ZqvGtA+mQBEkaDA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504FB48E619B@shsmsx502.ccr.corp.intel.com>
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
	<4D5FECDA.5020403@mlbassoc.com>
In-Reply-To: <4D5FECDA.5020403@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Mon, 21 Feb 2011 02:26:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Gary Thomas
> Sent: Sunday, February 20, 2011 12:16 AM
>=20
> On 02/19/2011 07:58 AM, Chris Tapp wrote:
> > I want to make some changes to /etc/interfaces.
> >
> > It looks to me as if this this comes from 'netbase', but what do I need=
 to
> rebuild to get my changes in to the rootfs? i.e. is there something I can
> >
> > bitbake -c clean ???; bitbake ???
> >
> > to get my changes in to the rootfs image?
> >
> > I tried cleaning 'netbase', but that made no difference when I then 'bi=
tbake
> poky-image-minimal'.
>=20
> Did you clean the shared state (sstate-cache) info that I told you about
> yesterday?

I think we should extend checksum to cover local files/patches, instead of =
just
recipe variables. This way old sstate cache will be automatically invalided=
 due
to different checksum from /etc/interfaces change.

On the other hand, bitbake task scheduling is done in a reverse order, i.e.
starting from poky-image-minimal.do_build, and then the task including netb=
ase
and then netbase. Here if you bump up PR for netbase, the dependency is con=
sidered
and then all the recipes recursively depending on netbase will be rebuilt a=
utomatically.
If you don't want to bump up PR, then you have to also manually clean up=20
task-poky-boot to make sure new netbase outputs integrated in new minimal i=
mage.

Thanks
Kevin

