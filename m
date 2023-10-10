Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471BCD68FE
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 08:18:16 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.52])
 by mx.groups.io with SMTP id smtpd.web11.86013.1696925886620600498
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 01:18:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=DJwKbdS7;
 spf=pass (domain: kymati.com, ip: 40.107.8.52, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A8nl/i7i4wN/fy9sZ8NLMp7ZPVod4P2qtnKfrCPbvocJGDVCJkG9f4RopZA9pF5/ty8nimfialnky6CEebN6SweTNg05szhhCM7npZD4cPqvKiQAWq9UFVpI7z967YZYXR5MEttZA63StW+yAxvKhk2kclA0Dtj72WSR5pRJhrYRCDzENI7xQiPMgS4Hne+noMZkPDfcHQPMEE1jcbcvJGZScTmue1NseG9r85ytxcceZAN30YUt/5+AaNNirrXArsSTjueHf9f+hf/0E2c87fU29PgOXIk6O14juiMekf8iK83I+PijT+NaZmMrZzInkK+F6+QLkeziY960qhsSWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2N7bVCyNrrOpK+bFg9E4m04GmmlycXgEUms3gmnRw0=;
 b=jkDiRB24WRkfd0k2+QbsNV5qz9TAghdv5YlPBxwYCs1cOHG3VssvY+H59w3vhheO1h2GoITeyLyjWiqdun/wJqTtPQsFutmbx8kM3VfXduu4mnZFypbwfY3laeJ/jP17hvZsUr8eUJ+Ctby29ZsZAtuHf4azlCa1GGy4Iuh9fPlyFLNQMDoKvznb8+zRjXD+29PPL5CkdmM+QlpNkt5f85o3qEEt4IOU1JNlwLzPs6o3QvSgoqMDwoBhuw3GdERRo3e+I2Mbd5xVXk/InuyAw4uJBALtM/ofTsJqCq9pxE2qnW1BDcF/YVoPtdPfTz1fv6hc4vkhFsST+7YJmmxWRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z2N7bVCyNrrOpK+bFg9E4m04GmmlycXgEUms3gmnRw0=;
 b=DJwKbdS7hQI298C6EVwyJQRkbi81o1pwqHHNqoUcKQgBsj55+FBa1LuDkc3yPen6seMIAUR32t9vnjrB2FEvOGgUR3gMZA2SrRY7gMp6z4k9Ouxp4F17zqUDW5KB6qMiHnspnSCB2mzoEgryJMerFMFNKPRBqYneJnmgBk05gfQ=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AS8PR03MB9117.eurprd03.prod.outlook.com (2603:10a6:20b:5b5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Tue, 10 Oct
 2023 08:18:02 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::e590:fcdb:f3b7:e895]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::e590:fcdb:f3b7:e895%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 08:18:02 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] VOLATILE_LOG_DIR ?= "no" gives build error
Thread-Topic: [yocto] VOLATILE_LOG_DIR ?= "no" gives build error
Thread-Index: AQHZ+1JJzSTFZYpwW0CAA6MiRpZrfw==
Date: Tue, 10 Oct 2023 08:18:02 +0000
Message-ID: 
 <AM9PR03MB701282822312F09FFB57816C92CDA@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca>
 <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com>
In-Reply-To: 
 <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AS8PR03MB9117:EE_
x-ms-office365-filtering-correlation-id: cdf98802-7b89-41ff-20a9-08dbc9696c25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oo0s2C9wG75fAMEPLsBoylQt3zqmMjTCAKt95e5rDDtvGAJPIrJssha9EK1UuvUI8xWlNPGp07MwAfIXD2yl9ZpN00NOlr+keTr9onzdr0nXrTC22EqgGW78MK94gud/YKs1cDSm7Bcsrl/vGVRVqRw8lpx7xCeJW/fMcNIFKanOzic2Ug+2B4hq9JWe6iB+U9WYhfzMnsBDDP9YP6BYkyYnI6MmhkdSnv+8n+x/RgVa0iOijVIg8Ixd+w7DlVLuipPxWfTKjGnsM0g3Yox4tQdt8R3TvY2OA9Qhck/wQHsCz4C9WlngoAsoaZnfh0lGfagNVEG35CZrB4K85w2hZWorHaL+TES5duKS2JcU1wMMna7iW/2NdnuuI4jKN1QlUPJCpexnfsol65k2zgbgwLAZnGcdvMTayyx1FibLYLqJptuYykh/CDWPlF9VowOjfd6qutVABU27Br6bSStPaa9JshUxEuM7e/E3hVAIVjTv3gaZlWACaV9xquB+HCXgm7eVRhGMkWUUTXuE2oVAGjPSc7nL4VX490bNxguTe8OlGz9zcKt9c2b1IyEl2iGlTB2zgjeBIX1M8Nx+3RFZsGISiXjU9zz6O+WAa2sUbQlUuenXwOPAjUDY7Is9FC19
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(366004)(136003)(376002)(396003)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(38070700005)(9686003)(33656002)(7696005)(86362001)(26005)(478600001)(6506007)(71200400001)(83380400001)(122000001)(38100700002)(55016003)(2906002)(64756008)(66446008)(66556008)(66476007)(316002)(6916009)(91956017)(66946007)(52536014)(76116006)(8676002)(8936002)(41300700001)(44832011)(19627405001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Mq3JJvVVmX8sVvpvsyCqJFL5R9uHi4rBJpRuwutKnCj4GThqzdvj7jBD4V?=
 =?iso-8859-1?Q?Q08cLNTBIX+Ofp5OnhaGWmOtz/X+WK5jeBB1vpYWEDUSw/RcIynZo6yOTW?=
 =?iso-8859-1?Q?EwcLYhwjH4RzhgG7LXZ2rJPmC0UQjG15TWcpX5a87FoLDjUTVCmXU0Zdz8?=
 =?iso-8859-1?Q?p92D/dra3uurImczrR76FxDlb4sdtdJLw/lTSv61p2ul1aq28jA2QvXduP?=
 =?iso-8859-1?Q?frA5rwm2KPdVZiPsU2K8sBPznqDUyS/yBxZGOQd7z6wGi4iCVT6glEyjhB?=
 =?iso-8859-1?Q?20KmxNFORl0T7dbXe1qLBwo1ZyiRDASs6/V0jJTtGOfuF+ZwPMTR64L7UB?=
 =?iso-8859-1?Q?x4A7NVxRpANOIDQfLlAEDAMf5dAaIor+Ij82vwtSn74GX1DMnrhtnEeoQE?=
 =?iso-8859-1?Q?CVi5hr9bsU8zzMqMC84O533NzfMpLir3F5n1yCIw0Lt8VKMyBXw6CXy1pa?=
 =?iso-8859-1?Q?Puyxeu/mlUSuuiqlX9pKS4Z1DJ/FdK8wdOs4uCdVvWiveVjUHteVRqg/J3?=
 =?iso-8859-1?Q?zmer8Bi78uUXZUm43pHNueBbsezssY7n6rz7JOr5yh9IMEVEzhWNUjf4Tk?=
 =?iso-8859-1?Q?DIvj5NJmZ+/3XpEsuR7YtL3dkOA6ELBbjdvIYtt4lXkL+qaT+CD+mMc98t?=
 =?iso-8859-1?Q?GJcn9X2o5AViJ9KIJrBqHanfKQoNd8tNZyt7VxveRfkzOqsUPFHHzZPv4C?=
 =?iso-8859-1?Q?oUxpDvXVO4SNS+0ulKcUWFxT+rUXbB8A4oOXzAgJb3N5djTEy1zamkUqzt?=
 =?iso-8859-1?Q?pSlNh5SIG5aDsyyYZOhbmcGWmiz/ITFGOGPugtBwEW1nynE7elPCo/FtGc?=
 =?iso-8859-1?Q?IS/6kdztuHZdrZwsA00GaPc2ivnjy7qhPLkKQ90sedt0LIZoBfLfGTaypH?=
 =?iso-8859-1?Q?yDE8TlE1BpNkt9V5qwn4DPbg0yDzfOvQhxf+AYDivSx+lwFm1CVpfL+nBq?=
 =?iso-8859-1?Q?atPkzxuNxPzOjMJ2IWhKGUFGK4KVsncs2689yIj2SMki/0kGEPQqdzE2TK?=
 =?iso-8859-1?Q?nrbkd2kxxFD69T2maXA/CcsB2RJiN4GSaG1H5w26pX1LUB4FqDt+J5IBAP?=
 =?iso-8859-1?Q?2KbQa+EyVe5JSd6gPWDjSnSbVd0E6d9vXIOojgMGtGX34OjgYjpmewicQI?=
 =?iso-8859-1?Q?P0I51uUKPdNr8rPzNWg1whCpAelIEjOMemyXcap8Y9OWFWemVTDICaEi/F?=
 =?iso-8859-1?Q?SSw/PtU1PpZIWxJ/4crdJeihNsL415MMMYlLWgFZ7AQjdKljxIJ4By2Owm?=
 =?iso-8859-1?Q?E9WouagqaMFwIRcgdOA/0awsERIrXnxAS7JDkNOt61fsEaIUp6eZYD287d?=
 =?iso-8859-1?Q?VeI8YPxMbq6OoXqI7lhVnmk3qLladF4wKZ+ymt/HXKdFGpwjojh5S8Ym1r?=
 =?iso-8859-1?Q?88TnMWFJZNBh17YiE4ecVgR45IaMKPAzB+hcHQjYtKNOA8bNOgW41ZauMK?=
 =?iso-8859-1?Q?9ZcbeU5DSio9LHKkXE5sja/sCuB8ePlywJkdW0cFI5/pRt7fjYX/Xqw1Le?=
 =?iso-8859-1?Q?r8m9Sli8nzEIAru3luaoyiYJpegU1UCQqJX6N+jVGfULk60H1DRPzv73dL?=
 =?iso-8859-1?Q?zrajCAIZSxF2OrA2+K88B5aXxosfGjcZzX4PfGQbL3ae83E5o3Ed+f/X+W?=
 =?iso-8859-1?Q?2Hd2wk6KOChW13nGYmK9jG56A3r4otGkSA?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB701282822312F09FFB57816C92CDAAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdf98802-7b89-41ff-20a9-08dbc9696c25
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 08:18:02.5638
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7BxjLdNPDjIjL2JPP2Rh+mU8aXUKf7j1LXWmfDscDWOKJ/fIZa6a50lyukglG2QymdYGJQddsvaWQcfAiONUlDJRBpR4lqixrQpamOezHOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9117
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 08:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61299

--_000_AM9PR03MB701282822312F09FFB57816C92CDAAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



Hi all,
I was trying to get /var/lib and some files set up in my yocto build.
I read that setting VOLATILE_LOG_DIR ?=3D "no" would mean the directory I c=
reated during the bitbake would get copied over
However when I tried it I got...
| apt-pkg/tagfile-keys.cc:1:10: fatal error: /include/apt-pkg/tagfile-keys.=
h: No such file or directory
|     1 | #include "/include/apt-pkg/tagfile-keys.h"
|       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
| compilation terminated.
| ninja: build stopped: subcommand failed.
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/dave/Documents/Kymati/yocto/build/tmp/work/cor=
texa53-crypto-phytec-linux/apt/2.2.2-r0/temp/run.do_install.277311' failed =
with exit code 1
ERROR: Task (/home/dave/Documents/Kymati/yocto/sources/poky/../poky/meta/re=
cipes-devtools/apt/apt_2.2.2.bb:do_install) failed with exit code '1'

I didnt change anything else. I wonder if someone could confirm why this ha=
ppens, and the best route to achieve the actual aim (the var lib directory =
created)

BR
and thanks for the help
Dave

--_000_AM9PR03MB701282822312F09FFB57816C92CDAAM9PR03MB7012eurp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<br>
<div>Hi all,</div>
<div>I was trying to get /var/lib and some files set up in my yocto build.&=
nbsp;</div>
<div class=3D"ContentPasted0">I read that setting&nbsp;VOLATILE_LOG_DIR ?=
=3D &quot;no&quot; would mean the directory I created during the bitbake wo=
uld get copied over</div>
<div class=3D"ContentPasted0 ContentPasted1">However when I tried it I got.=
..<br>
| apt-pkg/tagfile-keys.cc:1:10: fatal error: /include/apt-pkg/tagfile-keys.=
h: No such file or directory
<div class=3D"ContentPasted1">| &nbsp; &nbsp; 1 | #include &quot;/include/a=
pt-pkg/tagfile-keys.h&quot;</div>
<div class=3D"ContentPasted1">| &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</div>
<div class=3D"ContentPasted1">| compilation terminated.</div>
<div class=3D"ContentPasted1">| ninja: build stopped: subcommand failed.</d=
iv>
<div class=3D"ContentPasted1">| WARNING: exit code 1 from a shell command.<=
/div>
<div class=3D"ContentPasted1">| ERROR: Execution of '/home/dave/Documents/K=
ymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/apt/2.2.2-r0/temp/=
run.do_install.277311' failed with exit code 1</div>
<div class=3D"ContentPasted1">ERROR: Task (/home/dave/Documents/Kymati/yoct=
o/sources/poky/../poky/meta/recipes-devtools/apt/apt_2.2.2.bb:do_install) f=
ailed with exit code '1'</div>
</div>
</blockquote>
<div class=3D"ContentPasted0 ContentPasted1 elementToProof" style=3D"font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"ContentPasted0 ContentPasted1 elementToProof" style=3D"font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I didnt change anything else. I wonder if someone could confirm why this ha=
ppens, and the best route to achieve the actual aim (the var lib directory =
created)</div>
<div class=3D"ContentPasted0 ContentPasted1 elementToProof" style=3D"font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"ContentPasted0 ContentPasted1 elementToProof" style=3D"font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
BR</div>
<div class=3D"ContentPasted0 ContentPasted1 elementToProof" style=3D"font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
and thanks for the help</div>
<div class=3D"ContentPasted0 ContentPasted1 elementToProof" style=3D"font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Dave</div>
</div>
</div>
</body>
</html>

--_000_AM9PR03MB701282822312F09FFB57816C92CDAAM9PR03MB7012eurp_--

