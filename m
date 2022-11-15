Return-Path: <johann.obermayr@sigmatek.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E2FEC4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 12:02:45 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.99])
 by mx.groups.io with SMTP id smtpd.web08.4625.1668513761533305655
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Nov 2022 04:02:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sigmatek.at header.s=selector2 header.b=v7rXJdhr;
 spf=pass (domain: sigmatek.at, ip: 40.107.2.99, mailfrom: johann.obermayr@sigmatek.at)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YynBavaYx1dKHUVznQIqfRaq5VBU7DpseEJTnajkVqJpQ4xFNDB958J8qu7+RXS8TBxi8+K/e4HvVqpK7s+IOnOrcpFlgtme4G2qOs/qULx9+UY4+loHEKWSYv2XNjbUYl/pkoI0SN4rZDFHFzz+5IH4nOZwpga/IfIs3M9mFM8rNkAuAiLSWkkvtIo3pdnvyxx71jnD5NFxHpproc+rWGObRTbvywMF6CsIKWLBMGMly+5i6PgpZWcSrpiWbQ7ec6dvWIgY6peviBeJhdEYzaeZK2cO+pS/GsIWOvzrSE5igkSuk0nfQQxLK3OZ6TsGObhHSKkXM3pasZBcL2m0zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vHGGf/+2DAsES4IZA/AtSwlLpUFcmUUD5AeK2aENZ5g=;
 b=ggnzyHRGTM/kG9AAYFEk+WUajZ/NkHq0FTl+6j5T/6i6lX3n0Vd1KemWW8a/wMmuaCCShlZRuXttrsi/EFJBqrLoH86crcGGz50b1xykgzfEAlC5INXWgBQawGg4kViPw9VjKrRCUxPGH4h23OTUISHSLA90PDoCRguhmOhSNkyX/Dot0CJIUNhNJHALhY4A7qS2zppz1leXoiR3vnkaOigkG7nmxhsZtSJsNXssfx4hYfB5lYnmOXyp9ckD5+5lmVODNMljsx3129pHEesD/LTlWCvVn06d3zACeDaCm7iFoHakuclHpZh60HMJD8Pd5zxdk0ECAzOyg4etLZ4OsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sigmatek.at; dmarc=pass action=none header.from=sigmatek.at;
 dkim=pass header.d=sigmatek.at; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigmatek.at;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vHGGf/+2DAsES4IZA/AtSwlLpUFcmUUD5AeK2aENZ5g=;
 b=v7rXJdhrY24/BRKshQkqFpobp2z22JdgaDOUejVbFVS1eY18O9CubK23jp6c1A5VgeUNi0RiLv9PQxFfpzw47a5KyWfZ/aFJVRMwWPhIEmtoE1kzdcK9QP22uZIdVPB2/0fb3IOEa+Y+RqWLwE8lhO7i2CkmtFN1D9i2/QHVjdU=
Received: from DU2PR08MB7358.eurprd08.prod.outlook.com (2603:10a6:10:2f1::14)
 by DB8PR08MB5449.eurprd08.prod.outlook.com (2603:10a6:10:119::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.6; Tue, 15 Nov
 2022 12:02:36 +0000
Received: from DU2PR08MB7358.eurprd08.prod.outlook.com
 ([fe80::5bcc:73c1:669c:9578]) by DU2PR08MB7358.eurprd08.prod.outlook.com
 ([fe80::5bcc:73c1:669c:9578%3]) with mapi id 15.20.5834.007; Tue, 15 Nov 2022
 12:02:35 +0000
From: Johann Obermayr <johann.obermayr@sigmatek.at>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: build 2 sdk toolchain
Thread-Topic: build 2 sdk toolchain
Thread-Index: Adj46YHaq9Ft/rN5SPyh/TyHVKLing==
Date: Tue, 15 Nov 2022 12:02:35 +0000
Message-ID: 
 <DU2PR08MB73581AF8D4EAE35ED17F2B03F5049@DU2PR08MB7358.eurprd08.prod.outlook.com>
Accept-Language: de-AT, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sigmatek.at;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR08MB7358:EE_|DB8PR08MB5449:EE_
x-ms-office365-filtering-correlation-id: b641872d-b761-4b91-6d2b-08dac70148f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SVujaG1mCj5wlkw75mgPSmIEHGtJeltK0Of56ruL1Nkbj0WZjEs4RftbQd31YXnInx3S0He7snWdcDKtO9C2/v3ruF7i8No/1evRycz1096wjdSktb02zce5wgqVEhgH9hmQJUWD7EU+1YL8KOCuRiEMB9ocCs6NAtjutRr/NmmHl+Rx4eRXm4EZrIkGH1+TmCU3DV/gayEZxeOEYxgSFFMHVczTNemZYdjGcnc2vcOkBJ2tf5hDyB6C/dgNrdgdV0QUC4Fq4IG3+yq9ZWjINxJp0Ek6cAK+lDOHvNx6aEra7lXpahwqssET6NMUI1P9CryIjK7CXFNWbhz84rsDtEOYKVMxaE6jMbW1a3tabmQztTOspVw6ijgdCpVRU3Yilcjjz2W3ojnnKvbVCiEUeJIR6E+RtPsF/ftXMyj1u+s0I8TknizvW53J3MPelxx4+JOha7FXHXyCa3TZXkTPIxUn25qvhhcf+AP3ossS6MwP0WHyRQWFkL0D/YONKfiGjsLzvloR0GUBnFEYPi7l1U8bSFAr17ivySgTCG/54sTeJmj+UVniaFc4S/ENqzgV3BEqlLA/uomjyHRcsEiT/p4Nk/116i/nuOma7lF9RU+GMMdDZWE8S8sVD+Bp0vxJhoe6W+jTE76uILKJo6mOjR1Ct6QI+y2V4gVldcjA+gpqu5LCZPbsZj1nxHmu0IdRbIbhHGjGsbeTWhws2mgruUAGCvPhpP/MlLcYCZfTbLybqxaJJUA8+a423VP7DNjUJWYuvuthgOmhTHCVLBybvg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB7358.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(136003)(396003)(366004)(376002)(346002)(451199015)(7116003)(52536014)(76116006)(66556008)(44832011)(66446008)(66476007)(5660300002)(8936002)(2906002)(8676002)(4744005)(64756008)(41300700001)(122000001)(26005)(38100700002)(9686003)(6506007)(71200400001)(19627235002)(186003)(7696005)(6916009)(478600001)(316002)(33656002)(66946007)(38070700005)(55016003)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?v6x10SNHTbOy8pd4bpKxsq/HB3jg00jntjipYRIcSjrJUi1eoWoo3FitxTLE?=
 =?us-ascii?Q?oadZRSU/KWa39htk7VzF6L3hIhHfMANsro/6dmleJ6MpSoeBWbFg3Nfe98Ja?=
 =?us-ascii?Q?F1cFkMm9f8kZ+VamaLrtf27esOnq7yKjYAPH5lyck/imQ8S3zvv0Vr2lpF8H?=
 =?us-ascii?Q?NT2g5ytAkzOXZKZ2gku3SqB6oYav553a4LKWXx4nEXzWNAnqg8sP06uUXMET?=
 =?us-ascii?Q?wasc9QXQrgX3CcveCts5LjhR0b6esJukxdhyrRqolqLRqqsj010JmqVri4ps?=
 =?us-ascii?Q?jPFDdOnq+7cl3nsLLav853Zimw/o+r83yb06oOCbcCvX4PvsmipckduShGAG?=
 =?us-ascii?Q?Vf9GR5Xat5tKiaPSc9LYUmstpR4vROBplGGH1jueGQzSc/mmZAPKWtn2cy2z?=
 =?us-ascii?Q?X2+vOrPY/0GIpg+b6za9Evwn2LpiEggUkdZL96ADMJpgpb/bX1yjZHW3kruN?=
 =?us-ascii?Q?PPb0gHyM0OvB5sIBLEmyiaEl9aBT/EGWho461tmDv13LX6mc1MR6Og7lFEeq?=
 =?us-ascii?Q?U58JLBYREBRO8lz6wJyNjNeyWbOUuqCxuPULp6kR/ntGFWIUR4HFeoRMBLYp?=
 =?us-ascii?Q?qFWgv4iqRe11aAU8IH7q+3GvecYb0xiFpN9A5BY9PinzjRU7NFg+7dJiB3Eb?=
 =?us-ascii?Q?IcwaxLIkKx84js/7ddwnpbXmFrcQnAz6LYoYAyExcJX58YOl5EymLQPhszpC?=
 =?us-ascii?Q?r3Yciu963HQhnJOXkbRTsHQBGyaNrxIXB3b9DamGzLe2/dmk2zjLNqpTA/Wh?=
 =?us-ascii?Q?O/WLsXXtTu6em3lkDfnoydZxxoWDJ4Fueq8FYGAFmZz2faneYbq8mlGlDl6a?=
 =?us-ascii?Q?m9hLa+an3o3UVBxHM62C6w2YlWYWx+fgB7PBVhgvOl7x5V49CKRX0Dwgxu0x?=
 =?us-ascii?Q?cmcS3eACq6aBcSD0WcV4cPoqSz/cjqi1jojZvrCLSLaTp4dVhtrp451PMMkK?=
 =?us-ascii?Q?hs3YuC42OSU3owATHvm6dgp1oguaRWEBWLZAyBMOZo2hpwUhVEArBnrpyGcX?=
 =?us-ascii?Q?9kjE/xXYjy+PW18mjgOZk8zJ8C/mi909xOGj94U0HAQMXMzjziLQ9Lemgvr7?=
 =?us-ascii?Q?yok7sfcLlJEtidqzCXRJ0CL5BOsG3kBdRHdCd8SvBp0mW0mF7EdiALp8pruh?=
 =?us-ascii?Q?Wjua7cZg1697biTvbUwP9hwqBvLyf1RDMoL+vpkypriovxWeOBdo0fTZD0tu?=
 =?us-ascii?Q?2UUV7uBEbmMfwbxwign7I14DmvkTY6kjxHu1/41afGQIt4sBV9s2JahQsh1f?=
 =?us-ascii?Q?xa3WFOyh8qJptimdbZFw7j4+Jcivy+ZaAOzdCizUj5ie3NbEn3BWRKU4mE5G?=
 =?us-ascii?Q?nCYlnfWKNJ9V8hElumUidosA7sJict2+O5liJxUZh2vIDacgqSB8sn3zxkwS?=
 =?us-ascii?Q?8/C6bciYDNTJakrh9y6VmM4TfMpP2xj9qLFAiyUq9PPhsZGTh0b9nX/lo5Lu?=
 =?us-ascii?Q?TZFSKYaEGusOkGQyRmdhV33qVA79kp95thLOqNDezsUIMcMypzy/D33A3YM+?=
 =?us-ascii?Q?qdVw/OZCcHhgayYlGa6fbxe5uxSILo1IND/wPwYqaPvg7T9rTUs4NnqOrQfb?=
 =?us-ascii?Q?4UxpOIHt0GqdsSgTs/sjw8UGeOUNRZh2olVLPoG+yM8Yfn4qUab0nIgsKBn0?=
 =?us-ascii?Q?Qg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DU2PR08MB73581AF8D4EAE35ED17F2B03F5049DU2PR08MB7358eurp_"
MIME-Version: 1.0
X-OriginatorOrg: sigmatek.at
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB7358.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b641872d-b761-4b91-6d2b-08dac70148f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 12:02:35.8947
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bcb1d87a-d2bc-486e-a62b-9ac9c746bc1b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /eGhqB1h5YvVzEr8363bExRhQSgkwc/tV4gk6hlbblz5KrG245iA+v4j33ZQhcfynIyTmzqKZU/Fx5P7dUTZp0H0wpMZ9x7gztMWZzAYBJo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5449
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 12:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58566

--_000_DU2PR08MB73581AF8D4EAE35ED17F2B03F5049DU2PR08MB7358eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

we use kirkstone.
We will build

  1.  Image
  2.  Toolchain for linux
  3.  Toolchain for windows


Now we can build a image + linux sdk toolchain.
That work correct.

$ bitbake my-image
$ bitbake my-image -c populate_sdk

Now we will build a Toolchain for windows
We have add meta-mingw

$ SDKMACHINE=3Dx86_64-mingw" bitbake my-image -c populate_sdk

Is this the correct way ?
Or what is a better solution for this.

Best regards
  Johann

--_000_DU2PR08MB73581AF8D4EAE35ED17F2B03F5049DU2PR08MB7358eurp_
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
/* List Definitions */
@list l0
	{mso-list-id:126050482;
	mso-list-type:hybrid;
	mso-list-template-ids:1739612596 523914850 201785369 201785371 201785359 2=
01785369 201785371 201785359 201785369 201785371;}
@list l0:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:23.25pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:59.25pt;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:95.25pt;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:131.25pt;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:167.25pt;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:203.25pt;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:239.25pt;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:275.25pt;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:311.25pt;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1057124642;
	mso-list-type:hybrid;
	mso-list-template-ids:-380465350 -1828806034 201785369 201785371 201785359=
 201785369 201785371 201785359 201785369 201785371;}
@list l1:level1
	{mso-level-number-format:alpha-lower;
	mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:23.25pt;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:59.25pt;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:95.25pt;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:131.25pt;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:167.25pt;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:203.25pt;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:239.25pt;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:275.25pt;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:311.25pt;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE-AT" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">we use kirkstone.<o:p></o:p></p>
<p class=3D"MsoNormal">We will build <o:p></o:p></p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"a">
<li class=3D"MsoListParagraph" style=3D"margin-left:-12.75pt;mso-list:l0 le=
vel1 lfo2">
<span lang=3D"EN-US">Image<o:p></o:p></span></li><li class=3D"MsoListParagr=
aph" style=3D"margin-left:-12.75pt;mso-list:l0 level1 lfo2">
<span lang=3D"EN-US">Toolchain for linux<o:p></o:p></span></li><li class=3D=
"MsoListParagraph" style=3D"margin-left:-12.75pt;mso-list:l0 level1 lfo2">
<span lang=3D"EN-US">Toolchain for windows <o:p></o:p></span></li></ol>
<p class=3D"MsoListParagraph" style=3D"margin-left:23.25pt"><span lang=3D"E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now we can build a image + linu=
x sdk toolchain.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">That work correct.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ bitbake my-image<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ bitbake my-image -c populate_=
sdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now we will build a Toolchain f=
or windows<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">We have add meta-mingw<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ SDKMACHINE=3Dx86_64-mingw&#82=
21; bitbake my-image -c populate_sdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is this the correct way ?<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Or what is a better solution fo=
r this.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; Johann<o:p></o:p></span>=
</p>
</div>
</body>
</html>

--_000_DU2PR08MB73581AF8D4EAE35ED17F2B03F5049DU2PR08MB7358eurp_--

