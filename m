Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E394AE0132B
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 07:43:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Oct 2011 07:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="69380184"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 31 Oct 2011 07:43:39 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 31 Oct 2011 07:43:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.38]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.170]) with mapi id
	14.01.0323.003; Mon, 31 Oct 2011 07:43:38 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] couple questions about cleaning up the Quick Start Guide
Thread-Index: AQHMlxEZEWKC20B4UUS6qMVwXYn4SJWWh1fg
Date: Mon, 31 Oct 2011 14:43:38 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E9FEFB@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1110301030050.32341@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1110301030050.32341@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: couple questions about cleaning up the Quick Start Guide
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
X-List-Received-Date: Mon, 31 Oct 2011 14:43:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Thanks for the stuff and the look here.  Regarding your first point - I don=
't have a problem using the real link over the redirect.  The only things t=
hat come to mind are if they work why change them?  But, if the community w=
ants the downloads.yoctoproject.org/releases URL in there I can certainly g=
o in and make changes to master. =20

On the second point - you are absolutely correct here.  I will fix that in =
master to reflect where the tarball really is.  I think as the project move=
s forward there will be more consistency.  Early life jitters I guess :)

Thanks for your input.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Sunday, October 30, 2011 7:34 AM
To: Yocto discussion list
Subject: [yocto] couple questions about cleaning up the Quick Start Guide


  perusing the QS guide in prep for giving a yocto talk this week to
my local LUG and some cosmetic changes i can submit a patch for:

1) www.yoctoproject.org/downloads clearly redirects to
   downloads.yoctoproject.org/releases these days.  any objection
   to my just changing the former references to the latter throughout
   the QS guide?

2) there's a reference to the edison tarball

http://www.yoctoproject.org/downloads/poky/poky-edison-6.0.tar.bz2

   but there's no such tarball, it's at

http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.=
tar.bz2

  although *older* tarballs are under the "downloads" directory.
what's the proper directory location for this stuff?  can it be made
consistent?  thanks.

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

