Return-Path: <MohammadJamal.Mohiuddin@ncr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E37FE00994; Thu, 18 Oct 2018 10:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.152.55 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 4782 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Oct 2018 10:10:32 PDT
Received: from mx0b-00209e01.pphosted.com (mx0b-00209e01.pphosted.com
	[148.163.152.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14EA4E00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 10:10:32 -0700 (PDT)
Received: from pps.filterd (m0094031.ppops.net [127.0.0.1])
	by mx0b-00209e01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9IFhqJl026074
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 11:50:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ncr.com;
	h=from : to : subject :
	date : message-id : content-type : mime-version; s=mail;
	bh=/vBc+Qoui194N5TgljBU+Xsb+B7M1fRSXgfAkgo/eIQ=;
	b=gcT26FxYCAUXfrc4mFTBIi3iXy2KqNY/5U9tjUDrHQrzQxW0FIhsbuwxL3cRhN8JMaI0
	5nBT+E7UaQ1gjVgbgBAHVxNddTXT5X/x3Tjdd1NmzCRcJAK7sMAckqJvuLTpbj+GzNk8
	YGVOHOdDq2anzZjlBmJFlK21SAbILt+llaSS38e1ATtFQ63SFJwGDhNacRkUNKANb+fS
	oVF7gSlViQYSmMMH7CDNJsPi6hbtIdRQgS0WHOtF+y3SOatzkEptGalH1OCrD6rZEiQq
	fRhguUgpXuH1HKlR6wT5lr+QygumAzLh16YWKUC04epww8ACeHP3V2+xmywACWuB1Edk
	3g== 
Received: from nam03-co1-obe.outbound.protection.outlook.com
	(mail-co1nam03lp0023.outbound.protection.outlook.com [216.32.181.23])
	by mx0b-00209e01.pphosted.com with ESMTP id 2n6uabgwp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 11:50:49 -0400
Received: from DM5PR15MB1913.namprd15.prod.outlook.com (10.174.247.141) by
	DM5PR15MB1946.namprd15.prod.outlook.com (10.173.215.149) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1228.24; Thu, 18 Oct 2018 15:50:45 +0000
Received: from DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41]) by
	DM5PR15MB1913.namprd15.prod.outlook.com
	([fe80::7d1f:70f2:7b3a:ef41%4]) with mapi id 15.20.1250.022;
	Thu, 18 Oct 2018 15:50:45 +0000
From: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: conflicting requests error while building SDK
Thread-Index: AdRm+OhyKqu3azuHTeiWG/pYQN/iog==
Date: Thu, 18 Oct 2018 15:50:45 +0000
Message-ID: <DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80@DM5PR15MB1913.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [32.66.192.219]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR15MB1946;
	6:Tgb0A/hMWOxWf9ZVhLlAem8SAhmTo/Rquka/HED+Oydixk07p8vu2/07LQafUyXWSwzKiVjmWwH/Sir0XANtzXx6eRrMmnJFNWUw/SQ7otbSeuDoTBXPbeGzaWtTjOSXszrBnMCj/BDExtSp2fGSYjDJ/TGahg98fz8mnGVD4sYXujoN7yEhrKnDJKTq7Ov//WPp1hu/dWZfNQi91CsUGUrWTtG3axQoDm1BF1amW7O5x5LSSzO8TlskyIa15jxDjHbgl5eEnlLKk6uoOrGSw4ye8yfMiq2oQUxIJsorfPrTKV0v0h4qaZcrjP4ffqyNIAxjqJ2kjERATtL4hLiAgjCd0u0qMEQR739jDp58d5+qzeliS/RndEPbn5i4m6VSdAT/mMjqGnvmeieKBLJmd5is1viFCMB3rGRj2AsjDBwF/qDBlUTimgj7HbeHXXvxbFhN2cNTMV1mMBQjwhQMvQ==;
	5:SGU1v1JgeGv4dB2Mub30bvkrGSj/P+MvprtPDmHKcVhKS6l5x1n+HaXmwY8I57jBAwtVqLJ6ssnjPf9cCp6qjD8lmkQ/surySoKMwHfgc3x9uhXOx437OrEgYOxNek7QcE/anqmXQ18wv7qmCM0JY92uPb4IFaw+m+yOHtUOgsM=;
	7:0WQvgrAUnp/o1XrxAWu24PJhestJbEdXo7nZw4j/kGE3NRLD7iL/HAQZHqEUkh6/R2QVzmjcTE3Yeo2yi1P/05f1hO1EPoZ7AHtoVMPPzrSdYe8nP66OxbJHaOMwGfLje+yu6uIhSN9U6LvfbS2pfy0EHh3zAICOCuIyL1Fyrfbr0BMHUR63BOJRHYn+oP0hYUn3TVxr6tavow3E9qyPXHH45tEUWcwEvi19DYcPAUk35DqDxuKt+vFtZqRanS/W
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: aadc28d8-2a6b-447c-7fb1-08d635117784
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR15MB1946; 
x-ms-traffictypediagnostic: DM5PR15MB1946:
x-from-ncr-tenant: Processed
x-microsoft-antispam-prvs: <DM5PR15MB19464AA7C7C0AF56A4177D46F0F80@DM5PR15MB1946.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(28532068793085)(190501279198761)(227612066756510);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(3231355)(944501410)(52105095)(6055026)(149066)(150057)(6041310)(20161123558120)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:DM5PR15MB1946; BCL:0; PCL:0; RULEID:; SRVR:DM5PR15MB1946; 
x-forefront-prvs: 08296C9B35
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(136003)(396003)(376002)(39860400002)(366004)(53474002)(189003)(199004)(74316002)(8676002)(486006)(86362001)(476003)(71200400001)(71190400001)(54896002)(6306002)(55016002)(2906002)(81156014)(186003)(1730700003)(6506007)(81166006)(2501003)(21615005)(7736002)(5250100002)(14444005)(26005)(256004)(8936002)(66066001)(25786009)(68736007)(5630700001)(14454004)(6436002)(106356001)(6916009)(97736004)(102836004)(7696005)(236005)(9686003)(6116002)(9326002)(790700001)(3846002)(2351001)(5660300001)(966005)(2900100001)(606006)(99286004)(53936002)(33656002)(72206003)(105586002)(5640700003)(478600001)(316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR15MB1946;
	H:DM5PR15MB1913.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ncr.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: tnXA0DQRVhVJcZSiVUeFJXLh8DIBXOALPCeozrSDYZTOF4V41rS6qXsa7CTAPp170IgvDKj2526xxHq4dX8vGy9Qwx4nNy5TMWQ9/Xr8u8Q7WfbEQqS5KrDNBdz4LGlyH82knb7dqovxj45UrDdlNXstybU8WRDW6/4490t37Z1vqmr2CuMBWcd2naiHbW15x7BjZpRyUWqCgbqSCkJkxprGAQR8u0Bv/fit82BwtBbRsBzjw4SNHi3UkvDRjUdv//UdieFNoVYOV0XdZT6azW/lfEgenz7vqiKVlBj5pabrv8JwGkertvFXdUWAkp7m75jAcRsK38D6NaCxkMknqcAgHDVLSUjEVBBhlTqWqjM=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ncr.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aadc28d8-2a6b-447c-7fb1-08d635117784
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2018 15:50:45.4454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ae4df1f7-611e-444f-897e-f964e1205171
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1946
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-18_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810180134
Subject: conflicting requests error while building SDK
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2018 17:10:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80DM5PR15MB1913namp_"

--_000_DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80DM5PR15MB1913namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I got the following conflicting requests error while building SDK

I am using sumo branch , and generic core-intel-i7-64 machine configuration=
.

Running the following command: bitbake -c populate_sdk core-image-minimal

Fails at the last step with the following error.

ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Could not invoke dnf. Com=
mand '/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky=
-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /h=
ome/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/c=
ore-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-lin=
ux/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/jamal/repotest1/yocto_intel=
_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/sdk/im=
age/opt/poky/2.5/sysroots/corei7-64-poky-linux/etc/yum.repos.d --repofrompa=
th=3Doe-repo,/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_=
64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo --installroot=3D/home/j=
amal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-i=
mage-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux --=
setopt=3Dlogdir=3D/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_co=
rei7_64-poky-linux/core-image-minimal/1.0-r0/temp --nogpgcheck install lib3=
2-dpkg lib32-libstdc++6 lib32-packagegroup-core-standalone-sdk-target lib32=
-libx11-6 lib32-ncurses lib32-libgcc1 lib32-libgnutls30 lib32-libfreetype6 =
lib32-libc6 run-postinsts libgnutls30 dpkg kernel-devsrc packagegroup-core-=
standalone-sdk-target packagegroup-core-boot target-sdk-provides-dummy' ret=
urned 1:
Added oe-repo repo from /home/jamal/repotest1/yocto_intel_build/tmp/work/in=
tel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo
Last metadata expiration check: 0:00:02 ago on Thu 18 Oct 2018 01:12:30 PM =
UTC.
Error:
 Problem: conflicting requests
  - nothing provides /usr/bin/python needed by kernel-devsrc-1.0-r0.intel_c=
orei7_64

ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Function failed: do_popul=
ate_sdk
ERROR: Logfile of failure stored in: /home/jamal/repotest1/yocto_intel_buil=
d/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/temp/log.do=
_populate_sdk.11307
ERROR: Task (/home/jamal/repotest1/sources/poky/meta/recipes-core/images/co=
re-image-minimal.bb:do_populate_sdk) failed with exit code '1'

I found similar error in yocto mailing list, but unable to understand.. Can=
 you please help me to resolve this issue.. Thanks for your time


https://lists.yoctoproject.org/pipermail/yocto/2018-February/039941.html



I have /usr/bin/python in my system
Thanks and Regards,
Jamal,
NCR Corporation


--_000_DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80DM5PR15MB1913namp_
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
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
<p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I got the following conflicting requests error while=
 building SDK<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using sumo branch , and generic core-intel-i7-6=
4 machine configuration.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Running the following command: bitbake -c populate_s=
dk core-image-minimal<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Fails at the last step with the following error.<o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Could not i=
nvoke dnf. Command '/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_=
corei7_64-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bi=
n/dnf
 -y -c /home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-pok=
y-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64=
-poky-linux/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/jamal/repotest1/yo=
cto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-=
r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-poky-linux/etc/yum.repos.d
 --repofrompath=3Doe-repo,/home/jamal/repotest1/yocto_intel_build/tmp/work/=
intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-repo --installr=
oot=3D/home/jamal/repotest1/yocto_intel_build/tmp/work/intel_corei7_64-poky=
-linux/core-image-minimal/1.0-r0/sdk/image/opt/poky/2.5/sysroots/corei7-64-=
poky-linux
 --setopt=3Dlogdir=3D/home/jamal/repotest1/yocto_intel_build/tmp/work/intel=
_corei7_64-poky-linux/core-image-minimal/1.0-r0/temp --nogpgcheck install l=
ib32-dpkg lib32-libstdc&#43;&#43;6 lib32-packagegroup-core-standalone-sdk-t=
arget lib32-libx11-6 lib32-ncurses lib32-libgcc1
 lib32-libgnutls30 lib32-libfreetype6 lib32-libc6 run-postinsts libgnutls30=
 dpkg kernel-devsrc packagegroup-core-standalone-sdk-target packagegroup-co=
re-boot target-sdk-provides-dummy' returned 1:</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">Added oe-repo repo from /home/jamal/repotest1/yocto_intel_bui=
ld/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-r0/oe-sdk-rep=
o</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">Last metadata expiration check: 0:00:02 ago on Thu 18 Oct 201=
8 01:12:30 PM UTC.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">Error:
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">&nbsp;Problem: conflicting requests</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">&nbsp; - nothing provides /usr/bin/python needed by kernel-de=
vsrc-1.0-r0.intel_corei7_64</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">ERROR: core-image-minimal-1.0-r0 do_populate_sdk: Function fa=
iled: do_populate_sdk</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">ERROR: Logfile of failure stored in: /home/jamal/repotest1/yo=
cto_intel_build/tmp/work/intel_corei7_64-poky-linux/core-image-minimal/1.0-=
r0/temp/log.do_populate_sdk.11307</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:2.0pt;margin-right:0in;m=
argin-bottom:2.0pt;margin-left:0in;text-autospace:none">
<span style=3D"font-size:10.0pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:black">ERROR: Task (/home/jamal/repotest1/sources/poky/meta/recipes-=
core/images/core-image-minimal.bb:do_populate_sdk) failed with exit code '1=
'
</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.5pt">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal">I found similar error in yocto mailing list, but una=
ble to understand.. Can you please help me to resolve this issue.. Thanks f=
or your time<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-alig=
n:baseline">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
><a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-February/03=
9941.html"><span style=3D"color:windowtext;text-decoration:none">https://li=
sts.yoctoproject.org/pipermail/yocto/2018-February/039941.html</span></a><o=
:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt;background:white;vertical-alig=
n:baseline">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
><o:p>&nbsp;</o:p></span></p>
<p style=3D"mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;ma=
rgin-left:0in;background:white;vertical-align:baseline;font-variant-ligatur=
es: normal;font-variant-caps: normal;font-variant-numeric: inherit;font-var=
iant-east-asian: inherit;font-stretch: inherit;line-height:inherit;box-sizi=
ng: inherit;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;text-decora=
tion-style: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
>I have /usr/bin/python in my system<o:p></o:p></span></p>
<p class=3D"MsoNormal">Thanks and Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Jamal,<o:p></o:p></p>
<p class=3D"MsoNormal">NCR Corporation<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM5PR15MB1913BD8745ECEE34DF9A86E0F0F80DM5PR15MB1913namp_--
