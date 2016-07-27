Return-Path: <Manish.Jaggi@cavium.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26262E00E8B; Wed, 27 Jul 2016 08:32:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0048.outbound.protection.outlook.com [104.47.32.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63B79E00E7F
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 08:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-cavium-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Aa4o/aUL4X0m+MQJsJFNpTO9J5hp6uMDk6fqqvtUbSY=;
	b=c0iSbMaxjQMXR9N3miNaVZEM38yCkQQBN6eVaM21JN/MqacrtBKsE8OBXfOb5irN738+iEfMdsDYbXyPjKxMFpppe9YynH1KgN1ehcd/Wf5nPs+bAeADbpyqARbP861TeXaY34dor0EiEs2X6KAiwi466Ol2loGq8IWIXq3WztA=
Received: from CY1PR0701MB1600.namprd07.prod.outlook.com (10.163.20.15) by
	CY1PR0701MB1599.namprd07.prod.outlook.com (10.163.20.149) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.544.10; Wed, 27 Jul 2016 12:59:02 +0000
Received: from CY1PR0701MB1600.namprd07.prod.outlook.com ([10.163.20.15]) by
	CY1PR0701MB1600.namprd07.prod.outlook.com ([10.163.20.15]) with mapi id
	15.01.0544.019; Wed, 27 Jul 2016 12:59:02 +0000
From: "Jaggi, Manish" <Manish.Jaggi@cavium.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: populate_sdk does not generate multilib sysroots
Thread-Index: AQHR6AWWSoApc3V150iKSU+DXIaPjQ==
Date: Wed, 27 Jul 2016 12:59:02 +0000
Message-ID: <CY1PR0701MB16009208F2BBF82401A045DFEC0F0@CY1PR0701MB1600.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Manish.Jaggi@cavium.com; 
x-originating-ip: [50.233.148.158]
x-ms-office365-filtering-correlation-id: 0bcb42c2-7c59-4e5f-7904-08d3b61dc8a8
x-microsoft-exchange-diagnostics: 1; CY1PR0701MB1599;
	6:CSKBnYlNjndtczcjuBFsUl2w30IdnnnQzJ3zgMMqjC6i6s1LV7ca9wK/HrHzhjwnVmbChzcbkrjqEWhq5FezO3uVFqvBzExi7T9iEGW1WU5vZTd4J8S3O0jlJ5xoPiMgMa6bRx6TSC6ub2pxLAluTMOw4GqONiIcwTRTA5tNiNq4Cn5/mxqvNr5CZesy7JDWkdY7PFz4WpXnAlgS1pmFGpyV4rZevyae96S93qP3zjYMHp6SMfZkxy/ARpqURNdxr6QQzHjDZKs9diwHDcZv3/mvxLgS1b6fvYTNHJ+V6m0=;
	5:BhzhFDyioAyYD7KNqNnOJDKL1m2mOitnFAYctOR2TRTGU0Y7cqqRrMAa0gp6whErerX+QuocvcweYXv+qIaKs4jAk2zY72PD7cwt6HurNpmIQ0y/eLLBStBTW2Taxy75znvFCJ9LvAmYEHajXQLOKg==;
	24:CgeasS8ARwh10ee0na42qvBu3pUU1isdf+78dhTKOp+mgE6gNbWA0irbkBiVvaRAm3pHj2zF1Orf//Yk//YHiVGJbwORddZTX3TXPmUhn4g=;
	7:DYETVqlGcbybSPCqpGcvhSUJZXCHzmKGIS2PewKdM7wvT9rQJX8gTbLg0VLJWV0cxiuZ1BORqREgBE2rUWO4C5WQKqGBcMtdAguiFxkZZelYQylLeQxs4VEBFq8GUfJ9SuWnTB82GFNDxrwul78ImiT99YOmNX4EbDXsstYDAF19Mz5cOpdhCRYzl27YWclT6St0ryngkhb4bIpMULXfdTHBgfX2YP7BnlkaVs9+j42xYS7vIABgzWj5FlkkQ+Nb
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0701MB1599;
x-microsoft-antispam-prvs: <CY1PR0701MB159969CF9F2705E550B8EA97EC0F0@CY1PR0701MB1599.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0701MB1599; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0701MB1599; 
x-forefront-prvs: 0016DEFF96
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(69234005)(189002)(199003)(2900100001)(2906002)(92566002)(101416001)(5002640100001)(8936002)(77096005)(19625215002)(3660700001)(81156014)(3280700002)(107886002)(54356999)(110136002)(97736004)(189998001)(66066001)(105586002)(11100500001)(1730700003)(87936001)(99286002)(81166006)(68736007)(50986999)(106116001)(450100001)(106356001)(2501003)(8676002)(5640700001)(122556002)(229853001)(2351001)(7736002)(5003600100003)(7696003)(33656002)(74316002)(19627405001)(3846002)(102836003)(16236675004)(86362001)(6116002)(19580395003)(7846002)(10400500002)(9686002)(76576001)(586003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0701MB1599;
	H:CY1PR0701MB1600.namprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: cavium.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: cavium.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2016 12:59:02.1528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0701MB1599
X-Mailman-Approved-At: Fri, 29 Jul 2016 02:04:17 -0700
Subject: populate_sdk does not generate multilib sysroots
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
X-List-Received-Date: Wed, 27 Jul 2016 15:32:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0701MB16009208F2BBF82401A045DFEC0F0CY1PR0701MB1600_"

--_000_CY1PR0701MB16009208F2BBF82401A045DFEC0F0CY1PR0701MB1600_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On krogoth branch of poky  trying to create a multilib sdk (aarch64 aarch64=
_ilp32)

Using the below local.conf


CONF_VERSION =3D "1"
MACHINE =3D "TestMachine"
CORE_IMAGE_EXTRA_INSTALL_append +=3D " openssl"
PREFERRED_VERSION_linux-thunderx-81xx =3D "4.4.3"
BB_NUMBER_THREADS=3D"32"
PREFERRED_PROVIDER_virtual/kernel =3D "linux-thunderx-81xx"
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "aarch64_ilp32"


after bitbake core-image-minimal

and bitbake -c populate_sdk core-image-minimal


The sysroot directory in tmp/sysroots has sysroots for both 64 and ilp32

TestMachine

lib32-TestMachine


But when installed the sdk using populate sdk generated script, sysroots is=
 only for aarch64 and not for aarch64_ilp32

ls ~/sdk_install_poky/sysroots/
aarch64-poky-linux  x86_64-pokysdk-linux


What could be missing here?


FYI The generated rootfs has multi libs, libssl for 32bit and 64bit are pre=
sent.



Regards,
Manish Jaggi

--_000_CY1PR0701MB16009208F2BBF82401A045DFEC0F0CY1PR0701MB1600_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Candara,Sans-Serif;">
<p>On krogoth branch of poky&nbsp; trying to create a multilib sdk (aarch64=
 aarch64_ilp32)</p>
<p>Using the below local.conf</p>
<p><br>
</p>
<p></p>
<div>CONF_VERSION =3D &quot;1&quot;</div>
<div>MACHINE =3D &quot;TestMachine&quot;</div>
<div>CORE_IMAGE_EXTRA_INSTALL_append &#43;=3D &quot; openssl&quot;</div>
<div>PREFERRED_VERSION_linux-thunderx-81xx =3D &quot;4.4.3&quot;</div>
<div>BB_NUMBER_THREADS=3D&quot;32&quot;</div>
<div>PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-thunderx-81xx&quot;<=
/div>
<div>require conf/multilib.conf</div>
<div>MULTILIBS =3D &quot;multilib:lib32&quot;</div>
<div>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;aarch64_ilp32&quot;</di=
v>
<br>
<p></p>
<p>after bitbake core-image-minimal&nbsp;</p>
<p>and bitbake -c populate_sdk core-image-minimal&nbsp;</p>
<p><br>
</p>
<p>The sysroot directory in tmp/sysroots has sysroots for both 64 and ilp32=
</p>
<p><span><span style=3D"font-family: Candara, sans-serif, &quot;Apple Color=
 Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Sy=
mbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13.3333px;"=
>TestMachine</span></span></p>
<p><span>lib32-TestMachine</span><br>
</p>
<p><span><br>
</span></p>
<p><span>But when installed the sdk using populate sdk generated&nbsp;scrip=
t, sysroots is only for aarch64 and not for aarch64_ilp32</span></p>
<p><span></p>
<div>ls ~/sdk_install_poky/sysroots/</div>
<div>aarch64-poky-linux &nbsp;x86_64-pokysdk-linux</div>
<br>
</span>
<p></p>
<p>What could be missing here?</p>
<p><br>
</p>
<p>FYI&nbsp;The generated rootfs has multi libs, libssl for 32bit and 64bit=
 are present.</p>
<p><br>
</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
<font face=3D"Cordia New, sans-serif" size=3D"2">Regards,</font>
<div><font face=3D"Cordia New, sans-serif" size=3D"2">Manish Jaggi</font></=
div>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0701MB16009208F2BBF82401A045DFEC0F0CY1PR0701MB1600_--
