Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.107])
 by mx.groups.io with SMTP id smtpd.web10.651.1594231395566739587
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 11:03:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@netorg397950.onmicrosoft.com header.s=selector2-netorg397950-onmicrosoft-com header.b=PRiu/j6k;
 spf=pass (domain: orangephotonics.com, ip: 40.107.92.107, mailfrom: hboddington@orangephotonics.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJsjL5dukqstt/SqaZLWkQRFC6BePYa2CRqcX0lFk0mbgYqFEIlo87Yt4YCQhlha5DoQ11H9iGtGQ7LAJ+0UzKeSFkqlOt+76nGuaI3Q5CXXNOeNWTqgTs+urWThbexncNgzQIj7O+jq+HCpJRYe3wLEBD0YAm9lEza31HQay0HS/yJqtqFHn4OIpmNWr6aLn3s9iMdWoWcp0yYbq9V6utajdHtpGh2Jb9+tw8j7NufEPdTuu7tadmvr4wbkBeSN6DpmKfU2jpgDjt90SyCPUFyELsO+ZwhYcqcW1TPAVTxA8lttVRsjCzWQqDjziz9J0hIheOWzh0Ys+aBIbZlvVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EsHWuSZXlXaYqyynjlLxTRAk+scbG5DeY0IrbzQ/NFQ=;
 b=TnMeCCTvi/0bAXI+iXnolBQqpv2UPIyCQD98Hu5Z0g7kLUmXDbRiGoMR57LaDPJ7RM8f6e23ElXZrX9XTUZ2oU/A+O7MtgMHRf1rXWu2R0nhATTDjKp39Q7SjTRBRWyWQGhwm3OvNNWk2VYjUpMmE8tvHdw/rkg4p+72SznSFQFbOEdaTACUnohSeaeXbDoRstClyJVfRsv+LA1KzhazSMr0anyKdws0C34UlAQUFayklUtQuMpouCrKat0WbzgnF04wCUIT65VQ6OjU3YFenbJhYPZVMoMZkADJxTZcyp5Zs12Kqnk+Ai1q8b1PXNF7aLhU/H/g1qtP1T34gUhb8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=orangephotonics.com; dmarc=pass action=none
 header.from=orangephotonics.com; dkim=pass header.d=orangephotonics.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG397950.onmicrosoft.com; s=selector2-NETORG397950-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EsHWuSZXlXaYqyynjlLxTRAk+scbG5DeY0IrbzQ/NFQ=;
 b=PRiu/j6k9jcaZB3EaZ8xJ9od9It0GE91Yx0uRkiU616+6qSivbH0Gf3ixbsddnGZrH+y5soQDc8kbyzF4/8SDC7CA2eC1UowwFqo+KL7uUXYe//4H9g9P6HgVFhsAWRVdrswZrIzMkTUlaxM9C8Gl12j8m01ot7is3JNPyJobNo=
Received: from BL0PR11MB3268.namprd11.prod.outlook.com (2603:10b6:208:67::30)
 by MN2PR11MB4757.namprd11.prod.outlook.com (2603:10b6:208:26b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.23; Wed, 8 Jul
 2020 18:03:13 +0000
Received: from BL0PR11MB3268.namprd11.prod.outlook.com
 ([fe80::1d1:c56c:b335:3fb7]) by BL0PR11MB3268.namprd11.prod.outlook.com
 ([fe80::1d1:c56c:b335:3fb7%3]) with mapi id 15.20.3153.031; Wed, 8 Jul 2020
 18:03:12 +0000
From: "Hugh Boddington" <hboddington@orangephotonics.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: DNF package reinstallation
Thread-Topic: DNF package reinstallation
Thread-Index: AdZVUPD1hfPuEu0hSJatwhpTsc2sYg==
Date: Wed, 8 Jul 2020 18:03:12 +0000
Message-ID: 
 <BL0PR11MB32685FBEE769F431590E31E0AE670@BL0PR11MB3268.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=orangephotonics.com;
x-originating-ip: [2601:186:301:7ebf:1020:61ec:c900:fe3d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 558e3fdb-81fa-4b26-322b-08d823692e5d
x-ms-traffictypediagnostic: MN2PR11MB4757:
x-microsoft-antispam-prvs: 
 <MN2PR11MB4757B5015FAF34259E1CB4FAAE670@MN2PR11MB4757.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04583CED1A
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yWTFZodFDWCVkXh1F4k76+BHvEUo+tGiLqOS2/sC36Huk7FaJXlTA5AIwAEh4ycYP0n9tvcH6H07Z84LDltIkWzIHHuF6M4TUIYaSaPcYDrljdfM52rOuBrXHdSEVxG+T5N3Catrr2Fk7MNOfZX3nbsczuIHYEi6OeEZSPQVqkjb+USG+K6ihC4ppZyWw0hKWzISvHTMgEkmfTFn+BGFERcHmZO8MyA6Rvkon4bEkgz/KqsEn/0sjemB0k3ck0rQ07QQ6uRS1e7SJagYMdUxu2mJ9BL2lJxn/ECabryl7btZWIyEpcsy0Da0Rmbg6r+sXAplkjyGdaoDGAm7zTCfFQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR11MB3268.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(346002)(136003)(366004)(39830400003)(396003)(9686003)(6916009)(55016002)(7116003)(33656002)(316002)(64756008)(66446008)(66556008)(5660300002)(71200400001)(3480700007)(66476007)(86362001)(66946007)(76116006)(8676002)(2906002)(52536014)(186003)(508600001)(6506007)(7696005)(8936002)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 pPdEThnLjICvEoRiuf+Q21NoRLPPV+o10vcn45A3mFLqGxe0O8RxcdbOK/F06MDXV6bMG4aDal8ngtvHgKRmEMaxHTEjistHj8NioRJbPIeTkGJfRL3AQgw2cCcgZL/ejIjnH/R4e116bPWLRtrQanahIdrDLzWt7H3Gc0Q8EMERMY/TrP5z3EXGgePHpDFRxj4gHJc5udy/MnnfDE33oaseLGRP42ISKRVdsjr8XfYqWvOXyHwY53QqFwcqf+Gfc8XOic8oUF03HqGBG3PWkXQOrrPUAHCQUrFCuvTbBQrTeh4cGp4VqZUMw25Obzlssv9s7WYErq6ajIRd2oixSPCdAi/GN5uDG3A+6mCugydVE2RYDN1uMrzomg55Vj30MOaT2hORTCPdRdO78fsrmVs1fAGyaAbVrnyKc6LLqghUSUA0/NFVQqEi3Bxt4Y6WmaEluHd3F+KRI0zEpnHaEVJ2xElAqQUCHQxGqbwpuZeDg1eIgj9YIowfskOXvbIj3C981q07e4ve6NHCyiwLYnt3Xg7/Js7z6pMdSDT6t1A=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: orangephotonics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3268.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 558e3fdb-81fa-4b26-322b-08d823692e5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2020 18:03:12.5135
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8d7d1a25-5bcc-4de8-bece-17ed58088893
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1x+g5iZV/j25zMv7JZjdto7idBmIyHyUTpe/9QY93+Ob86HmnH81kgS75T+Ks/VW4fm3YNPev+w/t548RLpxYrA41MzN+fc8Z8ABx9z3EAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4757
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR11MB32685FBEE769F431590E31E0AE670BL0PR11MB3268namp_"

--_000_BL0PR11MB32685FBEE769F431590E31E0AE670BL0PR11MB3268namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've got a fresh image, hot off the press with a clean install from dunfell=
 (febbe2944c...).  I deploy it to my target machine as a fresh install, ove=
rwriting the whole storage array.  I'm using DNF as my package manager and =
I copy the packages from the build output to my web server.  On the target =
machine, I run 'dnf upgrade' and it hits the package repo and tells me that=
 there's a number of packages that need to be 'reinstalled'.  No upgrades, =
conflicts etc - just reinstalled.  The packages don't appear to have much i=
n common - some are packages from my layers, some are unmodified poky packa=
ges.  I cannot figure out why dnf thinks they need to be reinstalled when i=
t's a fresh install and there's only one version of everything.  I also can=
't figure out the magic incantation to get dnf to tell me how it arrived at=
 this conclusion.

Can anyone shed any light on this problem?  It's driving me mad.  If I allo=
w it to reinstall the packages and re-run 'dnf upgrade' I just get the same=
 reinstallation list.

--_000_BL0PR11MB32685FBEE769F431590E31E0AE670BL0PR11MB3268namp_
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
	margin-bottom:.0001pt;
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;ve got a fresh image, hot off the press with=
 a clean install from dunfell (febbe2944c&#8230;).&nbsp; I deploy it to my =
target machine as a fresh install, overwriting the whole storage array.&nbs=
p; I&#8217;m using DNF as my package manager and I copy the packages
 from the build output to my web server.&nbsp; On the target machine, I run=
 &#8216;dnf upgrade&#8217; and it hits the package repo and tells me that t=
here&#8217;s a number of packages that need to be &#8216;reinstalled&#8217;=
.&nbsp; No upgrades, conflicts etc &#8211; just reinstalled.&nbsp; The pack=
ages don&#8217;t
 appear to have much in common &#8211; some are packages from my layers, so=
me are unmodified poky packages.&nbsp; I cannot figure out why dnf thinks t=
hey need to be reinstalled when it&#8217;s a fresh install and there&#8217;=
s only one version of everything.&nbsp; I also can&#8217;t figure
 out the magic incantation to get dnf to tell me how it arrived at this con=
clusion.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone shed any light on this problem?&nbsp; It&=
#8217;s driving me mad.&nbsp; If I allow it to reinstall the packages and r=
e-run &#8216;dnf upgrade&#8217; I just get the same reinstallation list.<o:=
p></o:p></p>
</div>
</body>
</html>

--_000_BL0PR11MB32685FBEE769F431590E31E0AE670BL0PR11MB3268namp_--
