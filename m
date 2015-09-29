Return-Path: <dwsmith@ball.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFAA6E00C9A; Tue, 29 Sep 2015 13:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.86.201.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-0014fe01.pphosted.com (mx0b-0014fe01.pphosted.com
	[208.86.201.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12FBAE00957
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 13:56:38 -0700 (PDT)
Received: from pps.filterd (m0000621.ppops.net [127.0.0.1])
	by mx0b-0014fe01.pphosted.com (8.15.0.59/8.15.0.59) with SMTP id
	t8TKnhbB021995; Tue, 29 Sep 2015 14:56:35 -0600
Received: from owa.ballaerospace.com ([162.18.172.11])
	by mx0b-0014fe01.pphosted.com with ESMTP id 1x81v9r219-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT);
	Tue, 29 Sep 2015 14:56:35 -0600
Received: from EX2010-CO-02.AERO.BALL.com ([fe80::1c1b:3704:218f:e8b6]) by
	EX2010-CO-03.AERO.BALL.com ([fe80::1892:27e7:c852:983b%13]) with mapi
	id 14.03.0181.006; Tue, 29 Sep 2015 14:56:35 -0600
From: "Smith, Daniel W" <dwsmith@ball.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] PSPLASH PPC Colors
Thread-Index: AdD69SPhoftkf+XWQjCaFWyUqTR1UgANclIAAAx6c/A=
Date: Tue, 29 Sep 2015 20:56:34 +0000
Message-ID: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E5F@EX2010-CO-02.AERO.BALL.com>
References: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40@EX2010-CO-02.AERO.BALL.com>
	<560AF9DA.6080103@mlbassoc.com>
In-Reply-To: <560AF9DA.6080103@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.255.105]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-09-29_14:2015-09-29, 2015-09-29,
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
X-List-Received-Date: Tue, 29 Sep 2015 20:56:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> Does this happen on qemuppc or only on real hardware?

I have only tried it on qemuppc & qemuarm at this point.  The colors are al=
l correct once busybox is running, so I suspect it is an edianness issue wi=
th images generated on a PC and then installed on a PPC.=20=20

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

