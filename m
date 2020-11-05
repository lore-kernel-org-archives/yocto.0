Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.335.1604600215823636421
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Nov 2020 10:16:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=QF1Ugwyf;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1604600215; x=1762280215;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=R4dhoGz8Cogwbrch7tRFOuVH8GOpKioMR0qo8cEvplY=;
  b=QF1Ugwyfdtrz7iul9yeC+B05vOaGeVol6oK4Faa9JuHW7uhxly3XJsaj
   5l7fjiMENWJZZ+QFQjtk12ZnfWSBx+OAK/Aic3CyzsqpPuepCGrdeTUoW
   lmCU/SsrffllmhlWlBIKWQ9ygSxccmacwtdsKbp4H21xizlZt0/JiqdKG
   8=;
IronPort-PHdr: =?us-ascii?q?9a23=3ArSBTZRUpeEpy7utZigPSkbmvXc7V8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYZRWGuKdThVPEFb/W9+hDw7KP9fy5BipZucnK6ShYOLV3FDY9wf?=
 =?us-ascii?q?0MmAIhBMPXQWbaF9XNKxIAIcJZSVV+9Gu6O0UGUOz3ZlnVv2HgpWVKQka3OgV6?=
 =?us-ascii?q?PPn6FZDPhMqrye+y54fTYwJVjzahfL9+Nhq7oRjTu8UMnIduNqQ8xhTUrndUZe?=
 =?us-ascii?q?hd2H9lK0+Ukxvg/Mm74YRt8z5Xu/Iv9s5AVbv1cqElRrFGDzooLn446tTzuRbM?=
 =?us-ascii?q?UQWA6H0cUn4LkhVTGAjK8Av6XpbqvSTksOd2xTSXMtf3TbAwXjSi8rtrRRr1gy?=
 =?us-ascii?q?oJKzI17GfagdFrgalFvByuuQBww4/MYIGUKvV+eL/dfcgHTmZFR8pdSjBNDp+5?=
 =?us-ascii?q?Y4YJEuEPP/tXr5PlqlUOsxWwGBWsCu3sxD9GhHD23LE13esuHgzdwAwgBtAOvG?=
 =?us-ascii?q?jIoNnpKqsfV/2+wqnSzTXEavNbwTnx5o/PchAnuvGDQ6x/cdHJxUIyCg3Fkkuf?=
 =?us-ascii?q?qZL7MDOTy+8ArXWQ4+5uWuyyjmIrpRx6rz+0xscwlIbJmJwaylbe+SV8x4Y1I8?=
 =?us-ascii?q?a4R1Blbt6/C5ZfrDuVOJVtQsIiWGFopDg1yrgduZKhYCcKz5EnygfZZveafIeG?=
 =?us-ascii?q?/gjtW/yNITdkmn1lYrS/ig6v/EW+zuDyWce53VlFoydZkNTBtn8D2gDP58WbSv?=
 =?us-ascii?q?Vw8ESs1DWN2g7d9O1JIU86mbbUJpMi3LI9mYYfvETDEyL1nkj9kaGYdkIh+uey?=
 =?us-ascii?q?6uTnZK3rp5+bN4BolgH+Nbwumta4AeQ6LAcBQ3Sb9f671L358k30RqhBgP4ukq?=
 =?us-ascii?q?TBrZzWOd4Xq6C7DgNPz4ou7xiyAy2n3dkZhXULMU5JdAiIgoXmIV3DJOr0APS9?=
 =?us-ascii?q?jlmqjTxl3erJPqf7DZXINnXDlbDhcqtj5ENE0wozyMxf54pTCrEcPPL/Qk/xu8?=
 =?us-ascii?q?LcDh8+KwG0xebnCNNn2YMbQmKCAa+UPL/OvVOV/O4vJfODaJUOtznnNfcl/P7v?=
 =?us-ascii?q?jWQlmVADeKmpxoEbZ2y/HvRjO0mZYHzsjckdEWoSowYyUPbmhVOAXDJJenq/W6?=
 =?us-ascii?q?wx6is6BY+nFYvDQ5qigL2F3Ce1BJ1WYWVGB0iXEXf0aYqERekDaCSILs9klTwE?=
 =?us-ascii?q?U6OhRJE/2hG1rwL10KBoIfTP+iwYrpLjyMZ65+jIlR0o6TN0CMGd33mXT25ohm?=
 =?us-ascii?q?MIWyM23KdnrE19zVeMzbR4g/tDGNxX5vNJSRs6NYXGw+16DND9Rh7BftCRSFa8?=
 =?us-ascii?q?RdWmAy8+Qc4tw9MUZEZ9Adqi3Vj/2H+JA7IQ34aCBtRg6KvemXvxKsNVxHPP1a?=
 =?us-ascii?q?1nhF4jFI8Hf3yhjbJ43wzSHJLS1VSenLqtbb4b3iPG6CGE12XE9BVJVwVsVo3B?=
 =?us-ascii?q?XGsDfQ3Hqt/l4VvYSL2jAqhhNRFOn52sMKxPP5fMilNdSfr4fJzlf2+vlmH4Ll?=
 =?us-ascii?q?7I+4jNJsK+YHkQwijbTk0DlRse8G2uPwEzHTa6v2/bF3plEle5MBCkyvV3tH7u?=
 =?us-ascii?q?Fhx89AqNdUA0kuPtohM=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BzAwCOQKRf/0LBJQpigliEUAqwFIFoC?=
 =?us-ascii?q?wEBAQEBAQEBAQgBLwQBAYRKAoIPJjcGDhIBAQYCAQEBBgQBhl2CNykBgxEBAQU?=
 =?us-ascii?q?6RAcEAgEIEQQBAQEeCQcyFAkIAQEEARIItw+BNIVXhGoJAZBFPoQjPoQJARIBh?=
 =?us-ascii?q?he4JQcDgm2bACuEQp0rk02gRAIEAgQFAhWBaoELcHCECRcCDZxodE8JjTeBEQE?=
 =?us-ascii?q?B?=
X-IPAS-Result: =?us-ascii?q?A2BzAwCOQKRf/0LBJQpigliEUAqwFIFoCwEBAQEBAQEBAQg?=
 =?us-ascii?q?BLwQBAYRKAoIPJjcGDhIBAQYCAQEBBgQBhl2CNykBgxEBAQU6RAcEAgEIEQQBA?=
 =?us-ascii?q?QEeCQcyFAkIAQEEARIItw+BNIVXhGoJAZBFPoQjPoQJARIBhhe4JQcDgm2bACu?=
 =?us-ascii?q?EQp0rk02gRAIEAgQFAhWBaoELcHCECRcCDZxodE8JjTeBEQEB?=
X-IronPort-AV: E=Sophos;i="5.77,454,1596499200"; 
   d="scan'208";a="323901766"
X-IronPort-AV: E=Sophos;i="5.77,454,1596499200"; 
   d="scan'208";a="230363084"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto overriding a task in a recipe
Thread-Topic: [yocto] #yocto overriding a task in a recipe
Thread-Index: AdazbDgVLjGNiuR5Sj6hwBOxOFBjdQAV3p+AAAphmyA=
Date: Thu, 5 Nov 2020 17:36:50 +0000
In-Reply-To: <a51177de-9356-86a5-307b-6adabc0d1c85@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1644AF659A89D377.30315@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Thanks... that's what I saw this morning...

-----Original Message-----
From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On=
 Behalf Of Khem Raj
Sent: Thursday, November 05, 2020 12:34 PM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>; yocto@lists.yoc=
toproject.org
Subject: Re: [yocto] #yocto overriding a task in a recipe

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.



On 11/5/20 4:13 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote=
:
> If a recipe has a task "do_something() {...stuff...}", and for some reaso=
n=20
> I do not want that task to execute its steps, but a different series=20
> of steps, can I over-ride the task from a .bbapend by supplying the=20
> same routine with different steps ("do_something() {...new stuff...}") ?
>=20

it depends, if the task is having appends etc. they will still be applied. =
but main task you can override.

> Thanks,
>=20
> Steve
>=20
>=20
>=20
>=20
>=20
