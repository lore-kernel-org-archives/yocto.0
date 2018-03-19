Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067DAE009DF; Mon, 19 Mar 2018 04:27:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail3.advaoptical.com (mail3.advaoptical.com [74.202.24.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C669BE0086B
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 04:27:29 -0700 (PDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-am5eur03lp0112.outbound.protection.outlook.com
	[213.199.154.112])
	by atl-vs-fsmail.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w2JBRPQw015506
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=OK);
	Mon, 19 Mar 2018 07:27:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ADVA.onmicrosoft.com; 
	s=selector1-advaoptical-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=C7bXQRExjH4jNZdUUK/KmT8ka1QFOFZVp4B4+eTSqgU=;
	b=fJ7UNo60RrdjIejKttlfRWcWW1fb2uLjTNKdVHdV1Ii77pSjPpAZeDCSdJyH5kIjGIgWxhjpVPKSCxsEv20IPiWWsMMrYxnHaAvX3xf43TFuRaUp+3Qa950LqoYFXibOO2BYFqWKakWN5RZeBy0zJL7vNAm9n525qC4M7SUZ3GE=
Received: from VI1PR0202MB2559.eurprd02.prod.outlook.com (10.173.79.138) by
	VI1PR0202MB2862.eurprd02.prod.outlook.com (10.171.102.138) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.588.14;
	Mon, 19 Mar 2018 11:27:23 +0000
Received: from VI1PR0202MB2559.eurprd02.prod.outlook.com
	([fe80::64ea:b4f9:efa5:19cd]) by
	VI1PR0202MB2559.eurprd02.prod.outlook.com
	([fe80::64ea:b4f9:efa5:19cd%18]) with mapi id 15.20.0588.016;
	Mon, 19 Mar 2018 11:27:24 +0000
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] Fix 'PACKAGES' in net-snmp recipe
Thread-Index: AQHTvoI+I1CZrhQdBkCu5BrxH5AdgaPW/52A///IbzCAAASyMIAARmI3gAAS0ACAAEb77g==
Date: Mon, 19 Mar 2018 11:27:23 +0000
Message-ID: <VI1PR0202MB2559490EEFA88D25E01AD12BCDD40@VI1PR0202MB2559.eurprd02.prod.outlook.com>
References: <VI1PR0202MB2559EF86BAA4B34E18C68E41CDD50@VI1PR0202MB2559.eurprd02.prod.outlook.com>
	<CAMKF1soDUVjKrfsrbmp9a-g+vZdrgtAwO-oH91wMG5BwtWzfXg@mail.gmail.com>
	,<1B858668EC6A94408DCA5225FDFA85AA015868FE71@ALA-MBD.corp.ad.wrs.com>
	<VI1PR0202MB2559BE6972EE480053BC63D4CDD40@VI1PR0202MB2559.eurprd02.prod.outlook.com>,
	<1B858668EC6A94408DCA5225FDFA85AA0158690408@ALA-MBD.corp.ad.wrs.com>
In-Reply-To: <1B858668EC6A94408DCA5225FDFA85AA0158690408@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.90.138.234]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR0202MB2862;
	7:gnbDcBBrY7u89AFzkkgMDomSvkJMW+LizYtm9gmPyla7qZ4OM736TtszN6sw8l0gAb5WpfOWvDTbZf7nnbC01F3yWmliKD0ZvgqBe39Ru0wwEesVz6gQNWXAG+UBNZlfsjCgyfXQQZrgKSpmNW0gdUWxBlc5bkUI/QRCkChI59XyhNDPnlCnFCkUJ5W8/MO4UQ3OC+E6yo4iXunxuckaLsRvqT/G4ViUjP/ovv5KZjGRlTIwB8rqgNo4uPTSN15+
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 5023ee7f-cc48-454c-2675-08d58d8c6329
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR0202MB2862; 
x-ms-traffictypediagnostic: VI1PR0202MB2862:
x-microsoft-antispam-prvs: <VI1PR0202MB286213463422298EA47221F7CDD40@VI1PR0202MB2862.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231221)(944501244)(52105095)(10201501046)(6041310)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(6072148)(201708071742011);
	SRVR:VI1PR0202MB2862; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0202MB2862; 
x-forefront-prvs: 06167FAD59
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(39850400004)(396003)(39380400002)(366004)(199004)(189003)(7696005)(80792005)(8676002)(72206003)(81156014)(478600001)(14454004)(97736004)(229853002)(6246003)(8936002)(6436002)(53546011)(9686003)(86362001)(55016002)(2900100001)(6506007)(76176011)(3846002)(25786009)(4326008)(54906003)(99286004)(6116002)(81166006)(2906002)(3280700002)(316002)(74316002)(39060400002)(53936002)(105586002)(19627405001)(66066001)(54896002)(5250100002)(186003)(2950100002)(102836004)(33656002)(93886005)(26005)(110136005)(106356001)(6606003)(3660700001)(5660300001)(68736007)(7736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0202MB2862;
	H:VI1PR0202MB2559.eurprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: advaoptical.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: CNbxgxpQDbvmucykJRMauOCBouFxkioHyMifb68TDcEIJC8BRpzDe2FDcb71h0tXLjLeQcPLzJ6XJBuN7gU/FMIRU1Z9EfRfKJHdem61lUTBVIS1OUNyqK2NRwMH0QCJRyGO2FhkxrrOxD1Tj+Q9xW1PpyqIbLyNShAr0/oCdAO30bxTcyBeO5Vrt7kJ5MLV+rHEJrG6Kktu70tQ1TIdAm2wUQVZVjLHqAu/8C4d93hSxzuPSN8wK5nQ+oSgXw9A3o/LOfXU0GnW6CCzHU7OX156PQNBPJ4ZbrFKkgBww1SnC572E42Mcz2Km35Xn62BhVx9b27O1l+JA9fjEjyqEw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: advaoptical.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5023ee7f-cc48-454c-2675-08d58d8c6329
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2018 11:27:23.9809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 522fc9ff-aca0-4d49-8e36-d13332e34662
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0202MB2862
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-03-19_07:, , signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhou,
	Li" <li.zhou@windriver.com>, "Enache,
	Catalin" <catalin.enache@windriver.com>
Subject: Re: Fix 'PACKAGES' in net-snmp recipe
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
X-List-Received-Date: Mon, 19 Mar 2018 11:27:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0202MB2559490EEFA88D25E01AD12BCDD40VI1PR0202MB2559_"

--_000_VI1PR0202MB2559490EEFA88D25E01AD12BCDD40VI1PR0202MB2559_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Monday, March 19, 2018 9:38 AM Huang, Jie (Jackie) wrote:
> It was changed for two reasons referred to the commit 5eec0615e:
>
> """
>     - Change to use append for PACKAGES so that:
>       * ptest package is added from ptest bbcalss
>       * the PN is back, allow empty and add rdepends on net-snmp-client
>         in case the user try to add net-snmp to the image
> """
>
> 1) The 'PACKAGEs =3D ...' will override the definition from bbclass like =
ptest.bbclass
> 2) We had customers assume that the ${PN} package for each recipe always =
exist so when they wanted to
>     use net-snmp clients, they tried to install net-snmp but failed.
>
> If you don't like the solution, you can use _remove operation to remove P=
N from PACKAGES.
>
> Other default packages like ${PN}-doc and ${PN}-locale, them are also emp=
ty for many other recipes,
> I don't think it's an issue, so no need to re-define the PACKAGES or remo=
ve them with _remove operation.

Ok. Agree. Non-issue.
Thank you guys a lot for the explanation!

--- Kosta Z.

--_000_VI1PR0202MB2559490EEFA88D25E01AD12BCDD40VI1PR0202MB2559_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div>On Monday, March 19, 2018 9:38 AM Huang, Jie (Jackie) wrote:<br>
&gt; It was changed for two reasons referred to the commit 5eec0615e:<br>
&gt;<br>
&gt; &quot;&quot;&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Change to use append for PACKAGES so that:<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * ptest package is added from ptes=
t bbcalss<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * the PN is back, allow empty and =
add rdepends on net-snmp-client<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in case the user try t=
o add net-snmp to the image<br>
&gt; &quot;&quot;&quot;<br>
&gt;<br>
&gt; 1) The 'PACKAGEs =3D ...' will override the definition from bbclass li=
ke ptest.bbclass<br>
&gt; 2) We had customers assume that the ${PN} package for each recipe alwa=
ys exist so when they wanted to<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; use net-snmp clients, they tried to install ne=
t-snmp but failed.<br>
&gt;<br>
&gt; If you don't like the solution, you can use _remove operation to remov=
e PN from PACKAGES.<br>
&gt;<br>
&gt; Other default packages like ${PN}-doc and ${PN}-locale, them are also =
empty for many other recipes,<br>
&gt; I don't think it's an issue, so no need to re-define the PACKAGES or r=
emove them with _remove operation.<br>
<br>
Ok. Agree. Non-issue.<br>
Thank you guys a lot for the explanation!<br>
<br>
--- Kosta Z.<br>
</div>
</div>
</body>
</html>

--_000_VI1PR0202MB2559490EEFA88D25E01AD12BCDD40VI1PR0202MB2559_--
