Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15C1BE0030F
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2012 05:16:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2012 05:16:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="96125621"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2012 05:16:11 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 13 Jan 2012 05:16:11 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.57]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.170]) with mapi id
	14.01.0355.002; Fri, 13 Jan 2012 05:16:10 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Developer Manual Appendix B example
Thread-Index: AQHM0Z4qgSMlIWiWw0eTMTM8IUv3oJYKIDiAgAATR4CAABPgUA==
Date: Fri, 13 Jan 2012 13:16:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379240276C5@ORSMSX101.amr.corp.intel.com>
References: <CANFv2E=kWehG23TsZV76=W7o7GbhbZok2MtacVrOZUmsb+xA0g@mail.gmail.com>
	<4F0F9CE7.9010505@windriver.com>
	<CAFZh4h8EnXY3Xsv6wfzXkJ13CzwfjQXd1cuHwz23NbvM=u_i4g@mail.gmail.com>
In-Reply-To: <CAFZh4h8EnXY3Xsv6wfzXkJ13CzwfjQXd1cuHwz23NbvM=u_i4g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Developer Manual Appendix B example
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
X-List-Received-Date: Fri, 13 Jan 2012 13:16:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes - this is the exact issue.  I ran into it myself yesterday while attemp=
ting to verify the BSP example (as written) using the upcoming 1.1.1 releas=
e (Edison 6.0.1). I had to consult Tom Zannusi and he had me dummy out that=
 file.  Once I did that the build worked. =20

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Brian Hutchinson
Sent: Thursday, January 12, 2012 8:04 PM
To: Bruce Ashfield
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Developer Manual Appendix B example

On Thu, Jan 12, 2012 at 9:54 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> Funny how things tend to arrive in bunches. We just discussed this today

Ha!  Thanks Jim for making me feel better .... at least I wasn't the
only one that had trouble ;-)

Brian
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

