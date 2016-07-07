Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D656E00E39; Wed,  6 Jul 2016 19:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0079.outbound.protection.outlook.com [104.47.32.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED24FE00C2B
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 19:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=XFGWr93Ny3YStA0q8g5XnBKK26x8dh53dFFFaPGOVRQ=;
	b=vmj3hKbxNO9cIqc+NzsjTFY9rJdYHpDol9ityClya5Dnx/CkvrNLmLACtyNA6SNmDg2/NXN9Dp0Y+pl1CuL8cWO5L+IwyOKlId5UrhP0yNnVH9s+Qlsr7WgdWfaPbB70twOZ4pKFvtLbfGM+0tBT74d3D4zCtyDbZ7P0PITS1RM=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Thu, 7 Jul 2016 02:05:43 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0534.020; Thu, 7 Jul 2016 02:05:43 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: linux/limits.h: No such file or directory
Thread-Index: AQHR1/QQSjIO26PZcUmqZTdCozHTyw==
Date: Thu, 7 Jul 2016 02:05:42 +0000
Message-ID: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 8b2d6583-884e-464c-99a8-08d3a60b33aa
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	6:8G/YxySr74BoYbzr8jMnKVE8iDAZBVcCO1HtLac+bDi3vG/kixfQdUcjgufckBCZFsrhka7YDqSY/6VIQ3H6K7JxhFXQtZsYRBFEcAwJYM9wfgsF3ov7Dw/SozafcIHiiraQEeybWLa0ArIvVn2GfNUNfuk4VHFrcvkVnNy7Ih175GY0vG5DJZdftiWQIv9WkYTf6W9wzI4i6UonrMKI8tA3k4KIhW8urmTiwD+KC4MDKI9Snwj60NUGzIowo9PFFruS1EKXDnDXiVg1G2FX08szC0gmkX7mLEYJ5xuHrmA=;
	5:+hbLmMkoqDW6EcjadK029LBgkTm08aomXoj0DI1tXy1N1CFZw+rdBNANNhOxxSeARReOsV8bN2rwqumCAptHaV2CkNioYgc9F8zmKE8V+ZAO/nK8E2AgWE2YPhQfCQWmlPMbDdzJBo3Gh26I/zHVBw==;
	24:Mr39/HgdTe8jPbIwHctWvpst7eyS9O1JlpyAlMTK4ifdT7I6mxjStL7uIGVLuXAhUwIScrI61MkLUYyDLW9YkiS3aBbUZalDQLKnUUiD8cI=;
	7:6hGhlFTPEJN4zsaap8QX5wXgiCdbtVKHNzJxSjnox7LpY3tNG8OqBiy/EycGQ58lyqv86J/ke53YdHvv5gnsZn7/j1UkjyCpFx2Iz+KmWlEHzkScNBFgMmsxKdo7Z0CIOjwBoqq6J74HJ582evtXgwtN/XP2Yyy1TQF/dBXBucohVqtjG6khNDv6uGxtdrRnbSXjEctnkDkUHF+c/56N5K4WZMmFa8mn8irNB1E6JZB/a4MgE0Rdg4ccKQc4wf+C
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1595;
x-microsoft-antispam-prvs: <CY1PR0101MB15958CF3F63ADCC92FBFB2D5D73B0@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(20558992708506);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 0996D1900D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(92566002)(9686002)(81166006)(97736004)(122556002)(81156014)(1730700003)(19627405001)(450100001)(110136002)(87936001)(107886002)(5002640100001)(33656002)(189998001)(11100500001)(77096005)(66066001)(2900100001)(7736002)(7696003)(5003600100003)(10400500002)(7846002)(8676002)(3280700002)(106116001)(3660700001)(229853001)(2351001)(86362001)(105586002)(54356999)(50986999)(101416001)(19625215002)(68736007)(106356001)(2906002)(2501003)(74316002)(586003)(8936002)(102836003)(16236675004)(19580395003)(3846002)(6116002)(5640700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2016 02:05:42.3894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
Subject: linux/limits.h: No such file or directory
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
X-List-Received-Date: Thu, 07 Jul 2016 02:05:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15942895A402A660E25E1963D73B0CY1PR0101MB1594_"

--_000_CY1PR0101MB15942895A402A660E25E1963D73B0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

I am seeing this error recently, and wonder if it is a known issue that has=
 a workaround.

It does not go even if I delete DL_DIR or SSTATE_CACHE, etc.  It started to=
 happen, though previously the build ran well.

>configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E --sysroot=3D=
/mnt/ssd2/>yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux " =
fails sanity check
>| See `config.log' for more details.

If I look into config.log (gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64-poky=
sdk-linux/libgcc/config.log) as suggested, I can see the following.
It says linux/limits.h is not found.

(in config.log)
>usr/include/bits/local_lim.h:38:26: fatal error: linux/limits.h: No such f=
ile or directory

I googled some, and found a few similar reports (e.g. install kernel header=
s first, could be a race condition, etc.) but I am not sure practically how=
 to avoid this build break.

Error log (on bitable console):

=3D=3D=3D=3D
| checking for x86_64-pokysdk-linux-gcc  --sysroot=3D/mnt/ssd2/yocto/dev/tm=
p/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux option to accept ISO C89.=
.. none needed
| checking how to run the C preprocessor... x86_64-pokysdk-linux-gcc -E --s=
ysroot=3D/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-=
linux
| configure: error: in `/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/x86_64-natives=
dk-pokysdk-linux/nativesdk-libgcc-initial/4.9.2-r0/gcc-4.9.2/build.x86_64-p=
okysdk-linux.x86_64-pokysdk-linux/libgcc':
| configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E --sysroot=
=3D/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux =
" fails sanity check
| See `config.log' for more details.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /mnt/ssd2/yo=
cto/dev/tmp/x86-wk3/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-in=
itial/4.9.2-r0/temp/log.do_configure.888)
ERROR: Task 3580 (virtual:nativesdk:/mnt/ssd2/yocto/dev/wk/x86/wk3/build-ro=
ot/sources/poky/meta/recipes-devtools/gcc/libgcc-initial_4.9.bb, do_configu=
re) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4247 tasks of which 2301 didn't need to be r=
erun and 1 failed.
Waiting for 0 running tasks to finish:
=3D=3D=3D=3D



--_000_CY1PR0101MB15942895A402A660E25E1963D73B0CY1PR0101MB1594_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello Yocto.</span><br>
</div>
<div><br>
</div>
<div>I am seeing this error recently, and wonder if it is a known issue tha=
t has a workaround.</div>
<div><br>
</div>
<div>It does not go even if I delete DL_DIR or SSTATE_CACHE, etc. &nbsp;It =
started to happen, though previously the build ran well.</div>
<div><br>
</div>
<div>&gt;configure: error: C preprocessor &quot;x86_64-pokysdk-linux-gcc -E=
 --sysroot=3D/mnt/ssd2/&gt;yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-=
pokysdk-linux &quot; fails sanity check</div>
<div>&gt;| See `config.log' for more details.</div>
<div><br>
</div>
<div>If I look into config.log (gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64=
-pokysdk-linux/libgcc/config.log) as suggested, I can see the following.</d=
iv>
<div>It says linux/limits.h is not found.</div>
<div><br>
</div>
<div>(in config.log)</div>
<div>&gt;usr/include/bits/local_lim.h:38:26: fatal error: linux/limits.h: N=
o such file or directory</div>
<div><br>
</div>
<div>I googled some, and found a few similar reports (e.g. install kernel h=
eaders first, could be a race condition, etc.) but I am not sure practicall=
y how to avoid this build break.</div>
<div><br>
</div>
<div>Error log (on bitable console):</div>
<div><br>
</div>
<div>=3D=3D=3D=3D</div>
<div>| checking for x86_64-pokysdk-linux-gcc &nbsp;--sysroot=3D/mnt/ssd2/yo=
cto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux option to accep=
t ISO C89... none needed</div>
<div>| checking how to run the C preprocessor... x86_64-pokysdk-linux-gcc -=
E --sysroot=3D/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pok=
ysdk-linux</div>
<div>| configure: error: in `/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/x86_64-na=
tivesdk-pokysdk-linux/nativesdk-libgcc-initial/4.9.2-r0/gcc-4.9.2/build.x86=
_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc':</div>
<div>| configure: error: C preprocessor &quot;x86_64-pokysdk-linux-gcc -E -=
-sysroot=3D/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysd=
k-linux &quot; fails sanity check</div>
<div>| See `config.log' for more details.</div>
<div>| WARNING: exit code 1 from a shell command.</div>
<div>| ERROR: Function failed: do_configure (log file is located at /mnt/ss=
d2/yocto/dev/tmp/x86-wk3/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libg=
cc-initial/4.9.2-r0/temp/log.do_configure.888)</div>
<div>ERROR: Task 3580 (virtual:nativesdk:/mnt/ssd2/yocto/dev/wk/x86/wk3/bui=
ld-root/sources/poky/meta/recipes-devtools/gcc/libgcc-initial_4.9.bb, do_co=
nfigure) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 4247 tasks of which 2301 didn't need to=
 be rerun and 1 failed.</div>
<div>Waiting for 0 running tasks to finish:</div>
<div>=3D=3D=3D=3D</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB15942895A402A660E25E1963D73B0CY1PR0101MB1594_--
