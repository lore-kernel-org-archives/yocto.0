Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A60CE005B4
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 08:55:47 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2011 08:55:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,560,1315206000"; d="scan'208";a="88559438"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 23 Nov 2011 08:55:46 -0800
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 Nov 2011 08:55:46 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.243]) with mapi id
	14.01.0355.002; Wed, 23 Nov 2011 08:55:45 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ADT installer
Thread-Index: AQHMqf9bUdjsgeesZkOpb0fIubsEOZW6rTYw
Date: Wed, 23 Nov 2011 16:55:45 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
References: <1322066687.24623.4.camel@jim-ubuntu>
In-Reply-To: <1322066687.24623.4.camel@jim-ubuntu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: ADT installer
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
X-List-Received-Date: Wed, 23 Nov 2011 16:55:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jim,=20

Let me try and replicate this from the manual.  I will get back momentarily=
.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jim Abernathy
Sent: Wednesday, November 23, 2011 8:45 AM
To: yocto@yoctoproject.org
Subject: [yocto] ADT installer

I was following the ADT manual online, section 2.1.1.1, and everything
seemed to complete as expected, but adt_installer.tar.bz2 was not
created in the ..../build/tmp/deploy/sdk direction as documented.  In
fact, there is no sdk directory in deploy.  Is this a documentation
issue or is this not working. BTW, I could not find the tarball anywhere
on my Ubuntu development system.

Jim A


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

