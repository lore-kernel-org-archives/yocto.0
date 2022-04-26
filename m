Return-Path: <jens-christoph.brendel@computec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8F5C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 10:26:05 +0000 (UTC)
Received: from smtpgw.computec.de (smtpgw.computec.de [93.104.202.5])
 by mx.groups.io with SMTP id smtpd.web09.4557.1650968760804280970
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 03:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@computec365.onmicrosoft.com
 header.s=selector2-computec365-onmicrosoft-com header.b=X8zmrrpV;
 spf=pass (domain: computec.de, ip: 93.104.202.5,
 mailfrom: jens-christoph.brendel@computec.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=computec365.onmicrosoft.com; s=selector2-computec365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LToue1GI2D/Wj9f3vvIvvGIlkj9u54Lpy9J7hCh59p0=;
 b=X8zmrrpVVnT6wWJ+HM4gOushoPFUU6Y+UAPaYzc7TSZ8ZiEOtxh8V7/vrb0fou2CuTsguGUKVph2JX7snQQNfjBrOem6KBz+xROhYASInahpiK2VeLBmY5PWvfhuYNxLToJtGZreA6ZNBiefGF0S8dLc+weH4+8sTpRU9sOSEq4=
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.79.220.33)
 smtp.mailfrom=computec.de; dkim=none (message not signed)
 header.d=none;dmarc=permerror action=none header.from=computec.de;
Received-SPF: Pass (protection.outlook.com: domain of computec.de designates
 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CyiPRRxPUYrPFeC26yuyCab07N0aABPZPtjk6leRnHiqtFeDeyzVU7LPmYxvKT3iAZtCvRmOUhbrSg4SMwIUPXqj/5VoFBNewbGqnJP502lYtBKdQpKBdKndvm7Wo5LUgpxI/9XSDyZ8kJTISHKm4+xWPzYNmvQCDjqXGnpHR/5+ODJWpFphf9Sti83SLAaTJA+AyWgdaHDBYaCkRc2ZQ+8VABFlqQ20PM2oaG9Ie6eojbaN5tRLQUXYn+1bDIEAVhVCEx+TV//kxBCrmDNQTupV12Wofz9RxzOsJFYnXz13WO+UThrfOmKeS5rofRu4JK5RAxHzX/KWeckj0pFg4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+GP3mbnpGqRyRUD3HY19H+mmivLh6zh0cb+tqy3PK8=;
 b=l+L5SWJBmtWTa/ntiFgWnHAc1/pzIFLWAatE90EHKgY7evOHUPkTWm+qG3LOoKsHjiIQLPBUhUejd/2N7EIpcNJB6ZFyzwvwBMpQ8pcw6YKPdLWy8Nw9jR+9vWFkWOZDNWESamPGt7YlPt54mV20IrjDHdV5Mg5gLoUoRda2fNt4+zemvppDoevm3CywgHNJzvo/+eKofhjIy10jo9tlm5KXRYTxXVU9pqccFh9GCVAw7Gekymm5GqjiZoH+QJoub26IsHev880P/UvlfudhkH7E34GoMRefhRySk5M/2tgNMp/TRx9zZcbhkbFFJhYQDK0pV1ZU9Y4LTOlXQTQyag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=computec.de; dmarc=pass action=none header.from=computec.de;
 dkim=pass header.d=computec.de; arc=none
From: Jens-Christoph Brendel <jens-christoph.brendel@computec.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: press request
Thread-Topic: press request
Thread-Index: AdhZV91ITrQ63Xz8So2EWoOKJgu3qQ==
Date: Tue, 26 Apr 2022 10:25:44 +0000
Message-ID: 
 <PR3PR08MB5593609231EA36C027A8168AC4FB9@PR3PR08MB5593.eurprd08.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=computec.de;
X-MS-Office365-Filtering-Correlation-Id: 38196b76-4049-4c34-2530-08da276f259b
x-ms-traffictypediagnostic: 
	HE1PR0801MB1723:EE_|DB8EUR05FT017:EE_|AM0PR08MB3956:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR08MB3956BFC1A9D5582618B5AEE1C4FB9@AM0PR08MB3956.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 FiNCHBFzEmoe3WTMRAjn8deaEhNbHKUMnPw3acfA6tMApcQUR9Bl/yCcfPOJmkZLgkrDR5OGh4PfgQVuXV+oDBI01awJGNa48tmmQoaKYes74Kf7kTttYKdu3SaHG9aqSUIXWtkbUVatHrrG/V1I9yhldYpEcowjiZaCAyTHLrpBMmnA/hTzSH1Va7NWMpe2LgJkUbA+zFbNzbX6sJFeMjBZPvkZMtbcwk4i2BCIeFUVtVpf+3pbdggw0Gkswxgvjx8eUkJdOpx50lORL4ixLNTS+/9x6D9dzhYSBmJCWlRXfJPydw9TO+Cau0ZvbI+qACwpNpwI8onPdTxZww/mh6GSrSfAG6UsoSfQrolCpZLQ5coCG6pzGrCuDOwMheDy83FfKUBxcdGOCFz9VhAAuH0VYJOlH8TWXGGv3lcQh/Vogzv/Fxr+HcdMoIb+ZnI8R5SDymHdfErirkWwOScXdL3o+NFwDRiX/rYVBwB/aBJ/T1X23VnJ2nyLRcQFY4qEL5izPcCzUcH0JcVnSVCXR6eix10BP5xDCfmchEvKr0aSaxIxnxoWCjqGLDH0at3PDNPsf9Vwun8AebrmX7FjGqKqnVhX/GsVSvKxOos/8zHZsVH+iTB5CSLIqs7n/lnGNhZdFrDKABB6ilHl3jpLla63c3unpRHdgYEQZlywMZPDFRZV3vmGh/1z6s2Zn5A+YUjO7lvAUUxDQbvswMiusA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR08MB5593.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(39840400004)(136003)(396003)(346002)(376002)(366004)(2906002)(66946007)(508600001)(76116006)(66446008)(122000001)(316002)(7116003)(19627235002)(52536014)(8676002)(6916009)(71200400001)(5660300002)(8936002)(55016003)(3480700007)(38100700002)(86362001)(66476007)(66556008)(38070700005)(64756008)(33656002)(9686003)(7696005)(186003)(26005)(6506007);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PR3PR08MB5593609231EA36C027A8168AC4FB9PR3PR08MB5593eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1723
X-CodeTwo-MessageID: 
 edd1fbff-62d2-4f49-8f35-a218f493de85.20220426102547@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: 
 <82d17f75-915d-485f-9353-f091fb3576e8.8d5b84c6-3d2e-4c12-b2dd-1cea205060bd.ca077ef4-6901-4389-9aeb-ca4ee71b74c6@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB8EUR05FT017.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7842dfd9-7e15-49df-77c7-08da276f1f86
X-AntiLoop-Smarthost: True
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fpYP2kckoDR/GuxZDcE6UJ8/kla8r8eHg4nK1P2gLPPLz0/KIXSJUL6g8r1LU2MmC2v3xqiD9L+vS4fTbmiDPHZx7ZecBT2x84w6CG6852iO0TME/2becvwdsnKcGTQ3B2xtKFo8aXzAy+aJmOg3AuFWsDHWNBpcKQWGUzzG1Iy34gXKhsA8/bP62mKaV6gf5vbWE/oaowCWijAV6grDNjz6JlYVLfVnGpp5S5s0EiaW6IYd8WeK4M4yJd1/0Q2K9wzkDaMkW0aGgpirBOMb9MlbbGaogeUuOc+kESVxOeWbyaySCEXxBdkwxBRRqc7Eh2vSZz1UI6QAFgBF7Lsno/zqXWUPcxBgMq6lx6EMg+XnV3+98vKx1hTX4j8hG33o0IH29vXBbOxCS2KcRGvizD3OG9us2QPEycV2FiZmeQcFLUBh1DLf7Jxu2GecZEXmRwy8GfjRAnwh34LgpEmtWmGXAC+cVMwdHEo7JId796v7M487G8vtasUkXaTHAMlsNMdOb8tpdygRPwL/P6z4PfuKwtgF4aWHTvsfQ1IxPBRpkwaxgiIZtdD+f2bsabxs6Ke9kfJSoA7QWiemCeXMRh04TbaVdqM73TZcgXxp9HK32rkqY93t+V2MYdKiKAtR9J/CaMDziTyOsZnbhnB9kYaKtbZc22jvm602PPtvAcw21NfTzEaRpEoeDpOT/3NkZY7PKVYuv36LcLp9islgKZLaNLtxf55i9SiI1RBJYSKP7jp1pXxGLTCxLZU8ruv+hFPNNpo3GD3Wnehwg6cl+g==
X-Forefront-Antispam-Report: 
	CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230001)(376002)(136003)(346002)(396003)(39840400004)(46966006)(36840700001)(166002)(8676002)(3480700007)(70586007)(70206006)(55016003)(19627235002)(47076005)(66574015)(966005)(7116003)(6916009)(356005)(83380400001)(336012)(40480700001)(186003)(508600001)(7596003)(33656002)(52536014)(7636003)(8936002)(6506007)(2906002)(26005)(316002)(86362001)(9686003)(36860700001)(82310400005)(5660300002)(7696005);DIR:OUT;SFP:1101;
X-OriginatorOrg: computec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2022 10:25:55.1499
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 38196b76-4049-4c34-2530-08da276f259b
X-MS-Exchange-CrossTenant-Id: c25330ea-993f-4793-bc95-30465766ea2a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=c25330ea-993f-4793-bc95-30465766ea2a;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB8EUR05FT017.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3956
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 10:26:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56890

--_000_PR3PR08MB5593609231EA36C027A8168AC4FB9PR3PR08MB5593eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We, the German Linux magazine, are planning a focus on Linux distributions =
for the IoT in the 07/22 issue. One of them we have in mind is Yocto. We ar=
e therefore looking for an author who can introduce Yocto to our readers in=
 an article. Such an article should be four to six pages (about 4000 charac=
ters each) and cover questions such as:

- What is Yocto? (main purpose, target audience, compatibility)
- Scope of services
- Differences and similarities compared to similar operating systems
- Advantages and disadvantages
- Examples of use

After reading this, one should be able to estimate whether Yocto meets the =
user's expectations and whether it is worth trying out.

Is there anyone out there who would like and have the time to write such an=
 article for us? We would pay 80 Euro per printed page. We prefer plain ASC=
II as text format and need some illustrations (screenshots or diagrams or p=
hotos). Please contact me at jens-christoph.brendel@computec.de.

Thanks in advance
Jens-Christoph

. . . .
Disclaimer: The recipient acknowledges that Computec Media GmbH is unable t=
o exercise control over the content of information contained in transmissio=
ns made via the Internet. Computec Media GmbH hereby excludes any warranty,=
 written or implied, as to the quality or accuracy of any information conta=
ined in this message and any liability of any kind for the information cont=
ained, therein, or for its transmission, reception, storage or usage in any=
 way, whatsoever.
Sitz der Gesellschaft und Registergericht: F?rth (HRB 14364) Gesch?ftsf?hre=
r: Christian M?ller, Rainer Rosenbusch Umsatzsteuer-Identifikationsnummer: =
DE812575276
Informationen zur Datenverarbeitung und Datenschutz: https://www.computec.d=
e/datenschutz<https://www.computec.de/datenschutz/>
. . . .

--_000_PR3PR08MB5593609231EA36C027A8168AC4FB9PR3PR08MB5593eurp_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We, the German Linux magazine, are planning a focus =
on Linux distributions for the IoT in the 07/22 issue. One of them we have =
in mind is Yocto. We are therefore looking for an author who can introduce =
Yocto to our readers in an article.
 Such an article should be four to six pages (about 4000 characters each) a=
nd cover questions such as:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">- What is Yocto? (main purpose, target audience, com=
patibility)<o:p></o:p></p>
<p class=3D"MsoNormal">- Scope of services<o:p></o:p></p>
<p class=3D"MsoNormal">- Differences and similarities compared to similar o=
perating systems<o:p></o:p></p>
<p class=3D"MsoNormal">- Advantages and disadvantages<o:p></o:p></p>
<p class=3D"MsoNormal">- Examples of use<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">After reading this, one should be able to estimate w=
hether Yocto meets the user's expectations and whether it is worth trying o=
ut.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there anyone out there who would like and have th=
e time to write such an article for us? We would pay 80 Euro per printed pa=
ge. We prefer plain ASCII as text format and need some illustrations (scree=
nshots or diagrams or photos). Please
 contact me at jens-christoph.brendel@computec.de. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
<p class=3D"MsoNormal">Jens-Christoph<o:p></o:p></p>
</div>
=0A=
<P =0A=
style=3D'FONT-SIZE: 8pt; FONT-FAMILY: "Neutraface 2 Text Book", Calibri, Ar=
ial; COLOR: #d2d2d2'>. =0A=
. . . <BR>Disclaimer: The recipient acknowledges that Computec Media GmbH i=
s =0A=
unable to exercise control over the content of information contained in =0A=
transmissions made via the Internet. Computec Media GmbH hereby excludes an=
y =0A=
warranty, written or implied, as to the quality or accuracy of any informat=
ion =0A=
contained in this message and any liability of any kind for the information=
 =0A=
contained, therein, or for its transmission, reception, storage or usage in=
 any =0A=
way, whatsoever.<BR>Sitz der Gesellschaft und Registergericht: F&#xFC;rth (=
HRB 14364) =0A=
Gesch&#xE4;ftsf&#xFC;hrer: Christian M&#xFC;ller, Rainer Rosenbusch =0A=
Umsatzsteuer-Identifikationsnummer: DE812575276<BR>Informationen zur =0A=
Datenverarbeitung und Datenschutz: <A =0A=
style=3D'FONT-SIZE: 8pt; TEXT-DECORATION: none; FONT-FAMILY: "Neutraface 2 =
Text Book", Calibri, Arial; COLOR: #d2d2d2' =0A=
href=3D"https://www.computec.de/datenschutz/">https://www.computec.de/daten=
schutz</A><BR>. =0A=
. . . </P></body>
</html>

--_000_PR3PR08MB5593609231EA36C027A8168AC4FB9PR3PR08MB5593eurp_--


