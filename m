Return-Path: <sebastian@mapped.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A50BC00140
	for <webhook@archiver.kernel.org>; Tue,  2 Aug 2022 13:15:22 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (NAM04-MW2-obe.outbound.protection.outlook.com [40.107.101.82])
 by mx.groups.io with SMTP id smtpd.web11.5957.1659446114569443339
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Aug 2022 06:15:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mapped.com header.s=selector1 header.b=Ox4nMFau;
 spf=pass (domain: mapped.com, ip: 40.107.101.82,
 mailfrom: sebastian@mapped.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqqUi1NUTVqbCx/GDaPZ2HW7siu01B/NWooI6qidU3oBpsuFUJVitmWhPVpa+0WcTOKW4SsdIkb6BlZz6TlGquUad1JLldj3gUHRU+B8yAMF1845gyAkts/3AsYSL6KHYGWV87r+6ocsKy12Tm9Li3aHg2Gslh/D1A8xnVIrozRwu1PQ0Jb8tBLb1bZfr/+ktHfpBIznaoKWCiHQ//KLb0Apxrtae9fOCazTtEmrYNHQKE4qAEGfLyLIRkDCa2HbJDgHhv7TQVTNy8O60r6LH6rRVFIynifeTlPkDejuXNUiw8tfIXZKfDpcDoG9nQmF7zkxGkB/DM+Oz054WMLgFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+v6Lzd76+BfMOZ6WC0pk6Lp/ZMkyFSkR6t1KP+iYoPw=;
 b=PgBsU3V9WA2hdSDnBEWFdYu8WkSM4IiC+MW2reW9hmqixDUrKDyaOB79GidQner8insIUJ+QfEsRXv9IpRiNariELxA0D5CkgUKDUlVuCojO24wRKwhXqsqztBEP+ell/Mxyie9lgEyvfPOEI2WtZZNsMDYbDMkrxobYst3vnTtgf7XhV9Y354nWsL3XDpG6jUmkKx1I+2Fr4HQF6pRjxPfGVZguqgNPxDpknMFXdPCZBEEt/wdA3OrMYDpdtkINvJtkvpee+0/3580cPjxUd82/cq+HwutxQvp+HCK5s57FEd2dJTJTMSeoyK4FJUGkdvJZoao3QS6XMj0ecIQA7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mapped.com; dmarc=pass action=none header.from=mapped.com;
 dkim=pass header.d=mapped.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mapped.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+v6Lzd76+BfMOZ6WC0pk6Lp/ZMkyFSkR6t1KP+iYoPw=;
 b=Ox4nMFauF0O0s6i6SaHbnp4qDtJvn48Efoeukc5/FagiMMtOAiosfwFLFmGFzbF27kIIM9NkqwWvTetbqL83CwUxb0Xhlr+kqGyRmQTLAl+a1GwIs8tviS6WRJSHkm7K3VWkYbW6+B/oEwkCTZbanjnfQpm6ETDL/IaBjE8XHFM=
Received: from SA1PR05MB8048.namprd05.prod.outlook.com (2603:10b6:806:184::15)
 by SA1PR05MB8673.namprd05.prod.outlook.com (2603:10b6:806:1c4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.10; Tue, 2 Aug
 2022 13:15:11 +0000
Received: from SA1PR05MB8048.namprd05.prod.outlook.com
 ([fe80::c8ee:1f90:9e15:e829]) by SA1PR05MB8048.namprd05.prod.outlook.com
 ([fe80::c8ee:1f90:9e15:e829%6]) with mapi id 15.20.5504.014; Tue, 2 Aug 2022
 13:15:11 +0000
From: =?iso-8859-1?Q?Sebastian_R=FChl?= <sebastian@mapped.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Conf for a single recipe only
Thread-Topic: Conf for a single recipe only
Thread-Index: AdimcWWeadDoSPSMSmqT7+1erp4Nqg==
Date: Tue, 2 Aug 2022 13:15:11 +0000
Message-ID: 
 <SA1PR05MB80485D6B6817919EDE566537CC9D9@SA1PR05MB8048.namprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mapped.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9438d9a0-0f61-4bc4-6237-08da748907b9
x-ms-traffictypediagnostic: SA1PR05MB8673:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FGcMjuPUNzgJNx/qdqpQsOrmhC1VRBDwf4ESG/lfw6wd+m+KSMvAS54edaaQH6x5gqrKI34z6wMD+Zn9D/pefYyW5d98tZifjU/nsb4pe8kKEzxFrgmJgMudIEGp8n/yWAewGtm7ooqDs07EZ6BUIAbOd45lde96YfxhF3uuJV3uj+v/5zWtXhgYXExRcjTNCQufI6otAh0pc0IcyX5r0Ye4in7sSzHdWJ1lNde7gt2S+ILYk407S1pWybJjIA6ZOV5Dg9BUjTcuEKtFqEWmRxGbZCA0J76tvj5m+QmRYK1tlVxpxevrdUcwN85xafR6F2Hj3dg+cn5z99txoIwn6jVu1XEpJb9u13uMYcs5qvKV2W4F5se0+nTAST2x5/hSQQrTumHnCZIXeQlQELWzR0TUxluCJKnvMwqvRqJzsJ6MmomKfxPUSMacNKHKCoyz3GA4+AhkhT2eHT2wCp+hby2vW3v5WIT7CiKGp8dHO/vZCsKTqx0JoZnR3lSMsIIX6MH0U5j03W/v8D71HpqMFqQhRoameO49edRTLeghjz61XJ2qZ5FxXcB6mKC07g3zuZ+OqX16vDOzshUsEyrdgXGaSKRnOsFocFxPFrPhYeQ64LmcEmniJPRDiig0HrAVnprj0dMz7IrUBa4Iewo5vMVcecknFDWHitTgiCK0si8B2kx2ep3WBvBoxGgjeEsODnZk1a8MroLcgzWEXMZvYjt8TQKMYifR7jGFZeECdRWkCb6YXFUuVMT8vB3OT+I3qvuj9katd+rfSNCzZPqogA5jlBDQmN8hDbiPC3Ip1Wu7+N6uhu2Qm/zzJGmkgNdcmWpOTtwgXE9Sm9lEg7K7VA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR05MB8048.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(39830400003)(376002)(346002)(366004)(136003)(316002)(9686003)(26005)(478600001)(38100700002)(122000001)(71200400001)(186003)(8936002)(6506007)(19627235002)(41300700001)(7696005)(4744005)(76116006)(6916009)(33656002)(55016003)(8676002)(2906002)(66946007)(66476007)(66446008)(66556008)(86362001)(64756008)(5660300002)(52536014)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Rz3OLZPsgzSaYeq/v92lUq/hOyA47KatwdiWXK62PbjdQ0b3l4XBS7zXBG?=
 =?iso-8859-1?Q?t2Wq27pEY++h4WBWpOfRc5ENvl7KvLnGd63imXMr05ec7e1jWSqqtfgwW2?=
 =?iso-8859-1?Q?iHoSMWVNL4saCRqjXPl/GMnEOv4NILlH+lI5Ke24YDTQKR7uBYRzKYsjp4?=
 =?iso-8859-1?Q?9IlLKSbDLS0IPQkZPQfk8N9J+dc7WUrHcjizjvBelrtNO4SBso9/PJ8oWZ?=
 =?iso-8859-1?Q?tyP7hvhQijH2GsaXIkNMa7Ygmc+1PzeVEjBLnp4+trRUiRGatpMpm88/Ni?=
 =?iso-8859-1?Q?e4dF54Lugw7yc71XjL+aMBFx3nbqOfUxQQqbUFASsEgeOEX9ed0mXg7CPD?=
 =?iso-8859-1?Q?nB3RNJCZpiMDSeR9xSfc8pfp1RkTxdFnYqaZzQ19w69T6ZJObTXIkbYXTL?=
 =?iso-8859-1?Q?vQqPI/ORDu9zGrvviDu+kEEmzqYhDDjSmSxJ3X2Za6N4CVeL5VqQ0rdaod?=
 =?iso-8859-1?Q?WyD2FUn9kw7Zj2Lys6Gv6EUJ+cNs/qO6xtRhsMMpMMuvqHarec1QCL8zAr?=
 =?iso-8859-1?Q?6I6fnlB0tmoyuWIsVcbSWDIPa/Ycuw/EhSmFRc3oMQjHFf/tklQJ2ceRM9?=
 =?iso-8859-1?Q?ycm4yiWdMITrpOlMVwDlhP4Nk8LhP9is0uCErldlvfQRHo97Qc4OQHfGzQ?=
 =?iso-8859-1?Q?vtCU+tGMk1IhA2OK4FLGXhd9lmWBZYOJJH1AYyE4VlzYxh/b/JETk/CDuG?=
 =?iso-8859-1?Q?y5zKI5fO0ddUCgYlNwQtY6+LGjBa6+JuC3FbmiEjRA4ud+VaukPLZTThnA?=
 =?iso-8859-1?Q?1Cwypea+4+pxN+GKN3I9yYSALZqtibeA4245YDJW/qev7Jnsp4vThY/Yr1?=
 =?iso-8859-1?Q?p2vlj1wsXHfKgigFZmdfCOALinGILxJ75CDOd8T1laNejA6Nxs6GuoCr4k?=
 =?iso-8859-1?Q?Z481HBy7Ocl4UM9jtOOZicUczcIEzdARSLNbEDeYfTG0105FHMg2LYDlKY?=
 =?iso-8859-1?Q?3X5zeT63hOZ2xywrvcgSLt2VALUjqAuJpHk8dqMMj6O/vqio81Rtpfa3Xx?=
 =?iso-8859-1?Q?tBbwbAzgOPLsOaxoyHfjr1h63+IU6+7edGNGWwHXylA/RfAP+OFjD1zEmD?=
 =?iso-8859-1?Q?fPtlnUEhU7mWIfrwtU2+jQcrjHktt7UZXqoRcyAdn/PtbP3bjSSiwiVUH5?=
 =?iso-8859-1?Q?2uX9AqDNI1+hXzczzgKoxCfmyJIWogi8NaXt7DX5/YPAlcKvycf2T7M5+J?=
 =?iso-8859-1?Q?lL7vi441qLuns9IQIHe1I8GBfniXUcNf4PtFV13K8QA8UPHV4mWOavUP3w?=
 =?iso-8859-1?Q?W6PxYLne156lBk0e0uXDsyv9+1mzoPHBXTGli5wlzSt5jnPwbUMptu6Zf7?=
 =?iso-8859-1?Q?XwXD1DO9kbWo81HU5sEp+xbekW6YmO/k0cT4qiozHI2Eo5ZQ1bJ/xH8id6?=
 =?iso-8859-1?Q?D9zoVjZkYEciMjXQN0Z/G7QxLg6eegGkRT3Nd/+L+48OEpV6zo3xjHcBWq?=
 =?iso-8859-1?Q?f5bsDSjp/GD9ZhZ3ORx0AP4sUeg1/S545i0A2qa4SzwZBrrXqIL7kDy+tj?=
 =?iso-8859-1?Q?HOjJQIMa1XtpTDwLpLnWSUbncuAEWDZnKwtorjkZABEVhRtoyWGmL/fBYC?=
 =?iso-8859-1?Q?Z/VyiE0gjQ+Ux7Ts+OKRWZDoqRArU+iQK84XmnfZGF5uUhKWF10kHo6hXC?=
 =?iso-8859-1?Q?DinELKneaMBVKhyJSy6f2TIOVjpatuhRE9?=
Content-Type: multipart/alternative;
	boundary="_000_SA1PR05MB80485D6B6817919EDE566537CC9D9SA1PR05MB8048namp_"
MIME-Version: 1.0
X-OriginatorOrg: mapped.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR05MB8048.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9438d9a0-0f61-4bc4-6237-08da748907b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2022 13:15:11.5121
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5905aed6-175d-4ef4-914d-3ee92a398d55
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 7sLkWHHP/BCkzLobMg9Toik2/elg+uOMKHlpjcQsHmz3pI3WMz35Ri7I87uV0Fc77DpyalmfEjZM5fGaBDOULw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR05MB8673
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Aug 2022 13:15:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57727

--_000_SA1PR05MB80485D6B6817919EDE566537CC9D9SA1PR05MB8048namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there a way to set the GOVERSION for a single recipe only?

At the moment I set the Golang version to 1.18 using the recipes from maste=
r (on a local dunfell branch) and set the go version in the layer conf:
GOVERSION =3D "1.18%"
PREFERRED_VERSION_go-binary-native =3D "1.18%"
PREFERRED_VERSION_go-cross-canadian =3D "1.18%"
PREFERRED_VERSION_go-cross =3D "1.18%"
PREFERRED_VERSION_go-crosssdk =3D "1.18%"
PREFERRED_VERSION_go-native =3D "1.18%"
PREFERRED_VERSION_go-runtime =3D "1.18%"
PREFERRED_VERSION_go =3D "1.18%"

however this messes with mender as it seems there is a bug in the golang co=
mpiler...
So I want to use those settings only for my application recipe.
Any ideas how to achieve that?

--_000_SA1PR05MB80485D6B6817919EDE566537CC9D9SA1PR05MB8048namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to set the GOVER=
SION for a single recipe only?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">At the moment I set the Golang =
version to 1.18 using the recipes from master (on a local dunfell branch) a=
nd set the go version in the layer conf:<br>
GOVERSION =3D &quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go-binary-nat=
ive =3D &quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go-cross-cana=
dian =3D &quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go-cross =3D =
&quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go-crosssdk =
=3D &quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go-native =3D=
 &quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go-runtime =
=3D &quot;1.18%&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">PREFERRED_VERSION_go =3D &quot;=
1.18%&quot;<br>
<br>
however this messes with mender as it seems there is a bug in the golang co=
mpiler&#8230;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I want to use those settings=
 only for my application recipe.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any ideas how to achieve that?<=
o:p></o:p></span></p>
</div>
</body>
</html>

--_000_SA1PR05MB80485D6B6817919EDE566537CC9D9SA1PR05MB8048namp_--

