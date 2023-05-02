Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5951DC77B73
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 08:48:19 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.79])
 by mx.groups.io with SMTP id smtpd.web10.124081.1683017292539759009
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 01:48:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jPgtdBit;
 spf=pass (domain: arm.com, ip: 40.107.22.79, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSV+G2HzNMj2nNlBLlUSE3HjfeWHkQEv/CL1skJsBhc=;
 b=jPgtdBitlwB9JYTgELoPppm/17b7CZTKM8/DR9FVM1vbGnEbhFZC6z23k/1YL5VaqoFWvzfV6fy3hqppuAw3nzeiNmC88p+0z2YgU6U0Yyu3qRHA9hd5pcq8OUqS982B9QOE1TGAlbzzk53sBve/U6qscb8Kvd750uRZIPy1F4c=
Received: from AS9PR06CA0139.eurprd06.prod.outlook.com (2603:10a6:20b:467::30)
 by PAWPR08MB9494.eurprd08.prod.outlook.com (2603:10a6:102:2e3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.30; Tue, 2 May
 2023 08:48:04 +0000
Received: from AM7EUR03FT061.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:467:cafe::ba) by AS9PR06CA0139.outlook.office365.com
 (2603:10a6:20b:467::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31 via Frontend
 Transport; Tue, 2 May 2023 08:48:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT061.mail.protection.outlook.com (100.127.140.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.19 via Frontend Transport; Tue, 2 May 2023 08:48:04 +0000
Received: ("Tessian outbound 5154e9d36775:v136"); Tue, 02 May 2023 08:48:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5f05943c24203a01
X-CR-MTA-TID: 64aa7808
Received: from ce2757dfb0ac.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 2F9EFBA3-9A64-41C5-B758-D6B744B5F71D.1;
	Tue, 02 May 2023 08:47:58 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ce2757dfb0ac.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 02 May 2023 08:47:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OeOgIDvuD3U4AGoZ6jUeZKnL3hnyRtE+QpaCDIAwO8T7KOZStULqyt6CnxfA3WMR+oxC3w3Vo3goLJqGjTaXsNCMtpfMluYNb19fFfM4UTm6RZSHoidcOkzYnwJ0TwFvpT4SoFFsiDbSdx+BfCJIpRDA//8r4JHsono665fewYAjtB0rhkV7eXK4N7Sy89/hexkXiPYSHO3C7rSvY54f6unzQsGA14mP2k989Torgg/8NF0OOptPS9RZJlvvOeEFH7onWJkU6XMe4jvLezddxOpik+oB2lZWX8hBRBrctjhHC/J3e+xhFea55zjPK2soFb1256IjgJpRZ/QstXjcbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSV+G2HzNMj2nNlBLlUSE3HjfeWHkQEv/CL1skJsBhc=;
 b=AWG9Vn0rR7FO8ykWLOybxIWzzKLFo91Q6QDNaghHX8+tsHMbKU7PtJXdCuXqV504ZZ3URRsUriqbrbZDuN4DnG1U0BnccpW+o8+GMsjia6mL+4EzmWtf+OLxZsV0sQ4CLqypr8yQq4g5KN3nxb0T3CBxb4ObrrraKsTjFH8IDrAoYYksHTCCZuJmQ7Qy6CCMYBYDNtcrQa2fNBDVX/URX5YiVGHHti/Z+89jE8hcd9HgXCIWAqWtfwWn48tqyR0jNR5GN+sfzqGzyLmKxVt4rt46iGh4eFv6h8e1IJd3waWJvNIZofCNktuXb1NUYEcRiCaIpbOQQ6q+jqd+WgqrTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dSV+G2HzNMj2nNlBLlUSE3HjfeWHkQEv/CL1skJsBhc=;
 b=jPgtdBitlwB9JYTgELoPppm/17b7CZTKM8/DR9FVM1vbGnEbhFZC6z23k/1YL5VaqoFWvzfV6fy3hqppuAw3nzeiNmC88p+0z2YgU6U0Yyu3qRHA9hd5pcq8OUqS982B9QOE1TGAlbzzk53sBve/U6qscb8Kvd750uRZIPy1F4c=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB7324.eurprd08.prod.outlook.com (2603:10a6:20b:443::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31; Tue, 2 May
 2023 08:47:56 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%6]) with mapi id 15.20.6340.030; Tue, 2 May 2023
 08:47:56 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "electronicconsult1@gmail.com" <electronicconsult1@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Autotools build failure #kirkstone #autotools
Thread-Topic: [yocto] Autotools build failure #kirkstone #autotools
Thread-Index: AQHZeeM50OwVaYIzAEi3m1ogGbiuAq9A1PuAgAAFUACAADhUAIAFnyIA
Date: Tue, 2 May 2023 08:47:56 +0000
Message-ID: <6B9471D8-F183-4BDA-95A4-AE7AAA178F84@arm.com>
References: <21049.1682696118724652097@lists.yoctoproject.org>
 <21049.1682708214064370973@lists.yoctoproject.org>
In-Reply-To: <21049.1682708214064370973@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB7324:EE_|AM7EUR03FT061:EE_|PAWPR08MB9494:EE_
X-MS-Office365-Filtering-Correlation-Id: 65892639-6d68-4ca6-c3f9-08db4ae9f1ab
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 bABx3vQK12kS+S55uYVQvpSs4A4BVRR4oyPSaadXHJqYvsZQIdLX4s9W4D/bg2VpjDMfr4TVlcuwvO6ge+ORAfsf++knVCQN4R728FCpM4kvJIQX8Bnq9whnq6O5VWK0n+xH+z4lBX82cfm4q5Ac50gM3T6qW6+1EHAKPuJgmvT90Div+xorz6IfCakOSko1mdv+pFKVe1K+hlPqXnm+0xIyf5Va2Tx6Q+cDqKQUWzsxdWjKncT14TS19cfe/b6iG06YVWXOHBlXwlTOWgUBBqVSyw0QY5dcJHPViaJegwj1V8Ege1qFpeKN9mJ4z7j0xgyDyByByjqKl7AcmwPVyQ3eLo1QCc16B3AVqsetx/tB+YN2rJqpIhCPaOoFgTgZjRujUcaKCeWDgejnzoQ7xyHaAVVjVbtiF0AzlMD6z8IAXX9wshpOA5CSRFmWLp9mbznKYhTgvxuoEJxBqIHvzRBDhkIXVzNeJsbH/Y0sjCUV7ISrymprZa4veBLLM8ogk2tUnTIIbjjp7xtzmWb1VtUDgdjFHV/qrImIba3JJsBON1MRwIWIZEneXyt862kuA9WNTVUVLs8fimXCf0jhSvXa685OHYc0xn9a7nT5ETYE2ZsJv8bCI+W+DSpUOtOry/z6i42yvzO/okGX76KDmQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(39860400002)(136003)(376002)(366004)(451199021)(38070700005)(4744005)(2906002)(38100700002)(41300700001)(8936002)(8676002)(122000001)(5660300002)(36756003)(33656002)(86362001)(6486002)(71200400001)(478600001)(2616005)(186003)(6512007)(6506007)(53546011)(26005)(76116006)(66946007)(64756008)(66556008)(66446008)(91956017)(6916009)(4326008)(316002)(66476007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <68DD19DF08866E4795DD36B9C736FF6A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7324
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5386b94e-298f-444d-9870-08db4ae9ecdd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MTgHmEJTQxOI+ZDS2stjPxkRJD0EcSCOCz7DCz2oxM2K61Did/hlbvq54+xVu2Um4jHXSPV3JG+9gy0dzlz1foynvGPYir/MWrs4CHKowFkAzwrLbTLTamkQzY8hRGQdEPst9UBReNeT3U6R65U4bSveNyCdKe/A0WcOwJDxLzeKFW4CXF1+4YIe/yt4yxCZkodjNZh0mZTtC+OY36T/nm56TvX5FyDmpYkQsAFebhx0VgGBanPJd/bm9//21CKHHkJwbPUofz8cGh1QMF+GFbAn9Yo1XT/jQXWqHnDA14fqIugkds9sVgLUOga7C/XTKupjYphn/ZD8c3h2cXnfOPcyUD+RUdZVUKuwTiHBBpSXDfF+Yo1sgGtyfEgt3V0wU8NuyUgti7gz4Yxm+LBDiTKhHIWQBRKG75NWY5F/qu4o3/8yy5GjmlHYa+9LJPyQpDSj+l0u65+Ib3puERq5Ix4OJBuybkQ44nqjgLjV2yCFu8uAfmt+3OyFiC7yTLrDIRdSGPpFYj47c5CYT6fkCxXq1gphpARJ3PnnOhvl+D3pylL/pEfQgMLHMI48h0DqLpdcvaN8QSA+WeBHzc+MvvEAS6e5GyVME1exUyySpcLf9wKMgNnylDQD7ncZlnfxW7KhbjMorm7MqIBGJdxJFl2EZONnNbHR+DbRvvsltCSbjeHH8b1QMJSfDeSkeqQD10F2iInk254Pjbej5oIt63DUjXQcERcdcyCykIe77YM=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(136003)(396003)(39860400002)(451199021)(46966006)(40470700004)(36840700001)(70586007)(4326008)(356005)(186003)(316002)(82740400003)(40460700003)(478600001)(6486002)(34020700004)(82310400005)(36756003)(70206006)(33656002)(86362001)(40480700001)(6512007)(2906002)(4744005)(6506007)(36860700001)(336012)(2616005)(26005)(5660300002)(8676002)(6862004)(47076005)(81166007)(8936002)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2023 08:48:04.4833
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 65892639-6d68-4ca6-c3f9-08db4ae9f1ab
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9494
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 08:48:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59832



> On 28 Apr 2023, at 19:56, Electronic Consult via lists.yoctoproject.org <=
electronicconsult1=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Martin,
>=20
> Thanks for the pointer, I manged to get the recipe working with your help=
.=20
>=20
> For anyone else looking at this the issue was resolved with this.

A better fix would be to simply use the gitsm:// fetcher on gst1-hantro-g1,=
 that will fetch the common/ submodule automatically.

Ross=

