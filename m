Return-Path: <Karthik.B@irco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8F17E00D1B; Mon, 25 Mar 2019 03:46:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,KHOP_DYNAMIC,RCVD_IN_DNSWL_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [148.163.153.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.4 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 2402 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Mar 2019 03:46:49 PDT
Received: from mx0b-00240e01.pphosted.com (mx0b-00240e01.pphosted.com
	[148.163.153.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1734AE00A84
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 03:46:49 -0700 (PDT)
Received: from pps.filterd (m0114531.ppops.net [127.0.0.1])
	by mx0b-00240e01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x2P9rkMt017123
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 06:06:47 -0400
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp2054.outbound.protection.outlook.com [104.47.32.54])
	by mx0b-00240e01.pphosted.com with ESMTP id 2refkjj7ny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2019 06:06:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=irco.onmicrosoft.com; 
	s=selector1-irco-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=yAKRgct3L4gyCUJOVKJj46FrEFPdD+6BaAhc18ejIqM=;
	b=D3k1fl46+steMf/Kr8llqzYavwy+tPBInTHqv8n/hfkN6/d4gFRGeLji+1vWX+5NGT3N0a4V4pb9RRwkl7Kw+gFuyUjdE+4z3c1sI3IPlo0IWbRJej2EdmrjvaAR+AZy3jjxzS8jtEO2G+Znq01PFNnMWaYyd8QCZii/xtXi1Cg=
Received: from BN6P154MB0035.NAMP154.PROD.OUTLOOK.COM (52.135.23.22) by
	BN6P154MB0049.NAMP154.PROD.OUTLOOK.COM (52.135.23.24) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1730.18; Mon, 25 Mar 2019 10:06:44 +0000
Received: from BN6P154MB0035.NAMP154.PROD.OUTLOOK.COM
	([fe80::d6c:6d8c:ec12:c6bb]) by BN6P154MB0035.NAMP154.PROD.OUTLOOK.COM
	([fe80::d6c:6d8c:ec12:c6bb%4]) with mapi id 15.20.1730.019;
	Mon, 25 Mar 2019 10:06:44 +0000
From: "B, Karthik" <Karthik.B@irco.com>
To: "Yocto mailing list (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: How to avoid a including a package in the rootfs 
Thread-Index: AdTi8nBpSKTinMenTvqxlpB/fqPmiw==
Date: Mon, 25 Mar 2019 10:06:43 +0000
Message-ID: <BN6P154MB0035D8E4A7C1BEEBDA846211885E0@BN6P154MB0035.NAMP154.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [185.221.70.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 95bc3d47-b4dc-439e-b4c2-08d6b109959b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BN6P154MB0049; 
x-ms-traffictypediagnostic: BN6P154MB0049:
x-microsoft-antispam-prvs: <BN6P154MB0049DBA35E87BFD23F63C4DD885E0@BN6P154MB0049.NAMP154.PROD.OUTLOOK.COM>
x-forefront-prvs: 0987ACA2E2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(366004)(346002)(376002)(136003)(396003)(189003)(199004)(6306002)(81166006)(54896002)(52536014)(14444005)(4743002)(256004)(68736007)(55016002)(5660300002)(476003)(8936002)(99286004)(9326002)(186003)(71190400001)(71200400001)(2906002)(53936002)(9686003)(486006)(26005)(33656002)(6916009)(6436002)(25786009)(72206003)(478600001)(106356001)(3846002)(66066001)(102836004)(7736002)(790700001)(6116002)(7696005)(316002)(6506007)(86362001)(8676002)(81156014)(74316002)(105586002)(97736004)(14454004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6P154MB0049;
	H:BN6P154MB0035.NAMP154.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: irco.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rYKOdkkTDlZH9/eOgVjBukMOiexgbuIfc24+fggTTXO+/LaWfWBxmBejqfkf+r3m9zZ1nB13YQWWd/hS1o7sHd/DW6GgTnzqsHPHKBFqETJ06jIGol3JbkLdQPRDnaLBwrI8uuILdvR6J0mqoLYzKREso8t0WvOGfLHr5zSeZh/AKnUNgcTmnXRNI57EVkCngTvEjk8IOKTYEk4Xx+Xh5d8hzQdSuqxZej2Vj98z58WFkxjWPKZoP4nesGT7JuY4x/YhgG7nOfznZEQzhZUPEZJ6VrUubgP2WK+mDWqzSPQDODw+n93XEYP0vjnyU7QzdNnbNhHvp9V+ZEfVWM+uCRzyTosfRhV/pA6eiKCQf8jZEqZH6fvmOeV8q2SWd2QzTtbEVp9EyMep3JGanOrscD1kvY3+qdC9nYaI6w94hCA=
MIME-Version: 1.0
X-OriginatorOrg: irco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95bc3d47-b4dc-439e-b4c2-08d6b109959b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2019 10:06:43.9693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: abf9983b-ca77-4f20-9633-ca9c5a847041
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6P154MB0049
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-03-25_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1903250075
Subject: How to avoid a including a package in the rootfs
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
X-List-Received-Date: Mon, 25 Mar 2019 10:46:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6P154MB0035D8E4A7C1BEEBDA846211885E0BN6P154MB0035NAMP_"

--_000_BN6P154MB0035D8E4A7C1BEEBDA846211885E0BN6P154MB0035NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I am trying to build an Upgrade package which basically has some shell scri=
pts as executables. But I don't want them included in the rootfs, instead I=
 will place them over the air when a upgrade is required. Below is the .bb =
file which I have written for achieving the same.

SECTION =3D "MINE"
LICENSE =3D "MINE"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MINE;md5=3D02598586d9274=
e819091ab3ade64d910"
UTILS_PATH=3D""

SRC_URI +=3D "file://upgrade.sh \
"

do_fetch(){
        #do nothing
        echo "do_fetch"
}

do_configure(){
        #do nothing
        echo "do_configure"
}

do_compile(){
        #do nothing
        echo "do_compile"
}

do_install() {
        install -d ${WORKDIR}/utils
        install -m 0755 ${WORKDIR}/upgrade_verify_file.sh ${WORKDIR}/utils
        tar -czf upgradeUtils.tgz -C ${WORKDIR} utils
        cp ${WORKDIR}/upgradeutils-0.1/upgradeUtils.tgz ${TOPDIR}
}

FILES_${PN} +=3D "${WORKDIR}/utils \
"

But while executing  "bitbake core-image-base", I am getting the following =
error.

ERROR: core-image-base-1.0-r0 do_rootfs: Could not invoke dnf. Command '/ho=
me/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gnueabi/core-image-base/1.0=
-r0/recipe-sysroot-native/usr/bin/dnf -y -c /home/karthik/dev/dev_yocto_dev=
/tmp/work/arm-linux-gnueabi/core-image-base/1.0-r0/rootfs/etc/dnf/dnf.conf =
--setopt=3Dreposdir=3D/home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gn=
ueabi/core-image-base/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-rep=
o,/home/karthik/dev/dev_yocto_dev/tmp/work/ccimx6ulsbc-dey-linux-gnueabi/co=
re-image-base/1.0-r0/oe-rootfs-repo --installroot=3D/home/karthik/dev/dev_y=
octo_dev/tmp/work/arm-linux-gnueabi/core-image-base/1.0-r0/rootfs --setopt=
=3Dlogdir=3D/home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gnueabi/core=
-image-base/1.0-r0/temp -x udev-cache --nogpgcheck install base-passwd dhcp=
-server dnf null-logger packagegroup-base-extended packagegroup-core-boot p=
ackagegroup-core-eclipse-debug packagegroup-core-ssh-dropbear packagegroup-=
bluetooth packagegroup-network packagegroup-wireless psplash python-dbus py=
thon-pygobject rht rpm ruby run-postinsts shadow sqlite3 upgradeutils local=
e-base-en-us locale-base-en-gb' returned 1:
Added oe-repo repo from /home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-=
gnueabi/core-image-base/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Mon 25 Mar 2019 09:07:49 AM =
UTC.
No package upgradeutils available.
Error: Unable to find a match

ERROR: core-image-base-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /home/karthik/dev/dev_yocto_dev/tmp/wo=
rk/arm-linux-gnueabi/core-image-base/1.0-r0/temp/log.do_rootfs.21424
ERROR: Task (/home/karthik/dev/dev_yocto_dev/sources/poky/meta/recipes-core=
/images/core-image-base.bb:do_rootfs) failed with exit code '1'


Is this error because the rootfs is searching for upgradeutils for includin=
g it in the rootfs ? If so, how I can avoid that ?

Thank you for your valuable time.

Karthik B

--_000_BN6P154MB0035D8E4A7C1BEEBDA846211885E0BN6P154MB0035NAMP_
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
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to build an Upgrade package which basica=
lly has some shell scripts as executables. But I don&#8217;t want them incl=
uded in the rootfs, instead I will place them over the air when a upgrade i=
s required. Below is the .bb file which
 I have written for achieving the same.<br>
<br>
<span style=3D"color:#5B9BD5">SECTION =3D &quot;MINE&quot;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">LICENSE =3D &quot;MINE=
&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">LIC_FILES_CHKSUM =3D &=
quot;file://${COMMON_LICENSE_DIR}/MINE;md5=3D02598586d9274e819091ab3ade64d9=
10&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">UTILS_PATH=3D&quot;&qu=
ot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">SRC_URI &#43;=3D &quot=
;file://upgrade.sh \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">do_fetch(){<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; #do nothing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; echo &quot;do_fetch&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">}<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">do_configure(){<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; #do nothing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; echo &quot;do_configure&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">}<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">do_compile(){<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; #do nothing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; echo &quot;do_compile&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">}<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">do_install() {<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -d ${WORKDIR}/utils<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/upgrade_verify_file.sh ${WO=
RKDIR}/utils<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; tar -czf upgradeUtils.tgz -C ${WORKDIR} utils<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; cp ${WORKDIR}/upgradeutils-0.1/upgradeUtils.tgz ${TOPD=
IR}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">}<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">FILES_${PN} &#43;=3D &=
quot;${WORKDIR}/utils \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5">&quot;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#5B9BD5"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal">But while executing &nbsp;&#8220;bitbake core-image-=
base&#8221;, I am getting the following error.
<br>
<br>
<span style=3D"color:red">ERROR: core-image-base-1.0-r0 do_rootfs: Could no=
t invoke dnf. Command '/home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-g=
nueabi/core-image-base/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /home=
/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gnueabi/core-image-base/1.0-r=
0/rootfs/etc/dnf/dnf.conf
 --setopt=3Dreposdir=3D/home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-g=
nueabi/core-image-base/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-re=
po,/home/karthik/dev/dev_yocto_dev/tmp/work/ccimx6ulsbc-dey-linux-gnueabi/c=
ore-image-base/1.0-r0/oe-rootfs-repo --installroot=3D/home/karthik/dev/dev_=
yocto_dev/tmp/work/arm-linux-gnueabi/core-image-base/1.0-r0/rootfs
 --setopt=3Dlogdir=3D/home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gnu=
eabi/core-image-base/1.0-r0/temp -x udev-cache --nogpgcheck install base-pa=
sswd dhcp-server dnf null-logger packagegroup-base-extended packagegroup-co=
re-boot packagegroup-core-eclipse-debug
 packagegroup-core-ssh-dropbear packagegroup-bluetooth packagegroup-network=
 packagegroup-wireless psplash python-dbus python-pygobject rht rpm ruby ru=
n-postinsts shadow sqlite3 upgradeutils locale-base-en-us locale-base-en-gb=
' returned 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Added oe-repo repo from /h=
ome/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gnueabi/core-image-base/1.=
0-r0/oe-rootfs-repo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Last metadata expiration c=
heck: 0:00:00 ago on Mon 25 Mar 2019 09:07:49 AM UTC.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">No package upgradeutils av=
ailable.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Error: Unable to find a ma=
tch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: core-image-base-1.0=
-r0 do_rootfs: Function failed: do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Logfile of failure =
stored in: /home/karthik/dev/dev_yocto_dev/tmp/work/arm-linux-gnueabi/core-=
image-base/1.0-r0/temp/log.do_rootfs.21424<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Task (/home/karthik=
/dev/dev_yocto_dev/sources/poky/meta/recipes-core/images/core-image-base.bb=
:do_rootfs) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri Light&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Is this error because the rootfs is searching for up=
gradeutils for including it in the rootfs ? If so, how I can avoid that ?
<br>
<br>
Thank you for your valuable time.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Karthik B<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN6P154MB0035D8E4A7C1BEEBDA846211885E0BN6P154MB0035NAMP_--
