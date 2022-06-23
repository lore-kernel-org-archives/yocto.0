Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEA12C43334
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 16:10:48 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.58])
 by mx.groups.io with SMTP id smtpd.web09.235.1656000645743230627
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 09:10:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=KDvLeA70;
 spf=pass (domain: arm.com, ip: 40.107.6.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=VHblIny9VehaRNg2E/UZXX+9/qTaIQpgcoTkYY0IiItHW77GIQb0L3y5x5ye1y5DyhiUHIghsixMJ3ldAjGBKeBP3u7BAWAFipMllMwzHOWAOFaKk5uknUNOT/zplRQ5d04gTryyYA1nF7AuzNsEAwTKI9hHGOA1xpCb5K1N1yD2Cl6WzqUbJFsM5Pty/7cY0rnhXQ/7i4Vw952O0XR33bTgs8jJzszMag7nOT6iOFi+NkMhQs8m//v9Pc7T4cb3g7b4IgfAB4hKfkGFAedo7IYNdSmB6RmS2SxT4H33pZh5tE3/vl8du0qfj4K7XVnKBiwuCeT49w9YFYwu6Yryfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qiCMgYUZvM5bW5XfcrqA6PMOXRiyuEhruslcQUbP6m0=;
 b=igT2Hm5NfEqM3gIUWRiqoZyAwjFDhcKV5JFqcoRF1qGB1dlJGZqhNyzZQ69iar0ljVp5eiKz5/2BH7aF086dpS8hDBhQGmZ3vG98H+iggjwChe9FemxrxTYLFR0v3xXjXLTvfZhNAsuu2FbZdl0aMzIQaiHtg71y3wtedue5hEjTsijO1IszQEeBt3/RTLUzL9HmlE0LHyVdD7BINVTfpqRJBDDNei3uiPNWE90F8LnCyZhFlz4LGgJ4u4v7E6RMl7At5xaciajU3/1m3+mVal/zR7eVY9LC0aYiIL4M8FqzqaXyqyjtOZUG9atNtbqdrW0C3PLqTH+abRP8jgKnow==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qiCMgYUZvM5bW5XfcrqA6PMOXRiyuEhruslcQUbP6m0=;
 b=KDvLeA70f3cNHCqiB5yn42ZNnjCstjMHxOA7R6Bcnlp3j9C+/31XoNrTxVYNsFfHBunsQrVD+m/Ew0HUkGvNDbT+89hHwiLVI0jb+dKVFQllRpaMPDkFfpMgG72HH118SEdX4IYiVqRh7g51LtTmUPOnyxm6S+fCBmDPpMJkiXI=
Received: from DB6PR0201CA0028.eurprd02.prod.outlook.com (2603:10a6:4:3f::38)
 by AM4PR0802MB2337.eurprd08.prod.outlook.com (2603:10a6:200:5f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Thu, 23 Jun
 2022 16:10:41 +0000
Received: from DBAEUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:3f:cafe::da) by DB6PR0201CA0028.outlook.office365.com
 (2603:10a6:4:3f::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.22 via Frontend
 Transport; Thu, 23 Jun 2022 16:10:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT051.mail.protection.outlook.com (100.127.142.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.15 via Frontend Transport; Thu, 23 Jun 2022 16:10:41 +0000
Received: ("Tessian outbound 5b5a41c043d3:v120");
 Thu, 23 Jun 2022 16:10:40 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2678a7090afce5b2
X-CR-MTA-TID: 64aa7808
Received: from 904968a5e26b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 99D1E112-05A3-403C-897E-9AB373A8E3AB.1;
	Thu, 23 Jun 2022 16:10:34 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 904968a5e26b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 23 Jun 2022 16:10:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D8yIivGOGd2gtZiXfCpzcfZBxXUzmil2eswwzxyMVWrOQCdhSV7OvmIyOZ1q3QJv5JFMPWJw1MIPi/YBvyNFQQ3jaT52fxyvHHX5sWpstQiAZXrwg9gagMBmlRhibU1pCBuPt09n82nQCLOZ+7ajlG1UgOelqPh5O+F11J+2lmtKt2A0IDSZnrhzkqi7qzLruhnRtokGPlSV2fNW0bDQh4J/ZO+rQW3SBVHjwFNwMmAVSv+AhoAJWlbWYqKa/zEQIyIbdZ3Tzix2NwDG8x/M8VDIYoN1/dXnXpcIZA9ttrHfm3GdWKlvQ5QhhLMiyUZFTwxvAKbN+lx7eohUyesbJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qiCMgYUZvM5bW5XfcrqA6PMOXRiyuEhruslcQUbP6m0=;
 b=L2QUXJVNyNhdVvmv9TCGzH8VyUuh/GEiqWhLKuTooL/Yku89XRIN882k53exPnucn0PqCpw9Ze6vpn/9d+5sWKNqWHjEB+oxUCwHoaBWMbZIcMwAEJcDrt1yH1LaWyb/yRu1k9c5Z+XcX5wGJ6zzrkYf3yWLIEpKxqfJOatbCfbrMvFlZMwlN4qHW5ZNTk8UO5MaFDajEKHFhSfbIpDdzpy+nDoW51XCFABkcNuqezdUDKcJd4EjOrWHhPzhLqHz3wyuGG2bxpEkKjbXvXdCJUksuZlaetUXXuuNHZqm3c8ftW5wXIGQ3QQSi16oIdF/KPxQ9UoLNfOP+cdV/ROkKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qiCMgYUZvM5bW5XfcrqA6PMOXRiyuEhruslcQUbP6m0=;
 b=KDvLeA70f3cNHCqiB5yn42ZNnjCstjMHxOA7R6Bcnlp3j9C+/31XoNrTxVYNsFfHBunsQrVD+m/Ew0HUkGvNDbT+89hHwiLVI0jb+dKVFQllRpaMPDkFfpMgG72HH118SEdX4IYiVqRh7g51LtTmUPOnyxm6S+fCBmDPpMJkiXI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB6368.eurprd08.prod.outlook.com (2603:10a6:102:159::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Thu, 23 Jun
 2022 16:10:26 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::5099:2a51:e4ef:7405]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::5099:2a51:e4ef:7405%3]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 16:10:26 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "aurumnitrogen@gmail.com" <aurumnitrogen@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] source-less python
Thread-Topic: [yocto] source-less python
Thread-Index: AQHYhw8MQF5cyPsH9Ea5B+RganIgva1dKWCA
Date: Thu, 23 Jun 2022 16:10:26 +0000
Message-ID: <297FDEC7-CA06-489E-A35B-35A9148E1FC4@arm.com>
References: 
 <CAH0OAGRgTDTeW58mNx=UuDEdbVC=LuJ_=mCs0ZiOL3GwjMNzew@mail.gmail.com>
In-Reply-To: 
 <CAH0OAGRgTDTeW58mNx=UuDEdbVC=LuJ_=mCs0ZiOL3GwjMNzew@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: b626c6c3-11df-4180-c2aa-08da5532eb43
x-ms-traffictypediagnostic: 
	PAXPR08MB6368:EE_|DBAEUR03FT051:EE_|AM4PR0802MB2337:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 ZXn7B39O6aCbOj435sVeoCT4Cx+NM/BgQvRSGa8JTNSUhKC7qa5gPwEcmwX952X2jq0GE+ZJVXX0oL0qDHr4y/4eIRWk8gaVrbS2lFN8VL8j6dCMwTJa1GIDzhYEKRkyI8EARdw3FkXZ48hoSnkRIzzu+8XjY9yklFVGoKas1A1Uke3TrI20+ZEzi9R9f/+X8jNIbII9J5yhprnQg/dGjpSCWh7Lb3dqAJ/J5rtZ1Jbr6AwNOb+Kh3da2it2tcRqhyzMFPbyRMk43KcHk+UPTPMHkjJw33sypHb/H1ohhdvQLW+4WQN7W44LCssyqAdSbrJGU5BHejsUNtIxc3AYA5bece6xejxsXDYUTXY3h2vgG/LFCtKPxFCZFHZK/Ey+iUYDf/yqv8EbBXq+mGzKAJWXYo7hXYBzc53lOhYyDx7g/ypaCq1S1VOhpqhomRA4qZPlINsCkquZ01+Pp+FZ/eKTUC6svJ3I1gh5tCWVdPCxUWnVlp/NhOfejIwL6+1mpYPiyeXwcaaGZXgt2zk+bS5hoQq3BEX3KbN1izymezEs2T7FYmwK1pFxdJUP4l3QAVDcOzEBfSYQofWw945FoG0bxJupNauBa7yRovLRAZFsl52lCtJtrX6X26dOqZKIGqULfwW9RXfBEuq8dZ6c0xq5kRHNv4v96TAUEV/crKihwhOxCAaz0V79dSYEt4hE3D6cxyjbzJMUVhjCUfmKPfypnvfhHx1LJmsaMoxxz/Cjc2u0ZzE+UZXnuqzIBSMCEPTrdtFFpbRSeDlPGgAJB4Y7kn8phvtrlfros2Z1oTiMq9zyrxy1w7m+p+1AwlMu6hM7F5+jNbCXmzGcinl37OoMmxPGjuZYl1Dsvs2a4Zg=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(136003)(376002)(366004)(396003)(26005)(6512007)(66476007)(64756008)(86362001)(66556008)(53546011)(66446008)(4326008)(41300700001)(2906002)(83380400001)(2616005)(66946007)(91956017)(8676002)(186003)(6486002)(76116006)(478600001)(36756003)(122000001)(6916009)(71200400001)(8936002)(966005)(6506007)(33656002)(5660300002)(38100700002)(316002)(38070700005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EF39A76E0D3D3C4991534262915AB01E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6368
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	36dc84ef-23f1-437d-cff0-08da5532e258
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/ptHFD3BpeMlhijjvRiHd4ryZ+DeBvd+Ke/rRfjhFE/S6Arl2xD83YCpHHvIZ3ekZvZlNc23umpYGOYtkDHu/wSmEFT5QZEIr/U4ljXgK36jx9QYpc7REl0w/9reVsxgZTTp2IrCaUU/VHIf68xy4Q/AbGH3SyJlTwweCtlm7AFHwKhwv6wwIUUz1wI4GfV2WWjuBFr0N71ydrrHOGS6+dWSmKua7XCZT5C29jpBpUZKOD0o02EXpjWDzw+ZoEAG4T4FY6kQTejrTB6GXQpvmWNbelHquPPnmEAqOTlgmC28B6LkhvxXf3KR8gN4oAWkB+2rYSVUDGsZb9QFSFIc1tBFeqeunXg/bjw86w2HSZf0z1zAG6d+jzDUTvTeJMMyXMHLtCIhChW/YVYdYGMuws84ZApVzN7T0asVTfyfaj8s0N7rQNE2tjsOYQWGtQrn0LabBb/uF5FaPLiind2i3f8k2JxlQe3UJKQ1FueO//IWm1WzA4PHWUpgUKUFPwnDW+0r0uIzGLnLobcNDi2OeJiizG9JHi6iIFBLpzMHCuQJ9Moex6kYUsUlUx4lKcSh4r9kTKTcC3GcmfEQkYE8VFZ3xZuEUjkV+aMyichwtbNlgmBi+HG9sSbH+1pZiE0bpSdX3qIlxdbBNnmXdiE1D5uIfH59e4O7uT5jb5xTabWaVh2wbXzqfikI/+EF2vRK5HpBll9GMaRiAoPm+u7f3muiHxXI8F5YieDpfh1V5zxgweKSLwCtcqF6dYxNCedft0tI1vVdIrwHA9TlhPCfkS2QyR4ZAxOoXkmt6xTr1n7wHv6hP9wKSnlEjn7nFJB5JUhDwnHYasWSa8yASTtiag==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(376002)(136003)(39860400002)(36840700001)(40470700004)(46966006)(336012)(83380400001)(40480700001)(86362001)(966005)(70206006)(70586007)(4326008)(8676002)(2616005)(186003)(5660300002)(6862004)(33656002)(8936002)(356005)(36860700001)(2906002)(40460700003)(6512007)(47076005)(82740400003)(6506007)(316002)(478600001)(36756003)(6486002)(53546011)(41300700001)(26005)(81166007)(82310400005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 16:10:41.0002
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b626c6c3-11df-4180-c2aa-08da5532eb43
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2337
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 16:10:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57386

T24gMjMgSnVuIDIwMjIsIGF0IDIzOjQwLCBBdXJ1bSBOaXRyb2dlbiB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8YXVydW1uaXRyb2dlbj1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+DQo+IEhpLA0KPiBJIHdhcyB3b25kZXJpbmcgaWYgdGhlcmUgaGFzIGJlZW4g
dGFsayBhYm91dCBzdXBwb3J0IGZvciBzb3VyY2UtbGVzcyBweXRob24gb24gYW4gaW1hZ2UuIElu
c3RhbGxpbmcgcHkgYW5kIHB5YyBmaWxlcyBkb3VibGVzIHRoZSBzaXplIG9mIHB5dGhvbiBvbiB0
aGUgcm9vdGZzLiBJIGNhbiBpbWFnaW5lIHRoaXMgYmVpbmcgaW1wbGVtZW50ZWQgYXMgYW4gaW1h
Z2UgZmVhdHVyZS4NCj4gSSBrbm93IHRoYXQgaW4gYnVpbGRyb290IGl0IGlzIHN1cHBvcnRlZC4N
Cj4gV2FzIHRoaXMgZGlzY3Vzc2VkIGFuZCBkZWNpZGVkIGFnYWluc3Q/IElzIHRoaXMgYW4gb3Bl
biBpc3N1ZT8NCg0KDQpUaGVyZeKAmXMgYW4gb3BlbiBpc3N1ZTogaHR0cHM6Ly9idWd6aWxsYS55
b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD02NDM0DQoNClRoZSBlYXNpZXN0IGltcGxl
bWVudGF0aW9uIHdvdWxkIGJlIGEgcm9vdGZzLXRpbWUgcG9zdHByb2Nlc3Npbmcgc3RlcCB3aGVy
ZSB5b3UgY29tcGlsZSBldmVyeSAucHkgZmlsZSwgYW5kIHRoZW4gZGVsZXRlIHRoZSAucHkuICBJ
cyB0aGlzIHdoYXQgYnVpbGRyb290IGRvZXM/DQoNClRoaXMgZG9lcyBicmVhayBmZWVkcywgYnV0
IHRoZSBhbHRlcm5hdGl2ZSAob2YgY2hhbmdpbmcgaG93IHBhY2thZ2luZyBpcyBkb25lKSB3b3Vs
ZCBiZSBhIGxvdCBtb3JlIGludmFzaXZlLg0KDQpSb3NzDQpJTVBPUlRBTlQgTk9USUNFOiBUaGUg
Y29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBjb25maWRlbnRp
YWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSBhbmQgZG8g
bm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkgb3RoZXIgcGVyc29uLCB1c2UgaXQgZm9y
IGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRoZSBpbmZvcm1hdGlvbiBpbiBhbnkgbWVk
aXVtLiBUaGFuayB5b3UuDQo=

