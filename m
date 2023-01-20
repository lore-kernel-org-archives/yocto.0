Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD332C05027
	for <webhook@archiver.kernel.org>; Fri, 20 Jan 2023 11:28:37 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.81])
 by mx.groups.io with SMTP id smtpd.web11.72066.1674214111653302567
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Jan 2023 03:28:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Zp8gCca9;
 spf=pass (domain: arm.com, ip: 40.107.13.81, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjgABpjOCpZ5nhxjhoSOt6Tn8UBEAeKxPEIzX9R69z0=;
 b=Zp8gCca975hb+DIHL+egfVcZSTfkqN2Fxs+TJk0zsvYUKDf50GJM+qUviudNL7EzfNmQzTZYvWjvtQf7XMVmX3yKdiEE9IJAQB4548EboAngiS40/4kqvko/kks1wbn4jKJ1KNV+aPp0fr2LgW7O+BShy9+dzFDA/BInrfHXnyg=
Received: from AM6P194CA0049.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:84::26)
 by GVXPR08MB7848.eurprd08.prod.outlook.com (2603:10a6:150:16::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 11:28:23 +0000
Received: from AM7EUR03FT014.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:84:cafe::95) by AM6P194CA0049.outlook.office365.com
 (2603:10a6:209:84::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27 via Frontend
 Transport; Fri, 20 Jan 2023 11:28:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT014.mail.protection.outlook.com (100.127.140.163) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Fri, 20 Jan 2023 11:28:22 +0000
Received: ("Tessian outbound baf1b7a96f25:v132"); Fri, 20 Jan 2023 11:28:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 78c4decb6664a40c
X-CR-MTA-TID: 64aa7808
Received: from f536241ce2fa.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A18150F7-CEE6-4F9A-ABBB-640C14AD6CF2.1;
	Fri, 20 Jan 2023 11:28:15 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f536241ce2fa.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 20 Jan 2023 11:28:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFEAG8uCLgmcegI2ILvffvAZHlErF3U22FbpsbpDe/NP6J2UgxD59t3O5NYVGPgvLy1yQ1xiuAadmgX7D+Yh6183k7wvj3jlQePSGHRtq+Cb0/u+/pAzUNxbYtJwTGXc9prdacJv4QxxhRcz47tRcNRUmaHALxzS4O4MH1dY9JjaIwxfE7ds/9cq0hDlzxI2X/D+Y5H+RdJ88pA7w+LObw/n2+ex+tWgvetzG6msnxTagzOe/IftvRkFn6UMpNqvgBiU4dWLk4Ew2L+nPeCTOXv4qbBzC+LXfwIo+zWurMaNQZM8Lj3+B1N1CVbad0NxeA4kvUwNSFJR6M8v+RGnlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DjgABpjOCpZ5nhxjhoSOt6Tn8UBEAeKxPEIzX9R69z0=;
 b=WzrBaRVM6U1CuwDWoe5LZGOS4eS+qNHWorrxh7dYV6mH2Z6QcZHFJPej1RJewVobWma7FtsNI4cYW7Atj1jhRsmD15/23me/etRg+23HDZl252hQKm/8gO+IKbzxe4olPWLSxPBiB290r2aJwa2/ZEQ9v4r8q8g/yeJTlrkHhwMSnQwk+0FA/BJ0DM5uqLnm4TZabqRn+jDAR6H+1XkjewGusv68ckHqL/GDDnuk1/K08gsY+WUwyA6hvcgb3aCv35NFD1qnVmQIYemMkb9pIRj3mmDSVLcHYZ+NCcMw7JD44ntdUr1qJY4N1/YJ4jQzXMRdUFKEUtPVDJIPfj5NHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DjgABpjOCpZ5nhxjhoSOt6Tn8UBEAeKxPEIzX9R69z0=;
 b=Zp8gCca975hb+DIHL+egfVcZSTfkqN2Fxs+TJk0zsvYUKDf50GJM+qUviudNL7EzfNmQzTZYvWjvtQf7XMVmX3yKdiEE9IJAQB4548EboAngiS40/4kqvko/kks1wbn4jKJ1KNV+aPp0fr2LgW7O+BShy9+dzFDA/BInrfHXnyg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB10220.eurprd08.prod.outlook.com (2603:10a6:800:1bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12; Fri, 20 Jan
 2023 11:28:13 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2d3c:c53c:86ba:a3b0]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2d3c:c53c:86ba:a3b0%5]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 11:28:13 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] linux script command
Thread-Topic: [yocto] linux script command
Thread-Index: AdksL6C6NmGpQng9R5+Cl6A2LAez3gAkqBGA
Date: Fri, 20 Jan 2023 11:28:13 +0000
Message-ID: <F149D2AA-D854-47DC-B5AA-CAE1D062175D@arm.com>
References: <MADEUP.173BC7AF8C85397A.5384@lists.yoctoproject.org>
In-Reply-To: <MADEUP.173BC7AF8C85397A.5384@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.300.101.1.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB10220:EE_|AM7EUR03FT014:EE_|GVXPR08MB7848:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ac88f77-f555-4749-ffca-08dafad9703f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 47D1sd+KHfTHr2nYG9BSuLNaufiLx9Ebry8ns030pOtR+lKCk7/pvhhtuW2+6NcouOYMMgZBKD57PqSoG+QDMRPwZUGVWOacT77NY4k6ffJGT2XydPXE0a2yJe0gh/qtmFXN5+QxOYmA8BuK/t52bA+kZMYZsSAjvIh/lqlLk2EbxOcWMxWVxxKJbtn7K2Bw7ACJW73aNe2D1Bn+OmBuigruNeFQRxQfHkkgiF86aHtnX1hrExBkwbRS/+rxAk6x26PhBVG1ts0wK72/rEYPmUcNX25EWe5dsJyT+Z1yR+c++pyXqQIb94pcOTnwaBxbdZQ4NV8igZBPfJWlQl2WYrBUEHR3bd7xYl/4TojoqugV0EPMfTjtuQGOywsjJuLnB2DvDi+T8U1chuPyqu0c4mu3itQiVWix6MpoHIaMH/B3ZVtG/yUt1S5OCE0KFo3Kb3ZvZL0D+qj+pBFZGuVQkGaCT8uBESp2sjRmntKxppLoswZJL7I11dBjQh/8K3VvTL3DSsMAWJil7/hxUQstle+kyhkp9XkvJC5+q1RYl7SYIbKFw/kA4lvKCDwNx4ZnrJDAULq4I6RsgGO+lViyhP8KIytwIVf5/22TlYt13iCWsQsxEzsTgHwFrEK/dgSrVm6HSnEM5uWNia2ocn+T6mvtmTr1knfNfTwDxIhMxLzP0PJcT/6s1a4zAaGIr7syTnA/vVe/EnERt8Vic2D3VAEw8g7RMleZbP+IjyfxIHc=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(136003)(39860400002)(376002)(396003)(346002)(451199015)(91956017)(2616005)(316002)(38070700005)(66946007)(2906002)(5660300002)(33656002)(4744005)(122000001)(4326008)(76116006)(66476007)(66446008)(8676002)(64756008)(66556008)(38100700002)(36756003)(6916009)(8936002)(41300700001)(86362001)(26005)(186003)(6512007)(478600001)(53546011)(6486002)(83380400001)(6506007)(71200400001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E229D539101A74E8FC60C69586454C7@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10220
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9db80951-7b45-4191-bbfe-08dafad96ab1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Vb2K6zqSsvM5R812OTp2dme6biYekU1PT/c2PZrVw9QHVk36Tm0jm12HTNjzh18sv0lEhOVWy4hISwBpt3oxvBZ9h2GZ9mWa+WObWtXVOGsoPmuc+ZS3ZW2GE5wN+jALNIgvClk/whxyz4aasDsi1aJWBMVPewHzlDx+5RdhEzPfYWWo7l7/mn4K1YFLAwFnzuawp0B26TRWQeQ3HMsHfatbnrqmsYr3pe5jWccd8tgKrILS0b95Z3KFnN1sPdS4Ka1yg3w00d8NrTnoGBrggYQ8XsvgMBAmYtIYRMp7VZhKPmGTsO4L7ivkul/sym7yxQCJvPacIwX750xaB7ee2ywYwO6RZ6J1tg/jlp27i6vXH35gsJN/wMaWAvE7zbYxSSrPlLqthp79hHDk2l7OGSFEY3Jab5ZTX4ry0fkmjE64ffAGTvqhGzVjOyWpyRNHt9udI5jfRZFhC5lu+XV3k9O3SG60rw5Big1c7ryiokxsfk3OSJ2gJX0eQcrjJ9QXeqV/ijEETctkw3nwkuGb/QdvdDO8QhLp3IZH4tAVQJLdAfL2qBvvEy7AkBPeTrGOJ+lHqhBNbDd6TcoZFWbO4tuMXMr/QC1QHcGDUC1Oa8oC0lIy+mcYG34iOqkMJCjuahCF/f0m3+RdcnLEU50sY92/T4qYVAjlkk2t7qZXryemO3rXiHNWNrExTOTOXY06U//ALALDtnB1NScW9HKETQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(346002)(39860400002)(136003)(451199015)(36840700001)(40470700004)(46966006)(316002)(33656002)(336012)(41300700001)(82310400005)(4326008)(70586007)(36756003)(8676002)(83380400001)(70206006)(86362001)(47076005)(356005)(81166007)(36860700001)(6486002)(40480700001)(82740400003)(478600001)(2616005)(6512007)(26005)(186003)(40460700003)(4744005)(6506007)(2906002)(5660300002)(8936002)(6862004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 11:28:22.3811
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ac88f77-f555-4749-ffca-08dafad9703f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7848
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jan 2023 11:28:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59024

T24gMTkgSmFuIDIwMjMsIGF0IDE4OjAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55
b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gIERvZXMgWW9jdG8gc3VwcG9ydCB0aGUgTGludXgg
c2NyaXB0IGNvbW1hbmQsIGFuZCBob3cgd291bGQgSSBlbmFibGUgaXQgZm9yIGtlcm5lbCB1c2Ug
Pw0KPiAgSSBhbSBjdXJyZW50bHkgdXNpbmcgWmV1cyByZWxlYXNl4oCmDQo+ICBUaGFua3MsDQoN
CkZpcnN0LCBaZXVzIHdhcyBFT0wgdHdvIHllYXJzIGFnbywgc28gSSBlbmNvdXJhZ2UgeW91IHRv
IHVwZ3JhZGUuDQoNCnNjcmlwdCBpcyBwYXJ0IG9mIHRoZSB1dGlsLWxpbnV4IHJlY2lwZS4NCg0K
Um9zcw0KDQo=

