Return-Path: <Edson.Seabra@zpesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6581E00DB7; Tue, 14 May 2019 02:01:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MANY_SPAN_IN_TEXT, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.77.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
X-Greylist: delayed 29428 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 May 2019 02:01:32 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr770118.outbound.protection.outlook.com [40.107.77.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE38E00DA9
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 02:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ZPESystems.onmicrosoft.com; s=selector1-zpesystems-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xcn7gw/4vo+mKJf5le21CwpT2sfI+mZRSXXm4OXs7hg=;
	b=TpM3DBNF8XxF/GCCi9/A5/Fe21TWX3W9EHC8MCHurmkKSxtYLKaYo+uHk88W1FBqqhaCQJh7Bv70mpuJmgcplYxDpciVlQWD601O8BDWbjtm2d3AoVpIYhJBIMpWRxAYPYS6UgOy24gKiMlAbBHIkCX2GymRlxCRpRLlBTda44c=
Received: from DM6PR19MB2796.namprd19.prod.outlook.com (20.178.231.150) by
	DM6PR19MB2890.namprd19.prod.outlook.com (20.179.16.213) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1878.22; Mon, 13 May 2019 17:28:00 +0000
Received: from DM6PR19MB2796.namprd19.prod.outlook.com
	([fe80::f080:2a5:3e58:fab5]) by DM6PR19MB2796.namprd19.prod.outlook.com
	([fe80::f080:2a5:3e58:fab5%5]) with mapi id 15.20.1878.024;
	Mon, 13 May 2019 17:28:00 +0000
From: Edson Seabra <Edson.Seabra@zpesystems.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Build error on dockerode using YP-Core warrior 2.7
Thread-Index: AQHVCACSWSlmAtP2nUS7TjvBdbECMaZm7FuAgAIu2P6AABcMgIAAHkdc
Date: Mon, 13 May 2019 17:28:00 +0000
Message-ID: <DM6PR19MB2796903F77893698D52BB672F70F0@DM6PR19MB2796.namprd19.prod.outlook.com>
References: <DM6PR19MB279637D4C26D9D4FBB3DBE7CF70D0@DM6PR19MB2796.namprd19.prod.outlook.com>
	<CAMKF1sqAWp+r8LsN7ODAT0WgpodVpvu9+NfAr-qJOG7Q7h_5JA@mail.gmail.com>
	<DM6PR19MB279683E9E62AA2388D9D41ABF70F0@DM6PR19MB2796.namprd19.prod.outlook.com>,
	<CAMKF1srHj4azS7cQ_2TATKtWXkWDi8s=s46r+MSzXTNOWtCETA@mail.gmail.com>
In-Reply-To: <CAMKF1srHj4azS7cQ_2TATKtWXkWDi8s=s46r+MSzXTNOWtCETA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edson.Seabra@zpesystems.com; 
x-originating-ip: [189.34.225.26]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18016bb3-3efa-46be-a154-08d6d7c85929
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(49563074)(7193020);
	SRVR:DM6PR19MB2890; 
x-ms-traffictypediagnostic: DM6PR19MB2890:
x-ms-exchange-purlcount: 5
x-microsoft-antispam-prvs: <DM6PR19MB28903664515956DDFDC173C9F70F0@DM6PR19MB2890.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39830400003)(376002)(346002)(366004)(136003)(199004)(189003)(51874003)(2906002)(8676002)(8936002)(81156014)(81166006)(5660300002)(74316002)(476003)(52536014)(6606003)(99936001)(446003)(11346002)(186003)(26005)(256004)(14444005)(486006)(508600001)(72206003)(966005)(3846002)(19627405001)(6116002)(6916009)(606006)(73956011)(66616009)(76116006)(91956017)(66446008)(64756008)(66476007)(66946007)(66556008)(316002)(71190400001)(71200400001)(6246003)(33656002)(1015004)(68736007)(7736002)(53546011)(6506007)(14454004)(86362001)(102836004)(229853002)(53386004)(25786009)(66066001)(53946003)(7696005)(4326008)(6306002)(54896002)(54556002)(9686003)(236005)(55016002)(99286004)(6436002)(76176011)(733005)(53936002)(579004)(569006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR19MB2890;
	H:DM6PR19MB2796.namprd19.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: zpesystems.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Dz3XZ7p31U7/tlVzJURLm9UYMVcCUwofRaPfHQBw+kGBrfEHK7ytVI4uxPxkPRjTdXHQEq0aEhu+/JQ3viCjDKL7uHoSRFNS02oklvcilBMxAgM3UtYNqzB5pNbO+CvMDkxradYYzkZQMilLgIOCk0lnCD+2G9KESTd6MY63hHqHUfy0dt/kcy4KCS0N+FOWW8xkbmSEaFNtg4Ai8NRozJSTsnsgTr+K35H3kyoo7z9KtAKQSXop4+zmiqO0VfhgrHU8QtIhrdvIeD9JWsqsCJ3UN+mmyDyD8wC5DWDMtFamK3QEwJ6V6Q7TO95dYkHmyn+dVIBwSGrIklUO2RcmxNnIx6khGVr6kxV2v4pt31ghNERMboVSuecjlTf+yupL6nTrUxDpjmem6vMC96UjOFMLZSmcSLxw+jfB8PAb7Ls=
MIME-Version: 1.0
X-OriginatorOrg: zpesystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18016bb3-3efa-46be-a154-08d6d7c85929
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 17:28:00.7394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB2890
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error on dockerode using YP-Core warrior 2.7
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
X-List-Received-Date: Tue, 14 May 2019 09:01:35 -0000
X-Groupsio-MsgNum: 45165
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_";
	type="multipart/alternative"

--_004_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_
Content-Type: multipart/alternative;
	boundary="_000_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_"

--_000_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, Khem Raj.


The recipe name is 'dockerode_2.5.8.bb'


Its content is (just clean license stuff):

edson@ubuntu-16:nodegrid$ cat ../meta-extended/meta-oe/recipes-npm/dockerod=
e/dockerode_2.5.8.bb

# Recipe created by recipetool

# This is the basis of a recipe and may need further editing in order to be=
 fully functional.

# (Feel free to remove these comments when editing.)


SUMMARY =3D "Docker Remote API module."

LICENSE =3D "CLOSED"


SRC_URI =3D "npm://registry.npmjs.org/;name=3Ddockerode;version=3D${PV}"


inherit npm


# Must be set after inherit npm since that itself sets S

S =3D "${WORKDIR}/npmpkg"

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D end of recipe =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D


As I told, there is no package name inside the recipe.

Thanks,
Edson.

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, May 13, 2019 3:32 PM
To: Edson Seabra
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Build error on dockerode using YP-Core warrior 2.7



On Mon, May 13, 2019 at 7:19 AM Edson Seabra <Edson.Seabra@zpesystems.com<m=
ailto:Edson.Seabra@zpesystems.com>> wrote:

Hi,


Thanks Khem Raj.


As this package name is generate internally by poky/yocto I did this patch =
to make it build:


edson@ubuntu-16:oe$ git diff package.py

diff --git a/meta/lib/oe/package.py b/meta/lib/oe/package.py

index 6e83f01f14..3503313621 100644

--- a/meta/lib/oe/package.py

+++ b/meta/lib/oe/package.py

@@ -298,7 +298,7 @@ def npm_split_package_dirs(pkgdir):

                 for pathitem in relpth.split('/'):

                     if pathitem =3D=3D 'node_modules':

                         continue

-                    pkgitems.append(pathitem)

+                    pkgitems.append(pathitem.lower())

                 pkgname =3D '-'.join(pkgitems).replace('_', '-')

                 pkgname =3D pkgname.replace('@', '')

                 pkgfile =3D os.path.join(root, dn, 'package.json')



I do not feel confident to submit it. I would suggest a poky/yocto maintain=
er to step in.

Just change the concerned recipe name this patch is a bit too much

Regards,
Edson.

________________________________
From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Sent: Sunday, May 12, 2019 4:50 AM
To: Edson Seabra
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Build error on dockerode using YP-Core warrior 2.7

Use all lowercase in recipe name you seem to have mixed it with uppercase

On Sat, May 11, 2019 at 5:58 PM Edson Seabra <Edson.Seabra@zpesystems.com<m=
ailto:Edson.Seabra@zpesystems.com>> wrote:

Hi,


I created the recipe for dockerode 2.5.8 using the command recipetool:


recipetool create "npm://registry.npmjs.org<http://registry.npmjs.org>;name=
=3Ddockerode;version=3D2.5.8"


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
46757 Fremont Blvd., Fremont, CA 94538<https://maps.google.com/?q=3D46757+F=
remont+Blvd.,+Fremont,+CA+94538&entry=3Dgmail&source=3Dg>
zpesystems.com<https://www.zpesystems.com/> | Request a Nodegrid Demo<https=
://www.zpesystems.com/demo/>

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi, Khem Raj.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">The recipe name is '<span style=
=3D"font-family: Menlo; font-size: 11px; font-variant-ligatures: no-common-=
ligatures;">dockerode_2.5.8.bb'</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Its content is (just clean licens=
e stuff):</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures; color: rgb(47, 180, 29);"=
><b>edson@ubuntu-16</b></span><span style=3D"font-variant-ligatures: no-com=
mon-ligatures;">:</span><span style=3D"font-variant-ligatures: no-common-li=
gatures; color: rgb(64, 11, 217);"><b>nodegrid</b></span><span style=3D"fon=
t-variant-ligatures: no-common-ligatures;">$
 cat ../meta-extended/meta-oe/recipes-npm/dockerode/dockerode_2.5.8.bb</spa=
n></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;"># Recipe created by reci=
petool</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;"># This is the basis of a=
 recipe and may need further editing in order to be fully functional.</span=
></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;"># (Feel free to remove t=
hese comments when editing.)</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0); min-height:=
 13px;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">SUMMARY =3D &quot;Docker=
 Remote API module.&quot;</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">LICENSE =3D &quot;CLOSED=
&quot;</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0); min-height:=
 13px;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">SRC_URI =3D &quot;npm://=
registry.npmjs.org/;name=3Ddockerode;version=3D${PV}&quot;</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0); min-height:=
 13px;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">inherit npm</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0); min-height:=
 13px;">
<span style=3D"font-variant-ligatures: no-common-ligatures;"></span><br>
</p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;"># Must be set after inhe=
rit npm since that itself sets S</span></p>
<p style=3D"margin: 0px; font: 11px Menlo; color: rgb(0, 0, 0);"><span styl=
e=3D"font-variant-ligatures: no-common-ligatures;">S =3D &quot;${WORKDIR}/n=
pmpkg&quot;</span></p>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D end of recipe =3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
As I told, there is no package name inside the recipe.<br>
<br>
Thanks,
<div>Edson.<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.khem=
@gmail.com&gt;<br>
<b>Sent:</b> Monday, May 13, 2019 3:32 PM<br>
<b>To:</b> Edson Seabra<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Build error on dockerode using YP-Core warrior =
2.7</font>
<div>&nbsp;</div>
</div>
<div>
<div><br>
</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, May 13, 2019 at 7:19 AM Eds=
on Seabra &lt;<a href=3D"mailto:Edson.Seabra@zpesystems.com" id=3D"LPlnk847=
831" class=3D"OWAAutoLink" previewremoved=3D"true">Edson.Seabra@zpesystems.=
com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_7217947524574696501divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<p style=3D"margin-top:0; margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks Khem Raj.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">As this package&nbsp;name is gen=
erate internally by poky/yocto I did this patch to make it build:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures; color:rgb(47,180,29)"><b>edson@u=
buntu-16</b></span><span style=3D"font-variant-ligatures:no-common-ligature=
s">:</span><span style=3D"font-variant-ligatures:no-common-ligatures; color=
:rgb(64,11,217)"><b>oe</b></span><span style=3D"font-variant-ligatures:no-c=
ommon-ligatures">$
 git diff package.py</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><b>diff --git a/meta/lib/oe/pack=
age.py b/meta/lib/oe/package.py</b></span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><b>index 6e83f01f14..3503313621 =
100644</b></span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><b>--- a/meta/lib/oe/package.py<=
/b></span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><b>&#43;&#43;&#43; b/meta/lib/oe=
/package.py</b></span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures; color:rgb(46,174,187)">@@ -298,7=
 &#43;298,7 @@</span><span style=3D"font-variant-ligatures:no-common-ligatu=
res"> def npm_split_package_dirs(pkgdir):</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><span class=3D"x_m_7217947524574=
696501Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;
</span>for pathitem in relpth.split('/'):</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><span class=3D"x_m_7217947524574=
696501Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;
</span>if pathitem =3D=3D 'node_modules':</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><span class=3D"x_m_7217947524574=
696501Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span>continue</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(180,36,25)"><span style=
=3D"font-variant-ligatures:no-common-ligatures">-<span class=3D"x_m_7217947=
524574696501Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp;
</span>pkgitems.append(pathitem)</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(47,180,29)"><span style=
=3D"font-variant-ligatures:no-common-ligatures">&#43;<span class=3D"x_m_721=
7947524574696501Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
</span>pkgitems.append(pathitem.lower())</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><span class=3D"x_m_7217947524574=
696501Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;
</span>pkgname =3D '-'.join(pkgitems).replace('_', '-')</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><span class=3D"x_m_7217947524574=
696501Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;
</span>pkgname =3D pkgname.replace('@', '')</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures"><span class=3D"x_m_7217947524574=
696501Apple-converted-space">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;
</span>pkgfile =3D os.path.join(root, dn, 'package.json')</span></p>
&nbsp;
<p></p>
I do not feel confident to submit it. I would suggest a poky/yocto maintain=
er to&nbsp;step in.</div>
</div>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Just change the concerned recipe name this patch is a bit=
 too much&nbsp;</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_7217947524574696501divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<div><br>
</div>
<div>Regards,</div>
<div>Edson.<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_7217947524574696501divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" id=
=3D"LPlnk4457" class=3D"OWAAutoLink" previewremoved=3D"true">raj.khem@gmail=
.com</a>&gt;<br>
<b>Sent:</b> Sunday, May 12, 2019 4:50 AM<br>
<b>To:</b> Edson Seabra<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" id=
=3D"LPlnk520031" class=3D"OWAAutoLink" previewremoved=3D"true">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Build error on dockerode using YP-Core warrior =
2.7</font>
<div>&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_m_7217947524574696501divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<div>
<div style=3D"color:rgb(0,0,0)">
<div>
<div>
<div dir=3D"auto">Use all lowercase in recipe name you seem to have mixed i=
t with uppercase&nbsp;</div>
</div>
<div><br>
<div class=3D"x_m_7217947524574696501x_gmail_quote">
<div dir=3D"ltr" class=3D"x_m_7217947524574696501x_gmail_attr">On Sat, May =
11, 2019 at 5:58 PM Edson Seabra &lt;<a href=3D"mailto:Edson.Seabra@zpesyst=
ems.com" id=3D"LPlnk89554" class=3D"x_m_7217947524574696501OWAAutoLink OWAA=
utoLink" target=3D"_blank" previewremoved=3D"true">Edson.Seabra@zpesystems.=
com</a>&gt;
 wrote:<br>
</div>
<blockquote class=3D"x_m_7217947524574696501x_gmail_quote" style=3D"margin:=
0 0 0 .8ex; border-left:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapp=
er" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cali=
bri,Helvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Color Emoji&quot;,=
&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot=
;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-family:Calibri,Helvetica,sans-serif,H=
elvetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;=
,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoji=
Symbols; font-size:12pt">
<p>Hi,</p>
<p><br>
</p>
<p>I created the recipe for dockerode 2.5.8 using the command recipetool:</=
p>
<p><br>
</p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">recipetool creat=
e &quot;npm://<a href=3D"http://registry.npmjs.org" id=3D"LPlnk45535" class=
=3D"x_m_7217947524574696501OWAAutoLink OWAAutoLink" target=3D"_blank" previ=
ewremoved=3D"true">registry.npmjs.org</a>;name=3Ddockerode;version=3D2.5.8&=
quot;</span></p>
<p></p>
<p><br>
</p>
<p>The recipe creates a lot of ipk's package and&nbsp;<span style=3D"font-s=
ize:12pt; font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont">fails o=
n&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligatures; fo=
nt-family:Calibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt">doc=
kerode-JSONStream
 ipk.</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures; font-family:C=
alibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt"><br>
</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures; font-family:C=
alibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt">I can build do=
kerode with YP-Coce&nbsp;morty, almost sure I did with YP-Core thud.</span>=
</p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures; font-family:C=
alibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt"><br>
</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures; font-family:C=
alibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt">Any hint about=
&nbsp;how to find what&nbsp; is&nbsp;this issue will be appreciated.</span>=
</p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures; font-family:C=
alibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt"><br>
</span></p>
<p><span style=3D"font-variant-ligatures:no-common-ligatures; font-family:C=
alibri,Helvetica,sans-serif,serif,EmojiFont; font-size:12pt">NOTE.&nbsp;Oth=
er recipes, using npm.bbclass,&nbsp;build normally.&nbsp;</span></p>
<p><br>
</p>
<p>If any additional information is needed just let me know...</p>
<p><br>
</p>
<p>=3D=3D=3D=3D&nbsp;here is the output of bitbake dockerode =3D=3D=3D=3D=
=3D=3D&nbsp;</p>
<p></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">Build Configurat=
ion:</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">BB_VERSION&nbsp;=
<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-=
converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;1=
.42.0&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">BUILD_SYS<span c=
lass=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-convert=
ed-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;x=
86_64-linux&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">NATIVELSBSTRING<=
span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-c=
onverted-space">&nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;universal&quot;<=
/span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">TARGET_SYS&nbsp;=
<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-=
converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;x=
86_64-poky-linux&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">MACHINE<span cla=
ss=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted=
-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &q=
uot;genericx86-64&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">DISTRO&nbsp;<spa=
n class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conv=
erted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=
=3D &quot;node-poky&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">DISTRO_VERSION&n=
bsp;<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">&nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;2.7&quot;</=
span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">TUNE_FEATURES<sp=
an class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;m64 core2&q=
uot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">TARGET_FPU&nbsp;=
<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-=
converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;&=
quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_LINGUAS<sp=
an class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;en-us en-gb=
&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">MACHINE_FEATURES=
&nbsp;<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_=
Apple-converted-space">&nbsp; &nbsp;&nbsp;</span>=3D &quot;screen keyboard =
pci usbhost ext4 x86 acpi pcbios rtc&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_FSTYPES<sp=
an class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;hddimg&quot=
;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">DISTRO_FEATURES<=
span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-c=
onverted-space">&nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;argp pam largefi=
le xattr nfs pci x11 ipv4 ipv6 libc-backtrace libc-big-macros libc-bsd
 libc-cxx-tests libc-catgets libc-charsets libc-crypt libc-crypt-ufc libc-d=
b-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse libc-ge=
tlogin libc-idn libc-inet-anl libc-libm libc-locales libc-locale-code libc-=
memusage libc-nis libc-nsswitch
 libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc libc-utmp li=
bc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-r=
egexp-glibc libc-posix-wchar-io multiarch sysvinit opengl pulseaudio wifi v=
irtualization&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_FEATURES&n=
bsp;<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">&nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;package-man=
agement read-only-rootfs tools-debug&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-nodegrid&nb=
sp;<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_App=
le-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;</span></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-kernel<span=
 class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conve=
rted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;trunk:=
11630-11620&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-zpe&nbsp;<s=
pan class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-co=
nverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &q=
uot;trunk:11630-11629&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-oe<span cla=
ss=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted=
-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &q=
uot;trunk:11630-11620&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-graphics<sp=
an class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;trunk:11630=
-11172&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-networking<=
span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-c=
onverted-space">&nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;trunk:11630-1156=
0&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-python<span=
 class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-conve=
rted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;trunk:=
11630-11620&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-selinux&nbs=
p;<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Appl=
e-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;master=
:b1dac7e2b26f869c991c6492aa7fa18eaa4b47f6&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-virtualizat=
ion<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_App=
le-converted-space">&nbsp;&nbsp;</span>=3D &quot;trunk:11630-11620&quot;</s=
pan></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-tpm2<span c=
lass=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-convert=
ed-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;t=
runk:11630-11090&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-java<span c=
lass=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-convert=
ed-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;m=
aster:2fc78571483465ca2fc69d6bd77632acd35e0770&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta<span class=
=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-s=
pace">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>=
</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-poky&nbsp;<=
span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-c=
onverted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">meta-yocto-bsp&n=
bsp;<span class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Ap=
ple-converted-space">&nbsp; &nbsp; &nbsp;&nbsp;</span>=3D &quot;warrior:1b4=
25a8450872f915c30bd0a35b0b0df92172b70&quot;</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; min-height:13px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">Initialising tas=
ks: 100% |############################################################| Tim=
e: 0:00:02</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">Sstate summary: =
Wanted 33 Found 27 Missed 6 Current 365 (81% match, 98% complete)</span></p=
>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>NOTE</b>: Exe=
cuting SetScene Tasks</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>NOTE</b>: Exe=
cuting RunQueue Tasks</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(159,160,28)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>WARNING</b></=
span><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0=
,0,0)">:&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligatu=
res">dockerode-2.5.8-r0 do_populate_lic: dockerode:
 No generic license file exists for: Unknown in any provider</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0=
,0)">:&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligature=
s">dockerode-2.5.8-r0 do_package_write_ipk:
 Fatal errors occurred in subprocesses:</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures">Command 'PATH=3D=
&quot;/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linux/usr=
/bin:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/tmp/wo=
rk/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bin/x86=
_64-poky-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/d=
ockerode/2.5.8-r0/recipe-sysroot/usr/bin/crossscripts:/home/edson/ng-trunk/=
nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-nat=
ive/usr/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/doc=
kerode/2.5.8-r0/recipe-sysroot-native/usr/bin:/home/edson/ng-trunk/nodegrid=
/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/sbin=
:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8=
-r0/recipe-sysroot-native/bin:/home/edson/ng-trunk/poky/bitbake/bin:/home/e=
dson/ng-trunk/nodegrid/tmp/hosttools&quot;
 opkg-build -Z xz -a &quot;--memlimit=3D50% --threads=3D4&quot; dockerode-J=
SONStream /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/deploy-ipks/core2-64' returned non-zero exit status 1.: Traceb=
ack (most recent call last):</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp;&nbsp;</span>File &quot;/home/edson/ng-trunk/poky/meta/lib/oe/utils.=
py&quot;, line 272, in run</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp; &nbsp;&nbsp;</span>ret =3D self._target(*self._args, **self._kwargs=
)</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp;&nbsp;</span>File &quot;/home/edson/ng-trunk/poky/meta/classes/packa=
ge_ipk.bbclass&quot;, line 230, in ipk_write_pkg</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp; &nbsp;&nbsp;</span>shell=3DTrue)</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp;&nbsp;</span>File &quot;/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/=
usr/lib/python3.7/subprocess.py&quot;, line 395, in check_output</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp; &nbsp;&nbsp;</span>**kwargs).stdout</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp;&nbsp;</span>File &quot;/opt/poky/2.7/sysroots/x86_64-pokysdk-linux/=
usr/lib/python3.7/subprocess.py&quot;, line 487, in run</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"x=
_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space"=
>&nbsp; &nbsp;&nbsp;</span>output=3Dstdout, stderr=3Dstderr)</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures">subprocess.Calle=
dProcessError: Command 'PATH=3D&quot;/home/edson/ng-trunk/nodegrid/tmp/sysr=
oots-uninative/x86_64-linux/usr/bin:/home/edson/ng-trunk/poky/scripts:/home=
/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/re=
cipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/edson/ng-trunk/nodegrid=
/tmp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot/usr/bin/cro=
ssscripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/recipe-sysroot-native/usr/sbin:/home/edson/ng-trunk/nodegrid/t=
mp/work/core2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/usr/bi=
n:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/dockerode/2.5.=
8-r0/recipe-sysroot-native/sbin:/home/edson/ng-trunk/nodegrid/tmp/work/core=
2-64-poky-linux/dockerode/2.5.8-r0/recipe-sysroot-native/bin:/home/edson/ng=
-trunk/poky/bitbake/bin:/home/edson/ng-trunk/nodegrid/tmp/hosttools&quot;
 opkg-build -Z xz -a &quot;--memlimit=3D50% --threads=3D4&quot; dockerode-J=
SONStream /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/docker=
ode/2.5.8-r0/deploy-ipks/core2-64' returned non-zero exit status 1.</span><=
/p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; min-height:13px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; min-height:13px">
<span style=3D"font-variant-ligatures:no-common-ligatures"></span><br>
</p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0=
,0)">:&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligature=
s">dockerode-2.5.8-r0 do_package_write_ipk:<span class=3D"x_m_7217947524574=
696501x_m_2196432746841393690x_x_x_x_Apple-converted-space">&nbsp;</span></=
span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0=
,0)">:&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligature=
s">dockerode-2.5.8-r0 do_package_write_ipk:
 Function failed: do_package_ipk</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0=
,0)">:&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligature=
s">Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/work/cor=
e2-64-poky-linux/dockerode/2.5.8-r0/temp/log.do_package_write_ipk.4213</spa=
n></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(180,36,25)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>ERROR</b></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0=
,0)">:&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligature=
s">Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/dockerode/d=
ockerode_2.5.8.bb:do_package_write_ipk)
 failed with exit code '1'</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>NOTE</b>: Tas=
ks Summary: Attempted 1357 tasks of which 1344 didn't need to be rerun and =
1 failed.</span></p>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt">
<br>
</div>
=3D=3D=3D=3D=3D=3D=3D=3D IPK's generated until the error =3D=3D=3D=3D=3D=3D=
=3D</div>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-family:Calibri,Helvetica,sans-serif,H=
elvetica,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;=
,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,Emoji=
Symbols; font-size:12pt">
<br>
<p></p>
<p></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures">cd tmp/work/core=
2-64-poky-linux/dockerode/2.5.8-r0/packages-split/</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(47,180,29)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>edson@ubuntu-=
16</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; col=
or:rgb(0,0,0)">:</span><span style=3D"font-variant-ligatures:no-common-liga=
tures; color:rgb(64,11,217)"><b>packages-split</b></span><span style=3D"fon=
t-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">$
 ls</span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode</b>=
</span><span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb=
(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_219643274684139369=
0x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-=
variant-ligatures:no-common-ligatures"><b>dockerode-docker-modem-readable-s=
tream</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; =
color:rgb(0,0,0)">&nbsp;&nbsp;</span><span style=3D"font-variant-ligatures:=
no-common-ligatures"><b>dockerode-readable-stream</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-bl<=
/b></span><span style=3D"font-variant-ligatures:no-common-ligatures; color:=
rgb(0,0,0)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligature=
s"><b>dockerode-docker-modem-string-decoder</b></span><span style=3D"font-v=
ariant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&nbsp;<span class=
=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-s=
pace">&nbsp;&nbsp;</span></span><span style=3D"font-variant-ligatures:no-co=
mmon-ligatures"><b>dockerode-safe-buffer</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-alloc</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es; color:rgb(0,0,0)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-end-of-st=
ream</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; c=
olor:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_2196432746=
841393690x_x_x_x_Apple-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-split-ca<=
/b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-alloc-unsafe</b></span><span style=3D"font-variant-ligatures:no-common-=
ligatures; color:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_=
m_2196432746841393690x_x_x_x_Apple-converted-space">&nbsp;&nbsp;</span></sp=
an><span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-=
fs-constants</b></span><span style=3D"font-variant-ligatures:no-common-liga=
tures; color:rgb(0,0,0)">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-src</b></=
span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-fill</b></span><span style=3D"font-variant-ligatures:no-common-ligature=
s; color:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_219643=
2746841393690x_x_x_x_Apple-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-variant=
-ligatures:no-common-ligatures"><b>dockerode-inherits</b></span><span style=
=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</=
span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerod=
e-staticdev</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-buf=
fer-from</b></span><span style=3D"font-variant-ligatures:no-common-ligature=
s; color:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_219643=
2746841393690x_x_x_x_Apple-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-variant=
-ligatures:no-common-ligatures"><b>dockerode-isarray</b></span><span style=
=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&nbsp;<sp=
an class=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-con=
verted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp=
;</span></span><span style=3D"font-variant-ligatures:no-common-ligatures"><=
b>dockerode-string-decoder</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-cho=
wnr</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; co=
lor:rgb(0,0,0)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbs=
p;</span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>dock=
erode-jsonparse</b></span><span style=3D"font-variant-ligatures:no-common-l=
igatures; color:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m=
_2196432746841393690x_x_x_x_Apple-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span=
></span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>docke=
rode-tar-fs</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-con=
cat-stream</b></span><span style=3D"font-variant-ligatures:no-common-ligatu=
res; color:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_2196=
432746841393690x_x_x_x_Apple-converted-space">&nbsp;
 &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-variant-ligatu=
res:no-common-ligatures"><b>dockerode-JSONStream</b></span><span style=3D"f=
ont-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-tar-stream=
</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-cor=
e-util-is</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es; color:rgb(0,0,0)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-locale</b=
></span><span style=3D"font-variant-ligatures:no-common-ligatures; color:rg=
b(0,0,0)">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p;&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligatures"><=
b>dockerode-through</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-dbg=
</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; color=
:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_21964327468413=
93690x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-=
variant-ligatures:no-common-ligatures"><b>dockerode-minimist</b></span><spa=
n style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&=
nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligatures"><b>d=
ockerode-to-buffer</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-deb=
ug</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; col=
or:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_219643274684=
1393690x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-=
variant-ligatures:no-common-ligatures"><b>dockerode-mkdirp</b></span><span =
style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;&nbsp;</span><span style=3D"font-variant-ligatures:no-common-ligatures"=
><b>dockerode-typedarray</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-dev=
</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; color=
:rgb(0,0,0)">&nbsp;<span class=3D"x_m_7217947524574696501x_m_21964327468413=
93690x_x_x_x_Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=3D"font-=
variant-ligatures:no-common-ligatures"><b>dockerode-ms</b></span><span styl=
e=3D"font-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">&nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatures:no-common-=
ligatures"><b>dockerode-util-deprecate</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont">
<span style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(64,11,=
217)"><b>dockerode-doc</b></span><span style=3D"font-variant-ligatures:no-c=
ommon-ligatures">&nbsp;<span class=3D"x_m_7217947524574696501x_m_2196432746=
841393690x_x_x_x_Apple-converted-space">&nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span =
style=3D"font-variant-ligatures:no-common-ligatures; color:rgb(64,11,217)">=
<b>dockerode-once</b></span><span style=3D"font-variant-ligatures:no-common=
-ligatures">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatur=
es:no-common-ligatures; color:rgb(64,11,217)"><b>dockerode-wrappy</b></span=
></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-doc=
ker-modem</b></span><span style=3D"font-variant-ligatures:no-common-ligatur=
es; color:rgb(0,0,0)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span =
style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-process-n=
extick-args</b></span><span style=3D"font-variant-ligatures:no-common-ligat=
ures; color:rgb(0,0,0)">&nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=3D"font-variant-ligatu=
res:no-common-ligatures"><b>dockerode-xtend</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(64,11,217)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>dockerode-doc=
ker-modem-isarray</b></span><span style=3D"font-variant-ligatures:no-common=
-ligatures; color:rgb(0,0,0)">&nbsp;&nbsp;</span><span style=3D"font-varian=
t-ligatures:no-common-ligatures"><b>dockerode-pump</b></span></p>
<p style=3D"margin-right:0px; margin-left:0px; font-variant-numeric:normal;=
 font-variant-east-asian:normal; font-stretch:normal; font-size:11px; line-=
height:normal; font-family:Menlo,serif,EmojiFont; color:rgb(47,180,29)">
<span style=3D"font-variant-ligatures:no-common-ligatures"><b>edson@ubuntu-=
16</b></span><span style=3D"font-variant-ligatures:no-common-ligatures; col=
or:rgb(0,0,0)">:</span><span style=3D"font-variant-ligatures:no-common-liga=
tures; color:rgb(64,11,217)"><b>packages-split</b></span><span style=3D"fon=
t-variant-ligatures:no-common-ligatures; color:rgb(0,0,0)">$<span class=3D"=
x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_Apple-converted-space=
">&nbsp;</span></span></p>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt">
<br>
</div>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt">
NOTE. building dockerode with morty only one ipk is generated:</div>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt">
<br>
</div>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690x_x_x_x_divtagdefa=
ultwrapper" dir=3D"ltr" style=3D"font-size:12pt">
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">edson@NodeGrid-CustomKit-SDK:nod=
egrid$ ls tmp/deploy/ipk/core2-64/dockerode*.ipk</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">tmp/deploy/ipk/core2-64/dockerod=
e_2.4.3-r0_core2-64.ipk</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">tmp/deploy/ipk/core2-64/dockerod=
e-dbg_2.4.3-r0_core2-64.ipk</span></p>
<p style=3D"margin:0px; font:11px Menlo; color:rgb(0,0,0)"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">tmp/deploy/ipk/core2-64/dockerod=
e-dev_2.4.3-r0_core2-64.ipk</span></p>
<br>
</div>
Thanks in advance.</div>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690Signature">
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapp=
er" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); background-color=
:rgb(255,255,255); font-family:Calibri,Arial,Helvetica,sans-serif,Helvetica=
,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoCol=
orEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols"=
>
<p></p>
<p class=3D"x_m_7217947524574696501x_m_2196432746841393690x_MsoNormal" styl=
e=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-seri=
f; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Edson Seabra</span></p=
>
<p class=3D"x_m_7217947524574696501x_m_2196432746841393690x_MsoNormal" styl=
e=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-seri=
f; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Principal Engineer</sp=
an></p>
<p class=3D"x_m_7217947524574696501x_m_2196432746841393690x_MsoNormal" styl=
e=3D"margin:0in 0in 0.0001pt; font-size:11pt; font-family:Calibri,sans-seri=
f; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">M &#43;1 510 579 0843<=
/span></p>
<div><span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;=
,serif,EmojiFont; color:rgb(96,109,117)"><b>E&nbsp;&nbsp;&nbsp;</b></span><=
a href=3D"mailto:alvin.chan@zpesystems.com" rel=3D"noopener noreferrer" id=
=3D"LPlnk842250" class=3D"x_m_7217947524574696501OWAAutoLink OWAAutoLink" t=
arget=3D"_blank" style=3D"font-size:12pt; font-family:Calibri" previewremov=
ed=3D"true"><span style=3D"font-size:10pt; font-family:&quot;Source Sans Pr=
o&quot;,serif,EmojiFont; color:rgb(5,99,193)">edson.seabra@zpesystems.com</=
span></a><br>
</div>
<div>
<p style=3D"margin:0in 0in 0.0001pt; font-size:12pt; font-family:Calibri"><=
span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,serif=
,EmojiFont; color:rgb(96,109,117)"></span></p>
<p style=3D"margin:0in 0in 0.0001pt; font-size:12pt; font-family:Calibri"><=
span style=3D"font-size:10pt; font-family:&quot;Source Sans Pro&quot;,serif=
,EmojiFont; color:rgb(96,109,117)"><img class=3D"x_m_7217947524574696501x_m=
_2196432746841393690EmojiInsert" alt=3D"1506169147061_OutlookEmoji-15053302=
44060_ZPELogo_Email.png1e6c5898-d340-4c90-8c28-e559c26bc7d1.png" style=3D"w=
idth: 174px; max-width: 100%; user-select: none;" tabindex=3D"0" data-outlo=
ok-trace=3D"F:1|T:1" src=3D"cid:16ab1d2b4d1e67dc2ab1"><br>
<span class=3D"x_m_7217947524574696501x_m_2196432746841393690contextualExte=
nsionHighlight x_m_7217947524574696501x_m_2196432746841393690ms-font-color-=
themePrimary x_m_7217947524574696501x_m_2196432746841393690ms-border-color-=
themePrimary x_m_7217947524574696501x_m_2196432746841393690ident_378_416"><=
a href=3D"https://maps.google.com/?q=3D46757&#43;Fremont&#43;Blvd.,&#43;Fre=
mont,&#43;CA&#43;94538&amp;entry=3Dgmail&amp;source=3Dg" id=3D"LPlnk979020"=
 class=3D"x_m_7217947524574696501OWAAutoLink OWAAutoLink" target=3D"_blank"=
 previewremoved=3D"true">46757
 Fremont Blvd., Fremont, CA 94538</a></span><br>
</span><a href=3D"https://www.zpesystems.com/" rel=3D"noopener noreferrer" =
id=3D"LPlnk294299" class=3D"x_m_7217947524574696501OWAAutoLink OWAAutoLink"=
 target=3D"_blank" previewremoved=3D"true"><b><span style=3D"font-size:10pt=
; font-family:&quot;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109=
,117)">zpesystems.com</span></b></a><b><span style=3D"font-size:10pt; font-=
family:&quot;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)">=
&nbsp;|&nbsp;</span></b><b><span style=3D"font-size:10pt; font-family:&quot=
;Source Sans Pro&quot;,serif,EmojiFont; color:rgb(96,109,117)"><a href=3D"h=
ttps://www.zpesystems.com/demo/" rel=3D"noopener noreferrer" id=3D"LPlnk195=
528" class=3D"x_m_7217947524574696501OWAAutoLink OWAAutoLink" target=3D"_bl=
ank" previewremoved=3D"true">Request
 a Nodegrid Demo</a></span></b></p>
</div>
</div>
</div>
</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapp=
er" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-family:Cali=
bri,Helvetica,sans-serif,Helvetica,EmojiFont,&quot;Apple Color Emoji&quot;,=
&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot=
;Android Emoji&quot;,EmojiSymbols">
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690Signature">
<div id=3D"x_m_7217947524574696501x_m_2196432746841393690divtagdefaultwrapp=
er" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); background-color=
:rgb(255,255,255); font-family:Calibri,Arial,Helvetica,sans-serif,Helvetica=
,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoCol=
orEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols"=
>
<div></div>
<p></p>
</div>
</div>
</div>
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" id=3D"LPlnk840861" class=3D"x_m_7=
217947524574696501OWAAutoLink OWAAutoLink" target=3D"_blank" previewremoved=
=3D"true">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" id=3D"LPlnk960037" class=3D"x_m_7217947524574696501OWAAutoLink OWAAutoLin=
k" target=3D"_blank" previewremoved=3D"true">https://lists.yoctoproject.org=
/listinfo/yocto</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_--

--_004_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Description: Outlook-1506169147.png
Content-Disposition: inline; filename="Outlook-1506169147.png"; size=2497;
	creation-date="Mon, 13 May 2019 15:33:08 GMT";
	modification-date="Mon, 13 May 2019 15:33:08 GMT"
Content-ID: <16ab1d2b4d1e67dc2ab1>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAK4AAABICAYAAABvEc5xAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAACWNJREFUeNrsnU9u20YUxidBD6AbhD5BKKDLAqZOEPkEltZd2AK6aTe2
Nu2mgORF15JPIPkEYoAuC0Q9gXmD8AbtPOUxGY/f48yQHP3L+wDCiUSRlPibN997HHKUEolEIpFI
JBKJRCKRSCQSib4bvYm58Z///ifTf2Ap9bL+66cfi4j7SvSfoV56etnqfa3l9Aq4TUF6tl7O9fKo
oVp23DhuEFpTVwLv+eqHiNtOiNd2EVjDBqBNNFh5y4axwG1SSiHKyyk+T72NuO0CLQIH1UbDN9NL
rwG09xjNs5rVcjm9YhXaRMWqG0+Y1bZ6GejoW3psDyBf1QBbYpR9bBPNRd85uBZ0I/3njgG4RHi3
Dmg3GK2p6D7FBLCU0yrgxgD4FgHuEfD2ucqD/tyGibRzgFaAFXD3AW+KiVXqaxv0Z/4jQL8SSyDJ
2d6ElmCAoNpJ28Ij2aqshUArEbdVBIVuHyzAJb70EaHM67rwGt/6qgaL647QYsxd1kCvP8TtXho+
eCKW4nj06+9/9qpz/8dvv+SHAPcefSuX5bPAYOXhk+V5C/S7ZcMGdEN4aIXJ25UgcxTAzjAQbY2E
fawB9qq9d2UV3jOvV1HyGasKlG0ASMfWywkCGAJthg3gjoFW1bwu2q9WGGnhvE+gh1VfqkIrDfVw
n+A+Ot4HYBZYUaDgXavXFwyuA6AdoeVIHKt+FGYOHm0BzAxhXWDkXSEjS6bnjgMugtc3Wg4X7mdc
5MXPvYi66FN9Ii2X0G1xu2O0HveCzsEFkXarLUFhnKPq30+KrtO/UmdjFbBSsK2gRe8KrcmGDyLv
1r7YABUC/XquXtZqP9Q0AvNKGlWBGMccjSZqpR5hDYPOVbRyGECDidCYiryelsMVcSk/u9T7HQi0
RysIRIm2DJlxztcYpG6U58Co6HVcHMI4t17O8CIE9aVetExmPbM89iLS6v2NhY3jlbYIW/SyK/y7
RXhTXKZHAa7hXwtX8oXlL+qiBKUhEW0F2tOAF87TA57Dz5hYAx8DBDuOx0X/SmXwBdVFA5D6M49W
xsgBWVjvcZWCS8IiFIHHW9YN7AnMlhOPqganwkhWuO2nuF7J7NtuyCUmQXmHFYEUcxB7P7kvcAa8
kCg3TpbfBAJbN0LLzORfjTfA7H9jAf2G2Me9BfiUqgYQg27G1J0Ver2VwysXeLxFw5Pp85v4CAC7
ssFEKM1SHxTpl/hehr9V5vh+EDTmFPSe33Gk+JF95n6m1bHFVqhVGHqcoJTwnqrFuIJ3vlGLgDbz
SPAS6ngDNOoAWoXw3TEJaGInthqmBQKdeXw/2MYnIyHyjrB6gYs6C4/eBN5f6PU32NiOCtym5Y42
StRxq8uxD6nH9+9pMFYNGtsucmP09LUFTXqSDBtJejTgYle8VOelnKh6hHi1peru3jbfK3vDGpuW
OxrTwhV5DWh7Nb9ZtXCBK2rkDU7OsNw0dvjNo4UUarwRsmTvgTsIzYaBrkkDIr2lw//CmICLGs+7
YKCd2l4Z4YT66y0BL2xnEONEvlWivQkj2YpLaBskTwBrn0qIoJqglwHTGHqMn64SMaqbh6Tw3j5G
qIboZaLoUmTma00E3OOFtsd0vyVCEQotgOn8HEJFWZkRHhOVDNqauKoF+D518eBGwD1PaAehNdAK
9oD1x4Tv7dleGe2F7UshonpZGKzN2tWdNIbXFXD3o01N99vkAsjadcHCAqpkou4lURGw9RB6bAHJ
5P6SM1FwtF3UQNu0GvHUsGJh+83EATLoWn+HDwH7oezHOwH3tKCdKbreOm95halJlC48IbPVRT22
85quWIV40AKw1B0fS0yYGivEJjiUnOrvK+DGg3bBVQI62H7W0aFu9/STPHS9QbEK3UML3eKMgaSr
O4xhH3ngZzJPkDMi2fq34XE2Gjkm4B4G2rqyV1fjGqA2GnqV7ZpJ2ExRgJZY5hKrcKbQVve/xYZ2
5031/m4Djm3E+Nm14/+gUewBMwLuYaHlbo8fxOgqwY74AFVjXV514di4qGrHgrnKRjYSaFS+6wu4
h1VdrTZmAvSpLvIaA3q4ATPK8/WdBaq7Agb7MsbuzhQ9kOhwHteYkORF13UigCV4h4Wpos2cFFir
HTKJDnTpvv5wF+0aWAqIvDdGElUiaB8UXz+dc7f0QKlNb29CRGnY1rN+D36rJ/XtEnK1L5sJuNSb
dXnrUGNw8Y7bjTpdQQO7I76XagHvqCbzD/WG8CirsSfkPet7+XrerauODGMTNHTvme82Uv6D2Itj
sQpDdZ5KTuw4BqrZnRdr5Tk+FuvN8xbfZdrhhZLW4C4DfiAqWsdUj+mufU5wGx/aZXF96wkVrAeP
vPLthquhk1chVgQj8yAwcuaYkN7HPNlBVgHuhNUADpRjthvmlu/Usxtp2kov7QaDt8X3HV1bq8n8
4ATpbjVX7e8AKULGL2A0G2ACdk1YkwIbwlObcRHoUS/wYXWVl02sRlE9fusxcjLaPDnDu3WbGO5r
z+hSOICv9NGCBX7YCdXYVIv79wNObq4OoH3tG0eyHc28cXsphzGViCfP7rKHD/Rw2ZGEe4yp6Pz0
dg/QUvdZlVwWjw8SKVxJIdoRO9LM9uClRecOrvH0Gjtxcg3ryx0242vmSry2qXkGr0jAZWGFrn2I
t6xT0OYeNVPbRqRUJEW/PSeqC/AM3h3ATaZcPTIVgmkkcMGDIigwF9lnxU9b6jW0D7N8+4TdMetC
9KYaAuwfLj9+huPSy/OJ2ogH9bKkNxdsu4u4rgevVd3/IGAmnVcPeUbrQcE7Vu4aMyR4s1M7QUbN
FsqQ/bZ3T5yLupouCiIb5ysBVHji4jxwm9DFP6uAaaRwzoiZ4q9ARXmSjeh0I67dnYGgu4dIeFEH
LXrilKkuTImouaizGHq5wP2urWMqVYRbSEQnHHFbROqRAeKSegw+81yypTwyX8A9FLTQpdsXDPr2
5WJm5kmFnlamOBWrsDdgE4yit4wftrv/QtEjmiBab+SCg0Tc2MC65tkd19V3LVtha/f4S4m+Am6X
wEJEvFbfZj5XodAa2wKvu2K2Uz0f66GrCUlE3ym4Hg98BtiuQuaHwIbA3eNViZxARSQe1wewzAEt
RNiL0ElNIJrqpa/qJ3JLVeDs6yIB16Uco+G4TUTEKaQuFH/FTKKtWIXGUbcqeRWG/yxiVCrUl6GP
1Z0AOVoQgVckEolEIpFIJBKJRKJY+l+AAQBmPASO0bwXpAAAAABJRU5ErkJggg==

--_004_DM6PR19MB2796903F77893698D52BB672F70F0DM6PR19MB2796namp_--
