Return-Path: <Logan.Grosz@b9c.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 382D7C4828D
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 17:58:44 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.92])
 by mx.groups.io with SMTP id smtpd.web11.2049.1706810320255425588
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 09:58:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b9c.com header.s=selector1 header.b=JIanxtA3;
 spf=pass (domain: b9c.com, ip: 40.107.243.92, mailfrom: logan.grosz@b9c.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i63OA3Tqs63vhTzx4LJ9rNYX7x6793yJd5+lgvb6xOiceowWwyBHLMgz0N5djy35TfL/7x/48F5RINFSB49VQ3hnVW+DTE8PjIhvrgVyZATiPVv74EUe+RWAGrdnp2HAvWiza9DkDTZ5iQ7nAHva0O9/T2tijGA5mbga9WW5MG62Uwet1nlrclVmkWPoms6Jdwzd8gm442otD5GTv3FN+yVJz9dShWHM8cDC6BLpvpMICJvEo+W41UdQr6VxDwRjW3I1zoRybEZngP69KIC/8KypC+mTH9fUZmnYVxuky+7FDElr1kvXZ/OJFOKmvZhYgERT9InozVFnzuea+J3mFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4v21PnVsuQqMlPtA8HptuDCzNnwooiXkkmNn3ZwTHx8=;
 b=XhHaY0/71jfvSxjJYqIC/Fd65LaVvJRO2tZgeasl3IjhQkGR7CNiL90tBgTXTXh5nSYVYhpC6pPVBIY++7mxOlkdRb2caPLjeuFVrox1/0i0oem+us5evdi/Py0ctnU7kneCUX4sUxj5fJLYownetfEg1/caHNGoBtqUMks58YcXI+zP1Aq6JLhhT60/y30NWiyN/Jc/A/q9DUwhYD75kAqmQVzgQwjO43hgNSNMdIAeX3FNftB+PsLq7B1JI23ugwrkC3vADKJKAE0AR6n3ILnIkd9rA2qNni6s4yuDav53E6VKHqYTeJFuKL1trcojOR0oA4Vt3dbovLwIXKjbKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=b9c.com; dmarc=pass action=none header.from=b9c.com; dkim=pass
 header.d=b9c.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=b9c.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4v21PnVsuQqMlPtA8HptuDCzNnwooiXkkmNn3ZwTHx8=;
 b=JIanxtA3wY2okfPCMqydA/8iNf/zGsXXPGiMQD2ntb7MVvQ+jOA9QiXkXj/jf6ZoLu3uaaCUoOA7AOtq2GRt+mvGxEuB/iJ/KrB0J/Q1/9aGJ3ZhMofh3yHoseDMF1wlV/CSYyASW7mUnhl/TUpkGp/mB0mYC6K48H4DpBLvQLk=
Received: from MW4PR16MB5087.namprd16.prod.outlook.com (2603:10b6:303:1be::18)
 by DM4PR16MB5417.namprd16.prod.outlook.com (2603:10b6:8:18c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Thu, 1 Feb
 2024 17:58:36 +0000
Received: from MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::3589:c56e:950e:4219]) by MW4PR16MB5087.namprd16.prod.outlook.com
 ([fe80::3589:c56e:950e:4219%5]) with mapi id 15.20.7249.017; Thu, 1 Feb 2024
 17:58:36 +0000
From: Logan Grosz <Logan.Grosz@b9c.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Correctly packaging projects into systemd_system_unitdir with CMake's
 GNUInstallDirs module
Thread-Topic: Correctly packaging projects into systemd_system_unitdir with
 CMake's GNUInstallDirs module
Thread-Index: AQHaVTbcj2ACm+3490qTvzakcum52Q==
Date: Thu, 1 Feb 2024 17:58:36 +0000
Message-ID: 
 <MW4PR16MB50871DC44FDB421C1D679248BB432@MW4PR16MB5087.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=b9c.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR16MB5087:EE_|DM4PR16MB5417:EE_
x-ms-office365-filtering-correlation-id: 2fa6543d-ccad-479f-74dc-08dc234f69af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RsBzT00faa//VUT4yO6YPmGa8Ns1X7H08554djn8p/iqZ9h26mt6hiD1MKO83cqEsD3bq9iDlj4VR60mGt3QHYVGDIPSmj2f7ZRpyB8AMzPW3tG6fiyTi5csCQDX/uWZihOYQyjVsGd1P8cnAybLlBg/Y/x44x0xW4fDC/P7Rb2z5fXs7R2KBRouvKz0AZds3VtgzKRPBHtVC8FqM06Gb9Ne/H8U0LGvUZV+xrbn3kGzPj8ZdyMXMuKlwcsbHn6jNgMUaNGsJzJQXJi6F5XQxEZEfB7Bz7ukRhpoxt3nTX5yEzd4jYAYqdmKMu7Hla78sbLsl5ZebFgCykvGOeDRyBzZAqZlOPntq2EJ1tC7vDNMcf5fuFxVkQ+U2O08Zpf6Yq0OT8qsc3i7Vjd97AfHucFTz+0lFinwwkCIzLq2e6wMTM6NPHMT2oC9VyG/vf+Oc8AZ2QIdhoyJO2m3yQW3o+YxkzQOsrBDd8jw6GSf+FkdhDMROzhOpsofh+wMPRzuewzqRytERMFwwC8E5wuyujfGTGTObXZxbp2S4bUjq7PrQ5AAyYYsdWyqoH/S8KYZAoVF/E2vZAE75kj4bHjIj1X1OH3dwf6o9f/8iL436OyPYQ/IcksKC5b38QZWZ3eM
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR16MB5087.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(376002)(136003)(366004)(396003)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(38070700009)(55016003)(19627405001)(66899024)(66476007)(64756008)(76116006)(26005)(66446008)(478600001)(6506007)(66556008)(83380400001)(2906002)(66946007)(316002)(8936002)(6916009)(91956017)(7696005)(8676002)(52536014)(5660300002)(9686003)(71200400001)(122000001)(41300700001)(38100700002)(86362001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?koi8-r?Q?6RHhSRNFW274Crrat7/vkmFj7O4VnwWEExLDRzVK7bcHRgTdR09wLj7W5NiTNb?=
 =?koi8-r?Q?1WN3ah0CYtul3zpilBO0VUHgse+oIfmbDz/48h2yalIKQu2BvqLbiOZT4SKaxp?=
 =?koi8-r?Q?SDycaExs3jy6u74cJWsTdqtZfV7gh8PbQrKG6NwkvMxN32GNd62YTBmatzVBTw?=
 =?koi8-r?Q?qw/kEq9AJfYrB/0VeoWEADwYy40BzKCk0mwqr8xWFiq/Qah6SOA1+TLnNI22bI?=
 =?koi8-r?Q?ezzsDIBUQAlfm1pxldBX8JLm9FBhFOC79a0TIVfHlWvwUlEf7JJ51f8n4769uE?=
 =?koi8-r?Q?HoudFJ+FS1lm2R5ayerwbSfrU6CPrjX5HBtrgjWSHUM3jDFBnl9cDtZuPnboEw?=
 =?koi8-r?Q?E0YmT0nxYz5znEATGMPp7dH9QEKgn2+AVvgQFAnFivYXrX50vGDcKM1LNbXNHU?=
 =?koi8-r?Q?N5f+fN+h7SNCaqp+h6OfK9nogAGWB+OqXE9I4fau+fGz0vwA+px8h/nXF+5KlZ?=
 =?koi8-r?Q?Gip/4TKaI4mgwla0OVvl0+dZtZe/fH8+TWVJQqQiNRzneCFvkUN+lhSRFPSm/v?=
 =?koi8-r?Q?FSbJqEMKdvx1r0EADa03h20rIcq2QPIqhHeg4AE+5fHvOj1RI6zhphr4JTdacG?=
 =?koi8-r?Q?M8jmJdr4rEJN/OjELfp6Dhpkw67iUK32yIiRTvGX5dAJ1+OuiFryBnVSwfYT6o?=
 =?koi8-r?Q?A4LHMYF3Xw1lFs3FMPYv/FzO1T6R54de/fQk1ECUc/dqYTVXRbT2qNBY0+1r5H?=
 =?koi8-r?Q?1PxhFdBUMMvTq8HaSmj69jZXXnmUP8Fkb+CbcEZWER04lC9a+ssat48G/nTsaY?=
 =?koi8-r?Q?pau0s39BPH6F2q1a0MHs9H3ReXlzI2pAM7fWNb8EJfF3JBgH0JPvrp7HMI6r/f?=
 =?koi8-r?Q?aO7JkFVRo4DY9bYlhIsVCJzeWZB2/+jdbjvWTQ+tpMpWpmESB/H5xUP8RBs6tt?=
 =?koi8-r?Q?kNzS3GpHxKsFb9/zOXz8k3VFMAaHJ7FNVT4FDgs1xCBIfCdQ/zh3E0krrFmN6A?=
 =?koi8-r?Q?Rohq6/lNzWyFVFLt2dasbeWt3CKyEDaO5yEODctzqssluH+3TlTwCFbPpMKp0q?=
 =?koi8-r?Q?nQuilcp+dLoRzPs/St0zYoRXy8TnM1E2RG4ENXE/ogPTWgCFAB1BxURwr2scet?=
 =?koi8-r?Q?1iesDMkdS9aqKmpqPKAcWSt5BNb2MtBj72tl6Grzvo4/0DOySPQGswS/BcbdG3?=
 =?koi8-r?Q?6Cnt1iLDbt8v0G9MUH/SE0cBaOeoS0PRvPPkKwfPJwL0a0tUZTNMOKX1habp3j?=
 =?koi8-r?Q?lEWabsagBI9+7wCoo7NHxnnCiW3iZCFu30NNC1rPJ1H7BPycf5u/IwXgGpslJU?=
 =?koi8-r?Q?tXm05ca2S++RJp4HQ99gopyYGUUSTjV+GbeHXMIljYzWVf7MrZ4zU9nR88dvTQ?=
 =?koi8-r?Q?kfyTf1xtgK5PEw/QlYku3T3RYOmuJbSMEQEoq/2SlaiNDidqpVVhRyVMSMdXTv?=
 =?koi8-r?Q?YtqprdgKEo8Z9/jkJ9PwrjBd6A1mf7AWMW0D4Pxpbw8oI9oeH2hT7m4W2fS6Nj?=
 =?koi8-r?Q?VDDzoCXpmWv7KP/lxQriKyafUW3PXEs/aryyoQf4K1cBpvHQZvCNfe+wD6N/Zv?=
 =?koi8-r?Q?o+p5wyTgL0eCjRBE0G+lhGeE0z1b2JgBoSvaUS3mGua6N3JV5k?=
Content-Type: multipart/alternative;
	boundary="_000_MW4PR16MB50871DC44FDB421C1D679248BB432MW4PR16MB5087namp_"
MIME-Version: 1.0
X-OriginatorOrg: b9c.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR16MB5087.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fa6543d-ccad-479f-74dc-08dc234f69af
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2024 17:58:36.1704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ace18e3-3825-4b3e-be2a-b5c73f048d39
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gp6I4uh8fpU3JDYy3WaS/e7XfiHoxwqdiAkER25W04F4UKsBOijwprw0nMxR8AvDLx4GgXFEeifc/R2OD4G74w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR16MB5417
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 17:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62371

--_000_MW4PR16MB50871DC44FDB421C1D679248BB432MW4PR16MB5087namp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hi, all

I have some application which are packaged with CMake's GNUInstallDirs modu=
le. With CMAKE_INSTALL_PREFIX=3D/, this results in a package...

build/sysroot/
=86=80=80 etc
=81   =84=80=80 dbus-1
=81       =84=80=80 system.d
=81           =84=80=80 com.b9c.UpdateManager.conf
=84=80=80 usr
    =86=80=80 bin
    =81   =84=80=80 update-manager
    =86=80=80 include
    =81   =84=80=80 UpdateManager
    =81       =84=80=80 UpdateManager.h
    =86=80=80 lib
    =81   =86=80=80 cmake
    =81   =81   =84=80=80 UpdateManager
    =81   =81       =86=80=80 UpdateManagerConfig.cmake
    =81   =81       =86=80=80 UpdateManagerConfigVersion.cmake
    =81   =81       =86=80=80 UpdateManagerTargets.cmake
    =81   =81       =84=80=80 UpdateManagerTargets-noconfig.cmake
    =81   =86=80=80 libupdatemanager.so -> libupdatemanager.so.0
    =81   =86=80=80 libupdatemanager.so.0 -> libupdatemanager.so.0.1.0
    =81   =86=80=80 libupdatemanager.so.0.1.0
    =81   =86=80=80 qml
    =81   =81   =84=80=80 com
    =81   =81       =84=80=80 b9c
    =81   =81           =84=80=80 UpdateManager
    =81   =81               =86=80=80 libqmlupdatemanagerplugin.so
    =81   =81               =84=80=80 qmldir
    =81   =84=80=80 systemd
    =81       =84=80=80 system
    =81           =86=80=80 update-manager.service
    =81           =84=80=80 update-manager.service.d
    =81               =84=80=80 10-mender.conf
    =84=80=80 share
        =86=80=80 dbus-1
        =81   =84=80=80 system-services
        =81       =84=80=80 com.b9c.UpdateManager.service
        =84=80=80 update-manager
            =86=80=80 com.b9c.UpdateManager1.xml
            =84=80=80 disk.svg

I am attempting to package this with a recipe. Everything packages correctl=
y except when using systemd.bbclass and `SYSTEMD_SERVICE:${PN} =3D "update-=
manager.service", the systemd_check_services function cannot find the servi=
ce file. This appears to be because the bbclass is only looking at /lib/sys=
temd/system (expanded from ${systemd_system_unitdir} while CMake has instal=
led my service file under /usr/lib/systemd/system.

How can I resolve this issue? Do I configure CMake differently in my recipe=
? Do I change systemd_system_unitdir? Do I just need to move the files in d=
o_install:append? All of these options seem less than ideal.

Thank you,
Logan

--_000_MW4PR16MB50871DC44FDB421C1D679248BB432MW4PR16MB5087namp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi, all</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I have some application which are packaged with CMake's GNUInstallDirs modu=
le. With
<span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont, Apt=
os_MSFontService, monospace;">
CMAKE_INSTALL_PREFIX=3D/</span>, this results in a package...</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: &quot;Aptos Mono&=
quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt;=
 color: rgb(0, 0, 0);">build/sysroot/</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">=
=86=80=80 etc</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">=
=81&nbsp;&nbsp; =84=80=80 dbus-1</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">=
=81&nbsp;&nbsp; &nbsp; &nbsp; =84=80=80 system.d</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">=
=81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =84=80=80 com.b9c.UpdateManager=
.conf</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">=
=84=80=80 usr</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =86=80=80 bin</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =84=80=80 update-manager</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =86=80=80 include</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =84=80=80 UpdateManager</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =84=80=80 UpdateManager.h</span><=
/div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =86=80=80 lib</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =86=80=80 cmake</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; =84=80=80 UpdateManager</span><=
/div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =86=80=80 UpdateM=
anagerConfig.cmake</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =86=80=80 UpdateM=
anagerConfigVersion.cmake</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =86=80=80 UpdateM=
anagerTargets.cmake</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =84=80=80 UpdateM=
anagerTargets-noconfig.cmake</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =86=80=80 libupdatemanager.so -&gt; libupdatema=
nager.so.0</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =86=80=80 libupdatemanager.so.0 -&gt; libupdate=
manager.so.0.1.0</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =86=80=80 libupdatemanager.so.0.1.0</span></div=
>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =86=80=80 qml</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; =84=80=80 com</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =84=80=80 b9c</sp=
an></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =84=
=80=80 UpdateManager</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; =86=80=80 libqmlupdatemanagerplugin.so</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; =84=80=80 qmldir</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; =84=80=80 systemd</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =84=80=80 system</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =86=80=80 update-ma=
nager.service</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =84=80=80 update-ma=
nager.service.d</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =84=
=80=80 10-mender.conf</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; =84=80=80 share</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; &nbsp; &nbsp; =86=80=80 dbus-1</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; &nbsp; &nbsp; =81&nbsp;&nbsp; =84=80=80 system-services</span><=
/div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; &nbsp; &nbsp; =81&nbsp;&nbsp; &nbsp; &nbsp; =84=80=80 com.b9c.U=
pdateManager.service</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; &nbsp; &nbsp; =84=80=80 update-manager</span></div>
<div><span style=3D"font-family: &quot;Aptos Mono&quot;, Aptos_EmbeddedFont=
, Aptos_MSFontService, monospace; font-size: 12pt; color: rgb(0, 0, 0);">&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =86=80=80 com.b9c.UpdateManager1.xm=
l</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: &quot;Aptos Mono&=
quot;, Aptos_EmbeddedFont, Aptos_MSFontService, monospace; font-size: 12pt;=
 color: rgb(0, 0, 0);">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =84=80=80 =
disk.svg</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">I am attempting to package this with a recipe. E=
verything packages correctly except
 when using systemd.bbclass and `SYSTEMD_SERVICE:${PN} =3D &quot;update-man=
ager.service&quot;, the systemd_check_services function cannot find the ser=
vice file. This appears to be because the bbclass is only looking at /lib/s=
ystemd/system (expanded from ${systemd_system_unitdir}
 while CMake has installed my service file under /usr/lib/systemd/system.</=
span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);"><br>
</span></div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embe=
ddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 1=
2pt; color: rgb(0, 0, 0);">How can I resolve this issue? Do I configure CMa=
ke differently in my recipe? Do I change
 systemd_system_unitdir? Do I just need to move the files in do_install:app=
end? All of these options seem less than ideal.</span></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Logan</div>
</div>
</body>
</html>

--_000_MW4PR16MB50871DC44FDB421C1D679248BB432MW4PR16MB5087namp_--

