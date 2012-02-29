Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8AEDE0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 08:00:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Feb 2012 08:00:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113097489"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 29 Feb 2012 07:59:03 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Feb 2012 07:59:03 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.102]) with mapi id
	14.01.0355.002; Wed, 29 Feb 2012 07:59:03 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] can someone add a README to the documentation/ directory?
Thread-Index: AQHM9vbcchlqnfR08UiwIuJrA7WQg5ZUCAcg
Date: Wed, 29 Feb 2012 15:59:03 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B74191E@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1202291026180.31319@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202291026180.31319@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: can someone add a README to the documentation/ directory?
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
X-List-Received-Date: Wed, 29 Feb 2012 16:01:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is a good idea Robert.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Wednesday, February 29, 2012 9:28 AM
To: Yocto discussion list
Subject: [yocto] can someone add a README to the documentation/ directory?


  as it is, if someone new to yocto checks out the git tree and sees
the documentation/ directory, they'll immediately hop in there, see
the possible manuals and perhaps run "make" to try to build them, with
no results.

  yes, the Makefile has internal documentation but, at the very least,
a README file should point the reader to the Makefile, then.  don't
make people guess.

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

