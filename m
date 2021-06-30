Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.135])
 by mx.groups.io with SMTP id smtpd.web09.3565.1625045596381460035
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 02:33:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vaillantgroup.onmicrosoft.com header.s=selector2-vaillantgroup-onmicrosoft-com header.b=fed7ssp0;
 spf=pass (domain: vaillant-group.com, ip: 40.107.21.135, mailfrom: yann.cardaillac@vaillant-group.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ASU2aQbcLSkZPwuuoqXNC8jJVfChqLTv7FzD95CaVnE1d37KusoItpioSGgpS1XGQyru+si8/l2mUa0RwUTwKZw71YuFtSuRzkm5w242tYyOxYh0e8aA4wXHko32fukH0IeJK9YdzOXyBhmzsIX79otEi/eOGK1FxmQE81B2fZRlK40u/vQIXljf4j3ECKWjtxwu8TDoAqxurISCnphcjHK8pPWXEB+7182LG7WAcLfQN5sOxAf5OpWxXLw8/fTQuYqsO05wN7S40kwbQFI8tEXoWLmXlp85rlIYOMeDplWR/CpLB3vzAII0a1VhRnzvLLGFHou1HveqRxdFpOr0Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LVas6x8cH0JuQDZKJaByTNDqRh+03w1mhPYVTPOIlO8=;
 b=MewjQo90eiLgaAaXmkjJqgVcWfo1oJQiMnLtGdYTYFnOoyqbY8vOEV+i/p20XKV6/UE54/BmF0vYSUF46yK41UiMzvthyMmf5lCHiMB60FsW7Qzc/ESjNxak8b734pKRTryYRli/1/OMvWCtLWDDyX0gaVjyQrTrA/4jx28iZIvzqlNxJjCuVjfjDhaQVwo3ZkWJMxK976gvPHmUCgcsbr6bTsLYpvYAWjL8ODbx3IL4Gq+tQug7peWxS4Kkq6jiru3ARIgcQIjuMtLOOkl2mjVJZxBZr1zF1Tpl0TgIMIXrgGiH/4qqCH9DsYdvdlNoT20seZZz+9aAoIvWBe7ilQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaillant-group.com; dmarc=pass action=none
 header.from=vaillant-group.com; dkim=pass header.d=vaillant-group.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vaillantgroup.onmicrosoft.com; s=selector2-vaillantgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LVas6x8cH0JuQDZKJaByTNDqRh+03w1mhPYVTPOIlO8=;
 b=fed7ssp0SAroIW8PDD/e44UPU7VPCtIeoYtGH/VqqSgbvV5G0kNmj2hJRrTox5CCgfuG9CUYV80dQi00WkjCMuvUbXkQjt0ddvMhnEUl/dU7ThQIYvNdRNCMA1JKMRf+CnNalDOS7A17B9HZvQ2w1/tawBlNr8RK6Ff6xS+MKsCz4V6OViqJ3j8YJTo0AdcDhaE4YNaYNR6Ih7tdmr9HVOA/iNIR+z9E0PcQw/2msPMALgrr3nvcZjMZ5f0dxFL3qzyorLG8+ZYxyxcyf0aU4LoZBI7P2dRGpx4YCFjEl8hugjXO70wMEl9p1fBX4iutkdIBbTkezuwWEZ6TOsr1xA==
Received: from AM9PR09MB4705.eurprd09.prod.outlook.com (2603:10a6:20b:284::17)
 by AM0PR09MB3313.eurprd09.prod.outlook.com (2603:10a6:208:16d::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.22; Wed, 30 Jun
 2021 09:33:12 +0000
Received: from AM9PR09MB4705.eurprd09.prod.outlook.com
 ([fe80::580b:a51:af21:3fe8]) by AM9PR09MB4705.eurprd09.prod.outlook.com
 ([fe80::580b:a51:af21:3fe8%6]) with mapi id 15.20.4242.023; Wed, 30 Jun 2021
 09:33:11 +0000
From: yann.cardaillac@vaillant-group.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [Yocto] Launching script at the very end of the image process
Thread-Topic: [Yocto] Launching script at the very end of the image process
Thread-Index: AddtiZkb4BQgDuTeSHiJkRltkuWo0w==
Date: Wed, 30 Jun 2021 09:33:11 +0000
Message-ID: 
 <AM9PR09MB4705620C5A070E882117D91DCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=vaillant-group.com;
x-originating-ip: [165.225.76.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61d0d956-127a-40ca-2be8-08d93baa1442
x-ms-traffictypediagnostic: AM0PR09MB3313:
x-microsoft-antispam-prvs: 
 <AM0PR09MB331393412C1311F85956EA67CA019@AM0PR09MB3313.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bZU0+jw6x59Dhic+tkB2eX6BatfWfB6T8Zxtpzi89l13K1A048TrW3cvz4mu63cYPmyRqbP9HE9z/atWxyUhjEFf7qtR0Djb6rghqJ0E2/cFqxifXAHhBnaT76L+ntLs4FdRGvfyO/wDEQiWfdA1tH5gzL2AsfYlXMKpCTlUJqac9hTGaC0cpi14/actEoGVB1oJ+V73HCOJs/FgyHLl38i7+TSIQNSBfKEeN6/EQ+v8sc66t92tVD2mbPHAMp9ZLfRoWNAtJsayzLpJ3vMM5R+YUo2wDiSp3yW4+Ctt1jYNtWDEr+UCVmhD5rmJkkTa7UXJk5J/2lJSQKM8oMfOkBXgM53kY36IJDxr7WiXOD0QsE4G1Gq78GjyuiDVWjaSU9yPP2EPqtQ37Cq8mo4pCKsVMmh7aqdPe+PG9PryGnHyYgui1CpS80Py6/j0NoQ34yPeD2oJzc/LG1kpcjofIMvRGvBT0W7aZG6wZuU4r0LggMSuDWKvB0lkaBc3ovDd/0PLo++XS+5KC2Wso+C31zNcDGNnLMZE4eljXNA7DgPd5dfr4Xfo2yfHA+EXDt7CU3XVr65PsfIt4XpEntIOH3B2s9KcPspn/NCz09jPRQMSpeonh/GpnkIwD90G4fcE58+9pZz0FusU+86YZ4txsw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR09MB4705.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(76116006)(8676002)(66556008)(66476007)(66946007)(71200400001)(64756008)(6916009)(66446008)(52536014)(83380400001)(2906002)(9686003)(5660300002)(4744005)(55016002)(316002)(8936002)(6506007)(122000001)(26005)(55236004)(38100700002)(33656002)(186003)(86362001)(478600001)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Tu8AV9kv3NULiY+jNLil6mKfARiNXLRNHrqdthUsH2QIi7rudiiW2JXD+TKI?=
 =?us-ascii?Q?c7bJdQFVkD3bSh8NFtD5k+qGhR4QhT0kvasXHCe8ETIW0r7o1i7s+q1SXR+6?=
 =?us-ascii?Q?qk31F/utKig035FHbr2SFmfdtPFGPICIqhuxmqRzzwXcRymlTweFOVWcHdGM?=
 =?us-ascii?Q?0CY+KaEe0fQKAwPscWGTVXN5kwd2anEF+DrpCE4YpM1j7zPArC+Td8AVBWq0?=
 =?us-ascii?Q?kJedhu3Oc7ndOIs9n2jtVsp8CocJmgg9yqhG25z+WDLfXWCZDda0lg19hCSj?=
 =?us-ascii?Q?tKM0wjJn9Dr2fm9J4PjDHFK7oDzmIlDoh5rtoyZfwiTx8RQ5/zC9u6iFwlR2?=
 =?us-ascii?Q?nG64hwTKko2wAM5x0Yr56HF5MLkRD2LXi7dJJd2jn/97iTYO6njQDEyfU9g5?=
 =?us-ascii?Q?KIle9XWAECGyhiNryp8ZHcot4k/GR4Beah/8UoZzGxm/HpTvtm+ujSj4RLNK?=
 =?us-ascii?Q?IYJ68OAFYjy5f1Sfbh6qOUQDwsMCVBRe3XcrXG/AsUTgcIrBqZtKV6HEWM0O?=
 =?us-ascii?Q?ZAEircgPqUIWO8wa98We+GFWjJ+9ROwYuoTUGxjZP4ZOh7widOBXbrvWI5jo?=
 =?us-ascii?Q?MNCGB71myiRXkzhF4C/rYL82HH2zEiRhAh4WCnGHeS/0YOl3en/1A9opo5ms?=
 =?us-ascii?Q?5szTcAg+ElmDFrrhCdXapGGGZ8GlUfXuwLvA4wz+qgyC1xNBF9jh/AU1R+hJ?=
 =?us-ascii?Q?hI6782URe3yGpfssX3v1TEtrojHTfF6jCgSulrHcNEb/mlcQlfUtlMcE8RLq?=
 =?us-ascii?Q?bIWGxJhseSMDCnXKtPy96Cdq9R9i0xenMAWFgUo7gSG9tSp9mv89/o0g3u2v?=
 =?us-ascii?Q?t+AsM5xtaeUwQ1lXOEGocZ3+R1FcTavyfYCbG0cpjLQbP3PHRoo4JHqRgLHg?=
 =?us-ascii?Q?Sb1HPeh5qhUUtyNBjv2GhyWTiZ14j4M/VzKTg+kXae+EWUUVW1P5k58HPgqf?=
 =?us-ascii?Q?MahU8TCv6mDGKje8cAKkcuz0OwalttCvMwKRYV2b+cGZzfpFyBousPeGQ1sB?=
 =?us-ascii?Q?bKrfbn7D3/ofivgCeI3eUG5AMHzpxwCOMUtoJvJCjGl7ljXckWhtD1ypOuRd?=
 =?us-ascii?Q?3VEmtV1B9TRY8k6hocw6OkA0tsRmXJPqxyazeR4d3eqdraMSWqUxSVqm8CZR?=
 =?us-ascii?Q?WBdwVHQfb+X9iYn7WLPCCvDg+W+SAe5iefwlqR/urJ8qZWvUxfQMMtTjZcSZ?=
 =?us-ascii?Q?4a4x0gPKIa2iRIb4hi1czxXM69GUwP6j68xVIIvjs53YxjcK5LyQq8vMadOg?=
 =?us-ascii?Q?bkwNj8nH4dk2tyT+lVyVdvdzjU0oA4V2n2XIuaRT2ybgvDgagDy58wMcfwBI?=
 =?us-ascii?Q?3jk=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vaillant-group.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4705.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d0d956-127a-40ca-2be8-08d93baa1442
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 09:33:11.9000
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 67e4db54-80ae-4739-b54d-5ee94bd6472e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CGL+mATk6ESiVpgt6HFDfh9yy70rKaNDVFJOOPGCI55POpCqu1w16o8OO7pHTxRUq8zZdunM2lQcXM+DEVUG3Qccw0Ow7o5s89Sm5M2REKg7ujGTNU/nkLoJJddybYZX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB3313
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AM9PR09MB4705620C5A070E882117D91DCA019AM9PR09MB4705eurp_"

--_000_AM9PR09MB4705620C5A070E882117D91DCA019AM9PR09MB4705eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi yall,

I'm switching from buildroot to yocto and trying to figure out how to do th=
e equivalent of a POST_BUILD_SCRIPT.

Indeed I want to format the images built in a specific format for latter us=
e and CI needs.

I've made a recipe (.inc) that I'm able to access directly doing so:

bitbake ycn-image -c release_ycn

To give a bit more context here's how I've made it :

File ycn-image.bb:

SUMMARY =3D "Ycn image"
...

require recipes-core/images/core-image-base.bb
...
inherit package-list

require ycn-release.inc
...

File ycn-release.inc:

do_release_ycn() {
...
}
addtask release_ycn after do_image_complete after do_deploy_kernelmodules

I've also tried to use IMAGE_POSTPROCESS_COMMAND without much success since=
 it wasn't running at the proper moment.

If you happen to have any leads on the subject please don't hesitate to sha=
re!

Best regards,

Yann

--_000_AM9PR09MB4705620C5A070E882117D91DCA019AM9PR09MB4705eurp_
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi yall,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m switching from buildr=
oot to yocto and trying to figure out how to do the equivalent of a POST_BU=
ILD_SCRIPT.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Indeed I want to format the ima=
ges built in a specific format for latter use and CI needs.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve made a recipe (.inc)=
 that I&#8217;m able to access directly doing so:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">bitbake ycn-image -c release_yc=
n<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">To give a bit more context here=
&#8217;s how I&#8217;ve made it :<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">File ycn-image.bb:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">SUMMARY =3D &quot;Ycn image&quo=
t;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">require recipes-core/images/cor=
e-image-base.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">inherit package-list<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">require ycn-release.inc<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">File ycn-release.inc:<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">do_release_ycn() {<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">addtask release_ycn after do_im=
age_complete after do_deploy_kernelmodules<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;ve also tried to use IM=
AGE_POSTPROCESS_COMMAND without much success since it wasn&#8217;t running =
at the proper moment.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If you happen to have any leads=
 on the subject please don&#8217;t hesitate to share!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yann<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_AM9PR09MB4705620C5A070E882117D91DCA019AM9PR09MB4705eurp_--
