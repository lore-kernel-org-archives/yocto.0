Return-Path: <sebastian@mapped.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82006C433EF
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 17:46:36 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.49])
 by mx.groups.io with SMTP id smtpd.web09.9050.1636134395265289052
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 10:46:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mapped.com header.s=selector1 header.b=PJnJp/4z;
 spf=pass (domain: mapped.com, ip: 40.107.237.49,
 mailfrom: sebastian@mapped.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNIVZFsML0PPpVlWHHI51o45IRodEIYTBG0Mx1Og+E6ieqWDf9hIGsTAuW8y0C97I4hmexbD9EKgiaycGUIUd4coSYVH6XLAWLZCucZkl4eP0ptmlMVILZ2x6vZyixiOT+6xHpt2gnOHbfwSty4OFS+SFcYnvhiUPsFfMJQNBB09uCdu6hPKD5BJ3hZV4i9cr/SIVho+i1GoFUDwFt7gmYtOO8yrC3dR2Z+TKTcACObXwwllJjGrxwp5VTL/RJ3RxysJtNYFpJuVzekbTLd6rtrLPd3ng6Lmj4ubxWt6BS6y/FjkqfxxGYUgFaXjpRVCaFuStjoE1z/ggCTLTnfVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c2TnBk7/CpAhfjHVk0A47PX0Aj1v6vxZXQcpCjYl2K8=;
 b=UqoX/1lGbIXPmQQ5VIP3MwgZAHtkGFGh/aQ3sGI7wr7nbJ5sowFzrEIRJ7vC9jS3+InjdkVxhHmkK7QUK6yTp4+8Kd3Z+k7IthPExQcYWGFaZsIE7DnLMtE5woUqOyPPxrl7aHBemTRfZ9HlNhvgbiIhqSrwMSdV9wzd4Ztcd0mfyXZ5OkWV4oXWNKmFHxGVL/4pq1+oZ4cB8esXBVMSZJOchC0h53+qIdvzPY+Rd1ffgdLDlKI/YF9b6zRezZ95OfoumQ6/NWtllsbLCJg9oySqBaljP61TYe9lqVFEgv649+IToY2FffgILxhLMp2YM8lHpW615RJexbKBt0BEpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mapped.com; dmarc=pass action=none header.from=mapped.com;
 dkim=pass header.d=mapped.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mapped.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c2TnBk7/CpAhfjHVk0A47PX0Aj1v6vxZXQcpCjYl2K8=;
 b=PJnJp/4z6RgWAjhmEq68O2nubHxCRTssKcH0Npl9WiJZSvex8keje1tBtHhZ2rSdLOzz33bfDsrBVvoGrC7ld/HXWd/bOQnI8/wFO9B7NroFBuE30QeF7qZylB8uhYAWt+jIKGS8DIkwdNDrAXpkRwq/0l7aKOIhccuU56xPFsQ=
Received: from SA1PR05MB8048.namprd05.prod.outlook.com (2603:10b6:806:184::15)
 by SN6PR05MB4368.namprd05.prod.outlook.com (2603:10b6:805:3b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.8; Fri, 5 Nov
 2021 17:46:32 +0000
Received: from SA1PR05MB8048.namprd05.prod.outlook.com
 ([fe80::a810:8c45:9e6d:9b79]) by SA1PR05MB8048.namprd05.prod.outlook.com
 ([fe80::a810:8c45:9e6d:9b79%6]) with mapi id 15.20.4690.008; Fri, 5 Nov 2021
 17:46:32 +0000
From: =?iso-8859-1?Q?Sebastian_R=FChl?= <sebastian@mapped.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: WG: [yocto] #golang Build tools required during go generate
Thread-Topic: [yocto] #golang Build tools required during go generate
Thread-Index: AQHX0lH88EEGR1pAjkSJDEXe/vWH36v1MMWAgAADmuuAAAEQog==
Date: Fri, 5 Nov 2021 17:46:32 +0000
Message-ID: 
 <SA1PR05MB804871BEA9692019DD776A40CC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
References: <JnQS.1636122755681200580.kFay@lists.yoctoproject.org>
 <61d3f746-107b-6dba-19dc-8e8786d6f26d@gmail.com>
 <SA1PR05MB804852017544ACEA696B255CCC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
In-Reply-To: 
 <SA1PR05MB804852017544ACEA696B255CCC8E9@SA1PR05MB8048.namprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=mapped.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76b8e2b2-d8d3-459b-5d35-08d9a0843427
x-ms-traffictypediagnostic: SN6PR05MB4368:
x-microsoft-antispam-prvs: 
 <SN6PR05MB43684FF5BE3E9E757D8C5274CC8E9@SN6PR05MB4368.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 qm4UWJABy1cbpa8xMQqbA8hqIIAw8rWlPmvfLgNhV4bZbnJxdxjwlQi5xSdj+K6LroSsA2d2XJTe8N2Bs1QIGNyE3Y5Z7sishQZu/bUcQuIty4ubK8jTJ7NP2n7g41HafmTZfNpszq2e9+qNJijUsmuFBlEPSaY8aGlJOce0L5yFGfvYTNMqcTyyaDJ0SkSvk4+DMRunmdQEQTsfuxu/qEFho8udKxGOeKbpV/VvnD0atxWKbnhAQPv7HegS5psKS3J6lKHtFAVFmU6izMn9/aIL0kk7xAn8ZwyApXwOYPw27Z2/S2juFVvzsSuxGsA4Arf9Mkac9anQtp2um0GQgPGpxII5g6AoyaB4Qty6Lq+K5Z0eBQYerqspt76XtBGL8AifxI0M5fcckq9h9ofvH92Xk3IpC+2CZngjKgUCfaKKwmpiWXRqr/wKhhH2T5kW6NCUIRlLilCUj1ULiXtsw31eJw+TyMQas3iq1+EsNt33TwRn+Gd9H01U4PXypr6Qg2u1CdK9QFCcTPUB+xIJP266VFJysjAj22YPUfqQ14VK2ACx3rJMKetYiHREGjHkrqt4N4tggN6ha4FgRIM9aCznWJdj4BgfAddOiTsSaz/Aqo20hf+R0ZA9YdE/jlbGe2YdqZUh5ZMW+J2ujk6VsnNyIaByF+q7vMec/+NuO08aR/Xf2HLSH485zrhM1BpP2u+ZCZWybpm9vpMlHVDrtN02c+h5p/QoiZcX9bcfQ53gp9FNp/OhBWXNsyW3fCSZiyL/VnCS568hksiZqkSx5Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR05MB8048.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(136003)(346002)(39830400003)(366004)(376002)(38070700005)(6506007)(9686003)(33656002)(966005)(186003)(2906002)(66574015)(66556008)(166002)(52536014)(53546011)(71200400001)(83380400001)(316002)(8676002)(7696005)(508600001)(38100700002)(66946007)(66476007)(2940100002)(122000001)(8936002)(55016002)(6916009)(66446008)(91956017)(64756008)(76116006)(5660300002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Ss71TkG4zoT42vD31wjW3SaG+vVrxBORKwL3k2YDVQoe5c7xRzNEKDI6i3?=
 =?iso-8859-1?Q?eizG6flH7M5cvYDc32+TkgCkQiaIdsczfq/ybPnuhcLpmqtWsU5x/0g8YO?=
 =?iso-8859-1?Q?B+F8FQggYhzMRcIEaVW2DWUYSiOwvhXbL6Pn3lKWiz/lcboYlkMiK/Qimw?=
 =?iso-8859-1?Q?5hk/X21lMwrcu3IcpSuveuuIm6my/DCNmGRKRuBvBB82gUW5YZ/i8zcGnl?=
 =?iso-8859-1?Q?PSrOGoaLrBiMNtQpz5fPq02K+ZZjoH6kzDjfaqaS433ZyCoKeziRZCeH0I?=
 =?iso-8859-1?Q?fYJoe4tDSgdtsBa7CaafG5I2XdZSy0K4sZ/4lr/ltK+fdL3RJlQ1rrxf7w?=
 =?iso-8859-1?Q?68Yh2HSPSusoETbOVRmmsml4jEyH7c/e50PvkfJEAtpY0QY1AOYMWZYlOJ?=
 =?iso-8859-1?Q?WePj9/k2mO1qHeQJEFt6vx6Z7ltbBdnFKfk9cEK1vt12lJov2A9mK6nwnh?=
 =?iso-8859-1?Q?cZLe4bI62uq0qkWTsW0oW/Ye+71R5ff0dfjLAiLyMakd9Ia7ah4P9qsfDS?=
 =?iso-8859-1?Q?3/l/kykAO1GEWNTvuLTltIJmaTzEZYA8XJpfvGAgApAgV5EbfoF0I4JWxj?=
 =?iso-8859-1?Q?2RzBqTrK3THxFSZhkXZyTo4OsUJhVkbGfkyrDnbTYtP94VGqIrdigIAe4G?=
 =?iso-8859-1?Q?Q9u0DtD/aDKPvoiM01p7qHfpWkcKl33bJa5x5Vx+s0aQDm4+OnyxNDl9Wy?=
 =?iso-8859-1?Q?zl8OI7Dwdmfa7x95LX5jgoco0hjjXa0ncSgGShJluuoQWsxNkMPtAyo5tS?=
 =?iso-8859-1?Q?aCrHfobB8MbiJM0Vs6XxEwRz0XMkQYGIMtqAOqO7m1yLFBATjrwQ/N+VwL?=
 =?iso-8859-1?Q?xFzVeBLaG27+bBSRhZG47yVCjR3Fl3bi34jdSG34t/ArY5ui9HpoZCdnCS?=
 =?iso-8859-1?Q?XLgEzTxj/IYoJQmoqlmEVDewH/PYnzuccEnXo4TfPbyQRdvz8P03T/MdJx?=
 =?iso-8859-1?Q?1q8YwOzQJDt1xJwVbx3e7YlTtKADm8UUw/mQBQBqtyjOs1mWUw7WDEPmi1?=
 =?iso-8859-1?Q?bmwlu48YxRC/Cq52Qxe7G0JciUiUFODfFaw+i55weNVlFSOyCcMIwF//Ax?=
 =?iso-8859-1?Q?5qMIC5Xy3Q4pvgC7PY4fMRZVG+kBHZtzLE+eID2w4kny8ACULRxIoQxAJR?=
 =?iso-8859-1?Q?nynQrGOeDXoLMG/IDX/MWF+lNj/lqaqpMSRBNgi1tWSP7DJ6at60SlERF/?=
 =?iso-8859-1?Q?z/wxx+hnFzQIq7/DJ5cM7DrFU6HIdLMvEFM3n91/0zhTfRoLLtrpqdMXlZ?=
 =?iso-8859-1?Q?tkzDsVWkr28qnbpmxt19KDcDq4yhJbqbl0VOAJYGxp79BojXmlFjVZ2hip?=
 =?iso-8859-1?Q?RqiGG+Vk9JDIvl+NKNl4OC+6NhKRi6qIKMZoJeGaOeAW+uPxHnOr9SOpLF?=
 =?iso-8859-1?Q?FNjj/hc9ugAniZk41T6ORtGNJmkgC6nmSbaHnL+zl6g+yftf2YLe2bduvD?=
 =?iso-8859-1?Q?gG1+N35yztpGEp30Ism2eTUohnNtxsAHve7VFGoMWWsdb2jyns8nHDOcaE?=
 =?iso-8859-1?Q?LyA8ZxSOdsn8Wd72WXi0sgbakBW194x5jf6+2Nhnhx/q+JF+UPf5G0IxcM?=
 =?iso-8859-1?Q?wrNJYPJizPvVq33C8kFUilzc1JXy9PjkXcvqOq7ZoX5sk7PAuTfTuazosb?=
 =?iso-8859-1?Q?NeBaIUQWohu+9cICnTK2j/aaTht2tonJmPmNcktxo+rvw6Q+mYAlHAG1ES?=
 =?iso-8859-1?Q?AHIaIvAM5iMbdo3rjtFuvpwz22gRGYmYPqZqwo5GhNsAEXRusli7+NpxVq?=
 =?iso-8859-1?Q?e7WnoEg2VtPU3TCrOTXw+FbS19SYUNddUB6wHbrsLp/a9c?=
Content-Type: multipart/alternative;
	boundary="_000_SA1PR05MB804871BEA9692019DD776A40CC8E9SA1PR05MB8048namp_"
MIME-Version: 1.0
X-OriginatorOrg: mapped.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR05MB8048.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 76b8e2b2-d8d3-459b-5d35-08d9a0843427
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 17:46:32.0459
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5905aed6-175d-4ef4-914d-3ee92a398d55
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 t5gJD0FRMs0q4wleKMAt/qoo2E6SkS+Nhivel3WdMq/LzSiJgoaa08DBKXOpD6AJOXpPt8SuGe65e4wjGXK0sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR05MB4368
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 17:46:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55254

--_000_SA1PR05MB804871BEA9692019DD776A40CC8E9SA1PR05MB8048namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

There is literaly no stacktrace just a segmentation fault pretty early in t=
he execution (like 3rd instruction or something). I will send more outputs =
as soon as my dual-core has finished compiling stuff again :/

Von: Khem Raj <raj.khem@gmail.com>
Datum: Freitag, 5. November 2021 um 18:29
An: Sebastian R=FChl <sebastian@mapped.com>, yocto@lists.yoctoproject.org <=
yocto@lists.yoctoproject.org>
Betreff: Re: [yocto] #golang Build tools required during go generate


On 11/5/21 7:32 AM, sebastian@mapped.com wrote:
> Hi yoto-devs/users,
>
> in order to get a golang application to run which relies on `go
> generate` calls I wrote special recipes for this tools and include them
> in my original recipe. However I always get a segmentation fault.
> In the tools (which happens to be based on golang too) I use [1] in the
> recipes and in the recipe I want to use them I include them via [2].
> However if for example enter the dev-shell or during build I get a
> segmentation fault although the binary seems to be compiled for the
> right architecture (host-amd64).
> Is there something wrong I try to use that?

do you have stack trace ? that might give some more info on whats going on

>
> Sebastian
>
> [1]
> inherit go-mod
> BBCLASSEXTEND =3D "native"
> [2]
> DEPENDS +=3D "random-go-tool-needed-by-recipe-native"
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55250): https://lists.yoctoproject.org/g/yocto/messag=
e/55250
> Mute This Topic: https://lists.yoctoproject.org/mt/86841696/1997914
> Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_SA1PR05MB804871BEA9692019DD776A40CC8E9SA1PR05MB8048namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US">There is literaly no stacktrace just a segmentation fault pretty earl=
y in the execution (like 3<sup>rd</sup> instruction or something). I will s=
end more outputs as soon as my dual-core
 has finished compiling stuff again :/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">Von:
</span></b><span style=3D"font-size:12.0pt;color:black">Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Datum: </b>Freitag, 5. November 2021 um 18:29<br>
<b>An: </b>Sebastian R=FChl &lt;sebastian@mapped.com&gt;, yocto@lists.yocto=
project.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Betreff: </b>Re: [yocto] #golang Build tools required during go generate=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
On 11/5/21 7:32 AM, sebastian@mapped.com wrote:<br>
&gt; Hi yoto-devs/users,<br>
&gt; <br>
&gt; in order to get a golang application to run which relies on `go <br>
&gt; generate` calls I wrote special recipes for this tools and include the=
m <br>
&gt; in my original recipe. However I always get a segmentation fault.<br>
&gt; In the tools (which happens to be based on golang too) I use [1] in th=
e <br>
&gt; recipes and in the recipe I want to use them I include them via [2].<b=
r>
&gt; However if for example enter the dev-shell or during build I get a <br=
>
&gt; segmentation fault although the binary seems to be compiled for the <b=
r>
&gt; right architecture (host-amd64).<br>
&gt; Is there something wrong I try to use that?<br>
<br>
do you have stack trace ? that might give some more info on whats going on<=
br>
<br>
&gt; <br>
&gt; Sebastian<br>
&gt; <br>
&gt; [1]<br>
&gt; inherit go-mod<br>
&gt; BBCLASSEXTEND =3D &quot;native&quot;<br>
&gt; [2]<br>
&gt; DEPENDS +=3D &quot;random-go-tool-needed-by-recipe-native&quot;<br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#55250): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55250">
https://lists.yoctoproject.org/g/yocto/message/55250</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86841696=
/1997914">https://lists.yoctoproject.org/mt/86841696/1997914</a><br>
&gt; Mute #golang:https://lists.yoctoproject.org/g/yocto/mutehashtag/golang=
<br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">=
https://lists.yoctoproject.org/g/yocto/unsub</a> [raj.khem@gmail.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_SA1PR05MB804871BEA9692019DD776A40CC8E9SA1PR05MB8048namp_--

