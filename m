Return-Path: <Edson.Seabra@zpesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3188E00CAA; Sat, 11 May 2019 17:56:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.81.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 4940 seconds by postgrey-1.32 at yocto-www;
	Sat, 11 May 2019 17:56:42 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810090.outbound.protection.outlook.com [40.107.81.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 469ADE008F2
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 17:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ZPESystems.onmicrosoft.com; s=selector1-zpesystems-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5WlZH5Hpuk+O14FRpqcRjbRyW7/W8vPEDiZ8NEocrHc=;
	b=fv4gNlsJV/ZPvGcXlg8ZwSObMiL2udIAac++yOjUkWAwFjO0sdtwDBTcmPDuobWIvEyumusSeYkXdnm96k7xCiqUk6HYxOqgmuCM90yDVdKkBav9WcYLgz+iDBRlFNIDroBk9AuJNAS4mARQ37b4IT8/p4xnDBkE3qp8cytdMyI=
Received: from DM6PR19MB2796.namprd19.prod.outlook.com (20.178.231.150) by
	DM6PR19MB2476.namprd19.prod.outlook.com (20.179.104.26) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1878.21; Sat, 11 May 2019 13:59:28 +0000
Received: from DM6PR19MB2796.namprd19.prod.outlook.com
	([fe80::f080:2a5:3e58:fab5]) by DM6PR19MB2796.namprd19.prod.outlook.com
	([fe80::f080:2a5:3e58:fab5%5]) with mapi id 15.20.1878.019;
	Sat, 11 May 2019 13:59:28 +0000
From: Edson Seabra <Edson.Seabra@zpesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build error on dockerode using YP-Core warrior 2.7
Thread-Index: AQHVCACSWSlmAtP2nUS7TjvBdbECMQ==
Date: Sat, 11 May 2019 13:59:27 +0000
Message-ID: <DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0@DM6PR19MB2796.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edson.Seabra@zpesystems.com; 
x-originating-ip: [189.34.225.26]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e3d70e0-6bbf-4b26-7e0f-08d6d618e237
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(49563074)(7193020);
	SRVR:DM6PR19MB2476; 
X-MS-TrafficTypeDiagnostic: DM6PR19MB2476:|DM6PR19MB2476:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DM6PR19MB247621A648962F58AFE313CBF70D0@DM6PR19MB2476.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00342DD5BC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39830400003)(396003)(376002)(366004)(346002)(136003)(199004)(189003)(51874003)(6306002)(54556002)(54896002)(5660300002)(55016002)(236005)(9686003)(6916009)(66616009)(53936002)(86362001)(52536014)(316002)(19627405001)(53946003)(66476007)(2906002)(2351001)(91956017)(64756008)(66446008)(68736007)(73956011)(25786009)(76116006)(66946007)(6436002)(733005)(71190400001)(71200400001)(72206003)(508600001)(66556008)(14454004)(5640700003)(6606003)(102836004)(486006)(99936001)(186003)(2501003)(14444005)(6506007)(33656002)(256004)(26005)(861006)(81156014)(7696005)(606006)(66066001)(6116002)(3846002)(8936002)(99286004)(476003)(7736002)(1730700003)(8676002)(81166006)(74316002)(579004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR19MB2476;
	H:DM6PR19MB2796.namprd19.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: zpesystems.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u5IUWh5Gee6RUMAnh0A4w9NF6ET8W0mVnLFntIzxWf+2B+8Qvry3ry5Oh/vY1MR8H+PSNE7MLF7VWuWCn2NOOd+ZNpSMq6AfzTHB05r3C1SeLcmkWigkWzOgircJ4qylISJYLeTE/QCQD1L+HZ4XbddaKt/WSyqqouHlK3Y8YR6XzPYoyRosu8GQ7/i5GGzv4dvdgIETIruw5iSwPsdhH6dRK/lZJj2ccIpwnoxIA7q/L7JLMPKGrmY/V41T/WB723VfYouaqNBRO7sky5jKUpsv+hbpBf0rOW3vBVvPo9HYZQdGmEuWu4zj83/ZGhZ7sr3EEX+4Kn094t1n5i5TNXvQyY5lA+154/pq/1HnOe17/l/M9bIsAHu8wQmev1K30SoCJ38Sr1huxn2NOI4+eauTSnCfHg51pG00e6Wbi8g=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e3d70e0-6bbf-4b26-7e0f-08d6d618e237
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2019 13:59:28.0029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB2476
X-OriginatorOrg: zpesystems.com
Subject: Build error on dockerode using YP-Core warrior 2.7
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
X-List-Received-Date: Sun, 12 May 2019 00:56:45 -0000
X-Groupsio-MsgNum: 45126
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_";
	type="multipart/alternative"

--_004_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_"

--_000_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I created the recipe for dockerode 2.5.8 using the command recipetool:


recipetool create "npm://registry.npmjs.org;name=3Ddockerode;version=3D2.5.=
8"


The recipe creates a lot of ipk's package and fails on dockerode-JSONStream=
 ipk.


I can build dokerode with YP-Coce morty, almost sure I did with YP-Core thu=
d.


Any hint about how to find what  is this issue will be appreciated.


NOTE. Other recipes, using npm.bbclass, build normally.


If any additional information is needed just let me know...


=3D=3D=3D=3D here is the output of bitbake dockerode =3D=3D=3D=3D=3D=3D

Build Configuration:

BB_VERSION           =3D "1.42.0"

BUILD_SYS            =3D "x86_64-linux"

NATIVELSBSTRING      =3D "universal"

TARGET_SYS           =3D "x86_64-poky-linux"

MACHINE              =3D "genericx86-64"

DISTRO               =3D "node-poky"

DISTRO_VERSION       =3D "2.7"

TUNE_FEATURES        =3D "m64 core2"

TARGET_FPU           =3D ""

IMAGE_LINGUAS        =3D "en-us en-gb"

MACHINE_FEATURES     =3D "screen keyboard pci usbhost ext4 x86 acpi pcbios =
rtc"

IMAGE_FSTYPES        =3D "hddimg"

DISTRO_FEATURES      =3D "argp pam largefile xattr nfs pci x11 ipv4 ipv6 li=
bc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-char=
sets libc-crypt libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmt=
msg libc-fstab libc-ftraverse libc-getlogin libc-idn libc-inet-anl libc-lib=
m libc-locales libc-locale-code libc-memusage libc-nis libc-nsswitch libc-r=
cmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc libc-utmp libc-utmp=
x libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-g=
libc libc-posix-wchar-io multiarch sysvinit opengl pulseaudio wifi virtuali=
zation"

IMAGE_FEATURES       =3D "package-management read-only-rootfs tools-debug"

meta-nodegrid

meta-kernel          =3D "trunk:11630-11620"

meta-zpe             =3D "trunk:11630-11629"

meta-oe              =3D "trunk:11630-11620"

meta-graphics        =3D "trunk:11630-11172"

meta-networking      =3D "trunk:11630-11560"

meta-python          =3D "trunk:11630-11620"

meta-selinux         =3D "master:b1dac7e2b26f869c991c6492aa7fa18eaa4b47f6"

meta-virtualization  =3D "trunk:11630-11620"

meta-tpm2            =3D "trunk:11630-11090"

meta-java            =3D "master:2fc78571483465ca2fc69d6bd77632acd35e0770"

meta

meta-poky

meta-yocto-bsp       =3D "warrior:1b425a8450872f915c30bd0a35b0b0df92172b70"


Initialising tasks: 100% |#################################################=
###########| Time: 0:00:02

Sstate summary: Wanted 33 Found 27 Missed 6 Current 365 (81% match, 98% com=
plete)

NOTE: Executing SetScene Tasks

NOTE: Executing RunQueue Tasks

WARNING: dockerode-2.5.8-r0 do_populate_lic: dockerode: No generic license =
file exists for: Unknown in any provider

ERROR: dockerode-2.5.8-r0 do_package_write_ipk: Fatal errors occurred in su=
bprocesses:

Command 'PATH=3D"/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_6=
4-linux/usr/bin:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/node=
grid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/=
usr/bin/x86_64-poky-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-p=
oky-linux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/crossscripts:/home/edso=
n/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-=
sysroot-native/usr/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-pok=
y-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin:/home/edson/ng-tru=
nk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-=
native/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dock=
erode/2.5.8-r0/recipe-sysroot-native/bin:/home/edson/ng-trunk/poky/bitbake/=
bin:/home/edson/ng-trunk/nodegrid/tmp/hosttools" opkg-build -Z xz -a "--mem=
limit=3D50% --threads=3D4" dockerode-JSONStream /home/edson/ng-trunk/nodegr=
id/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/deploy-ipks/core2-64' re=
turned non-zero exit status 1.: Traceback (most recent call last):

  File "/home/edson/ng-trunk/poky/meta/lib/oe/utils.py", line 272, in run

    ret =3D self._target(*self._args, **self._kwargs)

  File "/home/edson/ng-trunk/poky/meta/classes/package_ipk.bbclass", line 2=
30, in ipk_write_pkg

    shell=3DTrue)

  File "/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/subpr=
ocess.py", line 395, in check_output

    **kwargs).stdout

  File "/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/subpr=
ocess.py", line 487, in run

    output=3Dstdout, stderr=3Dstderr)

subprocess.CalledProcessError: Command 'PATH=3D"/home/edson/ng-trunk/nodegr=
id/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/edson/ng-trunk/poky/sc=
ripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/=
2.5.8-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/edson/ng-tru=
nk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot/=
usr/bin/crossscripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-l=
inux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/sbin:/home/edson/ng-trunk=
/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-na=
tive/usr/bin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/doc=
kerode/2.5.8-r0/recipe-sysroot-native/sbin:/home/edson/ng-trunk/nodegrid/tm=
p/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/bin:/ho=
me/edson/ng-trunk/poky/bitbake/bin:/home/edson/ng-trunk/nodegrid/tmp/hostto=
ols" opkg-build -Z xz -a "--memlimit=3D50% --threads=3D4" dockerode-JSONStr=
eam /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.=
5.8-r0/deploy-ipks/core2-64' returned non-zero exit status 1.



ERROR: dockerode-2.5.8-r0 do_package_write_ipk:

ERROR: dockerode-2.5.8-r0 do_package_write_ipk: Function failed: do_package=
_ipk

ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/work=
/core2-64-poky-linux/dockerode/2.5.8-r0/temp/log.do_package_write_ipk.4213

ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/dockero=
de/dockerode_2.5.8.bb:do_package_write_ipk) failed with exit code '1'

NOTE: Tasks Summary: Attempted 1357 tasks of which 1344 didn't need to be r=
erun and 1 failed.

=3D=3D=3D=3D=3D=3D=3D=3D IPK's generated until the error =3D=3D=3D=3D=3D=3D=
=3D


cd tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/packages-split/

edson@ubuntu-16:packages-split$ ls

dockerode                       dockerode-docker-modem-readable-stream  doc=
kerode-readable-stream

dockerode-bl                    dockerode-docker-modem-string-decoder   doc=
kerode-safe-buffer

dockerode-buffer-alloc          dockerode-end-of-stream                 doc=
kerode-split-ca

dockerode-buffer-alloc-unsafe   dockerode-fs-constants                  doc=
kerode-src

dockerode-buffer-fill           dockerode-inherits                      doc=
kerode-staticdev

dockerode-buffer-from           dockerode-isarray                       doc=
kerode-string-decoder

dockerode-chownr                dockerode-jsonparse                     doc=
kerode-tar-fs

dockerode-concat-stream         dockerode-JSONStream                    doc=
kerode-tar-stream

dockerode-core-util-is          dockerode-locale                        doc=
kerode-through

dockerode-dbg                   dockerode-minimist                      doc=
kerode-to-buffer

dockerode-debug                 dockerode-mkdirp                        doc=
kerode-typedarray

dockerode-dev                   dockerode-ms                            doc=
kerode-util-deprecate

dockerode-doc                   dockerode-once                          doc=
kerode-wrappy

dockerode-docker-modem          dockerode-process-nextick-args          doc=
kerode-xtend

dockerode-docker-modem-isarray  dockerode-pump

edson@ubuntu-16:packages-split$

NOTE. building dockerode with morty only one ipk is generated:


edson@NodeGrid-CustomKit-SDK:nodegrid$ ls tmp/deploy/ipk/core2-64/dockerode=
*.ipk

tmp/deploy/ipk/core2-64/dockerode_2.4.3-r0_core2-64.ipk

tmp/deploy/ipk/core2-64/dockerode-dbg_2.4.3-r0_core2-64.ipk

tmp/deploy/ipk/core2-64/dockerode-dev_2.4.3-r0_core2-64.ipk

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

--_000_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont,&=
quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quo=
t;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-family: =
Calibri, Helvetica, sans-serif, Helvetica, EmojiFont, &quot;Apple Color Emo=
ji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol=
&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 12pt;">
<p>Hi,</p>
<p><br>
</p>
<p>I created the recipe for dockerode 2.5.8 using the command recipetool:</=
p>
<p><br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">recipetool cre=
ate &quot;npm://registry.npmjs.org;name=3Ddockerode;version=3D2.5.8&quot;</=
span></p>
<p></p>
<p><br>
</p>
<p>The recipe creates a lot of ipk's package and&nbsp;<span style=3D"font-s=
ize: 12pt; font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont;">=
fails on&nbsp;</span><span style=3D"font-variant-ligatures: no-common-ligat=
ures; font-family: Calibri, Helvetica, sans-serif, serif, EmojiFont; font-s=
ize: 12pt;">dockerode-JSONStream
 ipk.</span></p>
<p><span style=3D"font-variant-ligatures: no-common-ligatures; font-family:=
 Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-variant-ligatures: no-common-ligatures; font-family:=
 Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 12pt;">I can =
build dokerode with YP-Coce&nbsp;morty, almost sure I did with YP-Core thud=
.</span></p>
<p><span style=3D"font-variant-ligatures: no-common-ligatures; font-family:=
 Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-variant-ligatures: no-common-ligatures; font-family:=
 Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 12pt;">Any hi=
nt about&nbsp;how to find what&nbsp; is&nbsp;this issue will be appreciated=
.</span></p>
<p><span style=3D"font-variant-ligatures: no-common-ligatures; font-family:=
 Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-variant-ligatures: no-common-ligatures; font-family:=
 Calibri, Helvetica, sans-serif, serif, EmojiFont; font-size: 12pt;">NOTE.&=
nbsp;Other recipes, using npm.bbclass,&nbsp;build normally.&nbsp;</span></p=
>
<p><br>
</p>
<p>If any additional information is needed just let me know...</p>
<p><br>
</p>
<p>=3D=3D=3D=3D&nbsp;here is the output of bitbake dockerode =3D=3D=3D=3D=
=3D=3D&nbsp;</p>
<p></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">Build Configur=
ation:</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">BB_VERSION&nbs=
p;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</span>=3D &quot;1.42.0&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">BUILD_SYS<span=
 class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</span>=3D &quot;x86_64-linux&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">NATIVELSBSTRIN=
G<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;&nbsp;</=
span>=3D &quot;universal&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">TARGET_SYS&nbs=
p;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</span>=3D &quot;x86_64-poky-linux&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">MACHINE<span c=
lass=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;&nbsp;</span>=3D &quot;genericx86-64&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">DISTRO&nbsp;<s=
pan class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;node-poky&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">DISTRO_VERSION=
&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;2.7&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">TUNE_FEATURES<=
span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;m64 core2&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">TARGET_FPU&nbs=
p;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</span>=3D &quot;&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">IMAGE_LINGUAS<=
span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;en-us en-gb&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">MACHINE_FEATUR=
ES&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp;&nbsp;</=
span>=3D &quot;screen keyboard pci usbhost ext4 x86 acpi pcbios rtc&quot;</=
span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">IMAGE_FSTYPES<=
span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;hddimg&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">DISTRO_FEATURE=
S<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;&nbsp;</=
span>=3D &quot;argp pam largefile xattr nfs pci x11 ipv4 ipv6 libc-backtrac=
e libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets
 libc-crypt libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg =
libc-fstab libc-ftraverse libc-getlogin libc-idn libc-inet-anl libc-libm li=
bc-locales libc-locale-code libc-memusage libc-nis libc-nsswitch libc-rcmd =
libc-rtld-debug libc-spawn libc-streams
 libc-sunrpc libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-=
posix-regexp libc-posix-regexp-glibc libc-posix-wchar-io multiarch sysvinit=
 opengl pulseaudio wifi virtualization&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">IMAGE_FEATURES=
&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;package-management read-only-rootfs tools-debug&quot;</=
span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-nodegrid&=
nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nb=
sp;</span></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-kernel<sp=
an class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;&nbsp;</span>=3D &quot;trunk:11630-11620&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-zpe&nbsp;=
<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;&nbsp;</span>=3D &quot;trunk:11630-11629&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-oe<span c=
lass=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;&nbsp;</span>=3D &quot;trunk:11630-11620&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-graphics<=
span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;trunk:11630-11172&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-networkin=
g<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;&nbsp;</=
span>=3D &quot;trunk:11630-11560&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-python<sp=
an class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;&nbsp;</span>=3D &quot;trunk:11630-11620&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-selinux&n=
bsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbs=
p;&nbsp;</span>=3D &quot;master:b1dac7e2b26f869c991c6492aa7fa18eaa4b47f6&qu=
ot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-virtualiz=
ation<span class=3D"x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span>=3D &=
quot;trunk:11630-11620&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-tpm2<span=
 class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</span>=3D &quot;trunk:11630-11090&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-java<span=
 class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;&nbsp;</span>=3D &quot;master:2fc78571483465ca2fc69d6bd77632acd35e07=
70&quot;</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta<span clas=
s=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;</span></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-poky&nbsp=
;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</span></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">meta-yocto-bsp=
&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;&nb=
sp;</span>=3D &quot;warrior:1b425a8450872f915c30bd0a35b0b0df92172b70&quot;<=
/span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; min-height: 13p=
x;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">Initialising t=
asks: 100% |############################################################| T=
ime: 0:00:02</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">Sstate summary=
: Wanted 33 Found 27 Missed 6 Current 365 (81% match, 98% complete)</span><=
/p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>NOTE</b>: E=
xecuting SetScene Tasks</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>NOTE</b>: E=
xecuting RunQueue Tasks</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(159,=
 160, 28);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>WARNING</b>=
</span><span style=3D"font-variant-ligatures: no-common-ligatures; color: r=
gb(0, 0, 0);">:&nbsp;</span><span style=3D"font-variant-ligatures: no-commo=
n-ligatures;">dockerode-2.5.8-r0 do_populate_lic:
 dockerode: No generic license file exists for: Unknown in any provider</sp=
an></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>ERROR</b></=
span><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb=
(0, 0, 0);">:&nbsp;</span><span style=3D"font-variant-ligatures: no-common-=
ligatures;">dockerode-2.5.8-r0 do_package_write_ipk:
 Fatal errors occurred in subprocesses:</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;">Command 'PATH=
=3D&quot;/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linux/=
usr/bin:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin/=
x86_64-poky-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linu=
x/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/crossscripts:/home/edson/ng-tru=
nk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-=
native/usr/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/=
dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin:/home/edson/ng-trunk/nodeg=
rid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/s=
bin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.=
5.8-r0/recipe-sysroot-native/bin:/home/edson/ng-trunk/poky/bitbake/bin:/hom=
e/edson/ng-trunk/nodegrid/tmp/hosttools&quot;
 opkg-build -Z xz -a &quot;--memlimit=3D50% --threads=3D4&quot; dockerode-J=
SONStream /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/deploy-ipks/core2-64' returned non-zero exit status 1.: Traceb=
ack (most recent call last):</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span>File &quot;/home/edson/n=
g-trunk/poky/meta/lib/oe/utils.py&quot;, line 272, in run</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp; &nbsp;&nbsp;</span>ret =3D self._tar=
get(*self._args, **self._kwargs)</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span>File &quot;/home/edson/n=
g-trunk/poky/meta/classes/package_ipk.bbclass&quot;, line 230, in ipk_write=
_pkg</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp; &nbsp;&nbsp;</span>shell=3DTrue)</sp=
an></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span>File &quot;/opt/poky/2.7=
/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/subprocess.py&quot;, line =
395, in check_output</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp; &nbsp;&nbsp;</span>**kwargs).stdout<=
/span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span>File &quot;/opt/poky/2.7=
/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/subprocess.py&quot;, line =
487, in run</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D=
"x_x_x_x_Apple-converted-space">&nbsp; &nbsp;&nbsp;</span>output=3Dstdout, =
stderr=3Dstderr)</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;">subprocess.Cal=
ledProcessError: Command 'PATH=3D&quot;/home/edson/ng-trunk/nodegrid/tmp/sy=
sroots-uninative/x86_64-linux/usr/bin:/home/edson/ng-trunk/poky/scripts:/ho=
me/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/=
recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/edson/ng-trunk/nodegr=
id/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/c=
rossscripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dock=
erode/2.5.8-r0/recipe-sysroot-native/usr/sbin:/home/edson/ng-trunk/nodegrid=
/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/=
bin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.=
5.8-r0/recipe-sysroot-native/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/co=
re2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/bin:/home/edson/=
ng-trunk/poky/bitbake/bin:/home/edson/ng-trunk/nodegrid/tmp/hosttools&quot;
 opkg-build -Z xz -a &quot;--memlimit=3D50% --threads=3D4&quot; dockerode-J=
SONStream /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/deploy-ipks/core2-64' returned non-zero exit status 1.</span><=
/p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; min-height: 13p=
x;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; min-height: 13p=
x;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>ERROR</b></=
span><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb=
(0, 0, 0);">:&nbsp;</span><span style=3D"font-variant-ligatures: no-common-=
ligatures;">dockerode-2.5.8-r0 do_package_write_ipk:<span class=3D"x_x_x_x_=
Apple-converted-space">&nbsp;</span></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>ERROR</b></=
span><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb=
(0, 0, 0);">:&nbsp;</span><span style=3D"font-variant-ligatures: no-common-=
ligatures;">dockerode-2.5.8-r0 do_package_write_ipk:
 Function failed: do_package_ipk</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>ERROR</b></=
span><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb=
(0, 0, 0);">:&nbsp;</span><span style=3D"font-variant-ligatures: no-common-=
ligatures;">Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/dockerode/2.5.8-r0/temp/log.do_package_write_ipk.=
4213</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(180,=
 36, 25);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>ERROR</b></=
span><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb=
(0, 0, 0);">:&nbsp;</span><span style=3D"font-variant-ligatures: no-common-=
ligatures;">Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/do=
ckerode/dockerode_2.5.8.bb:do_package_write_ipk)
 failed with exit code '1'</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>NOTE</b>: T=
asks Summary: Attempted 1357 tasks of which 1344 didn't need to be rerun an=
d 1 failed.</span></p>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12=
pt;"><br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D IPK's generated until the error =3D=3D=3D=3D=3D=3D=
=3D</div>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-family: =
Calibri, Helvetica, sans-serif, Helvetica, EmojiFont, &quot;Apple Color Emo=
ji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol=
&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 12pt;">
<br>
<p></p>
<p></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures;">cd tmp/work/co=
re2-64-poky-linux/dockerode/2.5.8-r0/packages-split/</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(47, =
180, 29);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>edson@ubunt=
u-16</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: rgb(0, 0, 0);">:</span><span style=3D"font-variant-ligatures: no-com=
mon-ligatures; color: rgb(64, 11, 217);"><b>packages-split</b></span><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: rgb(0, 0, 0);"=
>$
 ls</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode</=
b></span><span style=3D"font-variant-ligatures: no-common-ligatures; color:=
 rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;=
</span></span><span style=3D"font-variant-ligatures: no-common-ligatures;">=
<b>dockerode-docker-modem-readable-stream</b></span><span style=3D"font-var=
iant-ligatures: no-common-ligatures; color: rgb(0, 0, 0);">&nbsp;&nbsp;</sp=
an><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerod=
e-readable-stream</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-b=
l</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; col=
or: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatures: no-common-=
ligatures;"><b>dockerode-docker-modem-string-decoder</b></span><span style=
=3D"font-variant-ligatures: no-common-ligatures; color: rgb(0, 0, 0);">&nbs=
p;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span></span><=
span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-sa=
fe-buffer</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-b=
uffer-alloc</b></span><span style=3D"font-variant-ligatures: no-common-liga=
tures; color: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-=
end-of-stream</b></span><span style=3D"font-variant-ligatures: no-common-li=
gatures; color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted=
-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span =
style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-split-c=
a</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-b=
uffer-alloc-unsafe</b></span><span style=3D"font-variant-ligatures: no-comm=
on-ligatures; color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-conv=
erted-space">&nbsp;&nbsp;</span></span><span style=3D"font-variant-ligature=
s: no-common-ligatures;"><b>dockerode-fs-constants</b></span><span style=3D=
"font-variant-ligatures: no-common-ligatures; color: rgb(0, 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span =
style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-src</b>=
</span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-b=
uffer-fill</b></span><span style=3D"font-variant-ligatures: no-common-ligat=
ures; color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-sp=
ace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"f=
ont-variant-ligatures: no-common-ligatures;"><b>dockerode-inherits</b></spa=
n><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb(0,=
 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp=
;</span><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>doc=
kerode-staticdev</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-b=
uffer-from</b></span><span style=3D"font-variant-ligatures: no-common-ligat=
ures; color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-sp=
ace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"f=
ont-variant-ligatures: no-common-ligatures;"><b>dockerode-isarray</b></span=
><span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb(0, =
0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp=
;</span></span><span style=3D"font-variant-ligatures: no-common-ligatures;"=
><b>dockerode-string-decoder</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-c=
hownr</b></span><span style=3D"font-variant-ligatures: no-common-ligatures;=
 color: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;&nbsp;</span><span style=3D"font-variant-ligatures: no-common-ligatures;=
"><b>dockerode-jsonparse</b></span><span style=3D"font-variant-ligatures: n=
o-common-ligatures; color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Appl=
e-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
></span><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>doc=
kerode-tar-fs</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-c=
oncat-stream</b></span><span style=3D"font-variant-ligatures: no-common-lig=
atures; color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-=
space">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-v=
ariant-ligatures: no-common-ligatures;"><b>dockerode-JSONStream</b></span><=
span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb(0, 0,=
 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-=
tar-stream</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-c=
ore-util-is</b></span><span style=3D"font-variant-ligatures: no-common-liga=
tures; color: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-=
locale</b></span><span style=3D"font-variant-ligatures: no-common-ligatures=
; color: rgb(0, 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;&nbsp;</span><span style=3D"font-variant-ligatures: no-common-ligatures;"=
><b>dockerode-through</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-d=
bg</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></s=
pan><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockero=
de-minimist</b></span><span style=3D"font-variant-ligatures: no-common-liga=
tures; color: rgb(0, 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp=
;</span><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>doc=
kerode-to-buffer</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-d=
ebug</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><=
span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-mk=
dirp</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: rgb(0, 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;&nbsp;</span><span style=3D"font-variant-ligatures: no-common-ligatures;"=
><b>dockerode-typedarray</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-d=
ev</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; co=
lor: rgb(0, 0, 0);">&nbsp;<span class=3D"x_x_x_x_Apple-converted-space">&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></s=
pan><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockero=
de-ms</b></span><span style=3D"font-variant-ligatures: no-common-ligatures;=
 color: rgb(0, 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatures: no-comm=
on-ligatures;"><b>dockerode-util-deprecate</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont;">
<span style=3D"font-variant-ligatures: no-common-ligatures; color: rgb(64, =
11, 217);"><b>dockerode-doc</b></span><span style=3D"font-variant-ligatures=
: no-common-ligatures;">&nbsp;<span class=3D"x_x_x_x_Apple-converted-space"=
>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
></span><span style=3D"font-variant-ligatures: no-common-ligatures; color: =
rgb(64, 11, 217);"><b>dockerode-once</b></span><span style=3D"font-variant-=
ligatures: no-common-ligatures;">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatures: no-common-liga=
tures; color: rgb(64, 11, 217);"><b>dockerode-wrappy</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-d=
ocker-modem</b></span><span style=3D"font-variant-ligatures: no-common-liga=
tures; color: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
><span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-=
process-nextick-args</b></span><span style=3D"font-variant-ligatures: no-co=
mmon-ligatures; color: rgb(0, 0, 0);">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatu=
res: no-common-ligatures;"><b>dockerode-xtend</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(64, =
11, 217);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>dockerode-d=
ocker-modem-isarray</b></span><span style=3D"font-variant-ligatures: no-com=
mon-ligatures; color: rgb(0, 0, 0);">&nbsp;&nbsp;</span><span style=3D"font=
-variant-ligatures: no-common-ligatures;"><b>dockerode-pump</b></span></p>
<p style=3D"margin-right: 0px; margin-left: 0px; font-variant-numeric: norm=
al; font-variant-east-asian: normal; font-stretch: normal; font-size: 11px;=
 line-height: normal; font-family: Menlo, serif, EmojiFont; color: rgb(47, =
180, 29);">
<span style=3D"font-variant-ligatures: no-common-ligatures;"><b>edson@ubunt=
u-16</b></span><span style=3D"font-variant-ligatures: no-common-ligatures; =
color: rgb(0, 0, 0);">:</span><span style=3D"font-variant-ligatures: no-com=
mon-ligatures; color: rgb(64, 11, 217);"><b>packages-split</b></span><span =
style=3D"font-variant-ligatures: no-common-ligatures; color: rgb(0, 0, 0);"=
>$<span class=3D"x_x_x_x_Apple-converted-space">&nbsp;</span></span></p>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12=
pt;"><br>
</div>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12=
pt;">NOTE. building dockerode with morty only one ipk is generated:</div>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12=
pt;"><br>
</div>
<div id=3D"x_x_x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12=
pt;">
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">edson@NodeGrid-CustomKit=
-SDK:nodegrid$ ls tmp/deploy/ipk/core2-64/dockerode*.ipk</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">tmp/deploy/ipk/core2-64/=
dockerode_2.4.3-r0_core2-64.ipk</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">tmp/deploy/ipk/core2-64/=
dockerode-dbg_2.4.3-r0_core2-64.ipk</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">tmp/deploy/ipk/core2-64/=
dockerode-dev_2.4.3-r0_core2-64.ipk</span></p>
<br>
</div>
Thanks in advance.</div>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); background-color:rgb(255,255,255); font-family:Calibri,Arial,H=
elvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quot=
;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Andr=
oid Emoji&quot;,EmojiSymbols">
<p></p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Edson Seabra</span></p=
>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Principal Engineer</sp=
an></p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
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
<p style=3D"margin:0in 0in 0.0001pt; font-size:12pt; font-family:Calibri"><=
span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,serif=
,EmojiFont; color:rgb(96,109,117)"></span></p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:12pt; font-family:Calibri"><=
span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,serif=
,EmojiFont; color:rgb(96,109,117)"><img class=3D"EmojiInsert" alt=3D"150616=
9147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c90-8c28=
-e559c26bc7d1.png" style=3D"" data-outlook-trace=3D"F:1|T:1" src=3D"cid:315=
7a475-0a24-4f25-be56-c9004927a893"><br>
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
<p></p>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_--

--_004_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Description: Outlook-1506169147.png
Content-Disposition: inline; filename="Outlook-1506169147.png"; size=2497;
	creation-date="Sat, 11 May 2019 13:51:02 GMT";
	modification-date="Sat, 11 May 2019 13:51:02 GMT"
Content-ID: <3157a475-0a24-4f25-be56-c9004927a893>
Content-Transfer-Encoding: base64

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

--_004_DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0DM6PR19MB2796namp_--
