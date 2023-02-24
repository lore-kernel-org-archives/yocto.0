Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFF90C61DA3
	for <webhook@archiver.kernel.org>; Fri, 24 Feb 2023 09:34:28 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.40])
 by mx.groups.io with SMTP id smtpd.web10.14053.1677231265548178435
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Feb 2023 01:34:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=J7zfCmr4;
 spf=pass (domain: arm.com, ip: 40.107.22.40, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dnipl205L75txPIUgThCgw9s+EA7Svzv1tNBXKQo+Xg=;
 b=J7zfCmr4s5nkqaqn12Fmfe7lbykb7PDyMXsc+q45sMZsPDPRJuqdeOMwB4RLc1Ibfb8yR8Ur0Rj3DolGzGe5ayntlLR3l/Tz0LMkk5QCnd2Dom+DcF2fbVs6q6QM+qtSPCEJGfVXmmdvltL0WA8FdQXjqEdWSqk/egaJvxTUhzE=
Received: from DB3PR06CA0025.eurprd06.prod.outlook.com (2603:10a6:8:1::38) by
 AS2PR08MB10375.eurprd08.prod.outlook.com (2603:10a6:20b:544::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Fri, 24 Feb
 2023 09:34:21 +0000
Received: from DBAEUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:8:1:cafe::b9) by DB3PR06CA0025.outlook.office365.com
 (2603:10a6:8:1::38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24 via Frontend
 Transport; Fri, 24 Feb 2023 09:34:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT027.mail.protection.outlook.com (100.127.142.237) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.11 via Frontend Transport; Fri, 24 Feb 2023 09:34:21 +0000
Received: ("Tessian outbound 333ca28169fa:v132"); Fri, 24 Feb 2023 09:34:21 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2f6dc1c66711cc73
X-CR-MTA-TID: 64aa7808
Received: from d5cef93ce704.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 05E52AFB-8CF2-496F-993C-554901913B96.1;
	Fri, 24 Feb 2023 09:34:14 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d5cef93ce704.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 Feb 2023 09:34:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=deDt5yA9jnAUszxRwQbqNHtU+Hahe2nAebMS0AyL1KgWI2GpkpqCvySoi9catWA/L4X0VuLlOQdLWvre9+M23tDCT8Pnwh+piuam8b+QDhOq8lo7A8q98Cwrhusk25fB2to7D2iMshNsTKbvxLxWA+ImQ4ZwhkZO8usSjWUoSsKa/e4gaCRg/qcLMTY+oxiiQ/lhzgK3TwkQy9McyK+Lh+7HZnIhrTwxMkTsXYEKp+aIpi5N1AXkr9+EqNm5tXGYvY3AB4ijULnthowxet1ezIC9Xy/Jp3Yb0+9mrp0LVouEbXNm8Lyc+gyxiX3YQsCftqblt9Xqx3za95eDoyy8wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dnipl205L75txPIUgThCgw9s+EA7Svzv1tNBXKQo+Xg=;
 b=h0rnAfx8tvz6jyrXJeu+a0ecnMKEqXD7wQEtNw5HM3OuYS7Ut3ciMsc/9yP7u8ij/irgIvdimHtj5XLTW0IZYLcZdebIxARj6peQzKs/CrREiwi1XJG5ghiEeBMXvp2b9XwhBUUSuZaleifLXQ8KayqeHs9tNrsR4smHfw3Nv3KC5lkew2j9Jo3WDjKupY/kw0AY4VyD6EACTCuoCJUP4QpOBiSWZZLDY9fgDClNJgEQLIIM4Mgu6tzxHHMzxFC0uNnAPfrr5TyS92r2efOZWF/NQvqs78iIQhEOx/HzVQfQukiBjbl2E5YqT6JclNwWqseVB5CQQf4iA4vKXJujSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dnipl205L75txPIUgThCgw9s+EA7Svzv1tNBXKQo+Xg=;
 b=J7zfCmr4s5nkqaqn12Fmfe7lbykb7PDyMXsc+q45sMZsPDPRJuqdeOMwB4RLc1Ibfb8yR8Ur0Rj3DolGzGe5ayntlLR3l/Tz0LMkk5QCnd2Dom+DcF2fbVs6q6QM+qtSPCEJGfVXmmdvltL0WA8FdQXjqEdWSqk/egaJvxTUhzE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB9710.eurprd08.prod.outlook.com (2603:10a6:102:2e2::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24; Fri, 24 Feb
 2023 09:34:11 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6134.019; Fri, 24 Feb 2023
 09:34:11 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mubinicyer@gmail.com" <mubinicyer@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto bitbake unable to find debuginfod
Thread-Topic: [yocto] Yocto bitbake unable to find debuginfod
Thread-Index: AQHZR7FjHfPg1sNSN0e3fKdPnKX+4a7d1t0A
Date: Fri, 24 Feb 2023 09:34:11 +0000
Message-ID: <C48CB41C-AED2-4B68-87F4-3977B70432BF@arm.com>
References: 
 <CAA9KBABu4LUUNeMygWMvrvrPgk_0tXFvnvXu6bg_6k1Vz29qhg@mail.gmail.com>
In-Reply-To: 
 <CAA9KBABu4LUUNeMygWMvrvrPgk_0tXFvnvXu6bg_6k1Vz29qhg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB9710:EE_|DBAEUR03FT027:EE_|AS2PR08MB10375:EE_
X-MS-Office365-Filtering-Correlation-Id: d7a18168-c3ed-4847-5c14-08db164a4f3b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 gmaKhJYkdYjR4TQgSSTYo2EK1SV+9I54ouf51vQ5zizGv+fSH/dkW9jjcrb0xIRu56h/izqKFxZmcUQEuumxEu2L67qDlgeETqzrGseQDFjdGrFnA3/GANuvjXW1O6pUxDDnjTtvF28Fe8CGPKrByKoERyjKcmlY/mHi1wAH9rwFI9twZdesKNGq8U0Y9TwUXMm74JHGs0NzwXQCaFZkjBadavO93SWvB6IiNm4eUsHJhFx9L1UTa5fuAv3KhGGNkO4IjKeIHKs27nZwiIz92poQT+QyerK8HoJIwp+Zn8wpceAYpx0PsvPnGbL/oTM9F8FAGDUG5APrUuRxEAPKGgfGT9/OUH0yDQz1MrluDcNnNbLhYs6sF3OZ1hDnk1JKV9O9qCP/Zdu5XMPfakOkdESTjOAWXO0iIMlcS5uZDKrhSrvZ2Y11Zvk7hqgryrrDiSiwoPCMxRRGhlmwl7ooHGoHahFI8P+FiosFM/ODvHPsMRuIBPyPmyhTGYjvTA/J0P8ajVzhGToS/yKLYLVKil8V9WzJKJ0/G6i9QPgkMkc1Kfn3N7dODB3j+7VZ9emYQWqdUoEQ/S9rVSRkMPHv1uMgwadaoFeGVJXgiHAuoWXgVwhVOeeGa96Ggo5Sh9wSqrnRECrpFKsoX9k5LUgw8r2KqMWEtEBJ90HlisYSKS0PwWKEGirxWqZQ2NgfErDCXKbLA0/a/xPC3HiPTRxL9oyjYwqWKQsD0oyngizGTDq5zMznllXoxdyW/BiGjolZ
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199018)(2906002)(83380400001)(2616005)(38070700005)(66574015)(122000001)(38100700002)(8676002)(66446008)(66556008)(64756008)(66476007)(33656002)(4326008)(6916009)(66946007)(8936002)(316002)(76116006)(91956017)(36756003)(4744005)(5660300002)(41300700001)(478600001)(86362001)(6512007)(71200400001)(6506007)(186003)(53546011)(26005)(6486002)(37363002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <4887A5EE185C3D4BB06178270C1E6AE9@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9710
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	66c894a0-49e7-4f2b-1938-08db164a4949
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	d5R7qWCvfikNjVjCwswf9nRZ3r/8ouGEiQbOPpfm2AfhdukysV/gvbFmz2ELMll9Koc2+1comodaMt+7eqdjdXdFD4h38mrbnQXSkgBradi1afBZBB3datbtqMPAJKVRmTaTuk8v7kNklheMdWkVpUCvumAdwlY4+caL8PzbkprYOZkqaE2jzYygmnkrNF9+4CaJ7V7gZnlMtxG1H6MnssCvdxNJMm8U2y8MrNeNVQ0o4Tdj7xGvAPs/b30alIDXNRNTeZPCIH2zNLd10lrkpvDDlWGpMAFja9IDCA7ra7YDu8P9NLR8TuMfdbP5Foe/AGg6J4DEmaJhV5ujUUBr+sEVHfaBblJKA7xAKmklsf6GvRWiHth48HupFUOj0Wk1W5G+k/0LdGEmBvv3alpwtDafsdayx5MV8MA5oSNe4JgYvFfXY+x+j1dkZNeOhFT8qiaegxZgTDmm3WP/Or6zftEbvhaHIDIa7Hu6cqW6M4+PGrvIT5gN8xksoR9YxdH9KU6VkwlkR7Xl5hq2Stpa5VFk9GC4UIE7x+gXe4cnQV5Wqoor7UUNQu42YuAmeS+fWlJsDokMWz2uTVBlhr6cyxI+30/wZOs/0td13myzVj/eWSs1gbioB9byFqaolp75bh7UmtRl2JYtyC95Nzwlp0SHp67Cz70yW4AlbDAKaZdAKFuTL8G3RJmyD/LxGfVjbuwUz753cCyZ8DXTt6pSAPJwsuP5PHx5/NFo8LIr3Sw=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(346002)(376002)(396003)(451199018)(40470700004)(46966006)(36840700001)(186003)(26005)(2616005)(36860700001)(6486002)(336012)(6512007)(5660300002)(6506007)(66574015)(47076005)(40480700001)(478600001)(53546011)(316002)(83380400001)(8936002)(356005)(4326008)(8676002)(6862004)(41300700001)(70586007)(33656002)(70206006)(40460700003)(81166007)(86362001)(82310400005)(36756003)(4744005)(82740400003)(2906002)(37363002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 09:34:21.5582
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d7a18168-c3ed-4847-5c14-08db164a4f3b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT027.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB10375
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 09:34:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59295

T24gMjMgRmViIDIwMjMsIGF0IDE4OjA0LCBNw7xiaW4gxLDDp3llciB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8bXViaW5pY3llcj1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IEkgd2FudCB0byBhY3RpdmF0ZSBkZWJ1Z2luZm9kIHNlcnZlciBpbiB5b2N0byAz
LjEuMTcgYnV0IEkgZ2V0IGVycm9yOiBFcnJvcjogVW5hYmxlIHRvIGZpbmQgJ2RlYnVnaW5mb2Qn
LiBJIGFkZGVkIGZvbGxvd2luZyBpbiBsb2NhbC5jb25mDQo+IFBBQ0tBR0VDT05GSUdfcG4tZWxm
dXRpbHMtbmF0aXZlID0gImRlYnVnaW5mb2QgbGliZGVidWdpbmZvZCINCj4gRElTVFJPX0ZFQVRV
UkVTX2FwcGVuZCA9ICIgZGVidWdpbmZvZOKAnQ0KDQpUaGUgZWxmdXRpbHMgcmVjaXBlIGluIDMu
MS4xNyBkb2VzbuKAmXQgc3VwcG9ydCBkZWJ1Z2luZm9kLiBUaGUgdmVyc2lvbiBvZiBlbGZ1dGls
cyBkb2VzIChhbHRob3VnaCBpdCB3YXMgdGhlIGZpcnN0IHJlbGVhc2UsIHNvIG1heSBiZSBidWdn
eSksIHNvIHlvdSBjYW4gZWl0aGVyIGJhY2twb3J0IHRoZSBjaGFuZ2VzIG5lZWRlZCwgb3IgdXBn
cmFkZSB0byBhIG5ld2VyIHJlbGVhc2Ugb2YgWW9jdG8uDQoNClJvc3MNCg0K

