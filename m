Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.50])
 by mx.groups.io with SMTP id smtpd.web12.43583.1598624168125868816
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 07:16:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=fQwP1X9V;
 spf=pass (domain: niko.eu, ip: 40.107.15.50, mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4LHCEanxeBxLU29GIKbPCLXao307dGpOMluJM28z0bSTn0LT++SJI1MJ3xwtS9gfPumzvnZ8vBd7OXP5qXAYYOImMkM+El/8oREPpJTMQb/v0AueLld0fSLvrM66IBdzzwBbeelNKoWi0aDUVcfsSLS6sw+AqR/P3PtgAxU2B83vR6c+LixPlR+0qe7VSOwOxpHQOjM8BMJX42tNS+DGKQaU1xYyuY5LresjZpsflGeptbF+RV4zfwaakq1b/I4NG3KvxsvOzSuPJQW2WBXWpojAWDSRlRtOcYbfH8mWxYs1zu9md7T3vAjXB6E/nbGNxDiDE6T/LCPToEnWaIfhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7yTBi6LriwXBMxih+jripaa3sB6FI2TBhQPTtphL/cQ=;
 b=LQCC1/nwj7hErqZJhHsDt4OVN6O2qNxd2AQOCyecBiMhVyFAeNZdUiOHfNmsP0iuZtkBnD/DchHnpG9+M1r8RpUaaka58R/Ar9Sb8mN/e8T3GeqkzjdTqXDiKrl+Cpl/tURS80N1BBl2KB83wMBDFwpOAWDr0su2gR3bbXdOfmjkO/rU8bxfgT/639cZixbl/IozDANv9PJ29mKh2GHGbH0wIuYlj9ihs0QMfOO9PEGRQsbw5yxfZN3+ZhVMm2EECRFuqti7kzINj7UwD5GyM+HnxAnABReeJst7dtSnKDEIqUi9UmHAskFaVOEhnnV4v+t/AMMiK4tKMWKBBaOExg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7yTBi6LriwXBMxih+jripaa3sB6FI2TBhQPTtphL/cQ=;
 b=fQwP1X9Vl+oF2kdMwI3NBDQHd6djzfkQfNSJIY8dUSN1uCRDXe65BVtzVqZnsQXgw6mjNUlFvLgRr5d4MtZ+OB6p/Qonx89B0inFF5XzFNwsZcB5KeWy/pHWEq/R8dskb3zdpodhQswJOJws6PUARuUUOkfJjVwWiYySq0H97HY=
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com (2603:10a6:101:1c::10)
 by PR3PR08MB5644.eurprd08.prod.outlook.com (2603:10a6:102:86::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.21; Fri, 28 Aug
 2020 14:16:05 +0000
Received: from PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1]) by PR2PR08MB4651.eurprd08.prod.outlook.com
 ([fe80::e9:a178:7f75:48c1%4]) with mapi id 15.20.3261.026; Fri, 28 Aug 2020
 14:16:05 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <joseantonio.cardenas@niko.eu>
To: Jean-Marie Lemetayer <jeanmarie.lemetayer@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] dist folder missing in npm build.
Thread-Topic: [yocto] dist folder missing in npm build.
Thread-Index: AdZ9IHYbc/gPo1sDSXiR7gxnHDL5ngAFXEcAAAPryJI=
Date: Fri, 28 Aug 2020 14:16:05 +0000
Message-ID: 
 <PR2PR08MB465126E72AAD99742BD584C08B520@PR2PR08MB4651.eurprd08.prod.outlook.com>
References: 
 <PR2PR08MB46513AE9AE69434AF6E860EB8B520@PR2PR08MB4651.eurprd08.prod.outlook.com>,<CAAdc0hw-cRzUX4zHxgApvaUnR69TL9q_rZMtj3HoEQMZoU8-Mg@mail.gmail.com>
In-Reply-To: 
 <CAAdc0hw-cRzUX4zHxgApvaUnR69TL9q_rZMtj3HoEQMZoU8-Mg@mail.gmail.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=niko.eu;
x-originating-ip: [46.222.242.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 186e9e41-8155-4b4f-86ee-08d84b5ce6d8
x-ms-traffictypediagnostic: PR3PR08MB5644:
x-microsoft-antispam-prvs: 
 <PR3PR08MB564405151450BDBE37E8D0738B520@PR3PR08MB5644.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8T2iQqChx0WavaqjIW3VY8S4p2xCv66IT5rUGnRNE+lWhbUaD7R32hDHtaYgBvQv9Mo236740s+Mr9XIE6fe4lrI1jp78DvEhvpZaXV9GiKqLPRQXWLj1CmSiex57Dph6UzgjrGcGFhcqMIgdUi+TTxDUbh+yzsgS12rLsi+aQhx4HPKWGHOwGo1dZ+Ew60aWUjpgGIE+xAJ6IqKweq2r/SqRuCd3Y6o6ViWMDGQdDp0vyVTwu9m37BUyCKossPtStH5tPknIW9Um/ON89JL8oxw8t2kOeM5S+rIAvBX2tb10NC9fXsLwIIXW+boGUmr80AwEy2RTMGf9dUnMozJhSHRsaww4lYH+6O998BhsiqbFATB1puVN2gF806kJUQtZ9gYhA+mdjxyhauMEnixGA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2PR08MB4651.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(66446008)(71200400001)(66556008)(66476007)(86362001)(52536014)(33656002)(5660300002)(8676002)(76116006)(83380400001)(64756008)(478600001)(66946007)(53546011)(186003)(6506007)(26005)(6916009)(2906002)(966005)(316002)(7696005)(166002)(4326008)(45080400002)(8936002)(55016002)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 krYKgKuX6pEBxb405s59jDnmHOXaJ5XxFQXDErAMZVvDp/x1pAtjZzKBxHtCkniUVvJlkzpKehen8LN5yb5uG2GDvWEwruI7FmdfC9qg1Su8QFyXS9RMDZFSgi6MD+sYXZovBPFPY1zMtRdCMeMBspvDlRYRSsJ7VU1HVoHDXYcPQpBGreeY4quf2HsqdmNpckX8P5zmPm0I2W4WEs0EnxUkmNbJZzvUWBuz4Vz0e+VfM2+jFZaU+T2TMKHG/d8uVRN8qVQpq2e1ffIVVmn9EFHn2+CV0dstWc2NWOglgP1b06bnxY9WXaDiAMnpEvtE7P+oNGGgo/V2cFpfsIb+X0NdJsXWgamhk6fdaMUdbPaKtrG7935d2ESMAoSA5ZmpoInGzwW2OhkpKqr0qbnZ8QHlEvTAC04i5nA/h9HEGftEuOeB8D48RTVCw4gdz7dGUttXfPFOpzgsEOFsrCZDWv4wgVAXeFGXbEySXs3JMnyhD6wVt4uPlv7Y7eeU6CShUMGV9XXMTSi1vqFX8a2xcCpi1AFcR6KdlSTacEkJUTnYBj0D9ubZHgYhNHQfy1e/J23vlAFHMVryit1lU7b7IB//3Uv0kDSjyWklv4o0pkAaXz8k1wLX6MNWIIHNbtJlunEH7ltnPfW+OgZOEy6KGg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR2PR08MB4651.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 186e9e41-8155-4b4f-86ee-08d84b5ce6d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2020 14:16:05.3920
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hMV08TBYMwwWxM0iUGM1j3ho7bQ5zMvOyvtkDfnz0n2vDeeOtZR1jMDe6dXz+ddO/Ah2OmSc2ZxGe9lSL/EnwCvM2hUQgl5/1F6lMNoyX8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5644
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_PR2PR08MB465126E72AAD99742BD584C08B520PR2PR08MB4651eurp_"

--_000_PR2PR08MB465126E72AAD99742BD584C08B520PR2PR08MB4651eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Jean-Marie, thank you for the info.

Do you know how we could do this extra build step? We are not sure about h=
ow to do it.

Regards.
Jose

Obtener Outlook para Android<https://aka.ms/ghei36>

________________________________
From: Jean-Marie Lemetayer <jeanmarie.lemetayer@gmail.com>
Sent: Friday, August 28, 2020 2:22:32 PM
To: Cardenas Jose Antonio (JCARDENA) <JoseAntonio.Cardenas@niko.eu>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] dist folder missing in npm build.

CAUTION: This email originated from outside the organization. Do not click=
 on links or open attachments unless you recognize the sender and know the =
content is safe.

Hi Jose,

Seeing your other email in the list, it seems that you are trying to
build an angular or react application.

Right now the build of these applications is not handled by Yocto yet.

For an angular application you will need to pack the ng native tool
and call it to generate the dist directory.

For a react application you have to run the npm build script but the
output files will be in a build directory.

Best regards,
Jean-Marie

On Fri, Aug 28, 2020 at 11:54 AM Cardenas Jose Antonio (JCARDENA)
<joseantonio.cardenas@niko.eu> wrote:
>
> Hi all,
>
>
>
> i=92m trying to reproduce an older recipe that was built with npm. It se=
ems that the older recipe copied server files from a =93dist=94 folder that=
 now is missing.
>
>
>
> I show the install part of the recipe:
>
> do_install() {
>
>     install -d ${D}/usr/httpd/zigbee-ui
>
>     cp -r ${S}/dist/* ${D}/usr/httpd/zigbee-ui
>
> }
>
>
>
> Someone knows what happened with this folder?
>
>
>
> Regards
>
>
>
>=20

--_000_PR2PR08MB465126E72AAD99742BD584C08B520PR2PR08MB4651eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-=
1252">
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fam=
ily: sans-serif; font-size: 11pt; color: black; ">
Hi Jean-Marie, thank you for the info. <br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fam=
ily: sans-serif; font-size: 11pt; color: black; ">
Do you know how we could do this extra build step? We are not sure about h=
ow to do it.
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fam=
ily: sans-serif; font-size: 11pt; color: black; ">
Regards. <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fam=
ily: sans-serif; font-size: 11pt; color: black; ">
Jose<span id=3D"ms-outlook-android-cursor"></span><br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fam=
ily: sans-serif; font-size: 11pt; color: black; ">
<span id=3D"OutlookSignature">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fam=
ily: sans-serif; font-size: 11pt; color: black; ">
Obtener <a href=3D"https://aka.ms/ghei36">Outlook para Android</a></div>
</span><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" s=
tyle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jean-Marie Lemetayer=
 &lt;jeanmarie.lemetayer@gmail.com&gt;<br>
<b>Sent:</b> Friday, August 28, 2020 2:22:32 PM<br>
<b>To:</b> Cardenas Jose Antonio (JCARDENA) &lt;JoseAntonio.Cardenas@niko.=
eu&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t;<br>
<b>Subject:</b> Re: [yocto] dist folder missing in npm build.</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt=
;">
<div class=3D"PlainText">CAUTION: This email originated from outside the o=
rganization. Do not click on links or open attachments unless you recognize=
 the sender and know the content is safe.<br>
<br>
Hi Jose,<br>
<br>
Seeing your other email in the list, it seems that you are trying to<br>
build an angular or react application.<br>
<br>
Right now the build of these applications is not handled by Yocto yet.<br>
<br>
For an angular application you will need to pack the ng native tool<br>
and call it to generate the dist directory.<br>
<br>
For a react application you have to run the npm build script but the<br>
output files will be in a build directory.<br>
<br>
Best regards,<br>
Jean-Marie<br>
<br>
On Fri, Aug 28, 2020 at 11:54 AM Cardenas Jose Antonio (JCARDENA)<br>
&lt;joseantonio.cardenas@niko.eu&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; i=92m trying to reproduce an older recipe that was built with npm. It=
 seems that the older recipe copied server files from a =93dist=94 folder t=
hat now is missing.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I show the install part of the recipe:<br>
&gt;<br>
&gt; do_install() {<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}/usr/httpd/zigbee-ui<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; cp -r ${S}/dist/* ${D}/usr/httpd/zigbee-ui<br=
>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Someone knows what happened with this folder?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
</div>
</span></font></div>
</body>
</html>

--_000_PR2PR08MB465126E72AAD99742BD584C08B520PR2PR08MB4651eurp_--
