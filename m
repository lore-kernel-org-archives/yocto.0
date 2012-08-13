Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0383E0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 08:22:14 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Aug 2012 08:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,761,1336374000"; d="scan'208";a="180432579"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 13 Aug 2012 08:22:03 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 13 Aug 2012 08:22:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.180]) with mapi id
	14.01.0355.002; Mon, 13 Aug 2012 08:22:02 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] layer.conf: "packages" directory
Thread-Index: AQHNeIbeIvJ1y95mK0aaaKNhw6wznJdWnN8AgAEti9CAAH7GAP//k7Jg
Date: Mon, 13 Aug 2012 15:22:02 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A53953@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRfzWsj1ZzFTZr9-dGCUXbsy+uwvC=J_iC-VnX0dy6ntQ@mail.gmail.com>
	<6260373.pzVKEde8kG@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A524E3@ORSMSX101.amr.corp.intel.com>
	<2305733.uC5lQiQYH7@helios>
In-Reply-To: <2305733.uC5lQiQYH7@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf: "packages" directory
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
X-List-Received-Date: Mon, 13 Aug 2012 15:22:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes - of course.  Thanks.=20

See http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#crea=
ting-your-own-layer for the updated text.

ScottR

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, August 13, 2012 7:47 AM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] layer.conf: "packages" directory

On Monday 13 August 2012 14:13:50 Rifenbark, Scott M wrote:
> Paul,
>=20
> I can fix the manual to say something like this...
>=20
> "# We have recipe-* directories, add to BBFILES"

Yes, "recipes-*" rather than "recipe-*" though.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

