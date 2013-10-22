Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D58E01688
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 08:45:16 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 Oct 2013 08:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="311149436"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Oct 2013 08:45:15 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 22 Oct 2013 08:45:15 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX116.amr.corp.intel.com ([10.22.240.14]) with mapi id
	14.03.0123.003; Tue, 22 Oct 2013 08:45:14 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: missing reference to "-ptest" packages for packagegroups in
	dev manual?
Thread-Index: AQHOzMXBBcA/lj8/O0i9MwyUqKm1F5oA4bsA
Date: Tue, 22 Oct 2013 15:45:14 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F406C1@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1310190818360.23665@oneiric>
In-Reply-To: <alpine.DEB.2.02.1310190818360.23665@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: missing reference to "-ptest" packages for packagegroups in dev manual?
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
X-List-Received-Date: Tue, 22 Oct 2013 15:45:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Looks that way.  Thanks Robert.

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Saturday, October 19, 2013 5:21 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: missing reference to "-ptest" packages for packagegroups in dev
>manual?
>
>
>  section 5.2.2 in current yocto dev manual reads:
>
>"inherit packagegroup sets appropriate default values and automatically ad=
ds
>-dev and -dbg complementary packages for every package specified in
>PACKAGES."
>
>  but oe core's packagegroup.bbclass contains the snippet:
>
>        for postfix in ['-dbg', '-dev', '-ptest']:
>            genpackages.append(pkg+postfix)
>
>so should that explanation also not mention the "-ptest" complementary
>package being added as well?
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
>


