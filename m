Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4144.1584035501027592676
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2020 10:51:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: sakuraus.com, ip: 140.211.169.56, mailfrom: gwilson@sakuraus.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BB1E01831; Thu, 12 Mar 2020 10:51:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [209.222.82.218 listed in list.dnswl.org]
Received: from outbound-ip21b.ess.barracuda.com (outbound-ip21b.ess.barracuda.com [209.222.82.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41019E0179B
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2020 10:51:27 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by mx7.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO); Thu, 12 Mar 2020 17:51:22 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
 (10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 12
 Mar 2020 10:51:18 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
 ([::1]) with mapi id 15.01.0669.032; Thu, 12 Mar 2020 10:51:18 -0700
From: "Greg Wilson-Lindberg" <gwilson@sakuraus.com>
To: Denys Dmytriyenko <denis@denix.org>
CC: Anders Montonen <Anders.Montonen@iki.fi>, Yocto list discussion
	<yocto@yoctoproject.org>
Subject: Re: [yocto] Getting kernel patch to work
Thread-Topic: [yocto] Getting kernel patch to work
Thread-Index: AdX3NRByz9FZgcwoQi+wPDGVBY4CfwAcPZ6AABXrDWsAD2DeAAAW2u0A
Date: Thu, 12 Mar 2020 17:51:18 +0000
Message-ID: <c97dce79dd0f43bda19d450d0a670a7b@sakuraus.com>
References: <7f0a414e985c4b86bfefff5eab8c6108@sakuraus.com>
 <1FE10608-8C76-4307-B921-5B3C2DCC4CEE@iki.fi>
 <7983bbc0f42b4b419b32632fcf28f983@sakuraus.com>
 <20200311235528.GK1578@denix.org>
In-Reply-To: <20200311235528.GK1578@denix.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.142]
MIME-Version: 1.0
X-BESS-ID: 1584035478-893013-26443-31250-4
X-BESS-VER: 2019.1_20200311.2054
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.222867 [from 
	cloudscan10-235.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Denys,
I guess I have been rather blind when putting this together. That's what I=
 get for not copying and pasting.

Thanks,
Greg

> -----Original Message-----
> From: Denys Dmytriyenko <denis@denix.org>
> Sent: Wednesday, March 11, 2020 4:55 PM
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: Anders Montonen <Anders.Montonen@iki.fi>; Yocto list discussion
> <yocto@yoctoproject.org>
> Subject: Re: [yocto] Getting kernel patch to work
>=20
> ${} and not $()
>=20
> On Wed, Mar 11, 2020 at 11:43:36PM +0000, Greg Wilson-Lindberg wrote:
> > Hi Anders,
> >
> > Good catch, thanks for seeing that.
> >
> >
> > I also realized that I was missing a FILESEXTRAPATHS_prepend. I have t=
ried
> both:
> >
> > FILESEXTRAPATHS_prepend :=3D "$(FILE_DIRNAME)/files:"
> > and
> > FILESEXTRAPATHS_prepend :=3D "$(THISDIR)/files:"
> >
> > In both cases I don't see the expansion (i.e. I see '$(FILE_DIRNAME)/f=
iles:'
> or '$(THISDIR)/files:') in the list of searched directories. I would thi=
nk that I
> should see the expanded directory path.
> >
> > Here is the net beginning of my .bbappend file:
> >
> > # additions to Kernel configuration
> >
> > FILESEXTRAPATHS_prepend :=3D "$(FILE_DIRNAME)/files:"
> > #FILESEXTRAPATHS_prepend :=3D "$(THISDIR)/files:"
> > SRC_URI+=3D "file://0001-drm-vc4-Keep-the-binner-BO-through-
> suspend.patch"
> >
> >
> > Regards,
> > Greg
> >
> >
> > ________________________________
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of Anders Montonen <Anders.Montonen@iki.fi>
> > Sent: Tuesday, March 10, 2020 11:07:33 PM
> > To: Yocto list discussion
> > Subject: Re: [yocto] Getting kernel patch to work
> >
> > Hi,
> >
> > > On 11 Mar 2020, at 1:57, Greg Wilson-Lindberg <GWilson@sakuraus.com>
> wrote:
> > >
> > > SRC_URi +=3D "file://0001-drm-vc4-Keep-the-binner-BO-through-suspend=
-
> GWL.patch"
> >
> > It looks like you have a typo here, the last letter of SRC_URI isn't
> capitalized.
> >
> > -a
> >
>=20
> >=20

