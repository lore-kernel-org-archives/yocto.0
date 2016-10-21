Return-Path: <sudhin_deshpande@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A095E00DC5; Thu, 20 Oct 2016 20:52:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sudhin_deshpande[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Oct 2016 20:52:53 PDT
Received: from BAY004-OMC1S3.hotmail.com (bay004-omc1s3.hotmail.com
	[65.54.190.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E388E00C2E
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 20:52:53 -0700 (PDT)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com ([65.54.190.60])
	by BAY004-OMC1S3.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 20 Oct 2016 20:51:52 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=6t37Lmh/qH6AQDc4lwdSaOLgWaHHhlSB1ZNFDeuFSyY=;
	b=b0C1kAqVpe8PK9lDHA0tUk/kqAOln25jpcV04gWnUMurHE44sXTTvkLU7iwPWITQBIFIe9imp4ta4CpmUihvLEj/xkHJpZvTV5VFAZTHffEZ/dwyvO9H2VchunzkyNMjIHvJjhYVDxvTDhsKjyDK+pjUIosUkS8AP4ESo8jIdLs9ZkCnHRzfetMQqLaQFhw0m4wUkLQ0zi2dtvX4ThGdyayY9eHLVZWxxuIcj76iQgDXxGlWbujUXdOik+zfv+xIiFyrE57FaSVZpUwm6zuBtTZdbXHCI0IJgoTfUXi5yNptxNb24Ok3WabNvA8y+1QYCJ/uBj714fPU8UEulyVQMw==
Received: from BL2NAM02FT011.eop-nam02.prod.protection.outlook.com
	(10.152.76.58) by BL2NAM02HT176.eop-nam02.prod.protection.outlook.com
	(10.152.77.84) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Fri, 21 Oct 2016 03:51:51 +0000
Received: from SN1PR12MB0798.namprd12.prod.outlook.com (10.152.76.54) by
	BL2NAM02FT011.mail.protection.outlook.com (10.152.77.5) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Fri, 21 Oct 2016 03:51:51 +0000
Received: from SN1PR12MB0798.namprd12.prod.outlook.com ([10.164.26.144]) by
	SN1PR12MB0798.namprd12.prod.outlook.com ([10.164.26.144]) with mapi id
	15.01.0669.018; Fri, 21 Oct 2016 03:51:51 +0000
From: Sudhindra Deshpande <sudhin_deshpande@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto on ECS GWS-QX board
Thread-Index: AQHSK05JmmbxsJQpZEGzV9VKprjQAA==
Date: Fri, 21 Oct 2016 03:51:51 +0000
Message-ID: <SN1PR12MB07985970C7CB27FCF41A9A19F9D40@SN1PR12MB0798.namprd12.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ocOEpZ5ddhS3k8AT+uHC4BmpHcr9VEe4]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT176;
	6:2IOFjDPSdwn7CSjAlB2Lk1qPUoedl1jgq7FDMkRsaVlbPzqRyTiEL28DMG3gf2w1twbUst5s2vfRwQ7QSXhMHn3nGcIandx028hUtPvMtCwFlqGi0dPsaqfkRN9uWW0M2HikBFzQGl3sctAEs5BuN300pKFCA6Ncw8LnrgYkD9EFijGxFc4QLVmwKpVOsbEAqaN37JnMfSWZiUhUUK+wie2BB74oLtJw+0qghdNVV/E496GRp7JC+SgL3RZKg78HmJFKPRNYes3QSnKHqNWBIzPltY16ZJ8hNtl6RkYqMikZVZUvVrmKPDa1Z9V9v8Pw;
	5:z8nLbjQWkahkc9scLIta+CAQkOzytLIL+dhcY3YnFH/dfVsAIIjDswalwS4lrUmoa+Cx924JChunq/pl6pU81iGyk+Cy5OJC3z2JZhXt5g/+UOiBN8Xm3vMLocLvMR/oPsxWA8CEqNfbWwX9HI4T/w==;
	24:GGcRqJ2YgJdzJRsDTFUV/hm8+t8I43pfdUDdBt+j0BVjG9o7sa61unDjoVagxYLbJ8IunsjQHWjaZjHuV/ZelYipwidZhqm87H6MQ6ERhgQ=;
	7:/pczycXTD0QV0nacYHBUjAvJNpFkOsBckmU87u5FG4fMdPmzI/aDG1F0UF3EcFmo64EjLJsFhD3FNE2zjeN40UalPMDT5BUlZXIhMXZnJWVK5xaVr8rtE8D20GXTwyYaeUaeSgLM0N1Z5EhDG1MEjArR69UxKfPW+3iVTT6YqN7hkfV2Gr6WeR+gTy6nBnCzlqAhZPmNRAQ79YSHTSU5PjKqsCmW0u7mCQNKaxsAwViJUbOOJSZtC8Luw0NS9fMytIsG28ksb4W9MIEHhisR4pZS+/1nXlHeNdvdeU7RH+k+Mzor2wS8lfLXfJKo4rMM1JtQHCABdYn8fNPKwxyhs5OFs3B4IRaF4GdWvBg+1cg=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2NAM02HT176;
	H:SN1PR12MB0798.namprd12.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 145fffc1-a408-42a6-5dfb-08d3f9659745
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047)(1603101337);
	SRVR:BL2NAM02HT176; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:BL2NAM02HT176; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT176; 
x-forefront-prvs: 01026E1310
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2016 03:51:51.2198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT176
X-OriginalArrivalTime: 21 Oct 2016 03:51:52.0931 (UTC)
	FILETIME=[75B38B30:01D22B4E]
Subject: Yocto on ECS GWS-QX board
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
X-List-Received-Date: Fri, 21 Oct 2016 03:52:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN1PR12MB07985970C7CB27FCF41A9A19F9D40SN1PR12MB0798namp_"

--_000_SN1PR12MB07985970C7CB27FCF41A9A19F9D40SN1PR12MB0798namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a newbee question.
We are thinking of installing Yocto linux on ECS board with Intel Quark SoC=
 X1021 processor.
How do I make sure that Yocto will work on this board?
What are the questions I should ask?
The link to the board is below
http://www.ecs.com.tw/website2008/Product/Product_Overview.aspx?DetailID=3D=
1604&CategoryID=3D18&MenuID=3D205&LanID=3D0#Overview
It seems to support Wind River.

Thanks so much
-sv


--_000_SN1PR12MB07985970C7CB27FCF41A9A19F9D40SN1PR12MB0798namp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p><font face=3D"Arial, Tahoma, Helvetica, sans-serif" size=3D"2">Hi,</font=
></p>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font face=3D"Arial, Tahoma, Helvetica, sans-serif" size=3D"2">I have a new=
bee question.</font></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font face=3D"Arial, Tahoma, Helvetica, sans-serif" size=3D"2">We are think=
ing of installing Yocto linux on ECS board with Intel&nbsp;</font><span sty=
le=3D"color: rgb(51, 51, 51); font-family: &quot;Roboto Condensed&quot;, sa=
ns-serif, Helvetica, Arial, Verdana; font-size: 14px;">Quark
 SoC X1021 processor.</span></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<span style=3D"color: rgb(51, 51, 51); font-family: &quot;Roboto Condensed&=
quot;, sans-serif, Helvetica, Arial, Verdana; font-size: 14px;">How do I ma=
ke sure that Yocto will work on this board?</span></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<span style=3D"color: rgb(51, 51, 51); font-family: &quot;Roboto Condensed&=
quot;, sans-serif, Helvetica, Arial, Verdana; font-size: 14px;">What are th=
e questions I should ask?</span></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<span style=3D"color: rgb(51, 51, 51); font-family: &quot;Roboto Condensed&=
quot;, sans-serif, Helvetica, Arial, Verdana; font-size: 14px;">The link to=
 the board is below</span></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font color=3D"#333333" face=3D"Roboto Condensed, sans-serif, Helvetica, Ar=
ial, Verdana"><span style=3D"font-size: 14px;">http://www.ecs.com.tw/websit=
e2008/Product/Product_Overview.aspx?DetailID=3D1604&amp;CategoryID=3D18&amp=
;MenuID=3D205&amp;LanID=3D0#Overview</span></font></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font color=3D"#333333" face=3D"Roboto Condensed, sans-serif, Helvetica, Ar=
ial, Verdana"><span style=3D"font-size: 14px;">It seems to support Wind Riv=
er.</span></font></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font color=3D"#333333" face=3D"Roboto Condensed, sans-serif, Helvetica, Ar=
ial, Verdana"><span style=3D"font-size: 14px;"><br>
</span></font></div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font color=3D"#333333" face=3D"Roboto Condensed, sans-serif, Helvetica, Ar=
ial, Verdana"><span style=3D"font-size: 14px;">Thanks so much</span></font>=
</div>
<div style=3D"font-family: Arial, Tahoma, Helvetical, sans-serif; font-size=
: 12px;">
<font color=3D"#333333" face=3D"Roboto Condensed, sans-serif, Helvetica, Ar=
ial, Verdana"><span style=3D"font-size: 14px;">-sv</span></font></div>
<br>
<p></p>
</div>
</body>
</html>

--_000_SN1PR12MB07985970C7CB27FCF41A9A19F9D40SN1PR12MB0798namp_--
