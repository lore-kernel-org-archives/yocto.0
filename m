Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
	[149.32.232.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D458E01410
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 16:19:15 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,458,1363132800"; 
   d="scan'208";a="4581749"
X-IronPort-AV: E=Sophos;i="4.87,458,1363132800"; 
   d="scan'208";a="9203259"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Thread-Topic: [yocto] Config fragment not being picked up
Thread-Index: AQHONvnGciO3n1vSLEGHMocqsqv435jRpwKw
Date: Thu, 11 Apr 2013 23:19:11 +0000
In-Reply-To: <20130411211247.GA15702@wrk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
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
X-List-Received-Date: Thu, 11 Apr 2013 23:19:15 -0000
Message-ID: <MADEUP.15D9585CFE57489A.29417@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > Think I've followed the example in the manual correctly. My append file=
 is
> pretty simple:
> >
> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
>=20
> It looks like you forgot the colon at the end of the path.
> Try this:
>   FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>=20
> -Kevin

Good eye, but afraid that didn't help (maybe the path was empty before???).=
 I think the files are getting picked up, since fetch will fail if change t=
he file name to force a not found error.

>=20
> > SRC_URI +=3D "file://can.cfg"
> >
> > I'm doing this in a layer on top of a yocto-based SDK.  Don't think it =
should
> matter, but the underlying kernel recipe has:
> >
> > do_configure_prepend() {
> >                 # copy desired defconfig so we pick it up for the real
> kernel_do_configure
> >                 cp ${KERNEL_DEFCONFIG} ${B}/.config }
> >
> > Wasn't able to make much sense of the log: lots of "DEBUG: Removing
> manifest ..." and then some kcfonig output?
> > Any advice/suggestions?
> >
> > Thanks,
> >
> > Dean


