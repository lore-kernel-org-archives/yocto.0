Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.131])
 by mx.groups.io with SMTP id smtpd.web12.4479.1591147489799991552
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 18:24:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zpesystems.onmicrosoft.com header.s=selector2-zpesystems-onmicrosoft-com header.b=cEp3Kgqj;
 spf=pass (domain: zpesystems.com, ip: 40.107.223.131, mailfrom: edson.seabra@zpesystems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JeabN0Tg2AQRt25Pb3/HPByDC/mLmKzMOaCQZkzeKh9IQAX0mqgViLvHPFMFbd0gPrhyp25D6jQ9vXe3yCvIV/sNT7j+fNsSLA49pKugmIpOcsnwioxohRV2iuiMPmuyPsKwxuXtGlqpe/6GeIUgFGdo0rwZI/jCJF8+338iO0e9GTZJPHEiUEiFcBpN/es+3gZuelmzWBz8PWtXMP35B/z0/iiho7mv4BULldlfOwxkIPnGTLH/O/4QQWXKfSnwx6oqH6y/XrOGXES+zuFITz3TyBhKdifTm8jVWNFFcOMRDBdEgcITBOzlyXK7j+VQKGnFBBvAsLJYQtfpTosIvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AcpCsxbpnNDB4wJza7cubt46xll8io2h/Ty4szxE4qM=;
 b=jNcaGGXUDZ4SwYDiKtayxyshQLc/IcUYwyoGxhVbihv3bZE/7B6S9xDQ2b+EJTRCfSdCaNaK2g2o6mdBSa0a3eEtPmbGwFM0LXXKnP4tsVtxqNiUC0lvPbMVXh6h3MSnvFqxbppjBkK+MJkYQslYR3JsR3+c/GTUYRIO4b5FUcaSMSElX3BO0V1EN8syiGKhXnNlpHltK0FtWzvcD+6OL42rY2RC1XHHsx1GhICp3uavTeP2AHAF1c2yVVhPFfmpZxVzGJ6zIOcIp6y9ine6wgs7ltSJcPCUB8Kf+bRRz+cMxcMlW5mq6huQ2WmhfANTTW6v2qjlPGRFuAsg8ST8ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=zpesystems.com; dmarc=pass action=none
 header.from=zpesystems.com; dkim=pass header.d=zpesystems.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ZPESystems.onmicrosoft.com; s=selector2-ZPESystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AcpCsxbpnNDB4wJza7cubt46xll8io2h/Ty4szxE4qM=;
 b=cEp3KgqjAD3RLXA60Ss4HIxpIduxW7Dli1CU+L2wIA7FZOtnkdlE+nt6QuemFh6BJUrXWg2PnZoCQWVDbJC7xBEvt29Jt8n7p27KRU70SIUwwMzsdF6CSoK9kYaRxDkokOqhJCh1FKjKVXEcp0rDeHIjkBkeVomcJ8pF8ih4Y+Q=
Received: from MWHPR19MB1232.namprd19.prod.outlook.com (2603:10b6:320:2d::21)
 by MWHPR19MB1134.namprd19.prod.outlook.com (2603:10b6:300:a4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Wed, 3 Jun
 2020 01:24:48 +0000
Received: from MWHPR19MB1232.namprd19.prod.outlook.com
 ([fe80::25d4:9361:c76b:c27a]) by MWHPR19MB1232.namprd19.prod.outlook.com
 ([fe80::25d4:9361:c76b:c27a%10]) with mapi id 15.20.3045.024; Wed, 3 Jun 2020
 01:24:48 +0000
From: "Edson Seabra" <edson.seabra@zpesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Error when building NPM package grpc with yocto Dunfell
Thread-Topic: Error when building  NPM package grpc with yocto Dunfell
Thread-Index: AQHWOUTBe9qnYgmq6EOCHn9CRDm9DA==
Date: Wed, 3 Jun 2020 01:24:47 +0000
Message-ID: 
 <MWHPR19MB1232F6934FE11B83311661FBF7880@MWHPR19MB1232.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=zpesystems.com;
x-originating-ip: [2804:14d:7e81:88ba:3522:c0c6:ecae:e410]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7393bf1e-f5da-412e-d32b-08d8075ce7de
x-ms-traffictypediagnostic: MWHPR19MB1134:
x-microsoft-antispam-prvs: 
 <MWHPR19MB1134E9D4E9751E6229BA90ECF7880@MWHPR19MB1134.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04238CD941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yCHdC08QFhzCzOqwGbzLdyvQU9rNPHRHwXlILV5WDYzce5v7+bBGs9MrfIdVI9qaQTacNr5Gmx8a+z/92mavWEBaX/8C0LXoczoMom9/OhERrx8Xtl+jR05F4mdKfRfJUfKuhNsDBO50men7ZSb7DY6V9tWJt/FNhaiUFoktQi+gsPY4yflZwIk5jvbv+amVl5eLM+YL7pynMixPfYuQE0aJ+IcazGWrqAc+JQb3eZbPkFyfZ8+wrrUdoTlA1wVQO0iUAwbcKfauopuYVZVUNKhbBe8qtTfdv2tCnoaugDMwGQMEocBkjlvRQAPhuIEpV3eOxUXXVBVQIxnu1aT3A1AuXlAunrQmdFJPEJ3q0CwTDOYYMtP4AqjBkDdZXUDdxgqG57UFJqwoOCXsikoqkw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR19MB1232.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(346002)(366004)(52536014)(5660300002)(71200400001)(166002)(33656002)(508600001)(966005)(6916009)(83380400001)(2906002)(99936003)(8936002)(9686003)(8676002)(6506007)(86362001)(55016002)(7696005)(66946007)(66616009)(91956017)(76116006)(66556008)(66446008)(186003)(19627405001)(64756008)(66476007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 Ory4TCnlDrIuwwE9yZQNhI6/yQx46TC+joS8BMn0GRrynAhpHYkBeyiYNdj8/OJFYqG5Z9Tk3TrwRvJs6zevxd6TKkgSQE76pjiDraXQVSZOeoQZCTB6mBhi3+O8sm0dB3I6R0YPHloFza5vXYWKaRQeUryXTFJFnDBGdxeMC9F4HivstMqAEUp8S7WchWdCS2Oz6pjW7VpwugC58HxUX7V3nVBnm2qavV8eQgh01AKLDtvdBlY3yMY+QGSGaza6ANqUmiflE1cQLttE7lrztrYrFw+xLC3Xi1UsWsi/nRYE5sXmPQUszn3sr8gRXLfbyppJowfEy80jl6ajYUsz5AlrMpXQWWa9Fl8WpLTj2+saDUFxmZOB4lEO/0BU49Ksk0dXJUC6QtA4hqBIvq8ZJRZ/1J8LbJrVysbOWI7AM//Gedt/1SPqdDX17vaKCzVVY61hw+Pgjm6nHjQ2+n/dzO72eybnGSC8/yrJLk+0u8IRHKmwjb+hq/OwF0oi1XmwYkkgfLf4KFEN0nQ647Bb0ZfViJsXanUhCu/8aLZUgapC+/svSsnMaveoJ1F1WO/e
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: zpesystems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7393bf1e-f5da-412e-d32b-08d8075ce7de
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2020 01:24:47.9641
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzM4uVCcWjAf+gH1/4s9U4MzOk1tzLtOLfQH9/EXSMOIRbumYJYUo96JkaBeJh1xIfEL4fDFMJSAOIVDybzbDyeRWHQ39B0Sc7nxD7YFRNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR19MB1134
X-Groupsio-MsgNum: 49563
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_";
	type="multipart/alternative"

--_004_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_"

--_000_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi, all.

I created the recipe for grpc package with:

recipetool create "npm://registry.npmjs.org/;package=3Dgrpc;version=3Dlates=
t"

The build fails with the error ENOTCACHED.

I could build several other NPM package with the same process in the same b=
uild environment.

Any help on this issue will be very appreciated. Thanks in advance.

Exception: bb.fetch2.FetchError: Fetcher failure: Fetch command export PSEU=
DO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export PATH=3D"/home/eds=
on/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/edso=
n/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-pok=
y-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/hom=
e/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recip=
e-sysroot/usr/bin/crossscripts:/home/edson/ng-trunk/nodegrid/tmp/work/core2=
-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/sbin:/home/edson/ng=
-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-=
native/usr/bin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/g=
rpc/1.24.2-r0/recipe-sysroot-native/sbin:/home/edson/ng-trunk/nodegrid/tmp/=
work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/bin:/home/eds=
on/ng-trunk/poky/bitbake/bin:/home/edson/ng-trunk/nodegrid/tmp/hosttools"; =
export HOME=3D"/tmp/tmpfksel5vy"; NPM_CONFIG_GLOBALCONFIG=3D/tmp/tmpfksel5v=
y/npmrc NPM_CONFIG_USERCONFIG=3D/tmp/tmpfksel5vy/npmrc npm install /tmp/tmp=
8fo4p29v/grpc-1.24.2.tgz --target_arch=3Dx64 --build-from-source=3Dtrue --p=
refer-offline=3Dtrue failed with exit code 1, output:
npm info it worked if it ends with ok
npm verb cli [
npm verb cli   '/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/=
grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/node',
npm verb cli   '/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/=
grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/npm',
npm verb cli   'install',
npm verb cli   '/tmp/tmp8fo4p29v/grpc-1.24.2.tgz',
npm verb cli   '--target_arch=3Dx64',
npm verb cli   '--build-from-source=3Dtrue',
npm verb cli   '--prefer-offline=3Dtrue'
npm verb cli ]
npm info using npm@6.13.4
npm info using node@v12.14.1
npm verb npm-session 1c72313bb5c9ab81
npm sill install loadCurrentTree
npm sill install readGlobalPackageData
npm sill pacote file manifest for undefined@file:/tmp/tmp8fo4p29v/grpc-1.24=
.2.tgz fetched in 321ms
npm timing stage:loadCurrentTree Completed in 332ms
npm sill install loadIdealTree
npm sill install cloneCurrentTreeToIdealTree
npm timing stage:loadIdealTree:cloneCurrentTree Completed in 0ms
npm sill install loadShrinkwrap
npm timing stage:loadIdealTree:loadShrinkwrap Completed in 2ms
npm sill install loadAllDepsIntoIdealTree
npm sill resolveWithNewModule grpc@1.24.2 checking installable status
npm sill tarball trying file:/tmp/tmp8fo4p29v/grpc-1.24.2.tgz by hash: sha5=
12-fG3+KfpQcxXDADPndyHQu4czffN5AU+1aOn36SmFP67mgMkInvxK7l+/AoEk5tN+OguAWmQx=
TwCDHaL1G6DMMw=3D=3D
npm sill extract file:/tmp/tmp8fo4p29v/grpc-1.24.2.tgz extracted to /tmp/np=
m-7958-3f94111f/unpack-639eccef (1705ms)
npm sill addBundled read tarball
npm sill cleanup remove extracted module
npm sill removeObsoleteDep removing node-pre-gyp@0.14.0 from the tree as it=
s been replaced by a newer version or is no longer required
npm sill fetchPackageMetaData error for node-pre-gyp@0.14.0 request to http=
s://registry.npmjs.org/node-pre-gyp failed: cache mode is 'only-if-cached' =
but no cached response available.
npm timing stage:rollbackFailedOptional Completed in 1ms
npm timing stage:runTopLevelLifecycles Completed in 2486ms
npm verb stack Error: request to https://registry.npmjs.org/node-pre-gyp fa=
iled: cache mode is 'only-if-cached' but no cached response available.
npm verb stack     at /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-=
linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/node_modules/npm/node_mo=
dules/make-fetch-happen/index.js:166:21
npm verb stack     at tryCatcher (/home/edson/ng-trunk/nodegrid/tmp/work/co=
re2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/node_modules=
/npm/node_modules/bluebird/js/release/util.js:16:23)
npm verb stack     at Promise._settlePromiseFromHandler (/home/edson/ng-tru=
nk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-nati=
ve/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js:517=
:31)
npm verb stack     at Promise._settlePromise (/home/edson/ng-trunk/nodegrid=
/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/=
node_modules/npm/node_modules/bluebird/js/release/promise.js:574:18)
npm verb stack     at Promise._settlePromise0 (/home/edson/ng-trunk/nodegri=
d/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib=
/node_modules/npm/node_modules/bluebird/js/release/promise.js:619:10)
npm verb stack     at Promise._settlePromises (/home/edson/ng-trunk/nodegri=
d/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib=
/node_modules/npm/node_modules/bluebird/js/release/promise.js:699:18)
npm verb stack     at Promise._fulfill (/home/edson/ng-trunk/nodegrid/tmp/w=
ork/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/node_m=
odules/npm/node_modules/bluebird/js/release/promise.js:643:18)
npm verb stack     at Promise._resolveCallback (/home/edson/ng-trunk/nodegr=
id/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/li=
b/node_modules/npm/node_modules/bluebird/js/release/promise.js:437:57)
npm verb stack     at Promise._settlePromiseFromHandler (/home/edson/ng-tru=
nk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-nati=
ve/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js:529=
:17)
npm verb stack     at Promise._settlePromise (/home/edson/ng-trunk/nodegrid=
/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/=
node_modules/npm/node_modules/bluebird/js/release/promise.js:574:18)
npm verb stack     at Promise._settlePromise0 (/home/edson/ng-trunk/nodegri=
d/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib=
/node_modules/npm/node_modules/bluebird/js/release/promise.js:619:10)
npm verb stack     at Promise._settlePromises (/home/edson/ng-trunk/nodegri=
d/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib=
/node_modules/npm/node_modules/bluebird/js/release/promise.js:699:18)
npm verb stack     at Promise._fulfill (/home/edson/ng-trunk/nodegrid/tmp/w=
ork/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/node_m=
odules/npm/node_modules/bluebird/js/release/promise.js:643:18)
npm verb stack     at Promise._resolveCallback (/home/edson/ng-trunk/nodegr=
id/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/li=
b/node_modules/npm/node_modules/bluebird/js/release/promise.js:437:57)
npm verb stack     at Promise._settlePromiseFromHandler (/home/edson/ng-tru=
nk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-nati=
ve/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js:529=
:17)
npm verb stack     at Promise._settlePromise (/home/edson/ng-trunk/nodegrid=
/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/=
node_modules/npm/node_modules/bluebird/js/release/promise.js:574:18)
npm verb cwd /tmp/tmpfksel5vy
npm verb Linux 4.15.0-101-generic
npm verb argv "/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/g=
rpc/1.24.2-r0/recipe-sysroot-native/usr/bin/node" "/home/edson/ng-trunk/nod=
egrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr=
/bin/npm" "install" "/tmp/tmp8fo4p29v/grpc-1.24.2.tgz" "--target_arch=3Dx64=
" "--build-from-source=3Dtrue" "--prefer-offline=3Dtrue"
npm verb node v12.14.1
npm verb npm  v6.13.4
npm ERR! code ENOTCACHED
npm ERR! request to https://registry.npmjs.org/node-pre-gyp failed: cache m=
ode is 'only-if-cached' but no cached response available.
npm verb exit [ 1, true ]
npm timing npm Completed in 2749ms

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grp=
c/1.24.2-r0/npm-cache/_logs/2020-06-03T01_14_43_552Z-debug.log


ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp/work=
/core2-64-poky-linux/grpc/1.24.2-r0/temp/log.do_compile.7763
ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/grpc/gr=
pc_1.24.2.bb:do_compile) failed with exit code '1'



Edson Seabra

Principal Engineer

M +1 510 579 0843

E   edson.seabra@zpesystems.com<mailto:alvin.chan@zpesystems.com>

[1506169147061_OutlookEmoji-1505330244060_ZPELogo_Email.png1e6c5898-d340-4c=
90-8c28-e559c26bc7d1.png]
46757 Fremont Blvd., Fremont, CA 94538
zpesystems.com<https://www.zpesystems.com/> | Request a Nodegrid Demo<https=
://www.zpesystems.com/demo/>

--_000_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_
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
Hi, all.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I created the recipe for grpc package with:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
recipetool create &quot;npm://registry.npmjs.org/;package=3Dgrpc;version=3D=
latest&quot;<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The build fails with the error&nbsp;<span style=3D"font-family: Calibri, Ar=
ial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); display: =
inline !important">ENOTCACHED.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; backgrou=
nd-color: rgb(255, 255, 255); display: inline !important">I could build sev=
eral other NPM package with the same process in the same build environment.=
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Any help on this issue will be very appreciated. Thanks in advance.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>Exception: bb.fetch2.FetchError: Fetcher failure: Fetch command expor=
t PSEUDO_DISABLED=3D1; unset _PYTHON_SYSCONFIGDATA_NAME; export PATH=3D&quo=
t;/home/edson/ng-trunk/nodegrid/tmp/sysroots-uninative/x86_64-linux/usr/bin=
:/home/edson/ng-trunk/poky/scripts:/home/edson/ng-trunk/nodegrid/tmp/work/c=
ore2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/x86_64-poky=
-linux:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24=
.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/sbin:/ho=
me/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/reci=
pe-sysroot-native/usr/bin:/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-p=
oky-linux/grpc/1.24.2-r0/recipe-sysroot-native/sbin:/home/edson/ng-trunk/no=
degrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/bi=
n:/home/edson/ng-trunk/poky/bitbake/bin:/home/edson/ng-trunk/nodegrid/tmp/h=
osttools&quot;;
 export HOME=3D&quot;/tmp/tmpfksel5vy&quot;; NPM_CONFIG_GLOBALCONFIG=3D/tmp=
/tmpfksel5vy/npmrc NPM_CONFIG_USERCONFIG=3D/tmp/tmpfksel5vy/npmrc npm insta=
ll /tmp/tmp8fo4p29v/grpc-1.24.2.tgz --target_arch=3Dx64 --build-from-source=
=3Dtrue --prefer-offline=3Dtrue failed with exit code
 1, output:<br>
</span>
<div>npm info it worked if it ends with ok<br>
</div>
<div>npm verb cli [<br>
</div>
<div>npm verb cli &nbsp; '/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-p=
oky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/node',<br>
</div>
<div>npm verb cli &nbsp; '/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-p=
oky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/npm',<br>
</div>
<div>npm verb cli &nbsp; 'install',<br>
</div>
<div>npm verb cli &nbsp; '/tmp/tmp8fo4p29v/grpc-1.24.2.tgz',<br>
</div>
<div>npm verb cli &nbsp; '--target_arch=3Dx64',<br>
</div>
<div>npm verb cli &nbsp; '--build-from-source=3Dtrue',<br>
</div>
<div>npm verb cli &nbsp; '--prefer-offline=3Dtrue'<br>
</div>
<div>npm verb cli ]<br>
</div>
<div>npm info using npm@6.13.4<br>
</div>
<div>npm info using node@v12.14.1<br>
</div>
<div>npm verb npm-session 1c72313bb5c9ab81<br>
</div>
<div>npm sill install loadCurrentTree<br>
</div>
<div>npm sill install readGlobalPackageData<br>
</div>
<div>npm sill pacote file manifest for undefined@file:/tmp/tmp8fo4p29v/grpc=
-1.24.2.tgz fetched in 321ms<br>
</div>
<div>npm timing stage:loadCurrentTree Completed in 332ms<br>
</div>
<div>npm sill install loadIdealTree<br>
</div>
<div>npm sill install cloneCurrentTreeToIdealTree<br>
</div>
<div>npm timing stage:loadIdealTree:cloneCurrentTree Completed in 0ms<br>
</div>
<div>npm sill install loadShrinkwrap<br>
</div>
<div>npm timing stage:loadIdealTree:loadShrinkwrap Completed in 2ms<br>
</div>
<div>npm sill install loadAllDepsIntoIdealTree<br>
</div>
<div>npm sill resolveWithNewModule grpc@1.24.2 checking installable status<=
br>
</div>
<div>npm sill tarball trying file:/tmp/tmp8fo4p29v/grpc-1.24.2.tgz by hash:=
 sha512-fG3&#43;KfpQcxXDADPndyHQu4czffN5AU&#43;1aOn36SmFP67mgMkInvxK7l&#43;=
/AoEk5tN&#43;OguAWmQxTwCDHaL1G6DMMw=3D=3D<br>
</div>
<div>npm sill extract file:/tmp/tmp8fo4p29v/grpc-1.24.2.tgz extracted to /t=
mp/npm-7958-3f94111f/unpack-639eccef (1705ms)<br>
</div>
<div>npm sill addBundled read tarball<br>
</div>
<div>npm sill cleanup remove extracted module<br>
</div>
<div>npm sill removeObsoleteDep removing node-pre-gyp@0.14.0 from the tree =
as its been replaced by a newer version or is no longer required<br>
</div>
<div>npm sill fetchPackageMetaData error for node-pre-gyp@0.14.0 request to=
 https://registry.npmjs.org/node-pre-gyp failed: cache mode is 'only-if-cac=
hed' but no cached response available.<br>
</div>
<div>npm timing stage:rollbackFailedOptional Completed in 1ms<br>
</div>
<div>npm timing stage:runTopLevelLifecycles Completed in 2486ms<br>
</div>
<div>npm verb stack Error: request to https://registry.npmjs.org/node-pre-g=
yp failed: cache mode is 'only-if-cached' but no cached response available.=
<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at /home/edson/ng-trunk/nodegrid/tmp/work=
/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/lib/node_modu=
les/npm/node_modules/make-fetch-happen/index.js:166:21<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at tryCatcher (/home/edson/ng-trunk/nodeg=
rid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/l=
ib/node_modules/npm/node_modules/bluebird/js/release/util.js:16:23)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromiseFromHandler (/ho=
me/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/reci=
pe-sysroot-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release=
/promise.js:517:31)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromise (/home/edson/ng=
-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-=
native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js=
:574:18)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromise0 (/home/edson/n=
g-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot=
-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.j=
s:619:10)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromises (/home/edson/n=
g-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot=
-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.j=
s:699:18)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._fulfill (/home/edson/ng-trunk=
/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native=
/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js:643:1=
8)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._resolveCallback (/home/edson/=
ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroo=
t-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.=
js:437:57)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromiseFromHandler (/ho=
me/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/reci=
pe-sysroot-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release=
/promise.js:529:17)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromise (/home/edson/ng=
-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-=
native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js=
:574:18)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromise0 (/home/edson/n=
g-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot=
-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.j=
s:619:10)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromises (/home/edson/n=
g-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot=
-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.j=
s:699:18)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._fulfill (/home/edson/ng-trunk=
/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-native=
/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js:643:1=
8)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._resolveCallback (/home/edson/=
ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroo=
t-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.=
js:437:57)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromiseFromHandler (/ho=
me/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/reci=
pe-sysroot-native/usr/lib/node_modules/npm/node_modules/bluebird/js/release=
/promise.js:529:17)<br>
</div>
<div>npm verb stack &nbsp; &nbsp; at Promise._settlePromise (/home/edson/ng=
-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recipe-sysroot-=
native/usr/lib/node_modules/npm/node_modules/bluebird/js/release/promise.js=
:574:18)<br>
</div>
<div>npm verb cwd /tmp/tmpfksel5vy<br>
</div>
<div>npm verb Linux 4.15.0-101-generic<br>
</div>
<div>npm verb argv &quot;/home/edson/ng-trunk/nodegrid/tmp/work/core2-64-po=
ky-linux/grpc/1.24.2-r0/recipe-sysroot-native/usr/bin/node&quot; &quot;/hom=
e/edson/ng-trunk/nodegrid/tmp/work/core2-64-poky-linux/grpc/1.24.2-r0/recip=
e-sysroot-native/usr/bin/npm&quot; &quot;install&quot; &quot;/tmp/tmp8fo4p2=
9v/grpc-1.24.2.tgz&quot;
 &quot;--target_arch=3Dx64&quot; &quot;--build-from-source=3Dtrue&quot; &qu=
ot;--prefer-offline=3Dtrue&quot;<br>
</div>
<div>npm verb node v12.14.1<br>
</div>
<div>npm verb npm &nbsp;v6.13.4<br>
</div>
<div>npm ERR! code ENOTCACHED<br>
</div>
<div>npm ERR! request to https://registry.npmjs.org/node-pre-gyp failed: ca=
che mode is 'only-if-cached' but no cached response available.<br>
</div>
<div>npm verb exit [ 1, true ]<br>
</div>
<div>npm timing npm Completed in 2749ms<br>
</div>
<div><br>
</div>
<div>npm ERR! A complete log of this run can be found in:<br>
</div>
<div>npm ERR! &nbsp; &nbsp; /home/edson/ng-trunk/nodegrid/tmp/work/core2-64=
-poky-linux/grpc/1.24.2-r0/npm-cache/_logs/2020-06-03T01_14_43_552Z-debug.l=
og<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>ERROR: Logfile of failure stored in: /home/edson/ng-trunk/nodegrid/tmp=
/work/core2-64-poky-linux/grpc/1.24.2-r0/temp/log.do_compile.7763<br>
</div>
<div>ERROR: Task (/home/edson/ng-trunk/meta-extended/meta-oe/recipes-npm/gr=
pc/grpc_1.24.2.bb:do_compile) failed with exit code '1'<br>
</div>
<br>
</div>
<div>
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
8-e559c26bc7d1.png" style=3D"" data-outlook-trace=3D"F:1|T:1" src=3D"cid:c4=
c5bcbc-ebdc-481a-bd09-f468f62fb625"><br>
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

--_000_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_--

--_004_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_
Content-Type: image/png; name="Outlook-1506169147.png"
Content-Description: Outlook-1506169147.png
Content-Disposition: inline; filename="Outlook-1506169147.png"; size=2497;
	creation-date="Wed, 03 Jun 2020 01:24:47 GMT";
	modification-date="Wed, 03 Jun 2020 01:24:47 GMT"
Content-ID: <c4c5bcbc-ebdc-481a-bd09-f468f62fb625>
Content-Transfer-Encoding: base64

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

--_004_MWHPR19MB1232F6934FE11B83311661FBF7880MWHPR19MB1232namp_--
