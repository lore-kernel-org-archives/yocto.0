Return-Path: <khem_raj@comcast.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8FAC63719
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:09 +0000 (UTC)
Received: from mx0b-00143702.pphosted.com (mx0b-00143702.pphosted.com
 [148.163.141.77])
 by mx.groups.io with SMTP id smtpd.web10.9529.1650470697147921558
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 09:04:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.com header.s=20190412 header.b=rq+O/ibY;
 spf=pass (domain: comcast.com, ip: 148.163.141.77,
 mailfrom: khem_raj@comcast.com)
Received: from pps.filterd (m0156896.ppops.net [127.0.0.1])
	by mx0b-00143702.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 23KEWuEa029231;
	Wed, 20 Apr 2022 12:04:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=20190412; bh=WnL53FowZTx+YO2LpKiQ+ktP3hZTbVvuVpjgBSIpnR8=;
 b=rq+O/ibYJb7ZIoCnjrzRzkQZjSx0+FFikjaCIdIvDZnW3kNZ9n1LF2fd+jRat5BmM4VM
 zpt+BGjUZREvZ/QIYrNSUDi5D+IlFIoaH/w8ua/4EFtuWLUkEbVvVsmuPUSugVqcjSg5
 nNgm9EKBG8kx51aOOC++VKNnIGcUrV3Lgweqo1FrnEF6fLp5i66sV31edrN74hEdKFe2
 fOwPqrgy9T/CDmY3one0j98T1znw6OpgWrTDcfGt3OmeROVWg++wRRD//bJM1ABM+Jcf
 btol82hK4tPPGBfHCdGtMGCRqoR2ZK/0USoffcqfmIwru87erhfRtSQW3WFLmn4rE+SM eg==
Received: from copdcexop05.cable.comcast.com (dlppfpt-as-1p.slb.comcast.com
 [96.99.226.135])
	by mx0b-00143702.pphosted.com (PPS) with ESMTPS id 3fhmkgmjnk-13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 20 Apr 2022 12:04:51 -0400
Received: from COPDCEXOP02.cable.comcast.com (147.191.124.157) by
 COPDCEXOP05.cable.comcast.com (147.191.124.160) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 20 Apr 2022 09:04:38 -0700
Received: from COPDCEXEDGE01.cable.comcast.com (96.114.158.213) by
 COPDCEXOP02.cable.comcast.com (147.191.124.157) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.986.22
 via Frontend Transport; Wed, 20 Apr 2022 09:04:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by webmail.comcast.com (96.114.158.213) with Microsoft SMTP Server (TLS) id
 15.0.1497.32; Wed, 20 Apr 2022 10:04:18 -0600
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by BN6PR11MB3873.namprd11.prod.outlook.com (2603:10b6:405:83::37) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Wed, 20 Apr
 2022 16:04:14 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::b43b:462c:c2d4:a5a3]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::b43b:462c:c2d4:a5a3%7]) with mapi id 15.20.5186.013; Wed, 20 Apr 2022
 16:04:14 +0000
From: "Raj, Khem" <Khem_Raj@comcast.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Yocto TSC <tsc@lists.yoctoproject.org>,
        "Mittal, Anuj"
	<anuj.mittal@intel.com>
Subject: Re: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notification for
 completed autobuilder build (yocto-3.3.6.rc1)
Thread-Topic: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notification for
 completed autobuilder build (yocto-3.3.6.rc1)
Thread-Index: AQHYVIhlimFHyKmuNUqOkwwGlQkjHaz42JdhgAABi4CAAB0aTw==
Date: Wed, 20 Apr 2022 16:04:14 +0000
Message-ID: 
 <BY5PR11MB445132CD1047AC5521ED7396BBF59@BY5PR11MB4451.namprd11.prod.outlook.com>
References: 
 <0101018045908f0d-aec445aa-251d-4dcd-a10d-8d0ead780069-000000@us-west-2.amazonses.com>
	 <36840f7431b8a53272a3f783d747807dde19967e.camel@linuxfoundation.org>
	 <BY5PR11MB4451216A387133B2C2BE9A25BBF59@BY5PR11MB4451.namprd11.prod.outlook.com>
 <00bb6f36daa27e92be0fde6a679a67eb4f72e4c9.camel@linuxfoundation.org>
In-Reply-To: 
 <00bb6f36daa27e92be0fde6a679a67eb4f72e4c9.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 163783fb-9529-4958-e737-08da22e76a51
x-ms-traffictypediagnostic: BN6PR11MB3873:EE_
x-microsoft-antispam-prvs: 
 <BN6PR11MB3873D86F13507A06CCFEB296BBF59@BN6PR11MB3873.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3wPzRCZW/P4MTXW7CWs/8aFjQCKySBRt7xQyjbA7a9fZrOsrRdoxLTndydzHGizm/9fpibcCnpH3TTy2RZ2Xe2Sy3/XdtLz1kTxdSpKNw4c2GOGA8DeadLDMBRjWVcwcZRS1OGhGVWOEle0OLkDEbUdw+YjpzPkN5PnmWDNTK9f2wsw5NnyJAjI3E9bM1ge5g5jDPyAXvJuC98BX9ObtJxazW2JCiMLi/LABwd26svchOhC3mzpWhmaXdDGvV6sZDfczSnW5WurlK9lDYUlVnXPQKc3hqw0GHa8zudDKD/KndXi1/uUEq7mDioj1VF5YhPY4WRildlvzGbSpmlv/PLoVMYTDBMyMErC38HKYbZ31vGM7Ajt6j7LBFytTK49sv0tqE07NAIkqkbmDEidhgSV/knprdTXJMM2mDz3eoG7MoFQ+YGc8ws/Zd27IdeXyjLtWBOawIbwMqar2fIcOgGeX7MrU/xrAOHvAtQl4ddaT9bSj3GbV1lgkp3zbNi5oybZEXnqljt9g+og5gnzDQEybh8OYcKTINz6XdEfQfX1QYy/Px1W9bDJo9uA/Eep73eW+mZMkjPH70u7Ji6c8/sVYFwWc5EDocKgq5Z7oxkML/XIIehaRbefDQYf/xWnRX8XITPmSCZWFm8Pw324DzMG72yEObGrZ6kYpViuJEacObi9FGuONk3NzJqGBjkcMijUtknWQBdTptXq/qEVhRA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4451.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(54906003)(122000001)(33656002)(508600001)(110136005)(55016003)(66556008)(66476007)(66446008)(83380400001)(64756008)(316002)(38070700005)(38100700002)(66946007)(76116006)(86362001)(82960400001)(8676002)(4326008)(5660300002)(8936002)(52536014)(15650500001)(186003)(53546011)(71200400001)(6506007)(7696005)(9686003)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?8OTkzhPaG/T49hXpvTFLevLs6+qiKkn+nAygRJB9NG2ng0x4m93lJccB7dut?=
 =?us-ascii?Q?FDeGgiKrwXaR7AOX9cgveGi8hZTJySJSEFSMeoekEL5SBiZrLiG3nT7Oqz3f?=
 =?us-ascii?Q?vw9tGXg5dSBxDAVeBLkEO/K/JLuKNUmxJatp78+BNX27wHLzlI1UWzUe98Pi?=
 =?us-ascii?Q?2fVNg6DIL3hQ/dCVFOgA7xVWir7x3ebL+Lhp2Rx8kCKE71yIfZLLCGoL3d2L?=
 =?us-ascii?Q?3/r9KjP4zE0nc2tqJoUrkbbLYszJdxZK0OL+gyT/B6ji/9Unfr3aGOOhw7XL?=
 =?us-ascii?Q?qfcCB5ihMo4H32aKKIKs64AOD6iZauZmWQH5azuL8fVu2LqRbDUUmz1553p9?=
 =?us-ascii?Q?z82Vvavs4AtlAT7IkkYyoy5rGNvYbfKRe44bwNiaO5KMViXBklklBieZqpqc?=
 =?us-ascii?Q?1xsqFGd+1M5XYC4Bqa+eCp18kQ5Z4gCoE8pcvAQND1zc8uiVLOWACM9Hv09Y?=
 =?us-ascii?Q?NIoSubU330GeIffvJs/fONFIMQvO9736K6anBqk1yWqCyorG9QPOV92IaBKZ?=
 =?us-ascii?Q?y+uPhTSO//nP5chzg6qCSKxx8+eFc2FAgc/dmgITNojzVYMmP3Wo7sTbZmWb?=
 =?us-ascii?Q?EUR0bZpPZdcRpeVGWfQlesPmjhF6uYpM+k9ML4EEyUfhez943rjhXHxPcE33?=
 =?us-ascii?Q?HT/KqlsYmR6ZzEoYOmLaUGSIpY/uyP7RkCyOs60v616zedYCJu/onnVjPjCg?=
 =?us-ascii?Q?rToIxcn/dP/MlOSn8+HBYp9V4ovxRYaYZt1Q5c9yzQ36sF6UpPe8ANYI8sMB?=
 =?us-ascii?Q?thvkoXVZ1UymJDdgccZIsNeov++R4AdVlCAUyL9pBDc9IlFWjS5jHKKCe847?=
 =?us-ascii?Q?z7qoc5aNm4jzyUCnLLiEINFqU2wJu89an6/PG2Pqean/7Pp8Sd7T2qegVMNl?=
 =?us-ascii?Q?j8ZM7DgtOZsjGjF0kplipv7oFYXt10qmnkvnldSgTtLcOW8sU+pHvjs00J++?=
 =?us-ascii?Q?nYe4VAQwwmAh6HrKM4bFQkDMrIEbmYh74ZpbPq4NVRE78t7iSegypMQTAxWZ?=
 =?us-ascii?Q?dwSbV/twyeSHtY3trgICznRrF+0CxRSp4fHbiZtwFOLO2/s7du+lCVynYxw9?=
 =?us-ascii?Q?m8Y+GQVt5gQ2qpoJLJE5CBM6RRcGWRklJEJMapeQ8N2md42q+QmcmE24MxLz?=
 =?us-ascii?Q?1PugvaO7Pyw0oXN2+NFBcepnhBvisKziihZOlyG9LUbT8x6xW1LBaoQn4fn3?=
 =?us-ascii?Q?S+vUV1/9ELjRpGguv8z3Pwv6zJ1BOe/aF/cRCVw/rek4H2Ccsmhz9aEdog7p?=
 =?us-ascii?Q?tFn67HX1ATORXHWtbaddBoGcBq0u00NBT9eQ3UPUqWEU4HirB3EjwCQ/KGZv?=
 =?us-ascii?Q?AWJJtruhTgktTrT57b4QJ/bWK/v7n96aATsmUGr8bXhGqed6zFd3+vBuXssm?=
 =?us-ascii?Q?eQmjLjRPkkxUdM4VYmBq/BLPWdTL4vdxW/A8Mk26eFwHX/V/SdBjnyv/92A1?=
 =?us-ascii?Q?uDsbC3a1unNyrXjM/RKZO6RZOWitikryo2wDMOfl2P5G5g/d/7l/oCIpUSZ6?=
 =?us-ascii?Q?dbZbXjWvEan538S/2lEe0unmdPLpJ5w4tXK/fcJnxOCu3/wfdGh3eBaRXr3t?=
 =?us-ascii?Q?QXxLlRSQ9bixk3uGyV5u302GtcfwX1mtiZ2O6XtzJPt/DZiJdF+2y015oOgQ?=
 =?us-ascii?Q?Nlef5HYgqBBhx5YIP6J00aqJBbF6w3esJZPxFsfD9AbMlAQd9Bt3rH7Uc6l2?=
 =?us-ascii?Q?WFbT/vXbxiKOYEUgr0vqukNEG/izkqMeyX0tG/OpRdxuH4OpCh7VXeAbO8Nv?=
 =?us-ascii?Q?UXrj7CI8JHrtkDOy1A+4VsbyS4pNOI5O7gK85lxRHE4ZKS33zaFrrfevdK5N?=
x-ms-exchange-antispam-messagedata-1: 
 L8gzmIGO2bnzdbRFKbaiidrSoBZ0qhNcpIStEVX6L0bo7pNnoSfOJ9Ld
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XdvxprsqtgtY2UWeK6+oMopDBAIbJLBefkRtnQtxRhHI0Fss/k+rPFdxtlPEPRz1+HTQ7cLiikLCcGoqRlsW1ypdMWBcZBB40wWo3sZvRX8DJ2PKAudPvzDJKmlyffUsFjzG8kZIRyBH+8qZnOV/XB24hbaxp9rLkQxH/grOxh9XyLBx9XZdJRqoWKxOMzJraIVHyH7uwNvAO21dyWTzv60geznTlvGDRCbrDNMILidAFAOZDe3XYBzTTUIpHjwJ+N4QmbiBeiNZmbYKrmo1qClX1mzUcorUDyTFzFuXm9WC5ouUW5qOj1pT7wzg4b36VdAH6fEacTNjeExao+9qIQ==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3C4t/xHRSDFzxa+kW4nMiALcSR32nlG5zoWgocovJb0=;
 b=XIUFhHW8KBnX+OcNamRGW0EheaowNP5SeUdOQ2/u6AGUh6AtHyEFdcUycTvNTpzudAJcQE4SHWiGrJNxzFin4AWc+DohUYOwPtkRukENvGECzLbhvlfOp0IRZJXQw03pwertZnA60aLVDdNxYUJ1MlC0wPXAoQqzKgInDYXTNEVfJYIj4I4jRZkiSQr2wEYTh3QPtCMlLnSYFzYNQYywrwXMisTE5bUwJwMLZPP1Q5J6ekXadx1VLRFiYm0LbK0BpBkEZrO4l+Gqhsh6lCQHqNABWEX1C1galLurhJrTDXDkLsUjpM1K/sIV2YSOufU1KExZeJDvO11NYscJLt2Mbw==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cable.comcast.com; dmarc=pass action=none
 header.from=cable.comcast.com; dkim=pass header.d=cable.comcast.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: BY5PR11MB4451.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 
 163783fb-9529-4958-e737-08da22e76a51
x-ms-exchange-crosstenant-originalarrivaltime: 20 Apr 2022 16:04:14.2263 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 1Wrm3DEjk9gpsTsRxuuAh5+/eaFCSkOC0rFgZVXSjw/9GnNWsoY+EICcqPihOVed1Gr2w6ndVUrG1WD5a7Fv4yCT95IQ9OZ422qJEVNcUcM=
x-ms-exchange-transport-crosstenantheadersstamped: BN6PR11MB3873
x-originatororg: cable.comcast.com
Content-Type: multipart/alternative;
	boundary="_000_BY5PR11MB445132CD1047AC5521ED7396BBF59BY5PR11MB4451namp_"
MIME-Version: 1.0
X-CFilter-Loop: Forward AAETWG
X-Proofpoint-ORIG-GUID: WJSC9vSkTsJpEj54sbNBysMm8UV7GXsk
X-Proofpoint-GUID: WJSC9vSkTsJpEj54sbNBysMm8UV7GXsk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-20_04,2022-04-20_01,2022-02-23_01
X-Proofpoint-Spam-Reason: safe
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56825

--_000_BY5PR11MB445132CD1047AC5521ED7396BBF59BY5PR11MB4451namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK I would be fine to go with this assertion and perhaps monitor it closely=
 to be classified as intermittent or something one off.

From: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wednesday, April 20, 2022 at 7:19 AM
To: Raj, Khem <Khem_Raj@cable.comcast.com>, qa-build-notification@lists.yoc=
toproject.org <qa-build-notification@lists.yoctoproject.org>, yocto@lists.y=
octoproject.org <yocto@lists.yoctoproject.org>
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, Mittal, Anuj <anuj.mittal@intel=
.com>
Subject: Re: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notification f=
or completed autobuilder build (yocto-3.3.6.rc1)
On Wed, 2022-04-20 at 14:14 +0000, Raj, Khem wrote:
> Is the sato-sdk on qemuppc also intermittent issue

It doesn't usually happen and works fine in other builds so it is intermitt=
ent.
Whether it is one of our "known" intermittent issues, I don't know. I could=
n't
get any real information from the system about why it failed. We have bette=
r
logging in master.

Cheers,

Richard



--_000_BY5PR11MB445132CD1047AC5521ED7396BBF59BY5PR11MB4451namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">OK I would be fine to go with this assertion and per=
haps monitor it closely to be classified as intermittent or something one o=
ff.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:.5in">
<b><span style=3D"font-size:12.0pt;color:black">From: </span></b><span styl=
e=3D"font-size:12.0pt;color:black">Richard Purdie &lt;richard.purdie@linuxf=
oundation.org&gt;<br>
<b>Date: </b>Wednesday, April 20, 2022 at 7:19 AM<br>
<b>To: </b>Raj, Khem &lt;Khem_Raj@cable.comcast.com&gt;, qa-build-notificat=
ion@lists.yoctoproject.org &lt;qa-build-notification@lists.yoctoproject.org=
&gt;, yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Cc: </b>Yocto TSC &lt;tsc@lists.yoctoproject.org&gt;, Mittal, Anuj &lt;a=
nuj.mittal@intel.com&gt;<br>
<b>Subject: </b>Re: [EXTERNAL] Re: [tsc] [qa-build-notification] QA notific=
ation for completed autobuilder build (yocto-3.3.6.rc1)<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:0in;margin-right:0in;mar=
gin-bottom:12.0pt;margin-left:.5in">
On Wed, 2022-04-20 at 14:14 &#43;0000, Raj, Khem wrote:<br>
&gt; Is the sato-sdk on qemuppc also intermittent issue&nbsp;<br>
<br>
It doesn't usually happen and works fine in other builds so it is intermitt=
ent.<br>
Whether it is one of our &quot;known&quot; intermittent issues, I don't kno=
w. I couldn't<br>
get any real information from the system about why it failed. We have bette=
r<br>
logging in master.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_BY5PR11MB445132CD1047AC5521ED7396BBF59BY5PR11MB4451namp_--

