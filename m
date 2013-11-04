Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 936F3E016E3
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 14:34:36 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Nov 2013 14:34:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="316945437"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Nov 2013 14:34:35 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.55]) with mapi id
	14.03.0123.003; Mon, 4 Nov 2013 14:34:35 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: pedantry alert! "Caution" rendered differently from "Note" in
	online docs
Thread-Index: AQHO2Ho+nRUN5eSagE+cG8LP6mEQIJoVqt+A
Date: Mon, 4 Nov 2013 22:34:34 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44255@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311030448550.30686@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311030448550.30686@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: pedantry alert! "Caution" rendered differently from "Note" in online docs
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
X-List-Received-Date: Mon, 04 Nov 2013 22:34:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

I have seen this also and it irritates me.  Just need to investigate how to=
 fix this.

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Sunday, November 03, 2013 1:51 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: pedantry alert! "Caution" rendered differently from "Note" in onl=
ine
>docs
>
>
>  just noticed this:
>
>http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-
>SERIAL_CONSOLE
>
>while the "Note" rendering looks pretty (single leading and trailing blank=
 line,
>indented), the "Caution" rendering just below that is not as pretty (doubl=
e
>leading blank line, no trailing blank line, no indent).
>
>  is there some weirdness with the docbook toolchain causing this?
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

