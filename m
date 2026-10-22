Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23127.1792676553152883650
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2026 06:42:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=q1RVrH1n;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=q1RVrH1n;
 spf=pass (domain: arm.com, ip: 52.101.84.42, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=bJLtUrW5I6KxuNDm9edJECHYE6Y6OGIMQ8U3bX91r7cclVSNNF65RKfVqH5YWLtPLth/Ni3WktDyCZzJ010UA0T/YJ5NYiL+HH55m6s0sWpKRX6L1no0PNq2oFxnzO8YDpw9++qQVnXYBN/Sj2vqGLjX0+kVGkVMqdJr2szRu1WnXsjARXRqk6vvLbKMMSPLugbPG+8K7HQM+cqRhosTJCBpDtIV2dfMHVe9OEi3a2qQ7QueInozvJ1tH9SHq/Cb0cNnmrBtSFLLRgaZFCw0uHI2uUZFH11Rl6QDZMQcB3KWaNdOPfZXmakv7sRhxhTDzt5uzD1f4XFWtTf6vnqQ/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6SZPP0xNW5sRFKLC72JP80O3xoTxDPW9fA8z1kaK44=;
 b=IdTrvl45E53elhtNsrBMI4jFhIxnqijuiOAoW0DZqsVxocTYhI9Cg0EmWOXApaeNxqNDdFbocAHBQCeDo3Yqmj3DmmsBVLYyHpaJJS7rKrB4HBV+2xxWbDPAz/sO3sTIep+pEU8F/luX1IvsxE6enOM0uF6w9MOCNJjXBaSSEKj/6zQAAArkT8M6gXYNS2+Ak4vFZUwj9lpqT31/HOZ1lODmPGftp/vJrNhHKT/smursHIscicjTIqmPll2v/yEIJxMxIONFvLCEEgLgarm54qkJ3fHlLv5aCKGcuhZi/DFnrWIwlzTbIAmuv0aAU3lGzQqgdqtcCTeI5WyUvfNXlA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6SZPP0xNW5sRFKLC72JP80O3xoTxDPW9fA8z1kaK44=;
 b=q1RVrH1n9v4Jf1cfVbTMacZ8Of38U3PysA1w72UiGHuJRZ2Ym7jvWiqnOBTetCHxO6yAJ2KNRudgi7uUsUoLquM4h0D7fT6XYjCbvyh98BWA12mIxTNaUvj9xWcq1hPqMYT2p2X0IaOqykcBK4W6tgktawgYOT08QCChfyzhqrs=
Received: from DU7P250CA0012.EURP250.PROD.OUTLOOK.COM (2603:10a6:10:54f::25)
 by AM8PR08MB6372.eurprd08.prod.outlook.com (2603:10a6:20b:369::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.16; Thu, 22 Oct
 2026 13:42:28 +0000
Received: from MAD0EPF000008A9.eurprd04.prod.outlook.com
 (2603:10a6:10:54f:cafe::6) by DU7P250CA0012.outlook.office365.com
 (2603:10a6:10:54f::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.546.16 via Frontend Transport; Thu,
 22 Oct 2026 13:42:26 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 4.158.2.129) smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 MAD0EPF000008A9.mail.protection.outlook.com (10.167.241.181) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.21.546.15
 via Frontend Transport; Thu, 22 Oct 2026 13:42:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=omFBX0JG/GQUboIwn4es6vGDyjarBvadXPHocToIlAdkZWD76yegZJsot6zLFKKqRPzV7inFC6AC2VrmidqybdQLQmQGZdAhqPfl4ipiJIIgiB8sZPwG3YbGyn0x/nlNbHVp0lrGmPs6V9mZv8A96yq49VaryXBXKaiCvKpYPFAMZ2Pet83/AhXlJ67o/fprES6kMjrEie8KpytwY/iEM/KLSqpL9OBNUIRXkKS2vP3W1Qajj6J2+MtGqwGa5XlrtTwfdq+aEXuYFGXTEWlc1e0Hfnwu3gM3rSZCNGYnMRC1Qtb3QPcGl/XZoEJ6pgvvTtHF7bOo0zJbZ215hm8d/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6SZPP0xNW5sRFKLC72JP80O3xoTxDPW9fA8z1kaK44=;
 b=QIa9x1PBxdKQvjpAOWgal8DcllVssY0sC9hg8VcbYy8hj8Ul0azj/NFOf45qzWv5pJXdTLAsWU9dNoOCgIdZipSU562gaq7cN7ooT8q9whaF0ss0RivFvQESr2hpaAGWKuyGY/UkLfBd+FQprANkbufbg6l8frbNcO0fhoy4voxr2f7bmFr/Q9jpNn3kTrT8kJh7sGquuV9qbP1XJqhImKoK85kks48g3RfdHYSCTmq3rfodVX44oNupTgqcyF5rFkgjEH1oE5wWHPgwOZjuOLHwPY+KOlPsn67aqb+HTzyoxbCJils2fJ2LWeEOCa4kuK9NpGm436jFLm4SK9YapQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6SZPP0xNW5sRFKLC72JP80O3xoTxDPW9fA8z1kaK44=;
 b=q1RVrH1n9v4Jf1cfVbTMacZ8Of38U3PysA1w72UiGHuJRZ2Ym7jvWiqnOBTetCHxO6yAJ2KNRudgi7uUsUoLquM4h0D7fT6XYjCbvyh98BWA12mIxTNaUvj9xWcq1hPqMYT2p2X0IaOqykcBK4W6tgktawgYOT08QCChfyzhqrs=
Received: from AS8PR08MB9410.eurprd08.prod.outlook.com (2603:10a6:20b:5a9::13)
 by VI1PR08MB5342.eurprd08.prod.outlook.com (2603:10a6:803:132::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.15; Thu, 22 Oct
 2026 13:41:53 +0000
Received: from AS8PR08MB9410.eurprd08.prod.outlook.com
 ([fe80::1f2c:bae7:a4d3:fefb]) by AS8PR08MB9410.eurprd08.prod.outlook.com
 ([fe80::1f2c:bae7:a4d3:fefb%5]) with mapi id 15.21.0546.006; Thu, 22 Oct 2026
 13:41:53 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>
CC: yocto-infrastructure <yocto-infrastructure@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto Project wiki replaced with a a read-only snapshot
Thread-Topic: [yocto] Yocto Project wiki replaced with a a read-only snapshot
Thread-Index: AQHdYX83jt4/bUvo30q+f6IGUtrpd7cJkyYA
Date: Thu, 22 Oct 2026 13:41:53 +0000
Message-ID: <9B005854-190F-4DE0-A2A5-7F17E4816B1A@arm.com>
References: <CADfgfoY-e_Dwh=sEYzREf16iTHynr+2HVeTMLJfJdthUNjj=fw@mail.gmail.com>
In-Reply-To: <CADfgfoY-e_Dwh=sEYzREf16iTHynr+2HVeTMLJfJdthUNjj=fw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3864.700.51.1.3)
Authentication-Results-Original: mx.microsoft.com 1; dkim=none (message not
 signed) header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: AS8PR08MB9410:EE_|VI1PR08MB5342:EE_|MAD0EPF000008A9:EE_|AM8PR08MB6372:EE_
X-MS-Office365-Filtering-Correlation-Id: 76a65aa7-d0c6-4bf4-cea6-08df30424f3b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|366016|1800799024|376014|23010399003|18002099003|22082099003|3023799007|261009223327099003|11063799006|10067099003|261009223027099003|261009220027099003|261009221227099003|261009221727099003|56012099006|38070700021;
X-Microsoft-Antispam-Message-Info-Original: m6BKMOw90DhqGBxtW3A/xYEadl1qXebmaFt9C6/AA93iBLH03IYpoOYv1mTC8KJFl+kTZ9rBBLH69yRp/AfHP2oOsLV07t7cZbZPqFVFMY7lDG6Jzlr5oQmLzVWKM1o3lJlKr947evCvIy3YAVYt0xPuE/ginso09qM7a5OAJrQJSUxklHQMf/MkQvs6HXKfuLeXdr9wX/BgKmx3jbsNLdwXdTrm2B2s2nYKEBkD5uX3KIUJPPghELC42SXs99lGQ/NFCurp+8CC7anRjJ0szv2hq27UP/JqZxgpC1X6Q+lAQPL4uU3zKiV8nn/6uxG7jfoErkUWjvBtRczrDBlJSTjr1iHmiI7Gt2rDsMUNYP4xYa+/xVUVXU1oFOh1h3GKcTH96JQ5ji5fm4zhpS0saQr3yxtdonbPbf6puGE6AK/h6f0sGya/hGv+L++s2SkN0w2YIeLn9VHqd5jav7mvJb31/Np5yd78awHob7atxnwz16l1pjAaithJtN2YAX5MkP2Nsi5Di7wj0fB/1tEt/oYV1bJUyg5HlV5vk3xmqPfaE0nUL/aRGcPZXuA5qGJzYuv4fBAge96lBjfoKcKqRiNlxV37qE3oEM5IZBo4d4Xh/hAsh2Thrk80+HlTyZe6dXUIROnbmSoyNCbcsiBY1L4LWlyQd5d0A3+OkgirIDQ=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB9410.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(18002099003)(22082099003)(3023799007)(261009223327099003)(11063799006)(10067099003)(261009223027099003)(261009220027099003)(261009221227099003)(261009221727099003)(56012099006)(38070700021);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C80D3E1CE3B39A45A09F7742123850AD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: xSxclm0weF2GEFYQYachDVaQyryw8s6N8qmekeuzhEiJB83jOH6aIMRSEefLnJapDSinpfOdrS3t/3G4vWhW1KYmzBLuK/5A66/R/l+tNftHoFsmAoI1CchQZEBT3rRqRV91V+NvFQyZRGbWv7Hkx7m7dagNwyXAlnM5q/LveYjd6BpVMfENIKn8AJgHvvW0KSj+slCMwuucQFNKzmeTTEmWn5QTQu+gOHLW8Jqz0izojVu7I2e0MPW84ED/fPy8f1Ik462+HSGk+D9tvtPowdbxlAZ1NzEuEQ2s4YTrBRxiI4q3I8fZDdZTkIh+WQvOSkJne6Ra3YeZ6UrYwmBr4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5342
Return-Path: Ross.Burton@arm.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: MAD0EPF000008A9.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 394c5094-f2dc-44c9-5a2f-08df30423b6f
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|23010399003|14060799003|376014|1800799024|35042699022|22082099003|18002099003|3023799007|13003099007|11063799006|261009223327099003|261009223027099003|261009220027099003|261009221227099003|10067099003|261009221727099003|56012099006;
X-Microsoft-Antispam-Message-Info: YgZ8yi/hOiCTBxcWYAeZz70D65gqZDhKB3WtpYIobf5/6+m5eFz8XmYwdjXs9iYjfB4xhkj+RZYFKqfR0PbNYQ6ZTQtcbSfFpp6iR0Y/sZ/He1rZvcy79r7t4QugSAphJKpTv3JCC+dSFVy+JCc5CvgqSkp/V6n3Lx0cvzVQfDGp67m5TDFoCZN7jP+CP5BufNIs3ZlXy64DTFhH3EtfVnGidASvR2mpBHIpLBGQEAIpkb/8fICA9EqG6wh9aS3EQuldGIRqlNdu1pnBVqQ342TDQSIlki52eDCSTdbH8r+NGkxQjXTTCaRyd4cz8kq9BYDEOXOwPWuRvwuIMB1/i5NDo4iYjqdasfZ1rK1NM+5OkOe81azEOu0/DQkp3ZCTBnuiYS54HSBLtaZFvi5r3LX7HSGKy+e8YhsSErKlAerA2xrxP0IrIoDoAAaCvT3H/EAiGrBbVpI3fzUmg8lfO6S5j2WwgbBu58BUnRY/V+l+xw2JoDO3WrQ6yBGPOGoYEa4De9vPO5LNFwf9KvLoMdHG/LfpGjcE5MhBKh1FhR5U8ZUjYVifUX/PaUld/PDBV3aHWkrPkqotKdjYmH36pzbucr6gkuIGDgh6Xrxo2PxRC4i//REiz29bjnnh0ZsjgDdapmrucgHxD1MpU0os4w==
X-Forefront-Antispam-Report: CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(23010399003)(14060799003)(376014)(1800799024)(35042699022)(22082099003)(18002099003)(3023799007)(13003099007)(11063799006)(261009223327099003)(261009223027099003)(261009220027099003)(261009221227099003)(10067099003)(261009221727099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 8u5F1JZ0F2rckuaf77yyLHNWWJZ4x+UZkIAfe+UXGD/q0PMBOELJ68uXRGlWbjN4vXPh7wj92+xojNo3AexARJIWmWgt5yCVT+guF009B9luj6CfBxNKpvNuch0MDAkfpa32EycbaP+pX7zgy1egfnJe7AtYOsRfVuqkpnGnOhh3A5HRkk7u+qIQ5hMNXsuM8+is36a0VQoTUB9BfKCoSfBn60YUMHm1CkgnzDRGDvtJcY0CLMPk1EiFLKR50YKPiQUuK8DwzDa6anBt8OtqFuNushSiPt4nAq6VhxcelBjT7JoP2JplnRZBorfUVYpr0SaFtzKuBv9cJJvNcWOpXiD4FYa/Iom6G0V58HQrJlmb4w4dZEWofCsNZ1U8EbKeT2BFxWCTPtq+dd7IeyuulW0By9R1kPAru4SIKDJ3hOxJ5inl/+/2LYRIXs/CNI3h
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2026 13:42:26.3596
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 76a65aa7-d0c6-4bf4-cea6-08df30424f3b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: MAD0EPF000008A9.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6372
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 13:42:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66781

T24gMjEgT2N0IDIwMjYsIGF0IDE4OjExLCBNaWNoYWVsIEhhbHN0ZWFkIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxtaGFsc3RlYWQ9bGludXhmb3VuZGF0aW9uLm9yZ0BsaXN0cy55b2N0b3By
b2plY3Qub3JnPiB3cm90ZToNCj4gRHVlIHRvIENWRS0yMDI2LTEwOTYxOCBhbmQgQ1ZFLTIwMjYt
MTA5NjE5LCB0aGUgWW9jdG8gUHJvamVjdCB3aWtpIGF0IGh0dHBzOi8vd2lraS55b2N0b3Byb2pl
Y3Qub3JnL3dpa2kvTWFpbl9QYWdlIGhhcyBiZWVuIHRha2VuIG9mZmxpbmUgYW5kIHJlcGxhY2Vk
IHdpdGggYSByZWFkLW9ubHkgc25hcHNob3QuIEVmZm9ydHMgdG8gcmVzdG9yZSBhbmQgcmVwbGFj
ZSB0aGUgcmVxdWlyZWQgd2lraSBmdW5jdGlvbmFsaXR5IGFyZSBjdXJyZW50bHkgaW4gcHJvZ3Jl
c3MuDQoNCkkgdGhpbmsgaXTigJlzIHRpbWUgdG8gYWRtaXQgdGhhdCBhIGhhbmRmdWwgb2YgcGFn
ZXMgYXJlIGFjdHVhbGx5IGVkaXRlZCByb3V0aW5lbHkgaW4gdGhlIHdpa2kgYW5kIG1vdmUgYXdh
eSBmcm9tIGhhdmluZyBhbiBhY3R1YWwgd2lraS4NCg0KVGhlIGtlcm5lbCBoYXMgbW92ZWQgdG8g
Z2l0aHViK3JlYWR0aGVkb2NzK2dlbmVyb3VzIHdyaXRlIGFjY2VzcyBhbmQgZGVjb21taXNzaW9u
ZWQgdGhlaXIgd2lraSwgYW5kIEkgZXhwZWN0IG91ciBmcmllbmRzIGluIExGIElUIGFyZSBjdXJz
aW5nIHRoYXQgb3VyIHdpa2kgaXMgc3RpbGwgbGl2ZSEgIEFzIHRoZXnigJl2ZSBnb25lIHRocm91
Z2ggdGhpcyBwcm9jZXNzIG9uY2UgYWxyZWFkeSBJIHRoaW5rIHdlIHNob3VsZCBjb3B5IHRoZWly
IHByb2Nlc3MgZm9yIGVhc2Ugb2YgZGVwbG95bWVudC4NCg0KSSB0aGluayB3ZSBuZWVkIGEgdHJp
YWdlIHBhcnR5IGZvciBldmVyeSBwYWdlIGFuZCBjYXRlZ29yaXNlIHRoZW0gaW50bzoNCi0gYXJj
aGl2ZSwgaGlzdG9yaWNhbCBpbnRlcmVzdCBvbmx5IChlZyB0aGUgWW9jdG8gMS40IHJlbGVhc2Ug
cGxhbm5pbmcpDQotIHVzZWZ1bCwgdHJhbnNmb3JtIHRvIG1hcmtkb3duK3J0ZCBhbmQgcHV0IGlu
IGEgZ2l0IHJlcG9zaXRvcnkgKGVnIGFueSBkb2N1bWVudGF0aW9uIG9yIG5vdGVzIHRoYXQgcHJv
YmFibHkgc2hvdWxkIGVuZCB1cCBpbiB0aGUgcmVhbCBkb2N1bWVudGF0aW9uIGF0IHNvbWUgcG9p
bnQsIGJ1dCBhcmUgbm90IHJlYWR5IHlldCkNCi0gcGVuZGluZywgcGFnZXMgdGhhdCB3ZSBuZWVk
IGEgc29sdXRpb24gZm9yLiAgV2XigJl2ZSBhbHJlYWR5IG1vdmVkIHRoZSBidWd6aWxsYSB0cmlh
Z2Ugb3V0IG9mIGEgbWVkaWF3aWtpIHBsdWdpbiwgYnV0IHRoZSB3ZWVrbHkgc3RhdHVzIGFyY2hp
dmUgcHJvYmFibHkgbmVlZHMgYSBiZXR0ZXIgaG9tZSAobWF5YmUgdGhlIG1haWxpbmcgbGlzdCBp
cyBzdWZmaWNpZW50PykNCg0KT25jZSB0aGlzIGhhcyBkb25lIHdlIGhhdmUgc29tZSBzY29wZSBv
biB0aGUgcHJvYmxlbSwgYXQgbGVhc3QuDQoNClJvc3M=
