Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DF544C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 16:49:46 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Jul 2011 14:49:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,531,1304319600"; d="scan'208";a="27371355"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 14 Jul 2011 14:49:45 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 14 Jul 2011 14:49:45 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.12]) with mapi id
	14.01.0289.001; Thu, 14 Jul 2011 14:49:44 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] why does quick start guide refer to non-provided
	"poky-image-sato"?
Thread-Index: AQHMQm2TyEy9BqWLZ02OIHDJpGLJg5TsWn0w
Date: Thu, 14 Jul 2011 21:49:44 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Re: why does quick start guide refer to non-provided "poky-image-sato"?
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
X-List-Received-Date: Thu, 14 Jul 2011 21:49:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

My understanding was that the target for this sample command could not be '=
core-image-sato' for the QS version on the website, which supports Bernard.=
  Maybe someone out there has a bit more information on details to your que=
stion. =20

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Thursday, July 14, 2011 2:32 PM
To: Yocto discussion list
Subject: [yocto] why does quick start guide refer to non-provided "poky-ima=
ge-sato"?


  maybe i'm misreading something, but the yocto QS guide provides the
sample command:

  $ bitbake -k poky-image-sato

however, nothing provides that target.  i can see the git log entry:

commit 1947b17478187bb623da74484747e470ce42d206
Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date:   Tue May 10 12:50:36 2011 -0500

    documentation/yocto-project-qs/yocto-project-qs.xml: changed build comm=
and

    The command used in the example to build an image was using
    'bitbake core-image-sato', which is only available in master and
    not Bernard.  So, I changed the command to be 'bitbake poky-image-sato'
    at Dave Stewart's request.  He located and pointed out the error.

    (From yocto-docs rev: 3fa83550aaec5a3549825814a77fa7a823a2daea)

    Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

but it seems that "core-image-sato" is perfectly valid, at least at
the moment.  clarification?

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

