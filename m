Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D686E01396
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:23:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 May 2012 13:23:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="169924595"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 22 May 2012 13:23:49 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 May 2012 13:23:48 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.73]) with mapi id
	14.01.0355.002; Tue, 22 May 2012 13:23:48 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Emir Elkholy <emirelkholy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Connecting to target using eclipse/ADT
Thread-Index: AQHNOEzinaywyvqyok6sdJwKwHX6+pbWQIXA
Date: Tue, 22 May 2012 20:23:48 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46A4CAFC@ORSMSX101.amr.corp.intel.com>
References: <CAExZvuNa59NhtL767y9fD-A05rZkpYdp+55N-zHWn2kJeEU_Fw@mail.gmail.com>
In-Reply-To: <CAExZvuNa59NhtL767y9fD-A05rZkpYdp+55N-zHWn2kJeEU_Fw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Connecting to target using eclipse/ADT
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
X-List-Received-Date: Tue, 22 May 2012 20:23:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So do you have access to your target at all? Can you verify that the tcf-ag=
ent is up running on the target device?

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Emir Elkholy
Sent: Tuesday, May 22, 2012 11:58 AM
To: yocto@yoctoproject.org
Subject: [yocto] Connecting to target using eclipse/ADT

When connecting to my CRB that is running off a usb drive that has yocto on=
 it I am trying to connect to the CRB from my host in order to debug using =
TCF agent. Through eclipse I am entering the IP address of the target, and =
attempting to debug from the debug configurations menu. Using a simple hell=
oworld as an example, the file is actually transferred to the target CRB, b=
ut the debugging fails. Eclipse gives me a connection timing out error (not=
 allowing me to debug). Is there a link that describes how to connect to a =
physical target using eclipse and the ADT? Is there anything that must be d=
one on the target side first before attempting to debug? I only enter the I=
P address of the target under debug configurations, I don't setup anything =
on the target side, maybe this is the problem? I followed the same procedur=
e as connecting to the QEMU (which works) as I did with the physical hardwa=
re. I can't find anything online about a connection time out either.

Thanks
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

