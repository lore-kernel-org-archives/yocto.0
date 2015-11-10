Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F81E00B21; Tue, 10 Nov 2015 04:55:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20859E00B1E
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 04:55:31 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 10 Nov 2015 04:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,270,1444719600"; d="scan'208";a="597529588"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.0.72])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Nov 2015 04:55:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Nov 2015 12:55:28 +0000
Message-ID: <4056090.umPhX8FlA5@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <3979858.E2kEPMDCAm@aragorn>
References: <1576239.ihu6CIn72A@aragorn> <3979858.E2kEPMDCAm@aragorn>
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
X-List-Received-Date: Tue, 10 Nov 2015 12:55:34 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 10 November 2015 00:06:11 Jan-Simon Moeller wrote:
> Am Montag, 9. November 2015, 23:40:07 schrieb Jan-Simon Moeller:
> > Here is a patch to add "Leap" to the tested distros. I ran a couple=
 of
> > builds since the update and all is normal. Please consider for
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
> > diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yoct
> > index 2c99da8..06209fc 100644
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

It does appear that we should be testing on this if we aren't already, =
since=20
this is effectively the next stable release of OpenSUSE. Lucian?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

