Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48186C433EF
	for <webhook@archiver.kernel.org>; Mon, 13 Dec 2021 11:26:36 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.47])
 by mx.groups.io with SMTP id smtpd.web12.10067.1639394793592989974
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 03:26:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=JvmEzvCp;
 spf=pass (domain: niko.eu, ip: 40.107.8.47,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AyNI1Ie3O8DlbciNizdgJ+3zA3AjPFyfpSK/myIgFidFpBd24fmtPdWxusJgZomZzfSyvVklDRSEC3o0XIKD5UMbe9HN3EfcjfmkqzbZnzvOZ+Pqbytdm1ADeCXZjYAvmnIz4lwPJZKlW4e+oC6v2A5vw08tpESqsLNQ7buRN5CimZpWfqk1+6X/F898m2hfCFTUt7MPURZwlz3eCqNlaoFOZ8szu5BnJGAKtkV8cvq8E2410TcoLCmnRrlMAVNh4jgIwxePi28drl+N6WvwKEhsdBk7yFFLJrxvbaVjREElvyAkAroHV4ZkMZWaAfe8DUw05V2xuSYIesCTKp4lqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=266w0T6vCJKywGLVpd9ktXQqMO+3jhtsXcEZ4ClJnJg=;
 b=S4bZXH6LSBRCmOF2RCBZv4g/L1pCUyK3iHgBRxdCpeAT2G2i72h/jd0da6Y3erMcswKI5kePVANAgg0j8USqEfl+1End7GPlAZwKAbn9wYtilJ9eaRG+Nay99xXIio84RiUVcIeEbmaQoUXAFwJ4niwRi2IqRrIqy59pR4MuB63QVEf8QYw8JYXE5Ji+QIeHlJyX43nwR5mKHwsRXPKHXb5TgEvXFCU7AAdmrnI7o9QOijPC6OjOcamf8taazysYGi1UvXwxRiguj4ZJTyMXD/tobNOK3/y25EeQNpQZyJIJI4xtNsmRf/sC9pWrUI01jjW3xpwmZuGIn0vz0M6a5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=266w0T6vCJKywGLVpd9ktXQqMO+3jhtsXcEZ4ClJnJg=;
 b=JvmEzvCpmJ8rD2IK6FmAG3atuOKxOB1+h1buWeEvUs0qtUxSkYIptPNT39fLMSPGJJIPMImv0Mv8fotvIjA8KVg5fwnHaLzqkbteix4zuBSUGlavaNQN/lKJSNRnuT75BbYOFyv3cn5YliFdtEtGtR3+SnoRRqMx4GgaBL6rUS0=
Received: from PR3PR08MB5657.eurprd08.prod.outlook.com (2603:10a6:102:87::14)
 by PAXPR08MB6464.eurprd08.prod.outlook.com (2603:10a6:102:df::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.13; Mon, 13 Dec
 2021 11:26:29 +0000
Received: from PR3PR08MB5657.eurprd08.prod.outlook.com
 ([fe80::9d42:8737:5d7f:e761]) by PR3PR08MB5657.eurprd08.prod.outlook.com
 ([fe80::9d42:8737:5d7f:e761%6]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 11:26:29 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: help with ERROR: Nothing RPROVIDES <recipe> error
Thread-Topic: help with ERROR: Nothing RPROVIDES <recipe> error
Thread-Index: AdfwE+RjtuHOs8LCT+CLL+ixESaxTQ==
Date: Mon, 13 Dec 2021 11:26:29 +0000
Message-ID: 
 <PR3PR08MB5657B3DDFFDB5107D8BB07F38B749@PR3PR08MB5657.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fbfc2120-d008-4308-6cdc-08d9be2b68ac
x-ms-traffictypediagnostic: PAXPR08MB6464:EE_
x-microsoft-antispam-prvs: 
 <PAXPR08MB646485A6DEA34D62797583078B749@PAXPR08MB6464.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 1aLZKBoY7+aaLyNUbs2UL0z+cvu2YliH1Of1QvGP/H5HohGx8KBEAPrPCh64nUoNG51LQ9DRtEEEdBPYnOqtFJp/CJjnMLbzRbA/gjAF5J0sUQzQFi1GHDNZo9dBo8kDthn9qT+fou+OINEi3Rb2a9Fl2tM+Abpz56kGxoT0UMD/UEmjFb35KaNNiRaOlXVxXz3CunRzFS5p+5muW9FCFjECVvizArdBN12giaz/IF/05HWG7HFHBUf6K4Av45pBjSVZ4gUlkQMHg0g4HaYxnAnBiHvg3+WfR+HqdsPxQGCkhF391Zp0zOfOx7H8dl9CKB7s4+SYObo0joXG1D/91chB880dAQdO3fJ0q3GlGLW+/mPtVhCs4uoHxkWiveZzRY9+kz+HP1I97KqBKIugScXEkuURyQcSt89MFJlYdnB+BzVJaUKID1nMRk8yufFxEqz448MkwWnzhf3IOMFiBZh0R6ch3z6LqGhCV6Sry+zlVCBKHoGlVCgUURfDVAak4AMmZKtufLI4UJT3+G84ZuNJ/g+C4Vpb3pIguMgxagxrmUCOAmUKB+T3wgSrOZg+WJWz4Q+Mx4tzRb2ANDDvhEsUFRsENJBvFRkPO3WY8m6OtNPe8w2tzbgIaRHvlktKnE7m3PbaBEtWhUnsxOXWRcPnuepIkAVGIFMrz8WGTIm0O1bqRaS8bqMq0Yjt7SReg5GKN8l//BBZXKd0xXfwJw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR3PR08MB5657.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(508600001)(6506007)(7696005)(4744005)(2906002)(9686003)(6916009)(38070700005)(86362001)(5660300002)(8676002)(71200400001)(66446008)(38100700002)(122000001)(316002)(186003)(33656002)(64756008)(66476007)(52536014)(66946007)(66556008)(8936002)(26005)(76116006)(19627235002)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?s/7YaAQx9bpgbDcHHAdv9a9qQT3Vk4yaVB5FRT8VMk67PVMDFyns7k2/6M?=
 =?iso-8859-1?Q?4oGn3eqBjXGFZ4TWoCm6t3WyOEbg5Y+tODoK51e8LGy18VUN9IQ2mEKqVj?=
 =?iso-8859-1?Q?Pvezkz/Rx7ybG6Iv+djDWrvI+LecACblh/TevXZGteoszZ20nmKBBQ0siS?=
 =?iso-8859-1?Q?++yu8QLQE4vWxU4hzjJvPeW59wb0cTDTw9m3nqB8BHPQfux0VAh+FbYvTk?=
 =?iso-8859-1?Q?xn6VX2T4zZ0w4P0SYPvaLE3pKd5pN5ooUPSbxHBb5PHbPFwd0ZxVcLVYoA?=
 =?iso-8859-1?Q?cA8TeDy479hR447eobRy1QzpFEbobP3z78cJIOwWkNNLh/0YrKUQ3xvfY0?=
 =?iso-8859-1?Q?+i5yK74k95dzIzm1u4+85BXZivgEg+sRTVySZ4wnoeCQT58OdJGAjti4I1?=
 =?iso-8859-1?Q?gH29VS0NZ70HxMDlduqCHar0DM9BhIKpinpkqjdqWhM9NDvIr44RqZmYk5?=
 =?iso-8859-1?Q?FiTDkOqZ1CxUsJL8P9vABzdb9JyK1yUM1gsY0Vru1XdwQsr4XX6BAyutG5?=
 =?iso-8859-1?Q?e3FpxJirPV3NgP32xcl80U/KPSAgI0PD3umu7+wndzUQXxD3bIFeY9qWFS?=
 =?iso-8859-1?Q?44LRPpv0LPe2PDE0/kKnKSNcCb7M4qgHq39MmUZq4YZPeSWzneQGJnJs6G?=
 =?iso-8859-1?Q?JSWp98WbIGCjSag5nhBd+uWFr77kpShS2K1CTljkXPyuu5SHAiSh00BuJX?=
 =?iso-8859-1?Q?ha+v50cY8F0ccMH95MjNjJwXxVwXGG9aZ0Dcj9VweR5TzNU1GvISGmc20o?=
 =?iso-8859-1?Q?nYWK7c/INDgr0MQW47dKXtO1pKnYBwzQ5x3yEQVJM1wlr7CRwtJjP09aq3?=
 =?iso-8859-1?Q?yyCbNPX5Jyh6PdNByW2A/y2O+NrrZNDJCo70LW+hrMVk26Xbm4C6bNYxdf?=
 =?iso-8859-1?Q?XPnzJDzcIErjaTu0sU5jlA2zX3XJcNbCyqmJHMK5WCaG+PHrFXPBuJ2TnN?=
 =?iso-8859-1?Q?YJ/RH5gX4tLNX1ka5LXqyPfi8w+46djiKbJ/eg2NDMaK6xdN81+ankno7M?=
 =?iso-8859-1?Q?lMJMt2jjDdqe14EnjtjoFklLGqnm+M/G2eerOvA8aEOJLgC6VWisjsOH+t?=
 =?iso-8859-1?Q?SYHPN3H5geTS+lRd3NP9WgPgNpf6uj0OkAot7UoPt4Hn5oWYBeVQ4mhRMa?=
 =?iso-8859-1?Q?0UVXkznfxec3IEgPeRxt1hjhPGjgx6KCqsTCKQqzK9HIaxbpX0uG6fAHkf?=
 =?iso-8859-1?Q?tg1iUWzrE/yH/EHAN/lKUKUhCWfHQzbcAd9JmggKtcbJXzFR4/euJ0QtJ6?=
 =?iso-8859-1?Q?/fA3Q1RKXbtLTOxy0GvpPmuM6kZG89Xg1gXhel1P/GoTr+XauvaCIi3GI4?=
 =?iso-8859-1?Q?Yo4D+ynRzZze3BcZ+LMTAiE7jkDjeMcdKw7TBxrQb42g8AYXZW4MESUA7N?=
 =?iso-8859-1?Q?Nu93AI8vVEmI+Jxk3OMa5UUQVUQ8UQOeVH2dj+Swl1WblvhNmwndw476B1?=
 =?iso-8859-1?Q?tKgY2XghFLsqk6NKv2AAOxrONqG8+qIWy9lG4T/tXEE8a6Qv4Jncoe9Roy?=
 =?iso-8859-1?Q?zEzCLkgS/DWYXtnF2FsIN7fEvpPCHKPZD9jxVoBp9WIfo2wj+sBfFIiZ0H?=
 =?iso-8859-1?Q?g5mwTaNJqKtQQdLyDMfvVAbvOmXSxL9DFPwVLYg6jDcdDytWVYdbP43j6y?=
 =?iso-8859-1?Q?vduuc2faG9v17yv6zLD8fp3YproIYji/O0YTGRTkZCG/NUDilLW+ZE8F0o?=
 =?iso-8859-1?Q?+U85oqzdEgjBWpQVzPH+Nq8xcEE+xSn03OuAr6LW1KOKx6McOpT4M7Dj5j?=
 =?iso-8859-1?Q?a8Rg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PR3PR08MB5657B3DDFFDB5107D8BB07F38B749PR3PR08MB5657eurp_"
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR3PR08MB5657.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fbfc2120-d008-4308-6cdc-08d9be2b68ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 11:26:29.7910
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 /Mn1U4+RV2cOXLIgSxujOTtIPpctW2psJtSYgPkSQUm0fiIHNC/8a+GmbwYihA4LFc/ctvjiH73hDswy3toni1CdVsN0p/1+jHlqfvLyQ8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6464
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Dec 2021 11:26:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55557

--_000_PR3PR08MB5657B3DDFFDB5107D8BB07F38B749PR3PR08MB5657eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all.

I have added a recipe to BBMASK to skip the processing of this recipe for n=
ow, but when I try to compile the image i get ERROR: Nothing RPROVIDES <rec=
ipe> error. It's like I should say to yocto to reparse all recipes but I do=
n't find the way to do it without remove the build directory and build agai=
n.

Regards.
Jos=E9

--_000_PR3PR08MB5657B3DDFFDB5107D8BB07F38B749PR3PR08MB5657eurp_
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
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have added a recipe to BBMASK=
 to skip the processing of this recipe for now, but when I try to compile t=
he image i get
<b>ERROR: Nothing RPROVIDES &lt;recipe&gt; </b>error. It&#8217;s like I sho=
uld say to yocto to reparse all recipes but I don&#8217;t find the way to d=
o it without remove the build directory and build again.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jos=E9<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PR3PR08MB5657B3DDFFDB5107D8BB07F38B749PR3PR08MB5657eurp_--

