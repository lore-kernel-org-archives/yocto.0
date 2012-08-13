Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B61E0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 08:10:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Aug 2012 08:10:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,761,1336374000"; d="scan'208";a="207666169"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 13 Aug 2012 08:10:40 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 13 Aug 2012 08:10:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.187]) with mapi id
	14.01.0355.002; Mon, 13 Aug 2012 08:10:39 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] plans to update yocto dev manual to reflect SSH status
	in qemu images?
Thread-Index: AQHNdkgL0z/AOjwIgk+HkXRnE8B8aZdX3m9w
Date: Mon, 13 Aug 2012 15:10:38 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A537E4@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1208091156570.3277@oneiric>
In-Reply-To: <alpine.DEB.2.02.1208091156570.3277@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: plans to update yocto dev manual to reflect SSH status in qemu images?
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
X-List-Received-Date: Mon, 13 Aug 2012 15:10:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

See http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usin=
g-pre-built-binaries-and-qemu for some updates that talk about what images =
use Dropbear.  I need to get some more information from Scott Garman before=
 fixing the bit about NFS referenced in your archived email discussion.

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Thursday, August 09, 2012 8:59 AM
To: Yocto discussion list
Subject: [yocto] plans to update yocto dev manual to reflect SSH status in =
qemu images?


  back here:

http://www.mail-archive.com/yocto@yoctoproject.org/msg07820.html

i pointed out that the dev manual doesn't accurately reflect the
situation with SSH servers in qemu images.  i don't see that anyone's
updated the manual so i thought i'd be annoying and mention it again.

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

