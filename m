Return-Path: <thilo.cestonaro@thalesgroup.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 409A6C282C5
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 06:50:03 +0000 (UTC)
Received: from esa.hc1631-21.eu.iphmx.com (esa.hc1631-21.eu.iphmx.com [23.90.123.40])
 by mx.groups.io with SMTP id smtpd.web10.47881.1740984595645867875
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Mar 2025 22:49:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=bbmfo20230504 header.b=IC+9aJlS;
 dkim=pass header.i=@thalesgroup.onmicrosoft.com header.s=selector2-thalesgroup-onmicrosoft-com header.b=UltDZWtR;
 spf=pass (domain: thalesgroup.com, ip: 23.90.123.40, mailfrom: thilo.cestonaro@thalesgroup.com)
X-CSE-ConnectionGUID: dwY3oIF8TMS1VeSGK1UfeQ==
X-CSE-MsgGUID: Nb2DfmDaRjaSLxFSjfGEVw==
Authentication-Results: ob1.hc1631-21.eu.iphmx.com; dkim=pass (signature verified) header.i=@thalesgroup.com
X-THALES-CLOUD-URL: Yes
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="28558069"
X-IronPort-AV: E=Sophos;i="6.13,329,1732575600"; 
   d="png'150?scan'150,208,217,150";a="28558069"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=thalesgroup.com; i=@thalesgroup.com; s=bbmfo20230504;
  t=1740984593;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=o6yNJMCecimFA/wZRI4SKeMMCb3QVjvBUAWbVNyegnU=;
  b=IC+9aJlSM05k5CqBA+F5T3aQT+kwQi4je4dpYI+9r+iUKh6rnhrlsaxU
   nEbYwWRu5tlHkmrTeLLi1tJP8GULTGEAzRr3DlFUIZmLsXxfJppOuZpEg
   RHK5I6FjDB0yQY2yFm94cEEq2QDzzmS5v+5Jnewk7KtTleMrim+X4byCQ
   rffmJK0EJrJEL5FaIkasbTmY/m4+oUot/jLvbfvLIyKpNpWnFwdxmfVr4
   Q91mqhpwf/LyyNUpzls3gLXnNpSurrN3qGWnz3FTv1P7LKMXZivSjQkxz
   fUB2ponyj4hwBHCoaJf7mh4Js+wI6cvLlWKjeZz1GOgmbfFxCpKDA4RN6
   Q==;
X-CSE-ConnectionGUID: bZd41laDSeucv3hTZgkv0Q==
X-CSE-MsgGUID: 3ySHhMQ3TF2oW7hWUP1SpA==
X-THALES-FO-URL: Yes
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="119852731"
X-IronPort-AV: E=Sophos;i="6.13,329,1732575600"; 
   d="png'150?scan'150,208,217,150";a="119852731"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EH9do3QtJKxVgTTBD30q3BUGx7wA45dOhH4krkcbs/pRqAk4dbwE8sjrhdILKFyeGeiS2iP+fyZG/pC7gU6fFEEU05YQVNGDu/dkcDEgZdnl/fDtUgqk38czO1tP2FrS1UDoz9HzKTZXqzZtLwuHZwEurC1i6ffURrLIN0pnYchmqhNo+2+uQrkdUR+4dQybuZCPNV6SGV4L7wawmJDwIMt+TXZZBllMzT+AXrU9QBDC61KIrlKxvN3hFk4DfNjEmUUSkw7Czav2k1ZWWPvXY4ptTInp00e/8I4qai3MuEg1+4ZWWongEK3jW/ps69UVx8RRqLSNDTaTqOuHmS/fSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o6yNJMCecimFA/wZRI4SKeMMCb3QVjvBUAWbVNyegnU=;
 b=seAo7EP6YMv2Ud5U0IwPdl3HSBrgzC8ErfmN2fzTb6El6nGqfmKmrxDORJJjIKTq7cXAMfF1V7RaEAN/3+jIrGnT5hXvAFl1iJW0gr0gbPKNJTaKBIKsF+OBRH5ka9CMhVApFBuJexGDKhHLp0AVLWFQVS4kjJE+UK4qm5vtVchYsSQFr5qrb/geIxQqsyH/o95Q5tAGUYbgU4SCnZoF4T8uIRTtY2IkNmf56WrkPLVJncGkcIX/2GR/LzSBf5s8MMO3iA0O8hDVtVzHf4R7H/dJzkWqhf4lGlVwZGrCCDpsj88qnUQyyVEmZCk8+p09mdifege3xPzNQyzhr3qyQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o6yNJMCecimFA/wZRI4SKeMMCb3QVjvBUAWbVNyegnU=;
 b=UltDZWtRvGGljh7JdBHTWn2883aPXoexrGy+zw8L89pV6npm+G+mAvTXP35dE8MngjX9b6P+m+tkxfC7fDQUDdpfZb8WTf55STWsxqXOxUizF6zJoHZfL/vEMTv/OVrDUA+HQt6rucwd8dIUrYbNSQu4xcqNB6zOPJGaFT6wuIk=
From: CESTONARO Thilo <thilo.cestonaro@thalesgroup.com>
To: Adrian Freihofer <adrian.freihofer@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"alex.kanavin@gmail.com" <alex.kanavin@gmail.com>
Subject: AW: [yocto] SDK and what goes into it
Thread-Topic: [yocto] SDK and what goes into it
Thread-Index: AQHbgrI9zZv7Il/XZUW+GGfn3in0LbNOZtwAgA/8DgCAAqbo4w==
Date: Mon, 3 Mar 2025 06:49:51 +0000
Message-ID: 
 <PAYP264MB4108AEA680840BB2B0500E7DE9C92@PAYP264MB4108.FRAP264.PROD.OUTLOOK.COM>
References: 
 <PAYP264MB4108A21C7E8A696BEE78F47EE9C52@PAYP264MB4108.FRAP264.PROD.OUTLOOK.COM>
 <CANNYZj-J5=GDSG+V7Ae0n38eG3vmd0=kN4zBwoUeZiw4UFYPGg@mail.gmail.com>
 <CAB3asfhKbAcTnc2ibCj49Ssvfm+btZwYvnV7cehbBsaBNRqHcw@mail.gmail.com>
In-Reply-To: 
 <CAB3asfhKbAcTnc2ibCj49Ssvfm+btZwYvnV7cehbBsaBNRqHcw@mail.gmail.com>
Accept-Language: de-CH, en-US
Content-Language: de-CH
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAYP264MB4108:EE_|PARP264MB5213:EE_
x-ms-office365-filtering-correlation-id: 9224db3f-06ed-4391-c630-08dd5a1f98df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|4013099003|4053099003|38070700018|7053199007|13003099007|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?zVWsrGdFn1p8n+516wAftZElVLWuvqGJw8dsqUxKJG40TEZWnwYUm/I7uZ?=
 =?iso-8859-1?Q?QjG+W0vGNvvKKIPf3k5vCum4HrYUOYfw6EfRFGR5CkXgqULMLJ+9e2FoNe?=
 =?iso-8859-1?Q?6X/W0FYLwxwuews1mDc40UpV1rbdk7iEsjPI/6n5PxblD6ZYWlP//6qqY6?=
 =?iso-8859-1?Q?2jjf1YqQw7Hkcm0R1iF2V/hq1Hd7mOhbArmkNqRHmZR4D76U0OP8ovzAvk?=
 =?iso-8859-1?Q?BfzYnLs8nP4JBJAwivcMMLw4JIdpd0LrrY7AVzIx7k8kVUFO8sL23rsjd2?=
 =?iso-8859-1?Q?mxuTppYniqThE6bZjUR//idCUqddwPawcJNZBLsPUIoT+R6eKtIZXamfxs?=
 =?iso-8859-1?Q?YR1KHNXmL1G09DP3c6METYBKf5cS4HVVrOXLUbPlpTWJMMn1+9Y2FwTXFw?=
 =?iso-8859-1?Q?fOSFStgCuzbrpusjJaKfD9v35LJLkKNLzHcINn/FGzSL6CFchkOZE6HE5R?=
 =?iso-8859-1?Q?QG4cwp6WjUjK76NMSGG3Jotrq5eVCW4X2XWsjDIyXgruC7a3sClhzU91Ex?=
 =?iso-8859-1?Q?a+uIbZ99lW65E1DKOko2UO+MeNgmgMxiDuwUSuX3qjZL447VmuCl47ZnsB?=
 =?iso-8859-1?Q?0X2PujpbbM99d99+6vQ64bZUX7PWiiUq05M2fPd7TQlNvbECH6E57jSTfL?=
 =?iso-8859-1?Q?8xfJV7oQ5n39R9Jk/nCswjm94G+Rh+3EevRcnCp7WdvtClEx4I3wVR3BSw?=
 =?iso-8859-1?Q?9hACbDU1akiE9KhQPfODXydfzdLgNNTyOtnFEFU18lb8blFBQ5JdHyeOO5?=
 =?iso-8859-1?Q?K8Kew9InmSkvbbsxUw9wNrltDepV1NuPs6ukWkb6AdjJ9pAyXInUQkbfd9?=
 =?iso-8859-1?Q?sEkkShhLAf37lhvJMD6sAnvhRRq1630wolN+VnfBRsmQKI3RKClqqDf+X1?=
 =?iso-8859-1?Q?HdbkAtNijC1cXmd0wGhQnP0dKOaa4KIMnfRbuHRodKoDoA7zGX2K7/aj81?=
 =?iso-8859-1?Q?Jx7cBW3kjKF2l4Gd4rDvvtx9s/NjD1+uUM7XxUAA/hfCRQ8iCAD46hwhWt?=
 =?iso-8859-1?Q?OplQ4Oop0XZRE78Y5sjUfRi/2drFiCGjzyiU7SPKrMRz8HdOVI9YK1zlCa?=
 =?iso-8859-1?Q?OdSMyFx/NDCEoyRlG30mtUXcDXqewyRyO+qZzVUJWvLpKjkhm252iGxP8d?=
 =?iso-8859-1?Q?sWIV+K+F+VZqrE2BtivMW6sO54aYM7VChR6DgZ8nWcc0FCbiXSmaWGX3os?=
 =?iso-8859-1?Q?3uzlfzRPP+4Zlp3rCQH7kBctE12t5eraCoMEBA+PYfvpgQ8jdCzSIO/BrZ?=
 =?iso-8859-1?Q?+CxxKDWbFiyqnS29PljMzN8GMzFMaXxf8PKqtdrOEYX5+b2VV2vbZ4HXuF?=
 =?iso-8859-1?Q?YG0OdarrAGKLR0wRAouPAaEy5r26JJ9I+BpUBMamISqjb83y+TfE8lJdkT?=
 =?iso-8859-1?Q?NxRFjAVDPzbK2pQNv/Xdr/5TOdKpFNra3wfcP2JLqGOHt2AJrTmO2v7Rch?=
 =?iso-8859-1?Q?mCETezparoao7I+4?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAYP264MB4108.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(4013099003)(4053099003)(38070700018)(7053199007)(13003099007)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9N4KU2eZBCXsi67giVax37//d3cZtHINRGOqLKtxp18Vlfgp6uJ/WPlbjW?=
 =?iso-8859-1?Q?mSvS+3UvCT7WoCXYwmQJiw0ZypToX0x/94VrkmWqjPqIYWrNw76hOui9Ut?=
 =?iso-8859-1?Q?nmmtdN0/aXSCcQnub/3P3nBIDlGOcz0ansxhwqufhHDcvuvDIL1u/6aA0s?=
 =?iso-8859-1?Q?DWOYKwry9WbDlpSufOC8Bf71ewtlN3/Gw5Syy1scPl7GuioP0ZsdMPBXtJ?=
 =?iso-8859-1?Q?d1llVJDBqFdPhdcM2DZwac0Ls87aYgzD1NfGpCdwf1XrjWKY8sYvdJQNLk?=
 =?iso-8859-1?Q?e4/TAEljnDRYWrRQIKvtS1lYwe6i/Y98Sp4eqiDhLzUdvmhR6YZvI1cZZS?=
 =?iso-8859-1?Q?u32CjKK2HUluKnY6W6hONaDaoN2TCa2mYUI/cK4IGf6kivKk5cO8aTl6SE?=
 =?iso-8859-1?Q?Yg+abS5JNyT8i7ujo9kQf8W9DQ46tebC7SIRWzhpjOKyZgzx+kG60kQ8Jw?=
 =?iso-8859-1?Q?MPfXC2YlYXtms10873sfQwlMfsWANAHGV3+uZW2nVx6HfZwNo615jQfPu1?=
 =?iso-8859-1?Q?cOnfHtKD1ETxHKk7LRwYyH7eM/LJQB2ttmNxALN2ShFtasO32J1Xqe5Fha?=
 =?iso-8859-1?Q?ru8dUAGYjDvO4C9oBhGB0oGFvcgAcOxWbHuQPXhCp4IFlaC0kVxIVOEYY/?=
 =?iso-8859-1?Q?liDFtfiih19YqNx9XZr93zqGxrBULGDLj+WG5K0fIfqNMVpNsXKzSji/W2?=
 =?iso-8859-1?Q?MP+nMjHHL5Bboi2bJ3cGkotjtM6g6OvQJNbo8gSWP+ta68zLbWVE+2u69X?=
 =?iso-8859-1?Q?sHppVcOdS3iu/caeAeaY9yn78Ep3oSZMH8qzBbCBPkYtF4AfLW0twFbUAA?=
 =?iso-8859-1?Q?/+yfFU1pT4yADfe8TpH5ukTBnyHm3IVXRkznqxTQ1UFf3a4OQk7CfpvTpo?=
 =?iso-8859-1?Q?qFs3Zcae45Ubc5UgFnZKo8pe36ImZZA2UBFHChQEBM0sL4k33j+iyFIrnt?=
 =?iso-8859-1?Q?QIDHncU441ePROkptilgkl5OsSvveb7W3pKKCGuXzmCsBjjI9ZGfv92/9E?=
 =?iso-8859-1?Q?AKtNfhzG0EgUcepsBJI4qhl6WpnKYxxAOBduL3VLQ7UFcVQXX0BLL9Epu9?=
 =?iso-8859-1?Q?ABFWFICzzv0Y/c56QKyFeP6HaUoCIQgkr92TSOMbLrtlundFnRpZFZ7vOZ?=
 =?iso-8859-1?Q?16K1HLj9NE0a9t949ZNveuHo1ijyxv+BLMGvJINmuggnTruveXOdPACtGe?=
 =?iso-8859-1?Q?rmHEVxW9YPwT5XcZHVjAEO9MjiwCcvOZkCCxgUFTiT7//FeUafxlMb7cSU?=
 =?iso-8859-1?Q?G16I4UfPbQtSgQodP5S1S1CkX4NlyQSwXAX2wkUlQTu8cGoY/o80LjNj21?=
 =?iso-8859-1?Q?2hUpiPUAg3L96w0OtGabZBhErHsqU8o9vL34nDTC6Hzu+HfBBkab5lYWiP?=
 =?iso-8859-1?Q?s6hB7N/4dS8rklp28bM/q/Ah+SxnEBULtcZ2AGf30dDVys0hngMwTIVCPG?=
 =?iso-8859-1?Q?I3h8uaw7Uo0OTXUkU0tvdBfQ9Z7YxGa+YfIARIbeu6uI+VJVr9WbcTYpwA?=
 =?iso-8859-1?Q?z7UQj3iq6GCmvhCyiyql0ZahKYLI/nj0Wfap9kfF1hSAKGXef9T1gaYwWE?=
 =?iso-8859-1?Q?+zs72FeaeZDalimKtErrT7Lr19eGnYM+SXgSKhzYx86qPej+KE1quAO+6V?=
 =?iso-8859-1?Q?ACZaJlI/ZJZDTTlRHcfpP6wHc56yzJ2RWj6XDVZiijbLamJFR9IJJPtg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/related;
	boundary="_005_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_";
	type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 06:50:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64906

--_005_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_
Content-Type: multipart/alternative;
	boundary="_000_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_"

--_000_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Classified as: {OPEN}

Thank you both for your comments!

I'll try to use both methods, but I think the direct approach might not be =
feasible for us, as our build is done by a server in a docker container (pi=
pelined build) for official releases. Therefor the shard SDK is a must have=
 for other departments and we don't want to force everyone to have a bitbak=
e environment.

On the other hand a direct IDE integration sounds very nice, so most probab=
ly we will stick with this approach.

Cheers,

Thilo Cestonaro

Embedded Software Engineer

Avionics / Training & Simulation / Switzerland

Thales

M: +41 (0) 79 536 56 48


Thales Simulation & Training AG
Stauffacherstrasse 65

3014 Bern

Switzerland

[cid:afa49161-3a70-47ed-be98-268fd9210125]

Find Thales on social media and at www.thalesgroup.com<https://www.thalesgr=
oup.com/>




{OPEN}

________________________________
Von: Adrian Freihofer <adrian.freihofer@gmail.com>
Gesendet: Samstag, 1. M=E4rz 2025 15:13
An: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; alex.kanav=
in@gmail.com <alex.kanavin@gmail.com>
Cc: CESTONARO Thilo <thilo.cestonaro@thalesgroup.com>
Betreff: Re: [yocto] SDK and what goes into it

Hi Thilo

If you like to get one more layer of abstraction to what Alex already sugge=
sted, there is also the devtool ide-sdk tool which can bootstrap the SDK fo=
r you. If it gets called with --mode=3Dshared it does exactly what Alex sug=
gests. If it gets called without this option it defaults to "modified mode"=
 which goes beyond what the shared mode does. The basic idea is to offer al=
l the advantages you can get with devtool modify, devtool build but with th=
e speed, convenience and IDE integration which you can get when sourcing th=
e tool-chain environment file from an eSDK. It also allows developing your =
code completely independently from devtool and bitbake. The related documen=
tation is here: https://docs.yoctoproject.org/dev/dev-manual/devtool.html#d=
evtool-ide-sdk-configures-ides-and-bootstraps-sdks.

So in general I think, a static SDK installer does not scale in many ways. =
The issue with missing bits which you are describing here is just one such =
example. Solving this at the root probably means sticking to the bitbake en=
vironment which does not have such kinds of issues and limitations by desig=
n. We are already at the point where the approach shared by Alex or using d=
evtool ide-sdk is on parity with using the environment created by the eSDK =
installer.

Replicating a bitbake environment with access to a shared sstate cache is s=
till a bit harder than just installing an executable installer. But it's co=
vered by the documentation as well and this is getting simpler with each re=
lease. One of the challenges is that there are many different ways a bitbak=
e environment can be set up.

Regards,
Adrian

Am Mi., 19. Feb. 2025 um 11:08 Uhr schrieb Alexander Kanavin via lists.yoct=
oproject.org<http://lists.yoctoproject.org> <alex.kanavin=3Dgmail.com@lists=
.yoctoproject.org<mailto:gmail.com@lists.yoctoproject.org>>:
If I remember right, SDK construction doesn't use DEPENDS or RDEPENDS at al=
l. Rather it takes the list of packages installed into an image, constructs=
 a tree of their dependencies (which is not the same as RDEPENDS), adds -de=
v to everything in that list, and then that is what gets installed into the=
 SDK.

I generally recommend to not bother with standalone SDKs, and set up a SDK =
environment directly in the bitbake environment. Much more flexible and eas=
ier to maintain:
https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-ext=
ensible-sdk

Alex

On Wed, 19 Feb 2025 at 10:51, Thilo C. via lists.yoctoproject.org<http://li=
sts.yoctoproject.org> <thilo.cestonaro=3Dthalesgroup.com@lists.yoctoproject=
.org<mailto:thalesgroup.com@lists.yoctoproject.org>> wrote:

Classified as: {OPEN}

Hi!

I'm currently struggling to get a specific paket into the SDK of our image.

The situation is as follows.
We have a "library" which is generated code and header only. The code is ge=
nerated via a python module which is obviously a dependency of this library=
 but with the native part.

As this library is header only, it does not appear in the rootfs, of course=
.

Now the SDK does not include the headers of this library and the python mod=
ule which is used for generating the code is not part of the SDK too.

As I want to be able to build the headers only library via SDK, we need the=
 python module in the sdk.
As I want to be able to build the app, which needs the headers only library=
, via SDK, we need the headers of this library in the sdk.

I added the library recipe to the DEPENDS of the app. I added the native pa=
rt of the python module to the DEPENDS of the library and RDEPEND:${PN}-dev=
 onto the nativesdk part of the python module in the libarry.
But nothing brings the wished result except adding TOOLCHAIN_HOST_TASK +=3D=
 nativesdk-......

Is this really the only way to get the python module and the library into t=
he SDK or am I doing something completely wrong?!

How does yocto determine via DEPENDS and RDEPENDS, what is going into the S=
DK and what not?


Cheers,
Thilo


Thilo Cestonaro

Embedded Software Engineer

Avionics / Training & Simulation / Switzerland

Thales

M: +41 (0) 79 536 56 48


Thales Simulation & Training AG
Stauffacherstrasse 65

3014 Bern

Switzerland

[cid:ii_1951daa08b9f3ed25341]

Find Thales on social media and at www.thalesgroup.com<https://www.thalesgr=
oup.com/>




{OPEN}




-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#64842): https://lists.yoctoproject.org/g/yocto/message/=
64842
Mute This Topic: https://lists.yoctoproject.org/mt/111266978/4454582
Group Owner: yocto+owner@lists.yoctoproject.org<mailto:yocto%2Bowner@lists.=
yoctoproject.org>
Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [adrian.freihofer=
@gmail.com<mailto:adrian.freihofer@gmail.com>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--_000_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_
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
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
Classified as: {OPEN}<br>
</p>
<br>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Thank you both for your comments!<br>
<br>
I'll try to use both methods, but I think the direct approach might not be =
feasible for us, as our build is done by a server in a docker container (pi=
pelined build) for official releases. Therefor the shard SDK is a must have=
 for other departments and we don't
 want to force everyone to have a bitbake environment.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
On the other hand a direct IDE integration sounds very nice, so most probab=
ly we will stick with this approach.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Cheers,</div>
<div id=3D"Signature" style=3D"color: inherit;">
<table id=3D"table_0" cellspacing=3D"0" cellpadding=3D"0" style=3D"margin-l=
eft: 0pt; box-sizing: border-box; border-collapse: collapse; border-spacing=
: 0px;">
<tbody>
<tr>
<td colspan=3D"2" style=3D"padding: 3pt 0pt 1.5pt; width: 360pt; height: 28=
.3647px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(36, 42, 117);"><b>Thilo Cestonaro</b>=
</span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 0.75pt 0pt; width: 360pt; height: 24.37=
13px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);"><b>Embedded Software=
 Engineer</b></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 0.75pt 0pt 7.5pt; width: 360pt; height:=
 56.9409px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">Avionics / Training =
&amp; Simulation / Switzerland</span></p>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);"><b>Thales</b></span>=
</p>
</td>
</tr>
<tr>
<td style=3D"border-top: 2.25pt solid rgb(0, 187, 221); padding: 7.5pt 0pt =
3.75pt; width: 360pt; height: 38.5536px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">M: +41 (0) 79 536 56=
 48</span></p>
</td>
<td style=3D"border-top: 2.25pt solid rgb(0, 187, 221); padding: 7.5pt 0pt =
3.75pt; width: 360pt; height: 38.5536px; box-sizing: border-box;">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 3.75pt 0pt 7.5pt; width: 360pt; height:=
 105.696px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">Thales Simulation &a=
mp; Training AG<br>
Stauffacherstrasse 65</span></p>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">3014 Bern</span></p>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 121, 121);">Switzerland</span></=
p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border-top: 2.25pt solid rgb(0, 187, 221); paddi=
ng: 11.25pt 0pt 3pt; width: 360pt; height: 61.8301px; box-sizing: border-bo=
x;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 10pt; color: rgb(121, 118, 118);"><img width=3D"160" h=
eight=3D"36" style=3D"width: 160px; height: 36px; max-width: 100%; margin-t=
op: 0px; margin-bottom: 0px;" data-outlook-trace=3D"F:1|T:1" src=3D"cid:afa=
49161-3a70-47ed-be98-268fd9210125"></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding: 5.25pt 0pt; width: 360pt; height: 36.36=
41px; box-sizing: border-box;">
<p style=3D"margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-famil=
y: Arial; font-size: 9pt; color: rgb(121, 118, 118);"><b>Find Thales on soc=
ial media and at
</b></span><span style=3D"font-family: Arial; font-size: 9pt; color: rgb(5,=
 99, 193);"><u><a href=3D"https://www.thalesgroup.com/" id=3D"OWAaed721a5-a=
f15-1942-72da-ff3e31aff492" class=3D"OWAAutoLink" title=3D"https://www.thal=
esgroup.com/" style=3D"color: rgb(5, 99, 193); margin-top: 0px; margin-bott=
om: 0px;">www.thalesgroup.com</a></u></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin-top: 0pt; margin-bottom: 0pt; font-family: Aptos, Aptos_=
EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-siz=
e: 11pt; color: rgb(0, 0, 0);">
<span style=3D"font-family: Arial; font-size: 9pt; color: rgb(5, 99, 193);"=
><u><br>
</u></span></p>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
</div>
<div id=3D"appendonsend"></div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Center">
{OPEN}<br>
</p>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> Adrian Freihofer &lt;a=
drian.freihofer@gmail.com&gt;<br>
<b>Gesendet:</b> Samstag, 1. M=E4rz 2025 15:13<br>
<b>An:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; alex.kanavin@gmail.com &lt;alex.kanavin@gmail.com&gt;<br>
<b>Cc:</b> CESTONARO Thilo &lt;thilo.cestonaro@thalesgroup.com&gt;<br>
<b>Betreff:</b> Re: [yocto] SDK and what goes into it</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>Hi Thilo</div>
<div><br>
</div>
<div>If you like to get one more layer of abstraction to what Alex already =
suggested, there is also the devtool ide-sdk tool which can bootstrap the S=
DK for you. If it gets called with --mode=3Dshared it does exactly what Ale=
x suggests. If it gets called without
 this option it defaults to &quot;modified mode&quot; which goes beyond wha=
t the shared mode does. The basic idea is to offer all the advantages you c=
an get with devtool modify, devtool build but with the speed, convenience a=
nd IDE integration which you can get when
 sourcing the tool-chain environment file from an eSDK. It also allows deve=
loping your code completely independently from devtool and bitbake. The rel=
ated documentation is here:
<a href=3D"https://docs.yoctoproject.org/dev/dev-manual/devtool.html#devtoo=
l-ide-sdk-configures-ides-and-bootstraps-sdks">
https://docs.yoctoproject.org/dev/dev-manual/devtool.html#devtool-ide-sdk-c=
onfigures-ides-and-bootstraps-sdks</a>.</div>
<div><br>
</div>
<div>So in general I think, a static SDK installer does not scale in many w=
ays. The issue with missing bits which you are describing here is just one =
such example. Solving this at the root probably means sticking to the bitba=
ke environment which does not have
 such kinds of issues and limitations by design. We are already at the poin=
t where the approach shared by Alex or using devtool ide-sdk is on parity w=
ith using the environment created by the eSDK installer.</div>
<div><br>
</div>
<div>Replicating a bitbake environment with access to a shared sstate cache=
 is still a bit harder than just installing an executable installer. But it=
's covered by the documentation as well and this is getting simpler with ea=
ch release. One of the challenges
 is that there are many different ways a bitbake environment can be set up.=
</div>
<div><br>
</div>
<div>Regards,</div>
<div>Adrian</div>
</div>
<br>
<div class=3D"x_gmail_quote x_gmail_quote_container">
<div dir=3D"ltr" class=3D"x_gmail_attr">Am Mi., 19. Feb. 2025 um 11:08&nbsp=
;Uhr schrieb Alexander Kanavin via
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;al=
ex.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@=
lists.yoctoproject.org</a>&gt;:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div>If I remember right, SDK construction doesn't use DEPENDS or RDEPENDS =
at all. Rather it takes the list of packages installed into an image, const=
ructs a tree of their dependencies (which is not the same as RDEPENDS), add=
s -dev to everything in that list,
 and then that is what gets installed into the SDK.</div>
<div><br>
</div>
<div>I generally recommend to not bother with standalone SDKs, and set up a=
 SDK environment directly in the bitbake environment. Much more flexible an=
d easier to maintain:</div>
<div><a href=3D"https://docs.yoctoproject.org/sdk-manual/extensible.html#in=
stalling-the-extensible-sdk" target=3D"_blank">https://docs.yoctoproject.or=
g/sdk-manual/extensible.html#installing-the-extensible-sdk</a></div>
<div><br>
</div>
<div>Alex<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, 19 Feb 2025 at 10:51, Thilo=
 C. via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;thilo.cestonaro=3D<a href=3D"mailto:thalesgr=
oup.com@lists.yoctoproject.org" target=3D"_blank">thalesgroup.com@lists.yoc=
toproject.org</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<p align=3D"Left" style=3D"font-family:Calibri; font-size:10pt; color:rgb(0=
,0,0); margin:5pt; font-style:normal; font-weight:normal; text-decoration:n=
one">
Classified as: {OPEN}<br>
</p>
<br>
<div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Hi!<br>
<br>
I'm currently struggling to get a specific paket into the SDK of our image.=
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
The situation is as follows.<br>
We have a &quot;library&quot; which is generated code and header only. The =
code is generated via a python module&nbsp;which is obviously a dependency =
of this library but with the native part.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
As this library is header only, it does not appear in the rootfs, of course=
.<br>
<br>
Now the SDK does not include the headers of this library and the python mod=
ule&nbsp;which is used for generating the code is not part of the SDK too.<=
/div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
As I want to be able to build the headers only library via SDK, we need the=
 python module in the sdk.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
As I want to be able to build the app, which needs the headers only library=
, via SDK, we need the headers of this library in the sdk.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
I added the library recipe to the DEPENDS of the app. I added the native pa=
rt of the python module to the DEPENDS of the library and RDEPEND:${PN}-dev=
 onto the nativesdk part of the python module in the libarry.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
But nothing brings the wished result except adding TOOLCHAIN_HOST_TASK +=3D=
 nativesdk-......<br>
<br>
Is this really the only way to get the python module and the library into t=
he SDK or am I doing something completely wrong?!</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
How does yocto determine via DEPENDS and RDEPENDS, what is going into the S=
DK and what not?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Cheers,<br>
Thilo</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_m_-3848107271422238409m_5522453245194460664Signature" style=3D=
"color:inherit">
<table id=3D"x_m_-3848107271422238409m_5522453245194460664table_0" cellspac=
ing=3D"0" cellpadding=3D"0" style=3D"margin-left:0pt; box-sizing:border-box=
; border-collapse:collapse; border-spacing:0px">
<tbody>
<tr>
<td colspan=3D"2" style=3D"padding:3pt 0pt 1.5pt; width:360pt; height:28.36=
47px; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(36,42,117)"><b>Thilo Cestonaro</b></span></=
p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0.75pt 0pt; width:360pt; height:24.3713p=
x; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)"><b>Embedded Software Engineer=
</b></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0.75pt 0pt 7.5pt; width:360pt; height:56=
.9409px; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)">Avionics / Training &amp; Sim=
ulation / Switzerland</span></p>
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)"><b>Thales</b></span></p>
</td>
</tr>
<tr>
<td style=3D"border-top:2.25pt solid rgb(0,187,221); padding:7.5pt 0pt 3.75=
pt; width:360pt; height:38.5536px; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)">M: +41 (0) 79 536 56 48</span=
></p>
</td>
<td style=3D"border-top:2.25pt solid rgb(0,187,221); padding:7.5pt 0pt 3.75=
pt; width:360pt; height:38.5536px; box-sizing:border-box">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:3.75pt 0pt 7.5pt; width:360pt; height:10=
5.696px; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)">Thales Simulation &amp; Train=
ing AG<br>
Stauffacherstrasse 65</span></p>
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)">3014 Bern</span></p>
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,121,121)">Switzerland</span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"border-top:2.25pt solid rgb(0,187,221); padding:=
11.25pt 0pt 3pt; width:360pt; height:61.8301px; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:10pt; color:rgb(121,118,118)"><img width=3D"160" height=3D"=
36" style=3D"width:160px; height:36px; max-width:100%; margin-top:0px; marg=
in-bottom:0px" data-outlook-trace=3D"F:1|T:1" src=3D"cid:ii_1951daa08b9f3ed=
25341"></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:5.25pt 0pt; width:360pt; height:36.3641p=
x; box-sizing:border-box">
<p style=3D"margin-top:0pt; margin-bottom:0pt"><span style=3D"font-family:A=
rial; font-size:9pt; color:rgb(121,118,118)"><b>Find Thales on social media=
 and at
</b></span><span style=3D"font-family:Arial; font-size:9pt; color:rgb(5,99,=
193)"><u><a href=3D"https://www.thalesgroup.com/" title=3D"https://www.thal=
esgroup.com/" target=3D"_blank" style=3D"color:rgb(5,99,193); margin-top:0p=
x; margin-bottom:0px">www.thalesgroup.com</a></u></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin-top:0pt; margin-bottom:0pt; font-family:Aptos,Aptos_Embe=
ddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:11pt; =
color:rgb(0,0,0)">
<span style=3D"font-family:Arial; font-size:9pt; color:rgb(5,99,193)"><u><b=
r>
</u></span></p>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
</div>
</div>
<br>
<p align=3D"Center" style=3D"font-family:Calibri; font-size:10pt; color:rgb=
(0,0,0); margin:5pt; font-style:normal; font-weight:normal; text-decoration=
:none">
{OPEN}<br>
</p>
</div>
<br>
<br>
<br>
</div>
</blockquote>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64842): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64842" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/64842</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111266978/445=
4582" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/mt/111266978/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:adrian.=
freihofer@gmail.com" target=3D"_blank">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_--

--_005_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_
Content-Type: image/png; name="Outlook-gqchuj5j.png"
Content-Description: Outlook-gqchuj5j.png
Content-Disposition: inline; filename="Outlook-gqchuj5j.png"; size=3351;
	creation-date="Sat, 01 Mar 2025 14:14:12 GMT";
	modification-date="Mon, 03 Mar 2025 06:43:43 GMT"
Content-ID: <ii_1951daa08b9f3ed25341>
Content-Transfer-Encoding: base64

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

--_005_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_
Content-Type: image/png; name="Outlook-c5zw03zj.png"
Content-Description: Outlook-c5zw03zj.png
Content-Disposition: inline; filename="Outlook-c5zw03zj.png"; size=3351;
	creation-date="Mon, 03 Mar 2025 06:49:50 GMT";
	modification-date="Mon, 03 Mar 2025 06:49:50 GMT"
Content-ID: <afa49161-3a70-47ed-be98-268fd9210125>
Content-Transfer-Encoding: base64

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

--_005_PAYP264MB4108AEA680840BB2B0500E7DE9C92PAYP264MB4108FRAP_--

