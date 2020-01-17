Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1662.1579249954677026873
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 00:32:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=LLQS7sk/;
 spf=fail (domain: nxp.com, ip: 140.211.169.56, mailfrom: heinz.wrobel@nxp.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18781E01567; Fri, 17 Jan 2020 00:32:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.13.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130045.outbound.protection.outlook.com [40.107.13.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CEBE0149A
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2020 00:32:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Od32NnY+h0Zyo7qniOfG/G5jYxE6AJMxoPlgFX5amStBMN04/Os7BhOC4BVmDl9DDz+auEee9Z+v8TiiDyhi6Cd7JT0TTZb0D+tpbJisME19HkEDgyJo8uuzVKf1FSblf7AM9KmqLk+aO5dHJHCJgT/WRNv8FDBLM4+8UsDBYs4Dc7zK0J+1Pwy+SfDkVnpiBoToCRWVLOqE93Fwu1IAEchL4ITk3B4gW3AVOU/2EyM8wXbrFeJIvmaxmPikf2iqnJoW2J8D0QJS0phI77p5mPBuD7/PthdkY/joEMdVlfQLEqoCitX8CtPUkduHHIcyor2oqG/vYzeWC2b4ZabiyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bj8kHMwjqLiDaS9THje/hJjvBqsVNXXZwo8fdb8Yq20=;
 b=eef7VCVZVzhQBH2dl0LnZzwvf1PviIRtFuLLu5hQqWkUqbJlO/D5opoItAklBMTzth2WBwUI1JM5Kh6Twg/xUeBmS/W92FPsGFx1wLrusUa354R84GKk2GONvkapF2inamBHgM0rmy9iys+Z12DD6JXioBnV2GzXdTCMIQJdSLCkdP7OFK18sSlypUUA3RrMuE1mlWaeptoBZxqSz6gfmQKR4WGqWjBuw4pCdAwTTP6N4se9Syt5tvIFTUdyX+FqQjRxIFVoDgZOFg/OkpWoTb3N8wnCuxOvgETaCHmXHInR4/ScLaQGvNqYXicLR38ULpyEjE7p1xLozfvFIQgYtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bj8kHMwjqLiDaS9THje/hJjvBqsVNXXZwo8fdb8Yq20=;
 b=LLQS7sk/t3+lbd/9GhaDE3Os6SyFFzXfQaKIysykRyoqcVe5NYxz0d91VMRTEUxDTur0yMeQvbeHLjzb0FyuEBRAJJobDC8UKXTWf+fbiGaNBoLylVS0MeoD4Xxe1guRBucykOV95k7lu70J0HE3E+K4vhdHAp5J2dD5arN15Qg=
Received: from DB6PR0401MB2534.eurprd04.prod.outlook.com (10.169.227.146) by
 DB6PR0401MB2613.eurprd04.prod.outlook.com (10.169.225.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Fri, 17 Jan 2020 08:32:26 +0000
Received: from DB6PR0401MB2534.eurprd04.prod.outlook.com
 ([fe80::e189:1a3c:23b0:2382]) by DB6PR0401MB2534.eurprd04.prod.outlook.com
 ([fe80::e189:1a3c:23b0:2382%3]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 08:32:25 +0000
From: "Heinz Wrobel" <Heinz.Wrobel@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Image specific package selection?
Thread-Topic: Image specific package selection?
Thread-Index: AdXNDQaxhHuAzOwXQEWTwNQ/yNCvXg==
Date: Fri, 17 Jan 2020 08:32:25 +0000
Message-ID: 
 <DB6PR0401MB2534EBA50C8851167D8FE1B88C310@DB6PR0401MB2534.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=heinz.wrobel@nxp.com; 
x-originating-ip: [82.144.34.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 62b9b1ba-95d7-4881-3458-08d79b27c813
x-ms-traffictypediagnostic: DB6PR0401MB2613:
x-microsoft-antispam-prvs: 
 <DB6PR0401MB26135FB4F96FAE4EA32074A88C310@DB6PR0401MB2613.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(189003)(199004)(19273905006)(55016002)(26005)(2906002)(9686003)(186003)(6506007)(7696005)(64756008)(66556008)(76116006)(66476007)(5660300002)(66946007)(66446008)(33656002)(44832011)(52536014)(71200400001)(316002)(86362001)(81166006)(9326002)(8936002)(3480700007)(478600001)(81156014)(6916009)(8676002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB6PR0401MB2613;H:DB6PR0401MB2534.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XRy3fSJc6b2rxbQGayaxssvAjCgYR8BUrQrgks8PsAZt29zbbbJdnbXX4nrDkGzVUS5x8Xj3rxbTeZedljQcq+m91tjs98bZjw6ODedPIQVLH6AVMdvl9ZnzlSE7QUMUjELorp5t6lXjEYy+UbHLfrGWjmQfGaC/AeOiyZ3jxvswaLIW3w+924nRidGxYQ6EePbuArzHhYcowimSHm4Ac5s0cWiGzTkJPu7H5taRHUxqeBOgBTLmEklm5RjDza4JZu5phtRBxSp9U+LbDOFvsAm3eugV8RPbqyvasYnTJV/bjAUYs7l947/+UP1Ls4Imy6hf7mlrB93ctcOS2yMegLe48qNHuzJNZWJi1S0/f6U8o7A5QBaHqNMOpLdQSNqBAKCijF7jiqPOWc92C4mTmzKrCG83sQLtYWB24o3anHGcSWxTxSgj4gvz8Z5FDUNj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b9b1ba-95d7-4881-3458-08d79b27c813
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 08:32:25.7306
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IffKMO+7LnB84c9rbKtbgi10dpd2WZcPLKiqMhP+zP5hOHwdg7u483+2grHOPrWemnfs8TJGMhv8QnoPZGCjlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2613
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0401MB2534EBA50C8851167D8FE1B88C310DB6PR0401MB2534_"

--_000_DB6PR0401MB2534EBA50C8851167D8FE1B88C310DB6PR0401MB2534_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have an image 'alpha' which depends on and in the end contains the result=
 of an image 'beta' as embedded archive, i.e., I need to nest images.
As an example, think that alpha is a manufacturing image which is used to i=
nstall beta on the target machines permanently.

The problem is that alpha and beta do things in substantially different way=
s and must use different packages for the same functionality coming from di=
fferent recipes. So I must build different recipes resulting in mutually ex=
clusive packages and need to pick per image which package to use.

PREFERRED_PROVIDER is a machine global functionality to define which recipe=
s get built into packages. As I understand it cannot be used in image recip=
es and it cannot influence which packages are used to build an image.
So I can control which packages are being built, but once I have multiple p=
ackages built for a single functionality, I can't seem to pick which ones t=
o use in a do_image.

I think I am looking for an image specific way to filter packages during th=
e image build, e.g., an IMAGE_INSTALL_PREFERRED or IMAGE_ INSTALL_IGNORE va=
riable that I can set in each image recipe. Or a way to specify in an image=
 recipes which other recipes or their packages not to ever consider for bui=
lding that image.
That way alpha would get the alpha packages and beta would get the beta pac=
kages within the same machine and the provider conflict may result in a war=
ning but it would not be relevant.

Or is there a way to do something like RDEPENDS, taking priority in a way t=
hat it deterministically forces the image build to pick the specified packa=
ge rather than another one that could in theory provide the same functional=
ity?

While it would be easiest to build alpha in a machinealpha, and beta in a m=
achinebeta, I have the problem then that I can't have an automated "single =
bitbake" build because there is no dependency handling across machines.

My goal is to have a "bitbake alpha" in a machine solving the nesting in a =
way that is transparent to the user.

Any idea how that can be accomplished?.

Thanks,

Heinz

--_000_DB6PR0401MB2534EBA50C8851167D8FE1B88C310DB6PR0401MB2534_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an image &#8216;alpha&#8217; which depends on=
 and in the end contains the result of an image &#8216;beta&#8217; as embed=
ded archive, i.e., I need to nest images.<o:p></o:p></p>
<p class=3D"MsoNormal">As an example, think that alpha is a manufacturing i=
mage which is used to install beta on the target machines permanently.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The problem is that alpha and beta do things in subs=
tantially different ways and must use different packages for the same funct=
ionality coming from different recipes. So I must build different recipes r=
esulting in mutually exclusive packages
 and need to pick per image which package to use.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PREFERRED_PROVIDER is a machine global functionality=
 to define which recipes get built into packages. As I understand it cannot=
 be used in image recipes and it cannot influence which packages are used t=
o build an image.<o:p></o:p></p>
<p class=3D"MsoNormal">So I can control which packages are being built, but=
 once I have multiple packages built for a single functionality, I can&#821=
7;t seem to pick which ones to use in a do_image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I think I am looking for an image specific way to fi=
lter packages during the image build, e.g., an IMAGE_INSTALL_PREFERRED or I=
MAGE_ INSTALL_IGNORE variable that I can set in each image recipe. Or a way=
 to specify in an image recipes which
 other recipes or their packages not to ever consider for building that ima=
ge.<o:p></o:p></p>
<p class=3D"MsoNormal">That way alpha would get the alpha packages and beta=
 would get the beta packages within the same machine and the provider confl=
ict may result in a warning but it would not be relevant.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Or is there a way to do something like RDEPENDS, tak=
ing priority in a way that it deterministically forces the image build to p=
ick the specified package rather than another one that could in theory prov=
ide the same functionality?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">While it would be easiest to build alpha in a machin=
ealpha, and beta in a machinebeta, I have the problem then that I can&#8217=
;t have an automated &#8220;single bitbake&#8221; build because there is no=
 dependency handling across machines.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My goal is to have a &#8220;bitbake alpha&#8221; in =
a machine solving the nesting in a way that is transparent to the user.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any idea how that can be accomplished?.<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Heinz<o:p></o:p></p>
</div>
</body>
</html>

--_000_DB6PR0401MB2534EBA50C8851167D8FE1B88C310DB6PR0401MB2534_--
