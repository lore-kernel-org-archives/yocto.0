Return-Path: <kamal.kishor@vestel.com.hk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B86C54EBD
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 14:32:15 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [104.47.18.110])
 by mx.groups.io with SMTP id smtpd.web11.88141.1673620326160635640
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 06:32:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: vestel.com.hk, ip: 104.47.18.110, mailfrom: kamal.kishor@vestel.com.hk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BH1un6SsKUrbuAPAQNpGT6g1gKT8gQ2vpwYX5ZG3LgsLHRWfK7jZmMaSWNSLb0wCziiY9cu0Tx7rslxAa3Oht6TbQSPkEg4NHWdmcnL9JYO/97uDYjg7pTLBbaTOthN5PWH9HTVPvtbPLn5Ej05COepnF4c8jU/vF7SnLy0wFG1UJAIrZeSHF+/qzFGvQnOmZP/Mwix9yDBDsEtS4LnuQmRSQhqa0sp2aAfErzgGwbd8MkGrgBFzCuSQUN97JCKgNvc2w+2HtwVbFZV5/lIkrwDux8J6j8UTh5bUWFoHyQYiczx5LkdRoyYHUA+9Gmu7WrfUf1gJ0Tb7hnYhgYpn8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K0fockM0vERQ+vYYIhVcLkm2pWLhrw+om+EAFm0GCqg=;
 b=e0S0uWp3E6WIvTN+HbO4ninjjUN1wmifUZomlE3M3K0/BJWCXEVSwVnZbA0yG5ODcwQk3bA9cn7sUXtUJOOOytDthGlUdsP0HrXRpBVx3XjH7vEctGDs3r/3vpCynXlUFEminRyqMlsrxJ+7WiytiabsjxbomUUw3z/isxt9sBJCvoHeNAQKljWf9vikOIvsyof4nYQgiZgNJBswBkx16i9vi52Ke5LtDPCEKK93RdQk9eraMdQ8qP9EIoZ8uCRtEn+vMESI38VUT/Iw72Ffb5d88RnXY1nGBiR2aTct+oKp7v5tUCObrDKEAaZsGnyE9Tll+1xwzZp9MwBPagg+JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vestel.com.hk; dmarc=pass action=none
 header.from=vestel.com.hk; dkim=pass header.d=vestel.com.hk; arc=none
Received: from AM0P195MB0754.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:16a::14)
 by AS8P195MB1679.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:524::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 14:32:02 +0000
Received: from AM0P195MB0754.EURP195.PROD.OUTLOOK.COM
 ([fe80::c244:1829:4ed9:6636]) by AM0P195MB0754.EURP195.PROD.OUTLOOK.COM
 ([fe80::c244:1829:4ed9:6636%9]) with mapi id 15.20.6002.012; Fri, 13 Jan 2023
 14:32:02 +0000
From: Kamal Kishor <kamal.kishor@vestel.com.hk>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: meta-selinux: ERROR: nothing provides coreutils needed by
 packagegroup-core-selinux
Thread-Topic: meta-selinux: ERROR: nothing provides coreutils needed by
 packagegroup-core-selinux
Thread-Index: AQHZJ1hX5y1PNcD3b0WcrMfYnKN44A==
Date: Fri, 13 Jan 2023 14:32:02 +0000
Message-ID: 
 <AM0P195MB07545A4FB9E737CA1BC980CBC5C29@AM0P195MB0754.EURP195.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vestel.com.hk;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0P195MB0754:EE_|AS8P195MB1679:EE_
x-ms-office365-filtering-correlation-id: e9f73ce6-b0d9-4953-e282-08daf572efe9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 me3I7xpzzaezufN2eMjZ75hQTotrvZPjvHy6X+GLlkk/Fi564W3NmsqMgUlHlbjW3gC6iK/KigbHjk3SdhwsUDyZblXc6bMq062T1Z2JMhx4uv5LqlECY3FB3r6KF4DAKmjMhLDVMmgnJmu55vXdiP96IMuHNHX/6K1XW+fQiEXp9uzFyD15yk6Qv0VPsxbfYjg7K/lOf72c2C9kccGRpNEIgNpFgjwX98h6eMTfFqIpgFforKQ5mXG9JRx6htUkBIfLT2BCBmcfcT/n4Z1XDuZV0c9n873MGR54nRRk1gNwjWze7D67fCJWSHwXOQ63JFZNw0/Wwr9C3QMnPhSEXYoV9+zj9UdeE71f4cUwnSSq4KRZ5ObWIgYBtMcVz9EFIqV1VbtA5apiU/UrS7JyhovW9DbdK/8+z1K3jg3ZG9jc+FzBlR5R38kT9yLi7fXHvd4doXgrLN6m88GKjUJgxkqayI1nUFardxbf5n1TBjGbCER4M81t6AruKzQn0Qi/zP1Mq+tJXuuxfsvw1P95O9guAZrfBECju7stBdBDdNEcI3GwAFdD5fBENgQepVw1svKPbUhEjNlcQT3MF2fQtS4VYVFhhgWLCR5l4WzMUlifGRvkNP8YDM1OFR0gCI+FsZBcniX2wY/MmvZN49yf93fr6Z3H3yJy2olTooQcV49pkxxWbF13/AG89pUsAJrz518XIWkI5hDGPbUCL5shXg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0P195MB0754.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(346002)(136003)(396003)(39860400002)(451199015)(44832011)(2906002)(19627405001)(83380400001)(33656002)(9686003)(66446008)(66476007)(66556008)(5660300002)(66946007)(64756008)(52536014)(55016003)(186003)(8936002)(122000001)(6916009)(7696005)(6506007)(99936003)(38100700002)(41300700001)(478600001)(8676002)(86362001)(76116006)(38070700005)(316002)(71200400001)(91956017);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?INihqOof8qUj2mIYD4qN6bRDE7px9fDwDx8vPx9jYuzZZK9VVlNDn6MSJC?=
 =?iso-8859-1?Q?nde1W6ZEmql2TWnEjjaEWCJBAUKbFCgbuMfQ7YrTHWyS7jdesoqlWSHeqa?=
 =?iso-8859-1?Q?zzf0s9GvkyUe15J+pSOnxWbKC/BqnA1EgA+ya4Ficn9XS6A6cMLrdDe9iv?=
 =?iso-8859-1?Q?t+cIzHV1JicRocJz/59pHb4b6ueRSGvTXfBSZn2lEMHzEGCyP9BObTh1BI?=
 =?iso-8859-1?Q?w4r8o88JsBYISqQHcimqsw4XEOXmNwf+GKXQx897T3WYLXnB41Xc5SPlmn?=
 =?iso-8859-1?Q?SN3B0WT6WCXuWbHNO4No/0TxfOybNNPEdMHp5oOxVC0qIyLbuDe2EYHvWX?=
 =?iso-8859-1?Q?NhVksfGV/VPgZwY7+OQTnFKn3Gb+gnMaiVCqoWixMpHh6jflL+aCcnOkQI?=
 =?iso-8859-1?Q?y4I2WYPnfjBMvsBYZ8bjkieuxJ6g2BwlMYS1Lo8uwGSBiy6hdl6oTfL5E2?=
 =?iso-8859-1?Q?URvldOIwMEwr5UR3hliV0DXYhHqkJQCJ6kj1cIGiUo1354TK9dxUdy/W0T?=
 =?iso-8859-1?Q?mDLx8MIe2IhVNVt7PIUq4htQCSr/gCJtfI8xtWn8lbOhFZvxAPi52sBVMz?=
 =?iso-8859-1?Q?Sh4e+twnkx3gz5yvCtY2MjGTGOaawKv5PgoGsHD3Q8tdmx5NSLJp1/uakn?=
 =?iso-8859-1?Q?+LxC2JnFqrOsqjO8OMjQVC/x/niTJxjRu0Z/M1mGKwBA5leXyJQYf8nF2S?=
 =?iso-8859-1?Q?24c1N97qT2ELp9+i22G+z2QN+Qiu5aRzuvN6EXbMc9NuvGPkMESSw9cnr1?=
 =?iso-8859-1?Q?I4MJdUzDyr7LBL3RVEAwqwP3W9lqx79sgogiOyRMtQQfV/WqgW/+9Cq8Hr?=
 =?iso-8859-1?Q?gWU+0cnQi6XCXemdwPKEXLvt2/98OdxQntQYXCiQmwIMv7HjR1PrzwoUv2?=
 =?iso-8859-1?Q?lCVPzy4/td1Qlc0ti6CytulZj9Ypgfw9C/kTZuqz9qRlZ7DDAVxQsFvjxk?=
 =?iso-8859-1?Q?LQL7jdOSCKdbav2V1JOoDIg+ZMIu0rxfTk6qbSf0lkGaiAmJM196luWhMg?=
 =?iso-8859-1?Q?CS63wxaa5RAn8YdRZaHk7iqYZnlv5A7U7jx7MjOZpiD2CeWdgSDBG0sYKF?=
 =?iso-8859-1?Q?Z8u6metD8eoJViic/Iz3jgGFFqHS+yocNDpqlg52jRtw3PO6rbRfiX/9Km?=
 =?iso-8859-1?Q?jFsoIx/DiTXU7KTQsVjR4Q9YxtzZFI9uZ84eAcoAQXOHFTG9W07V+dOIYa?=
 =?iso-8859-1?Q?J7+E1fjG0N0faIutIFPmwY0tXbz9GCluCFDMntSLE+IYUl5KF5oQrpw1Ag?=
 =?iso-8859-1?Q?2AgWpKP5yOM1Roc2AW4i7uSB9bFRrDN7t7zREPFqGVBtvA4gXIl9sqLYn5?=
 =?iso-8859-1?Q?CjWEXn2L2Q08HN3o7IMG4POETtClsr+vKhY7D2ZZf0NJveKZTcCol7g+KX?=
 =?iso-8859-1?Q?WXJ77PRcH8srql/S4Y2fyi+uZgSu/QsVE0WR4AecdjvRUnlJwmAvi9qqSk?=
 =?iso-8859-1?Q?cdFdE+JuVgkgpfCDxAFd4nflhEl2roJe3wiRwnR/fSG1iRni/bpe4qZSxp?=
 =?iso-8859-1?Q?HRDGrBlkBOWqMO6fgFISChquuSk1z9L9nI2YV7Z1D2G3DVrevBUFpNfNqT?=
 =?iso-8859-1?Q?PRwwffvxH00PX988vXRwkjMfPtRy8HXLPxDCF1UYJDzsVMKnKu7XL7YyTO?=
 =?iso-8859-1?Q?uxb3zbM9xXCqNQR9O5wW8fxVe0wgZCtZFAfDUXPPgOWHl5kwnkAeFIdhES?=
 =?iso-8859-1?Q?NaCYft3TrB+2alDQL1Fn3mTbg4B1L9v3JJ/oIhjpw9C5qb2ErI5FaVUN0C?=
 =?iso-8859-1?Q?T6+w=3D=3D?=
Content-Type: multipart/mixed;
	boundary="_004_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	vK9t/QftvJvHKUIdNBN6R222zcuGXCNFzI+FBAvz6yaNfyMnF0JjN8OthnV6vWLch7MA8TtgVrVw3DhvxZJVQJy6z0fAJM4B9uKHnoR0ADVNO64iWylDn2mWNtGL8VyofyspvvGwjBFdtuERbFSp9yyK60II8uaFNY5TbPQ6tGHBExkz4keRnWs1Ae/Mw7jHofP7y7PuJCJz2MWTC9OfH9FRf8ef4jEKQtsGBN1vR64lqso/Ihqm1TFz5rZHHx6TB6FV4r+9PGNWTbAm678yF3IXJhRZOrjWsRt4MsQUyQV5svKqEHWbEoQ97T7a653PkyOk37kwFexYYOSJkp+iFhVsqvzRdynYiMBWzVE2/IWaaDR6/NR/xXhEB3Yl7SzXuuBOyOyLJUDGzKXQ1XEMERFAaht5Ph1UtojKAlgyIbQs6bL5sHIGyqZb6/BnAlXW2G9Qs777u09z9L5nuyZ35hzCE/pWvI3uSxnwQbCelirnTus+WmtABRW0Ugcoqq/G0WfLevSrEu02YZUyGM31+HUiGOWWgvTnX2jr/KrHqdqvSeq1k9FLZpor02YIdiI/xACgzODL3/mWR59JsxFqDBXzVzTWnWZE70mGYhr3k8QRxjR9P0PK3uHvIz5mmD/EgscJE/oJiT+ChIS4NW5aNPIUVQ1Gx9zcYACx7bzOu25frexpRitxhlMSvWaeV1qOKP7Ga4iZzCHZb/7m5kNnue2Uf5XsPNgZWXzAHbDxNIQEDVQXXoce7q5ajKLbdYQ3LvBdwd1CgwQbnB2d0cWm/Q==
X-OriginatorOrg: vestel.com.hk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0P195MB0754.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f73ce6-b0d9-4953-e282-08daf572efe9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 14:32:02.6349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb921106-c510-4198-a2d7-c4509b08ed00
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +MuHqRcAaU87QY07TRV5hoy8ZphuJKdRK7V8Yj8x9rJmwOT1tmfrHuHB0JeE3TlRuogreG+wFUXkbaxOnNMrBBVjCGwhCqgH4qGrflcw9lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P195MB1679
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 14:32:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58975

--_004_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_
Content-Type: multipart/alternative;
	boundary="_000_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_"

--_000_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I was trying to integrate meta-selinux layer with thud branch on our existi=
ng yocto build. I followed all the steps which are mentioned in README and =
SElinux-FAQ but I am facing an error in do_rootfs step.
The error is shown below:

ERROR: custom-base-image-1.0-r0 do_rootfs: Unable to install packages. Comm=
and '/mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/=
work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/recipe-sysroot-na=
tive/usr/bin/opkg --volatile-cache -f /mnt/EVC-TI-06.03.00.106/tisdk/build/=
arago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-ba=
se-image/1.0-r0/opkg.conf -t /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp=
-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-image/=
1.0-r0/temp/ipktemp/ -o /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-exte=
rnal-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r=
0/rootfs  --force_postinstall    install agentv3-evc10 base-passwd czmq dro=
pbear e2fsprogs-resize2fs eichrecht gattlib gosuncn-cm ifmetric kernel-modu=
le-mt7663 kernel-module-mt7668 kernel-module-mt7668-bt libmodbus5 libtcti-d=
evice-dev libtcti-device-staticdev libtcti-device0 libtcti-socket-dev libtc=
ti-socket-staticdev libtcti-socket0 libtss2 libtss2-dev libtss2-staticdev l=
ibwebsockets19 midmeter modbustcp ocpp-evc10 openssh-sftp-server opkg ostre=
e packagegroup-arago-base packagegroup-arago-base-tisdk packagegroup-arago-=
console packagegroup-arago-qte packagegroup-arago-tisdk-connectivity packag=
egroup-arago-tisdk-crypto packagegroup-arago-tisdk-graphics packagegroup-co=
re-boot packagegroup-core-selinux parted procps psplash pybluez python3-aws=
-iot-device-sdk-python python3-bcrypt python3-flask python3-flask-login pyt=
hon3-flask-restful python3-flask-sqlalchemy python3-marshmallow python3-mod=
bus-tk python3-pycryptodome python3-pyjwt python3-pyserial python3-pyzmq py=
thon3-requests python3-sqlalchemy quectel-cm resourcemgr rest-webasto restv=
2 run-postinsts shadow smartcharge tpm2.0-tools tzdata ui-evc10 uidreader w=
ebconfigv3 wpa zeromq' returned 1:
Collected errors:
 * Solver encountered 1 problem(s):
 * Problem 1/1:
 *   - nothing provides coreutils needed by packagegroup-core-selinux-1.0-r=
0.armv7at2hf-neon
 *
 * Solution 1:
 *   - do not ask to install a package providing packagegroup-core-selinux



ERROR: custom-base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in: /mnt/EVC-TI-06.03.00.106/tisdk/build/a=
rago-tmp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-bas=
e-image/1.0-r0/temp/log.do_rootfs.21704
ERROR: Task (/mnt/EVC-TI-06.03.00.106/tisdk/sources/meta-custom/recipes-cor=
e/images/custom-base-image.bb:do_rootfs) failed with exit code '1'


To avoid the error, I added RDEPENDS_packagegroup-core-selinux_remove =3D "=
coreutils" to local.conf. After that the build is successfull.
But I am not sure if this will break selinux functionality. Please provide =
me with some insights on this.

Attached here is the log file for your reference. Please let me know if you=
 need any information from me.

Thanks & Regards
Kamal Pandey


--_000_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_
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
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" c=
lass=3D"elementToProof">Hi,</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof">I was trying&nbsp;to integ=
rate meta-selinux layer with thud branch on
 our existing yocto build. I followed all the steps which are mentioned in =
README and SElinux-FAQ but I am facing an error in do_rootfs step.&nbsp;</s=
pan></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof">The error is shown below:<=
/span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Calibri, Arial, H=
elvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-colo=
r: rgb(255, 255, 255);" class=3D"elementToProof ContentPasted0">ERROR: cust=
om-base-image-1.0-r0 do_rootfs: Unable
 to install packages. Command '/mnt/EVC-TI-06.03.00.106/tisdk/build/arago-t=
mp-external-arm-toolchain/work/am437x_hs_evm-linux-gnueabi/custom-base-imag=
e/1.0-r0/recipe-sysroot-native/usr/bin/opkg --volatile-cache -f /mnt/EVC-TI=
-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/work/am437x_hs_e=
vm-linux-gnueabi/custom-base-image/1.0-r0/opkg.conf
 -t /mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/w=
ork/am437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/temp/ipktemp/ -o /=
mnt/EVC-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/work/a=
m437x_hs_evm-linux-gnueabi/custom-base-image/1.0-r0/rootfs
 &nbsp;--force_postinstall &nbsp; &nbsp;install agentv3-evc10 base-passwd c=
zmq dropbear e2fsprogs-resize2fs eichrecht gattlib gosuncn-cm ifmetric kern=
el-module-mt7663 kernel-module-mt7668 kernel-module-mt7668-bt libmodbus5 li=
btcti-device-dev libtcti-device-staticdev libtcti-device0
 libtcti-socket-dev libtcti-socket-staticdev libtcti-socket0 libtss2 libtss=
2-dev libtss2-staticdev libwebsockets19 midmeter modbustcp ocpp-evc10 opens=
sh-sftp-server opkg ostree packagegroup-arago-base packagegroup-arago-base-=
tisdk packagegroup-arago-console
 packagegroup-arago-qte packagegroup-arago-tisdk-connectivity packagegroup-=
arago-tisdk-crypto packagegroup-arago-tisdk-graphics packagegroup-core-boot=
 packagegroup-core-selinux parted procps psplash pybluez python3-aws-iot-de=
vice-sdk-python python3-bcrypt python3-flask
 python3-flask-login python3-flask-restful python3-flask-sqlalchemy python3=
-marshmallow python3-modbus-tk python3-pycryptodome python3-pyjwt python3-p=
yserial python3-pyzmq python3-requests python3-sqlalchemy quectel-cm resour=
cemgr rest-webasto restv2 run-postinsts
 shadow smartcharge tpm2.0-tools tzdata ui-evc10 uidreader webconfigv3 wpa =
zeromq' returned 1:
<div class=3D"ContentPasted0">Collected errors:</div>
<div class=3D"ContentPasted0">&nbsp;* Solver encountered 1 problem(s):</div=
>
<div class=3D"ContentPasted0">&nbsp;* Problem 1/1:</div>
<div class=3D"ContentPasted0">&nbsp;* &nbsp; - nothing provides coreutils n=
eeded by packagegroup-core-selinux-1.0-r0.armv7at2hf-neon</div>
<div class=3D"ContentPasted0">&nbsp;* </div>
<div class=3D"ContentPasted0">&nbsp;* Solution 1:</div>
<div class=3D"ContentPasted0">&nbsp;* &nbsp; - do not ask to install a pack=
age providing packagegroup-core-selinux</div>
<div><br class=3D"ContentPasted0">
</div>
<div><br class=3D"ContentPasted0">
</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">ERROR: custom-base-image-1.0-r0 do_rootfs: Fu=
nction failed: do_rootfs</div>
<div class=3D"ContentPasted0">ERROR: Logfile of failure stored in: /mnt/EVC=
-TI-06.03.00.106/tisdk/build/arago-tmp-external-arm-toolchain/work/am437x_h=
s_evm-linux-gnueabi/custom-base-image/1.0-r0/temp/log.do_rootfs.21704</div>
<div class=3D"ContentPasted0">ERROR: Task (/mnt/EVC-TI-06.03.00.106/tisdk/s=
ources/meta-custom/recipes-core/images/custom-base-image.bb:do_rootfs) fail=
ed with exit code '1'</div>
<div class=3D"ContentPasted0"><br>
</div>
<div class=3D"ContentPasted0"><br>
</div>
<div class=3D"ContentPasted0 ContentPasted1">To avoid the error, I added&nb=
sp;RDEPENDS_packagegroup-core-selinux_remove =3D &quot;coreutils&quot; to l=
ocal.conf. After that the build is successfull.&nbsp;</div>
<div class=3D"ContentPasted0 ContentPasted1">But I am not sure if this will=
 break selinux functionality. Please provide me with some insights on this.=
</div>
<div class=3D"ContentPasted0 ContentPasted1">&nbsp;</div>
<div class=3D"ContentPasted0">Attached here is the log file for your refere=
nce. Please let me know if you need any information from me.</div>
<div class=3D"ContentPasted0"><br>
</div>
<div class=3D"ContentPasted0">Thanks &amp; Regards</div>
<div class=3D"ContentPasted0">Kamal Pandey</div>
<br>
</span></div>
</body>
</html>

--_000_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_--

--_004_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_
Content-Type: application/octet-stream; name="log.do_rootfs.21704"
Content-Description: log.do_rootfs.21704
Content-Disposition: attachment; filename="log.do_rootfs.21704"; size=13204;
	creation-date="Fri, 13 Jan 2023 14:31:36 GMT";
	modification-date="Fri, 13 Jan 2023 14:31:45 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290Ck5P
VEU6IERpcmVjdCBkZXBlbmRlbmNpZXMgYXJlIFsndmlydHVhbDpuYXRpdmU6L21udC9FVkMtVEkt
MDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9tZXRhL3JlY2lwZXMtY29yZS91cGRh
dGUtcmMuZC91cGRhdGUtcmMuZF8wLjguYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFs
Om5hdGl2ZTovbW50L0VWQy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvc291cmNlcy9vZS1jb3JlL21l
dGEvcmVjaXBlcy1leHRlbmRlZC94ei94el81LjIuNC5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
Jy9tbnQvRVZDLVRJLTA2LjAzLjAwLjEwNi90aXNkay9zb3VyY2VzL29lLWNvcmUvbWV0YS9yZWNp
cGVzLWRldnRvb2xzL2NkcnRvb2xzL2NkcnRvb2xzLW5hdGl2ZV8zLjAxLmJiOmRvX3BvcHVsYXRl
X3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2Rr
L3NvdXJjZXMvb2UtY29yZS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvc3F1YXNoZnMtdG9vbHMvc3F1
YXNoZnMtdG9vbHNfZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6
L21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9tZXRhL3JlY2lw
ZXMtZGV2dG9vbHMvb3BrZy9vcGtnXzAuMy42LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmly
dHVhbDpuYXRpdmU6L21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29y
ZS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvb3BrZy11dGlscy9vcGtnLXV0aWxzXzAuMy42LmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L21udC9FVkMtVEktMDYuMDMuMDAu
MTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHNldWRvL3Bz
ZXVkb19naXQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvbW50L0VWQy1USS0wNi4wMy4wMC4x
MDYvdGlzZGsvc291cmNlcy9vZS1jb3JlL21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2xkY29uZmln
LW5hdGl2ZV8yLjEyLjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvbW50L0VWQy1USS0wNi4w
My4wMC4xMDYvdGlzZGsvc291cmNlcy9vZS1jb3JlL21ldGEvcmVjaXBlcy1kZXZ0b29scy9ta2xp
YnMvbWtsaWJzLW5hdGl2ZV8wLjEuNDMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvbW50L0VW
Qy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvc291cmNlcy9vZS1jb3JlL21ldGEvcmVjaXBlcy1rZXJu
ZWwva21vZC9kZXBtb2R3cmFwcGVyLWNyb3NzXzEuMC5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
J3ZpcnR1YWw6bmF0aXZlOi9tbnQvRVZDLVRJLTA2LjAzLjAwLjEwNi90aXNkay9zb3VyY2VzL29l
LWNvcmUvbWV0YS9yZWNpcGVzLWRldnRvb2xzL21ha2VkZXZzL21ha2VkZXZzXzEuMC4xLmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L21udC9FVkMtVEktMDYuMDMuMDAu
MTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvcGlnei9waWd6
XzIuNC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9tbnQvRVZDLVRJ
LTA2LjAzLjAwLjEwNi90aXNkay9zb3VyY2VzL29lLWNvcmUvbWV0YS9yZWNpcGVzLWRldnRvb2xz
L2UyZnNwcm9ncy9lMmZzcHJvZ3NfMS40NC4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAnL21u
dC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9tZXRhL3JlY2lwZXMt
ZGV2dG9vbHMvcWVtdS9xZW11d3JhcHBlci1jcm9zc18xLjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9v
dCcsICd2aXJ0dWFsOm5hdGl2ZTovbW50L0VWQy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvc291cmNl
cy9vZS1jb3JlL21ldGEvcmVjaXBlcy1zdXBwb3J0L2JtYXAtdG9vbHMvYm1hcC10b29sc18zLjQu
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovbW50L0VWQy1USS0wNi4w
My4wMC4xMDYvdGlzZGsvc291cmNlcy9vZS1jb3JlL21ldGEvcmVjaXBlcy1kZXZ0b29scy9idHJm
cy10b29scy9idHJmcy10b29sc180LjE3LjEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0
dWFsOm5hdGl2ZTovbW50L0VWQy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvc291cmNlcy9vZS1jb3Jl
L21ldGEvcmVjaXBlcy1kZXZ0b29scy9zeXNsaW51eC9zeXNsaW51eF82LjAzLmJiOmRvX3BvcHVs
YXRlX3N5c3Jvb3QnLCAnL21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2Ut
Y29yZS9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9jcm9zcy1sb2NhbGVkZWYtbmF0aXZlXzIuMjgu
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCddCk5PVEU6IEluc3RhbGxlZCBpbnRvIHN5c3Jvb3Q6IFtd
Ck5PVEU6IFNraXBwaW5nIGFzIGFscmVhZHkgZXhpc3RzIGluIHN5c3Jvb3Q6IFsndXBkYXRlLXJj
LmQtbmF0aXZlJywgJ3h6LW5hdGl2ZScsICdjZHJ0b29scy1uYXRpdmUnLCAnc3F1YXNoZnMtdG9v
bHMtbmF0aXZlJywgJ29wa2ctbmF0aXZlJywgJ29wa2ctdXRpbHMtbmF0aXZlJywgJ3BzZXVkby1u
YXRpdmUnLCAnbGRjb25maWctbmF0aXZlJywgJ21rbGlicy1uYXRpdmUnLCAnZGVwbW9kd3JhcHBl
ci1jcm9zcycsICdtYWtlZGV2cy1uYXRpdmUnLCAncGlnei1uYXRpdmUnLCAnZTJmc3Byb2dzLW5h
dGl2ZScsICdxZW11d3JhcHBlci1jcm9zcycsICdibWFwLXRvb2xzLW5hdGl2ZScsICdidHJmcy10
b29scy1uYXRpdmUnLCAnc3lzbGludXgtbmF0aXZlJywgJ2Nyb3NzLWxvY2FsZWRlZi1uYXRpdmUn
LCAnc3lzdGVtZC1zeXN0ZW1jdGwtbmF0aXZlJywgJ3NoYWRvdy1uYXRpdmUnLCAncXVpbHQtbmF0
aXZlJywgJ2xpYnNvbHYtbmF0aXZlJywgJ3BrZ2NvbmZpZy1uYXRpdmUnLCAnZ251LWNvbmZpZy1u
YXRpdmUnLCAnYXV0b2NvbmYtbmF0aXZlJywgJ2xpYmFyY2hpdmUtbmF0aXZlJywgJ2F1dG9tYWtl
LW5hdGl2ZScsICdsaWJ0b29sLW5hdGl2ZScsICdrbW9kLW5hdGl2ZScsICdnZXR0ZXh0LW1pbmlt
YWwtbmF0aXZlJywgJ2F0dHItbmF0aXZlJywgJ3RleGluZm8tZHVtbXktbmF0aXZlJywgJ3V0aWwt
bGludXgtbmF0aXZlJywgJ3FlbXUtbmF0aXZlJywgJ3B5dGhvbjMtc2V0dXB0b29scy1uYXRpdmUn
LCAndW56aXAtbmF0aXZlJywgJ3B5dGhvbjMtbmF0aXZlJywgJ2x6by1uYXRpdmUnLCAnYWNsLW5h
dGl2ZScsICdnZGstcGl4YnVmLW5hdGl2ZScsICd6bGliLW5hdGl2ZScsICdsejQtbmF0aXZlJywg
J2RlYmlhbnV0aWxzLW5hdGl2ZScsICdvcGVuc3NsLW5hdGl2ZScsICduc3MtbmF0aXZlJywgJ25h
c20tbmF0aXZlJywgJ25pbmphLW5hdGl2ZScsICdycG0tbmF0aXZlJywgJ2V4cGF0LW5hdGl2ZScs
ICdjbWFrZS1uYXRpdmUnLCAnbTQtbmF0aXZlJywgJ2J6aXAyLW5hdGl2ZScsICdndGstZG9jLW5h
dGl2ZScsICduY3Vyc2VzLW5hdGl2ZScsICdhbHNhLWxpYi1uYXRpdmUnLCAnZ2xpYi0yLjAtbmF0
aXZlJywgJ2R0Yy1uYXRpdmUnLCAncGl4bWFuLW5hdGl2ZScsICdzcWxpdGUzLW5hdGl2ZScsICdn
ZGJtLW5hdGl2ZScsICdyZWFkbGluZS1uYXRpdmUnLCAnZ29iamVjdC1pbnRyb3NwZWN0aW9uLW5h
dGl2ZScsICdsaWJwbmctbmF0aXZlJywgJ3NoYXJlZC1taW1lLWluZm8tbmF0aXZlJywgJ2xpYmpw
ZWctdHVyYm8tbmF0aXZlJywgJ25zcHItbmF0aXZlJywgJ2dyb2ZmLW5hdGl2ZScsICdyZTJjLW5h
dGl2ZScsICdkYnVzLW5hdGl2ZScsICdkYi1uYXRpdmUnLCAnZWxmdXRpbHMtbmF0aXZlJywgJ3Bv
cHQtbmF0aXZlJywgJ2ZpbGUtbmF0aXZlJywgJ2N1cmwtbmF0aXZlJywgJ2xpYnBjcmUtbmF0aXZl
JywgJ2dldHRleHQtbmF0aXZlJywgJ2xpYmZmaS1uYXRpdmUnLCAnZmxleC1uYXRpdmUnLCAndXRp
bC1tYWNyb3MtbmF0aXZlJywgJ2ludGx0b29sLW5hdGl2ZScsICdsaWJ4bWwyLW5hdGl2ZScsICds
aWJ4bWwtcGFyc2VyLXBlcmwtbmF0aXZlJywgJ3BlcmwtbmF0aXZlJ10KREVCVUc6IFB5dGhvbiBm
dW5jdGlvbiBleHRlbmRfcmVjaXBlX3N5c3Jvb3QgZmluaXNoZWQKREVCVUc6IEV4ZWN1dGluZyBw
eXRob24gZnVuY3Rpb24gZG9fcm9vdGZzCk5PVEU6IEluaXRpYWxpemluZyBpbnRlcmNlcHQgZGly
IGZvciAvbW50L0VWQy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVy
bmFsLWFybS10b29sY2hhaW4vd29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9t
LWJhc2UtaW1hZ2UvMS4wLXIwL3Jvb3RmcwpERUJVRzogQ29sbGVjdGVkIGludGVyY2VwdHM6CiAg
L21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9zY3JpcHRzL3Bv
c3RpbnN0LWludGVyY2VwdHMvZGVsYXlfdG9fZmlyc3RfYm9vdAogIC9tbnQvRVZDLVRJLTA2LjAz
LjAwLjEwNi90aXNkay9zb3VyY2VzL29lLWNvcmUvc2NyaXB0cy9wb3N0aW5zdC1pbnRlcmNlcHRz
L3Bvc3RpbnN0X2ludGVyY2VwdAogIC9tbnQvRVZDLVRJLTA2LjAzLjAwLjEwNi90aXNkay9zb3Vy
Y2VzL29lLWNvcmUvc2NyaXB0cy9wb3N0aW5zdC1pbnRlcmNlcHRzL3VwZGF0ZV9mb250X2NhY2hl
CiAgL21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9zY3JpcHRz
L3Bvc3RpbnN0LWludGVyY2VwdHMvdXBkYXRlX2dpb19tb2R1bGVfY2FjaGUKICAvbW50L0VWQy1U
SS0wNi4wMy4wMC4xMDYvdGlzZGsvc291cmNlcy9vZS1jb3JlL3NjcmlwdHMvcG9zdGluc3QtaW50
ZXJjZXB0cy91cGRhdGVfZ3RrX2ltbW9kdWxlc19jYWNoZQogIC9tbnQvRVZDLVRJLTA2LjAzLjAw
LjEwNi90aXNkay9zb3VyY2VzL29lLWNvcmUvc2NyaXB0cy9wb3N0aW5zdC1pbnRlcmNlcHRzL3Vw
ZGF0ZV9pY29uX2NhY2hlCiAgL21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL3NvdXJjZXMv
b2UtY29yZS9zY3JpcHRzL3Bvc3RpbnN0LWludGVyY2VwdHMvdXBkYXRlX3BpeGJ1Zl9jYWNoZQog
IC9tbnQvRVZDLVRJLTA2LjAzLjAwLjEwNi90aXNkay9zb3VyY2VzL29lLWNvcmUvc2NyaXB0cy9w
b3N0aW5zdC1pbnRlcmNlcHRzL3VwZGF0ZV91ZGV2X2h3ZGIKCk5PVEU6ICMjIyMjIyBHZW5lcmF0
ZSByb290ZnMgIyMjIyMjIwpOT1RFOiBFeGVjdXRpbmcgJy9tbnQvRVZDLVRJLTA2LjAzLjAwLjEw
Ni90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi93b3JrL2FtNDM3
eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1pbWFnZS8xLjAtcjAvcmVjaXBlLXN5
c3Jvb3QtbmF0aXZlL3Vzci9iaW4vb3BrZy1tYWtlLWluZGV4IC1yIC9tbnQvRVZDLVRJLTA2LjAz
LjAwLjEwNi90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi93b3Jr
L2FtNDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1pbWFnZS8xLjAtcjAvb2Ut
cm9vdGZzLXJlcG8vYXJtdjdhaGYtbmVvbi9QYWNrYWdlcyAtcCAvbW50L0VWQy1USS0wNi4wMy4w
MC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS10b29sY2hhaW4vd29yay9h
bTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9tLWJhc2UtaW1hZ2UvMS4wLXIwL29lLXJv
b3Rmcy1yZXBvL2FybXY3YWhmLW5lb24vUGFja2FnZXMgLW0gL21udC9FVkMtVEktMDYuMDMuMDAu
MTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tdG9vbGNoYWluL3dvcmsvYW00
Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1iYXNlLWltYWdlLzEuMC1yMC9vZS1yb290
ZnMtcmVwby9hcm12N2FoZi1uZW9uJyAuLi4KTk9URTogRXhlY3V0aW5nICcvbW50L0VWQy1USS0w
Ni4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS10b29sY2hhaW4v
d29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9tLWJhc2UtaW1hZ2UvMS4wLXIw
L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL29wa2ctbWFrZS1pbmRleCAtciAvbW50L0VW
Qy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS10b29s
Y2hhaW4vd29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9tLWJhc2UtaW1hZ2Uv
MS4wLXIwL29lLXJvb3Rmcy1yZXBvL2FybXY3YXQyaGYtbmVvbi9QYWNrYWdlcyAtcCAvbW50L0VW
Qy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS10b29s
Y2hhaW4vd29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9tLWJhc2UtaW1hZ2Uv
MS4wLXIwL29lLXJvb3Rmcy1yZXBvL2FybXY3YXQyaGYtbmVvbi9QYWNrYWdlcyAtbSAvbW50L0VW
Qy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS10b29s
Y2hhaW4vd29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9tLWJhc2UtaW1hZ2Uv
MS4wLXIwL29lLXJvb3Rmcy1yZXBvL2FybXY3YXQyaGYtbmVvbicgLi4uCk5PVEU6IEV4ZWN1dGlu
ZyAnL21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5h
bC1hcm0tdG9vbGNoYWluL3dvcmsvYW00Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1i
YXNlLWltYWdlLzEuMC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9vcGtnLW1ha2Ut
aW5kZXggLXIgL21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1l
eHRlcm5hbC1hcm0tdG9vbGNoYWluL3dvcmsvYW00Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1
c3RvbS1iYXNlLWltYWdlLzEuMC1yMC9vZS1yb290ZnMtcmVwby9hbGwvUGFja2FnZXMgLXAgL21u
dC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0t
dG9vbGNoYWluL3dvcmsvYW00Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1iYXNlLWlt
YWdlLzEuMC1yMC9vZS1yb290ZnMtcmVwby9hbGwvUGFja2FnZXMgLW0gL21udC9FVkMtVEktMDYu
MDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tdG9vbGNoYWluL3dv
cmsvYW00Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1iYXNlLWltYWdlLzEuMC1yMC9v
ZS1yb290ZnMtcmVwby9hbGwnIC4uLgpOT1RFOiBFeGVjdXRpbmcgJy9tbnQvRVZDLVRJLTA2LjAz
LjAwLjEwNi90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi93b3Jr
L2FtNDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1pbWFnZS8xLjAtcjAvcmVj
aXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vb3BrZy1tYWtlLWluZGV4IC1yIC9tbnQvRVZDLVRJ
LTA2LjAzLjAwLjEwNi90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLXRvb2xjaGFp
bi93b3JrL2FtNDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1pbWFnZS8xLjAt
cjAvb2Utcm9vdGZzLXJlcG8vYW00Mzd4X2hzX2V2bS9QYWNrYWdlcyAtcCAvbW50L0VWQy1USS0w
Ni4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS10b29sY2hhaW4v
d29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkvY3VzdG9tLWJhc2UtaW1hZ2UvMS4wLXIw
L29lLXJvb3Rmcy1yZXBvL2FtNDM3eF9oc19ldm0vUGFja2FnZXMgLW0gL21udC9FVkMtVEktMDYu
MDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tdG9vbGNoYWluL3dv
cmsvYW00Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1iYXNlLWltYWdlLzEuMC1yMC9v
ZS1yb290ZnMtcmVwby9hbTQzN3hfaHNfZXZtJyAuLi4KTk9URTogSWdub3JlZCBiYWQgcmVjb21t
ZW5kYXRpb246ICdnZGJzZXJ2ZXItYzZ4LWRldicgaXMgbm90IGEgcGFja2FnZQpOT1RFOiBJZ25v
cmVkIGJhZCByZWNvbW1lbmRhdGlvbjogJ2xpYnVsbS1kZXYnIGlzIG5vdCBhIHBhY2thZ2UKTk9U
RTogSWdub3JlZCBiYWQgcmVjb21tZW5kYXRpb246ICdvcGVuY2wtbW9uaXRvci1kZXYnIGlzIG5v
dCBhIHBhY2thZ2UKTk9URTogSWdub3JlZCBiYWQgcmVjb21tZW5kYXRpb246ICd0aS1sbHZtMy42
LWRldicgaXMgbm90IGEgcGFja2FnZQpOT1RFOiBJbnN0YWxsaW5nIHRoZSBmb2xsb3dpbmcgcGFj
a2FnZXM6IGFnZW50djMtZXZjMTAgYmFzZS1wYXNzd2QgY3ptcSBkcm9wYmVhciBlMmZzcHJvZ3Mt
cmVzaXplMmZzIGVpY2hyZWNodCBnYXR0bGliIGdvc3VuY24tY20gaWZtZXRyaWMga2VybmVsLW1v
ZHVsZS1tdDc2NjMga2VybmVsLW1vZHVsZS1tdDc2Njgga2VybmVsLW1vZHVsZS1tdDc2NjgtYnQg
bGlibW9kYnVzNSBsaWJ0Y3RpLWRldmljZS1kZXYgbGlidGN0aS1kZXZpY2Utc3RhdGljZGV2IGxp
YnRjdGktZGV2aWNlMCBsaWJ0Y3RpLXNvY2tldC1kZXYgbGlidGN0aS1zb2NrZXQtc3RhdGljZGV2
IGxpYnRjdGktc29ja2V0MCBsaWJ0c3MyIGxpYnRzczItZGV2IGxpYnRzczItc3RhdGljZGV2IGxp
YndlYnNvY2tldHMxOSBtaWRtZXRlciBtb2RidXN0Y3Agb2NwcC1ldmMxMCBvcGVuc3NoLXNmdHAt
c2VydmVyIG9wa2cgb3N0cmVlIHBhY2thZ2Vncm91cC1hcmFnby1iYXNlIHBhY2thZ2Vncm91cC1h
cmFnby1iYXNlLXRpc2RrIHBhY2thZ2Vncm91cC1hcmFnby1jb25zb2xlIHBhY2thZ2Vncm91cC1h
cmFnby1xdGUgcGFja2FnZWdyb3VwLWFyYWdvLXRpc2RrLWNvbm5lY3Rpdml0eSBwYWNrYWdlZ3Jv
dXAtYXJhZ28tdGlzZGstY3J5cHRvIHBhY2thZ2Vncm91cC1hcmFnby10aXNkay1ncmFwaGljcyBw
YWNrYWdlZ3JvdXAtY29yZS1ib290IHBhY2thZ2Vncm91cC1jb3JlLXNlbGludXggcGFydGVkIHBy
b2NwcyBwc3BsYXNoIHB5Ymx1ZXogcHl0aG9uMy1hd3MtaW90LWRldmljZS1zZGstcHl0aG9uIHB5
dGhvbjMtYmNyeXB0IHB5dGhvbjMtZmxhc2sgcHl0aG9uMy1mbGFzay1sb2dpbiBweXRob24zLWZs
YXNrLXJlc3RmdWwgcHl0aG9uMy1mbGFzay1zcWxhbGNoZW15IHB5dGhvbjMtbWFyc2htYWxsb3cg
cHl0aG9uMy1tb2RidXMtdGsgcHl0aG9uMy1weWNyeXB0b2RvbWUgcHl0aG9uMy1weWp3dCBweXRo
b24zLXB5c2VyaWFsIHB5dGhvbjMtcHl6bXEgcHl0aG9uMy1yZXF1ZXN0cyBweXRob24zLXNxbGFs
Y2hlbXkgcXVlY3RlbC1jbSByZXNvdXJjZW1nciByZXN0LXdlYmFzdG8gcmVzdHYyIHJ1bi1wb3N0
aW5zdHMgc2hhZG93IHNtYXJ0Y2hhcmdlIHRwbTIuMC10b29scyB0emRhdGEgdWktZXZjMTAgdWlk
cmVhZGVyIHdlYmNvbmZpZ3YzIHdwYSB6ZXJvbXEKTk9URTogL21udC9FVkMtVEktMDYuMDMuMDAu
MTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tdG9vbGNoYWluL3dvcmsvYW00
Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1iYXNlLWltYWdlLzEuMC1yMC9yZWNpcGUt
c3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9vcGtnIC0tdm9sYXRpbGUtY2FjaGUgLWYgL21udC9FVkMt
VEktMDYuMDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tdG9vbGNo
YWluL3dvcmsvYW00Mzd4X2hzX2V2bS1saW51eC1nbnVlYWJpL2N1c3RvbS1iYXNlLWltYWdlLzEu
MC1yMC9vcGtnLmNvbmYgLXQgL21udC9FVkMtVEktMDYuMDMuMDAuMTA2L3Rpc2RrL2J1aWxkL2Fy
YWdvLXRtcC1leHRlcm5hbC1hcm0tdG9vbGNoYWluL3dvcmsvYW00Mzd4X2hzX2V2bS1saW51eC1n
bnVlYWJpL2N1c3RvbS1iYXNlLWltYWdlLzEuMC1yMC90ZW1wL2lwa3RlbXAvIC1vIC9tbnQvRVZD
LVRJLTA2LjAzLjAwLjEwNi90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLXRvb2xj
aGFpbi93b3JrL2FtNDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1pbWFnZS8x
LjAtcjAvcm9vdGZzICAtLWZvcmNlX3Bvc3RpbnN0YWxsICAgIGluc3RhbGwgYWdlbnR2My1ldmMx
MCBiYXNlLXBhc3N3ZCBjem1xIGRyb3BiZWFyIGUyZnNwcm9ncy1yZXNpemUyZnMgZWljaHJlY2h0
IGdhdHRsaWIgZ29zdW5jbi1jbSBpZm1ldHJpYyBrZXJuZWwtbW9kdWxlLW10NzY2MyBrZXJuZWwt
bW9kdWxlLW10NzY2OCBrZXJuZWwtbW9kdWxlLW10NzY2OC1idCBsaWJtb2RidXM1IGxpYnRjdGkt
ZGV2aWNlLWRldiBsaWJ0Y3RpLWRldmljZS1zdGF0aWNkZXYgbGlidGN0aS1kZXZpY2UwIGxpYnRj
dGktc29ja2V0LWRldiBsaWJ0Y3RpLXNvY2tldC1zdGF0aWNkZXYgbGlidGN0aS1zb2NrZXQwIGxp
YnRzczIgbGlidHNzMi1kZXYgbGlidHNzMi1zdGF0aWNkZXYgbGlid2Vic29ja2V0czE5IG1pZG1l
dGVyIG1vZGJ1c3RjcCBvY3BwLWV2YzEwIG9wZW5zc2gtc2Z0cC1zZXJ2ZXIgb3BrZyBvc3RyZWUg
cGFja2FnZWdyb3VwLWFyYWdvLWJhc2UgcGFja2FnZWdyb3VwLWFyYWdvLWJhc2UtdGlzZGsgcGFj
a2FnZWdyb3VwLWFyYWdvLWNvbnNvbGUgcGFja2FnZWdyb3VwLWFyYWdvLXF0ZSBwYWNrYWdlZ3Jv
dXAtYXJhZ28tdGlzZGstY29ubmVjdGl2aXR5IHBhY2thZ2Vncm91cC1hcmFnby10aXNkay1jcnlw
dG8gcGFja2FnZWdyb3VwLWFyYWdvLXRpc2RrLWdyYXBoaWNzIHBhY2thZ2Vncm91cC1jb3JlLWJv
b3QgcGFja2FnZWdyb3VwLWNvcmUtc2VsaW51eCBwYXJ0ZWQgcHJvY3BzIHBzcGxhc2ggcHlibHVl
eiBweXRob24zLWF3cy1pb3QtZGV2aWNlLXNkay1weXRob24gcHl0aG9uMy1iY3J5cHQgcHl0aG9u
My1mbGFzayBweXRob24zLWZsYXNrLWxvZ2luIHB5dGhvbjMtZmxhc2stcmVzdGZ1bCBweXRob24z
LWZsYXNrLXNxbGFsY2hlbXkgcHl0aG9uMy1tYXJzaG1hbGxvdyBweXRob24zLW1vZGJ1cy10ayBw
eXRob24zLXB5Y3J5cHRvZG9tZSBweXRob24zLXB5and0IHB5dGhvbjMtcHlzZXJpYWwgcHl0aG9u
My1weXptcSBweXRob24zLXJlcXVlc3RzIHB5dGhvbjMtc3FsYWxjaGVteSBxdWVjdGVsLWNtIHJl
c291cmNlbWdyIHJlc3Qtd2ViYXN0byByZXN0djIgcnVuLXBvc3RpbnN0cyBzaGFkb3cgc21hcnRj
aGFyZ2UgdHBtMi4wLXRvb2xzIHR6ZGF0YSB1aS1ldmMxMCB1aWRyZWFkZXIgd2ViY29uZmlndjMg
d3BhIHplcm9tcQpFUlJPUjogVW5hYmxlIHRvIGluc3RhbGwgcGFja2FnZXMuIENvbW1hbmQgJy9t
bnQvRVZDLVRJLTA2LjAzLjAwLjEwNi90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJt
LXRvb2xjaGFpbi93b3JrL2FtNDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1p
bWFnZS8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vb3BrZyAtLXZvbGF0aWxl
LWNhY2hlIC1mIC9tbnQvRVZDLVRJLTA2LjAzLjAwLjEwNi90aXNkay9idWlsZC9hcmFnby10bXAt
ZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi93b3JrL2FtNDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9j
dXN0b20tYmFzZS1pbWFnZS8xLjAtcjAvb3BrZy5jb25mIC10IC9tbnQvRVZDLVRJLTA2LjAzLjAw
LjEwNi90aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLXRvb2xjaGFpbi93b3JrL2Ft
NDM3eF9oc19ldm0tbGludXgtZ251ZWFiaS9jdXN0b20tYmFzZS1pbWFnZS8xLjAtcjAvdGVtcC9p
cGt0ZW1wLyAtbyAvbW50L0VWQy1USS0wNi4wMy4wMC4xMDYvdGlzZGsvYnVpbGQvYXJhZ28tdG1w
LWV4dGVybmFsLWFybS10b29sY2hhaW4vd29yay9hbTQzN3hfaHNfZXZtLWxpbnV4LWdudWVhYmkv
Y3VzdG9tLWJhc2UtaW1hZ2UvMS4wLXIwL3Jvb3RmcyAgLS1mb3JjZV9wb3N0aW5zdGFsbCAgICBp
bnN0YWxsIGFnZW50djMtZXZjMTAgYmFzZS1wYXNzd2QgY3ptcSBkcm9wYmVhciBlMmZzcHJvZ3Mt
cmVzaXplMmZzIGVpY2hyZWNodCBnYXR0bGliIGdvc3VuY24tY20gaWZtZXRyaWMga2VybmVsLW1v
ZHVsZS1tdDc2NjMga2VybmVsLW1vZHVsZS1tdDc2Njgga2VybmVsLW1vZHVsZS1tdDc2NjgtYnQg
bGlibW9kYnVzNSBsaWJ0Y3RpLWRldmljZS1kZXYgbGlidGN0aS1kZXZpY2Utc3RhdGljZGV2IGxp
YnRjdGktZGV2aWNlMCBsaWJ0Y3RpLXNvY2tldC1kZXYgbGlidGN0aS1zb2NrZXQtc3RhdGljZGV2
IGxpYnRjdGktc29ja2V0MCBsaWJ0c3MyIGxpYnRzczItZGV2IGxpYnRzczItc3RhdGljZGV2IGxp
YndlYnNvY2tldHMxOSBtaWRtZXRlciBtb2RidXN0Y3Agb2NwcC1ldmMxMCBvcGVuc3NoLXNmdHAt
c2VydmVyIG9wa2cgb3N0cmVlIHBhY2thZ2Vncm91cC1hcmFnby1iYXNlIHBhY2thZ2Vncm91cC1h
cmFnby1iYXNlLXRpc2RrIHBhY2thZ2Vncm91cC1hcmFnby1jb25zb2xlIHBhY2thZ2Vncm91cC1h
cmFnby1xdGUgcGFja2FnZWdyb3VwLWFyYWdvLXRpc2RrLWNvbm5lY3Rpdml0eSBwYWNrYWdlZ3Jv
dXAtYXJhZ28tdGlzZGstY3J5cHRvIHBhY2thZ2Vncm91cC1hcmFnby10aXNkay1ncmFwaGljcyBw
YWNrYWdlZ3JvdXAtY29yZS1ib290IHBhY2thZ2Vncm91cC1jb3JlLXNlbGludXggcGFydGVkIHBy
b2NwcyBwc3BsYXNoIHB5Ymx1ZXogcHl0aG9uMy1hd3MtaW90LWRldmljZS1zZGstcHl0aG9uIHB5
dGhvbjMtYmNyeXB0IHB5dGhvbjMtZmxhc2sgcHl0aG9uMy1mbGFzay1sb2dpbiBweXRob24zLWZs
YXNrLXJlc3RmdWwgcHl0aG9uMy1mbGFzay1zcWxhbGNoZW15IHB5dGhvbjMtbWFyc2htYWxsb3cg
cHl0aG9uMy1tb2RidXMtdGsgcHl0aG9uMy1weWNyeXB0b2RvbWUgcHl0aG9uMy1weWp3dCBweXRo
b24zLXB5c2VyaWFsIHB5dGhvbjMtcHl6bXEgcHl0aG9uMy1yZXF1ZXN0cyBweXRob24zLXNxbGFs
Y2hlbXkgcXVlY3RlbC1jbSByZXNvdXJjZW1nciByZXN0LXdlYmFzdG8gcmVzdHYyIHJ1bi1wb3N0
aW5zdHMgc2hhZG93IHNtYXJ0Y2hhcmdlIHRwbTIuMC10b29scyB0emRhdGEgdWktZXZjMTAgdWlk
cmVhZGVyIHdlYmNvbmZpZ3YzIHdwYSB6ZXJvbXEnIHJldHVybmVkIDE6CkNvbGxlY3RlZCBlcnJv
cnM6CiAqIFNvbHZlciBlbmNvdW50ZXJlZCAxIHByb2JsZW0ocyk6CiAqIFByb2JsZW0gMS8xOgog
KiAgIC0gbm90aGluZyBwcm92aWRlcyBjb3JldXRpbHMgbmVlZGVkIGJ5IHBhY2thZ2Vncm91cC1j
b3JlLXNlbGludXgtMS4wLXIwLmFybXY3YXQyaGYtbmVvbgogKiAKICogU29sdXRpb24gMToKICog
ICAtIGRvIG5vdCBhc2sgdG8gaW5zdGFsbCBhIHBhY2thZ2UgcHJvdmlkaW5nIHBhY2thZ2Vncm91
cC1jb3JlLXNlbGludXgKCgoKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBkb19yb290ZnMgZmluaXNo
ZWQKRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9vdGZzCg==

--_004_AM0P195MB07545A4FB9E737CA1BC980CBC5C29AM0P195MB0754EURP_--

