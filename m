Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 431A4E00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 09:13:35 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 Nov 2011 09:13:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,560,1315206000"; d="scan'208";a="78517299"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 23 Nov 2011 09:13:34 -0800
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 Nov 2011 09:13:33 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.168]) with mapi id
	14.01.0355.002; Wed, 23 Nov 2011 09:13:32 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Jim Abernathy
	<jfabernathy@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] ADT installer
Thread-Index: AQHMqf9bPcdNYq8PMEalAQ1m6pupL5W7M5mA//997QA=
Date: Wed, 23 Nov 2011 17:13:32 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16EBBB63@ORSMSX101.amr.corp.intel.com>
References: <1322066687.24623.4.camel@jim-ubuntu>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Wed, 23 Nov 2011 17:13:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jim,

I just did build adt-installer tar ball and it was created under ../build/t=
mp/deploy/sdk directory as adt_installer.tar.bz2.  The following is the ste=
ps that what I did:

1. go under your poky directory, for my case is /home/jzhang/poky-master
2. source oe-init-build-env
3. bitbake adt-installer
4. under /home/jzhang/poky-master/build/tmp/deploy/sdk, adt_installer.tar.b=
z2 is created

So are these steps the same as what you did?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rifenbark, Scott M
Sent: Wednesday, November 23, 2011 8:56 AM
To: Jim Abernathy; yocto@yoctoproject.org
Subject: Re: [yocto] ADT installer

Jim,

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
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

