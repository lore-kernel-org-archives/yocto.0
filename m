Return-Path: <dwsmith@ball.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC3EDE00B1C; Thu, 22 Oct 2015 12:18:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [67.231.144.99 listed in list.dnswl.org]
Received: from mx0a-0014fe01.pphosted.com (mx0a-0014fe01.pphosted.com
	[67.231.144.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8510E00AF6
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 12:18:10 -0700 (PDT)
Received: from pps.filterd (m0000457.ppops.net [127.0.0.1])
	by mx0a-0014fe01.pphosted.com (8.15.0.59/8.15.0.59) with SMTP id
	t9MJFY4G017584; Thu, 22 Oct 2015 13:18:07 -0600
Received: from owa.ballaerospace.com ([162.18.172.11])
	by mx0a-0014fe01.pphosted.com with ESMTP id 1xq551r687-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT);
	Thu, 22 Oct 2015 13:18:07 -0600
Received: from EX2010-CO-02.AERO.BALL.com ([fe80::1c1b:3704:218f:e8b6]) by
	EX2010-CO-01.AERO.BALL.com ([fe80::ac1f:1297:aedc:98d2%12]) with mapi
	id 14.03.0181.006; Thu, 22 Oct 2015 13:18:07 -0600
From: "Smith, Daniel W" <dwsmith@ball.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] using do_install_append?
Thread-Index: AdEM9zPyKXhEjiuuQxChBtODIydEZAAN866AAAxFKAA=
Date: Thu, 22 Oct 2015 19:18:06 +0000
Message-ID: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5587@EX2010-CO-02.AERO.BALL.com>
References: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5180@EX2010-CO-02.AERO.BALL.com>
	<562933A5.8060505@mlbassoc.com>
In-Reply-To: <562933A5.8060505@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.255.105]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-10-22_13:2015-10-22, 2015-10-22,
	1970-01-01 signatures=0
Subject: Re: using do_install_append?
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
X-List-Received-Date: Thu, 22 Oct 2015 19:18:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> On 2015-10-22 12:26, Smith, Daniel W wrote:
> > Hello,
> >
> > This seems like it should be an easy task, but perhaps I'm missing
> something very basic so it is not working.
> >
> > I have working recipe that installs the fluxbox window manager.  Howeve=
r I
> want to customize the default runtime configuration files located in
> /usr/share/fluxbox.  To do this I
> > created fluxbox_1.3.5.bbappend in order to replace the default
> configuration files with my own.
> >
> > This file contains the following:
> >
> > FILESEXTRAPATHS_prepend_poky :=3D "${THISDIR}/files:"
> >
> > SRC_URI =3D "file://apps \
> >
> >             file://init \
> >
> >             file://keys \
> >
> >             file://menu \
> >
> >             file://overlay \
> >
> >             file://windowmenu "
>=20
> Shouldn't this be SRC_URI_append ?  Otherwise, your .bbappend will be
> writing over the SRC_URI from the original recipe.
>=20
> Also, please CC your replies to the list so that everyone benefits.
>=20
[Smith, Daniel W]=20
OK, now we are getting somewhere.  It configures now that I fixed it to app=
end.  That was causing it to never fetch the source so it never actually ob=
tained the license file.   Thanks I knew it had to be something very simple=
 I was missing.

I was also missing '$' before the {datadir}.

-Daniel Smith



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

