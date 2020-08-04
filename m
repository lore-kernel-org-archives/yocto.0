Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.66])
 by mx.groups.io with SMTP id smtpd.web11.7405.1596553917898597351
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 08:11:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tandemg.com header.s=selector1 header.b=eQ7dmVg0;
 spf=pass (domain: tandemg.com, ip: 40.107.21.66, mailfrom: itai.kleiman@tandemg.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ToNE2ZkHsG4LIYbBIKpCxNotuVK5RPiMNP34b7M3JmBKH5/eID9s9YbZSxa3UdYMzGlAAZQDVFSIlU45z3XIDeV5mwTxAwkVKhULFvQxDLubv8YzPo4KWZTPtyZdaRUzEU8KvmCMxvZvUG155xQOtK0Bt2OMqjYa1ANK/gtvvGD/xx1HNgFx4fqI4YWZtouWYbawcBCDv/KlzD5W3EVuwEWuLKzSZR3AQOgRgF0FoXD6VbSxHyYaJ475io4jaB+kxZkUcxR0h1tnO1SmHJSRbUHg4CfHdfI8ZYXFH8iRofQNsGDo888HF1MNNppu8yXMntqIC9iCk8R2MtpeuRZX1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3z0hVCoPa99a2Qb/UkN8HtD5nCdcYx6f+6ONyUBxV0=;
 b=MQ/E/1n1RdbL1ZK2JJTh7h0VMJ1/WEf8J2N8M1HcaqDwn/t3sXKjbUkG4fVCHnSIagunsc6454fa60xUbYzQeOc8suPGKz2dmgEB2pd/M7tEAs4TQ1KgVk3v/QUihTknV8gmXl0cjonJDm9iNpwKnkK4fw5lmq/AJxvef+7WX1nIPk5deljMOVk4Js/NP80dp9iAqKnKvOS71WL13P7buxStqncGzJHmCeJaluNp4kEjpbXQksk0dkcrgjnU72MH6wwFUWF6SpQdLd17/6tfpBbpGNDu8wmmQoyqvIXpO6KnggkyDG2xYJXGKkg2jf2+Tu1QC9Yvgc0d8n2TRQUIAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tandemg.com; dmarc=pass action=none header.from=tandemg.com;
 dkim=pass header.d=tandemg.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tandemg.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D3z0hVCoPa99a2Qb/UkN8HtD5nCdcYx6f+6ONyUBxV0=;
 b=eQ7dmVg0lzRN5e5zGWj7zEoMbG3R+/yrRkv/jNwKJUjDl2bZcybtCJGNTn3NjZkHWMnT0j52kx2Hrk5SiwepxIjj89IEQl4n6PIweF9HEIm6UKFE4A/fuM8zk/407P/jc26qQhJzR5dnejhbDEO668viQX4VbzlsXMljs2kYaroPb513G2hEY17lrMhGHDCguPZwps9BCp8TLs2HaNloY6km++HRYDxPh6PA1etFivXRbax6LJizlHH5mKO0tGh6mSAd/z74m1v2WxtsoOTtwDVCatBkyXpH/uE7IFD4eSQ5w3XMITHEt6bUsUMhylt3RKQy803prLYaWYP+NXxCaw==
Received: from AM0PR0602MB3395.eurprd06.prod.outlook.com
 (2603:10a6:208:21::21) by AM0PR06MB6516.eurprd06.prod.outlook.com
 (2603:10a6:208:196::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16; Tue, 4 Aug
 2020 15:11:55 +0000
Received: from AM0PR0602MB3395.eurprd06.prod.outlook.com
 ([fe80::118f:eac5:fa89:526a]) by AM0PR0602MB3395.eurprd06.prod.outlook.com
 ([fe80::118f:eac5:fa89:526a%6]) with mapi id 15.20.3239.022; Tue, 4 Aug 2020
 15:11:55 +0000
From: itai.kleiman@tandemg.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: do_package() failing due to "no attribute"
Thread-Topic: do_package() failing due to "no attribute"
Thread-Index: AQHWamlSr9esahZ6j0WKxFF3QarkfKkoDRue
Date: Tue, 4 Aug 2020 15:11:55 +0000
Message-ID: 
 <AM0PR0602MB339594A583319B969BD00461974A0@AM0PR0602MB3395.eurprd06.prod.outlook.com>
References: 
 <AM0PR0602MB3395AA49CAF5626EBEF0D57A974A0@AM0PR0602MB3395.eurprd06.prod.outlook.com>
In-Reply-To: 
 <AM0PR0602MB3395AA49CAF5626EBEF0D57A974A0@AM0PR0602MB3395.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=tandemg.com;
x-originating-ip: [84.95.243.50]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79f186f4-c548-443f-8690-08d83888b97f
x-ms-traffictypediagnostic: AM0PR06MB6516:
x-microsoft-antispam-prvs: 
 <AM0PR06MB6516EA62FFDE5B145AFDCF27974A0@AM0PR06MB6516.eurprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QQfbijMM20VBJFPDrT9Nemj7kresEKX8b/IlKwq9uujzgLkqEJs9VRGQ7KIQR8v5KZgeg/RMUdFfNZXXZXNTn4aefZVLuHCqL/q1qxPQ+0j6gto/093ZdUr0UJbFT3eFRDEoQbRPmLhv1jK4Up6WT8oCWRZVIuRJeI6ntVbFjYpDf8/ottkmyU+CNgrbjXDJcXMXtMvaqk1gulfMEPIFch+GRNb5Y7h3qdLxyV1gMWMFZk3FD3r6xcTpjY7AcmV7AZ9BbewBJaBlabufape8j+BFu/TJBFxvX4DofURJo5aqaNr+z91Xl9XVVzRFZxh+3U53w5X1h98GwP+St+0IhfW3kFpZf5HWDopJhFnEZ0wAomiRxzEAU19eB7T1nNkPb5gROxE+P+EVZD8yZlKxaA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR0602MB3395.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(136003)(376002)(366004)(39840400004)(346002)(83380400001)(86362001)(6916009)(8676002)(316002)(508600001)(71200400001)(2906002)(8936002)(76116006)(64756008)(26005)(2940100002)(9686003)(44832011)(52536014)(55016002)(66946007)(5660300002)(7696005)(6506007)(66476007)(66556008)(19627405001)(66446008)(33656002)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 +2B+kpezKyF6Xr7tX4jtZEv1ldLvUsI4Be/06GPykrREtFKWsYu1XRxHI4o8jVOvhZajvpHmFamRI1aPtov+XNYLDYEbP34YitSDdZ25+xV1dI8TgIdb7peDDuWr/ZR0lmGZ32geo/bT00azgfJETB56q/jqdKxur3mTWiumTE0jSTfL3LiROE7FHdlGOrljf/aaoaO0Vfd60Od9+ourjZPUQBMMJW10bba8RJz4cDGKqhcUVfFg7RaFAE1+w3fOL7E9DYWxHbiTVoGQdEI3+1/kCEntK8Zokpj3mfjmQ2xmlznrqZKs0RTFnJeGVkg2ZWkJBmpjddAH2sVWHOY/VjPtMqT33jx2EMpS6mDu8Ba+JjwauINXrx1bDdrx90TU9Zil0AMzRTalzFFXhu58fzwByzFjjrcmRsWtAAsTKLK6Q8fGAra79b/Dkmtpmqo4MhSBVHBje3B9hvwVCJHQei+RkGh1RhWZ34Un92znutwdj3Bcm72cU126Ii2DYmq/IYsqEE6rvDEQRLH9N7pnXITmVgrU4QoR9VhklknygtXOeF18oBmIFmr88zp3W0CnRlytBEeoz5UmtIhfTUbEYsvXU3btiUQbUpZmyp/Qj99rAzuDrew457aOd5h+0BlJMqY/QDTSEkBAqy0TItW+Fw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: tandemg.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR0602MB3395.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f186f4-c548-443f-8690-08d83888b97f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2020 15:11:55.0136
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cd9e0716-88a7-42c4-a82b-7a64f204926d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5wdqQkuJ1b6IYP6L30GvkSnHLCb3Wz2pm83SYmSpP0wKheDkEhJxJjZ+OpxnpnvEQoplzg/MLE1YzyezGpI5ll47MmtZCPmUPLbvE6RoCW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB6516
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR0602MB339594A583319B969BD00461974A0AM0PR0602MB3395_"

--_000_AM0PR0602MB339594A583319B969BD00461974A0AM0PR0602MB3395_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I wrote a recipe (.bb file) for xerces-c 2.8 version.
I run the command 'bitbake xerces-c -vvv' in order to build the package and=
 I get the following error:
ERROR: xerces-c-2.8.0-r2 do_package: Error executing a python function in e=
xec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:populate_packages(d)
     0003:
File: '/media/poky/meta/classes/package.bbclass', lineno: 1164, function: p=
opulate_packages
     1160:                    if not cpath.exists(os.path.join(dest, p)):
     1161:                        mkdir(src, dest, p)
     1162:
     1163:            if cpath.isdir(file) and not cpath.islink(file):
 *** 1164:                mkdir_recurse(dvar, root, file)
     1165:                continue
     1166:
     1167:            mkdir_recurse(dvar, root, os.path.dirname(file))
     1168:            fpath =3D os.path.join(root,file)
File: '/media/poky/meta/classes/package.bbclass', lineno: 1161, function: m=
kdir_recurse
     1157:                p =3D "."
     1158:                for c in paths.split("/"):
     1159:                    p =3D os.path.join(p, c)
     1160:                    if not cpath.exists(os.path.join(dest, p)):
 *** 1161:                        mkdir(src, dest, p)
     1162:
     1163:            if cpath.isdir(file) and not cpath.islink(file):
     1164:                mkdir_recurse(dvar, root, file)
     1165:                continue
File: '/media/poky/meta/classes/package.bbclass', lineno: 1146, function: m=
kdir
     1142:            def mkdir(src, dest, p):
     1143:                src =3D os.path.join(src, p)
     1144:                dest =3D os.path.join(dest, p)
     1145:                fstat =3D cpath.stat(src)
 *** 1146:                os.mkdir(dest, fstat.st_mode)
     1147:                os.chown(dest, fstat.st_uid, fstat.st_gid)
     1148:                if p not in seen:
     1149:                    seen.append(p)
     1150:                cpath.updatecache(dest)
Exception: AttributeError: 'bool' object has no attribute 'st_mode'

ERROR: xerces-c-2.8.0-r2 do_package: Function failed: populate_packages
ERROR: Logfile of failure stored in: /media/poky/build/tmp/work/mips64r2-po=
ky-linux/xerces-c/2.8.0-r2/temp/log.do_package.3467
ERROR: Task (/media/poky/meta-my/recipes-my-packages/xerces-c/xerces-c_2.8.=
0.bb:do_package) failed with exit code '1'

the recipe:
DESCRIPTION =3D "Xerces-c is a validating xml parser written in C++"
HOMEPAGE =3D "http://xerces.apache.org/xerces-c/"
SECTION =3D  "libs"
PRIORITY =3D "optional"
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://../../LICENSE;md5=3D3b83ef96387f14655fc854ddc3=
c6bd57"

SRC_URI =3D " file://xerces-c-src_2_8_0.tar.gz"
SRC_URI[md5sum] =3D "5daf514b73f3e0de9e3fce704387c0d2"
S =3D "${WORKDIR}/xerces-c-src_2_8_0/src/xercesc"
FILES_${PN} +=3D "${libdir}/../local/*
inherit autotools pkgconfig

CCACHE =3D ""

export XERCESCROOT=3D"${WORKDIR}/xerces-c-src_2_8_0/"
export cross_compiling =3D "yes"

export SDKTARGETSYSROOT =3D "${TMPDIR}/sysroots/x86_64-linux/usr/bin/mips64=
-poky-linux/"

do_configure() {
cd ${S}
./runConfigure -plinux -minmem -nsocket -rpthread -z--sysroot=3D${TMPDIR}/s=
ysroots/${MACHINE} \
                    -C--build=3D${BUILD_SYS} \
                    -C--host=3D${HOST_SYS} \
                    -C--target=3D${TARGET_SYS}
}

do_compile() {
cd ${S}
${MAKE} CXX=3D"mips64-poky-linux-g++  -meb -mabi=3D64 -mhard-float -march=
=3Dmips64r2 -march=3Dxlp --sysroot=3D${TMPDIR}/sysroots/${MACHINE}" CC=3D"m=
ips64-poky-linux-gcc  -meb -mabi=3D64 -mhard-float -march=3Dmips64r2 -march=
=3Dxlp --sysroot=3D${TMPDIR}/sysroots/${MACHINE}"  AR=3D"mips64-poky-linux-=
ar" LDFLAGS=3D"-L/${TMPDIR}/sysroots/${MACHINE}/usr/lib -Wl,-O1  -Wl,--as-n=
eeded"
}


do_install () {
cd ${S}
${MAKE} install DESTDIR=3D${D}
}



I'm using yocto-2.2.4.

Any idea what is the problem?

Thank you,
Itai



--_000_AM0PR0602MB339594A583319B969BD00461974A0AM0PR0602MB3395_
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
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi, <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
I wrote a recipe (.bb file) for xerces-c 2.8 version.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I run the command 'bitbake xerces-c -vvv' in order to build the package and=
 I get the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px; margin-bottom:0px"><span style=3D"colo=
r:rgb(200,38,19)">ERROR: xerces-c-2.8.0-r2 do_package: Error executing a py=
thon function in exec_python_func() autogenerated:</span>
<div><br>
</div>
<div><span style=3D"color:rgb(200,38,19)">The stack trace of python calls t=
hat resulted in this exception/failure was:</span></div>
<div><span style=3D"color:rgb(200,38,19)">File: 'exec_python_func() autogen=
erated', lineno: 2, function: &lt;module&gt;</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;0001:</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp;*** 0002:populate_packages(=
d)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;0003:</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">File: '/media/poky/meta/classes/p=
ackage.bbclass', lineno: 1164, function: populate_packages</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1160: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if not cpath.=
exists(os.path.join(dest, p)):</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1161: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;mkdir(src, dest, p)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1162:</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1163: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if cpath.isdir(file) and not cpath.islink=
(file):</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp;*** 1164: &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mkdir_recurse(dvar, root, file)</span=
></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1165: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;continue</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1166:</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1167: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mkdir_recurse(dvar, root, os.path.dirname=
(file))</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1168: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fpath =3D os.path.join(root,file)</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">File: '/media/poky/meta/classes/p=
ackage.bbclass', lineno: 1161, function: mkdir_recurse</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1157: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p =3D &quot;.&quot;</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1158: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;for c in paths.split(&quot;=
/&quot;):</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1159: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;p =3D os.path=
.join(p, c)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1160: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if not cpath.=
exists(os.path.join(dest, p)):</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp;*** 1161: &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mkdir(src=
, dest, p)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1162:</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1163: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if cpath.isdir(file) and not cpath.islink=
(file):</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1164: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mkdir_recurse(dvar, root, f=
ile)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1165: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;continue</span></div>
<div><span style=3D"color:rgb(200,38,19)">File: '/media/poky/meta/classes/p=
ackage.bbclass', lineno: 1146, function: mkdir</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1142: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;def mkdir(src, dest, p):</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1143: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;src =3D os.path.join(src, p=
)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1144: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dest =3D os.path.join(dest,=
 p)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1145: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fstat =3D cpath.stat(src)</=
span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp;*** 1146: &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;os.mkdir(dest, fstat.st_mode)</span><=
/div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1147: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;os.chown(dest, fstat.st_uid=
, fstat.st_gid)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1148: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if p not in seen:</span></d=
iv>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1149: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;seen.append(p=
)</span></div>
<div><span style=3D"color:rgb(200,38,19)">&nbsp; &nbsp; &nbsp;1150: &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cpath.updatecache(dest)</sp=
an></div>
<div><span style=3D"color:rgb(200,38,19)">Exception: AttributeError: 'bool'=
 object has no attribute 'st_mode'</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(200,38,19)">ERROR: xerces-c-2.8.0-r2 do_packa=
ge: Function failed: populate_packages</span></div>
<div><span style=3D"color:rgb(200,38,19)">ERROR: Logfile of failure stored =
in: /media/poky/build/tmp/work/mips64r2-poky-linux/xerces-c/2.8.0-r2/temp/l=
og.do_package.3467</span></div>
<div><span style=3D"color:rgb(200,38,19)">ERROR: Task (/media/poky/meta-my/=
recipes-my-packages/xerces-c/xerces-c_2.8.0.bb:do_package) failed with exit=
 code '1</span>'</div>
</blockquote>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<b>the recipe:</b></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<blockquote style=3D"margin-top:0px; margin-bottom:0px">DESCRIPTION =3D &qu=
ot;Xerces-c is a validating xml parser written in C++&quot;
<div>HOMEPAGE =3D &quot;http://xerces.apache.org/xerces-c/&quot;</div>
<div>SECTION =3D &nbsp;&quot;libs&quot;</div>
<div>PRIORITY =3D &quot;optional&quot;</div>
<div>LICENSE =3D &quot;Apache-2.0&quot;</div>
<div>LIC_FILES_CHKSUM =3D &quot;file://../../LICENSE;md5=3D3b83ef96387f1465=
5fc854ddc3c6bd57&quot;</div>
<div><br>
</div>
<div>SRC_URI =3D &quot; file://xerces-c-src_2_8_0.tar.gz&quot;</div>
<div>SRC_URI[md5sum] =3D &quot;5daf514b73f3e0de9e3fce704387c0d2&quot;</div>
<div>S =3D &quot;${WORKDIR}/xerces-c-src_2_8_0/src/xercesc&quot;</div>
<div>FILES_${PN} +=3D &quot;${libdir}/../local/*</div>
<div>inherit autotools pkgconfig</div>
<div><br>
</div>
<div>CCACHE =3D &quot;&quot;</div>
<div><br>
</div>
<div>export XERCESCROOT=3D&quot;${WORKDIR}/xerces-c-src_2_8_0/&quot;</div>
<div>export cross_compiling =3D &quot;yes&quot;</div>
<div><br>
</div>
<div>export SDKTARGETSYSROOT =3D &quot;${TMPDIR}/sysroots/x86_64-linux/usr/=
bin/mips64-poky-linux/&quot;</div>
<div><br>
</div>
<div>do_configure() {</div>
<blockquote style=3D"margin-top:0px; margin-bottom:0px">cd ${S}
<div>./runConfigure -plinux -minmem -nsocket -rpthread -z--sysroot=3D${TMPD=
IR}/sysroots/${MACHINE} \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
-C--build=3D${BUILD_SYS} \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
-C--host=3D${HOST_SYS} \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
-C--target=3D${TARGET_SYS}</div>
</blockquote>
<div>}</div>
<div><br>
</div>
<div>do_compile() {
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div>cd ${S}</div>
<div>${MAKE} CXX=3D&quot;mips64-poky-linux-g++ &nbsp;-meb -mabi=3D64 -mhard=
-float -march=3Dmips64r2 -march=3Dxlp --sysroot=3D${TMPDIR}/sysroots/${MACH=
INE}&quot; CC=3D&quot;mips64-poky-linux-gcc &nbsp;-meb -mabi=3D64 -mhard-fl=
oat -march=3Dmips64r2 -march=3Dxlp --sysroot=3D${TMPDIR}/sysroots/${MACHINE=
}&quot;
 &nbsp;AR=3D&quot;mips64-poky-linux-ar&quot; LDFLAGS=3D&quot;-L/${TMPDIR}/s=
ysroots/${MACHINE}/usr/lib -Wl,-O1 &nbsp;-Wl,--as-needed&quot;</div>
</blockquote>
<div>}</div>
<br>
<br>
</div>
do_install () {
<blockquote style=3D"margin-top:0px; margin-bottom:0px">
<div>cd ${S}<br>
</div>
<div>${MAKE} install DESTDIR=3D${D}</div>
</blockquote>
<div>}</div>
</blockquote>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>I'm using yocto-2.2.4.</div>
<div><br>
</div>
<div>Any idea what is the problem?</div>
<div><br>
</div>
<div>Thank you,</div>
<div>Itai<br>
</div>
<br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_AM0PR0602MB339594A583319B969BD00461974A0AM0PR0602MB3395_--
