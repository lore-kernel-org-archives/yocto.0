Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBF65E01389
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 08:37:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Nov 2013 08:37:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="431407552"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2013 08:37:47 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.203]) with mapi id
	14.03.0123.003; Thu, 7 Nov 2013 08:37:47 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Saul Wold <sgw@linux.intel.com>
Thread-Topic: [yocto] FW: curious about ref manual, sec 6.1.11,
	oe-init-build-env-memres
Thread-Index: AQHO2yDAnNULuC+NxkqDVDORcZa5k5oYkbhAgACeXICAAADKAIAAx/hw
Date: Thu, 7 Nov 2013 16:37:45 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4503C@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311061346180.25975@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
	<527AA8B5.8060603@linux.intel.com>
	<alpine.DEB.2.02.1311061540140.23267@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311061540140.23267@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Nov 2013 16:37:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I updated the section.  See if that is better.=20

Thanks=20
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Wednesday, November 06, 2013 12:41 PM
>To: Saul Wold
>Cc: Rifenbark, Scott M; Yocto discussion list
>Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11, oe-init-bui=
ld-
>env-memres
>
>On Wed, 6 Nov 2013, Saul Wold wrote:
>
>> On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
>> > Anyone know this?
>> >
>> > > -----Original Message-----
>> > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>> > > Sent: Wednesday, November 06, 2013 10:48 AM
>> > > To: Rifenbark, Scott M
>> > > Subject: curious about ref manual, sec 6.1.11,
>> > > oe-init-build-env-memres
>> > >
>> > >
>> > >   i've never used that memory-resident version of bitbake -- it's
>> > > not clear from that section whether you need to start bitbake
>> > > running before you run that script.
>> > >
>> Running that scripts will start the server at the default port of
>> 12345 and setup the default "build" directory.
>
>  i suspected as much, but the way that section is worded, that isn't clea=
r.
>thanks.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

