Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7D2FE00280
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 09:46:42 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jul 2012 09:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="177411915"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 25 Jul 2012 09:46:41 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 25 Jul 2012 09:46:40 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Wed, 25 Jul 2012 09:46:40 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] does a BSP layer *require* a README file?
Thread-Index: AQHNaeJtqg+aOqDfmkOZzwyO0oui1Jc6F/WQgAAdjZA=
Date: Wed, 25 Jul 2012 16:46:39 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A46603@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1207241719300.4602@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A4550D@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A4550D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: does a BSP layer *require* a README file?
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
X-List-Received-Date: Wed, 25 Jul 2012 16:46:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here is some more information on this topic.  All layers are not BSP layers=
 (i.e the meta-tlk layer is not a BSP).  Regarding the real question as to =
whether a BSP layer *must* have a README file to be considered Yocto-compli=
ant, I have been told that it does need the file.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rifenbark, Scott M
Sent: Wednesday, July 25, 2012 8:00 AM
To: Robert P. J. Day; Yocto discussion list
Subject: Re: [yocto] does a BSP layer *require* a README file?

There recently was a concern that we document the requirements of a BSP lay=
er so that it could be considered Yocto-compliant.  The BSP guide does lay =
out the "must" word in that new section where it talks about the README Fil=
e.  Is it really required?  Opinions?

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Tuesday, July 24, 2012 2:22 PM
To: Yocto discussion list
Subject: [yocto] does a BSP layer *require* a README file?


  currently, the BSP guide seems quite adamant that a BSP layer *must*
have a top-level README file, but at least a couple of the meta-intel
sublayers (meta-tlk, meta-n450) have no such file.  so should that
alleged requirement be, you know, dropped?

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

