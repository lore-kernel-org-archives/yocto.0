Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A376DCF31A1
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 08:25:12 +0000 (UTC)
Received: from outbound.mail.protection.outlook.com (outbound.mail.protection.outlook.com [40.107.22.71])
 by mx.groups.io with SMTP id smtpd.web10.2521.1727857506993901133
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Oct 2024 01:25:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Q1PIxmFF;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Q1PIxmFF;
 spf=pass (domain: arm.com, ip: 40.107.22.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=rISX+T3K0qx+ciXG5Gm0gO8er/j5NJ+M5GUbnkit4hQWj5rat0ljWrjUSKqZyFRmCjFry1XnvGHzzQ3jywRMMbMuVDrDuwGn3DZeRM+JWu6nBWCFpj59GZtDhLZLrRLR8Py44A3KQfjD9sAFj7XkFETEBEKx//LrG55rhV/pyI+GNsctIhtglJe/YUdR5A9ieGXT2IhhJgv0C1CzTswj//Yn0wZFmMBpc4CUJhQc5zfj0lxVwB4+MDvAjnMvRvGUvvwFWE53JBjsWCzOkSpjf7e08UMyQMRbFTZ7PC7E2saY3pIsGlUGbufTPgLqlG5RNT1UJaAycGpSNN31ZBq7/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4BbzX8AHb6Zu/isTMjFFwSkJh3r0/F9EmnGzFNJlRCM=;
 b=XxlTDGUNOdT+r2pHXEaiBsev7BTJiDsZQVufhVv9sXzNrMy6dP6pOQjoD2cntKGF8gfUHrQ/IpxG6kQ04PI7j/X81QvyFsWR79PPJPdYI4DqTXMCIfI7KYvpS6XsfqAIFXyCl/RIB7nBvCzQmKOcF8HbH0sFGk9eomwwiwfCaKwXxJQNoh2uoKFsZqlE48DWodRHh9MVcMeit+hgMVDD0UVNRwVR0jXFsrC69YJDUtW9drZfzIEWgxwDqeOYPYtP+IVSlcrBo4mtvIWA2yUfbpVL9DX9u/igiQt8V8uUHz4I+ICCirrD6Qak6OFz+YDlTO6ZgI8l5vsYSHu1rNUxaQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BbzX8AHb6Zu/isTMjFFwSkJh3r0/F9EmnGzFNJlRCM=;
 b=Q1PIxmFFsnMUPPhl8AGE5EY+jvvn8v6o8IoNJuDfiIuHwTbr66Ijbf0b2uuyeIASV7LIM6NmOD/XzKKmaZPDXN4LtL2BxX7BZeAYOFMY0MfOORCgRmuoFP3YyXjVAD2dK8phZBgkJR040oRMpAhsJWE90iNJ8aiQ248+PvdoM+U=
Received: from AS9PR05CA0130.eurprd05.prod.outlook.com (2603:10a6:20b:497::10)
 by DB9PR08MB6636.eurprd08.prod.outlook.com (2603:10a6:10:250::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.21; Wed, 2 Oct
 2024 08:24:59 +0000
Received: from AM2PEPF0001C70B.eurprd05.prod.outlook.com
 (2603:10a6:20b:497:cafe::4f) by AS9PR05CA0130.outlook.office365.com
 (2603:10a6:20b:497::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.34 via Frontend
 Transport; Wed, 2 Oct 2024 08:24:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C70B.mail.protection.outlook.com (10.167.16.199) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7918.13
 via Frontend Transport; Wed, 2 Oct 2024 08:24:58 +0000
Received: ("Tessian outbound bcce15e2414a:v473"); Wed, 02 Oct 2024 08:24:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d2d5a85cb8ebac32
X-TessianGatewayMetadata: 6d1QRktojM8tvWZofq0quOxHTLufiV1ZLxJkjh9zBWQ8jFXJ9YiozxPVaNYw56f3ZBAzxplznpNfWGtV4dIMcgylAmpQZwonj5B/ZgrfqzVKxpVoKUas4KvQEk1U6PwWRPhqiu30btA3hFpykVCinfXXqspxH4mbtZ/vWAccxGM=
X-CR-MTA-TID: 64aa7808
Received: from L94095c8ebb45.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 380540C4-A530-4AAE-A56C-76C556A83338.1;
	Wed, 02 Oct 2024 08:24:51 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L94095c8ebb45.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 02 Oct 2024 08:24:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mhn1YfZMbDVA0QnqpmDHkDi0mDF90dESLBCQhxb9PAqRKeKGZ+Chy7tyduPxrr20zwwSjrdzKebW/ASYPgcLA7+ZLj+obU9vmDX0gS1YchwenEsl5IDMTo6CRE9QzMLhwDqwS4u4PXtNyKT0gajR1OjZkQZEUHXJWr9RsZSirkLPcvUQhrKUYJvAUOqpIEhcUooyo0VHfw7MVxI2PG3/MbQc6JrRuqRMtPyFx1xaXG2ajimSNmNNmjMyLUS+VJBNgBls7q3+qVzWBoxjwcimE8VmCBztiwXrmqCXSlejPnJyW5EjeFNOIMSNp6mMTr7F6VftXOar6Zic+h6rIY1zjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4BbzX8AHb6Zu/isTMjFFwSkJh3r0/F9EmnGzFNJlRCM=;
 b=LItrdZt5TrhbyJKzuxl6OH2OxSoJUxkQ8SO/DpUR4v6XQ2XEUfLfeC3Yuc2FNvRdaZZj0HEfue8FZnlsm52fzT/GOGCwv4i3r8kF25tr9/ieXNcUVheDtbd+CqWzJVvPFcbNKey+72QXUp14HtvOyOSlAjmI7YiMJPLpWMIavVtkxyD6gZSALp7tkVLUqnQfmCVsgfWlQ6PQRSPAIkHqqEmYbTe7/hQsj8PUaUIBqPH6sJBb3LAr5VbuDGtIpmmD9CGR7wgzS8o0HSKzOTFwWc8f6k4soNOC5HzNJoVXIAHYyFl3DttrIIKEbFLsFyVmOZTaN+gT0gcwnrAmN2OFGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4BbzX8AHb6Zu/isTMjFFwSkJh3r0/F9EmnGzFNJlRCM=;
 b=Q1PIxmFFsnMUPPhl8AGE5EY+jvvn8v6o8IoNJuDfiIuHwTbr66Ijbf0b2uuyeIASV7LIM6NmOD/XzKKmaZPDXN4LtL2BxX7BZeAYOFMY0MfOORCgRmuoFP3YyXjVAD2dK8phZBgkJR040oRMpAhsJWE90iNJ8aiQ248+PvdoM+U=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB6727.eurprd08.prod.outlook.com (2603:10a6:20b:393::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Wed, 2 Oct
 2024 08:24:49 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8026.016; Wed, 2 Oct 2024
 08:24:49 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "sidali.teir@cysec.com"
	<sidali.teir@cysec.com>
Subject: Re: [yocto] sbinmerge feature (unification of bin and sbin)
Thread-Topic: [yocto] sbinmerge feature (unification of bin and sbin)
Thread-Index: AQHbFBtMncPKzYThWke6Nk3mnvRb6LJzINWA
Date: Wed, 2 Oct 2024 08:24:49 +0000
Message-ID: <094DD9BC-3A41-45D8-8E41-DAC9A8250C3B@arm.com>
References: <JEoF.1727798532825470645.FHhy@lists.yoctoproject.org>
In-Reply-To: <JEoF.1727798532825470645.FHhy@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB6727:EE_|AM2PEPF0001C70B:EE_|DB9PR08MB6636:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e80e209-4ef0-495f-e191-08dce2bbb3f7
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?M3g2WHJPcUI2RnFhRmZXeXBZWTFMWnZnSkoxQ0M1T1dqWTE5N3VnUE5QaFpE?=
 =?utf-8?B?K1A5QlltbEtYL2JnYmgra1RpRkl3VnJObmZIZkUrNzVsZnI1ekkwbHcySlR3?=
 =?utf-8?B?eVp4UXhtTG1GamlibkVjdGREV2JMeVFEdk5hd3VEUXVuWHlyQklXTWY2V0lG?=
 =?utf-8?B?NTUyeDNObUoweVFDdk9UeUNrRWkwR1N3T25qeW03MWRnRVIrandVck5oWnlt?=
 =?utf-8?B?V2pRdDBnd2lmaDdMS0t3VXJEL1pyamtJN1M0MWQ3NlhsVmtkb0xPTGRHYXJk?=
 =?utf-8?B?a3YzakY3aGtwUEVDWUJSWDVWbi9yb3JBYmlyQjRTV25tcGRrR3cxcm5wbXhs?=
 =?utf-8?B?a1ZVYTBCQm9XNlV3UXdwbTArSnJJY2dlTFRsNDl6MjRBZWovbWZselFMaUhK?=
 =?utf-8?B?bS84MkxnelFxK0N2dXZqenNqS1M5YWdBaXk4TmlSYitkNk8xdlB1U2FHdTJk?=
 =?utf-8?B?bHBETktsVHVUNlRDMWdhbXVxVWpGdlBXVWE5VlN5RjNzcWJQeERiVDZFLzhV?=
 =?utf-8?B?bnlJTG5uMkdacFd6VU5lRmxnUVk1REd6YXNoZUFnYTErZ3NLbkZMRzZKcXQw?=
 =?utf-8?B?c1RERXlSM2taSmdUWjREamx2MzE2TmxzRVpUQWE2QXJRTFJuWGlwVXVmdVB1?=
 =?utf-8?B?d2JHdjQrWXdNU29TRGtGZFRjMzlyTmpyMVVpU2d4U2w2SmhSTTdSMWNYK3Vz?=
 =?utf-8?B?RHA4dzl1cDBaYmJPU3Y2eExjbUtmSVVHaHl3L0pidFdTanhWejZtcEhrWHRq?=
 =?utf-8?B?elpUYlpZQ21obnNFRkZBZExhVUF6aFlYc2NHdWpRY3JzdlN1RS9HTnJ4VGFZ?=
 =?utf-8?B?ZlRQTmg2bzFjbFVUV05KcG80d2t2M2t3M0VGRHc4OHdMd2FSNHB0VjlLTW5v?=
 =?utf-8?B?cGNDY1oxOEZIU20zMXdxa0Vwd0dLRjFTWG55WGNlYlBvY3ozNVl1R2QvZGRk?=
 =?utf-8?B?VW9iTURIMHpIQzVrTFlCaWsvYUFMWkd5bWNTc0xwd3V6OGxxczJOSDRJQVl2?=
 =?utf-8?B?dFpCclZqYlpsdmwwb0hpdkh0YlBaUjdxQWc3YkFWWGxWSVl1OFhDNDNNQVFa?=
 =?utf-8?B?dTJiektpcVhHblNHUVZYbVl5ajdFeEx0c0t6WVpkbkhOb056Z1ZGc25lenh4?=
 =?utf-8?B?SmdNZTBhKzZKbmJQamhhc0lRQzNoN29jQnNkWFd3QUF1anF0b1hoeWI3UXU0?=
 =?utf-8?B?VVo3UDJFN2xiTXNVUXpuTXZiMHJ2QWR4NlpsdURuSEtUem56cFYrdkxmWk95?=
 =?utf-8?B?RG9rbFdVUEtka3k5SXRCRzd5ZytCa3NaNVF2STNqbWM5Nnl3b2h6OFQrNGpa?=
 =?utf-8?B?NWRrckI0QVBvSm1HTlp1WU16a05MQ2RFZzVFQ2hvejZFWkg0QjdkY08wYmg0?=
 =?utf-8?B?bjJ4dTJKTTJBaDZ5OStCcW5VcG9XS2E2ZUJndEVNZUN1VmdxN0JsczVHNi9W?=
 =?utf-8?B?SVVYYWNGMzFncGN2a0tvMlZ3OUZSQ3VieGRRNTI1R1ptMkUvQmlidjBhcUJG?=
 =?utf-8?B?V05ZS2JOQVlGaFErQ3F3bEFJeUJmVmlxRDQwUlVSV3dhSURCTnpOMGpXWFZ0?=
 =?utf-8?B?bXdvSlYvTnlHRnpiV0JTWUV4cHlTelY2b013WFV1RGJmVkNhWXpBdDdaZTdW?=
 =?utf-8?B?c2dXMDJrc1lHdlNIc0MrTkRBbDAyQmFKVjFBTCs4ZDhJeUNvYnJ6My9tc0ow?=
 =?utf-8?B?ZmZTdlkwZzNIQTY2NGt2NndJTk1IRktvQ3lpTmJyWUxUK0tQMWRDY0xZTVo5?=
 =?utf-8?B?ZWppYkNNRTFxMzA4dXlyN0wwemp4endkWlhEQ09qU1RQdVdINUREcEVOMk9G?=
 =?utf-8?B?emZGU1N3VzRUSUxHTDhmdz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <80DEABB8F7D1FA4B93F3E8BA57BBABC2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6727
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70B.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	56daa499-2ce9-4078-aee8-08dce2bbae74
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|35042699022|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bytJOW9GQXBqL2R0eFBqQjhaanRxMS9aaXpyL0ZJMDIwbDRpK3c0bkpKbGxD?=
 =?utf-8?B?ZlRyYTkrbTloeURXemRIT043aTEzamR1OGNDOCtXQXkrZm16U2tzeHd4MnM2?=
 =?utf-8?B?M041S3dYZmEvSkVqeStETEpYTmJvTTRYdHY4RzlZOFNKS2VaU1VNSFFEMkhM?=
 =?utf-8?B?VTFQV3RJdXpUZUZYQVMxSlFzeFd6akZzZUlOVldwUm9UTDRpU1VNYVhseitP?=
 =?utf-8?B?RmtHc3lQY2gvZjJTUCtFK2lvaWxRTUlONm9aOW8zRGpkQW9KSzRvY1lmYUh4?=
 =?utf-8?B?aGNzakRBN0RFcnZlOUJ5blNRVnJSSHVaQS8wclRZMEg2UG9DKzUzb2syL1ZC?=
 =?utf-8?B?VENFVnluNWN6amVuaTluaTkrQmFuWkZhWkRERTd2bnpnOGFQeGJDU2ZaWmI4?=
 =?utf-8?B?cjdyQzMrS3lubGErNVRsV29kbW55VWxhc0NEaHp6M3dWVkpueVVKazRhZ0ZP?=
 =?utf-8?B?K2hvbngyeFdONWFuemY5dURPY0dyYkw1Rm8vblQrNkRvSVN3QmwzR2NFYmVF?=
 =?utf-8?B?RVA5UXhCdnAzd0UralAwbWhZWHczUFJYNlVuTFFNSmNxeHlKUXVCcDRSR2tu?=
 =?utf-8?B?Mmd2NE9WZUdjK2hpTjk2Tlh1REI5UVBUYkFPaUNLZmFOQStaSEZlVm82OVdj?=
 =?utf-8?B?T2ZPYUluU1RSaWNvYVRjV0s5MVEzVDRSdXhrMUxzbC9wNkw0eTNQc09INklz?=
 =?utf-8?B?YkJ5U3ZaVWxJeW1VOTJOdFNaeUVCNVYvRERtUTlCMEw1OVhINDFBS0Y1Vmd1?=
 =?utf-8?B?cFBVektKQXEzZVRBWENvUjhXaXUvM1B5bkJsVG1xdzRRbzZSUFJ5YkZMaVoz?=
 =?utf-8?B?WGVsT1A1MXBiK3lSems4aU10NnUwT1hIQXhxcTRJUGJaWkhVN01XSGZSYmhL?=
 =?utf-8?B?ek5sRzU5N3M1ZTlnS09rRDNqd3FKZGFSNmlpODg4aWh6QjFWVkxIcVNzL2F3?=
 =?utf-8?B?eW5PUjU1c0tVMzA3R3FXNzlIZk1QOXBjNWdHc3NPemFIejBDbXpJN2FQaVBv?=
 =?utf-8?B?VysxNTZLYWpEbUJIeDIrSks5YVZEQklyYUJDOGpPUTlEeFQwZGhsbU92UEx4?=
 =?utf-8?B?Qlk0R0REZjBuZTlFT05tU0M3WWdQaFV1S0xqaXFaOVVobDVocFZtdnF6N2Ev?=
 =?utf-8?B?Q2lNdlBGNFhRV1ZuYnBMZE16Q3JjK3d4Zk1Ha0F2VDZwNXhybVlVbUFhQUdw?=
 =?utf-8?B?MGFja1prMldGRkJPYXYxZThlU0JqbEljN3JvNVlHdmFoLzU3ejluOWNHN2th?=
 =?utf-8?B?eDh3eGhZWlUrZi83TEt1ZWVHUDhWQ1VmUTNPekFPaWhnd1A0V252WERwRTg4?=
 =?utf-8?B?RmhTcDkzeDZXM0g5YXRYTlFQR0ViODgxeWw0N2ZwWU5nYWhxeVBKSitkWW5X?=
 =?utf-8?B?Mld0S0ZpTGpYbC9adzM4MWd3U2NseVdIYjFJSjRLMm5XaElSb0laY2QreGMv?=
 =?utf-8?B?YlpFSWRjRnAveXVrcmhNdmgyRWMrbWF6YkZmeVVCTXFSVlg3b3NQUk5rVUtL?=
 =?utf-8?B?UnNPWGFiaWVCUjFmVnRpNnpLRzVMcUxJZ1Q5RVpqUXpraDk2UGtLL1h5RlNn?=
 =?utf-8?B?dzVoYTd1aDlEUVdHMkFEdFFhb0JwSC9rSXFYUVpYNXJhZDJvU2gweStTWFo0?=
 =?utf-8?B?anpBREduTEVNUG4yeCtFSExjZjQyWGRjaHh0U2N1Q21WWTV6Y3IyaGtLSnli?=
 =?utf-8?B?T1pHR0kybGF0WGFWWGdHeVJhR20raEFwK3BDU3BhY1lXalJ6M1hVUFNKLzhP?=
 =?utf-8?B?TnJBeUVjV2VwWGpiZS9PNWV5dlJRVjZPV1gvMEloNjNkS0FLV3ZtNlVKbkFy?=
 =?utf-8?B?NlNBeUUrVDk3aVlOZEh3VnVUL05tUTlNQnRmNnFaUStYWTUra2s5d2czd2hX?=
 =?utf-8?Q?Fjp1cPs0/fg+j?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(376014)(35042699022)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2024 08:24:58.5427
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e80e209-4ef0-495f-e191-08dce2bbb3f7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70B.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6636
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 08:25:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63926

T24gMSBPY3QgMjAyNCwgYXQgMTc6MDIsIFNpZC1BbGkgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPHNpZGFsaS50ZWlyPWN5c2VjLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToN
Cj4gSSB3YXMgd29uZGVyaW5nIGlmIGl0J3MgaW4gdGhlIHJvYWRtYXAgdG8gaW5jbHVkZSB0aGUg
YHNiaW5tZXJnZWAgZmVhdHVyZSAoc2FtZSBjb25jZXB0IGFzIHRoZSBgdXNybWVyZ2VgKSB0aGF0
IHVuaWZ5IHVuaWZ5IGAvdXNyL2JpbmAgYW5kIGAvdXNyL3NiaW5gIChkZWZhdWx0IGluIEZlZG9y
YSkuDQoNCkl0J3Mgbm90IG9uIHRoZSByb2FkbWFwLCBidXQgeW91IHRyeSB0aGlzIHlvdXJzZWxm
IGluIHlvdXIgZGlzdHJvIGJ5IGp1c3Qgc2V0dGluZyBzYmluZGlyPSIke2JpbmRpcn3igJ0uICBU
aGVyZSBtaWdodCBiZSBzb21lIGZhaWx1cmVzIGZyb20gaGFyZGNvZGVkIHBhdGhzLCBidXQgd2Xi
gJlsbCBoYXBwaWx5IHRha2UgdGhvc2UgZml4ZXMuDQoNClJvc3M=

