Return-Path: <sebastien.fabre@actia.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F6C5CDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 12:59:28 +0000 (UTC)
Received: from FRA01-PR2-obe.outbound.protection.outlook.com (FRA01-PR2-obe.outbound.protection.outlook.com [40.107.12.77])
 by mx.groups.io with SMTP id smtpd.web11.53722.1697806759772681807
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 05:59:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@actia.fr header.s=selector1 header.b=ai6ax3jQ;
 spf=pass (domain: actia.fr, ip: 40.107.12.77, mailfrom: sebastien.fabre@actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFYUFaJ2BwvVWIm+YrvZY8mUI9flGZP8v7iLkzKcd0fLsM05LomriXZ61aAiIq9xyFysC/NWmt9TE2WPCLeH1hSl94o0zl/pQ7Agm8pH/Mj0brnevpLjIr4ySzk+FakoFanRajsLyjKvnB277wxoD3lKY2/kfbXR2OrgcTE6hKWYeM6L81l85IPUrAK3tfdJeFkdEwUlDw/ajJVeEtR0lcVLnU2ZzfanQj2iN9EOiK/2XaE0pDHGLhKZqZ3y0Zz6w+WtlaIaCsCR3KZoSGv7JrELS/3COQsfbS5DMEDzThylHdbzapkAG2l68xaScWOh7Un/AElysipljYp40FkClA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LKaQJAmAM0YfVrRe7uPJ1NA6Ck1z4O3QL78hxbUNPUk=;
 b=UbYwHTdef0Uh8KS4D2CkmuA5XGqeBtZz7YbS7p7sv8OxRl/qsxuPrncRNZPLA/y2KfNix2aGuQnJfgT9us1Z11/lu+fbNu7FACtJOmazwLl1IdejBBlodlKZTbRhnH8zlIaRGmbWPvWOhLk3x8ZiBBXarabeQ4nhXgwlnufLXGUMlv3dY0G2cnQd67/+QYfQVycX7E3Bv6THh3I74mRR3cZGF/nI1+wLWaBw2Lziwieni6hz2tb67HwX5AVWMhpb8ETm7x6fEEY9R2vF6VE6gNBUvrmczMTFeAF9z7xAdEJFrIALUWDNbwOV5yM63JpuzFJ+29ZlTCfaWp+36hmK2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=actia.fr; dmarc=pass action=none header.from=actia.fr;
 dkim=pass header.d=actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=actia.fr; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LKaQJAmAM0YfVrRe7uPJ1NA6Ck1z4O3QL78hxbUNPUk=;
 b=ai6ax3jQqXgvtVJY0Cq/1rAhXhhhdbybbtp8ZBKvAYsaSfj+CeFMJh0qleS2+IyRT3YnVT+BT4rI7gHYDWES7EbPa4R50p3cByeQiAIG9SyiMOKENzuhIqRvYREw0rBsCFGuh9G+wnkNMXDfQi+L2gIuaHkSn/COT4js31Cu7I4=
Received: from PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1e0::12)
 by PR0P264MB1738.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:16a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.23; Fri, 20 Oct
 2023 12:59:16 +0000
Received: from PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM
 ([fe80::b7b7:d6d8:52ba:d79c]) by PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM
 ([fe80::b7b7:d6d8:52ba:d79c%6]) with mapi id 15.20.6933.010; Fri, 20 Oct 2023
 12:59:16 +0000
From: Sebastien FABRE <sebastien.fabre@actia.fr>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: volatile-binds overlays with selinux
Thread-Topic: volatile-binds overlays with selinux
Thread-Index: AdoDVTrNOg825iLyS+iBpYYvOBVdaw==
Date: Fri, 20 Oct 2023 12:59:16 +0000
Message-ID: 
 <PR0P264MB23092DE9A359DF5B49F97DCB92DBA@PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=actia.fr;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB2309:EE_|PR0P264MB1738:EE_
x-ms-office365-filtering-correlation-id: 1072c18f-8be4-496f-6d44-08dbd16c5dd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tHLGNfKo/g1hkz0AA4IBaup3XoVFNwN4ihe1cSxnit1ASYXgIXoEOWWtNwhTF25aTzHIogfWDzOe0mnOACa5Au/m6UiL75ZnHFk3nNW++8v/kQgjk8Gig+H72Kqkw79oTW7McR1LnefIhEa83H6zb1Amp+ZZgzEjkp2X5SwKiVe6PF3Aq7ZbDdib0JWWj28NtjpyaO1UUaFfQe94vCMcC05MRhqpU9r7kEy2K/gBDcQD1w5HSu7MC7ahYIpLEKQ+q31eGF0nJ0omo6V2OaboLwSdcaENK1gbuPiJc5RXgNS5q11Q2MFWnNz/8dlrmshcFb3KyxxYrPCcch+BC5DYCjwBe+ntv7et66t7oA34WCwkX106bbTC2NBPbGly5qm/BzEz4S8KCytyOtRc4Ca7WNmdfUQtmT8e2a4hFgcHsUavYYcZmGaq+ti/xqvX5f5B9rmCfyQbORynR2pPgpq6voIkX3oBl5saBfx9HthUlYmeJc8ytPvRgrwmawswiq+gldXuj8QFVuw7WisFDvELBRykubOki1/K0c+Z6ImBoYR0GUvHDBFe5hFUt9tzJ+HE7aoXTlu/5I77FL0Z8SWLxS5rd0hRrj5R3QnpbZs/5JQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(366004)(39860400002)(136003)(376002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(3480700007)(55016003)(52536014)(38070700009)(5660300002)(8676002)(76116006)(64756008)(66946007)(478600001)(66556008)(66446008)(966005)(2906002)(6916009)(8936002)(66476007)(6506007)(71200400001)(41300700001)(7696005)(86362001)(9686003)(38100700002)(316002)(26005)(122000001)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?4ewmLE9fQ/sIq+q6T1ksJJ/7wjUq0eSr3xWurEMTD9sNVHK66U8Gb76AypDU?=
 =?us-ascii?Q?+zoweP3kXda8XyGUmtSXfqCVlOuhwD9wONYq2Kxr6wiaO/WOq6RMgD7uqm14?=
 =?us-ascii?Q?gAJManM0PTzyofip7d44FE1kJCoOt3gLPohXW+foLRCz8ZEJl5i8GbXRuq/7?=
 =?us-ascii?Q?LCWnJuz4AmV0BC4lYBbj+2Ua67kjChMP6gS2lkGdPL+ZRmPeI6oObhwdu2nT?=
 =?us-ascii?Q?zDW6igCZM6FXf4IEWEerGJVO2UwqfVgFK+oF4QA4vMRo5+sMuPRbHDN3eJmm?=
 =?us-ascii?Q?zahWuK3jWuEYxpW+uXLJkz52iQsGrEzvHkOvAJfKbD88w37593rAFEcKWow8?=
 =?us-ascii?Q?+0OjGPZVyAob89HYqBGd0PM9aW2/RjstC2OhhfbRkT2Pkfw/xhRazV+hhGsz?=
 =?us-ascii?Q?kQsR3WMl08UFeiyD14vPc8uDBmjLacb9F+2vGP0oxfd12GUpev61pP8pNQnL?=
 =?us-ascii?Q?cmNhx64u0P5YJNYBARzLxxoOjbb/vj0ArE0Ef32jVcOLxRzMLar1yCfy4D5h?=
 =?us-ascii?Q?QUgHkmRtNylzgvTzHjyF76Ve5c25VR8AaEE4x1/KiCrFQU4nTqGsTo9620aB?=
 =?us-ascii?Q?IazGcE+KI3WwvN8Y6YdLEvbhXPK0FyAmi+uy9Ckkt4E5UoGmQyx5slMujxBt?=
 =?us-ascii?Q?sXxiDNOUO0rut4KwQQg3SMiDIgxT1KsCueEaMS83X36tFspLBdsBRHO9DOBW?=
 =?us-ascii?Q?R2RkehAkT6obBrORAXrw2LNBe6bHexyQ4O3lpM813GGUALw626sVShVtgG5R?=
 =?us-ascii?Q?Sar/2y+noNt40aMgFzug4crHNSgYj5xJmQpcSo3HLsznwUZd0X3JTi93sB5F?=
 =?us-ascii?Q?5dP8Q1kH2BvsMI9EHmEL5aLVR7Ab17e3tDa+ttMRSI8UgpsTub6Tdu//gb7U?=
 =?us-ascii?Q?LVoo0VmxzVAaMQByGxfgkySaZK78YDIcs+6+wVDQRZdLFE8a00ZDB4sUiXhP?=
 =?us-ascii?Q?1PueSrJ87qeeU7l1CIBPsppNZMmzvulGAXJr7tbrxW9nteWTNcpUk4652Qa4?=
 =?us-ascii?Q?Get7DWykp9LfYZ+zuxu9i6IbS+cjs5UlzMshuLfZ1GINlAE6uJA7BAXXlfBd?=
 =?us-ascii?Q?vuVGy8ouizY6hvwvtMU2WWQw/8DQwli6Dh6dc2C+7gdXwDX8lu/bMS7Siybr?=
 =?us-ascii?Q?KCxl7bMWXFXlpDsohtCZxhk9FZeoy8mFSRU2Pskyl3sXRCgPUizIa+QaSod5?=
 =?us-ascii?Q?10Fb7UgWBDVXX+i9snJGnYcrddGpVQ1aDqhSwOYLFFtXfQJ1npGfow/qoSOh?=
 =?us-ascii?Q?2+69Aap09NdINB2d6E87gPj4f9QFccW0J1G5x/CcjfCW6SRY+Q9sAdpSi9PO?=
 =?us-ascii?Q?sTJ16qjlc30+wlMjJvB/rAlmwicItv0dYs0fo2NK3XZcr2eXDTJ+vN5HZ2mT?=
 =?us-ascii?Q?eZ0Q9iEWd8X+WJuiDWb1GItsU8lTDlc1xZ+o7A/BLD5twJEM54sSakrqFeVE?=
 =?us-ascii?Q?AFfXuZKYQgAcAjn4vyRgZMTk70OKEXl6/ojWqa4+81pwnkQniGIdgGuH57lD?=
 =?us-ascii?Q?qtPFwceELFQ0JH6CEz97fXObzvdNgBnF40yyKOGHVysJ+4sn2stI+fUaa7Qs?=
 =?us-ascii?Q?T6esHHOlc9OnfyonIO8uJNt3vJWF84Zh0fy40Ugc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: actia.fr
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB2309.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1072c18f-8be4-496f-6d44-08dbd16c5dd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 12:59:16.3795
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QR/Vrpz3zzbykqUSENZR2nEZImRoeOXHGPYUUyjZzkZ/COmi72FRWi2QlSRW2t5P4aycQGXTdE26azRRlHliFRl+AJJnBBc53nHFwyZ6ZEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB1738
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 12:59:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61432

Hello,

I am trying to use selinux (refpolicy-targeted) in read-only root filesyste=
m with kirkstone. Volatile-binds recipe create overlays, but we have multip=
le selinux denied logs (even with allow_mount_anyfile boolean set to on).
Most of them are because scontext is "system_u:system_r:mount_t:s0". In the=
 following example, it should be systemd_tmpfiles_t:
audit[240]: AVC avc:  denied  { relabelfrom } for  pid=3D240 comm=3D"system=
d-tmpfile" name=3D"dbus" dev=3D"tmpfs" ino=3D31 scontext=3Dsystem_u:system_=
r:mount_t:s0 tcontext=3Dsystem_u:object_r:system_dbusd_var_lib_t:s0 tclass=
=3Ddir permissive=3D1

"rootcontext" mount option (added by https://github.com/yoctoproject/poky/c=
ommit/e325390b91da7d3b43e78ad840a9fe5cd14a9ab7) seems to not have impact.

If volatile-binds variable "AVOID_OVERLAYFS" is equal to 1 (bind is used in=
stead of overlay), we do not have these errors.
In read-write rootfs, we seem to have the same behavior with overlays (scon=
text equal to mount_t).

I see that some options have been added in the mount-copybind script for se=
linux support, but I got denials. What is missing to not have these denied =
logs?

Best regards,
Sebastien

