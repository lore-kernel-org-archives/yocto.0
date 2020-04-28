Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2487.1588055471516812617
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2020 23:31:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ncr.com header.s=pod1119 header.b=hBF9Mibw;
 spf=permerror, err=parse error for token &{10 18 _spf.safewebservices.com}: limit exceeded (domain: ncr.com, ip: 140.211.169.56, mailfrom: prvs=538702c22c=raxeshkumar.oriya@ncr.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBBE9E01A91; Mon, 27 Apr 2020 23:31:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.148.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [165.225.104.76 listed in dnsbl.sorbs.net]
X-Greylist: delayed 3416 seconds by postgrey-1.32 at yocto-www; Mon, 27 Apr 2020 23:31:08 PDT
Received: from mx0a-00209e01.pphosted.com (mx0a-00209e01.pphosted.com [148.163.148.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB65E01A8D
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2020 23:31:08 -0700 (PDT)
Received: from pps.filterd (m0131214.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 03S5TEqe004655;
	Tue, 28 Apr 2020 01:34:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com; h=from : to : cc : subject
 : date : message-id : content-type : mime-version; s=pod1119;
 bh=xrSl77qsx3tLTXyrZ3bMQ48R4GKx7QtulmwuBlLrRJ4=;
 b=hBF9MibwGPh7Kw7uqfJ8g+v07+Ol5HR1pnHTVwCVYqdrp2QEFhCbzX8XBRWlghmD+xru
 rXD+wzarQORQAiNIzKVotdqGpT9/3YDuglkbDQ82l8O5RuhqHMOvj4KPgNYjBLHhaEQB
 CMm7lXpn7Uiwu4QQB10/kS64/BeqOvQ8cZwsrPPc6qkdd4xfjM/l/3rzzrdPusmwsjDC
 gihS2DrxMwVosCTJp7GsnOIs0ASi+NXmAM79MFuj+kBGJRbCftaXxWm2ec+brtVbtDAE
 A31cxUDwmkfJcE5M+XKzUdBnRqmA0qLBvSCwz4lNY2qprd53qZh18PwAuZrfbhIcGlrX Gw== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by mx0b-00209e01.pphosted.com with ESMTP id 30p6b41rfh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Apr 2020 01:34:10 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KKcDU2W3ZGlRS53TLDpHc4iKb14m8yCpCgRtv4YDNCIkkpkOYgSnu7BSUi4Bbg8tF4HotQboMcSZUnt9Rqn8vSju4G18ogXNNDCaaKYcexAqYkjWilr4N0Kwym5hryxf3IJ1sAFJR2V4jmPermDh9ukntJC/034rjd79LfpIblUFeOnR2hwcIhp6+qaUpf/tT7Fxwpj1SIJkTsw1TxBpvgudEN8L8nZZEprGr8j6PthAGgM/wwhLX2oSf/vSkaQJiGQ0U+NfuEqBNOxEjPNIRFaJ29DymVzPLHoXFuaggoaasarWUCk3kXxAHO0KVIqkD20ALfLmMsZnSMZ2XJvT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xrSl77qsx3tLTXyrZ3bMQ48R4GKx7QtulmwuBlLrRJ4=;
 b=SugEQPRSaiXsDamtST184C1m2U54/Bhbh/k46KWp1YZQ+y+NNh0ZR0tlZoUO6nF3Ayxm+Jsj2BRAsqw2Nt12OBj4xmpaoMZur021s20iZr1xZImgPpG2VazSRWN32dy6NrCBJlQ/5ds2X4X807bae3jbgLC6IY8J+0OReB14MvINc0ynwyivFdpbjGj+0pkQi4dXpuZw0/atQMR0hde+fNnuGUveWaBRyYY1ANy/m2TxTnM/dR5KsKU7QtFSLWicxMI0vCRPqFzlxN05DmZ/Y39CqFp/+1l20yoS9MyLxAAEWaioKwNwnClEP846kv2ZmDPu0OPTN4y5T2PVs1AK8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ncr.com; dmarc=pass action=none header.from=ncr.com; dkim=pass
 header.d=ncr.com; arc=none
Received: from CY4PR15MB1192.namprd15.prod.outlook.com (2603:10b6:903:106::17)
 by CY4PR15MB1255.namprd15.prod.outlook.com (2603:10b6:903:107::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Tue, 28 Apr
 2020 05:34:07 +0000
Received: from CY4PR15MB1192.namprd15.prod.outlook.com
 ([fe80::6959:f501:5683:bedc]) by CY4PR15MB1192.namprd15.prod.outlook.com
 ([fe80::6959:f501:5683:bedc%10]) with mapi id 15.20.2937.023; Tue, 28 Apr
 2020 05:34:07 +0000
From: "raxeshkumar.oriya@ncr.com" <raxeshkumar.oriya@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
        "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
CC: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>,
        "C M, Kiran Reddy"
	<kiran.reddy@ncr.com>
Subject: Enabling logging for python script in poky layer
Thread-Topic: Enabling logging for python script in poky layer
Thread-Index: AdYdHqHm+NT/naIcT6eVdb9YEWLMPw==
Date: Tue, 28 Apr 2020 05:34:07 +0000
Message-ID: 
 <CY4PR15MB11929A29B35F6AA988136C76FDAC0@CY4PR15MB1192.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Enabled=True;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SiteId=ae4df1f7-611e-444f-897e-f964e1205171;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Owner=ro185046@ncr.com;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_SetDate=2020-04-28T05:34:06.0747360Z;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Name=Confidential;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_ActionId=d7e52d4a-9736-4bd2-80bb-9301a0f80c6c;
 MSIP_Label_dc233488-06c6-4c2b-96ac-e256c4376f84_Extended_MSFT_Method=Manual
dlp-product: dlpe-windows
dlp-version: 11.3.0.17
dlp-reaction: no-action
x-originating-ip: [165.225.104.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 22e15e0e-d573-4065-1707-08d7eb35c5b9
x-ms-traffictypediagnostic: CY4PR15MB1255:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <CY4PR15MB1255E81ACBA37C216B3786F7FDAC0@CY4PR15MB1255.namprd15.prod.outlook.com>
x-from-ncr-tenant: Processed
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY4PR15MB1192.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(396003)(376002)(39860400002)(366004)(346002)(316002)(81156014)(55236004)(8936002)(55016002)(54906003)(9686003)(33656002)(6506007)(52536014)(8676002)(478600001)(66446008)(66476007)(66946007)(66556008)(4744005)(76116006)(26005)(2906002)(86362001)(7696005)(9326002)(71200400001)(4326008)(186003)(110136005)(5660300002)(64756008);DIR:OUT;SFP:1101;
received-spf: None (protection.outlook.com: ncr.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 9X4c8J/frcHYsxFbRIQGoNTgYLCKME8FcYH8rPt+g7DzJGV3M45cCvfwOoluhc9jEA/kNQRvsxDAFHetHgxmM3sAcL/PoRaJ6AdnfvJbLhbcs155DfXnR4wiy4BBONrXgcHDWczZzvi+gViuIwVcziAwvEprLC+Wt9If098ajivawQfkAc/zmRtZvgtYGujySVjHVn2pLHwI6e/BQBACDHhYCYVKC7U9lDy9aQp3uvfdKULNRV11G07MNflwIZwe/hkP73Eve+0ORwA2K7nhOctvGU7jURWTi5T/9dTUFy7zUp+UZdhtgI6D0l9lWfEuknY/x+zpbYjUY5q6SU1S3aRFvYlLFWUU0WYhk2EbtzAHFE85/lgFdMw/n/YbAQQJgN3B7o0cPUJtllDRWrBm8vLmkVDHKw0+cXjrswGJcIZmBlwDdRarSHCVvJbsf9+R
x-ms-exchange-antispam-messagedata: 
 unrcMRI9KUYNri/8/eQk0QE38mJTvyAfvaGenY6fM4gunRyu1BbqtQzUlrdpB7bZnVUUiNinxQtDMfoQB4B0y8R8/nm+0a88mPl1fAtmuDeSDLRfqgkfAYz0EnbGGUe7amG3JDC4QhqRKA2XZPCfK2rKyGNNTvbDj3srpCTkxMoKf1YnjjVzLkX8+vg7ChXv0GwNOQ3Rp+ZGoZsqxSV9oV6/1FMI3wQOgs4U5JMA8cy53070rOdzKM4GFybE8IT/VSDPMe/fa5ncR90iavAoSP99TMjk5NyIyR2Z+Hw5TYvGqh7a9Y1rzLbJhYTTKIbB0yvM8n4JqGMLLHnqoYeHFCWKO6zLMHK8sxG7F7C2oJuDTiQxqk5zJujhMD/iUJz72Z2sEXA10cJlEqFfHi/2NTR/DFdD9aEC/XMKbNWo45eGJ8KiaMJ6wfs8ddxY6aKkalMPJmTwDkE96LZ8kCVI6l9/ycLOujGHE+clkl+ipIPzs8RRDL6QF/9t4R/pm/1mFjxMmQbH0g70HKMNwF4C6lqO7XKUO5WgpyqZl4RtD3aChxULsSsx5PYp/P7NCbJYi24FwA6/4w5rcyxZBXTx/Vje02q/Uw/3qgxsm0jE5cqy/OzdzJ9UBukR51O36aWTE0/Aiy+0vG13HGTFGGvz+B5fuI//HsFMhsLR2tGChVN6haGACLE0zHdw2TI6tLV5T1+o3i8w/7jwoNn9GfVtKP7bDugbhprle/OL+GT8sdQY/PbfNHp2QKPpafAFY9mViC2EXeACRQ9akABoxU+T+T7Ewt9uheAFD8ezZhTtC9U=
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e15e0e-d573-4065-1707-08d7eb35c5b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 05:34:07.7990
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w2CkpK3auw7PPNc0Dn16MpzWfaU5bOlheuW1VCVsXMnVXBsWSMdvwXsCCyRbY9xVE2cpLYktOxB+fyRJYv7kWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1255
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-28_02:2020-04-27,2020-04-28 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 impostorscore=0 adultscore=0 mlxlogscore=705 clxscore=1011
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004280045
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR15MB11929A29B35F6AA988136C76FDAC0CY4PR15MB1192namp_"

--_000_CY4PR15MB11929A29B35F6AA988136C76FDAC0CY4PR15MB1192namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to see all the logs which are thrown by a python script present in y=
octo poky layer for my debugging. How do I do that?

Python script location - "poky/scripts/lib/wic/plugins/source/bootimg-pcbio=
s.py"

What I tried and didn't work out?

  *   bitbake core-image-minimal -v -DDD
  *   Added logging.basicConfig(level=3Dlogging.DEBUG, filename=3D'bbhashse=
rv.log', filemode=3D'w') line to bootimg-pcbios.py

Any lead on this would be really appreciated.

Regards,
Raxesh Oriya
Senior Software Engineer
NCR Corporation


--_000_CY4PR15MB11929A29B35F6AA988136C76FDAC0CY4PR15MB1192namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
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
/* List Definitions */
@list l0
	{mso-list-id:2099787178;
	mso-list-type:hybrid;
	mso-list-template-ids:224274338 67698689 67698691 67698693 67698689 676986=
91 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I want to see all the logs which are thrown by a pyt=
hon script present in yocto poky layer for my debugging. How do I do that?<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Python script location &#8211; &#8220;poky/scripts/l=
ib/wic/plugins/source/<b>bootimg-pcbios.py</b>&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What I tried and didn&#8217;t work out?<o:p></o:p></=
p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1"><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#242729=
;background:white">bitbake core-image-minimal -v -DDD</span><o:p></o:p></li=
><li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1=
 lfo1">Added
<b>logging.basicConfig(level=3Dlogging.DEBUG, filename=3D'bbhashserv.log', =
filemode=3D'w')
</b>line to <b>bootimg-pcbios.py <o:p></o:p></b></li></ul>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoNormal">Any lead on this would be really appreciated.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Raxesh Oriya<o:p></o:p></p>
<p class=3D"MsoNormal">Senior Software Engineer<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_CY4PR15MB11929A29B35F6AA988136C76FDAC0CY4PR15MB1192namp_--
