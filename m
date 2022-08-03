Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635BAC19F28
	for <webhook@archiver.kernel.org>; Wed,  3 Aug 2022 15:43:34 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.116])
 by mx.groups.io with SMTP id smtpd.web10.10273.1659541411093086212
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 08:43:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=QUcfYDUL;
 spf=pass (domain: sakuraus.com, ip: 40.107.223.116,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rzf5XgP2iiQu7uIuKwFPjXhzcju4+O9zn1fel9qFtFhfzaYmhZOAT1EBrpgqE+NlIOOopffNOoe/auz60MAXv280cD8CSLrqeCsOvRN3WOlcz4o83lQgGcchv2BWg5b+OlDamN6iqBcl31dlC8rZJOrVf4PZ/Q74xMW1QioWtI8auxZlyMYZKk3WsHnuSwgSVHE5lsUNV3BsdDOTbqvd7eKy2IqT1IRS2U4IuGljTBIQoe8iwNqpUbF/dpAkedcG98VUBSpdBdSClo3bXVREdc2OIY0StNOusHg0WHTH41grsuX5wxcR9V3ZUYBOfsS/iQ3CrG7KYnkyx32Qf8+FWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UKNQxR4mUa5hivIqJ+Y9BTZFJeiH0yFLL5kR0caDGwA=;
 b=Xpr9xrtjUH4Nyfi5C3uwqTlp1teWR1nJw/SDkJU4GulytUfbudgtlU5hkoyItIqYROvVRrewQF42mkwYSAlCaDQHad8w7E6CSPudH47mln1XwPJ5dCOtUG17GZNgzUsV0SjLgWjDHaRuvgwDPSYzGiVojAiFw68ETQMN+X4S0O4oPuI1NlrBLjC8FFs+HTE6iwQb0b04GD6qg3s8GthpwpfQLyKLs/UZRmrSVxqayr+gu7oafmsnsEXUmet5teum6PCUNVOLbseE4wG5AvRbRw0yE4ylayTs+DZYHpGvBKScVy5V5kxQl7i3UO1DtU6t1Xg5Te5yk/cgDq+RDZ7AKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UKNQxR4mUa5hivIqJ+Y9BTZFJeiH0yFLL5kR0caDGwA=;
 b=QUcfYDUL5SYOw6jKGq4dq5ftGwjNuBD61v/Oh6Nw9M/8/UMoqQcttycktvTBhsJxIXDZRNbANvupeppZWn4Pb8xo/yv4y/1NQx6e8cQjQnOObCO4U3KX7eDzCioudKb0QtKbENym+qJTlssdI4m92EacFIaeNBcPBCt0XgoXa9g=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by SN6PR1501MB2031.namprd15.prod.outlook.com (2603:10b6:805:8::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 3 Aug
 2022 15:43:27 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::e575:3425:8e85:d5a8]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::e575:3425:8e85:d5a8%5]) with mapi id 15.20.5504.014; Wed, 3 Aug 2022
 15:43:26 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Mariadb login user configuration
Thread-Topic: Mariadb login user configuration
Thread-Index: AdinTZZViyBQ1mZnQtqhUVxNDGnhFA==
Date: Wed, 3 Aug 2022 15:43:26 +0000
Message-ID: 
 <PH0PR15MB505578F10048DACF528395D6CB9C9@PH0PR15MB5055.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 537c04e5-e570-4cf8-28c5-08da7566e807
x-ms-traffictypediagnostic: SN6PR1501MB2031:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Lcp1Pxu6YrkZX692RarxywmzZPTix4dDxEM4E+GIYe/uuSb7DcDwuFqKGGE6wHpu/d74teBdelpX6N74kehxw4NmxqPMIisbnX2ttT+XiHyX3g/fK6G/Umj0fKYERAJ/w7JYq8QqX66IMbr9IpYIfCWDWDLq0ZwWiFsVItJa12PzhAkb4tx7bI4hxL6ju7k0AApaf1J+Rg/3YfjVfZOc7bojc5lohkkGID89hGtYgNh20hSW/nLuYwzkXEsYjamyOqKlGa/AEdC5dumzbKn7ckM5s5C2nR8lAIVZy4K9Kmh4uzhIerUM7JVRya3bajQLhUSJQb+rL9eEwise/fpZw6ry18DfFNEVUuSv7WtaSuyCY8IuzVhmMhUyyZv5Ywux6UZ5QlQChde7nWzxo6m/CQfUetIGTGK9kGuepxXEONaBZTZpbps6YolPlg/0hD3NNPonrrfKtiktlogXlgNMJXaiGqH+HL5e3v8BfJQE4gmH2u/E/63z+YS8e7PZnvhmvHYtO335OTOdSC+Hdrfmk2dq3esUZ3kg9BmlJJ3DHjQMKHHC5ExLrvtRBK/qn4p73wLQYISVAQ2u6vh1HNKJWArJcMzxfds22WhxjHAOqeuNQ2DocACkI+YWPnVlx8J30zZsi32F3TYoJjVDiXPAF6+PlUbqYE77bc7wjxZgqCnfWN5F36MheeVjkVUfqem1LnFkDvFkFHtuGtA7oYRNLy57rEV66XiiVG4xd5u69SpKVY6/dVhvno+E7mvYr5YzYNPLEBt6IwNafrmmljJaO9z1rkPeK+uYN6hVKsG0zfbSI+VkKRXeI7BQhk3quHiB
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(346002)(39850400004)(396003)(366004)(376002)(6916009)(26005)(9686003)(6506007)(86362001)(7696005)(478600001)(41300700001)(71200400001)(55016003)(316002)(38100700002)(38070700005)(122000001)(186003)(83380400001)(3480700007)(2906002)(66556008)(66946007)(8676002)(64756008)(76116006)(66476007)(66446008)(52536014)(8936002)(33656002)(4744005)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?30mObqW3SG+rco3m6m1ba8G0jO+GVTXEyIVNh73R1nR3PRZ4Oy8g4157zi+J?=
 =?us-ascii?Q?ACnepLpC5wZiZv3DHIFGVY6vtyP1zbfmCIhhfMMhkeKlvdb5voX4aJcoCuh+?=
 =?us-ascii?Q?kVajBnor1vqalVLc2RNvMnjGgcISEXc13nYsgMDcBKNAnsI9mAGue21leU3S?=
 =?us-ascii?Q?Mh5LJwB+BMEE5jCk+I6uXC3+cgFvjgXkpcTpsvlU38iN6VObYX9SAL0VPnK+?=
 =?us-ascii?Q?H673DgELKykPepADBSpX5ecM6f//jM8+HpsG+AKlH0zfzK/eU42IAee+/+gL?=
 =?us-ascii?Q?/5FckncuwMKHEg0dO1mV9mq8mw5E4tS6VoeJ2ry6u2ylmB9ojXS3UoiQGRPb?=
 =?us-ascii?Q?iKupHIG+q3bPAFbSQRUS6da5p7TTKBhFilZhkWdc0ovCzqlN8cHVK1o/XoWd?=
 =?us-ascii?Q?orNscw7rKvxR2mJhzoDkEFBt52YH7f6FTyiiBLBo78ErgW3IZoeGU6Jdvh9c?=
 =?us-ascii?Q?Jl7vtcyzLj1wzoOQ+/sgFPM8Yg751QCv4r36KuBhzF4MWgVPn4eorTESRrBn?=
 =?us-ascii?Q?vbFDP2njM1GizuMooud74aLa7lM4aTe4WSM9CLMFWmxijIK03PqIR9ntpXhq?=
 =?us-ascii?Q?0oy/GMfnyob+9E758xeqgNzRuVmQ4Ao6YtqcUvd8wETUQ25uVVPz5HB4jAGv?=
 =?us-ascii?Q?9A8ViXhF1VTMXhXSfAvqMtOLC6aSNfO937lCXvV/BO3lOyrPtxT3adFa0GR8?=
 =?us-ascii?Q?6aZbH0E44XGMSbTUAA5jHV8JN2q89o6QSmpzpe/xBUq07rjzyLJSriJ6dv5B?=
 =?us-ascii?Q?pq2mIkz8NkTu961R4LsKFoFGAag4AiLlgoQ+r9155IY+8T/I/bmoxGvcJLtO?=
 =?us-ascii?Q?vxwceM1sAPP4hx0pjv1EzVGOKqITEpLWigtOsn5Htv2jV/aL4+Id827rAIAH?=
 =?us-ascii?Q?lyHyL/QdbmkG+dEWLSD/v4TGUS1BNpCBTqqu69bnFMx3SEEFwlfR67DfSNhS?=
 =?us-ascii?Q?8aqZQl+6dXdNGL58cVYD9zU23E6DfGh2RBRA8JFlyzaDQTf4bpDKj86FdI8Z?=
 =?us-ascii?Q?WfM0atGpROybNskCFaRZbJt2wk5iQXF71rRSK7UCwuRc6Gz4D83L3rC1+wmz?=
 =?us-ascii?Q?DQw5BUGCd+vygODu6wJDRvj64SAJilgtYKlwtAhhl4U9tqSKwHPiuGX5kmLa?=
 =?us-ascii?Q?IzUZd+ffefv86TwPYADaUkcrPRW0B/zljJ+kKZgTMQPyEt4f+oNVzOLXWjiG?=
 =?us-ascii?Q?l7iTQ27WqcuYYEdjvoXN7/Swm96KWcKkGxk+zXPmSkwZnublYKK4j+xlnQAN?=
 =?us-ascii?Q?2RYpJTbq0oDsH5GqfyVQMq2bADLWDY2nWBs8BWDD7qpB/BzscUVDl1iqiWot?=
 =?us-ascii?Q?hyJBjXPIObCqHBKdCj+Es/uMArA79T5EdmjNtzf+sws1h3nG5hTj5bgUGcNa?=
 =?us-ascii?Q?6Vx6aVPeSG1w9Z0O0hYqHSdJFoaVDRiijgthuRyiJmJcduUByhOOw4/ppuy1?=
 =?us-ascii?Q?oBnZw+gqNXAMJiqz+RbP5yqQ2dFbc8Yeofh3OK1uNmX7kvgri36KKOeJ97uB?=
 =?us-ascii?Q?U3PMg7zcDtxaninLgn1oqkkLX2WpIr2ZgbkM287jhthuNani9tRttYmtHN2H?=
 =?us-ascii?Q?5vs/FyLwep7xEa/FWPYNGrr/M8BNQPHdu6OhssVA?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB505578F10048DACF528395D6CB9C9PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 537c04e5-e570-4cf8-28c5-08da7566e807
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2022 15:43:26.5618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 1FTPtkmlqF1XvVRL/2H8j5cPG0zfe6PxnwX8M7irHJlhoJ4WmElh+wl9teB6j3ODpKkMBfhpfIYWBqRLqkb8iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR1501MB2031
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Aug 2022 15:43:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57770

--_000_PH0PR15MB505578F10048DACF528395D6CB9C9PH0PR15MB5055namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello list,
I don't know if this is the correct place to ask, if there is a better plac=
e, please let me know.

We are upgrading the version of Yocto that we are using, and we have run in=
to a problem with using our mariadb server. In the past our application and=
 our external db editor logged into our mariadb server using root and no pa=
ssword, that is getting locked down, so I need to configure mariadb with a =
login user and password. We have found a way to do that on a live system bu=
t we would like to bake that into our yocto build system so we don't have t=
o mess with the database every time we generate a new Yocto build.

I have searched online and haven't been able to find anything that suggests=
 a way to configure a default login name and password, is there a way to do=
 that?

Thanks in advance for any help you can give me,
Greg Wilson-Lindberg


--_000_PH0PR15MB505578F10048DACF528395D6CB9C9PH0PR15MB5055namp_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello list,<o:p></o:p></p>
<p class=3D"MsoNormal">I don&#8217;t know if this is the correct place to a=
sk, if there is a better place, please let me know.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are upgrading the version of Yocto that we are us=
ing, and we have run into a problem with using our mariadb server. In the p=
ast our application and our external db editor logged into our mariadb serv=
er using root and no password, that
 is getting locked down, so I need to configure mariadb with a login user a=
nd password. We have found a way to do that on a live system but we would l=
ike to bake that into our yocto build system so we don&#8217;t have to mess=
 with the database every time we generate
 a new Yocto build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have searched online and haven&#8217;t been able t=
o find anything that suggests a way to configure a default login name and p=
assword, is there a way to do that?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance for any help you can give me,<o:p>=
</o:p></p>
<p class=3D"MsoNormal">Greg Wilson-Lindberg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH0PR15MB505578F10048DACF528395D6CB9C9PH0PR15MB5055namp_--

