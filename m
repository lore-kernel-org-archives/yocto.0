Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1430C77B75
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 11:58:21 +0000 (UTC)
Received: from outp.altice.pt (outp.altice.pt [83.240.183.2])
 by mx.groups.io with SMTP id smtpd.web11.9342.1682077345518060448
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 04:42:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: alticelabs.com, ip: 83.240.183.2, mailfrom: daniel-s-mendes@alticelabs.com)
Received: from localhost (localhost [194.65.113.176])
	by picamsmtac02.altice.pt (Postfix) with SMTP id 4Q2t1C2F7tzyN5J;
	Fri, 21 Apr 2023 12:42:23 +0100 (WEST)
X-MPS-TrackID: 4Q2t1C1cR0zyN4fK73T
Received: from smtp365out.telecom.pt (smtp365out.telecom.pt [194.65.113.176])
	by picamsmtac02.altice.pt (Postfix) with ESMTP id 4Q2t1C1cR0zyN4f;
	Fri, 21 Apr 2023 12:42:23 +0100 (WEST)
Received: from PTPCOVEX05.PTPortugal.corpPT.com (10.18.111.12) by
 PTPCOVEX03.PTPortugal.corpPT.com (10.18.111.10) with Microsoft SMTP Server
 (TLS) id 15.0.1497.48; Fri, 21 Apr 2023 12:42:22 +0100
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (104.47.12.55) by
 smtp365.telecom.pt (10.18.111.12) with Microsoft SMTP Server (TLS) id
 15.0.1497.48 via Frontend Transport; Fri, 21 Apr 2023 12:42:22 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FeMwlO4bQ3ErADifWUtgpXnNaEyyphONXPfJMl+T+W0yEMzuBWvIUMclk74F+9+mPuDgONDr76PtWnCWi8rIiqgwAkdMgM1WcoeBEufsfA29Zj2suuj+FAglfw98d5VepUCkgRGZWf8mzBnmk+E/zUUkxPsesvEWGygJx4YkIZPRIvl10nQeFXBjz3Z+ChRx+R811ycePOJjrO0YRoeu24mOWzExJpa5wRO1tUbeCPj1KCnFUEI5rBNP4PhO74DunVBb5URftzUm6YJ0HE/R5xVuUTyzjFlmXuNnebZAX5VsKke30sPIxQpcJpu7BAcIfNuEDaDC03N+z1ISBP+LNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3SmsKBGt6ljr2JNRZYMhxClaB+2Kf4ufETsktOTeHzU=;
 b=U7wf2kMDN/FGnRNeRj53DtkBnRK2POrJZyq7hlGWJ2gzvNePpgW446VDonNtaeYcgxCpaDBJp5SWiB911KVE2HIAkSLcfU4TFfjQOBpdWi6YtLCbrZGGE2pzUVTnPXgdoCyZtN8XMh1lUuwBF94QdOtEnceJ1ogBsC8HXTDBS3LGNOxsdfX1FVp5y7t6eTIPGC2j4qcZ8af+nDtdhxx83B5cvarDyQV87stLQyeAJgEpqTVecNZZdY9hdmbroAGq84vowXycn9/UX2IvZ93Yh8LSwyeCRSIsIbV2kGvFBNmNL0pNDTYkd3gMYwbC6t1VFtMO2Gc14slIZTlvzSBOZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alticelabs.com; dmarc=pass action=none
 header.from=alticelabs.com; dkim=pass header.d=alticelabs.com; arc=none
Received: from AM0PR06MB3940.eurprd06.prod.outlook.com (2603:10a6:208:af::32)
 by VI1PR0602MB3664.eurprd06.prod.outlook.com (2603:10a6:803:10::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 11:42:21 +0000
Received: from AM0PR06MB3940.eurprd06.prod.outlook.com
 ([fe80::452a:11a9:2748:dd14]) by AM0PR06MB3940.eurprd06.prod.outlook.com
 ([fe80::452a:11a9:2748:dd14%3]) with mapi id 15.20.6319.021; Fri, 21 Apr 2023
 11:42:21 +0000
From: "Daniel Seca Mendes" <daniel-s-mendes@alticelabs.com>
To: "main@lists.yoctoproject.org" <main@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: SFTP protocol supported by curl
Thread-Topic: SFTP protocol supported by curl
Thread-Index: AQHZdEY+0NM0p2dRTkKAwhCJTwc26Q==
Date: Fri, 21 Apr 2023 11:42:21 +0000
Message-ID: <AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609@AM0PR06MB3940.eurprd06.prod.outlook.com>
Accept-Language: pt-PT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
X-authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alticelabs.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB3940:EE_|VI1PR0602MB3664:EE_
x-ms-office365-filtering-correlation-id: bad38a70-eefe-436e-d36c-08db425d77d0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KftV1/tsVt/fVGTNuS0aa0xVzbUBdT8HD3w0V20MusTprB9xf0CvjqCf1ypSVD7sGSmoie65vRuA4j9mEhqZsVKKJ3jmTsF5picEnKWoDr+9M4wwiaxi/bmO3jCWulQMYrnHEG5c+2Md27CCi1uDQAFKCJ7bjcVMA/Tq/fQkBM2VB9NhyGkuVDl3RKG+1gWoBu5+kAHny4M4j2dtjOUXLrPRncnfFlCGrHOuLszmCM45IHH19Eg/ipkKNilVGGeLUVBZC4hwtVb2fhM5mb6GFt+rh53lJRi3/FtPW8CV41bh2ywYDNuqyikEVJV+2Dk55GI2TlllVZY+7w0bkCQebVrNe09ufy5gzqQYfk9GgYoZ+N18lTlvVbVKqZa7976F/e5Ggb9ZJFUARSwDJjeYyBAcAN99ZGeYUi9KvYW+VQmE4Qaabk7bCU7KLiEi128OtlTgUn0tvtCweZlrV2z4jBe5s1rYeRNSXFS12Rcmj9Wifj2W7X66gENSe4RfnqkhfqJhWTsxKa3bCPZHmeG6MZm8d5ASOX7Y2l1L4hwpwkKCTDs941Z7g2jqM+IL5NRn0BGgG+P+TB1bFr1y8WyNBKx7AXBcecIpOdIOrMwEvnppb8993rPnqy/gUILt7roC
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR06MB3940.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199021)(110136005)(186003)(71200400001)(7696005)(55016003)(86362001)(6506007)(9686003)(26005)(19627405001)(19627235002)(66574015)(450100002)(478600001)(64756008)(66946007)(66446008)(66556008)(66476007)(316002)(76116006)(91956017)(83380400001)(52536014)(122000001)(5660300002)(41300700001)(38070700005)(38100700002)(8676002)(2906002)(8936002)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?214WmxPewMKsvUFHo3wFxyVCPOzRJVkfIsbzAjwksIR1ji/gMV9C/GedEU?=
 =?iso-8859-1?Q?gwL1d4KNveug0SZdurTutyYHVKg3LNjeZ8r+UzlZKDfabe1WJHrvywkybo?=
 =?iso-8859-1?Q?CQalmYp64Of/mzdmCvGAWM7HlOpkrriXznmr5kloKjbnb70TBErfvH/BIq?=
 =?iso-8859-1?Q?JRXs4ml5dUf8MV5mRzUEvjghGuCNogjV7+ed2FXXsNLbAWBi9i80MoPP9X?=
 =?iso-8859-1?Q?NLcnVZ5ERI9Igpz8vlD5FciSR9tlyBleuIwHJb5B62LxOZ2PxhI8NLddNf?=
 =?iso-8859-1?Q?brdZ8PErCGMuUu92KnlJkvi7PDLRVa+evwTpLH4S5IUqqRTjJuxN5q/I8U?=
 =?iso-8859-1?Q?gI7/44bESSjRdVMmXuE3Ob8cG6vt3+q5yE8GfoN7kgLgs80Bd5cL9vLjIq?=
 =?iso-8859-1?Q?xZnAVpxIeLtqFjW2j4NjG6RX/JCGrYOZipW7C1LOFGULOvuFy+dHbxKDRc?=
 =?iso-8859-1?Q?lZCwOCAmBT71MJnbR8FANOeeuOILKyq2wuFiGYZmx6IcuSiDzqejJUvz3W?=
 =?iso-8859-1?Q?ubFpoLIU6BwwkXFXr1CvTCFIk3fF+GsSwLFt8/VGtTRlIlDrVwvsiLGQ1T?=
 =?iso-8859-1?Q?tFhf7dMfGCBDOWaooTtYhfW4HmWCNB6iw+a4m03kFv9cBoMHuPyVyBw6YP?=
 =?iso-8859-1?Q?kh9W0oetH4I8DGVLOGHUKePHpB6t/X2vYxxxRn/XTcyWImx5Rbve68mYIz?=
 =?iso-8859-1?Q?ANR4Q5LINKPQOo36w1vuvmwYNuBWgLgQus/AfkaOTD1CczOW8ZAD3wa9+x?=
 =?iso-8859-1?Q?oQGJD/NociEJc1j/jO3uzwdvaHIZrZ7WwJfNM7NqIWoW9xko44qJIHFsa/?=
 =?iso-8859-1?Q?iOu0v1/qDEFVW7QJ1+49LE7gUztsI60Qg21bnhW2WpKMd5nAIPod3LE38h?=
 =?iso-8859-1?Q?OZOzROXIOrtSjyY3b8QgY2+o0xCmm937EO6B81VTETlq/DOboSstpkEtrZ?=
 =?iso-8859-1?Q?u1MP1JZYZXqiajjD9PiUn3IDixJ03+HoKYsidAtvtN1Cb+dZqGw70DLZKV?=
 =?iso-8859-1?Q?o0KsY2nd0jJPJyj8CQ6l7tIAS1kPXDA7II4HxO04/lLqYUCAtY/hl5nENs?=
 =?iso-8859-1?Q?G7tUQngcHm67nbLzju3joKt4YmT/Hp4Hwgeq0PazCEHWNpNeH4a5aohXxT?=
 =?iso-8859-1?Q?XmBlXeQIXfj0LdppC3wOg/vdc18j42EfCkooHUUSFekkeoLwYBQvzSZldd?=
 =?iso-8859-1?Q?cm4pswO7z/ElqNE/+J9uBdSkSQlzLzGTAV37LqhCMYLCWpNOrHWT+qevE0?=
 =?iso-8859-1?Q?2FgrFrdnIJxtnADzjznWQyI6dbJBLIwxtFfanlm//5gBfLYYTCKZxxi9JG?=
 =?iso-8859-1?Q?Z0XKvN+2PeuuzymCXA9OVAIfi6P+0qqAY1mRP14Ks0o0qMh1roazrODbUM?=
 =?iso-8859-1?Q?+BgISQuZGzDUK4w1pbDwhuDcnrdcTiIAtmiCmChXlo98kTlHLAoaeGrmEN?=
 =?iso-8859-1?Q?f3jDWxHRp7SJHWYQtUPJh+peLXzfdbNJzwnSkhEfAc47Qc+Rm2Vf0Vpmrf?=
 =?iso-8859-1?Q?4pu/cEYP226hENTLVfEgjKIl92GFhDWOYjxZNA1LVV6kUvm2Kg5uSz5diA?=
 =?iso-8859-1?Q?PBDoLQaz3Tx+bQp/Iegf62B2dNJRZJybdqTDHRBjJTAaVufJf3+h+yDtvc?=
 =?iso-8859-1?Q?n8jdsuTn9yForuHLxv/FuJLgX3go+R89tt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB3940.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bad38a70-eefe-436e-d36c-08db425d77d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 11:42:21.2089
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9acd2dbd-ad97-4768-9854-5e28ec55fc41
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3KZI1MvhMbbxKUssiZB/v81xUC2KrJn5JUnfDl/BFBPLVhnGc2iDUS2LhN2P3tCMYqnqEyGW10ArkIqeYPHzcnUJzLsRGQ9SuhVJHbjaz5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0602MB3664
X-OriginatorOrg: alticelabs.com
Content-Language: pt-PT
Content-Type: multipart/alternative;
	boundary="_000_AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609AM0PR06MB3940eurp_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 11:58:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59752

--_000_AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609AM0PR06MB3940eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, community,

I've developing an application that uses curl using SFTP to transfer data. =
The first time I cross-compiled my application and and tested it, it would
print this message: "Protocol sftp not supported or disabled in libcurl".
The solution used was to add the libssh2 parameter in the curl recipe by ch=
anging the line:
    DEPENDS =3D "zlib gnutls"
To this:
    DEPENDS =3D "zlib gnutls libssh2"


I can't find any recent posts on this topic in the community. Is there a mo=
re effective/better solution? Does anyone have a different solution?

Thanks for the attention,
Daniel Mendes


AVISO DE CONFIDENCIALIDADE
A(s) mensagem(ns) acima e quaisquer ficheiros anexos =E0(s) mesma(s) cont=
=EAm informa=E7=E3o confidencial, propriedade da Altice Portugal e/ou das d=
emais entidades do Grupo Altice Portugal, destinando-se ao uso exclusivo do=
 destinat=E1rio. Se n=E3o for o destinat=E1rio pretendido, n=E3o deve usar,=
 distribuir, imprimir ou copiar os conte=FAdos ou os anexos deste(s) e-mail=
(s). Se recebeu esta(s) mensagem(ns) por engano, por favor informe o emisso=
r e elimine-a(s) imediatamente. Obrigado.


--_000_AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609AM0PR06MB3940eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<span class=3D"x_elementToProof" style=3D"font-size: 12pt; margin: 0px; bac=
kground-color: rgb(255, 255, 255);"><span class=3D"x_x_elementToProof x_Con=
tentPasted0 ContentPasted0" style=3D"margin: 0px; background-color: rgb(255=
, 255, 255);">Hello, community,</span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<div class=3D"x_elementToProof" style=3D"font-size: 12pt; margin: 0px; back=
ground-color: rgb(255, 255, 255);">
<div class=3D"x_x_elementToProof" style=3D"margin: 0px; background-color: r=
gb(255, 255, 255);">
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_x_elementToProof" style=3D"margin: 0px; background-color: r=
gb(255, 255, 255);">
<span style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><span cl=
ass=3D"x_x_ContentPasted0 x_x_ContentPasted5 x_ContentPasted0 ContentPasted=
0" style=3D"font-family: Calibri, Helvetica, sans-serif; margin: 0px; displ=
ay: inline !important; color: rgb(51, 51, 51); background-color: rgb(255, 2=
55, 255);">I've
 developing an<span class=3D"x_ContentPasted0 ContentPasted0" style=3D"marg=
in:0px">&nbsp;</span></span><span class=3D"x_x_ContentPasted0 x_x_ContentPa=
sted5 x_ContentPasted0 ContentPasted0" style=3D"font-family: Calibri, Helve=
tica, sans-serif; margin: 0px; display: inline !important; color: rgb(51, 5=
1, 51); background-color: rgb(255, 255, 255);">application
 that uses curl using SFTP to tra</span><span class=3D"x_x_ContentPasted0 x=
_x_ContentPasted5 x_ContentPasted0 ContentPasted0" style=3D"font-family: Ca=
libri, Helvetica, sans-serif; margin: 0px; display: inline !important; colo=
r: rgb(51, 51, 51); background-color: rgb(255, 255, 255);">nsfer
 data. The first time</span><span class=3D"x_x_ContentPasted0 x_x_ContentPa=
sted5" style=3D"font-size: 14px; font-family: &quot;Helvetica Neue&quot;, H=
elvetica, Arial, sans-serif; margin: 0px; display: inline !important; color=
: rgb(51, 51, 51); background-color: rgb(255, 255, 255);"><span class=3D"x_=
x_ContentPasted2 x_x_ContentPasted5 x_ContentPasted0 ContentPasted0" style=
=3D"font-size: 12pt; font-family: Calibri, Helvetica, sans-serif; margin: 0=
px; display: inline !important; background-color: rgb(255, 255, 255);">&nbs=
p;I
 cross-compiled my application and and tested it, it would</span><br class=
=3D"x_x_ContentPasted2 x_x_ContentPasted5 x_ContentPasted0 ContentPasted0" =
style=3D"box-sizing: border-box; background-color: rgb(255, 255, 255);">
</span></span>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><span cla=
ss=3D"x_x_ContentPasted0" style=3D"font-size: 14px; font-family: &quot;Helv=
etica Neue&quot;, Helvetica, Arial, sans-serif; margin: 0px; display: inlin=
e !important; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);=
"><span class=3D"x_x_ContentPasted2 x_x_ContentPasted5 x_ContentPasted0 Con=
tentPasted0" style=3D"font-size: 12pt; font-family: Calibri, Helvetica, san=
s-serif; margin: 0px; display: inline !important; background-color: rgb(255=
, 255, 255);">print
 this message: &quot;Protocol sftp not supported or disabled in libcurl&quo=
t;.</span><span class=3D"x_x_ContentPasted2 x_x_ContentPasted5" style=3D"ma=
rgin: 0px; display: inline !important; background-color: rgb(255, 255, 255)=
;"><br class=3D"x_x_ContentPasted5 x_ContentPasted0 ContentPasted0">
</span></span></div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><span cla=
ss=3D"x_x_ContentPasted0" style=3D"font-size: 14px; font-family: &quot;Helv=
etica Neue&quot;, Helvetica, Arial, sans-serif; margin: 0px; display: inlin=
e !important; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);=
"><span class=3D"x_x_ContentPasted2" style=3D"margin: 0px; display: inline =
!important; background-color: rgb(255, 255, 255);"><span class=3D"x_x_Conte=
ntPasted3 x_x_ContentPasted5 x_ContentPasted0 ContentPasted0" style=3D"font=
-size: 12pt; font-family: Calibri, Helvetica, sans-serif; margin: 0px; disp=
lay: inline !important; background-color: rgb(255, 255, 255);">The
 solution used was to add the libssh2 parameter in the curl recipe by chang=
ing the line:</span><br class=3D"x_x_ContentPasted3 x_x_ContentPasted5 x_Co=
ntentPasted0 ContentPasted0" style=3D"box-sizing: border-box; background-co=
lor: rgb(255, 255, 255);">
</span></span></div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><span cla=
ss=3D"x_x_ContentPasted0" style=3D"font-size: 14px; font-family: &quot;Helv=
etica Neue&quot;, Helvetica, Arial, sans-serif; margin: 0px; display: inlin=
e !important; color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);=
"><span class=3D"x_x_ContentPasted2" style=3D"margin: 0px; display: inline =
!important; background-color: rgb(255, 255, 255);"><span class=3D"x_x_Conte=
ntPasted3 x_x_ContentPasted5 x_ContentPasted0 ContentPasted0" style=3D"font=
-size: 12pt; font-family: Calibri, Helvetica, sans-serif; margin: 0px; disp=
lay: inline !important; background-color: rgb(255, 255, 255);">&nbsp;
 &nbsp; DEPENDS =3D &quot;zlib gnutls&quot;</span><br class=3D"x_x_ContentP=
asted3 x_x_ContentPasted5 x_ContentPasted0 ContentPasted0" style=3D"box-siz=
ing: border-box; background-color: rgb(255, 255, 255);">
<span class=3D"x_x_ContentPasted3 x_x_ContentPasted5 x_ContentPasted0 Conte=
ntPasted0" style=3D"font-size: 12pt; font-family: Calibri, Helvetica, sans-=
serif; margin: 0px; display: inline !important; background-color: rgb(255, =
255, 255);">To this:</span><br class=3D"x_x_ContentPasted3 x_x_ContentPaste=
d5 x_ContentPasted0 ContentPasted0" style=3D"box-sizing: border-box; backgr=
ound-color: rgb(255, 255, 255);">
<span class=3D"x_x_ContentPasted3 x_x_ContentPasted5 x_ContentPasted0 Conte=
ntPasted0" style=3D"font-size: 12pt; font-family: Calibri, Helvetica, sans-=
serif; margin: 0px; display: inline !important; background-color: rgb(255, =
255, 255);">&nbsp; &nbsp; DEPENDS =3D &quot;zlib gnutls
 libssh2&quot;</span></span></span></div>
<br class=3D"x_ContentPasted0 ContentPasted0">
</div>
<div class=3D"x_x_elementToProof" style=3D"margin: 0px; background-color: r=
gb(255, 255, 255);">
<span class=3D"x_x_ContentPasted0" style=3D"font-size: 14px; font-family: &=
quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; margin: 0px; displ=
ay: inline !important; color: rgb(51, 51, 51); background-color: rgb(255, 2=
55, 255);"><br class=3D"x_ContentPasted0 ContentPasted0">
</span></div>
<div class=3D"x_x_elementToProof x_x_ContentPasted4 x_ContentPasted0 Conten=
tPasted0" style=3D"margin: 0px; background-color: rgb(255, 255, 255);">
I can't find any recent posts on this topic in the community. Is there a mo=
re effective/better solution? Does anyone have a different solution?</div>
<div class=3D"x_x_elementToProof" style=3D"margin: 0px; background-color: r=
gb(255, 255, 255);">
<div style=3D"margin:0px"><span style=3D"font-size: 14px; font-family: &quo=
t;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; margin: 0px; color: r=
gb(51, 51, 51);"><br class=3D"x_ContentPasted0 ContentPasted0">
</span></div>
<div style=3D"margin:0px"><span class=3D"x_x_ContentPasted1 x_ContentPasted=
0 ContentPasted0" style=3D"font-size: 14px; font-family: &quot;Helvetica Ne=
ue&quot;, Helvetica, Arial, sans-serif; margin: 0px; color: rgb(51, 51, 51)=
;">Thanks for the attention,&nbsp;</span></div>
<span style=3D"margin:0px"><span class=3D"x_ContentPasted0 ContentPasted0" =
style=3D"font-size: 14px; font-family: &quot;Helvetica Neue&quot;, Helvetic=
a, Arial, sans-serif; margin: 0px; color: rgb(51, 51, 51);">Daniel Mendes</=
span></span></div>
</div>
<br>
</div>
<br>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;mso-fareast-font-fami=
ly:&quot;Times New Roman&quot;;=0A=
color:black">AVISO DE CONFIDENCIALIDADE
<br>
A(s) mensagem(ns) acima e quaisquer ficheiros anexos =E0(s) mesma(s) cont=
=EAm informa=E7=E3o confidencial, propriedade da Altice Portugal e/ou das d=
emais entidades do Grupo Altice Portugal, destinando-se ao uso exclusivo do=
 destinat=E1rio. Se n=E3o for o destinat=E1rio pretendido,
 n=E3o deve usar, distribuir, imprimir ou copiar os conte=FAdos ou os anexo=
s deste(s) e-mail(s). Se recebeu esta(s) mensagem(ns) por engano, por favor=
 informe o emissor e elimine-a(s) imediatamente. Obrigado.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</body>
</html>

--_000_AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609AM0PR06MB3940eurp_--

