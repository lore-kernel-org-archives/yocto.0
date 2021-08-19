Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.92])
 by mx.groups.io with SMTP id smtpd.web09.70342.1629383880271847178
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 07:38:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cwareitservice.onmicrosoft.com header.s=selector2-cwareitservice-onmicrosoft-com header.b=cPF9hTVj;
 spf=pass (domain: c-ware.de, ip: 40.107.21.92, mailfrom: christofer.dutz@c-ware.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cZBZBovlty61V23u+9jkeRzTD/u72hBurSxf3G4HCjmHY76R5FVpMqgPy1usZQh0h2X1gsWAGcFMgyeGFrs271060fOiv6yyjDBccVkmpN1tfCtOq4EAnebxwaxENiR0JMogrUl5nv7EkMpu38mIhsVit8HJosgri8UbPPMzwumEulJTcfYOoaNnpTUF/a18qS1X4/Qe0hQahQElIh5du8TCSGUBpc5vgq2GRZxHgYXyra9SbYWlXqqCKIMLNq8IL6GSV7/YO79xlPYhyFZWoQ3QRdF5S7amb0/5f1sEr+xcp32LJZggAcEyaaGvYx73ykE4yTlAwPPPriPWUVQ9Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPN5HHKADxsaaT2gAgkh+MI4ZuZKK/74m+Fr9k/pAXg=;
 b=T/TJ0dzdhDjAOWZCoq1mEc0zCrYVA1aYXPqlUbxpU+nK1/6WXXJLsmR60I9G2lvdgbDRpSTdrun0p37EAHKc3dyseafVRrOEavNykbp5Pt62NMzRWIdsKx1jrIYAdptDFBGbeM6Izlrg8QNcPnIkwEWO76vaGGn0rN6iMnZ8AHJzaqtdS4Go696L3OmOrTQcQ+CsG8kCxIx1eH43OG4OpTUu6HYNgyMia3zzH+Cjb2Xto4o1hO745KnudlZhOe2GCdI4H1M011Ez0K517kB245Z6xHv9h0LcoNMrwQUR5iOp/ackF5iYzt165UiDv/BlgTcVUQPWSh85Su1wExpnsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=c-ware.de; dmarc=pass action=none header.from=c-ware.de;
 dkim=pass header.d=c-ware.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CWareITService.onmicrosoft.com; s=selector2-CWareITService-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tPN5HHKADxsaaT2gAgkh+MI4ZuZKK/74m+Fr9k/pAXg=;
 b=cPF9hTVjHGohRuDYrSx6XsQjAeXcJ/Iom+BiGXrf/IQz3bik5LBmoM6j+vwFc5teaEzSm76sfx+U3xI/Gu+dRqiYiVkM6m0RnklDKN89mh81KgoSc3K0cUtrTZt+GkYK++rkyKhkwqjgq5VzHRKjkUb6gLOmBr7d6NjePmLWPfc=
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com (2603:10a6:20b:137::22)
 by AM5PR0501MB2417.eurprd05.prod.outlook.com (2603:10a6:203:a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 19 Aug
 2021 14:37:56 +0000
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289]) by AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289%9]) with mapi id 15.20.4436.019; Thu, 19 Aug 2021
 14:37:56 +0000
From: "Christofer Dutz" <christofer.dutz@c-ware.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Problem with building Go recipe for "Delve" project
Thread-Topic: Problem with building Go recipe for "Delve" project
Thread-Index: AdeVBxCrCzgEaKHOSPWBUIlsAu1dsA==
Date: Thu, 19 Aug 2021 14:37:56 +0000
Message-ID: 
 <AM7PR05MB6807DACA13172F31C02D3F53A2C09@AM7PR05MB6807.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=c-ware.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 28719bac-1fa9-4992-e8f7-08d9631eef78
x-ms-traffictypediagnostic: AM5PR0501MB2417:
x-microsoft-antispam-prvs: 
 <AM5PR0501MB241731EBF61BA4842207F715A2C09@AM5PR0501MB2417.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9S0VYCaUH10+jJthR+c6ojx2VVgCKonbEXw8ruzkn6aW8mjjZqBvzWe8j9amM5vDphF7kye8+xcQcf2/xWjECipUDJDfjtiZSbfeyB6fpx4B3JBicJjs+5qGDDCrUfxrqbEIMZGY+NL76Vxe+GS2qGWXvSCgvgI/RjGmdio3z1jHB2/ci5+b4jGPGQxnVPuc1WiSB/mRbREi6KuFTW/TC8lnq9stnp36nsl0y2q+RWz+q7tTm9WBru4yQXeHQy7kiu7o9B5ZL7LnJFn1s7MByHCFygevnl6f/bKuqIUROViTSvrZuwctqpfhnkY5idz8vojHpiXshWuHxfyq2XeJW8PNHgq7MgT3gvxBYXAZO5C5K95HQ/FdkEcqbOs69Njdv9OVJ1XkkFB7uAiXx6N61YSfjcxKRM5e2k1U4OGCqJPeE4TnU6BMWLgAa1mnj8v1bvr/SpGeGOz1G2kAyyjN36q/vyMINELPJWL0L/GZj00VKNbMHhoOI+KEZfwXXLwJbeH91iAPvGZtiVyCp/y+NOrUyH78fkxNlT5seZ44GKPCBopon4RDNVRy9j4kKtzv+iAuTkYZoDPQVdNQgcABXBNZWlqMkeEtutUtZ8DWPUgXZ6T9L4NSXXrS43Uy7CVLc34qCYi3+HyhgsN245WQzj6hpRy1lAQsjqtNfIvbLNv0XtXDwLCvNCTjLbT2GtlPELeOwpJdylKpx78oyfKClSYjlJhwzKx1chxCAuBnMlDobzT/hgnzbSGAe2+ZGVeqsiNtpW+MvchZ7fBROnWe9g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6807.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(136003)(376002)(366004)(396003)(39830400003)(38070700005)(6916009)(7696005)(186003)(8936002)(83380400001)(71200400001)(5660300002)(33656002)(166002)(6506007)(66946007)(66446008)(478600001)(66476007)(44832011)(55016002)(19627235002)(76116006)(66556008)(64756008)(316002)(966005)(2906002)(86362001)(8676002)(122000001)(38100700002)(52536014)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?judgkOYy9Ryrs5ojLgc4CGQms69e1BYgEQ2svg/hN9BThfmObD6k0h34uQw6?=
 =?us-ascii?Q?xf47fmc8Ke1EXWsHnRRqajoP4nC8hOPQVJ5Hm87tEN4mwF+b+TnL9imVYQxa?=
 =?us-ascii?Q?Y1yvzP1qRZp6eIaU5EgQi7Np8DKx9xwbhF3oEFIGYilChUmu0qHTdYRrYlCq?=
 =?us-ascii?Q?LdsvHez8pt7YyIBJpZ3km3ETxwIyYmj+PYZCX+sElJs6Kk8+0y96sUgPq7Nu?=
 =?us-ascii?Q?BMEE0igpwMKZaGIvzByNrjj84vffehtnNObgHe92Y4oBFQa2KwqEwlvfRE4m?=
 =?us-ascii?Q?yQq+vc3KpNyQTAcSlGGONHyXV7DsaNGoaxo2qziQXUa0lIlsuMji3K8+5jAw?=
 =?us-ascii?Q?hRXHtslwtY5lnLaaxyDOFrDESAP1AhPoXxlzlCG+sWpEN1Bfog78RV8CifNr?=
 =?us-ascii?Q?7uL/0YcV7o1/+83iVx8tvZEEIFNNUBcvvzukdiRcqOX97G0iukGI6xN1VSM/?=
 =?us-ascii?Q?Q3aJecLcamMdxDXyyPM3q821j54jZDTToGMDyCiWAnMU3PqOCjp8ngvqH70D?=
 =?us-ascii?Q?KxcvaVo2SBRSb6azycJ8/D1hlsAeJ+7q2Ax/h2+mdBCjOY3dfvYFnxAs+BE+?=
 =?us-ascii?Q?7elpdtwYEugn2VtKDgpBT8vYxEgpaBgJA30inH7/WTVAwt1B8FWIC4hMsKqs?=
 =?us-ascii?Q?DQMbHAwv1O/PrIU40btdyTYdiFy3qEq95iX6cFDM0asBpTH7N/s2F8/XP25T?=
 =?us-ascii?Q?glDpjv5cSE2X1t/0gx3j6q0ufSHtlqIX3w6v9/EwfglULj0fC90ZYFNTdNX6?=
 =?us-ascii?Q?O1aOCTE/nFx8UNAFX7rTUE3pZAC7I0Bl+K5wuCWP6v8Oly/SWMs7idxWrF1y?=
 =?us-ascii?Q?HxzkSVv9m4UU2epMwttdE/+nFSJWwXitYwRjnPOZrvMvBn+4t8joek2uFF7o?=
 =?us-ascii?Q?4b0ZnIbbMhUW1xrXyWGxS5dN8dhDHhwpbSEKEHKVq4d5LsnuDIzVl96ThG0M?=
 =?us-ascii?Q?Lqw6V3eLdCxgdjKI1aTGequddcW/p70PanyZzYnFv/CYoii6fCLK/pUNfkTM?=
 =?us-ascii?Q?Rzk48VhFcSk/+mEjVvL8Q5Gzht4CFyzDxiZfraxrFbK12m/GNIF8yMErrveA?=
 =?us-ascii?Q?Jho9xOLJxZIJiOQdBvr2hJybLb4JtoegONPjXm8fAuFj19A/lP0R26Ly7Z11?=
 =?us-ascii?Q?eh9+7lPQcUHrwe+TblnjmYD1Ii4tq2SvO8r0QyfX8ajxJBx/gBfdO8Alvnpt?=
 =?us-ascii?Q?6hHc/PwJX+LDJGQQlhJvr9K6Ub/3/hg0oU9H4xVxap3xynnW5Wh2F79+ivQR?=
 =?us-ascii?Q?uMP2wbzRm0O8ZZpsVkIT8imuHqBDRmD5vQEAai+p6UyyrenuKPIi9Msndb8t?=
 =?us-ascii?Q?+xFw8WRjqS3QxCUJp6b24S4c72dQKyfd0Ew8FYAmmaZkjUvmaQPKprYOYr/y?=
 =?us-ascii?Q?Mijtp14=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: c-ware.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR05MB6807.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28719bac-1fa9-4992-e8f7-08d9631eef78
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2021 14:37:56.6188
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d387546-1437-4b89-846c-691d64a7e74d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3nEZDhOn2hvmRsTOXIhK1YrAgRHR/0Pxw7mnMazjEpeWKbfL6ZOZQNSI1Sr8k4ZLevggPH1DhOv90yAwm/86MfqVD/I3S00k10RNwcvbkzY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0501MB2417
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM7PR05MB6807DACA13172F31C02D3F53A2C09AM7PR05MB6807eurp_"

--_000_AM7PR05MB6807DACA13172F31C02D3F53A2C09AM7PR05MB6807eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

after having sorted out all of my programatic-configuration issues I'm curr=
ently having an issue where I don't quite know what I'm doing wrong.

We use a too called "Delve" to debug applications on yocto remotely. This i=
s an application built in Go.
https://github.com/go-delve/delve

However as soon as I try to build the layer I built for it, it fails.

The reason is that the repo contains one directory that only has test-class=
es and not a single "build"-class.

As the Go tooling seems to execute:

go list -f "{{.ImportPath}}" ./...

This also lists up that package and as soon as the yocto go tooling tries t=
o build it, the build fails with:

| go build github.com/go-delve/delve/service/test: no non-test Go files in =
/home/cdutz/Projects/yocto/dunfell/build/tmp/work/aarch64-fslc-linux/delve/=
1.7.1-r0/build/src/github.com/go-delve/delve/service/test

A simple workaround is to simply create an empty go file with only a packag=
e in that directory, however this sort of feels like a workaround.

Is this possibly a bug in the Yocto Go tooling or am I doing someting stupi=
d?

Chris


--_000_AM7PR05MB6807DACA13172F31C02D3F53A2C09AM7PR05MB6807eurp_
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
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
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">after having sorted out all of my programatic-config=
uration issues I&#8217;m currently having an issue where I don&#8217;t quit=
e know what I&#8217;m doing wrong.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We use a too called &#8222;Delve&#8220; to debug app=
lications on yocto remotely. This is an application built in Go.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/go-delve/delve">https:=
//github.com/go-delve/delve</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However as soon as I try to build the layer I built =
for it, it fails.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The reason is that the repo contains one directory t=
hat only has test-classes and not a single &#8222;build&#8220;-class.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As the Go tooling seems to execute:<br>
<br>
go list -f &quot;{{.ImportPath}}&quot; ./...<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This also lists up that package and as soon as the y=
octo go tooling tries to build it, the build fails with:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">| go build github.com/go-delve/delve/service/test: n=
o non-test Go files in /home/cdutz/Projects/yocto/dunfell/build/tmp/work/aa=
rch64-fslc-linux/delve/1.7.1-r0/build/src/github.com/go-delve/delve/service=
/test<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A simple workaround is to simply create an empty go =
file with only a package in that directory, however this sort of feels like=
 a workaround.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this possibly a bug in the Yocto Go tooling or am=
 I doing someting stupid?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chris<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM7PR05MB6807DACA13172F31C02D3F53A2C09AM7PR05MB6807eurp_--
