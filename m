Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79808E017F8
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2013 07:55:54 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Nov 2013 07:55:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,678,1378882800"; d="scan'208";a="431392267"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2013 07:55:46 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.222]) with mapi id
	14.03.0123.003; Mon, 11 Nov 2013 07:55:46 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] does anything still use "meta-yocto-kernel-extras"?
Thread-Index: AQHO3S1kMLImGSC+rUqb2iH/9aWldJogMnBA
Date: Mon, 11 Nov 2013 15:55:44 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F45998@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311090421080.17171@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311090421080.17171@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: Re: does anything still use "meta-yocto-kernel-extras"?
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
X-List-Received-Date: Mon, 11 Nov 2013 15:55:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Darren?  Any insight on this?

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Saturday, November 09, 2013 1:23 AM
>To: Yocto discussion list
>Subject: [yocto] does anything still use "meta-yocto-kernel-extras"?
>
>
>  still in dev manual (where i'll be all day, i suspect), section 2.2 refe=
rs to the
>layer meta-yocto-kernel-extras, but i don't recall seeing *anything* that =
uses
>that layer (anymore?).
>
>  i just grepped through all of the layers i have checked out and found no=
t a
>single instance of the string "meta-yocto-kernel-extras", other than in th=
e
>documentation that mentions it.
>
>  is it still valid? still used somewhere?
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

