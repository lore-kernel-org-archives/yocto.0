Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 462F6E0120E
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2011 09:02:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Aug 2011 09:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="43303614"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 29 Aug 2011 09:02:08 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 29 Aug 2011 09:02:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.126]) with mapi id
	14.01.0323.003; Mon, 29 Aug 2011 09:02:08 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Tested host distros for 1.1
Thread-Index: AQHMYatcIeBLunnO90OcfqsSBiPEd5U0Bniw
Date: Mon, 29 Aug 2011 16:02:07 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E5CBD6@ORSMSX101.amr.corp.intel.com>
References: <201108231642.49667.paul.eggleton@linux.intel.com>
In-Reply-To: <201108231642.49667.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Mon, 29 Aug 2011 16:02:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So the official list of distros we test against includes?:

        Ubuntu 11.04=20
        Fedora release 14 (Laughlin)

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Tuesday, August 23, 2011 8:43 AM
To: yocto@yoctoproject.org
Subject: [yocto] Tested host distros for 1.1

Hi all,

We now have the mechanism for fixing bug #1096 [1] i.e. showing a warning i=
f=20
the user is running a build on a distro that has not been tested; however t=
o=20
make this work what we now need is a list of distributions we want to consi=
der=20
tested. What distros specifically are we going to list for 1.1?

Cheers,
Paul

[1] http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1096


--=20

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

