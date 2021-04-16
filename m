Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.40])
 by mx.groups.io with SMTP id smtpd.web12.5421.1618554057243471846
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 23:20:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=rM/PK1oE;
 spf=pass (domain: topicproducts.com, ip: 40.107.8.40, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nUOk/j95oBIvE37ZmEwCV0WMtpp2K8ZyGG+O8ahhX+E=;
 b=rM/PK1oEgYAjM6Y2BgHiudwPEWusE9sLqgUmufzY2xAZgeHoLsTlp7K85wsHmBCGFXtSOKPffChhx5oVhNyfbI+qy0KYqQ0NRuS1yvvvNMRirt6p4y+xsEGD716YS6R6DOeiySB2kwA/w9xAYXnrKpoVf7+fXwyYoFJcdPEie3M=
Received: from AM5PR0701CA0051.eurprd07.prod.outlook.com (2603:10a6:203:2::13)
 by DB6PR0401MB2424.eurprd04.prod.outlook.com (2603:10a6:4:4b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Fri, 16 Apr
 2021 06:20:53 +0000
Received: from HE1EUR01FT016.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:203:2:cafe::b4) by AM5PR0701CA0051.outlook.office365.com
 (2603:10a6:203:2::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.6 via Frontend
 Transport; Fri, 16 Apr 2021 06:20:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 HE1EUR01FT016.mail.protection.outlook.com (10.152.0.169) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4042.16 via Frontend Transport; Fri, 16 Apr 2021 06:20:52 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (104.47.6.56) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Fri, 16 Apr 2021 06:20:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2KNBfm3EeiHlwX9yiuCCuGeFh7i180JNTqv5m67gz5P3NiJmy0U5hfwswyOdotH+s3RTBrkqiExMaOyfVFC6IUWi/smWDwNweeFywcr/Kn3YrT/xs/Tg50Sg52cDX5dJu+aablXbEc7HJNLCnHLI/eCQ9J4z4rrlAQ9UfWj933LNa1u0KxqRz6RMEWniJgcvy8RYCKZhqUEycAxmKUhPSHsL0EW2jC7PXen3rBfPnPCUMU9sD8mqMz9UdB401muCk1zxEssX41uIWkPT5qA8duvrwu9wtvDAUOgI6zggIghZ2cJ3uK9zzpnhjB/4IumfsyO+4GIywL8+6hewb5E/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwm/wQrkAc4eUoQBSXX90+s1zRwMbSLH5Fjdt75O528=;
 b=ImpQmUV/bCkKQuY8aLUwexuHAqFfWpsiuNdam73caT2H0WMq3v5pbuNCtXgNVJVyC2AmMt5G/BGSt1BgKzFLvx8Cev0bhAAGHeAIpmilGHoAMIvbH7AAkEFm9ra4hXJMoHLUgb0gcteJtMC6UWVIWJ0hVi+hwYF+U2iU36SWa00bIViSHj+cZJ5k5j7933WI4EUgDUvH6c1JFjvymuhxPPU8x/kCPAggNRuFMiN7TdSGYgefgbz/Fk1VZ/EjK3tUmeRHLJWvnyjR00HfC3tpk4pqEcaudGu6IvCIoLH1kBkNg+WXQtUUkiQeOoBMZl9USyT5YooTMyc0y1aZG21SZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DB7PR04MB5097.eurprd04.prod.outlook.com (2603:10a6:10:15::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Fri, 16 Apr
 2021 06:20:50 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988%7]) with mapi id 15.20.4042.019; Fri, 16 Apr 2021
 06:20:50 +0000
Subject: Re: [yocto] Building image from Root
To: murugesh.pappu@gmail.com, yocto@lists.yoctoproject.org
References: <CAOpumBmdt3-kRC4NJ1L1kghWMng_kWZ8URxOaoqWWCmA2Zcwuw@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.75d99921-ee57-409b-b18b-20b0b0f4022e@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.fdb252e4-c7e3-4944-a2f8-76d8eb1f23f2@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <31a9afbf-3df0-ac04-45b2-f9ba548438da@topic.nl>
Date: Fri, 16 Apr 2021 08:20:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAOpumBmdt3-kRC4NJ1L1kghWMng_kWZ8URxOaoqWWCmA2Zcwuw@mail.gmail.com>
X-Originating-IP: [83.128.90.119]
X-ClientProxiedBy: AM8P191CA0005.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:21a::10) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM8P191CA0005.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:21a::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Fri, 16 Apr 2021 06:20:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 496399f4-e542-4105-e3c9-08d9009fc962
X-MS-TrafficTypeDiagnostic: DB7PR04MB5097:|DB6PR0401MB2424:
X-Microsoft-Antispam-PRVS: 
	<DB6PR0401MB24240638246BC42D160011B3964C9@DB6PR0401MB2424.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 UHbojMS1O3AFgjQiI50KM/UVYQrkBtyktYSVZglzWbB7lYOaSTcQekkgaFgpd1FSFTRQ3BpCoACc6hKoXSTLLyRFm2t85POE97PE9xr3BxqPH4WixdmfhlDFi/kXmNCj19P5ZQLwtzdptKYQ4flxC8cSZgefzmdGNiDStnLyk+gwbOHXBZGAr9+KahmjZbVj4b0YJO33YXfj1Yk/a0F8MHlw02qZOrp4aNEluq+WN842DgbsqjlzXPIr5Uxui9Yy95crzScmkIdIrjbou4vR9gkgpx6521OuxNttFeI6mC2qSy7RbBQrw5jubqoqwtOtLT+ZtWUzkS4NMfMRMTBPZsAOMZQMqHDPbjLqhe48vox1YnmbJ2HjCm5SYcDEr/NWCQsXhpcnTyDY/qMxdEVXEOGN9e0qNP66HkYc6IJhIk4gbeVmqpaDLDFqwqGaEqC5mHrfhJyeKFeCi4cqX8gtR77BL0ziQwcUSK5nQ8Ifmx+tEdDLkfo/gHFzPYJHBhdRq9/X8E5IJhYoEnbrVJQZ9z373Vlrjq7BGvmtCs0mZxOfGASLA7l8KYXMGFFWSvwmR+TIYmgIs3ANHy/OhMyAIeBr3tm6qZUyq42l283PhpojuXj9hLKpXH5k+CTDIuXRVE8tdYmaM489sg41x87jxS5SmLTwPO9syEY/usq4pQ8dBpqSMzMizBhXNJ8NPfCvM847gErUvFXeY2InWt0ge5Q0qYXQsKfzEYJHOqk+pbv3aT8CvtIgPatAK15b5gK1jCwMR4XCcE2kQ5150JhgTJD6Zzvxi22qRHGu5XmNnDU=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(396003)(366004)(39830400003)(376002)(136003)(38100700002)(2906002)(6486002)(83170400001)(31696002)(5660300002)(316002)(83380400001)(16526019)(186003)(26005)(53546011)(38350700002)(16576012)(42882007)(52116002)(66556008)(31686004)(956004)(36756003)(66476007)(44832011)(2616005)(66946007)(8676002)(478600001)(8936002)(966005)(36916002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?VUVTM2h4Y0JWUVNsQm5zYTBPaERHa3pldDd4VnBjRTF6QllzZnRXcE5ETFlw?=
 =?utf-8?B?SjYrT3RIZkZFejRsR0NwUEZJcTVWWkFjeEwxcy9TM0pPRGZHWUZuUmw0ZFBw?=
 =?utf-8?B?NlFhTnlhd294aHN0MHBHUVhuYkxpK1U2MWJDTFdoZGVtK3lXL2ZkZFRrdStZ?=
 =?utf-8?B?azNTdDltV2xUL2FyRXVTMlJxZjJURHpJZHNWWGxlVm1XNjdCWi9KTkYxbU9P?=
 =?utf-8?B?K0h2ZFEzcGw0QzZNd2dRSWZobnJLUG5VbG03OFpHNkY0VFpkYzBKMk5wV2tz?=
 =?utf-8?B?VytRTDVFd28vUG8vaytMb25nd3VMQWp5RUVaZmMxK1FONGdXVTZOVXM0Z1NY?=
 =?utf-8?B?Yk4rT2w0UDVkc1ZJSGp2dzZPbEZjb25jQVZWSGNSYklrNTcyczFxWko3dS9U?=
 =?utf-8?B?R05raFBLakRTZFIvbHE0eXVud2IzQlV1anN1bm1RejY3QWZFWVNHOXYxTFhZ?=
 =?utf-8?B?TTBLVFhCc2hENlJ2WmhqQ3Q2SXRtU1lyaUtWdm5HeTg4SGFFWGZmajU2K2hh?=
 =?utf-8?B?ajVmWE1vclJDOUh1RWZ0Mm9YU3d0ZlE3eTJUTVRIRVFVUi9wWTRMZWw3S0o3?=
 =?utf-8?B?ZDd3bXdDOWhTTUpIVXJnbHh3Z1dsTnhSK3pFNmdlT2MvdWlVZU5ERjIwZXVu?=
 =?utf-8?B?dmVGSllRdnBRd1ZCWmtNVUI4eDhTbzVsTHFCY1BHYUNlM0E5aE5OZDNPb1RS?=
 =?utf-8?B?SEdKaWFJTE1QUXppMm02bS8rMXA5REIvdlkwTkpZL29Mc1doMGRHN09UT2ds?=
 =?utf-8?B?TmVoYTRVci9jTmM1bHdKd1dSd2UzcUR2YTgvN1BmNWl2U0dBYmJqL2JwQUZz?=
 =?utf-8?B?ZzBuM3dmaW1zcDFyWERNNndIblR5cERmU2R5RlZJUXhiM0VYa3p3amJ4VmRU?=
 =?utf-8?B?eXNtM1ZYM0hNQytETkF1azZoUXE0Nk5adDhiSEZQNTdwRXd1dTZsenU2NTdG?=
 =?utf-8?B?WTAxT2RTNDUrUUl1WThDeks2YjY5SnRBZ2tmYTRxN2lEWmF0ZE1qMk9zWWc1?=
 =?utf-8?B?N08zTkNrWTNIdWJhcS9CYnVaNjZJbmQ1aTNvU3RHN3RxRTlLdVlTekVGTFMv?=
 =?utf-8?B?UGR0RGlwOTNJUndWSXlFNmxjaFFzWnhSMDFRVDdwTHprQ0pwSlNEL2x1d3lH?=
 =?utf-8?B?UUNDWjhiTnkwa2lhYXozZStrdkdIYjFPeXNocm45Znd2TWxGaWxURUJKYXFx?=
 =?utf-8?B?aHBhdVNYRFc4aUJLSWlsYnpweDNaVTA2ZEMyaHFjckd2Q05rOE5RRG5Yemt5?=
 =?utf-8?B?NTl6bDFFM3lrcm9Uc3o5QXUvZFV6NE5aM0p1OWl5RnY1VkpnZ1c2RkNHVWg0?=
 =?utf-8?B?bDY1Mmx5RDg4SCtqdEZ6aERFaVdkRXFqVC9iTlhMK1d0ZDZOYjlhU1UwR1ht?=
 =?utf-8?B?S3RyS1hJcy93bW5SRnVFZUpwQ1Z0SWVjZWVCZUNZOWJOOFh3MmR6UG4rSm9r?=
 =?utf-8?B?MVZSWk45WDVQU0hOSGtyY25pQkZQQzJ3SXBMZkZnbHltQ0R4UDBQVEZBWGRp?=
 =?utf-8?B?bmdGb2VTaTgvZ2piTTdDT29jRG5ITFBYcm4xNDFqYitaVkVhWGE4ZUhyZU00?=
 =?utf-8?B?Q2VUbmlGSWUwaE9XN0hqanFoUGVhOVZGdjF3TG85ME45NjFsSnJ2anZudWln?=
 =?utf-8?B?eHJ1ZEVpSFg4ZTBKME16WGdLTWc4ejVpdFFrbzV4bFp2dzNubWxjSkhLeXR1?=
 =?utf-8?B?eXpSWG5pTjFselIyMTFJSFhYTHZTaVJuaUFxY2JjYjhWRVR6YmMxZ200NFI3?=
 =?utf-8?Q?Xl8WNSjWuGYVfmdRKuR4krfcaMREsyEsIBb3POd?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5097
X-CodeTwo-MessageID: 16a451d8-91ed-48e3-aa3d-267f7ef95627.20210416062051@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT016.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ee47b1c8-18be-4de2-6df1-08d9009fc7c3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vP7FI+ZVXvw39FMStuxWD1+a6+Aglptbm7dGZ1VEvlloLacrTTsHBFXL53dZnvWGNepZdyXRPNN3E+Zs3Y9FHuDK/lRliO/KwocXq8/fPixKiZKBdVu4WVCvHHdhIrOA55cWSGxdCrn8taBCLraZCyunlSZAy3udCELg0FZxOPmk3ZAmd+6k6TAiRdMOau7sFgGiGpcO4QlfW2fvZt3MUeHpL+03QevN3axCQ1wpBM1Pn5pVMVBzch9AYFyAne+SGavg/qj5hT45+HbdVy1uwofEbW67iHeurItYZhDaUZwmX9ZxodU0zx6Vr+9YHQy9CFouEGt2gkTbBnZ+KMDbwQrNNuJvOLIuwxPgwW7fAoupShlPFPGrelKldJuYtAEhUjW1qkBKFbkz7EDh0I72ddaVVjMVw/XCCY1HZ9v+wy8DdbZwDRdS3+/3S3TAGxq2BEzIVnzzCdkQds90aVfdQ0VzNs8lQQdWOoYrGmkdQfBzGUQfwtVviGVlgvwIz2vvIoDvIpQD0HDMMTLgwyksdMKqoe/uTGgpKhA6w2kfv/2/YiXFVXbd+laCTfv0h7vX/21xSOoiWbCqeS+CUOrEqMIXbm8k8rJSSFXtuCspXP1W3S1SzvzA1VDVR7XNPZS7RgEbnX5lwv/LOCd2OTVXtsDpiqTZz93buVgN6YkuaSzMWcacOeIqk1NkYVroQPfiOMR3TKRY9EzMnG9NrWufzb7onJdCOd35jVG8bjdYjCZdyzsKQa7d/Eduydf78YOlbLGxi5NRLkd350U/H+pgIQ==
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(39830400003)(396003)(136003)(376002)(346002)(46966006)(36840700001)(5660300002)(2906002)(26005)(6486002)(44832011)(36756003)(8936002)(7596003)(356005)(31696002)(15974865002)(31686004)(83170400001)(82310400003)(8676002)(478600001)(36860700001)(336012)(36916002)(2616005)(16576012)(956004)(53546011)(47076005)(966005)(186003)(316002)(83380400001)(70206006)(16526019)(70586007)(7636003)(42882007)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2021 06:20:52.7233
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 496399f4-e542-4105-e3c9-08d9009fc962
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT016.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2424
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

You can use both by changing the directory for downloads and=20
sstate-cache. Put these in your local.conf:

SSTATE_DIR =3D "/opt/sstate-cache"
DL_DIR =3D "/opt/downloads"

(You change "/opt" to some other location. Make sure you have write=20
access to those directories)

Move the contents of the build/sstate-cache and downloads to the new=20
directories.

You really should consider adding extra storage. It's the easiest way=20
out. OpenEmbedded/Yocto is insensitive to disk speed, so if you have=20
some old rotating disk in the attic, put that in your PC.



Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topicproducts.com
W: www.topic.nl

Please consider the environment before printing this e-mail
On 15-04-2021 17:34, Murugesh M via lists.yoctoproject.org wrote:
> Hi
>
> I am new to Yocto project and have little experience in Linux.
>
> In my computer, Root folder is having free space of 65 GB and Home is=20
> having 45 GB free space.
>
> Shall I get the poky in root folder and do the complete Yocto build=20
> image process from Root directory itself?
>
> Please suggest.
>
> Thanks.
>
>=20
>

--=20
Mike Looijmans

