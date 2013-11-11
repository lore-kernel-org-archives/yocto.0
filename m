Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93386E0172C
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 07:54:37 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2013 07:54:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,678,1378882800"; d="scan'208";a="431391513"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2013 07:54:34 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.149]) with mapi id
	14.03.0123.003; Mon, 11 Nov 2013 07:54:33 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] the current dev manual seems to overly emphasize the
	importance of meta-intel
Thread-Index: AQHO3Sx9cEazRM0H1kKC4pd5URL/zpogHxGg
Date: Mon, 11 Nov 2013 15:54:32 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F45986@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311090412110.17116@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311090412110.17116@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: the current dev manual seems to overly emphasize the importance of meta-intel
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
X-List-Received-Date: Mon, 11 Nov 2013 15:54:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

You might imply these things reading this and you might not.  The opening s=
entence about the layer "meta-intel" being maintained in its own separate G=
it repository is factual and can stand on its own arguably with no implicat=
ions that there is anything "magical" about it.=20

The second point's implication is more valid.  You could read into this sen=
tence that one must have a clone of this repository in order to get started=
 with BSPs, which is not true.  I can update that paragraph to give the tru=
e value of having that local repo, which is to possibly use them as templat=
es or base BSPs when creating your own.  I have reworded that particular se=
ntence to "Using Git to create a local clone of the upstream repository can=
 be helpful if you are working with BSPs." =20

Note that I am applying this change to "latest" only.

Thanks,
Scott=20

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Saturday, November 09, 2013 1:16 AM
>To: Yocto discussion list
>Subject: [yocto] the current dev manual seems to overly emphasize the
>importance of meta-intel
>
>
>  perusing the current dev manual and it reads:
>
>"Supported Board Support Packages (BSPs): The Yocto Project provides a lay=
er
>called meta-intel and it is maintained in its own separate Git repository.=
.."
>
>  this wording *seems* to suggest there is something magical about the met=
a-
>intel layer as compared to the numerous other layers. in particular, this
>statement further down just adds to that impression:
>
>"To get started with the BSPs, you need to use Git to create a local clone=
 of
>the upstream repository."
>
>  i see no problem with using the meta-intel layer as an *example* but tha=
t
>section should be reworded to not make the reader think that meta-intel is
>unique in some weird sense. just my $0.02.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

