Received: from APC01-PU1-obe.outbound.protection.outlook.com (APC01-PU1-obe.outbound.protection.outlook.com [40.107.132.127])
 by mx.groups.io with SMTP id smtpd.web11.10818.1599648704364858649
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 03:51:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microsoft.com header.s=selector2 header.b=i5OckVJc;
 spf=pass (domain: microsoft.com, ip: 40.107.132.127, mailfrom: paul.eggleton@microsoft.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E3/GxO4UhZ3NIOKB9rW7gp3HKdTHOATgSh0nITxA6F9qb4VHkAcWdcCx6fZcQwXz2OxW8F1RdO6ab9Ih14nwGwoKSels7w0vU+gUn3L7Y+QADIv/BGi79dB4FoO5R5lhAkmaDfIezcuxjIjktcG2bBJziSVO6s+u+UlxkMKAMXvTH9/vKae9M1A/EcXDPhIwOIhMRaU1nVcKrgt6dVttMLF4nY6SwhNLyrr0WhUkgGR3W3ZtruF3R/lIO5CyrkVcp8m1g9RNHkh8LzCfX3c2msd6/I0Tla4vNt5F5w6n1RtHSGOZW4g5JXnUiYReLrzndQq/2j4d4jr/WBO+kHeEeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mf390YVL/S6fbt5t6t+VXhH5leo+ScR/pyv3R5qu0ec=;
 b=FjBK8exqOVpvW7HkvykmKOj8jOjAygkEdR7cJGYZTj/0y6RQVbt0QTPFkHwRz3KBqARHW6GKZvwC1G0KmGDEBu+lOLw8d+MTIxAj2clLZFpac+ua5S/rNW3mAZ0aJkiMLFJLTEdKkoUCG0eNHFIH1FsG+ptYSK1C1VoJNlka6QmDY9IyyfWZ74a5FNNdyX6QjC3EFSznTOwjeJHvGRehA7Ob0IeZGwm+lyvItfBScRnhx7fQ/ukIs9vqgodIA81TXn6BHK3U7i1INfUpeMuUX5GKpv/J4IIqdIGzRSxhIKkv1EMe6Q6/xyR9mGF79Z4v/atKB6IZPMAnDY1dJhC1Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mf390YVL/S6fbt5t6t+VXhH5leo+ScR/pyv3R5qu0ec=;
 b=i5OckVJc/l/w4TK9VpOIzLaDSt+qDbSpgOO3rPquM3P4qwMXW2MWiyWUMeFWpA9KQYiHzsL/3A3GewMSe0SPdSHqfZS1hbORcKYVPb7ICEMR4BbPGeIYtMEzjHU8KfIDvnIvvm74wz6kZPfnTNfyZakYJz2JsCbLKW0C+DeFq68=
Received: from KU1P153MB0101.APCP153.PROD.OUTLOOK.COM (2603:1096:802:1a::10)
 by KL1P15301MB0248.APCP153.PROD.OUTLOOK.COM (2603:1096:820:8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.3; Wed, 9 Sep
 2020 10:51:39 +0000
Received: from KU1P153MB0101.APCP153.PROD.OUTLOOK.COM
 ([fe80::598a:5fb2:dfb7:13f6]) by KU1P153MB0101.APCP153.PROD.OUTLOOK.COM
 ([fe80::598a:5fb2:dfb7:13f6%3]) with mapi id 15.20.3370.012; Wed, 9 Sep 2020
 10:51:39 +0000
From: "Paul Eggleton" <paul.eggleton@microsoft.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Nicolas Dechesne <nicolas.dechesne@linaro.org>, "Richard Purdie
 (richard.purdie@linuxfoundation.org)" <richard.purdie@linuxfoundation.org>
Subject: Outreachy internship project - license tracing enhancement
Thread-Topic: Outreachy internship project - license tracing enhancement
Thread-Index: AdaFk/x6wr4lazs9SGGDGukuMNG6yw==
Date: Wed, 9 Sep 2020 10:51:39 +0000
Message-ID: 
 <KU1P153MB0101B0B12FE45FCAA37F173BFE260@KU1P153MB0101.APCP153.PROD.OUTLOOK.COM>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=microsoft.com;
x-originating-ip: [2406:e003:13a8:9001:6476:b37d:eca8:63e5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9ff29a3d-3ddd-4a38-eb36-08d854ae54d3
x-ms-traffictypediagnostic: KL1P15301MB0248:
x-microsoft-antispam-prvs: 
 <KL1P15301MB0248424B544A8C391C2CD2E4FE260@KL1P15301MB0248.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Dq0EwKNehapMuMiDjYBIYKegBDsDrtghrQk6DwR/kL8JOLI8fTnd97LLQtBY3XLdcnTKpnYTqh9MAMqgpmzZQksq7duhd4u5ZlZuzYAqLR0J6Ph7aErwvYpDWnpAQXlkj8MzaSvKZ0mySwc93eEycx7jNum6+f281clhpjBVB6TJUaddIhJNY1sRJ6644UHyB33AVGUrBvTgFjwKqdAZIooM02apBAnMR5w6OjPumn+/yxiF8V+Ki67w4m49egirPsaNNcmMYr5hsa5wh5QjUtTjr+kU0St0ud+gCV8OGEx/cd16qXpZO3eA0ZYu5P2VZtH+edrUfKoRd+uOZ24z8Z+gbsaUB57OmGnasz7+z2XqnJJKD5dLnDMdTYqjR+f7fMWLb+pKgM03bhcVqMe5RMoS7BZdXFFhRxe5ZZu7103QCdQtHF12RGma4MBCvNEUlg4ayVymqQGlwvtFVMFJeQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KU1P153MB0101.APCP153.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(33656002)(66446008)(66556008)(64756008)(66476007)(66946007)(5660300002)(6916009)(8676002)(478600001)(186003)(76116006)(316002)(8990500004)(54906003)(7696005)(86362001)(6506007)(2906002)(83380400001)(9686003)(55016002)(82950400001)(82960400001)(4326008)(71200400001)(8936002)(966005)(52536014)(10290500003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 cBPQdQqudKgQwE88dx6xHV07wYbRUD9NqbBjgD5dzM6vSQAdmRe7E0bEgJSwI5YXTp4Ur8YsUcZHFF65nUvtBWUyqyNuOHGAi7UYVNt2ybmg3tk+3BI9hLWmBx8gQPWBJ3F7ObS/fwUQeWvqW41nscq1ujeDEPTt58qXy8uBIfZbyV67n44AwD12xE+2MUggybwEUJR1/CP/2MGmf8cQGET/c561FMlVkk2dM7Y//hyW86c/3dFZByCZ/MaNHJrP/C6eqUhBU6oeSx4m5dqgaIlmkMq7WStpfv8fqJ+V5BYFbePG23A4iviMH40hZAtqo2Qn1FuIzcIXNgLeRwlCVQ272YPseAMFLQzKN+vMwZDIeEVKuG2PHRHyQvh9rGvHI4KaU0+AbhoynQkki+53qn79fEtozWQ8mFNdR9wrVkXYiROYIZydnfLmUzgooQQjAjhmEBgQcZfmk5zCJ1SwoIpsiwyKD0sdt/Z625IMPJ0aBV/cK9fi9gXb7awrvkHKUmDCYPxBwHs4FPMyBXX7gZc0WlyaiXLe4wYzFuqIAS8Xn9IAOK8XlAsB3HfX5aPL8PKsGA6SwBsleU+8kdj6oobvQIUyKc9pUE6RkUp/0Ym+JWBRe7Z+AaKCgKJWiFaFTToIfWH9gP6jtHcJEhrrHg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KU1P153MB0101.APCP153.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff29a3d-3ddd-4a38-eb36-08d854ae54d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2020 10:51:39.4623
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HzyqYS04bPjQcNQ32m02jPqHk6VKwkU50HkwJ4mS/B+bu7PB3ZtWnbSip7xzT7GmCb78bg8GfLKmBwmJCspL6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1P15301MB0248
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi folks

I'd like to propose we put forward the following project proposal for an Ou=
treachy internship (https://www.outreachy.org/communities/cfp/). I'm prepar=
ed to be the mentor for the project and Microsoft will provide funding. (No=
te that we haven't got our community re-registered with Outreachy or set th=
is up as an intern project proposal yet - deadline for YP community registr=
ation is September 17th and for project submissions is September 24th). Her=
e's the brief:

-------------
Yocto Project License tracing enhancement
=A0
The Yocto Project build system is typically used to build customised Linux =
images from source for embedded applications. Along with the image, a manif=
est of packages and their corresponding licenses is prepared, however the a=
ccuracy of the license information is dependent on the accuracy of the meta=
data we have for each package (i.e. what is in the recipe file). As part of=
 the build, we have an internal mapping from output files to source files w=
hich is currently used to prepare source packages to aid in debugging, howe=
ver with the presence of SPDX headers in source files it could also be used=
 to allow tracing the license of sources used in building a package/image t=
o help improve our metadata and future license manifests. A proof-of concep=
t implementation of this has been put together [1] - during this internship=
 a successful intern will:
1) take the proof-of-concept implementation and get it to a state where it =
can be merged into the poky repository
2) use the functionality to examine the accuracy of our license tagging (LI=
CENSE fields in recipes); look for errors / noise in the comparison, and pr=
oduce a simple report with the results
3) run a check over sources in a world build looking for percentage coverag=
e of SPDX headers, and run it for several past releases to see the change o=
ver time
=A0
Bonus: assess the current state of meta-spdx-scanner; investigate what it w=
ould take to produce SPDX documents from build output (would likely require=
 integration with Fossology).

[1] http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Drpurdie=
/license-experiments-osls
-------------

I'm making the assumption that we're OK with merging the PoC functionality =
in rather than just keeping it separate and using it for analysis - let me =
know if otherwise. What I'd really like to know is do people think that thi=
s is sufficient for a 3-month internship, assuming that the intern has limi=
ted to moderate familiarity with our codebase? Do we need to flesh it out f=
urther? Any modifications that you'd suggest to the work?

Thanks
Paul
