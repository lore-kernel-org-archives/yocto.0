Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BEE5B4C800A1
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 17:16:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2011 15:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,531,1304319600"; d="scan'208";a="28110236"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2011 15:16:10 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 14 Jul 2011 15:16:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.75]) with mapi id
	14.01.0289.001; Thu, 14 Jul 2011 15:16:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] why does quick start guide refer to non-provided
	"poky-image-sato"?
Thread-Index: AQHMQm2TyEy9BqWLZ02OIHDJpGLJg5TsWn0wgAB5DQD//469MA==
Date: Thu, 14 Jul 2011 22:16:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379031484@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 14 Jul 2011 22:16:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

What release of Yocto Project are you using?

Scott

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: Thursday, July 14, 2011 3:01 PM
To: Rifenbark, Scott M
Cc: Yocto discussion list
Subject: RE: [yocto] why does quick start guide refer to non-provided "poky=
-image-sato"?

On Thu, 14 Jul 2011, Rifenbark, Scott M wrote:

> Robert,
>
> My understanding was that the target for this sample command could
> not be 'core-image-sato' for the QS version on the website, which
> supports Bernard.  Maybe someone out there has a bit more
> information on details to your question.
>
> ScottR
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Robert P. J. Day
> Sent: Thursday, July 14, 2011 2:32 PM
> To: Yocto discussion list
> Subject: [yocto] why does quick start guide refer to non-provided "poky-i=
mage-sato"?
>
>
>   maybe i'm misreading something, but the yocto QS guide provides the
> sample command:
>
>   $ bitbake -k poky-image-sato
>
> however, nothing provides that target.  i can see the git log entry:
>
> commit 1947b17478187bb623da74484747e470ce42d206
> Author: Scott Rifenbark <scott.m.rifenbark@intel.com>
> Date:   Tue May 10 12:50:36 2011 -0500
>
>     documentation/yocto-project-qs/yocto-project-qs.xml: changed build co=
mmand
>
>     The command used in the example to build an image was using
>     'bitbake core-image-sato', which is only available in master and
>     not Bernard.  So, I changed the command to be 'bitbake poky-image-sat=
o'
>     at Dave Stewart's request.  He located and pointed out the error.
>
>     (From yocto-docs rev: 3fa83550aaec5a3549825814a77fa7a823a2daea)
>
>     Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> but it seems that "core-image-sato" is perfectly valid, at least at
> the moment.  clarification?

  currently, scripts/oe-setup-builddir lists one of the common targets
as "core-image-sato", so certainly *something* is out of sync.

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

