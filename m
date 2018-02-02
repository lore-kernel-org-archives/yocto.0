Return-Path: <vishwanath.m@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 873FBE00D1C; Fri,  2 Feb 2018 14:54:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [211.189.100.12 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Feb 2018 14:54:39 PST
Received: from mailout2.w2.samsung.com (mailout2.w2.samsung.com
	[211.189.100.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BE90E005A2;
	Fri,  2 Feb 2018 14:54:39 -0800 (PST)
Received: from uscas1p2.samsung.com (unknown [182.198.245.207])
	by mailout2.w2.samsung.com (KnoxPortal) with ESMTP id
	20180202224759usoutp02a2f0a246f41d3014ee29cbf5fb386ba6~Po8gjH26O0593905939usoutp02z;
	Fri,  2 Feb 2018 22:47:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w2.samsung.com
	20180202224759usoutp02a2f0a246f41d3014ee29cbf5fb386ba6~Po8gjH26O0593905939usoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1517611679;
	bh=a+B2d4l63JsP1YwpDsJXIrUNmxxOyADftvTbtSZBBkM=;
	h=From:To:Cc:Subject:Date:References:From;
	b=rwAZsIGSYjVKlxdUwW9sbaSJ7vd7u6j0CKKU6fFBoThqd1AnHpHTRyD50JAop4/hw
	qeEpxB7uedHdmSC3J7ISWBYld0GmH2ZFWafwe+eAInwdSqLhOLzzNA7PsTFLcN5AOS
	Qg4DkhckzTdvRQFwN2S61inRMmw2F4S2sD8FVTxs=
Received: from ussmges4.samsung.com (u114.gpu85.samsung.co.kr
	[203.254.195.114]) by uscas1p1.samsung.com (KnoxPortal) with ESMTP id
	20180202224758uscas1p1406cb50261f4d43e697bfb587465778b~Po8gId3j70233202332uscas1p1D;
	Fri,  2 Feb 2018 22:47:58 +0000 (GMT)
Received: from uscas1p1.samsung.com ( [182.198.245.206]) by
	ussmges4.samsung.com (USCPEMTA) with SMTP id A7.52.00495.E9AE47A5;
	Fri,  2 Feb 2018 17:47:58 -0500 (EST)
Received: from ussmgxs4.samsung.com (u125.gpu85.samsung.co.kr
	[203.254.195.125]) by uscas1p2.samsung.com (KnoxPortal) with ESMTP id
	20180202224758uscas1p22647f0205832cd5924c02dbce842085b~Po8fxLA4A3219032190uscas1p2H;
	Fri,  2 Feb 2018 22:47:58 +0000 (GMT)
X-AuditID: cbfec372-f79b46d0000001ef-c8-5a74ea9ef0a2
Received: from usmmp2.samsung.com ( [203.254.195.78]) by
	ussmgxs4.samsung.com (USCPEXMTA) with SMTP id 30.B0.02085.E9AE47A5;
	Fri,  2 Feb 2018 17:47:58 -0500 (EST)
Received: from SSI-EX3.ssi.samsung.com ([105.128.2.146]) by
	usmmp2.samsung.com (Oracle Communications Messaging Server 7.0.5.31.0
	64bit
	(built May 5 2014)) with ESMTP id <0P3J0024RONXNT10@usmmp2.samsung.com>;
	Fri, 02 Feb 2018 17:47:58 -0500 (EST)
Received: from SSI-EX3.ssi.samsung.com (105.128.2.228) by
	SSI-EX3.ssi.samsung.com (105.128.2.228) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.1.669.32; Fri, 2 Feb 2018 14:47:57 -0800
Received: from SSI-EX3.ssi.samsung.com ([fe80::8d80:5816:c578:8c36]) by
	SSI-EX3.ssi.samsung.com ([fe80::8d80:5816:c578:8c36%3]) with mapi id
	15.01.0669.032; Fri, 2 Feb 2018 14:47:57 -0800
From: "Vish (Vishwanath) Maram" <vishwanath.m@samsung.com>
To: "meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>
Thread-topic: Yocto Recipe for LibRXE.
Thread-index: AdOcd6s2DO009wdSRq6zn1uZDqs7ng==
Date: Fri, 02 Feb 2018 22:47:57 +0000
Message-id: <46a92ec39f8e4fb3876199915c29f351@samsung.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-Originating-IP: [105.128.2.176]
MIME-version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAKsWRmVeSWpSXmKPExsWy7djXc7rzXpVEGcz7ZWJx+8ARZotJL9ew
	OTB5tJ/oYwtgjOKySUnNySxLLdK3S+DKeHk5oWCXeMXR1dfZGxg3i3QxcnBICJhI/P8Y3cXI
	CWSKSVy4t56ti5GLQ0hgGaPEph/r2CGcFiaJCf/OM0FUmUhsXDWPHa7q8561rBDOX0aJ+V+v
	M0E4Hxglvq3/CeXsZ5T4cm4fI0g/m4CVxMPXV1lBbBGBYIn3y+6wgBzCLGAqsXZGKUhYWEBR
	YtLZThaIEjWJCVP+sIGUiAjoSey5LwsSZhFQlbjbv5oVJMwLNLG/OQwkzAj0wvdTa8AOZRYQ
	l2huvckCcbSgxKLZe5hh3vy36yEbhK0o8bzlJCNEfZLEu22L2UFsXqD6H5PvQfVKShxccQPK
	vs8m0XNYEcJ2kbj8aSfUTGGJV8e3sEPYMhKrPz9mBvlcQuAeo8SjBR3sEM4/RokN726wQlRZ
	S3x7/ZtxAqPqLCTHzkJyyCwkh0DEdSQW7P7EBmFrSyxb+JoZxj5z4DETsvgCRvZVjCKlxcW5
	6anFJnrFibnFpXnpesn5uZsYgenm9L/DRTsYn22wOsQowMGoxMN7I70kSog1say4MvcQowQH
	s5II77a1QCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8CjNXRwoJpCeWpGanphakFsFkmTg4pRoY
	rQs0rleG5a1hFMpbFfDnz3s7seL2p7o2B6X4tq5nfK+1QkhdcpWRxRNp1fD6u7tVL286qTk1
	5eiLNQ+zVZ9lt8mXLXgeZ79l2klTA/smdrXEXptn6w77V+xlc92q1Glh8Miqz8Zlq+lmbmkH
	S//A7aXcKoHF1aau8sxJFzzNMt02Vzm1SSuxFGckGmoxFxUnAgAuhLjwMwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsVy+t9hP915r0qiDF5ukrW4feAIs8Wkl2vY
	HJg82k/0sQUwRnHZpKTmZJalFunbJXBlvLycULBLvOLo6uvsDYybRboYOTkkBEwkNq6axw5h
	i0lcuLeerYuRi0NIYAmjxIHD65kgnL+MEv/OLGaEcD4wSmyYO5UdwtnPKLHk0D9WkH42ASuJ
	h6+vAtkcHCICwRL/myxATGYBU4m1M0pBKoQFFCUmne1kAbFFBNQkJkz5wwZRrSex574sSJhF
	QFXibv9qsCG8QAP7m8NAwoxAt30/tYYJxGYWEJdobr3JAnGzgMSSPeeZIWxRiZePIW6RANr0
	vOUkI0R9gsSto6fBbF4BQYkfk+9B9UpKHFxxg2UCo9gsJGNnIWmZhaQFIq4jsWD3JzYIW1ti
	2cLXzDD2mQOPmZDFFzCyr2IUKS0uzk2vKDbRK07MLS7NS9dLzs/dxAiJu9odjPe/2hxiFOBg
	VOLhvZFeEiXEmlhWXJl7iFGCg1lJhHfbWqAQb0piZVVqUX58UWlOavEhRmkOFiVx3o17VkcK
	CaQnlqRmp6YWpBbBZJk4OKUaGGtFb137ESASGBl4dX1/+5ICjY/L1r+0b4rYGBbiybv2yJId
	f05zcF9JCt4SKbu2S817etDvrVrVLcVr5Q+oJQdNWe1wXid7569l1446NQj+ltzjZKH2oYVH
	JeLo0p9FFrJLNucaXuu5MuUdT5LNhN/djfKyaTNNVwmm+F+cfFj1UnrixMSl4UosxRmJhlrM
	RcWJAHaU3jC3AgAA
X-CMS-MailID: 20180202224758uscas1p22647f0205832cd5924c02dbce842085b
X-Msg-Generator: CA
CMS-TYPE: 301P
X-CMS-RootMailID: 20180202224758uscas1p22647f0205832cd5924c02dbce842085b
X-RootMTR: 20180202224758uscas1p22647f0205832cd5924c02dbce842085b
References: <CGME20180202224758uscas1p22647f0205832cd5924c02dbce842085b@uscas1p2.samsung.com>
X-Mailman-Approved-At: Tue, 06 Feb 2018 08:01:32 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Recipe for LibRXE.
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
X-List-Received-Date: Fri, 02 Feb 2018 22:54:40 -0000
Content-language: en-US
Content-type: multipart/alternative;
	boundary="_000_46a92ec39f8e4fb3876199915c29f351samsungcom_"

--_000_46a92ec39f8e4fb3876199915c29f351samsungcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am looking for a yocto recipe of librxe? Right now I was able to get libr=
dmacm and libibverbs, but librxe yocto is not there. Can someone help me in=
 getting this?

Highly appreciate if I can get some info on the same.

Thanks,
-Vish

--_000_46a92ec39f8e4fb3876199915c29f351samsungcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking for a yocto recipe of librxe? Right now=
 I was able to get librdmacm and libibverbs, but librxe yocto is not there.=
 Can someone help me in getting this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Highly appreciate if I can get some info on the same=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">-Vish<o:p></o:p></p>
</div>
</body>
</html>

--_000_46a92ec39f8e4fb3876199915c29f351samsungcom_--
