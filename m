Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30B97C7619A
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 10:55:09 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.74])
 by mx.groups.io with SMTP id smtpd.web11.31886.1679914502732198638
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Mar 2023 03:55:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=EO4qLNF9;
 spf=pass (domain: arm.com, ip: 40.107.249.74, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFjXJwBy8R/+OnbxUI1XdOjpyLGC9xj7lr36r9fmL8g=;
 b=EO4qLNF9QaZOHLNfU4vgjndgDXRHXNZMdVBNQSClxoQJm3yj4XTus+7lrgGvFMPd5GiQFtCn+hXzpUDvs0Xw0+cehYaz/FSt00uguiLRorueEKTgEaD7T6WLAHJTYCvFzT7x4Q1TQ0OVll0iYrlrL0TTs0+Psu5rOu0bPXcG5MM=
Received: from DB8PR04CA0028.eurprd04.prod.outlook.com (2603:10a6:10:110::38)
 by AS8PR08MB7356.eurprd08.prod.outlook.com (2603:10a6:20b:447::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.28; Mon, 27 Mar
 2023 10:54:56 +0000
Received: from DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:110:cafe::8b) by DB8PR04CA0028.outlook.office365.com
 (2603:10a6:10:110::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.42 via Frontend
 Transport; Mon, 27 Mar 2023 10:54:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT057.mail.protection.outlook.com (100.127.142.182) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.22 via Frontend Transport; Mon, 27 Mar 2023 10:54:56 +0000
Received: ("Tessian outbound e13c2446394c:v136"); Mon, 27 Mar 2023 10:54:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0cbe81d71bdae083
X-CR-MTA-TID: 64aa7808
Received: from 42da9e8cd730.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 6262E17D-9C82-4EB5-BD7E-80A130DF1104.1;
	Mon, 27 Mar 2023 10:54:50 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 42da9e8cd730.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 27 Mar 2023 10:54:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2u9njoEO9+q5g1MwB2FM2syQOK6VcTkH+kT9nwuBbBXkMrIXNFLmGMQ5/6dYHs5R8DnC+A2z/U7HMIjQhPjDExC1MARHpAfq893HV6FfeLRloOQrYH0p5MX4dorVeeNj3N5Bllcz8maIeGyAyIAUmBC6AD0VucTuOqgQHhkmtM92ivIAaYrYE8FhLuWAK2a6Jgp9Y9wsoDERwC3QUz09D2Hx0h6iEcvpyPKrjnM2Sgak3M9a5q3nF2CaJXAmBWDT/4aGrg9RhjVuYY8TBTUT4mmlWIBcBuaYQQehPJwFGYYJxlapEHyO9QjvGfYmTjX1f0ieBmwOaBOHVyqg5Tv3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FFjXJwBy8R/+OnbxUI1XdOjpyLGC9xj7lr36r9fmL8g=;
 b=AxAxtVERkhdB42O2vGhMZ30+3w5yIkgJmMlmswcSMSaMmOt38kwmdzZ/lzOsI+lxm9U2cn4QAsjGOCicEKjUJAezgiHa8vho6UsEuHb52C0bSOmTH54WOHWt0uXCXv8QU7kHAkzclipceoFIHeI0EpsJIPMFoERJ6/8F2/fPsiVC/Rst32PgH0O4hDFppi5l/P1KhBjOxFa+sFDZlGw2rB8j807pUz0nDAXuipbfLcrMuEV1grEswwr6aAcWurdENp1CwKMoUN0tuU0cPgMz1HBEM938pWsKaH5Blfh15jVNK6twLgmkolAIVOr9AY2sEYiklwe5Inh/SnE5/orbuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFjXJwBy8R/+OnbxUI1XdOjpyLGC9xj7lr36r9fmL8g=;
 b=EO4qLNF9QaZOHLNfU4vgjndgDXRHXNZMdVBNQSClxoQJm3yj4XTus+7lrgGvFMPd5GiQFtCn+hXzpUDvs0Xw0+cehYaz/FSt00uguiLRorueEKTgEaD7T6WLAHJTYCvFzT7x4Q1TQ0OVll0iYrlrL0TTs0+Psu5rOu0bPXcG5MM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9038.eurprd08.prod.outlook.com (2603:10a6:102:32d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Mon, 27 Mar
 2023 10:54:48 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6178.024; Mon, 27 Mar 2023
 10:54:48 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "hrsourabh011@gmail.com" <hrsourabh011@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto build error | AttributeError: 'LooseVersion' object
 has no attribute 'version'
Thread-Topic: [yocto] Yocto build error | AttributeError: 'LooseVersion'
 object has no attribute 'version'
Thread-Index: AQHZXYTNh3EcL6nI/UCx+YzCTIn9Rq8JxG8AgARqlACAAEr+gA==
Date: Mon, 27 Mar 2023 10:54:47 +0000
Message-ID: <D1BE0BC8-9735-4407-9788-958B143B62CB@arm.com>
References: <F36EC375-5C4C-49D2-822B-44706FE2B426@arm.com>
 <32718.1679898372681689337@lists.yoctoproject.org>
In-Reply-To: <32718.1679898372681689337@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9038:EE_|DBAEUR03FT057:EE_|AS8PR08MB7356:EE_
X-MS-Office365-Filtering-Correlation-Id: cbaf16bc-7c53-45bb-1330-08db2eb1b3f3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Mg3SpuM9L53szfFPfOw2b5d2uPwdu4CxZRwukcFea9w1AQNVLdR8fCoIiwjIYon3eV4QngSqEXjxB2O1DrOl5ACqIfpSvHJDdCAE4a76qzwePrdnzuDtCsjmqz7IJRnWibjfK8logGAV+tgjNnzUfbKIkWSmE1Gr5EDNv9DVtw3S3Kdyn4KmcYSYMU0tUDamJX4ngR95dGDt/0/yA9rraLvsNnyiDyerMZ+1oPCEAUHnL74ltLThPI1aEgmne50nDpYkV5bQQwtUl30zGp84MlA3Vv9NM6FWQrtd/kNlcF4mBj+VVhRpfY5V7DLGfUgl6GsZ9GU28JKD4yWVB4anYSj1ZhWxq4Xmp4uO14c58hYeVYJzoHoWKv9VLh2jU8mjF4Am6OAWSBTrnwKD0LlGWL9jso0lCmdMI+OfQ//0c3aPuJC4LH8bQGrBFdpfC7teD11t+fgXF8LPeY6IrgSW4A23/Yy19OztAsCToyfiSmxsGmbF0YqInX5xio49OgXpAEcakWhf/8wW5kiJ38NxWfWSwRbrnZMfoa3tNlNIhcm6PMTc3YL5F9L6JRcxOlr3+MBuk+HoeB2Lbzteh3Qqeh4U9PmvnBJzq6YXt6kewyy05AphgeDfO/F+JwgQm0P592cdp0ORFHadoRULAioDrw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(39860400002)(376002)(136003)(366004)(451199021)(186003)(6512007)(4326008)(66446008)(6486002)(71200400001)(53546011)(38100700002)(8936002)(38070700005)(2906002)(5660300002)(86362001)(91956017)(33656002)(122000001)(6916009)(66476007)(64756008)(66556008)(36756003)(83380400001)(41300700001)(6506007)(4744005)(2616005)(316002)(76116006)(66946007)(478600001)(8676002)(26005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0AA64D9E5986CD4E86EA732385116973@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9038
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	8dc068d2-0625-4a44-18eb-08db2eb1aebd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pb42+sLWUE+emZMikrTTbIXWG9UQ0TrTWvrUhmtzyaU8e5+/UyvhXQdOSnr9XwQLGP8S8+wO6SBv5qJkSETtBlmUcdHU3D0JEhv61GJHEUqGq67Hv9/0UNKoqY4lmc9yBgQ6/rcoFj+aetqdFULD9L/YlILfMfFBEHz5S0w+qdzwxamW4ZPrFwwTmsjpel0JxRrI+xcUIttq8poUMuka87moYH6hArB+s69ZZ18s7MmrBRcruTf9V+XXydn0RfoO9zlddKZw6w32vOAGn6md5+PubGPD4et3BymQgYGEFV/4UGe+OaQhGyXCBx7p9B2xEDnWpvHmXIavyCOwgaJvLcnJRH7O1gaGxkSkEIsfL6egj+Gk7yULAaEMbEyIXIrnB8MbNd9DJpibFymcSKtilX3gwh4IMnhqQHFf4tKV0OlGCcH5JTxZ7fUqUzizJv+vEpS7p7c49YnvRqsz4X4TT3J7wwLpWPC+SzPPqxfMQ4HY9IhqPL8VSLd1eFfrTX9a9o0kmbg/k6PCnjN2mmr9GMbm7RNy1fdBvdoaczh1/aEP9Xl2zST1oEM8RZuPsz+ONbVbl3ahl2bHF8uLkNhaUQJPztjexEx5hmB/FaB/QUD1a/sK7u1eaylbyjA91xLX2zTHDB9OaHQ2sNUSlU+un6OyBvAlBDoLW3tEW/D6ZpljkT5mzhRM/6Y+i7gNuw+OtmkdxC2OHbQ1LpOGLfDx8w==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(396003)(346002)(39860400002)(136003)(451199021)(36840700001)(46966006)(40470700004)(81166007)(82740400003)(36860700001)(40460700003)(36756003)(40480700001)(33656002)(356005)(6862004)(82310400005)(8936002)(86362001)(4744005)(5660300002)(53546011)(6506007)(26005)(186003)(70206006)(41300700001)(70586007)(316002)(478600001)(6486002)(8676002)(4326008)(6512007)(83380400001)(2906002)(336012)(47076005)(2616005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 10:54:56.6041
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cbaf16bc-7c53-45bb-1330-08db2eb1b3f3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7356
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 10:55:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59525

T24gMjcgTWFyIDIwMjMsIGF0IDA3OjI2LCBTb3VyYWJoIEhlZ2RlIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxocnNvdXJhYmgwMTE9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiANCj4gSGVsbG8gUm9zcywNCj4gDQo+IEkgYW0gd29ya2luZyB3aXRoIGhhcmRr
bm90dCByZWxlYXNlIA0KDQpGaXJzdCwgSGFyZGtub3R0IGhhcyBiZWVuIGVuZC1vZi1saWZlIGZv
ciBhIHllYXIgbm93LCBwbGVhc2UgdXBncmFkZS4NCg0KVGhlcmUgYXJlIHR3byByZWxhdGVkIHBy
b2JsZW1zOg0KDQpBdHRyaWJ1dGVFcnJvcjogJ0xvb3NlVmVyc2lvbicgb2JqZWN0IGhhcyBubyBh
dHRyaWJ1dGUgJ3ZlcnNpb24nDQpBdHRyaWJ1dGVFcnJvcjogJ0xvb3NlVmVyc2lvbicgb2JqZWN0
IGhhcyBubyBhdHRyaWJ1dGUg4oCYdnN0cmluZycNCg0KQm90aCBvZiB3aGljaCBzdWdnZXN0IHRo
YXQgTG9vc2VWZXJzaW9uLnBhcnNlKCkgd2FzbuKAmXQgY2FsbGVkLCBtZWFuaW5nIGl0IHdhcyBw
YXNzZWQgYSBOb25lIGluc3RlYWQgb2YgYSBzdHJpbmcuICBBdCB0aGUgbGluZSBiZWZvcmUgaXQg
ZG9lcyB0aGUgY29tcGFyaXNvbiBpbiBzYW5pdHkuYmJjbGFzcywgcHJpbnRpbmcgb3V0IHRoZSB2
YWx1ZSBvZiBtaW5fdmVyc2lvbiBhbmQgYmIuX192ZXJzaW9uX18gdXNpbmcgYmIud2FybigpIHdv
dWxkIGJlIGludGVyZXN0aW5nLg0KDQpDYW4geW91IHNoYXJlIHRoZSBlbnRpcmUgYnVpbGQgb3V0
cHV0LCBzcGVjaWZpY2lhbGx5IHRoZSBiaXRiYWtlIHZlcnNpb24gYW5kIGxheWVyIHJldmlzaW9u
cz8NCg0KUm9zcw==

