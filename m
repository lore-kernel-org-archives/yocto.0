Return-Path: <dwsmith@ball.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44525E00F4D; Tue,  6 Oct 2015 13:18:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.144.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0a-0014fe01.pphosted.com (mx0a-0014fe01.pphosted.com
	[67.231.144.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2E4AE00AE6
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 13:18:57 -0700 (PDT)
Received: from pps.filterd (m0000407.ppops.net [127.0.0.1])
	by mx0a-0014fe01.pphosted.com (8.15.0.59/8.15.0.59) with SMTP id
	t96KCJvY002805; Tue, 6 Oct 2015 14:18:46 -0600
Received: from owa.ballaerospace.com ([162.18.172.11])
	by mx0a-0014fe01.pphosted.com with ESMTP id 1xcjucrjh6-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT);
	Tue, 06 Oct 2015 14:18:46 -0600
Received: from EX2010-CO-02.AERO.BALL.com ([fe80::1c1b:3704:218f:e8b6]) by
	EX2010-CO-03.AERO.BALL.com ([fe80::1892:27e7:c852:983b%13]) with mapi
	id 14.03.0181.006; Tue, 6 Oct 2015 14:18:45 -0600
From: "Smith, Daniel W" <dwsmith@ball.com>
To: "Bystricky, Juro" <juro.bystricky@intel.com>, Gary Thomas
	<gary@mlbassoc.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] PSPLASH PPC Colors
Thread-Index: AdD69SPhoftkf+XWQjCaFWyUqTR1UgANclIAAAx6c/D//77hgP/1kHmA
Date: Tue, 6 Oct 2015 20:18:44 +0000
Message-ID: <167A17EDB344B047B2D335D8E4C5A2FAA4CC3693@EX2010-CO-02.AERO.BALL.com>
References: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40@EX2010-CO-02.AERO.BALL.com>
	<560AF9DA.6080103@mlbassoc.com>
	<167A17EDB344B047B2D335D8E4C5A2FAA4CB5E5F@EX2010-CO-02.AERO.BALL.com>
	<6E51916E4A1F32428260031F4C7CD2B6101F7AA8@ORSMSX109.amr.corp.intel.com>
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B6101F7AA8@ORSMSX109.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.255.105]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-10-06_14:2015-10-06, 2015-10-06,
	1970-01-01 signatures=0
Subject: Re: PSPLASH PPC Colors
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
X-List-Received-Date: Tue, 06 Oct 2015 20:18:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks,

I verified that the fix provided in the Bug fixed the Psplash PPC color iss=
ue.

-Daniel Smith

-----Original Message-----
From: Bystricky, Juro [mailto:juro.bystricky@intel.com]=20
Sent: Tuesday, September 29, 2015 4:56 PM
To: Smith, Daniel W; Gary Thomas; yocto@yoctoproject.org
Subject: RE: [yocto] PSPLASH PPC Colors

This is a known bug:
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bugzilla.yoctoprojec=
t.org_show-5Fbug.cgi-3Fid-3D7236&d=3DAwIFAg&c=3DjF7FvYH6t0RX1HrEjVCgHQ&r=3D=
-_nA1hfe_MiE5-Odgbhz5g&m=3DeRydDR6l-s_z19xQw1temZilK8XN7UU4R7tpywSY2DY&s=3D=
Lv0j8RRzbz_efxv85RqguoF7PUdqLLgED7uywBE9UvE&e=3D=20

Juro

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Smith, Daniel W
> Sent: Tuesday, September 29, 2015 1:57 PM
> To: Gary Thomas; yocto@yoctoproject.org
> Subject: Re: [yocto] PSPLASH PPC Colors
>=20
>=20
> > Does this happen on qemuppc or only on real hardware?
>=20
> I have only tried it on qemuppc & qemuarm at this point.  The colors are =
all
> correct once busybox is running, so I suspect it is an edianness issue wi=
th
> images generated on a PC and then installed on a PPC.
>=20
> -Daniel Smith
>=20
>=20
>=20
> This message and any enclosures are intended only for the addressee.
> Please notify the sender by email if you are not the intended recipient. =
 If
> you are not the intended recipient, you may not use, copy, disclose, or
> distribute this message or its contents or enclosures to any other person=
 and
> any such actions may be unlawful.  Ball reserves the right to monitor and
> review all messages and enclosures sent to or from this email address.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_listinfo_yocto&d=3DAwIFAg&c=3DjF7FvYH6t0RX1HrEjVCgHQ&r=3D-_nA1hfe_MiE5=
-Odgbhz5g&m=3DeRydDR6l-s_z19xQw1temZilK8XN7UU4R7tpywSY2DY&s=3Dk27ogfRMqmVms=
iWqh4i26vHc9q-e1zRr80fZtoe-BP4&e=3D=20



This message and any enclosures are intended only for the addressee.  Pleas=
e=20
notify the sender by email if you are not the intended recipient.  If you a=
re=20
not the intended recipient, you may not use, copy, disclose, or distribute =
this=20
message or its contents or enclosures to any other person and any such acti=
ons=20
may be unlawful.  Ball reserves the right to monitor and review all message=
s=20
and enclosures sent to or from this email address.

