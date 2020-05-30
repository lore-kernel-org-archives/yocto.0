Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.112])
 by mx.groups.io with SMTP id smtpd.web10.10305.1590847640573931678
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 May 2020 07:07:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zpesystems.onmicrosoft.com header.s=selector2-zpesystems-onmicrosoft-com header.b=W8HI40e8;
 spf=pass (domain: zpesystems.com, ip: 40.107.236.112, mailfrom: edson.seabra@zpesystems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CfsWI+qYSIghjJgGev2r9i0IftEoXVG78ijjHH+NPqVdP3daESuj/URttyAv62uH7w6NuaxrNoh4Pm/avq+dM5KyF57OobOfLiA3hSl9eXMp27vsJ3ko/J7buPdeBap8S4zKsTJYLHwHL637RI+dbei/LdRgEkpCUTk6kmb0ED6L2wYb+zh577JWF1nQhnHMch+arHpTBo022bv/RZaDXoMtSTH0UXtTO4CLIysmAaxYBlpxM0V/PAeGigDItE/ZAXyZMzTiy2kJPqn+g13HTXYXSkn6qj98zqQLI/CTwZcrS5AwJ501WVxKRlWetidEevB9TMELMG7ETB6eudeXbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m/bF0Yq9E+b2THpaI8IzgzhQpzI9rQkNjq6arB4vsCY=;
 b=QvfY2zJNmMulds4KglC6hfw4U+TUA06v81fF8+jP15fVcbT145VS2pOAyZglVLn0mk3Uc2+V2qKN7tIfYxY/01Ifi/o+VogLhYRNNL1M5XiOjI8/7qDvYtBo34+W1EtdPgBVz2uRIpv7cWXHJQQaD9z8hAcslRgV0QeaFDCj0d52g5bz6PhGY7mS6dj1jlgCMXhs7yPwVeQuI+KDUAPRCGD1r4NLD6+2nJF9SqSRIzBSARacuFlRUiLMyPMS8goZsxZIrq/0TvlwCEn9OpkPicTF7cNsV59ujoO99CkzaX18cZCVfoATF4MxfjwaTovkuipi5RF6YDDb4q+nlpKXLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zpesystems.com; dmarc=pass action=none
 header.from=zpesystems.com; dkim=pass header.d=zpesystems.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ZPESystems.onmicrosoft.com; s=selector2-ZPESystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m/bF0Yq9E+b2THpaI8IzgzhQpzI9rQkNjq6arB4vsCY=;
 b=W8HI40e8LJdz2uLamO77JWbNCJvOI9oWp7LxW+7SzJ9ChME+JZsV928unKh4NHb4tokKqitcoGenkS3su3D2IEbXNKX2fWcwp2JPwERJgvfz/6ngk0M+viTtIdS8kxnDMkqjHuq1UF2q7abSNVbz/sAH9wWnca8qyEJZPjlLFKM=
Received: from MWHPR19MB1232.namprd19.prod.outlook.com (2603:10b6:320:2d::21)
 by MWHPR19MB1263.namprd19.prod.outlook.com (2603:10b6:320:2a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sat, 30 May
 2020 14:07:18 +0000
Received: from MWHPR19MB1232.namprd19.prod.outlook.com
 ([fe80::25d4:9361:c76b:c27a]) by MWHPR19MB1232.namprd19.prod.outlook.com
 ([fe80::25d4:9361:c76b:c27a%10]) with mapi id 15.20.3045.018; Sat, 30 May
 2020 14:07:18 +0000
From: "Edson Seabra" <edson.seabra@zpesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto dunfell - strange error when building npm package without dependence
Thread-Topic: Yocto dunfell - strange error when building npm package without
 dependence
Thread-Index: AQHWNolGHPghg9XKikGdTR/lrO0QBA==
Date: Sat, 30 May 2020 14:07:17 +0000
Message-ID: 
 <MWHPR19MB12328A734CB8167F571A5CE4F78C0@MWHPR19MB1232.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=zpesystems.com;
x-originating-ip: [2804:14d:7e81:88ba:f03b:52c8:ce0c:8e3e]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6e5cd36-ac6f-462f-e54e-08d804a2c361
x-ms-traffictypediagnostic: MWHPR19MB1263:
x-microsoft-antispam-prvs: 
 <MWHPR19MB1263E07809174CCDD6B6C1F1F78C0@MWHPR19MB1263.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KiwFGBdyin30CVCfZnDtHREwRAKOpz1GU44O3MLlRZ7FttMvimzYcvB2uwZkuoHwldDbKk415RmX9ovhu69byRxmxCJYOa8wpQIbJLDUOxI3ltmcpgos2ctDNvmDGSYDD30UzLBsXxfrkirAXNGo94gIld9rUjwf68IbkogL4onSyByisxpXy/hpEwQz28IhHqjFO0TKb1MmlG6tN6BKTp5RVnceo6BupgjqVcsVd9ARYnD5Y/K3Rq3bIvW3UgZC+m4Mb5jo6MFZiseqnwsdI11q2ISLZ2xShv3M7RbDNcqSoMce5EwdfdG4Sf3gOKh1vHDGB5Tn9NRiNlkCJaKPyiqLFcoC5jfhFfxX/sx1IxTmqh6Qr/xHsx37asjaorr2Dj3IOyRKxlwmX3Yei0tmSg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR19MB1232.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(396003)(136003)(39830400003)(346002)(366004)(71200400001)(2906002)(6506007)(99936003)(8936002)(8676002)(86362001)(316002)(186003)(508600001)(166002)(9686003)(7696005)(19627405001)(55016002)(83380400001)(66556008)(64756008)(66616009)(66476007)(91956017)(6916009)(66946007)(66446008)(76116006)(5660300002)(33656002)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 n5e9+inpGBJkpwAeJWX4iPxYHjW4RVRr4NLF+l6gzWJgS+dBmeBBQ2/Hee1lstgs9Ita9ew2Q2IZz3Q74s3yNzRGXZT38V5p74BTGXLHUa/tKt4ch+KO/OXYjDTC9lmDYde5jFDujyrMWEfVKM7tvCQkVh3mo2bg7P7v95W9kyExKdnKUfJvRGC1VauyTqIaZA3kxjMtYhNp8LdCU1yoYQ7RTLjAh6Omyn82st6jzE7SChPzN8VY8h2op6NCyf1m2mHg2mjQe1+uctraIwAO/1XBdjAZQ0RW5XDQ9JC7RFDRIQOY9Ma/+ZOKJ54EOwvGdswb2naceY/jJn1Ce4SayaGPNOAYn/TSRHM3/f1o4P0jKtSuPwb1LwI9L0kQAOm4MM0Xra8eaGNSLrZUfYPFRL2i+Z5F4WkRHR7uLclMDeL4nbTtXatc1PopbeE8UnIwAC6kqNNBpMeja6mk1rwH+7urV+eT8I0cDQegjoeUKQFHjSZCDueL+r7eiF8xoy7LyXlCUkxA82pJl6S3L0eZZr/t77Gskr4gSOXHkB0FtP3W28k8iTPTSVioSuvrhDqI
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: zpesystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6e5cd36-ac6f-462f-e54e-08d804a2c361
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 14:07:18.0111
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C6uPLk5eJwpYRpw/zGYryuu8JLfbXhzUPcQfA/46zHOV9uxX4sGjdIvzPDjN6iw6j4OmAZluXOkVve2LbBQJP74lblfts9aoxcM0ZgXkVNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB1263
X-Groupsio-MsgNum: 49535
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_";
	type="multipart/alternative"

--_004_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_"

--_000_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, all

I used recipetool to create the recipe for NPM packages

If the npm package has dependence(s) it works great.

But if not, the error below happens.

I just add a fake dependence in npm-shrinkwrap.json  then it works

# cat google-protobuf/npm-shrinkwrap.json
{
  "name": "google-protobuf",
  "version": "3.3.0",
  "lockfileVersion": 1,
  "requires": true,
  "dependencies": {
    "nan": {
      "version": "2.14.1",
      "resolved": "https://registry.npmjs.org/nan/-/nan-2.14.1.tgz",
      "integrity": "sha512-isWHgVjnFjh2x2yuJ/tj3JbwoHu3UC2dX5G/88Cm24yB6Yop=
VgxvBObDY7n5xW6ExmFhJpSEQqFPvq9zaXc8Jw=3D=3D"
    }
  }
}

Another way to make it work is to replace the npmsw with file in SRC_URI

=3D=3D=3D=3D=3D=3D=3D=3D nan.bb =3D=3D=3D=3D=3D=3D=3D
SRC_URI =3D " \
    npm://registry.npmjs.org;package=3Dnan;version=3D${PV} \
    file://npm-shrinkwrap.json;subdir=3Dnpm \
    "
S =3D "${WORKDIR}/npm"

inherit npm

=3D=3D=3D=3D=3D=3D=3D google-protobuf.bb =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

 SRC_URI =3D " \
    npm://registry.npmjs.org/;package=3Dgoogle-protobuf;version=3D${PV} \
    npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json \
    "

S =3D "${WORKDIR}/npm"

inherit npm

=3D=3D=3D=3D=3D=3D error =3D=3D=3D=3D=3D=3D

ERROR: google-protobuf-3.3.0-r0 do_fetch: Failure expanding variable TUNE_F=
EATURES_tune-core2-64, expression was ${TUNE_FEATURES_tune-x86-64} core2 wh=
ich triggered exception RecursionError: maximum recursion depth exceeded wh=
ile calling a Python object
ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/work=
/core2-64-poky-linux/google-protobuf/3.3.0-r0/temp/log.do_fetch.33980
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['virtual:native:/home/edson/ng-trunk/meta-=
extended/meta-oe/recipes-oe/node/nodejs_12.14.1.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: ['nodejs-native', 'pkgconfig-native', 'zlib=
-native', 'brotli-native', 'openssl-native', 'xz-native', 'quilt-native', '=
python3-native', 'icu-native', 'c-ares-native', 'libuv-native', 'gnu-config=
-native', 'libtool-native', 'automake-native', 'autoconf-native', 'ninja-na=
tive', 'cmake-native', 'gettext-minimal-native', 'readline-native', 'libffi=
-native', 'bzip2-native', 'sqlite3-native', 'libtirpc-native', 'util-linux-=
native', 'gdbm-native', 'libnsl2-native', 'unzip-native', 'texinfo-dummy-na=
tive', 'm4-native', 're2c-native', 'expat-native', 'ncurses-native', 'curl-=
native', 'libpcre2-native', 'libcap-ng-native']
| NOTE: Skipping as already exists in sysroot: []
| DEBUG: sed -e 's:^[^/]*/:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-=
poky-linux/google-protobuf/3.3.0-r0/recipe-sysroot-native/:g' /home/edson/n=
g-trunk/nodegrid/tmp/sysroots-components/x86_64/nodejs-native/fixmepath /ho=
me/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/pkgconfig-native/=
fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/open=
ssl-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/=
x86_64/quilt-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-co=
mponents/x86_64/python3-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/=
sysroots-components/x86_64/icu-native/fixmepath /home/edson/ng-trunk/nodegr=
id/tmp/sysroots-components/x86_64/gnu-config-native/fixmepath /home/edson/n=
g-trunk/nodegrid/tmp/sysroots-components/x86_64/libtool-native/fixmepath /h=
ome/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/automake-native/=
fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/auto=
conf-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components=
/x86_64/ncurses-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots=
-components/x86_64/curl-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/=
sysroots-components/x86_64/libpcre2-native/fixmepath | xargs sed -i -e 's:F=
IXMESTAGINGDIRTARGET:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-l=
inux/google-protobuf/3.3.0-r0/recipe-sysroot:g; s:FIXMESTAGINGDIRHOST:/home=
/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/google-protobuf/3.3.0=
-r0/recipe-sysroot-native:g' -e 's:FIXME_PSEUDO_SYSROOT:/home/edson/ng-trun=
k/nodegrid/tmp/sysroots-components/x86_64/pseudo-native:g' -e 's:FIXME_HOST=
TOOLS_DIR:/home/edson/ng-trunk/nodegrid/tmp/hosttools:g' -e 's:FIXME_PKGDAT=
A_DIR:/home/edson/ng-trunk/nodegrid/tmp/pkgdata/genericx86-64:g' -e 's:FIXM=
E_PSEUDO_LOCALSTATEDIR:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky=
-linux/google-protobuf/3.3.0-r0/pseudo/:g' -e 's:FIXME_LOGFIFO:/home/edson/=
ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/google-protobuf/3.3.0-r0/tem=
p/fifo.33980:g'
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing python function do_fetch
| DEBUG: Executing python function base_do_fetch
| DEBUG: Python function base_do_fetch finished
| DEBUG: Python function do_fetch finished
| ERROR: Failure expanding variable TUNE_FEATURES_tune-core2-64, expression=
 was ${TUNE_FEATURES_tune-x86-64} core2 which triggered exception Recursion=
Error: maximum recursion depth exceeded while calling a Python object
ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/google-=
protobuf/google-protobuf_3.3.0.bb:do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3501 tasks of which 3500 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/google-protobuf/go=
ogle-protobuf_3.3.0.bb:do_fetch
Summary: There were 2 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Thanks in advance.


Edson Seabra

Principal Engineer

M +1 510 579 0843

E   edson.seabra@zpesystems.com<mailto:alvin.chan@zpesystems.com>

[1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c=
90-8c28-e559c26bc7d1.png]
46757 Fremont Blvd., Fremont, CA 94538
zpesystems.com<https://www.zpesystems.com/> | Request a Nodegrid Demo<https=
://www.zpesystems.com/demo/>

--_000_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi, all</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I used recipetool to create the recipe for NPM packages</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If the npm package has dependence(s) it works great.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
But if not, the error below happens.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I just add a fake dependence in&nbsp;<span style=3D"font-family: Calibri, A=
rial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); display:=
 inline !important">npm-shrinkwrap.json<span>&nbsp; then it works</span></s=
pan></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span># cat google-protobuf/npm-shrinkwrap.json <br>
</span>
<div>{<br>
</div>
<div>&nbsp; &quot;name&quot;: &quot;google-protobuf&quot;,<br>
</div>
<div>&nbsp; &quot;version&quot;: &quot;3.3.0&quot;,<br>
</div>
<div>&nbsp; &quot;lockfileVersion&quot;: 1,<br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &quot;requires&quot;: =
true,</span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &quot;dependencies&quo=
t;: {</span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &nbsp; &quot;nan&quot;=
: {</span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &nbsp; &nbsp; &quot;ve=
rsion&quot;: &quot;2.14.1&quot;,</span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &nbsp; &nbsp; &quot;re=
solved&quot;: &quot;https://registry.npmjs.org/nan/-/nan-2.14.1.tgz&quot;,<=
/span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &nbsp; &nbsp; &quot;in=
tegrity&quot;: &quot;sha512-isWHgVjnFjh2x2yuJ/tj3JbwoHu3UC2dX5G/88Cm24yB6Yo=
pVgxvBObDY7n5xW6ExmFhJpSEQqFPvq9zaXc8Jw=3D=3D&quot;</span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; &nbsp; }</span><br>
</div>
<div><span style=3D"color: rgb(200, 38, 19);">&nbsp; }</span><br>
</div>
<div>}<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Another way to make it work is to replace the npmsw with file in SRC_URI</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
=3D=3D=3D=3D=3D=3D=3D=3D nan.bb =3D=3D=3D=3D=3D=3D=3D</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>SRC_URI =3D &quot; \<br>
</span>
<div>&nbsp; &nbsp; npm://registry.npmjs.org;package=3Dnan;version=3D${PV} \=
<br>
</div>
<div>&nbsp; &nbsp; file://npm-shrinkwrap.json;subdir=3Dnpm \<br>
</div>
<div>&nbsp; &nbsp; &quot;<br>
</div>
<div>S =3D &quot;${WORKDIR}/npm&quot;<br>
</div>
<div><br>
</div>
<div>inherit npm<br>
</div>
<div><br>
</div>
<div>=3D=3D=3D=3D=3D=3D=3D&nbsp;<span style=3D"font-family: Calibri, Arial,=
 Helvetica, sans-serif; background-color: rgb(255, 255, 255); display: inli=
ne !important">google-protobuf.bb =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></di=
v>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; bac=
kground-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<span></span>&nbsp;<span>SRC_URI =3D &quot; \<br>
</span>
<div>&nbsp; &nbsp; npm://registry.npmjs.org/;package=3Dgoogle-protobuf;vers=
ion=3D${PV} \<br>
</div>
<div>&nbsp; &nbsp; npmsw://${THISDIR}/${BPN}/npm-shrinkwrap.json \<br>
</div>
<div>&nbsp; &nbsp; &quot;<br>
</div>
<div><br>
</div>
<div>S =3D &quot;${WORKDIR}/npm&quot;<br>
</div>
<div><br>
</div>
<div>inherit npm<br>
</div>
<div><br>
</div>
<span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
=3D=3D=3D=3D=3D=3D error =3D=3D=3D=3D=3D=3D</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>ERROR: google-protobuf-3.3.0-r0 do_fetch: Failure expanding variable =
TUNE_FEATURES_tune-core2-64, expression was ${TUNE_FEATURES_tune-x86-64} co=
re2 which triggered exception RecursionError: maximum recursion depth excee=
ded while calling a Python object<br>
</span>
<div>ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/google-protobuf/3.3.0-r0/temp/log.do_fetch.33980<=
br>
</div>
<div>Log data follows:<br>
</div>
<div>| DEBUG: Executing python function extend_recipe_sysroot<br>
</div>
<div>| NOTE: Direct dependencies are ['virtual:native:/home/edson/ng-trunk/=
meta-extended/meta-oe/recipes-oe/node/nodejs_12.14.1.bb:do_populate_sysroot=
']<br>
</div>
<div>| NOTE: Installed into sysroot: ['nodejs-native', 'pkgconfig-native', =
'zlib-native', 'brotli-native', 'openssl-native', 'xz-native', 'quilt-nativ=
e', 'python3-native', 'icu-native', 'c-ares-native', 'libuv-native', 'gnu-c=
onfig-native', 'libtool-native',
 'automake-native', 'autoconf-native', 'ninja-native', 'cmake-native', 'get=
text-minimal-native', 'readline-native', 'libffi-native', 'bzip2-native', '=
sqlite3-native', 'libtirpc-native', 'util-linux-native', 'gdbm-native', 'li=
bnsl2-native', 'unzip-native', 'texinfo-dummy-native',
 'm4-native', 're2c-native', 'expat-native', 'ncurses-native', 'curl-native=
', 'libpcre2-native', 'libcap-ng-native']<br>
</div>
<div>| NOTE: Skipping as already exists in sysroot: []<br>
</div>
<div>| DEBUG: sed -e 's:^[^/]*/:/home/edson/ng-trunk/nodegrid/tmp/work/core=
2-64-poky-linux/google-protobuf/3.3.0-r0/recipe-sysroot-native/:g' /home/ed=
son/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/nodejs-native/fixmepat=
h /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/pkgconfig-na=
tive/fixmepath
 /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/openssl-nativ=
e/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/qu=
ilt-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/=
x86_64/python3-native/fixmepath
 /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/icu-native/fi=
xmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/gnu-co=
nfig-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components=
/x86_64/libtool-native/fixmepath
 /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/automake-nati=
ve/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/a=
utoconf-native/fixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-compone=
nts/x86_64/ncurses-native/fixmepath
 /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/curl-native/f=
ixmepath /home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/libpc=
re2-native/fixmepath | xargs sed -i -e 's:FIXMESTAGINGDIRTARGET:/home/edson=
/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/google-protobuf/3.3.0-r0/re=
cipe-sysroot:g;
 s:FIXMESTAGINGDIRHOST:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky=
-linux/google-protobuf/3.3.0-r0/recipe-sysroot-native:g' -e 's:FIXME_PSEUDO=
_SYSROOT:/home/edson/ng-trunk/nodegrid/tmp/sysroots-components/x86_64/pseud=
o-native:g' -e 's:FIXME_HOSTTOOLS_DIR:/home/edson/ng-trunk/nodegrid/tmp/hos=
ttools:g'
 -e 's:FIXME_PKGDATA_DIR:/home/edson/ng-trunk/nodegrid/tmp/pkgdata/genericx=
86-64:g' -e 's:FIXME_PSEUDO_LOCALSTATEDIR:/home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/google-protobuf/3.3.0-r0/pseudo/:g' -e 's:FIXME_L=
OGFIFO:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/google-pr=
otobuf/3.3.0-r0/temp/fifo.33980:g'<br>
</div>
<div>| DEBUG: Python function extend_recipe_sysroot finished<br>
</div>
<div>| DEBUG: Executing python function do_fetch<br>
</div>
<div>| DEBUG: Executing python function base_do_fetch<br>
</div>
<div>| DEBUG: Python function base_do_fetch finished<br>
</div>
<div>| DEBUG: Python function do_fetch finished<br>
</div>
<div>| ERROR: Failure expanding variable TUNE_FEATURES_tune-core2-64, expre=
ssion was ${TUNE_FEATURES_tune-x86-64} core2 which triggered exception Recu=
rsionError: maximum recursion depth exceeded while calling a Python object<=
br>
</div>
<div>ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/go=
ogle-protobuf/google-protobuf_3.3.0.bb:do_fetch) failed with exit code '1'<=
br>
</div>
<div>NOTE: Tasks Summary: Attempted 3501 tasks of which 3500 didn't need to=
 be rerun and 1 failed.<br>
</div>
<div><br>
</div>
<div>Summary: 1 task failed:<br>
</div>
<div>&nbsp; /home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/google-p=
rotobuf/google-protobuf_3.3.0.bb:do_fetch<br>
</div>
<div>Summary: There were 2 WARNING messages shown.<br>
</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
</div>
<span></span><br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks in advance.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; background-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,san=
s-serif">
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
<div class=3D"x_MsoNormal" style=3D"margin:0px 0in 0.000133333px; font-size=
:11pt; font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<a style=3D"margin:0px; font-size:11pt; font-family:Calibri,sans-serif; tex=
t-align:start; background-color:rgb(255,255,255)"><font face=3D"Source Sans=
 Pro" size=3D"2" color=3D"#0BABC6"><span style=3D"margin:0px; font-size:10p=
t"><b>Edson Seabra</b></span></font></a><br>
</div>
<p class=3D"x_MsoNormal" style=3D"margin-top:0px; margin-bottom:0px; margin=
:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-serif; color:rg=
b(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Principal Engineer</sp=
an></p>
<p class=3D"x_MsoNormal" style=3D"margin-top:0px; margin-bottom:0px; margin=
:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-serif; color:rg=
b(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">M &#43;1 510 579 0843<=
/span></p>
<div><span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;=
,serif,EmojiFont; color:rgb(96,109,117)"><b>E&nbsp;&nbsp;&nbsp;</b></span><=
a href=3D"mailto:alvin.chan@zpesystems.com" target=3D"_blank" rel=3D"noopen=
er noreferrer" id=3D"LPNoLP" style=3D"font-size:12pt; font-family:Calibri">=
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(5,99,193)">edson.seabra@zpesystems.com</span></a><br=
>
</div>
<div>
<p style=3D"margin-top:0px; margin-bottom:0px; margin:0in 0in 0.0001pt; fon=
t-size:12pt; font-family:Calibri">
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(96,109,117)"></span></p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin:0in 0in 0.0001pt; fon=
t-size:12pt; font-family:Calibri">
<span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,seri=
f,EmojiFont; color:rgb(96,109,117)"><img class=3D"EmojiInsert" alt=3D"15061=
69147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8c2=
8-e559c26bc7d1.png" style=3D"" data-outlook-trace=3D"F:1|T:1" src=3D"cid:ea=
ae7978-dad5-419a-b1f4-c24b89ae2582"><br>
<span class=3D"contextualExtensionHighlight ms-font-color-themePrimary ms-b=
order-color-themePrimary ident_378_416" tabindex=3D"0">46757 Fremont Blvd.,=
 Fremont, CA 94538</span><br>
</span><a href=3D"https://www.zpesystems.com/" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><b><span style=3D"font-size:10pt; font-fami=
ly:&quot;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)">zpes=
ystems.com</span></b></a><b><span style=3D"font-size:10pt; font-family:&quo=
t;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)">&nbsp;|&nbs=
p;</span></b><b><span style=3D"font-size:10pt; font-family:&quot;Source San=
s Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)"><a href=3D"https://www.=
zpesystems.com/demo/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"L=
PNoLP">Request
 a Nodegrid Demo</a></span></b></p>
</div>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_--

--_004_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Description: Outlook-1506169147.png
Content-Disposition: inline; filename="Outlook-1506169147.png"; size=2497;
	creation-date="Sat, 30 May 2020 14:07:17 GMT";
	modification-date="Sat, 30 May 2020 14:07:17 GMT"
Content-ID: <eaae7978-dad5-419a-b1f4-c24b89ae2582>
Content-Transfer-Encoding: base64

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

--_004_MWHPR19MB12328A734CB8167F571A5CE4F78C0MWHPR19MB1232namp_--
