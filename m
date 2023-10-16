Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29149CDB465
	for <webhook@archiver.kernel.org>; Mon, 16 Oct 2023 15:27:11 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.54])
 by mx.groups.io with SMTP id smtpd.web10.128863.1697470025298246600
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 08:27:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=AwFPtKO/;
 spf=pass (domain: kymati.com, ip: 40.107.105.54, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nl0IINs50gBmhjH6Cc14fCDBGBXHVpSbjNpvt4LgZu1xk9oQ91iN3fATC2mWFvyV/SZW5OB3KVAydm39Zx1SnGWaNg+2XjG4ghuKUyGqHehaf9kHrETblrs22cDoa80qPc16a9HnwZZW6d4VYeLK4fQl8oV6Q7Q4KRiydONUfbVELRJ8ICo4PGhvcN5K1En8AJ55oEgW8t6A52GrnRtfwKEhEl9DQQUiTGqhsnZBq8VYL1V/+h9P6Xho3at9W5/Eyqs3wcJfXv+Ic05LRblt0VyCSWX/kGMlcuMvQbPLSTqd2OU796mtfsy6hRF+BqqS5tqaUgSGtfMZQKkdzlG1VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=giMPYqA406II6MemGpyqyfVomOk5nTzVjy9bH5n8Snc=;
 b=a7WDA0keCOziDH3ooB8Th9HJXQcqb9KwEvwIeWklO/vcI/5P6x5VkCvOZ1+GXWcvZk/JZF8XauGsRQh6gT0HPr58UoDnNyvSn4WLHFbSPRp0pOYOCg5fwbZIWR7Sl3w39MVplIjUJJs6HIR9ettrzUgT1jpmY9yJ7HG0+7lOWOEDycZg+y8Nf0K1CNwKPqfx79K8p5GCXGwFYw1GnofB53LPrTPaXewFaPg7sRepe2krfp54jB8k0wkD8vlLLKAjqpQKmeIu7NIKjF8SXjVTz+7ej38eOkv2VtyVsedTaOaWFNDhmD66u2VzooiOrKXO9FNp9rnDOFqvEck9R6z2HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=giMPYqA406II6MemGpyqyfVomOk5nTzVjy9bH5n8Snc=;
 b=AwFPtKO/VbmXXoXilM3CNc/oOAdN/82cOyaF76m8jjAyK/1b1S64VYgdSNAllGENROpLX2J2edCvbcOiEIv/MTEchTScKVm+d25pzXaIH/rvCetrbxADUMA5Up+xeItxe88zx4frS9jquIWfZm7W2ejME59L92ZF6gkSTCaa2mU=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by DB9PR03MB7353.eurprd03.prod.outlook.com (2603:10a6:10:228::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 15:27:01 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::d59f:cda5:bdca:91d3%3]) with mapi id 15.20.6886.034; Mon, 16 Oct 2023
 15:27:01 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] Using cmake... how?
Thread-Topic: [yocto] Using cmake... how?
Thread-Index: AQHaAEU1GVmCsck7rEeYingXKJhbiw==
Date: Mon, 16 Oct 2023 15:27:01 +0000
Message-ID: 
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
In-Reply-To: <20231016112233.221066-1-foss+yocto@0leil.net>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|DB9PR03MB7353:EE_
x-ms-office365-filtering-correlation-id: 5823eda8-6769-4042-b371-08dbce5c5830
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 psnR1CW8XzcCgt5UaBVzGiuNgNl6XtwZz66no1kVAseNDpp4Za9xVSyqK6CBm7PHBSquat1Q3wS5vPMv8dCT/kpWq+LeonbMot9d7CXqQfKRXRGsZrqVc1bRq6tjg6wyq/9W8vC9LWjPj4diSofYGT9w8vBdgFObs0XufmVkGUr4A2NCxkBAqhGNa0d5GyFgLlgI6RKhN04EwteqxDA0VCV40fMNv5pYkR+6tRQdL7qAOJbQKMBv4Wsxu+mfJyCxfeRU/bKzbNl0/dKPrWg8mZnxFbpOo7ct4PCGorUG9OBlrR193LmHCED0rn3/RbPCXmvS//msl7xfnwvVqsSv94srfGIju+D60bTzTQHtte8TE36YiOEeVkznwj89xvlK7NrW7FaC+5qQNebSZL/Zq0v8cqhdoYr8M/ehnn81oux417ifFCGBr/MuXOk/HgMVcdYMkPNsxUoa0nPwKg56cIfT9uHR7uMLC5raYYhpdiWwJv14kDu3+O95pqfljn0KqLoNZyj1WLVZZGzotbmWxB2tyVuL2tffYAj15YD5J6FUk5PbeT5CSHm6247q4+9IHHUMkyBeFrrcbgkNe7tLa+LvrxCawQyIOBtx6aydBa/iIdYlM8x1tmusT7/orfCmxHNiDSdrEw5+YA5fTL7E+2eb/zkcsmiEj7RHTLE7LFY=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(39830400003)(346002)(366004)(136003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(478600001)(41300700001)(19627405001)(8936002)(66446008)(66946007)(91956017)(76116006)(66556008)(64756008)(66476007)(6916009)(316002)(8676002)(44832011)(5660300002)(71200400001)(52536014)(7696005)(6506007)(55016003)(122000001)(38100700002)(38070700005)(9686003)(86362001)(83380400001)(2906002)(33656002)(4744005)(414714003)(473944003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?oK/k35mcZbM4oR2L2/egO5HG/zqFebFe3pN+UFsY63OrbrYh637pUx5X?=
 =?Windows-1252?Q?sgrjy/6C6SCfqA0IeBpeXSEiMoZUZUiLSTW+hrpExYeaixl0iwJsDDMq?=
 =?Windows-1252?Q?P9UVe9ynLtj46BLvj4ri6XPUjYMjENMtplobOah4k051vBa+oHtY65pm?=
 =?Windows-1252?Q?e5zBXb8hQdMjWdXEOZIsOnDV+bVZE6wW1lVCh08v8lC6Vu2vhZ5QlEEV?=
 =?Windows-1252?Q?LhzU6r69fSxXR2ECB6vB8eEnbTpXuWFEn7ZuTmk3L2YQHZVxEJ96GrpR?=
 =?Windows-1252?Q?NND+Fy3Li4nkbZ8NiCwPdNAhavoZq2YN9/ToTqXVx1ayep7UWD3FB6y2?=
 =?Windows-1252?Q?m4wCDUllQzEXV3j1hKACzLBDKKaX2FygXeZb0X3NNEia7ImE9QakXKH8?=
 =?Windows-1252?Q?aYbV9ngZGbsCF6yCuY2KDBWJrCqLMNiFVQqNGquslEyCwVVmqP+r+PrH?=
 =?Windows-1252?Q?WS0NesjX/NuhNYiZMkmTtjBo8jY1++lPhWt4y5wI0zJKMg5KkRc9ICRe?=
 =?Windows-1252?Q?DmyFFKqjmt66wKg3G12ND2RDuiuyI6471U6OgUpoiyl2iVNWqcySIV76?=
 =?Windows-1252?Q?9aJQdmRTFihJ8gzLc1qJwNnxp1i8VWmfR2nm1k53phANioJXonjfb3ZK?=
 =?Windows-1252?Q?DoSW5QUZscuzxXGBrXNN/5w0rdcE/hPak/3l5PfhdpTUUmA/z/BR6alg?=
 =?Windows-1252?Q?r+TGqlAxww6ly2GaxpNdzUC2QYqJ+5vbdKDGQXqvjIbHyIK4PpIVlzJz?=
 =?Windows-1252?Q?AKLFmrB3qW7hPEUeTo9vRO5onpJpXNY0j984kdE8Nj0ijHdxg0mu697x?=
 =?Windows-1252?Q?Oa8ltk+fFplldkoSCCZrJiHai9DbhATBpYd8zYNzLBKiZ624Iczsdcqa?=
 =?Windows-1252?Q?dbKVsbKpNkdelYbbIrTpzYPH/2deK2tv5x4pA9xelmKbXXhKnQEe+X0r?=
 =?Windows-1252?Q?rjDsqX3DaUXkCqwBfux6jNDAiEKTeRX1tpzT5vIHsvimuS4t/LSVSJPe?=
 =?Windows-1252?Q?il2wEC+tOVBiKg06/fp2veXABxUJJlm3pzx30jvTlHoq3zzsh7YGsbuo?=
 =?Windows-1252?Q?Na3Fc/y7AqnoB5DXK1hJsHUZ7ZbpWQyuK+P5QYuFbBuKeeVQ+b5l4wsX?=
 =?Windows-1252?Q?y/Gs4UL2iK+nCV76b5VlZ/eBGsK2n9giURCEkhb7aaeVUbs1CNdsa43q?=
 =?Windows-1252?Q?ESxhwFxf+ZWpk/kil0qXWmzqldqNdaXIdKpcSpC4DHTFqPfY3m0M25yT?=
 =?Windows-1252?Q?3VMQJuC89BlEiNQDDgxP/bDW6gbiOXn2+BSqnWr8geBFfrOuKSQTFHsy?=
 =?Windows-1252?Q?sOyXjQzWnkduO4Fix67clGnPalBGQL1nlFkOBzEh1urAX31dENSB349w?=
 =?Windows-1252?Q?QtVIVukQHlVV0jAr9GLZmypB1u7SPE+5IoMNolWGGB8lleX/4R8V/mG9?=
 =?Windows-1252?Q?w0z2xC72NEx1nHUIkGipfMyTcxIFhmVG2zBHpOPjW2+fR7wOJU0IVAXj?=
 =?Windows-1252?Q?hHY0GJC/z9BT/pi9IlFsIXloRNVLzjT5h9RA+I6dczFImPz2iK/A/bEf?=
 =?Windows-1252?Q?8B9NFpMMEbHuHJhuIz4dQQ3zxwHfFgUzt7hq2kJ6TWOxdx8VLfewsJPT?=
 =?Windows-1252?Q?yzl2BBSa0ynEv707CHWjwH+7u+xWHIpizWMFNt1spkhU8PIaH6qaZwTJ?=
 =?Windows-1252?Q?gCvS4iS1n6h8PGkCasYHu5CX4FLeA3DfJ2hPRL0OXcNW7zZwCrCYJg?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB7012E6E478F4D2899CBE0F5192D7AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5823eda8-6769-4042-b371-08dbce5c5830
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2023 15:27:01.4649
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mByr7O7IBs8IDlzPEw/MOxsciIujqcbKeABjo6wg/NUgAkBnrSiy63FFV2cE+at0gUPdUP4IJlFBqgn/7tD7sqWbPk9q8gTM0LqPye4/hHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR03MB7353
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 15:27:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61346

--_000_AM9PR03MB7012E6E478F4D2899CBE0F5192D7AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

So my current recipe for the project works, including building various C, C=
++ files
I wanted to now add a library of someone elses creation.
On my machine this library builds using the tools installed so the code is =
ok

I added a recipe to my yocto build and it attempts to do the cmake.

Unfortunately whatever I have tried over 2 days cmake insists:

  1.  On using the from my machine NOT the cross compiling tool set the res=
t of the yocto build uses.
| -- The CXX compiler identification is GNU 9.4.0
| -- The C compiler identification is GNU 9.4.0
  2.
Getting upset about the flags passed in:
|     g++: warning: =91-mcpu=3D=92 is deprecated; use =91-mtune=3D=92 or =
=91-march=3D=92 instead
|     cc1plus: error: bad value (=91armv8-a+crc+crypto=92) for =91-march=3D=
=92 switch
I cant even find where these flags are actually set, where I found them and=
 thought they were set I altered them to be FRED and nothing changed in the=
 errors at all.

Any idea? Surely it should be pretty easy?

thanks
Dave


--_000_AM9PR03MB7012E6E478F4D2899CBE0F5192D7AAM9PR03MB7012eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
So my current recipe for the project works, including building various C, C=
++ files</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I wanted to now add a library of someone elses creation.&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
On my machine this library builds using the tools installed so the code is =
ok</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I added a recipe to my yocto build and it attempts to do the cmake.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Unfortunately whatever I have tried over 2 days cmake insists:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<ol data-editing-info=3D"{&quot;orderedStyleType&quot;:6,&quot;unorderedSty=
leType&quot;:1}" data-listchain=3D"__List_Chain_146">
<li style=3D"list-style-type: &quot;a) &quot;;"><span class=3D"ContentPaste=
d0">On using the <span style=3D"display: inline !important; background-colo=
r: rgb(255, 255, 255);" class=3D"ContentPasted1">
from my machine NOT the cross compiling tool set the rest of the yocto buil=
d uses.</span></span>
<div style=3D"list-style-type: &quot;b) &quot;;"><span class=3D"ContentPast=
ed0">| -- The CXX compiler identification is GNU 9.4.0
<div class=3D"ContentPasted0">| -- The C compiler identification is GNU 9.4=
.0 </div>
</span></div>
</li><li style=3D"list-style-type: &quot;b) &quot;;">
<div class=3D"ContentPasted0">Getting upset about the flags passed in:</div=
>
<div style=3D"list-style-type: &quot;c) &quot;;">
<div class=3D"ContentPasted0 ContentPasted2">| &nbsp; &nbsp; g++: warning: =
=91-mcpu=3D=92 is deprecated; use =91-mtune=3D=92 or =91-march=3D=92 instea=
d</div>
<div class=3D"ContentPasted0 ContentPasted2">
<div class=3D"ContentPasted2">| &nbsp; &nbsp; cc1plus: error: bad value (=
=91armv8-a+crc+crypto=92) for =91-march=3D=92 switch</div>
I cant even find where these flags are actually set, where I found them and=
 thought they were set I altered them to be FRED and nothing changed in the=
 errors at all.</div>
</div>
</li></ol>
<div class=3D"ContentPasted0 ContentPasted2"><br>
</div>
<div class=3D"ContentPasted0 ContentPasted2">Any idea? Surely it should be =
pretty easy?&nbsp;</div>
<div class=3D"ContentPasted0 ContentPasted2"><br>
</div>
<div class=3D"ContentPasted0 ContentPasted2">thanks</div>
<div class=3D"ContentPasted0 ContentPasted2">Dave</div>
<div class=3D"ContentPasted0 ContentPasted2"><br>
</div>
</div>
</body>
</html>

--_000_AM9PR03MB7012E6E478F4D2899CBE0F5192D7AAM9PR03MB7012eurp_--

