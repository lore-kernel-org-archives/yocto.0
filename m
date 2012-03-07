Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E18E013A2
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2012 08:47:36 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Mar 2012 08:47:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115946239"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2012 08:47:10 -0800
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Mar 2012 08:47:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.234]) with mapi id
	14.01.0355.002; Wed, 7 Mar 2012 08:47:09 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] dev manual: and why is meta-intel so important?
Thread-Index: AQHM/Et307Q03WTxHU+6t2kzhX7cVZZe2cgggAAw9gA=
Date: Wed, 7 Mar 2012 16:47:07 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B744489@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203070513120.28440@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B7443D4@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123793B7443D4@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: dev manual: and why is meta-intel so important?
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
X-List-Received-Date: Wed, 07 Mar 2012 16:47:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

See http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#supp=
orted-board-support-packages-(bsps) for a new version of this area.  Commen=
ts welcome. =20

Thanks,
Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rifenbark, Scott M
Sent: Wednesday, March 07, 2012 7:54 AM
To: Robert P. J. Day; Yocto discussion list
Subject: Re: [yocto] dev manual: and why is meta-intel so important?

This probably should say If you have set up a Yocto Project Files Git repos=
itory and you are also going to be using BSP Layers from meta-intel, you sh=
ould set up a Git repository for meta-intel.  The main point I was getting =
at originally was that if you use a Git repo for the YP files then you shou=
ld also use one for meta-intel if you are indeed going to be usinig it.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Wednesday, March 07, 2012 4:17 AM
To: Yocto discussion list
Subject: [yocto] dev manual: and why is meta-intel so important?


  [proof]reading yocto dev manual and in section 2.2, "Setting Up",
one reads:

"Git Repository Method: If you are working with a Yocto Project files
Git repository, you should also set up a meta-intel Git repository. "

  um ... why?  there's no hint of what that layer is for, it simply
suggests the reader go get it.  i would think there should be more of
an explanation, or perhaps any reference to meta-intel should simply
be dropped at that point until layers are more properly introduced and
explained later.

  thoughts?

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

