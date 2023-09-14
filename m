Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B03EDE9B3
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:07:18 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.71])
 by mx.groups.io with SMTP id smtpd.web11.10391.1694693230044147971
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:07:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=IfHQIfgI;
 spf=pass (domain: kymati.com, ip: 40.107.15.71, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVRxK2y/RXB9OyceS7Cy8PAiFw6j8DPjnEiXqY0hki29V3bhbSr0qWx71ZWbCUntVF1Bw9/SCxYcByIcMINCIqSurV4VUqkRazXs60kCjyCj2kGhEDfYIag9GQcT25TWXFCGZmaVGUfbSW/cVf5auyZuyVmJge5NOlX4JBZb5rLWy/2py2FGBJMGrZmsOted1g2dAH5tQqujS+NC+Ls+5DQKMaJCkai5NijENI0vSHzMutYA6BzPtgB25tTJT3IhUHhvMm5L77PHjwUkO9yY7lDCTG2pXomkcuVSxObr5Ia5g9wBFk+VOKO7gN+sJAAxFw3fhXFD2nIx7AlAiMUngA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BPCF0hot9/N8eH12bvugUnjAVUxboZvr6LNuzWBVlIc=;
 b=QHy9WhsYDnf+xT8/EssWizqRyLGPSstITiy0HDG7OyNJapsZ0Jis/ca3f8ONQCNmw1D3ifCVjdyU1hyI7qLVnEzW+VpMQwolU4PECHvT/Amw77ko2FgGY9yin6FeIk6rXrWRX8+WsNy4xKvc5KelNqlfubdh654BW963Js/d6msdtfMR4YmwgEQgiOsh6c8Nx5fm6Em6I6Nqc+3fjCbgl5vgHP7dLee76grm7jjozIPOtYKS5UzoMIleK38k46A+xzcfJVqDQFbnerGFhxjcCNC3A9Pp3N39zEGgKWus24e7KgTS/4qtlLQjbiNgSXk+8iZJIrKwtMGhrUQA9ZRIQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BPCF0hot9/N8eH12bvugUnjAVUxboZvr6LNuzWBVlIc=;
 b=IfHQIfgIy5ZaMg4RQnnkVLHqIq4BEVbQdA1HUAL19GtSPQxQn3XdK2Ox5h7LZY2Fkm0iZI8Vg1p3vY3xQoHvf0L5MvIS4V9+z46Ks13RgmzF9dGlHdqchcrdIvSlYeI8PPHwE/CScdULM95xT/9EO2fkorB6TDzgfIDjSNffZ4Y=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by PAVPR03MB9188.eurprd03.prod.outlook.com (2603:10a6:102:322::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.34; Thu, 14 Sep
 2023 12:07:06 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::2f9a:1999:e82f:efcf]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::2f9a:1999:e82f:efcf%2]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 12:07:06 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Errno=No space left on device 
Thread-Topic: Errno=No space left on device 
Thread-Index: AQHZ5wNVJqPYTkBL00yGm4Vi5SDKIg==
Date: Thu, 14 Sep 2023 12:07:06 +0000
Message-ID: 
 <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|PAVPR03MB9188:EE_
x-ms-office365-filtering-correlation-id: 77f303ce-1f20-42d5-5579-08dbb51b1d4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3Xxo80zm+q1wAcOB2yQZUeWcPf2Ar9IYzi/COxvkW/rncXFK1/odsrBPNwtESVEmTSDMA0M/dMe9WvfuSrgqPv6DuQBzZGTFRdZBax4gYcbdzk+ZEtmKrcoL+/S8MgFDVGSmx+GuCigoT9Avjt0GyPgWbHJRb99/SzQtHukyWFK21AZlE97mQxzJCDAioWNURzejdncolIsoBW04NXTCAYw2QKES/VVvuoT1c36geRgr19aPRfMQiFCjLmHCcPs1Wm6aGUPn6svyslw118ISHwkvlwfB4IsZp6qiKlFTdBRnlwZSe1T+dgrf6DfKrdCGjM6ME5oenuDrCCzMOuRVxD2Io0iNUB+FbcA156S3ki30pG5yPBT0FHcGtjPsXSZrzhb5X1fLFkLXAY/kDnX4Or5vBDSpsoDSd6Ka2V+MFZM8msIek5NmV4GYZtGjoYwYa1fgZTHt30xf1kL9kJ1UzNfBk8VXmVi9VmjsHTER8LkWxFP/PpzWt/ynD7T4CCo0hOB7fNCAb8/UwO1ana0cROnGtfwLXlV6pVcPUshay8b0efrOXOUGLH4Z/UgEI0eZpVPnJaSF23t7kHRKrqP9umZeHuBTzBRtCCfNug09CrNqQbN7KCJNElPYjh1qWnCL
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(376002)(39830400003)(346002)(186009)(1800799009)(451199024)(7696005)(6506007)(9686003)(66899024)(38070700005)(71200400001)(83380400001)(86362001)(122000001)(38100700002)(33656002)(55016003)(4743002)(76116006)(44832011)(91956017)(66476007)(64756008)(66556008)(6916009)(66446008)(41300700001)(316002)(66946007)(2906002)(52536014)(8936002)(8676002)(5660300002)(478600001)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?koi8-r?Q?FxxGcCyfjZdzYkQD0h7xzibnaFvjktW5cNUqXXZqV11561Bzftn3CoQkx9i9e6?=
 =?koi8-r?Q?jhr9TPjcknqyvNrmUOh403/3ctk/5MBNMoyCgqj33XNTCAq2CrAfHEoDjomtkY?=
 =?koi8-r?Q?xVOVksEO2GhhCWw72IT3xAzKj42cVON2UI81oHyADatrTrhZrIrWXQPDbhdj1c?=
 =?koi8-r?Q?/Wr4XJUdaeeMc6Q39dqXNdAgXhwMP0YXLW8IEuTCtQp03bA1WqnS1JygPNMUN1?=
 =?koi8-r?Q?sYhE2+u+B+WxalWhUOi+M/McXFUXAp/B5hhUuaCUpY0EYb4/lJATw4P+ES9Oh9?=
 =?koi8-r?Q?FIMHCQshekz9/8Wf1l4cNvQtE7Hf7BIjZhFtVjFN8GyZBrCsrGH/zoEqI8HtF9?=
 =?koi8-r?Q?CKee9tcF0o0tWUnBOW+BOCCcowAGeiqneheZXVUdSIX3gZFDtPBTZ/6ihkaeCa?=
 =?koi8-r?Q?IrY9WAGxE4b8sDKRKkeugHI+G2bc5JFUTNX/yO2dt0Yy2sZEOuveBUvZsnvMzY?=
 =?koi8-r?Q?9ffTs6H8Ou4uF+WdN/fHyrBC3gPC9dn+8ttCHQFRrCwJa5vQJ4PKIMuG7wRu4K?=
 =?koi8-r?Q?WhMYrwkZxM46WcITWKj7gXva64h4GLhzIweoGl4bflIy5MobrDJTBrhWQRsW34?=
 =?koi8-r?Q?pbyq9xM81vSNkjY4QMgRQBxzhWZ5zjOzNCV6G3KTuiDdndD39zuiSMXylj8sZs?=
 =?koi8-r?Q?HNDsh1wWvtd0kbOpk3ij9WohcaPj1pVwN3/SdhWVsWtALa8jgzwOk+7xoYPDTv?=
 =?koi8-r?Q?tDRH645i+yw8NJ+No6ret8bUx1NDzIqwqNd2fYfmOEdW8IDovGDPAAQF8803hb?=
 =?koi8-r?Q?bnyHSWG77Hr3f4rOZV2MUM+BRDEyk5n/y4zK4OCOVrGbxXk948c0oetHMnBg1H?=
 =?koi8-r?Q?an0gH3/fZ8ZScHxtWblVxzD68eRYVQoo8bzs4UeFQ41oZEAHl6y+ACawPXwwjt?=
 =?koi8-r?Q?xoMRYLsZCsW6VA52IyLdSxLUxv/haxauOHlH0L90AMq3ThT71eg89tGprW0z9F?=
 =?koi8-r?Q?bJPZy1ItPe8EDvCiMWtOkNmD4EAaIipjBBTniTsc/Go1KXbQVZV6hrhdFt5ePl?=
 =?koi8-r?Q?a483BZmXqrqSTWvk/boVvqbugwsBqkavkh5r+sZyLhx4kEz3KnYy8WGy3Sx0NY?=
 =?koi8-r?Q?nmJUMIvCtC3hhdOR3OO02Dkx/4kw6eM/4AMFJWhauOe4jzjtEHZyr7tzWfrPDe?=
 =?koi8-r?Q?ru5qMPdoLGIO+gfC0PKXUA2q8utA9ap//A3nX5TCICiC58uaZGv/tjYMu8SUfW?=
 =?koi8-r?Q?2xUapu+Ua1j8tCQf6WeYLn8a/WKINASPmJ9Umxzu+AoiUgouMj7TN539PSNFsB?=
 =?koi8-r?Q?hdVEcSI3MEnWpGdSDw5bFK8ZvTjCiWbLyb8HDyg7btFne9QGZY2jglaVfsJbtP?=
 =?koi8-r?Q?+X0aal55ocfHKpW7IR7bVxaZjG6DnPu8nwzHu8wFfnn0EohLvJM+OO5Wirvzxv?=
 =?koi8-r?Q?q9oeQGgyMaGcxqr/X8DuO8Ua18ZYbqi4EJ1ZWYjsmXXK1Pk6MWl5Gr5BvEkXm7?=
 =?koi8-r?Q?NC/U8ElyBXh7P/ZZJM3GwTf4h1iOWgbMfBF+E8CVbmJu158T98SQwqgW4gZx3e?=
 =?koi8-r?Q?85kZQqZxjrNc+CTHOph2bdNA7Mni9KFw9xaEd6CViL+EMgUBw4ZNdCmcUQgGQ3?=
 =?koi8-r?Q?8Cx6c6Zh67ls/TVKRAjMfJGx1XdvzAJTXOiLdELORsWpDPXYKhiz?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB70126259019EF2AD25999A2892F7AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f303ce-1f20-42d5-5579-08dbb51b1d4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 12:07:06.3259
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Af/7BAYlvtpe5eu9I91fsndX4ONizulJm7ALckDNaWxMzkC3qdG0LwRZY20CAruMEZ/JGOTLSmIYkah15nVPGAdVtMU5qkZuy27nGUCGIgE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR03MB9188
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:07:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60994

--_000_AM9PR03MB70126259019EF2AD25999A2892F7AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

. sources/poky/oe-init-build-env

=8D=8D=8D=8D=8D=8D=A8 =8D=8D=A8  =8D=8D=A8=8D=8D=A8   =8D=8D=A8=8D=8D=8D=8D=
=8D=8D=8D=8D=A8=8D=8D=8D=8D=8D=8D=8D=A8 =8D=8D=8D=8D=8D=8D=A8
=8D=8D=A5=A0=A0=8D=8D=A8=8D=8D=A1  =8D=8D=A1=AB=8D=8D=A8 =8D=8D=A5=AE=AB=A0=
=A0=8D=8D=A5=A0=A0=AE=8D=8D=A5=A0=A0=A0=A0=AE=8D=8D=A5=A0=A0=A0=A0=AE
=8D=8D=8D=8D=8D=8D=A5=AE=8D=8D=8D=8D=8D=8D=8D=A1 =AB=8D=8D=8D=8D=A5=AE    =
=8D=8D=A1   =8D=8D=8D=8D=8D=A8  =8D=8D=A1
=8D=8D=A5=A0=A0=A0=AE =8D=8D=A5=A0=A0=8D=8D=A1  =AB=8D=8D=A5=AE     =8D=8D=
=A1   =8D=8D=A5=A0=A0=AE  =8D=8D=A1
=8D=8D=A1     =8D=8D=A1  =8D=8D=A1   =8D=8D=A1      =8D=8D=A1   =8D=8D=8D=
=8D=8D=8D=8D=A8=AB=8D=8D=8D=8D=8D=8D=A8
=AB=A0=AE     =AB=A0=AE  =AB=A0=AE   =AB=A0=AE      =AB=A0=AE   =AB=A0=A0=
=A0=A0=A0=A0=AE =AB=A0=A0=A0=A0=A0=AE


Welcome to the PHYTEC BSP-Yocto buildsystem.

Before building for the first time, you should take a look in the main
configuration file 'conf/local.conf'. There you can tweak the build system
settings and license configuration. For example you may have to accept the
Freescale/NXP GPU and VPU licence for an i.MX6 board.

Tested build target for this build configuration is:

   $ bitbake phytec-headless-image


As yesterday I managed to build the headless image with no issue I was then=
 going to start to customise it so decided to create a layer...

bitbake-layers create-layer meta-custom-mpet

And got the no space error. Strangely enough on an old yocto directory atte=
mpting a different phytec configuration that was apparently tested I also g=
ot the same.


NOTE: Starting bitbake server...
ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_watches=
=3D<value>.
ERROR: Root privilege is required to modify max_user_watches.
Traceback (most recent call last):
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/bin/bitbake-=
layers", line 93, in <module>
    ret =3D main()
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/bin/bitbake-=
layers", line 61, in main
    tinfoil.prepare(True)
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/tinfo=
il.py", line 409, in prepare
    config_params.updateToServer(self.server_connection.connection, os.envi=
ron.copy())
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/cooke=
rdata.py", line 75, in updateToServer
    raise Exception("Unable to update the server configuration with local p=
arameters: %s" % error)
Exception: Unable to update the server configuration with local parameters:=
 Traceback (most recent call last):
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/comma=
nd.py", line 81, in runCommand
    result =3D command_method(self, commandline)
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/comma=
nd.py", line 277, in updateConfig
    command.cooker.updateConfigOpts(options, environment, cmdline)
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/cooke=
r.py", line 497, in updateConfigOpts
    self.reset()
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/cooke=
r.py", line 1722, in reset
    self.initConfigurationData()
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/cooke=
r.py", line 375, in initConfigurationData
    self.add_filewatch(mc.getVar("__base_depends", False), self.configwatch=
er)
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/bb/cooke=
r.py", line 291, in add_filewatch
    watcher.add_watch(f, self.watchmask, quiet=3DFalse)
  File "/home/dave/Documents/Kymati/yocto/sources/poky/bitbake/lib/pyinotif=
y.py", line 1908, in add_watch
    raise WatchManagerError(err, ret_)
pyinotify.WatchManagerError: add_watch: cannot watch /home/dave/Documents/K=
ymati/yocto/build/conf WD=3D-1, Errno=3DNo space left on device (ENOSPC)

dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -n fs.=
inotify.max_user_watches
65536


the disc has 1.2 TB empty, there are gBytes of ram available, nothing else =
running. I succesfully built an image yesterday.
It seems at the moment that I can only ever build one thing with the direct=
ory, if I want to build again or attempt a tweak of any sort I get this err=
or. Its wrong for sure, there is plenty of space, the hint cant surely be r=
ight - you cant surely be watching over 65000 things - not realistically?

What IS the actual problem and how is it actually fixed? I cant be the only=
 person facing this surely?

--_000_AM9PR03MB70126259019EF2AD25999A2892F7AAM9PR03MB7012eurp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof ContentPasted0">. sources/poky/oe-init-build-e=
nv
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">=8D=8D=8D=8D=8D=8D=A8 =8D=8D=A8 &nbsp;=8D=8D=
=A8=8D=8D=A8 &nbsp; =8D=8D=A8=8D=8D=8D=8D=8D=8D=8D=8D=A8=8D=8D=8D=8D=8D=8D=
=8D=A8 =8D=8D=8D=8D=8D=8D=A8</div>
<div class=3D"ContentPasted0">=8D=8D=A5=A0=A0=8D=8D=A8=8D=8D=A1 &nbsp;=8D=
=8D=A1=AB=8D=8D=A8 =8D=8D=A5=AE=AB=A0=A0=8D=8D=A5=A0=A0=AE=8D=8D=A5=A0=A0=
=A0=A0=AE=8D=8D=A5=A0=A0=A0=A0=AE</div>
<div class=3D"ContentPasted0">=8D=8D=8D=8D=8D=8D=A5=AE=8D=8D=8D=8D=8D=8D=8D=
=A1 =AB=8D=8D=8D=8D=A5=AE &nbsp; &nbsp;=8D=8D=A1 &nbsp; =8D=8D=8D=8D=8D=A8 =
&nbsp;=8D=8D=A1 &nbsp; &nbsp; </div>
<div class=3D"ContentPasted0">=8D=8D=A5=A0=A0=A0=AE =8D=8D=A5=A0=A0=8D=8D=
=A1 &nbsp;=AB=8D=8D=A5=AE &nbsp; &nbsp; =8D=8D=A1 &nbsp; =8D=8D=A5=A0=A0=AE=
 &nbsp;=8D=8D=A1 &nbsp; &nbsp; </div>
<div class=3D"ContentPasted0">=8D=8D=A1 &nbsp; &nbsp; =8D=8D=A1 &nbsp;=8D=
=8D=A1 &nbsp; =8D=8D=A1 &nbsp; &nbsp; &nbsp;=8D=8D=A1 &nbsp; =8D=8D=8D=8D=
=8D=8D=8D=A8=AB=8D=8D=8D=8D=8D=8D=A8</div>
<div class=3D"ContentPasted0">=AB=A0=AE &nbsp; &nbsp; =AB=A0=AE &nbsp;=AB=
=A0=AE &nbsp; =AB=A0=AE &nbsp; &nbsp; &nbsp;=AB=A0=AE &nbsp; =AB=A0=A0=A0=
=A0=A0=A0=AE =AB=A0=A0=A0=A0=A0=AE</div>
<div><br class=3D"ContentPasted0">
</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Welcome to the PHYTEC BSP-Yocto buildsystem.<=
/div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Before building for the first time, you shoul=
d take a look in the main</div>
<div class=3D"ContentPasted0">configuration file 'conf/local.conf'. There y=
ou can tweak the build system</div>
<div class=3D"ContentPasted0">settings and license configuration. For examp=
le you may have to accept the</div>
<div class=3D"ContentPasted0">Freescale/NXP GPU and VPU licence for an i.MX=
6 board.</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Tested build target for this build configurat=
ion is:</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp;$ bitbake phytec-headless-image<=
/div>
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
As yesterday I managed to build the headless image with no issue I was then=
 going to start to customise it so decided to create a layer...</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof">bitbake-layers create-layer meta-custom-mpet<=
/div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
And got the no space error. Strangely enough on an old yocto directory atte=
mpting a different phytec configuration that was apparently tested I also g=
ot the same.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div>NOTE: Starting bitbake server...</div>
<div>ERROR: No space left on device or exceeds fs.inotify.max_user_watches?=
</div>
<div>ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watche=
s.</div>
<div>ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_wa=
tches=3D&lt;value&gt;.</div>
<div>ERROR: Root privilege is required to modify max_user_watches.</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/bin/bitbake-layers&quot;, line 93, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; ret =3D main()</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/bin/bitbake-layers&quot;, line 61, in main</div>
<div>&nbsp; &nbsp; tinfoil.prepare(True)</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/tinfoil.py&quot;, line 409, in prepare</div>
<div class=3D"elementToProof">&nbsp; &nbsp; config_params.updateToServer(se=
lf.server_connection.connection, os.environ.copy())</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/cookerdata.py&quot;, line 75, in updateToServer</div>
<div>&nbsp; &nbsp; raise Exception(&quot;Unable to update the server config=
uration with local parameters: %s&quot; % error)</div>
<div>Exception: Unable to update the server configuration with local parame=
ters: Traceback (most recent call last):</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/command.py&quot;, line 81, in runCommand</div>
<div>&nbsp; &nbsp; result =3D command_method(self, commandline)</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/command.py&quot;, line 277, in updateConfig</div>
<div>&nbsp; &nbsp; command.cooker.updateConfigOpts(options, environment, cm=
dline)</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/cooker.py&quot;, line 497, in updateConfigOpts</div>
<div>&nbsp; &nbsp; self.reset()</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/cooker.py&quot;, line 1722, in reset</div>
<div>&nbsp; &nbsp; self.initConfigurationData()</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/cooker.py&quot;, line 375, in initConfigurationData</div>
<div>&nbsp; &nbsp; self.add_filewatch(mc.getVar(&quot;__base_depends&quot;,=
 False), self.configwatcher)</div>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/bb/cooker.py&quot;, line 291, in add_filewatch</div>
<div>&nbsp; &nbsp; watcher.add_watch(f, self.watchmask, quiet=3DFalse)</div=
>
<div>&nbsp; File &quot;/home/dave/Documents/Kymati/yocto/sources/poky/bitba=
ke/lib/pyinotify.py&quot;, line 1908, in add_watch</div>
<div>&nbsp; &nbsp; raise WatchManagerError(err, ret_)</div>
<div>pyinotify.WatchManagerError: add_watch: cannot watch /home/dave/Docume=
nts/Kymati/yocto/build/conf WD=3D-1, Errno=3DNo space left on device (ENOSP=
C)</div>
<div><br>
</div>
<div>dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -=
n fs.inotify.max_user_watches</div>
<div class=3D"elementToProof">65536</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
the disc has 1.2 TB empty, there are gBytes of ram available, nothing else =
running. I succesfully built an image yesterday.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
It seems at the moment that I can only ever build one thing with the direct=
ory, if I want to build again or attempt a tweak of any sort I get this err=
or. Its wrong for sure, there is plenty of space, the hint cant surely be r=
ight - you cant surely be watching
 over 65000 things - not realistically?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
What IS the actual problem and how is it actually fixed? I cant be the only=
 person facing this surely?</div>
</body>
</html>

--_000_AM9PR03MB70126259019EF2AD25999A2892F7AAM9PR03MB7012eurp_--

