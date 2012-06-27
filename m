Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE0A3E01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 12:54:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jun 2012 12:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170788267"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2012 12:54:14 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Jun 2012 12:54:13 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.154]) with mapi id
	14.01.0355.002; Wed, 27 Jun 2012 12:54:13 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] making PDF docs, error in fop step, "Can't load
	standard profile: sRGB.pf"
Thread-Index: AQHNVIvnAwyI9dQ/lUGiJpifmgShPZcPB6IA//+MLcA=
Date: Wed, 27 Jun 2012 19:54:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A138B8@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206271335320.24547@oneiric>
	<alpine.DEB.2.02.1206271546060.4074@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206271546060.4074@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: making PDF docs, error in fop step, "Can't load standard profile: sRGB.pf"
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
X-List-Received-Date: Wed, 27 Jun 2012 19:54:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

So you do think it is a carry-over of that openjdk-6 error?  I thought the =
error output was very similar.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Wednesday, June 27, 2012 12:48 PM
To: Yocto discussion list
Subject: Re: [yocto] making PDF docs, error in fop step, "Can't load standa=
rd profile: sRGB.pf"

On Wed, 27 Jun 2012, Robert P. J. Day wrote:

>
>   for the first time in a while, i tried to build the PDF docs, and
> every attempt ends with a java exception on my 64-bit ubuntu system
> containing the diagnostic:
>
> java.lang.IllegalArgumentException: Can't load standard profile: sRGB.pf
>
>   i've isolated it to the "fop" invocation in poky-docbook-to-pdf.
> i'm using openjdk-7, and it appears that i do have that file installed
> on my system.
>
>   i have to bolt for the airport to pick someone up so i can't dig any
> deeper right this minute, but if anyone else has seen this and has an
> answer, i'd appreciate it.  can anyone else at least verify that they
> get the same error if they try it on a similar system?  thanks.

  it *seems* fairly clear that this is what's happening to me:

http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D641530

when i try to generate yocto docs in PDF format on my ubuntu 12.04
system using openjdk.  and on that note, i'm going back to my beer and
wings.

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

