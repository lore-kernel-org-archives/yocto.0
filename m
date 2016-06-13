Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C3CFE00E7D; Mon, 13 Jun 2016 04:25:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4619 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Jun 2016 04:25:38 PDT
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0086.outbound.protection.outlook.com [157.55.234.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D239E00CE7
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 04:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JLrLkKLs4lA+nCFMSarv8MLoIV2EAmNu404H0chEgdk=;
	b=Lw89a6JYLNf/qfg1skWt34JZpbiMbXJOc4gjVTjhx8xjSc8XzvvIX3cgiZIRpNm+r/jb0B1Gy7R3T99U1UVDvkSTB0Cfl6MTlr/ylHtycCkYScNGE+0B/AHaAezXnsZ+f10oXOtUL5AC4e4h6kaHoMfMfUr92Cz5MuPJ8zRt2hI=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) by DB3PR04MB0684.eurprd04.prod.outlook.com
	(2a01:111:e400:943c::14) with Microsoft SMTP Server (TLS) id 15.1.501.7;
	Mon, 13 Jun 2016 09:53:28 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::cc2b:ef35:1b5f:50ca]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::cc2b:ef35:1b5f:50ca%18]) with mapi id 15.01.0501.018;
	Mon, 13 Jun 2016 09:53:28 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: The build issue of ext2.gz and ext2.gz.u-boot rootfs
Thread-Index: AdHFVoAtaQfqysY3Sua3E5G2TxRW6A==
Date: Mon, 13 Jun 2016 09:53:28 +0000
Message-ID: <DB3PR04MB0684667127AE3D0BB53B3FD0EE530@DB3PR04MB0684.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.231.64]
x-ms-office365-filtering-correlation-id: 9cdbcbda-35cd-42fc-9dd7-08d3937091eb
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0684;
	5:bp4qMT7NaZcFtMgha3H7UYIZfETyK+zykiUzqq2CavEmgXDaM5xGSvzJ6pTCkCLiDFfcMh1/KOZPoQ0ltFgdrsgfxOkfrCBN8zANnHT2PnMnTvuUgXgZA0Lrnx0e0jkNmpM4FdKTNS3Rn2Sb1GNICQ==;
	24:ty9R6a0GF2CH0qyTHsIDlEb1EYALb0c9Arq9pswBbFEl/QHZ99zYYmwTDOiNTMZdfu8GhgnXQXNSnm21akDEorcwDVKYPGCCkIYLo8IFuKg=;
	7:7jhBC0MDGBBZSr7BAE6v7RlJgKyIapwYLU1D189gAD20aJzN+Bh2ST+OqVBQtBx7Lbw1BvU3J4v9FqxvCbj9X3u9um09Kh+SS7hyFVi08eAkdE12IERz3rsCW/frw1UyKbODLdBhbXvxsuxaZAMiawgw/4BxqL6v1pzcVTIMPDJouyIAMHurJ6oznmBD+CGOYa3klkDy/FrF56YG/PxJGw==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0684;
x-microsoft-antispam-prvs: <DB3PR04MB0684B6C158893A6CBEFCEAD2EE530@DB3PR04MB0684.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB3PR04MB0684; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0684; 
x-forefront-prvs: 0972DEC1D9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(53754006)(199003)(19300405004)(81156014)(5004730100002)(189998001)(5002640100001)(66066001)(107886002)(101416001)(110136002)(5003600100002)(9686002)(15975445007)(586003)(86362001)(11100500001)(790700001)(33656002)(3846002)(3660700001)(76576001)(50986999)(19625215002)(8936002)(54356999)(1730700003)(2906002)(74316001)(5008740100001)(97736004)(2501003)(6116002)(102836003)(3280700002)(16236675004)(8676002)(68736007)(5630700001)(5640700001)(2900100001)(2351001)(106356001)(5250100002)(105586002)(92566002)(87936001)(81166006)(229853001)(19580395003)(450100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0684;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2016 09:53:28.1567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0684
Subject: The build issue of ext2.gz and ext2.gz.u-boot rootfs
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
X-List-Received-Date: Mon, 13 Jun 2016 11:25:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB3PR04MB0684667127AE3D0BB53B3FD0EE530DB3PR04MB0684eurp_"

--_000_DB3PR04MB0684667127AE3D0BB53B3FD0EE530DB3PR04MB0684eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I try to use the master branch of poky to build ext2.gz and ext2.gz.u-boot =
rootfs at the same time, the following error will appear. The same issue ca=
n be reproduced for other machines as well.
[...snip...]
| Image Name:   core-image-minimal-b4860qds-2016
| Created:      Sun Jun 12 23:18:26 2016
| Image Type:   PowerPC Linux RAMDisk Image (gzip compressed)
| Data Size:    50613518 Bytes =3D 49427.26 kB =3D 48.27 MB
| Load Address: 00000000
| Entry Point:  00000000
| mkimage: Can't open /home/yocto/poky/b4860qds/tmp/deploy/images/b4860qds/=
core-image-minimal-b4860qds-20160613041724.rootfs.ext2.gz: No such file or =
directory

The following is the definition of do_image_ext2, the ext2.gz file is clean=
ed by the first "oe_mkimage  ... gzip clean" before the second oe_mkimage e=
xecution.
do_image_ext2() {
                oe_mkext234fs ext2 -i 4096
                cd /home/yocto/poky/b4860qds/tmp/deploy/images/b4860qds
                gzip -f -9 -c core-image-minimal-b4860qds-20160613042048.ro=
otfs.ext2 > core-image-minimal-b4860qds-20160613042048.rootfs.ext2.gz
                gzip -f -9 -c core-image-minimal-b4860qds-20160613042048.ro=
otfs.ext2 > core-image-minimal-b4860qds-20160613042048.rootfs.ext2.gz; oe_m=
kimage core-image-minimal-b4860qds-20160613042048.rootfs.ext2.gz gzip clean
                oe_mkimage core-image-minimal-b4860qds-20160613042048.rootf=
s.ext2.gz none
                rm core-image-minimal-b4860qds-20160613042048.rootfs.ext2
}

If change[1] is made for poky/meta/classes/image.bbclass, the isuse can be =
reproduced every time, if change[2] is made for poky/meta/classes/image.bbc=
lass, the isuse can't be reproduced. Without change, the sequence of ctypes=
 is random, accordingly the build issue apprears randomly.
Change[1]:
-    ctypes =3D set(d.getVar('COMPRESSIONTYPES', True).split())
+    ctypes =3D sorted(set(d.getVar('COMPRESSIONTYPES', True).split()))
Change[2]:
-    ctypes =3D set(d.getVar('COMPRESSIONTYPES', True).split())
+    ctypes =3D sorted(set(d.getVar('COMPRESSIONTYPES', True).split()), rev=
erse=3DTrue)

I meet either the following two issues when I only build ext2.gz.u-boot,  t=
he following is the error.
Taskhash mismatch issue:
ERROR: core-image-minimal-1.0-r0 do_image_ext2: Taskhash mismatch bb5f9a754=
f83ef6534d62ca5ea64d631 verses c56d6505b35344945430e1d6cae3867c for /home/y=
octo/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_ext2
ERROR: Taskhash mismatch bb5f9a754f83ef6534d62ca5ea64d631 verses c56d6505b3=
5344945430e1d6cae3867c for /home/yocto/poky/meta/recipes-core/images/core-i=
mage-minimal.bb.do_image_ext2
Ext2.gz remove issue:
| rm: cannot remove 'core-image-minimal-b4860qds-20160613044631.rootfs.ext2=
.gz': No such file or directory

Any suggestion of how to fix such issues?


Best Regards,

Zhenhua

--_000_DB3PR04MB0684667127AE3D0BB53B3FD0EE530DB3PR04MB0684eurp_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I try to use the master branch of poky to build ext2=
.gz and ext2.gz.u-boot rootfs at the same time, the following error will ap=
pear. The same issue can be reproduced for other machines as well.
<o:p></o:p></p>
<p class=3D"MsoNormal">[&#8230;snip&#8230;]<o:p></o:p></p>
<p class=3D"MsoNormal">| Image Name:&nbsp;&nbsp; core-image-minimal-b4860qd=
s-2016<o:p></o:p></p>
<p class=3D"MsoNormal">| Created:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sun Jun 12 =
23:18:26 2016<o:p></o:p></p>
<p class=3D"MsoNormal">| Image Type:&nbsp;&nbsp; PowerPC Linux RAMDisk Imag=
e (gzip compressed)<o:p></o:p></p>
<p class=3D"MsoNormal">| Data Size:&nbsp;&nbsp;&nbsp; 50613518 Bytes =3D 49=
427.26 kB =3D 48.27 MB<o:p></o:p></p>
<p class=3D"MsoNormal">| Load Address: 00000000<o:p></o:p></p>
<p class=3D"MsoNormal">| Entry Point:&nbsp; 00000000<o:p></o:p></p>
<p class=3D"MsoNormal">| mkimage: Can't open /home/yocto/poky/b4860qds/tmp/=
deploy/images/b4860qds/core-image-minimal-b4860qds-20160613041724.rootfs.ex=
t2.gz: No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The following is the definition of do_image_ext2, th=
e ext2.gz file is cleaned by the first &#8220;oe_mkimage&nbsp; &#8230; gzip=
 clean&#8220; before the second oe_mkimage execution.
<o:p></o:p></p>
<p class=3D"MsoNormal">do_image_ext2() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_mkext234fs ext2 -i 4096<o:p></o:p=
></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cd /home/yocto/poky/b4860qds/tmp/dep=
loy/images/b4860qds<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gzip -f -9 -c core-image-minimal-b48=
60qds-20160613042048.rootfs.ext2 &gt; core-image-minimal-b4860qds-201606130=
42048.rootfs.ext2.gz<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gzip -f -9 -c core-image-minimal-b48=
60qds-20160613042048.rootfs.ext2 &gt; core-image-minimal-b4860qds-201606130=
42048.rootfs.ext2.gz; oe_mkimage core-image-minimal-b4860qds-20160613042048=
.rootfs.ext2.gz gzip clean<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_mkimage core-image-minimal-b4860q=
ds-20160613042048.rootfs.ext2.gz none<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rm core-image-minimal-b4860qds-20160=
613042048.rootfs.ext2<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If change[1] is made for poky/meta/classes/image.bbc=
lass, the isuse can be reproduced every time, if change[2] is made for poky=
/meta/classes/image.bbclass, the isuse can&#8217;t be reproduced. Without c=
hange, the sequence of ctypes is random,
 accordingly the build issue apprears randomly. <o:p></o:p></p>
<p class=3D"MsoNormal">Change[1]: <o:p></o:p></p>
<p class=3D"MsoNormal">-&nbsp;&nbsp;&nbsp; ctypes =3D set(d.getVar('COMPRES=
SIONTYPES', True).split())<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp; ctypes =3D sorted(set(d.getV=
ar('COMPRESSIONTYPES', True).split()))<o:p></o:p></p>
<p class=3D"MsoNormal">Change[2]:<br>
-&nbsp;&nbsp;&nbsp; ctypes =3D set(d.getVar('COMPRESSIONTYPES', True).split=
())<o:p></o:p></p>
<p class=3D"MsoNormal">&#43;&nbsp;&nbsp;&nbsp; ctypes =3D sorted(set(d.getV=
ar('COMPRESSIONTYPES', True).split()), reverse=3DTrue)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I meet either the following two issues when I only b=
uild ext2.gz.u-boot,&nbsp; the following is the error.
<o:p></o:p></p>
<p class=3D"MsoNormal">Taskhash mismatch issue: <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">ERROR: core-image-minimal=
-1.0-r0 do_image_ext2: Taskhash mismatch bb5f9a754f83ef6534d62ca5ea64d631 v=
erses c56d6505b35344945430e1d6cae3867c for /home/yocto/poky/meta/recipes-co=
re/images/core-image-minimal.bb.do_image_ext2<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">ERROR: Taskhash mismatch =
bb5f9a754f83ef6534d62ca5ea64d631 verses c56d6505b35344945430e1d6cae3867c fo=
r /home/yocto/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_=
ext2<o:p></o:p></p>
<p class=3D"MsoNormal">Ext2.gz remove issue: <o:p></o:p></p>
<p class=3D"MsoNormal">| rm: cannot remove 'core-image-minimal-b4860qds-201=
60613044631.rootfs.ext2.gz': No such file or directory<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestion of how to fix such issues? <o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua <o:p></o:p></p>
</div>
</body>
</html>

--_000_DB3PR04MB0684667127AE3D0BB53B3FD0EE530DB3PR04MB0684eurp_--
