Return-Path: <oliver.westermann@cognex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A804C02182
	for <webhook@archiver.kernel.org>; Thu, 23 Jan 2025 08:01:49 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.124])
 by mx.groups.io with SMTP id smtpd.web11.6587.1737619304787946401
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2025 00:01:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognex.com header.s=selector1 header.b=oKXywU78;
 spf=pass (domain: cognex.com, ip: 40.107.243.124, mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FrHRY7nScSP9/LI7hOa/hkF4c7e9khfhQHazgZPoCDSfNUytNwemoK9WSx39V1bAixZW/q+pQXGU7mBd9Tvw5S8fHHz6oaT2JpSR5y4b69bOp45Jm8Rpl8WeOmeriLfakA6ILQ9EN3sfeJbXTv9W8zTM3rvAzUaTNH5nRfVooawcbL5mOGD/uypSR4Wn4+jnk7faLtnczkJoCGIxkFfweM7Wvo+0rWbh9mWnIoQoVuvWlLSOulMlF7WdNQfS5Z6vrXb9MKnOqN9rVC0zKtlgYsisiayiaY/deFEMeTIOAoOYQa9rAzAKTpA0t0xtxBVWy841+DHBXN2FAxia9ujIYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BasnMiCygaPuXm+6wrpu5UA7j7oA6mi7gjct82PekZ4=;
 b=Xoj7e13IdTUNkr7RzeNwh0FslYjhWyunRWWeWnoSGL9e1XqreoIl15hXiMDUO/thCe0kY4YcoTtwzXQSuUe0KMoR9Fu6870TfN3fLKOv5YtOmMNdWUJOs4ZqkzYQ0wXnpU+ZY5jTtSC5hPvwqZBDTs0oNv9ksZkG3mU2XJr4FKrE1Rlj1WrDL6MF7Cpi/Q4BI0xjI3MeE2rASO+/ZmU7IAyxgyjuliB2Uiw338bDosl69Du48HA633Nh00zSJXX1fIjFo/m+mG54XC9He5QRnktSUqKc12NSz6Zu64PuuLmTTr0lHBxaSUJNQf1DcA10B3i6USOekvOefbD3LYCsAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cognex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BasnMiCygaPuXm+6wrpu5UA7j7oA6mi7gjct82PekZ4=;
 b=oKXywU78dRRO2FFq2xN57X3Ol/KPbFnUYk+BKen4QX+aW8R6ibA7Nygf/RJYb9ggk68RiyMu/TvB+Gl1IZB2Z3nBwpGQDgPc9inMaiuyLB+FMdJi6upXUVngA41NCPwYAzVcNEB9xI2GDRvS9gOeG7y86O3AgDtmo8cCo90S9glNGnAtU4VSXd3v/16a/MCELijOLd/x/H7E99bsCHNko6nFIZcapNNp+V+BBJJZc0A1YwX4dy9Qzyk50nrvFs8z6mll2jmY+QAWmVC8srwugCsAFtPk7mnRBOuzktRH9aWH0dazM0cpeS8Uauj63cirFE5JU50vPPFJXcXskYI0uQ==
Received: from PH0PR06MB8334.namprd06.prod.outlook.com (2603:10b6:510:bd::7)
 by LV8PR06MB9352.namprd06.prod.outlook.com (2603:10b6:408:18e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 08:01:42 +0000
Received: from PH0PR06MB8334.namprd06.prod.outlook.com
 ([fe80::7:e620:17f2:48d7]) by PH0PR06MB8334.namprd06.prod.outlook.com
 ([fe80::7:e620:17f2:48d7%3]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 08:01:41 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Correct implementation of packaging for bootstrap packages
Thread-Topic: Correct implementation of packaging for bootstrap packages
Thread-Index: AQHbbWrFpZC6x6qESUyJ1G+cVaAI9Q==
Date: Thu, 23 Jan 2025 08:01:41 +0000
Message-ID: 
 <PH0PR06MB8334DE2E662CE8FB9FEB387686E02@PH0PR06MB8334.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Enabled=True;MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_SiteId=c12007a4-882b-4381-b05a-b783431570c7;MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_SetDate=2025-01-23T08:01:41.386Z;MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Name=Cognex
 -
 General;MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_ContentBits=0;MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cognex.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR06MB8334:EE_|LV8PR06MB9352:EE_
x-ms-office365-filtering-correlation-id: 84b9f966-95e6-480c-b87f-08dd3b842c08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?mIeLRh+B7Cv6qWhA1aWUBvSGB6rnwN09T05+voOXRP+cr/Ch/wffCVjl2t?=
 =?iso-8859-1?Q?gwvGsad8z+PgysT2m77WcMriljPkqSc2zU9OYf924xnQnSxIQO3Qx4F2Iw?=
 =?iso-8859-1?Q?OPyXNYaeNNwGogu2RKk0gg5Knt+XR+WCmK8UmTnKSmqPOzcqjciFYCyttC?=
 =?iso-8859-1?Q?CRzUDW84Q64f0/lcxgOELb259xTnbjraaw28KX1WCcceJNbhtJgr8DzxzI?=
 =?iso-8859-1?Q?TE5GCF/JUNYC+cyuCt4bTt1G6YWRiTWk63lgzywi+OwzlExsx1pSyhiV2/?=
 =?iso-8859-1?Q?Ye0l4BZJc84zeQ3MVgSKduDqZTSjL7VbjHQ+BSCmiAUbwY3HL6iPGn8Abe?=
 =?iso-8859-1?Q?8P9w/uwGrV8/JBaC6z7lJVZ8DLn4iv7SAqM1db9wAM+tCYTsrIEZWRxumu?=
 =?iso-8859-1?Q?XRIaspCl9E9u7TtsVyAC1GMKlUBvVOuic/XymUad/Z/awZsuH1lGFVL2n9?=
 =?iso-8859-1?Q?LH8s8d0FGbzcpKQs4bYCl7SJ86M18+t4vAOkgYJKHVkcVXUYV9QCuc8SIl?=
 =?iso-8859-1?Q?VkKt6poQbT3HbfmhZYoHaMlhlqWP2LIw3y+/I+jSeTxrCr9Aq5HC3MMFxx?=
 =?iso-8859-1?Q?OXvO4AaL1lEPmfjXq7qLiyeLqI/WAuBWSyLhLuO5VY5y245qUOQkFmpMH8?=
 =?iso-8859-1?Q?/1Crha0+b8iurBHyzgcC/LuQoQYGC7ba2BubVKKD3i8kkQ015KVwDeXI4K?=
 =?iso-8859-1?Q?i1sT0Tkn24oK/LYXyeQc4YAkKISNehZmtlqqFhj0NEgqWqcK2Qz8oQJFuc?=
 =?iso-8859-1?Q?m3QbWMuU2VO4SXSjwQjhAGb0JOEXnedkVPkD8kaF6ycy0i7D4N1LC2Chlz?=
 =?iso-8859-1?Q?cYDlV5OS5ZqXxme9vV+7j6IEPESTEY8JEl1Qa0W4radiS3M11qRflRxdxl?=
 =?iso-8859-1?Q?D9x/1YpblXCWzF8FR8CQJxZx6t08hrOAtO1RVpWIYnDkDxzAYiaapyzOyU?=
 =?iso-8859-1?Q?9uJ6gqoX41VA4rGog/sctd7I9WhTtZSE/A8SMvx9Oahf5GRFJehrVSzGfZ?=
 =?iso-8859-1?Q?DFN1oksqmcZ/umUGPl+JwtPRjMtixTZJxqLs+0KdfS1M6X0q4/H9dque3W?=
 =?iso-8859-1?Q?df9AsDV6D1D3n+vqrc/GJdOBq5IqhELdariWuqD8xSF0McKtFDQhNYx/G8?=
 =?iso-8859-1?Q?uhDyMiOJH7g3nFjUIvypaKx9alRSMOSFUZ+GpEFqCso5qEK1rM0PCl7uBQ?=
 =?iso-8859-1?Q?BOtGUxlgp/tRMmNDoY2uAC8rdE3oi7HGadQ32gb+lKOaTrHv17tdKOcy6f?=
 =?iso-8859-1?Q?nZdz7riZp/iGWERAWK7hjeaDvSi5ZLHXGWKBKE26dZ5V0wX+OrRQePfiyd?=
 =?iso-8859-1?Q?vtCoqJ7Ft/on0r1mRtIblt+PHG1iBcK8a+ExaCitxUv08XE/QUxgxtHeL6?=
 =?iso-8859-1?Q?Yd6j87mbkpHxFzC/PPS9yNiijQLuVrKyq4CyFhk96vsaRxHDdtbesleJPs?=
 =?iso-8859-1?Q?f2PZswd0wLpYb6XbT5fEzv/v/JmwGmjOeWQPAhI4vtawe68yvMzi7t331F?=
 =?iso-8859-1?Q?8a3748eUx9/CcHMwaNPy8K?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR06MB8334.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9v1L93X9Q3aQuXcukfJFb7S5NJza+15AlNYabHA5hUMJKqVydIvwXlxtrW?=
 =?iso-8859-1?Q?xyZMXbF9EWJn9kO22MMDOjs+VWCCiiwcAH3fERNMddWcCDvN74dDUVVcEu?=
 =?iso-8859-1?Q?xHKIo/bb+JVrKe2SKmC42zfJPHIv1E1J/9+/eFsr66LJgdQYoh5VTcNVDG?=
 =?iso-8859-1?Q?rf4oU1Zb6sJ9LR+x6HREJewDhT22pueWTRtPEnlGf7A2sFSEktcr1rxc5/?=
 =?iso-8859-1?Q?0fo1KcR9RQzCmHlI13wpk7iuxvYEBBPcZVYc+BjQqxRU9Nl5rAH5ic64nR?=
 =?iso-8859-1?Q?jc1T3ALVGlDcoAU2Z1/oDsQz+1yn2u2jwCReXmbK2AGvIszn39lEVfnwyC?=
 =?iso-8859-1?Q?v7+9qLmm9yAaTdekDAAlnUi7fxHypKzcwsEQ0HmMyrWuGyr94ETYBpfRR7?=
 =?iso-8859-1?Q?4X4UPJbi6hzyVxXTl20ERNC2R9tquePeTeAaC9uk5iI+OCDLi/DKG7t0nF?=
 =?iso-8859-1?Q?HCHTTJZeoKDd7f8SamnW9XEZuzC9EsIiISC/Q1Iwjlna9xgmFxoSQajWWR?=
 =?iso-8859-1?Q?UpbCKIzuykhQJGn/Pr/vsMkyrJ7QXxKJd0jL1N4S9nKw77qML2H/5M26rD?=
 =?iso-8859-1?Q?5V1dygYTGKRSS/8b+PUWjxN0QNgQDJg/IXdNXIreeWaxSYci+Zybi5WQ1c?=
 =?iso-8859-1?Q?+B286yCm3pUM1pzDS4vMrwI8jsXDk12C9fUyG9KmAR7ys+JxKmbkes4iRD?=
 =?iso-8859-1?Q?uJ7lTUZW/GP95L/0a5k3+W2cn/LP/pd3BsPpRhCX6RdPUmj8uWd87ar8Mw?=
 =?iso-8859-1?Q?muzznGq4jfaYtiZ2SLuYP4Af2G8+jbF7XgVZfaB0zi+vQIgEyVcRnD/ZR+?=
 =?iso-8859-1?Q?fM6exfeUFJYmQH3XhIS6P9P5ruDhXCzmNHXZdX4to+u9xz/qh3mtOyGiHK?=
 =?iso-8859-1?Q?JiH2pvZBaGtztOIrwGxpkGxppg76MlVOM0fCGGKqWNsumGmAg6pP6024Zm?=
 =?iso-8859-1?Q?DAsYtpwn7Df0AJaxm83llhdNscIKRrVmN1V1+rmFltyWJzZddqj9LpCIK+?=
 =?iso-8859-1?Q?2DG0rAUSP4IdlddQwLRDkuYmQU1vJlnWLbHtJxNs5pKE9FbgyJAwoAuQlC?=
 =?iso-8859-1?Q?dBTRG5LrFO+juLa2Z5ACtpdcyR7IpVeJSWYBSfiA3bvo1LIYJWC5Jtya0h?=
 =?iso-8859-1?Q?dRZ9CYrWTpb5odfnVfrkuf5xPggsGLe7DuJg0jVajdzeSGCvH3w/M84RXO?=
 =?iso-8859-1?Q?7z52YPXQzhipeqq4zIvahEBL5JSxMbPIMzzqxX63hiBcstDPZm+Z9Ze8rz?=
 =?iso-8859-1?Q?CN02HNnDOVFCRgVISJEwgNDpilOistOYyZ5yKjwMVAi3sv4fZCkLfMqAL9?=
 =?iso-8859-1?Q?iCSRSkBisG/AC2CXRM/mx8zI/tCePgyEll3yQurek98aeOjf0MGHhHRg9b?=
 =?iso-8859-1?Q?k+SPCgiDXKKLKDwTd8CUUgzeAzamMTtTw+QX++7iqIYcRxRZeJOoHiS9CJ?=
 =?iso-8859-1?Q?HmGZdAjf0U6VpWDXNpNtwzfB8kjISEpTqFyOsP2KYMi2/wi8L/mUMWehiV?=
 =?iso-8859-1?Q?8jkxxuBB96igBb0K9d5cyEBixchQlHzhe66/BPYgcd4UhdjudtsUvrFK6a?=
 =?iso-8859-1?Q?0B56ZHb0CWDArxCP/bSXIHlC6Hhg6TIFKoNHRzIsyIlIMejm5dCioO9fki?=
 =?iso-8859-1?Q?Uq/8sZw74T6rRpfoAIwv/0B3Q+97INEDyKPEXgikcwGKoNIT4v/6fd4g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR06MB8334.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84b9f966-95e6-480c-b87f-08dd3b842c08
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2025 08:01:41.6707
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i8ADD6e6sAosZI72nbt1sZz20yrp/Zwj5Ux7l9/vASVGYciCU2wr0ABD9g1QqDXWLLcWaoqY0uh3JYleAT0qRSY5v+nbfDGiJSllcz2AcuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR06MB9352
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2025 08:01:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64614

Hey,=0A=
=0A=
When we're building a full software setup for a certain embedded architectu=
re to completly setup a device, that contains various components which are =
collected in some "post-rootfs-packaging"=0A=
=0A=
* A rootfs=0A=
* Kernel=0A=
* Bootloaders=0A=
* Firmware=0A=
* potentially setup components not ending up on the final device state (ini=
tramfs for USB bootstrap for example)=0A=
* tooling for USB/flasher/etc (eg ADB)=0A=
=0A=
Those to bootstrap a device (e.g. via USB/flasher/...), something therefore=
 collects the output of various recipes, both images (rootfs) and non-image=
s (bootloader files, firmware, ...) and packages them in a custom way. Ofte=
n this includs additional tooling, like flashing tools or install scripting=
. Working with various SoC vendors, I've seen various setups, and I'm not s=
ure if there is any guidance on whats correct=0A=
=0A=
* Some vendors have external tooling. This tooling expects the right files =
in the right place (eg. deploy dir) to bootstrap a device=0A=
* Some vendors integrate this into yocto, having a custom recipe that depen=
ds on recipes and packages the output=0A=
* Some meta-layers for OTA update do something similar, inherit the image t=
ype, but disable most image tasks and don't actually build an "image" (e.g.=
 swupdate)=0A=
* Some vendors implement custom image types=0A=
=0A=
When trying to support multiple SoC/BSP vendors, this sometimes leads to co=
nflicts and questions, but I was unable to find some references to this in =
the yocto documentation. A custom image type feels most integrated into yoc=
to, but I've seen some "hacks" in there that make me question if this is in=
tended? Is there anything like a reference implementation for "post-rootfs-=
packaging"?=0A=
=0A=
Best regards, Olli=

