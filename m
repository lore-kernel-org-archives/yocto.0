Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09CD2EB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 14:12:46 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.67])
 by mx.groups.io with SMTP id smtpd.web11.9273.1688047962436726391
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 07:12:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=0eX+skV5;
 spf=pass (domain: arm.com, ip: 40.107.21.67, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FL7xQoSMHqHahWS6WIgx8bElIrlplYvN6O7PU+YT09Q=;
 b=0eX+skV5SOcLBlsSccWuuRC1x4qvj6IW9q/KrLkVHk0KTXf0LXqu6dET+Po6r0in4pYSyPrVq+Ssxp1ZtmcFJBYUxRzUuvbGwyO3RtmZ+bANl27SDywT2Sj7k+ENGCEDPOpVbZCwSWSDz67V7XwIz01PCBS2JNMe4QKw7lPeH4o=
Received: from DU2PR04CA0178.eurprd04.prod.outlook.com (2603:10a6:10:2b0::33)
 by DBBPR08MB6058.eurprd08.prod.outlook.com (2603:10a6:10:201::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.26; Thu, 29 Jun
 2023 14:12:38 +0000
Received: from DBAEUR03FT061.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2b0:cafe::64) by DU2PR04CA0178.outlook.office365.com
 (2603:10a6:10:2b0::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.22 via Frontend
 Transport; Thu, 29 Jun 2023 14:12:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT061.mail.protection.outlook.com (100.127.143.28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6544.20 via Frontend Transport; Thu, 29 Jun 2023 14:12:38 +0000
Received: ("Tessian outbound 52217515e112:v142"); Thu, 29 Jun 2023 14:12:38 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ec8ba74daecb8256
X-CR-MTA-TID: 64aa7808
Received: from 74ee84d103b1.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1EDEE210-A328-41A2-AD5A-6D1B826A27CD.1;
	Thu, 29 Jun 2023 14:12:31 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 74ee84d103b1.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 29 Jun 2023 14:12:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OlamrbYU67dBcN5BTtM1KOkZXym2Ux3oyIJ1X1zc5Q/RA+XyMUijRJPsF0rEsVUTgoUIuFOzXmz76xTtQVLoxxrb/yTXEn7+IUInR8pGw/S1KA1KpIPYGY9Eq9jpXbgSnW5qeoQlUrMhieaUkXpXOfKn71SNzhck6VXlsDe5Ra4J/NUQR4oqxaZibf+RNPE+LA4ZiK8QvoOcatN28nLA2Lov21WIuox2/MCUKx6MOiGBHcRyiapGEDR4aJe8DRbBG8Tq/FehBuq7g8vrTRA6gJO6Jap54MDoO8nrecZZ7YPCnyRldeLMPWqCmQ7M9DyXX1jGODFi7wef9xSopl+RjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FL7xQoSMHqHahWS6WIgx8bElIrlplYvN6O7PU+YT09Q=;
 b=T+lAx8M4gVjXQ+ZTvi1iC3oYOCLB7em01KULGX78++baHhLDWvVxDHQi0mAvUSBQy5iXHvOwFer1k0MAgciYr8UxQmkA4qdjh9gtJPROTj/j7lapNtvcDmX8CiTzgECceLez5I4KZG8oIoIynXl8LCsbEUIzQ7S8uAB2ls+sM1X2GePN4O3K9XpFPViHvs2qC+NLXw/rOhM14ByI92BO0TgboDR8B327KfOweDxqI5OjCUySl4icPKC/xbNhelYYLcwM7F9Hb1nSgbcGfUR11AwFKIGha8FjbzG6Tv0vJnvQIVLJOzXC7E491S4Tp8dM7GKNI0HXz2prJatXDZtu6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FL7xQoSMHqHahWS6WIgx8bElIrlplYvN6O7PU+YT09Q=;
 b=0eX+skV5SOcLBlsSccWuuRC1x4qvj6IW9q/KrLkVHk0KTXf0LXqu6dET+Po6r0in4pYSyPrVq+Ssxp1ZtmcFJBYUxRzUuvbGwyO3RtmZ+bANl27SDywT2Sj7k+ENGCEDPOpVbZCwSWSDz67V7XwIz01PCBS2JNMe4QKw7lPeH4o=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB7915.eurprd08.prod.outlook.com (2603:10a6:150:8d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 29 Jun
 2023 14:12:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%7]) with mapi id 15.20.6521.024; Thu, 29 Jun 2023
 14:12:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mikko.rapeli@linaro.org" <mikko.rapeli@linaro.org>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>, Armin Kuster
	<akuster808@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
Thread-Topic: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
Thread-Index: AQHZqb/2ixHQ6m6eYEKFyDpnmT3pRK+gbOmAgAEtSYCAADm5gA==
Date: Thu, 29 Jun 2023 14:12:28 +0000
Message-ID: <AD723E49-D126-4E22-BAA9-40709AE7B317@arm.com>
References: <20230628125609.1327477-1-akuster808@gmail.com>
 <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
 <ZJ1g1eUyuI28nSbY@nuoska>
In-Reply-To: <ZJ1g1eUyuI28nSbY@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB7915:EE_|DBAEUR03FT061:EE_|DBBPR08MB6058:EE_
X-MS-Office365-Filtering-Correlation-Id: 40434508-ad69-4d3d-b0a4-08db78aae50e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 2NX0Vf2LKjkWaXaBtn8dd7nX9wYQGlUtpjmz+tmaHX3zptGFRxOL6aBsr5rTIOkPn+ginTHUZjE9YHiWqOs0X/DvK45UDIHGfo+UgTW8FW9i9LAcZjCOWWHSQl6bNbzjW45+R/7zRWjCfA5H3JDoVtn9hsGQot6421MHUDAwICIy50/gicgnYlQeJWw7vuFK6DZZTp/t5pNCGuH1FgMZ6PnLLg5/LVdBjFAo9LtgkecVG5FhgrohVhkqHuMv9vzfgAllvWX3Ru1ycNXC48za+OwW6Kq/Zq5KJI+7IaodI5ld37pCM/82kqqCB5kohtE31+wB7oCwG1rrx97Q7hFtncruXn7C/S/EvqUat2NFkD+bdqsrHzk8mNknKviBg2j5j7cBEo8eIYjCnH2qr+cn8TVClg+Qglfyek2uGwVVC2/M082sar7XQogVayewPpidxs6OVGRwNSiUxXn9aG2J+YNkMJGEjCJT+6QZPB5A1TiaYrBpkydK6O0fui3oOZ3R+HbPM5eZwYx9uy5a2ICbXIuIbACOxHScaHEdz6zIM5fm1FYBR54FdGVxz1zYkVxiMRX2CP03C9tGTPY5Mm477TKkSNV/O2NSyLinaxHVeV//H/SjuHcJF3ppEsxmlMEtTt8pxDYwBQ3kaVvuugbAjVPJ4B5K082ws3fto+Egsm6O48Q7qeJicjGQEapEKgaLxEP4+Q0h/sMuvKpWdKHGoQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(366004)(346002)(396003)(136003)(451199021)(53546011)(6486002)(2906002)(71200400001)(83380400001)(38100700002)(2616005)(122000001)(26005)(6506007)(6512007)(186003)(41300700001)(86362001)(54906003)(4326008)(38070700005)(5660300002)(478600001)(33656002)(66946007)(76116006)(66556008)(66476007)(66446008)(6916009)(64756008)(8676002)(8936002)(91956017)(36756003)(316002)(15650500001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <634E11AA014CCD43BAC5C52656AEF250@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7915
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	db6b7adc-2c67-4c2c-b56d-08db78aadef7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7vMP4b9rbqtuGzsRRaU1S1cAUeKWujyRNTTkERjvAJkjCHL9uqM5sB/589lGBMm45gMoyizXnYoPoI1zk7d8/uY5V09mzemOYYa4DavYS2ATr6cd0u4Xp3gZwn0zhJtOs5YSIgBwngEEBP7y+x5XHiKU6q1a+iUqxnWWvW3q3ADj1lQBwSAMW4lfu+BLED4fFVYlxQm5+yq2VIA+BuSQ5CYIDwbe6QMl9PApcQldkWz2LBGAtnGT0YTdSssP8ClpswAtDGd/G7/JIvvQ69E9AhALKIC5DIJA6a5VKg+bBZ2ucuAPFy7CkeTFbXqIa/fCr3Sj1OIqm06PJ9prg+Pc12SUUUDhy3UftaW91Em2vCuTu2+bDsAJHc78ymo42hkUvelg4FuXVRTV6wVxx0sz5uZ4lBiwrLyj3ePmcTnJRL/jRUTE6Q5mUTyvqK8JZVdd4PuYXpu93LjaGtA7Hxjjhiqk2J3FDX9aoTPe4z6S0eBWm5IVM24pwLcY8+FqIi0V0cvVZN0IRG8FdTwig4OOnqYiL1M/EKP2T31hN/aVziXhgqc/pl698PUKSgtDmyOITnSix+xVbqxUtj+mdIc/nx/I5om4xW/zzunkyf4xZ1TF/UnCvlFrJfFIH1llqggJJld3Hqq82Xt0brkL7F23KoTu9+wtEzNIMR35ecwXPjWW88+E/mgtW+ET0X15mUAXJQj6qMyUym19pV782cTjEb0TFgbHw2twTJu93U5DWeM2buZtl+BpOql1KzAdMIid
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(396003)(346002)(39860400002)(451199021)(46966006)(36840700001)(40470700004)(316002)(8676002)(70586007)(70206006)(6512007)(6506007)(186003)(4326008)(336012)(53546011)(26005)(8936002)(6486002)(54906003)(41300700001)(40460700003)(82310400005)(5660300002)(6862004)(2906002)(15650500001)(40480700001)(2616005)(478600001)(356005)(81166007)(82740400003)(33656002)(86362001)(36860700001)(36756003)(47076005)(83380400001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2023 14:12:38.5463
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 40434508-ad69-4d3d-b0a4-08db78aae50e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6058
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 14:12:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60476

On 29 Jun 2023, at 12:45, Mikko Rapeli via lists.yoctoproject.org <mikko.ra=
peli=3Dlinaro.org@lists.yoctoproject.org> wrote:
> On Wed, Jun 28, 2023 at 05:47:21PM +0100, Richard Purdie wrote:
>> On Wed, 2023-06-28 at 08:56 -0400, Armin Kuster wrote:
>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>>> ---
>>> conf/layer.conf | 3 +++
>>> 1 file changed, 3 insertions(+)
>>>=20
>>> diff --git a/conf/layer.conf b/conf/layer.conf
>>> index 334a945..5f289cb 100644
>>> --- a/conf/layer.conf
>>> +++ b/conf/layer.conf
>>> @@ -28,4 +28,7 @@ INHERIT +=3D "sanity-meta-security"
>>>=20
>>> QB_KERNEL_CMDLINE_APPEND =3D " ${@bb.utils.contains('DISTRO_FEATURES', =
'apparmor', 'apparmor=3D1 security=3Dapparmor', '', d)}"
>>>=20
>>> +# We need more mem to run many apps in this layer
>>> +QB_MEM=3D"-m 2048"
>>> +
>>> addpylib ${LAYERDIR}/lib oeqa
>>=20
>> Putting that unconditionally in a layer.conf is a pretty poor thing to
>> do for usability IMO as it effectively forces that decision on anyone
>> including the layer. There has to be a better way to handle that, at
>> least conditionally on some override?
>=20
> Currently these belong logically to machine config but what about generic
> machine targets. Could an image config define how much memory is needed
> to run the image on qemu?

$ git grep -l  QB_MEM
classes-recipe/baremetal-image.bbclass
classes-recipe/qemuboot.bbclass
recipes-core/images/build-appliance-image_15.0.0.bb
recipes-core/images/core-image-ptest.bb
recipes-graphics/images/core-image-weston-sdk.bb
recipes-graphics/images/core-image-weston.bb
recipes-graphics/images/core-image-x11.bb
recipes-sato/images/core-image-sato-sdk.bb
recipes-sato/images/core-image-sato.bb

Yes, you can set that in an image recipe.

Ross=

