Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 976E1E00D79; Wed, 29 Jun 2016 13:16:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 862 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Jun 2016 13:16:49 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0083.outbound.protection.outlook.com [104.47.101.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4617E00D6C
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 13:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1zreZ7sXQfYB18Yh8sMm5r8qGF+1yq4EnALpDOI+Rs8=;
	b=aARoVS+0MrnBEJzrTrGyrAD5ddm9Zj29/FXg4t3G+Uz6t83dY7POfjnCpYbc/D4Eacj3deDiuCCFFETB2ZnqLqBCaxgRT80GnXrYBNRS6toBmVp1X1QH50rzc0Z0EZRsdPh1vAp8lhJcYwEmB/rM3/jusEwn58273VPlSVVvoEE=
Received: from MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM (10.164.151.141) by
	MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM (10.164.151.141) with Microsoft
	SMTP Server (TLS) id 15.1.528.16; Wed, 29 Jun 2016 20:02:24 +0000
Received: from MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM ([10.164.151.141]) by
	MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM ([10.164.151.141]) with mapi id
	15.01.0528.020; Wed, 29 Jun 2016 20:02:24 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Fetch failure errors while building yocto
Thread-Index: AQHR0kDUP7eLHeYVAkOzezL3oTWH4Q==
Date: Wed, 29 Jun 2016 20:02:23 +0000
Message-ID: <MAXPR01MB0490BCF33B32D611E0A1AAC0EF230@MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Harinath.maddela@inedasystems.com; 
x-originating-ip: [25.164.147.4]
x-ms-office365-filtering-correlation-id: addea8ab-095b-423f-3b5b-08d3a05849c2
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0490;
	20:7X0heAdRHd7uK2sAcb1Eo5OiMdQSgKJiIwPq1RGxeqACpxtJ+Ubc7wkEpmkOr3qVZHnKhR22dHBVTYekqFEqWqNmvfHVqE9y+qK9r9drfWxUZIW5hELwMKc3lCn+Hf7fBdQ+eGcOj+aE41vERpOKRrHc9eRSu1zyxGzOdQwO0PQ=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MAXPR01MB0490;
x-microsoft-antispam-prvs: <MAXPR01MB04906C953FB25558B6CD314EEF230@MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(42262312472803)(146099531331640);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:MAXPR01MB0490; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0490; 
x-forefront-prvs: 09888BC01D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(53474002)(3280700002)(7696003)(5003600100003)(7736002)(7846002)(189998001)(122556002)(19625215002)(450100001)(3660700001)(10400500002)(68736007)(33656002)(54356999)(11100500001)(107886002)(110136002)(19580395003)(5002640100001)(2900100001)(9686002)(87936001)(16236675004)(66066001)(77096005)(8936002)(15975445007)(86362001)(575784001)(2906002)(102836003)(81156014)(8676002)(50986999)(81166006)(97736004)(3846002)(101416001)(19627405001)(229853001)(586003)(106356001)(106116001)(92566002)(6116002)(105586002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0490;
	H:MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2016 20:02:23.6657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0490
Subject: Fetch failure errors while building yocto
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
X-List-Received-Date: Wed, 29 Jun 2016 20:16:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB0490BCF33B32D611E0A1AAC0EF230MAXPR01MB0490INDP_"

--_000_MAXPR01MB0490BCF33B32D611E0A1AAC0EF230MAXPR01MB0490INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi


While im trying to build yocto. Im facing some fetch failure errors. The sa=
me works fine sometimes but sometimes it fails giving the error as unable t=
o fetch.


When i try to download it using wget it works fine.


Build Configuration:
BB_VERSION        =3D "1.24.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "mipsel-poky-linux"
MACHINE           =3D "i7"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.3"
TUNE_FEATURES     =3D "o32 fpu-hard mips32r2"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp
meta-i7
meta-i7recepes
meta-mylayer
meta-dnsmask
meta-netifd
meta-lldpd
meta-relayd
meta-dhcpv6-linux
meta-json
meta-lua2
meta-libubox
meta-ustream-ssl
meta-ubus
meta-uci
meta-ipset2
meta-uclient
meta-rpc
meta-firewall
meta-uqmi         =3D "(nobranch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94"
meta-alljoyn      =3D "master:e775bf1c287e10abf18ceae544a310cdefc24ed0"
meta-oic          =3D "(nobranch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL http://download.oracle.com/berkeley-db/db-6.0.=
30.tar.gz, attempting MIRRORS if available
WARNING: Failed to fetch URL http://downloads.sourceforge.net/boost/boost_1=
_56_0.tar.bz2, attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/db/6.0.30-r0/temp/log.do_fetch.20074
ERROR: Task 1792 (/home/harinathm/poky/meta/recipes-support/db/db_6.0.30.bb=
, do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/bjam-native/1.56.0-r0/temp/log.do_fetch.20078
ERROR: Task 2575 (/home/harinathm/poky/meta/recipes-support/boost/bjam-nati=
ve_1.56.0.bb, do_fetch) failed with exit code '1'
WARNING: Failed to fetch URL http://download.oracle.com/berkeley-db/db-6.0.=
30.tar.gz, attempting MIRRORS if available
WARNING: Failed to fetch URL http://downloads.sourceforge.net/boost/boost_1=
_56_0.tar.bz2, attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/db-native/6.0.30-r0/temp/log.do_fetch.20073
ERROR: Task 1234 (virtual:native:/home/harinathm/poky/meta/recipes-support/=
db/db_6.0.30.bb, do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/boost/1.56.0-r0/temp/log.do_fetch.20075
ERROR: Task 1721 (/home/harinathm/poky/meta/recipes-support/boost/boost_1.5=
6.0.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2126 tasks of which 2122 didn't need to be r=
erun and 4 failed.


Can you please help me to fix this kind of fetch failure errors.


Thanks and Regards,
Harinath


--_000_MAXPR01MB0490BCF33B32D611E0A1AAC0EF230MAXPR01MB0490INDP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi</p>
<p><br>
</p>
<p>While im trying to build yocto. Im facing some fetch failure errors. The=
 same works fine sometimes but sometimes it fails giving the error as unabl=
e to fetch.</p>
<p><br>
</p>
<p>When i try to download it using wget it works fine.<br>
</p>
<p><br>
</p>
<p></p>
<div>Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.24.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-14.04&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;mipsel-poky-=
linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;i7&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.7.3&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;o32 fpu-hard mips32r2&quot;=
<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;<br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-yocto-bsp&nbsp;&nbsp; &nbsp;<br>
meta-i7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-i7recepes&nbsp;&nbsp; &nbsp;<br>
meta-mylayer&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-dnsmask&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-netifd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-lldpd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-relayd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-dhcpv6-linux <br>
meta-json&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-lua2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-libubox&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-ustream-ssl &nbsp;<br>
meta-ubus&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-uci&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-ipset2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-uclient&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-rpc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-firewall&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-uqmi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;(nobran=
ch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94&quot;<br>
meta-alljoyn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:e775bf1c287e10a=
bf18ceae544a310cdefc24ed0&quot;<br>
meta-oic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;(n=
obranch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94&quot;<br>
<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
WARNING: Failed to fetch URL http://download.oracle.com/berkeley-db/db-6.0.=
30.tar.gz, attempting MIRRORS if available<br>
WARNING: Failed to fetch URL http://downloads.sourceforge.net/boost/boost_1=
_56_0.tar.bz2, attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/db/6.0.30-r0/temp/log.do_fetch.20074<br>
ERROR: Task 1792 (/home/harinathm/poky/meta/recipes-support/db/db_6.0.30.bb=
, do_fetch) failed with exit code '1'<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.<b=
r>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/bjam-native/1.56.0-r0/temp/log.do_fetch.20078<br>
ERROR: Task 2575 (/home/harinathm/poky/meta/recipes-support/boost/bjam-nati=
ve_1.56.0.bb, do_fetch) failed with exit code '1'<br>
WARNING: Failed to fetch URL http://download.oracle.com/berkeley-db/db-6.0.=
30.tar.gz, attempting MIRRORS if available<br>
WARNING: Failed to fetch URL http://downloads.sourceforge.net/boost/boost_1=
_56_0.tar.bz2, attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/db-native/6.0.30-r0/temp/log.do_fetch.20073<br>
ERROR: Task 1234 (virtual:native:/home/harinathm/poky/meta/recipes-support/=
db/db_6.0.30.bb, do_fetch) failed with exit code '1'<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.<b=
r>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/boost/1.56.0-r0/temp/log.do_fetch.20075<br>
ERROR: Task 1721 (/home/harinathm/poky/meta/recipes-support/boost/boost_1.5=
6.0.bb, do_fetch) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 2126 tasks of which 2122 didn't need to be r=
erun and 4 failed.<br>
<br>
<br>
Can you please help me to fix this kind of fetch failure errors.</div>
<p></p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_MAXPR01MB0490BCF33B32D611E0A1AAC0EF230MAXPR01MB0490INDP_--
