Return-Path: <stanciux.mihail@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0952E00BD2; Tue, 10 Nov 2015 05:15:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B466BE00B67
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 05:15:05 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 10 Nov 2015 05:15:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,270,1444719600"; d="scan'208";a="847524193"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2015 05:15:03 -0800
Received: from irsmsx108.ger.corp.intel.com ([169.254.11.23]) by
	IRSMSX101.ger.corp.intel.com ([163.33.3.153]) with mapi id
	14.03.0248.002; Tue, 10 Nov 2015 13:15:02 +0000
From: "Mihail, StanciuX" <stanciux.mihail@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Add SUSE 42.1 "Leap" to SANITY_TESTED_DISTROS
Thread-Index: AQHRG0CHQiGri65KcU+Hl9/qWA2lDp6UT/GAgADnswCAAAQXEA==
Date: Tue, 10 Nov 2015 13:15:01 +0000
Message-ID: <802B8E31E3519842A6CEE1B497E861B119E464E6@IRSMSX108.ger.corp.intel.com>
References: <1576239.ihu6CIn72A@aragorn> <3979858.E2kEPMDCAm@aragorn>
	<4056090.umPhX8FlA5@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <4056090.umPhX8FlA5@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Add SUSE 42.1 "Leap" to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 10 Nov 2015 13:15:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Paul,

We are not currently testing Leap. I will add this to the urgent tasks list=
 to verify the release and, if stable, upgrade our AB machine to this relea=
se.

Regards,
Mihai

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Tuesday, November 10, 2015 2:55 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Add SUSE 42.1 "Leap" to SANITY_TESTED_DISTROS

On Tuesday 10 November 2015 00:06:11 Jan-Simon Moeller wrote:
> Am Montag, 9. November 2015, 23:40:07 schrieb Jan-Simon Moeller:
> > Here is a patch to add "Leap" to the tested distros. I ran a couple=20
> > of builds since the update and all is normal. Please consider for=20
> > inclusion.
> >=20
> > Best,
> > Jan-Simon M=F6ller
> > ---
> > commit f729ca343849d2e0692caf18ba1789da408ceba3
> > Author: Jan-Simon M=F6ller <dl9pf@gmx.de>
> > Date:   Mon Nov 9 23:36:41 2015 +0100
> >=20
> >     Add SUSE Leap (SUSE-LINUX-42.1) to SANITY_TESTED_DIST
> >    =20
> >     Signed-off-by: Jan-Simon M=F6ller <dl9pf@gmx.de>
> >=20
> > ---
> >=20
> >  meta-yocto/conf/distro/poky.conf | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yoct index=20
> > 2c99da8..06209fc 100644
> > --- a/meta-yocto/conf/distro/poky.conf
> > +++ b/meta-yocto/conf/distro/poky.conf
> > @@ -84,6 +84,7 @@ SANITY_TESTED_DISTROS ?=3D " \
> >=20
> >              Debian-7.* \n \
> >              Debian-8.* \n \
> >              openSUSE-project-13.2 \n \
> >=20
> > +            SUSE-LINUX-42.1
> >=20
> >              "
> > =20
> >  # Default hash policy for distro
>
> I forgot the "\n" at the end ... please use the attached version.

It does appear that we should be testing on this if we aren't already, sinc=
e this is effectively the next stable release of OpenSUSE. Lucian?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

