Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803FC88E73
	for <webhook@archiver.kernel.org>; Tue, 15 Sep 2026 08:50:13 +0000 (UTC)
Received: from MRWPR03CU001.outbound.protection.outlook.com (MRWPR03CU001.outbound.protection.outlook.com [40.107.130.84])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18815.1789462203485734722
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2026 01:50:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=NIYAU3YI;
 spf=pass (domain: topic.nl, ip: 40.107.130.84, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yduD28dwGTdlZWd8/jDN5sN9Ywg6Tgv916prY2sj137mU1nPADeFFc7/mYWdCa9bxfwayI2vPMrdSMS5UpTCHckfVilDWNSWuw2DG5Bt9bwtu/Q4DVyVnf3UwrjY2kF8/ypQ8v1tQfqIDXRlS3VoFQ79bH5UCGxCwWkmsIVglrWiwRslv/GhOBpygVsbBeLE0Hg6xlTbxn9NDrMzbmzjtudUzzgq98klHlWc89tISAe5NS+lOlY5P9F0UDLvVzX0CH5gO3krqE7SVJGcM25Uzh9JPQ40WmdImwFK8WGjxktoXHisHWiY5ZSUfHbN6xLBb6XZ7d8VxfujdnSBJaiURA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A/vLffopzl6E+c8NafastbDQhC72yWP33n75DFBf2mU=;
 b=WPXLIlMqdP5KGVBuP4MOsq+SvmiY/izXLnF0HWnIsJp9Bfl7XAXmwI/2NW9WGkjfx/HXS12heD6u0z4p+D5dBarmtt7YLfSFoZ0l9g8vR89CnTU5S/kk99GQAAjMOrbcpARFdAilDRDY5gABZjXekM1i06MiycYM8WSPgNWBzGniOZdEKaof5MjIU7qHlKcMDsMm7qqCJLfwdkTpNWrIC9VpllBCNlMlBVsrQLnIcOgUN0tpQfVN6Aq70I9Jqqs/930naMcZ6Fm103fb5wZXaslMGHgrf1iC9aO8CUZn15LEsEy3RHZsL8ZTBrkMX3A2RtsNsRVyWudprJq0SPG6Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topic.nl; dmarc=pass (p=quarantine sp=quarantine pct=100)
 action=none header.from=topic.nl; dkim=none (message not signed); arc=none
 (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/vLffopzl6E+c8NafastbDQhC72yWP33n75DFBf2mU=;
 b=NIYAU3YIGmiEdkXRuYe1IrbEkglAfAHnGw/zpzzfaA+hUP6nDYxzi14csL2tX/Pq1oUwut8XxqRQxzGet1+oLgrn4xMqhNyCby4JDKdtJo00u0VXVfj0Zc4EVEQSdCC22U0nmyyFMgNXxxlLTWutkx7bI47c9NFURCmfM6jG1fViqxzkjggtxN2zU64Q2YDHEe8JCFOv9rxnqpn4mPNPvPghgi17mjZudriq7W1uMHdzxh7FLM/d0wgggDcJz5Gvv2xjpWc76KSuVAgZ7F1q6wynQlUk9z3JW8YntwQ+DOxZ3/iZGNN+KCNfY6RYpYRjT+cns+sNegw8mqRDuktx5w==
Received: from AS9PR04CA0033.eurprd04.prod.outlook.com (2603:10a6:20b:46a::8)
 by AS1PR04MB9653.eurprd04.prod.outlook.com (2603:10a6:20b:475::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.428.9; Tue, 15 Sep
 2026 08:49:56 +0000
Received: from AMS1EPF00000093.eurprd05.prod.outlook.com
 (2603:10a6:20b:46a:cafe::83) by AS9PR04CA0033.outlook.office365.com
 (2603:10a6:20b:46a::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.406.11 via Frontend Transport; Tue,
 15 Sep 2026 08:49:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 AMS1EPF00000093.mail.protection.outlook.com (10.167.242.90) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.428.7 via Frontend Transport; Tue, 15 Sep 2026 08:49:55 +0000
Received: from AM0PR07CU002.outbound.protection.outlook.com (40.93.65.70) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 15 Sep 2026 08:49:54 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from VI0PR04MB12030.eurprd04.prod.outlook.com
 (2603:10a6:800:316::24) by VI0PR04MB12662.eurprd04.prod.outlook.com
 (2603:10a6:800:343::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.428.9; Tue, 15 Sep
 2026 08:49:50 +0000
Received: from VI0PR04MB12030.eurprd04.prod.outlook.com
 ([fe80::e428:3105:17ec:8224]) by VI0PR04MB12030.eurprd04.prod.outlook.com
 ([fe80::e428:3105:17ec:8224%4]) with mapi id 15.21.0406.007; Tue, 15 Sep 2026
 08:49:50 +0000
Content-Type: multipart/alternative;
	boundary="------------oZojPLAdkiFXvSB8GyX33wjH"
Message-ID: <5f9dcf25-f5bb-4b31-b61d-48c00ee233e0@topic.nl>
Date: Tue, 15 Sep 2026 10:49:49 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Multi-vendor Yocto distro: how do you structure layers?
To: yocto@lists.yoctoproject.org, yann.cardaillac@balena.io
References: <CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRnsPH9mJuAubJ17K-E06A@mail.gmail.com>
Content-Language: en-US, nl
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRnsPH9mJuAubJ17K-E06A@mail.gmail.com>
X-ClientProxiedBy: AS4P191CA0048.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:657::17) To VI0PR04MB12030.eurprd04.prod.outlook.com
 (2603:10a6:800:316::24)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	VI0PR04MB12030:EE_|VI0PR04MB12662:EE_|AMS1EPF00000093:EE_|AS1PR04MB9653:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b35e200-02ee-4537-04fe-08df130650ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|52116014|376014|23010399003|1800799024|38350700014|56012099006|10067099003|22082099003|18002099003|6133799003|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info-Original: 
 VOiqJM1IibA0aqUMLT42/8QxZuEUweZnFN/bN21Q2Ubeqbv3t+dMxMwVtVJuU5erwXfFmUgz7FU5nXC2fHg0nvwvWjyfYh8nl9sOqgSTHoDmbX8ehIILD+s+1j7bKyPeNB2sdlwUsQgOipxUMP74vCZ5y9TVDaMIhftkzUwTPjIr5BJ+NDsEL6XHCZbzrxeOf57fAnzFc9jQVr0c0iHMGaJ1sZN/5q206e9mFLVQAsoNj5IYGjVAg5tVXZf5uxQ5bOBssT1oO4XXj6FMl9rHB0RcTLFu+8QU6opY9r1lzZk3m9Xqw0Y3u6x1X2N69GegsDivMucn+xKpT+zf6nbeVCIiXZ3N+fwW5RxjZ7UxeXSdh9sIhC8/igmCBZpFmvmFKFE4K6UOvc9F56h9zZkVlpw/Vw/6KhzdAxBS63a2aiFupbTXPBL//LSzDmmvRgBeZvzPNtfNjJUg5KeB9cpma78+jWSapvoXT2mBZDHu4NWpDf1Ot16h79gPGGCDD3kkmh/WqXT02YRoALk4CF0PHVjfZarUAWLYcvRX9DK6UiIZljE1LNyvpCNctHg/kj354azvuOaJt+/XGkKkTOMiRMVxbppEw3icP9hHFMBhRSMN0VGpzRs0kXjz4ZuSXarsY5oNAGFf6sDnADMhUwqHnQ4/AVCEX0FAJta/x6IPLdA=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB12030.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(23010399003)(1800799024)(38350700014)(56012099006)(10067099003)(22082099003)(18002099003)(6133799003)(8096899003)(13003099007);DIR:OUT;SFP:1102;
X-Exchange-RoutingPolicyChecked: V2cv4OsztD3ZmD6ovtcXfxEXlRcKGIcmceqPctGRxJrHU+WQLWX895mLuWSs9fz3M8+suxujfH8RWMjULTz9onGniaVmqCrqoXBaIZ8OduoP83h5fRRHvVL1O2ffsdTmVXweY7DXVuRem3NzEmUG/d8u+5Rr2/itefSR8xePfDEBAM+R/8gUzqKpCHoeBoW4zsuxlthk6YZ+rXrm0x5SHp/otzCpvvFO6m04q6mjAEmyCXsd4OpXFZzntp/h7sFLAXuw0CNV3B34BMiaT+q13SZ0+VLoWtVW9VxS2j/If12MM9k5w9pO8fksSupckYe0wW7nbbd4yV2z7zYhbBQ0xQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB12662
X-CodeTwo-MessageID: d6572ab0-4611-4544-97d6-f9a5dc7b1104.20260915084954@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000093.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b9056140-3e0f-41cc-7440-08df13064d85
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|1800799024|35042699022|23010399003|36860700016|14060799003|6133799003|18002099003|22082099003|13003099007|8096899003|10067099003|56012099006;
X-Microsoft-Antispam-Message-Info: 
	EYmxaVnCy3LHHsI1to4DKA6Wx1Sopo3mH13qHylLgl1eya5S4kOkxoE7RqtYhZebxaJvEyF+6QBejA9xAuXkYIBRyi80kxElONo12FesIC36hNSBL2WR2WCPMSlP9pOFo721ko+8DJUUQQVTQWvFX2wYXRZrgpYgkQPKx2XfLmVeipuq7ccHDBfiMRpIeNA0pjuD1DJhQnJQedVsq65gFsfui6Y0lHWva9iuXAySlniYb++zkeiyImzuhzD729dHgSVcHysTVWbG8YnkLvNJ+qElj2xvrERernHfWFCwrFAsPmjzPBpxHk1510ob4XM29n/Bl42NdQD7Ijyuon4JdRbkXWAaVBy7oFB2mMydNSYFrU6Ih65gKvUT7gEfHOjViprs4xsY+ROz2jy8UW6QTgtF1Cr4mt1QoxRolREDeOj+87mlMTwyZjgUoSuOv/datz0feQQI323KTSkhW7/LBO5YZ07U7AXn7B0JssUq0XqXxs/msnmgaY4AGXbVjTxd3yrJo4wcP33lCc685WZtSfAQg+lp7YD/vfsckIiodNgEXWQ19PJfl0gVq4h0iMBCtu/Ki6GGIe0KJN+314pwCdmz/ArLDUYpOsAudrj7i5Nl/SdM+o9qcUsbWWCM5tCz4g6JXkHHHL9abvAdBFMY2Q==
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(35042699022)(23010399003)(36860700016)(14060799003)(6133799003)(18002099003)(22082099003)(13003099007)(8096899003)(10067099003)(56012099006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	NvlMW2inSUlov6bR11M89xdMZemBfhrF0G6XzuumKDWR4cAx0fnV+nzJVAVLlbs74QTgNPWMm881DTk4wRQAaNFK1mKmZvjD1Z2EyqW54LV7rfyOlkxlU1hCIs2KlWl6TekYGaXtVLw0lWh1AJF6mRY+VflShw9q3vsZe4dJS130bQTLbVaXFy4bXLSrDtWySZII1dDAn5V1sh8QsaISZHmMwMi2qjPSWWQRUFQSV11zMi2SJDQ5eAxwsjwg/kDMXVvZcxPikCISXqUt8h/60dujLfMHyn+gsJ5VvQw5L09PTIaa63CqhJctzrTtAaVBwBC8jBw1f64/un7SJxnIgqk5f538xHK4gGqh+HpoyMLd5gmllG+FEsjlekuVu+pRprLrYkliWDnyFoE7W1UNVfGVxAel0t3hh+y90K/1Ax8zT+GTbM9iKDw6WaZ15fmI
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2026 08:49:55.4728
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b35e200-02ee-4537-04fe-08df130650ba
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000093.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9653
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2026 08:50:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66722

--------------oZojPLAdkiFXvSB8GyX33wjH
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

I guess the long-term solution is to educate the board BSP providers to kee=
p their layers clean, so that machine layers don't mess with distro things.

The OpenPLi project, being the de-facto software supplier for a huge range =
of open-source settop boxes, tried to enforce this on the hardware vendors.=
 The intention was that the hardware vendor would supply a compatible layer=
 for its hardware, so that the enigma2 software could run on it. In the end=
, that also didn't work out and all the meta-whatevermachine repo's were me=
rged into a single repo. The main issue was that it was just too hard to ge=
t a vendor to do any maintenance. As for the number of possible MACHINE val=
ues, I think this project is the king...

In more practical situations, try to go for the SOC or SOM layers, and avoi=
d the board layers. Usually all you really want is the bootloader and kerne=
l configurations, and whatever firmware blob is needed to get the system to=
 work. Everything else is going to be your concern. For example, using vend=
or provided WKS files is not likely to work, as your distro would have idea=
s of its own on how to partition things.



M.

On 08-09-2026 10:39, Yann Cardaillac via lists.yoctoproject.org wrote:
Hello Yocto community,

I've been using Yocto for almost 10 years and keep hitting the same problem=
:
How do you keep one distro coherent across multiple vendor BSPs and yocto v=
ersions?

What I've tried personally:
- stack two vendor BSPs under one distro: conflicts everywhere (Yocto versi=
on, kernel, systemd, invasive DISTRO layers)
- fold the distro into each cleaned-up vendor BSP: works while the board co=
unt stays small, but doesn't scale, because I ended up with multiple versio=
n of my distro

I now work at balena, where one distro is shared across many boards/vendors=
 with a deliberate layer split. I'll present that layout at OSS Summit.

I'd like to hear how others approach this. If you're willing to share:
1. How you separate distro vs vendor vs board
2. What broke when you tried to scale (version skew, DISTRO pollution, kern=
el/BSP coupling, etc.)
3. Tradeoffs you accepted on purpose

Reply here or ping me privately. Pointers to public repos are very welcome.



--
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topic.nl<mailto:mike.looijmans@topic.nl>
W: www.topic.nl<http://www.topic.nl>



--------------oZojPLAdkiFXvSB8GyX33wjH
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">I guess the long-term solution is to
      educate the board BSP providers to keep their layers clean, so
      that machine layers don't mess with distro things.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">The OpenPLi project, being the de-facto
      software supplier for a huge range of open-source settop boxes,
      tried to enforce this on the hardware vendors. The intention was
      that the hardware vendor would supply a compatible layer for its
      hardware, so that the enigma2 software could run on it. In the
      end, that also didn't work out and all the meta-whatevermachine
      repo's were merged into a single repo. The main issue was that it
      was just too hard to get a vendor to do any maintenance. As for
      the number of possible MACHINE values, I think this project is the
      king...</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">In more practical situations, try to go
      for the SOC or SOM layers, and avoid the board layers. Usually all
      you really want is the bootloader and kernel configurations, and
      whatever firmware blob is needed to get the system to work.
      Everything else is going to be your concern. For example, using
      vendor provided WKS files is not likely to work, as your distro
      would have ideas of its own on how to partition things.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">M.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 08-09-2026 10:39, Yann Cardaillac
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRns=
PH9mJuAubJ17K-E06A@mail.gmail.com">
     =20
      <div dir=3D"ltr">
        <div>Hello Yocto community,</div>
        <div><br>
        </div>
        <div>I've been using Yocto for almost 10 years and keep hitting
          the same problem:<br>
          How do you keep one distro coherent across multiple vendor
          BSPs and yocto versions?</div>
        <div><br>
        </div>
        <div>What I've tried personally:<br>
          - stack two vendor BSPs under one distro: conflicts everywhere
          (Yocto version, kernel, systemd, invasive DISTRO layers)<br>
          - fold the distro into each cleaned-up vendor BSP: works while
          the board count stays small, but doesn't scale, because I
          ended up with multiple version of my distro</div>
        <div><br>
          I now work at balena, where one distro is shared across many
          boards/vendors with a deliberate layer split. I'll present
          that layout at OSS Summit.</div>
        <div><br>
        </div>
        <div>I'd like to hear how others approach this. If you're
          willing to share:<br>
          1. How you separate distro vs vendor vs board<br>
          2. What broke when you tried to scale (version skew, DISTRO
          pollution, kernel/BSP coupling, etc.)<br>
          3. Tradeoffs you accepted on purpose</div>
        <div><br>
          Reply here or ping me privately. Pointers to public repos&nbsp;ar=
e
          very welcome.</div>
        <span style=3D"white-space: pre-wrap">
</span><span style=3D"white-space: pre-wrap">
</span><br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:mike.looijmans@topi=
c.nl">mike.looijmans@topic.nl</a>
W: <a class=3D"moz-txt-link-abbreviated" href=3D"http://www.topic.nl">www.t=
opic.nl</a>

</pre>
  </body>
</html>

--------------oZojPLAdkiFXvSB8GyX33wjH--

