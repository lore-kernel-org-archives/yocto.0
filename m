Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC504C54EE9
	for <webhook@archiver.kernel.org>; Tue, 20 Sep 2022 15:38:48 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.61])
 by mx.groups.io with SMTP id smtpd.web12.13678.1663688319124415806
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Sep 2022 08:38:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=nSYxg853;
 spf=pass (domain: arm.com, ip: 40.107.21.61, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=i0NDsmk8NkzJGAcsCvLLF9oF4v0Ry7stMnRUSzYjYReBuEJfnrh7bDTbta5rZLNq58iCFoPylY3lOWKbIi/JcpwFEbR2glT52wZuI2pnuYHbnIKhnqLpbQ80TQeR6ulzkvU0X4gQVUiV3VHXL02AaN0IPON0BueYL2D56jUCmN8g89boUIBiGPUQjJJJtveDowf7VUStCHWJQtIM1Mz4UBzDkXkOjt8TxJbih7ZTEGJ45pfJzgGylAJyll7gtntsTcm4+HWH/JdkbzJYwLVy8vNcen8myT1XFkMJsd+bA+3DcR8Da/7U2XWpswzdkJ9hnKplwYItQ9ZiDlhLlS74Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c8uLVrl2UWujRBDimMvsND52upVWTi9xEuWQ647tDbw=;
 b=NI/iU2ZfZapM3S7XTE2HJDNGQCb23wrYX/SD1SdWcn4GgeuKk4zNHMd+WoQ7mlvYrNzKGi1MGioJUYr3zewgjJBznUz3uebKtzJKmgpGdUVslnL2BiQZ8482QOst4vOjL7ECuUl9rzM4uawVz5pODIHPSMGzQf4GSeUU8Oa8bttLrpD31k4+4ik3X2pI1Ie5+fWvbwscnNF126zJoVSeoicFC9A5/Y+xLV/fRldayBlT3WdvTJD1FSF/poSu4kWkZzyFyPJFoehFzlFygso2Th06w5UtFdaG6x1D7j+MQuzeusjBDFSyXz6nwOYnxTczIUvWV7Jar/0y6WNalj1RcQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c8uLVrl2UWujRBDimMvsND52upVWTi9xEuWQ647tDbw=;
 b=nSYxg853pKQtUYHo8cAyf02WqR935rIKGJVx7p+eNgfMvYudv7MY8Ef+ImGcpQk7RZNRnm9Ncl8+EK8iehWdpmJfdZl7/dbic1C8hbmq3a9SdKOnH8rZbEvB54sOCH/GuApe7hKCEiMOw3Ohkra0ctuF6uQy9VfOCNDU6nF1F2o=
Received: from DB9PR06CA0006.eurprd06.prod.outlook.com (2603:10a6:10:1db::11)
 by GV1PR08MB7826.eurprd08.prod.outlook.com (2603:10a6:150:5a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Tue, 20 Sep
 2022 15:38:35 +0000
Received: from DBAEUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:1db:cafe::8f) by DB9PR06CA0006.outlook.office365.com
 (2603:10a6:10:1db::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21 via Frontend
 Transport; Tue, 20 Sep 2022 15:38:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT052.mail.protection.outlook.com (100.127.142.144) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.12 via Frontend Transport; Tue, 20 Sep 2022 15:38:34 +0000
Received: ("Tessian outbound 8ec96648b960:v124");
 Tue, 20 Sep 2022 15:38:34 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3285fee5864b493a
X-CR-MTA-TID: 64aa7808
Received: from db267715945d.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E55D2D14-5911-471F-B901-6BCFF973A279.1;
	Tue, 20 Sep 2022 15:38:28 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 db267715945d.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 20 Sep 2022 15:38:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fVVn16USFFb/Ugf3cMIDi0oqSXixnK32A6of+dcnjNxZLeQZ90UODAhUclBq6KlaG4LgDucXt6PCN7ESGwW3SV5y/HdTjR9vdXIXX/DsZI1t+UKHVag4Qs74aVsOrfmL8dkH/vxIDGpFF9n2Oy6cp6gm+xxKK0yQODKDo/Sfzq3ydE5yo5+qDfkqF3nXVNy+0Ls0ZxjFRAlWTQNDBPsodj1vkS6S114wx3TaaU3XeWViCuRuM2qL4oSgoySkiP7xS9ZxJuBv50GyNuMiHh42b0scLQPh1ORvSQeHMPGoCshSWzDbk3xcOmVWDRoenQkFr6fCID5dDr5Cwjrmfc3e4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c8uLVrl2UWujRBDimMvsND52upVWTi9xEuWQ647tDbw=;
 b=bUklwMOxFNzMpebtMUd2Y+wGrTRu0akTWXK81elnrBFRMuTy8/V0oUYxeiiwd16Z27jexSmQXwMbutIKEIClwyqs+ZW6vCjKG4j4leIkuBPBm0/Z/DsGTdbKAvMrnoVLs8sXs/IqtUm792jm/OqF5Xcy2+Ylx/2s/jPVPsB3Tqp2UwWcaHogu57XgDrACUUV2siz5qnymvXbj77WC+aQsF+7RctxpJIWUaLZx/Jd3t3z73YF+IpDCz2NPsdZni6B5S66WQmo+zS2ndyZbEo4LKgc6sUlqM5Yfza7lUfe0qnWQioYIQ0PsqfLE5ddrnfUr6Io26d12th4k6NcrQ6Fbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c8uLVrl2UWujRBDimMvsND52upVWTi9xEuWQ647tDbw=;
 b=nSYxg853pKQtUYHo8cAyf02WqR935rIKGJVx7p+eNgfMvYudv7MY8Ef+ImGcpQk7RZNRnm9Ncl8+EK8iehWdpmJfdZl7/dbic1C8hbmq3a9SdKOnH8rZbEvB54sOCH/GuApe7hKCEiMOw3Ohkra0ctuF6uQy9VfOCNDU6nF1F2o=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8973.eurprd08.prod.outlook.com (2603:10a6:20b:5f9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 15:38:26 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::559c:f19f:f674:b553]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::559c:f19f:f674:b553%4]) with mapi id 15.20.5632.018; Tue, 20 Sep 2022
 15:38:25 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #dunfell
Thread-Topic: [yocto] #yocto #dunfell
Thread-Index: AdjMU0UdZcuA5K7pTkmpIRZHVGqZIgArrwPQAAEkRHs=
Date: Tue, 20 Sep 2022 15:38:25 +0000
Message-ID: 
 <PA4PR08MB74113B68618561C69A04C478E84C9@PA4PR08MB7411.eurprd08.prod.outlook.com>
References: <MADEUP.1716561DCDBAA560.13687@lists.yoctoproject.org>
 <MADEUP.171699DC43F450F8.19441@lists.yoctoproject.org>
In-Reply-To: <MADEUP.171699DC43F450F8.19441@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8973:EE_|DBAEUR03FT052:EE_|GV1PR08MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 43f1b3e9-2822-4830-6f63-08da9b1e2dd6
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 eBzJuGS49vGPVGbkHBDAD6PXeet15SMYWPDtxBK4AWtDLRn5XkCNxOy5dcHbKliZY9U/1qVbmkMkwOkspJVV8S617dRQvzva0l5yuRsw1fuvfbl3Ov+2BJYIM7qUHE+QbBfASy2J9n1Dp5+ITV64c/6S1fyiEhsu+/HKRCKi5TVdjUza5iG6Zzp+gPjYo7bVNI9/bqhXDXbus9au/xgUvwnjSBsi3yAibifa2NavBug7WihMAHsK/1CB62dbPSDlo9jt9QNY1fDpwSTq18ZzhIt96Ga31vXs+VALiI7mNSteKCwiogMTqdxO76bg/+dOcUXQewmavN8EXA5SBtm/l7HMIE7EWWOCP7HNsBT5+neALhZkRuhCF/uPfOv42orHRli4FBKR/HXLkGwD/f3BjMX+T61q4do6q9H3cVTEWKNQMK0PcRa6fPxPOlX6bKwpj7iMhaZ9M9ZKWoTtzhLNzVcxLKPK+r1sq5+5kmmuHDdgIQXBfvKJAh7TjLGgTg/+qOe25Jitx2zjcoSd7Wylf88p4Fx+TT+btO3PVcyrg+tA/hjsgIt13BcEjohbQyinLbbAnow0v3k1QIEDqAlNo9f8MPWKm+Hl4Nq/gkly8hVgdKeY+J253g97JNAd0I11tEb325sou4omfW+ZgH0gJE1KHtl0GPDslbPzNX2e9NBdw3qA3i0wd0qvz+FlrfYCRrEEHhLTS+4ohunGaQ060JtAo6je9VDyR8mAP9WkrZ2YAjruIio0/CdcV+t5+jk7STDZRNmTX8SWjBgWGq9uOw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(396003)(346002)(366004)(376002)(451199015)(5660300002)(52536014)(71200400001)(45080400002)(478600001)(122000001)(8936002)(110136005)(53546011)(41300700001)(9326002)(83380400001)(6506007)(38100700002)(7696005)(316002)(64756008)(66446008)(66556008)(2906002)(76116006)(66476007)(66946007)(9686003)(33656002)(8676002)(55016003)(38070700005)(26005)(91956017)(186003)(86362001);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB74113B68618561C69A04C478E84C9PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8973
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT052.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b921c597-1fe0-4935-bd17-08da9b1e289f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	S3gaGaBa3J/0YTmnjd5r2pBS7kqJD5JwXuoM6s9mddgdWcbt2njDfJTIFybBbVg8PmT9Lm0C63rJw18cjhLLNk/HB8Ngj9a5CXnSiK61V6+Jc/MDgOwGx9+HAj3rZ7poYpVnLpLemqtqeW5zQF7lws0RzwENekonz69boQM7EGfsIfOY90ibX+CTOXqMAhWyfJyJdfUAXjlwE0hmyC9DX/xi8zAlxtHbSMXXnogUXKnR2UWYU2kbMmmHlMqnBjWzOI+PeYLFIYT85c01v0lrG0Xt6Yo0ekDfdsrW+x2k798AF4FSP/fgq9CBa7MqaIJUXwis7/QGTIJDCRpJQy/IUmL3TJHBYgD1dEEKI6PYqPxOkk0OdzO7SHly3uNvjnSd5W50P4RX3uI/ck+4Jf1AIhgCu1xMNuGHDkoSCWyPjXAZApLizjpFEiEyKtRB/AsNlh7VgutPxG9HIbgjMdNZ8OIhAQbkZdBVf70dL7twQvhXpN2R23yqh+eGRtvfp7jErKIU6Ws43Gpqupaw6kNIrC94XGN/FeI4Ayc4Uqs2aH4tcMv625VVhn5fCjmRVsxig83KvTJZ+x0EinNVZ5G7byHx+czUIlmmIEyHBt9H8BhrkMlffccv5FrD+uoEgP7dfClfpDkq8rQAn3yjAWOxeYN45OlSg2fMdydHQcJKnECC/0P4IHNvPWy2XVr23X/xn/LPV0CtFxUqmULvqc0jrTalgLGDWE5AOdrvc292g1+uQXToxyyuy4eoLt2LZnRm7PZJy2dFpSoId9mAPWe1vA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(136003)(346002)(376002)(451199015)(46966006)(40470700004)(36840700001)(33656002)(356005)(26005)(81166007)(9686003)(7696005)(6506007)(53546011)(110136005)(45080400002)(316002)(478600001)(40460700003)(36860700001)(86362001)(336012)(47076005)(55016003)(40480700001)(186003)(83380400001)(82740400003)(5660300002)(9326002)(8936002)(2906002)(8676002)(70586007)(70206006)(52536014)(41300700001)(82310400005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 15:38:34.6542
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 43f1b3e9-2822-4830-6f63-08da9b1e2dd6
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT052.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7826
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Sep 2022 15:38:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58096

--_000_PA4PR08MB74113B68618561C69A04C478E84C9PA4PR08MB7411eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

SBSA is EDK2 based, which is basically incredibly painful to patch.  The so=
urce files are windows-style CR/LF so your patch needs to have CR/LF, but i=
f the whole patch has CR/LF then git =93helpfully=94 transforms the patch t=
o just unix-style LF, which doesn=92t apply.

The =93solution=94 (workaround) is to convert the patch to LF encoding, and=
 manually add the CR characters to the end of each line in the patch body.

The good news is that EDK2 is moving to LF encoding, so this will be solved=
 at some point.

Ross


From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Monsees, Steven C (US) via lists.yoctoproject.org <steven.monsees=3Dbae=
systems.com@lists.yoctoproject.org>
Date: Tuesday, 20 September 2022 at 16:05
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>, yocto@lists.yoc=
toproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #dunfell

Any hints or ideas on what I might be doing wrong would be appreciated=85

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Monsees, Steven C (US) via lists.yoctoproject.org
Sent: Monday, September 19, 2022 2:22 PM
To: yocto@lists.yoctoproject.org
Subject: [yocto] #yocto #dunfell

External Email Alert
This email has been sent from an account outside of the BAE Systems network=
.
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.  For further in=
formation on how to spot phishing, access =93Cybersecurity OneSpace Page=94=
 and report phishing by clicking the button =93Report Phishing=94 on the Ou=
tlook toolbar.


I am seeing an error when I attempt to apply a patch, and could use some cl=
arification or way to resolve=85

Am doing something wrong in patch creation ?
What is meant by :  =94Patch console.patch does not apply (enforce with -f)=
=94 ?
How can I best resolve this issue ?

I edited a file in the recipe=92s git repo in order to create the patch for=
 the change:

git diff -u console.c

which I used as my patch:

diff --git a/lib/console.c b/lib/console.c
index 9c10560..b932a44 100644
--- a/lib/console.c
+++ b/lib/console.c
@@ -357,7 +357,7 @@ static struct {
        {  EFI_SECURITY_VIOLATION,     L"Security Violation"},

        // warnings
-       {  EFI_WARN_UNKOWN_GLYPH,      L"Warning Unknown Glyph"},
+       {  EFI_WARN_UNKNOWN_GLYPH,     L"Warning Unknown Glyph"},
        {  EFI_WARN_DELETE_FAILURE,    L"Warning Delete Failure"},
        {  EFI_WARN_WRITE_FAILURE,     L"Warning Write Failure"},
        {  EFI_WARN_BUFFER_TOO_SMALL,  L"Warning Buffer Too Small"},

I am getting the following error when the patch is applied:

ERROR: efitools-native-1.7.0+gitAUTOINC+0649468475-r0 do_patch: Applying pa=
tch 'console.patch' on target directory '/disk0/scratch/yocto/workspace/pok=
y-dunfell-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native=
/1.7.0+gitAUTOINC+0649468475-r0/git'
Command Error: 'quilt --quiltrc /disk0/scratch/yocto/workspace/poky-dunfell=
-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7.0+gi=
tAUTOINC+0649468475-r0/recipe-sysroot-native/etc/quiltrc push' exited with =
0  Output:
Applying patch console.patch
patching file lib/console.c
Hunk #1 FAILED at 357.
1 out of 1 hunk FAILED -- rejects in file lib/console.c
Patch console.patch does not apply (enforce with -f)
ERROR: Logfile of failure stored in: /disk0/scratch/yocto/workspace/poky-du=
nfell-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7=
.0+gitAUTOINC+0649468475-r0/temp/log.do_patch.7615
ERROR: Task (/disk0/scratch/yocto/workspace/poky-dunfell-23.0.19/meta-bae/m=
eta-limws/meta-intel/meta-sbca/recipes-bsp/efitools/efitools-native_git.bb:=
do_patch) failed with exit code '1'

Thanks,
Steve

--_000_PA4PR08MB74113B68618561C69A04C478E84C9PA4PR08MB7411eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">SBSA is EDK2 based, which is basically incredibly painful to patch.=
&nbsp; The source files are windows-style CR/LF so your patch needs to have=
 CR/LF, but if the
<b>whole patch</b> has CR/LF then git =93helpfully=94 transforms the patch =
to just unix-style LF, which doesn=92t apply.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">The =93solution=94 (workaround) is to convert the patch to LF encod=
ing, and manually add the CR characters to the end of each line in the patc=
h body.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">The good news is that EDK2 is moving to LF encoding, so this will b=
e solved at some point.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Ross<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span lang=3D"EN-U=
S" style=3D"font-size:12.0pt;color:black">From:
</span></b><span lang=3D"EN-US" style=3D"font-size:12.0pt;color:black">yoct=
o@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of =
Monsees, Steven C (US) via lists.yoctoproject.org &lt;steven.monsees=3Dbaes=
ystems.com@lists.yoctoproject.org&gt;<br>
<b>Date: </b>Tuesday, 20 September 2022 at 16:05<br>
<b>To: </b>Monsees, Steven C (US) &lt;steven.monsees@baesystems.com&gt;, yo=
cto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject: </b>Re: [yocto] #yocto #dunfell<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;color=
:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;color=
:#1F497D">Any hints or ideas on what I might be doing wrong would be apprec=
iated=85</span><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;color=
:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"font-size:11.0pt"><o:p=
></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt">F=
rom:</span></b><span lang=3D"EN-US" style=3D"font-size:11.0pt"> yocto@lists=
.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Monsees, Steven C (US) via lists.yoctoproject.org<br>
<b>Sent:</b> Monday, September 19, 2022 2:22 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] #yocto #dunfell<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"97%" style=3D"width:97.0%;margin-left:5.4pt;border-collapse=
:collapse">
<tbody>
<tr style=3D"height:21.2pt">
<td width=3D"97%" valign=3D"top" style=3D"width:97.0%;border:solid red 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center;background:white">
<strong><u><span style=3D"font-size:13.5pt;font-family:&quot;Calibri&quot;,=
sans-serif;color:red">External Email Alert</span></u></strong><span style=
=3D"font-size:11.0pt"><o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"height:21.2pt">
<td width=3D"1534" valign=3D"top" style=3D"width:1150.4pt;border:solid red =
1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.2pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:3.0pt;m=
argin-right:0cm;margin-bottom:4.0pt;margin-left:0cm;text-align:center;backg=
round:white">
<strong><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:bla=
ck">This email has been sent from an account outside of the BAE Systems net=
work.</span></strong><span style=3D"font-size:11.0pt"><o:p></o:p></span></p=
>
<p class=3D"MsoNormal" align=3D"center" style=3D"margin-bottom:4.0pt;text-a=
lign:center">
<span style=3D"font-size:7.5pt">Please treat the email with caution, especi=
ally if you are requested to click on a link, decrypt/open an attachment, o=
r enable macros.&nbsp; For further information on how to spot phishing, acc=
ess =93Cybersecurity OneSpace Page=94 and report
 phishing by clicking the button =93Report Phishing=94 on the Outlook toolb=
ar.</span><span style=3D"font-size:11.0pt"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Times New Roman&quot;,serif">&nbsp;</span><span lang=3D"EN-US"=
 style=3D"font-size:11.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">I am=
 seeing an error when I attempt to apply a patch, and could use some clarif=
ication or way to resolve=85<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Am d=
oing something wrong in patch creation ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">What=
 is meant by :&nbsp; =94Patch console.patch does not apply (enforce with -f=
)=94 ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">How =
can I best resolve this issue ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">I ed=
ited a file in the recipe=92s git repo in order to create the patch for the=
 change:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">git diff -u console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">whic=
h I used as my patch:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">diff --git a/lib/console.c b/lib/console.c<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">index 9c10560..b932a44 100644<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">--- a/lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">+++ b/lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">@@ -357,7 +357,7 @@ static struct {<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp;=
 EFI_SECURITY_VIOLATION,&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Security Violation&=
quot;},<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//=
 warnings<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_=
WARN_UNKOWN_GLYPH,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Warning Unknown Gly=
ph&quot;},<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp; EFI_=
WARN_UNKNOWN_GLYPH,&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Warning Unknown Glyph&qu=
ot;},<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp;=
 EFI_WARN_DELETE_FAILURE,&nbsp;&nbsp;&nbsp; L&quot;Warning Delete Failure&q=
uot;},<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp;=
 EFI_WARN_WRITE_FAILURE,&nbsp;&nbsp;&nbsp;&nbsp; L&quot;Warning Write Failu=
re&quot;},<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:36.0pt"><span lang=3D"EN-US" st=
yle=3D"font-size:11.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {&nbsp;=
 EFI_WARN_BUFFER_TOO_SMALL,&nbsp; L&quot;Warning Buffer Too Small&quot;},<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">I am=
 getting the following error when the patch is applied:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">ERRO=
R: efitools-native-1.7.0+gitAUTOINC+0649468475-r0 do_patch: Applying patch =
'console.patch' on target directory '/disk0/scratch/yocto/workspace/poky-du=
nfell-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7=
.0+gitAUTOINC+0649468475-r0/git'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Comm=
and Error: 'quilt --quiltrc /disk0/scratch/yocto/workspace/poky-dunfell-23.=
0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7.0+gitAUT=
OINC+0649468475-r0/recipe-sysroot-native/etc/quiltrc
 push' exited with 0&nbsp; Output:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Appl=
ying patch console.patch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">patc=
hing file lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Hunk=
 #1 FAILED at 357.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">1 ou=
t of 1 hunk FAILED -- rejects in file lib/console.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Patc=
h console.patch does not apply (enforce with -f)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">ERRO=
R: Logfile of failure stored in: /disk0/scratch/yocto/workspace/poky-dunfel=
l-23.0.19/builds/sbca-default/tmp/work/x86_64-linux/efitools-native/1.7.0+g=
itAUTOINC+0649468475-r0/temp/log.do_patch.7615<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">ERRO=
R: Task (/disk0/scratch/yocto/workspace/poky-dunfell-23.0.19/meta-bae/meta-=
limws/meta-intel/meta-sbca/recipes-bsp/efitools/efitools-native_git.bb:do_p=
atch) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Than=
ks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt">Stev=
e<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_PA4PR08MB74113B68618561C69A04C478E84C9PA4PR08MB7411eurp_--

