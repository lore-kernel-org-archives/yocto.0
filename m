Return-Path: <philippe@rmds.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54F2C77B61
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 19:54:20 +0000 (UTC)
Received: from CAN01-YT3-obe.outbound.protection.outlook.com (CAN01-YT3-obe.outbound.protection.outlook.com [40.107.115.103])
 by mx.groups.io with SMTP id smtpd.web10.1222.1681415656060390156
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Apr 2023 12:54:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rmds.ca header.s=selector1 header.b=B1GQEE4x;
 spf=pass (domain: rmds.ca, ip: 40.107.115.103, mailfrom: philippe@rmds.ca)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LArJtPgCS6TaVDVs07iRLzOh3B5UvM/gvulpT7avPxEkDqG/ETT6YV4Fm0JQ8DoGFumfi76mXMh3yXORFChQp5Gd1Icv0MRZ+qkiQ4oI0u9FEFZsT7hYq3oWsjgMj4VBimuM3SNmBowoMlLdI++sm5v3TaP56aupp/8so1KU1Clx+WrpCJ834xacoKtjWvaVV0dUNIkZ3NS3BLJ/PMPGNvSKavvAASiUaSkHDhA5ZUIzwOGUMvdjM+IdoYgGcknrTRxaVg+IV8CkmxGifI9HdXGEqhfKDj3CwpO/NhxAfyA7tJldoGQEDjTlBGg9n4fijUdEoZZmQEysuhN/5BBdUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pcjaok2zCYpr0yyINOn5eWYuyLQtIr7OVENWPkcsbb0=;
 b=h1OEOhb1Zzn9cyhE9zLNBBONGUevYlg73iU9ocLAkMH/4993TBYkFc3fJbV+Aq0Ho4tAtswTZbbYOODzsYMZS+OwnUNFe1zl+t/RagDXJtkyrPQPcan4xdv0ZncvKz3Ymn6WZ8AC8L3hNYGiSEVPN9PsIUMoUd5E74Gyg+Eio4t1LL29fdj9E17zs/FJguXo8OEFTGNRvQ1H+Vl/41N/oVDsXokHJWx4GgMMhJY6FrQfPgaCk1AhnHNeyJR6NszGkb095Nva31JEoo1SaEp4TOeeib8IOvh7FbjAInty+Th4QlIzMCQtvsWtmQC5k78TTUvIBJ2qWJOyW8Ldu1GxTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=rmds.ca; dmarc=pass action=none header.from=rmds.ca; dkim=pass
 header.d=rmds.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rmds.ca; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pcjaok2zCYpr0yyINOn5eWYuyLQtIr7OVENWPkcsbb0=;
 b=B1GQEE4xOm+7hzr0NuC+bW4Pr1RFAd0PXkASE/Rf2ZCb2QQpCMI2eUVT7B62ChL13+tHOx7eo3ekCRTbkvk9rcKOEB98LDW+1fGfXN9XZYKNVqVsmAHq1id3V7gTrbEzkW5PkDiFcpheoKalxJIeDg7XAewftztpyFVXFQFWGczbBi817L8n0DZk6OAxja4ae6zWW5+c3i9H5dxY7091GEDQ+ETSFSgwR8AEZfR/aEXDpXJgla9h4NyfDJq9ubaCVVWye8ARExo7qsUN49WComnIaysUWT5My51ZnEYJdkc3LEhBRTAKQvdlyq5oJPGaE+zYyEXkiW5Q4evqM+1O1g==
Received: from YT3P288MB0272.CANP288.PROD.OUTLOOK.COM (2603:10b6:b01:99::5) by
 YQBP288MB0116.CANP288.PROD.OUTLOOK.COM (2603:10b6:c01:72::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 19:54:13 +0000
Received: from YT3P288MB0272.CANP288.PROD.OUTLOOK.COM
 ([fe80::86d1:d869:1ed0:35c5]) by YT3P288MB0272.CANP288.PROD.OUTLOOK.COM
 ([fe80::86d1:d869:1ed0:35c5%6]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 19:54:13 +0000
From: Philippe Lafontaine <Philippe@rmds.ca>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Give access token to yocto build. (pass environment variable to
 bitbake)
Thread-Topic: Give access token to yocto build. (pass environment variable to
 bitbake)
Thread-Index: AdluQbgfwWVk8Zd9RdWJXhAtR2NdSw==
Date: Thu, 13 Apr 2023 19:54:13 +0000
Message-ID: 
 <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=rmds.ca;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: YT3P288MB0272:EE_|YQBP288MB0116:EE_
x-ms-office365-filtering-correlation-id: 9296446a-6f82-468f-6510-08db3c58db4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fWe1kLy/uWKq33bGr2XNoEfdNwhmxBjkTVPRimM6YqokDQuEe5LODqkUorZtHhngWfvnWBezcYLoWkhso0iqIsGfUq/kJyzm8AP/uSN8jUW7cGzp0KokbkuLYPEyprolDFrs+kmcKeq9ET2U1AatRSTEeUGRI96V08faESII8wzMeZB4hsdLFJOdqwfiUX4kMC7oGwxl2dca4gusT4D5kK74vHtFVkP/Up2jO9ZoVGFU3WiySzGn9PZMp+LTNziC6U8zTY0KY6Q1hc5+BMraQ7CBpuCtdTgvuacOvB91meChpETeSWUEz56fNZ0rGnwoZRC9gYTqbvZz5L4QzBNGe3eZQEJnjwvDzSuikT0ooad3XiBo4FUOmrWUVMJj4+/3i3HcX7Zm7f8MOq/fhAA3aUkcq9ksxiDLftYJO3zVHAUie4SQrfoyYJLKYZTEqZLtpHpCzbXR22eL9in0RxZTSqwlms91wS9Xlq7ICoEHbtcoE1IjrbHEC7XFxljoisOeakwgDnyET3kP/gHVeZ9CyU2YtwX6hEml993R2ToEhKY6yvPWtEs6fYauAoLqquQWzHw6UUE6yOAl5oofsVOm2oet79aOHK32/0ouUFx4LAQiEJ691vaWhmCJbh5y/ZZ3
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT3P288MB0272.CANP288.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(376002)(39830400003)(346002)(366004)(136003)(396003)(451199021)(38070700005)(26005)(66556008)(76116006)(66476007)(64756008)(55016003)(66446008)(6506007)(9686003)(71200400001)(2906002)(4744005)(83380400001)(7696005)(186003)(66946007)(6916009)(86362001)(5660300002)(52536014)(8676002)(8936002)(122000001)(38100700002)(33656002)(478600001)(316002)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?2PrbIIljaDCu/Tm12PpK4btqM3fKSUaZ6K0jluQ5nDQk5MJKjiVgqyWhMQB+?=
 =?us-ascii?Q?lqud9o0cWPJi4b6dMumeBn3HpbznxlSgR6O6WIXhFXb8Cdpbh3Gme7EBb9+6?=
 =?us-ascii?Q?8fjA8mYq1iGccCckXMcieedFvs37pFUt3zZn9NMjz+cR+biYCWGMa5Gl6bL/?=
 =?us-ascii?Q?4PrpyjbT4hnUpRQPUcK/QKRjCUPfoTGSd68L8eYDcGM6uXve7Hne+mtSIMYg?=
 =?us-ascii?Q?UOyezXmsIa7pZTn6OscuB5PujZAnQLNS/TICOds14H9I2NF2EptbZjOHm1hR?=
 =?us-ascii?Q?swGkP6hn1YdMVzqIKNbCwmBJ9cH05MmQ5ZbcEeo/b5z6deD1MD2JkM6sAm/D?=
 =?us-ascii?Q?+VP43FnTu5TFnndtAm5ztzumvT8HuQCh2YoE8fFGr+aBk1Pnrmu+d1ojCjmL?=
 =?us-ascii?Q?riuA0/9rnc5x2yoCxPl4SAllRggsINWJfkRez46YJGSy/BaXXDeIL09FCI4A?=
 =?us-ascii?Q?ZlXC5ZbxWQiWgZYfzZFx7lN3hKQyRd+RyoRxWhLjOgPIz4riqusSQWAjzb6G?=
 =?us-ascii?Q?6BiRgWGK7yf5b/IOS1Mf/PA4AHVlK+mlHXyfQwEvVlg5+Jdkw2GHB4yOD0Em?=
 =?us-ascii?Q?Ve2OVmYubKVn0ffC5nWE0ef4Cxk5uluT/JLYtsiX8mUyJisT2PHw+wdLnAkb?=
 =?us-ascii?Q?E+fvWB+DQbClqiSh8bEBcgYYIvp//rhAWqSO27+kg+nsol5d+G6sDGgpBZkZ?=
 =?us-ascii?Q?T2kGcOO5U1rJCBmKutlOBnAGeYrMoJsd7+b75qwTemzBf5S0AR8/qEc4o7pn?=
 =?us-ascii?Q?zQ4oQX9Y0sJC9vkpKCJZjPaSCMZ5eJ38PiAodykXiVjnGa+efN/gwl1VzBHh?=
 =?us-ascii?Q?XMddEE9RTK+1/aOhmUp/8M6qZ/8H3tmIME9EKz004vVlyKkoXrBEjpu6xFhz?=
 =?us-ascii?Q?dfjjOqpuf8K25FhUHSDp0G/5BoGe3IYhijQny8pn3ObUvqFA04/jadm7POfe?=
 =?us-ascii?Q?78ACLkvZLZhlGfItOiFu2edaYX2Jhj77ALV1UWNB4ITH+Cq6pvOFfCyhgCFV?=
 =?us-ascii?Q?qzzhMYrClFVOavsAUeNAe/yMK5v8AWi3txo4e/Tko7XW78AvoOcgphCyDKpv?=
 =?us-ascii?Q?yaYoK2rxWOPT34IjLaBFKq6badjBwG3erpdDQLVKhVaOYurlehfmspdeIR+s?=
 =?us-ascii?Q?jzHFyfmX85giRtHAJf2bEcNXGl3eU7SefOW3MCR81eJzJ4da2B4dykJkAH0u?=
 =?us-ascii?Q?8gQYw4kpLICywklBiKKvCMNxoBPXwA0e+eQ1SoUwPDYE0GeAhrChT5BWWzjP?=
 =?us-ascii?Q?jLxeiOiSvkcRyyXjKT/KeDO/g/FuMNLhzRV5cukBZTkVDgFV/zL0OtF0LaMe?=
 =?us-ascii?Q?NU2b3fZi86FWcFhNG6x4TNkMiRHNyQQxVQV3suUN0kMZypkuycoYmY/hotqc?=
 =?us-ascii?Q?B1ijb43dfdqs+xBCcCxMbrdtcYV1bVAhw+SWuK7eE5RxQxEfRTbcnUJaTzN7?=
 =?us-ascii?Q?6l5ZHdthngjRHBkuvU3ljg1vJsfszbHn9RGjFe5OpqJ++GLEPyta9V+It5y9?=
 =?us-ascii?Q?JwpTMd4vH0Vdwl/ARej6M/zs3a2WcjcaG1W3lvukxz2kCEUUSDTfiSmVV9Vr?=
 =?us-ascii?Q?lKRHiBt/4STOe/r95AY=3D?=
Content-Type: multipart/alternative;
	boundary="_000_YT3P288MB0272CE87F9889C6CDF8F0AEDCF989YT3P288MB0272CANP_"
MIME-Version: 1.0
X-OriginatorOrg: rmds.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YT3P288MB0272.CANP288.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9296446a-6f82-468f-6510-08db3c58db4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 19:54:13.6519
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae99a212-bb7a-4271-8d2d-c3ab790a3e8a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5nrFHIZIZZDP25lCaaoWzUXM1Q1z2nlddC0KTVE+LzSsyabtka3z5bmIiTeR8K4yZ7upESm/PqzJOPmtm+Qnbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YQBP288MB0116
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 19:54:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59708

--_000_YT3P288MB0272CE87F9889C6CDF8F0AEDCF989YT3P288MB0272CANP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Greeting,

I have a recipe that fetch a pre-built binary from a build machine using an=
 access token. Every developer will have different access token, for obviou=
s reason. Therefore, the token cannot be hard coded in the recipe.



Our current build setup uses a docker container (crops/poky). Our current s=
olution looks like this:



The host OS has an environment variable containing the access token. This t=
oken is then shared with the docker container.



Once the yocto environment is source we:

export =3D"$BB_ENV_PASSTHROUGH_ADDITIONS PRIVATE_TOKEN_GIT"

where PRIVATE_TOKEN_GIT is the access token

While this strategy does work. We were wondering if there was a better way =
of doing this.


--_000_YT3P288MB0272CE87F9889C6CDF8F0AEDCF989YT3P288MB0272CANP_
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
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:8.0pt;
	margin-left:0cm;
	line-height:105%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Greeting,<o:p></o:p></p>
<p>I have a recipe that fetch a pre-built binary from a build machine using=
 an access token. Every developer will have different access token, for obv=
ious reason. Therefore, the token cannot be hard coded in the recipe.<o:p><=
/o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Our current build setup uses a docker container (crops/poky). Our curren=
t solution looks like this:<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>The host OS has an environment variable containing the access token. Thi=
s token is then shared with the docker container.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>Once the yocto environment is source we:<o:p></o:p></p>
<p>export =3D&quot;$BB_ENV_PASSTHROUGH_ADDITIONS PRIVATE_TOKEN_GIT&quot;<o:=
p></o:p></p>
<p>where PRIVATE_TOKEN_GIT is the access token<o:p></o:p></p>
<p>While this strategy does work. We were wondering if there was a better w=
ay of doing this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_YT3P288MB0272CE87F9889C6CDF8F0AEDCF989YT3P288MB0272CANP_--

