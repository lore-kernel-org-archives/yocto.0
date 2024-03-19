Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D6FC54E5D
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 10:41:49 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.66])
 by mx.groups.io with SMTP id smtpd.web11.12163.1710844906799691088
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Mar 2024 03:41:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=zHKHWbMK;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=zHKHWbMK;
 spf=pass (domain: arm.com, ip: 40.107.104.66, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=jjq9nHEEy2Sz6Ot2r9rXraUmwEmzif9lFf1yys6aFotPqVCvLIwxiRAAIY9aqLUKyerpm9R0nuhXw6s9fqd8VNxKWkh1qhOwNF4HJnsy7Uv9YLJEw6HnNsELvX9qZA0SXs1523tiMEgrKFIYAJjGBF4cm/rtTdTztPliZVIhjIJXiVDd8f/yC2k9Yocjw2FA/7fguFK5fAn1/DmHAjhe5E07UPGQuBp8pfI3pYB4LmMO+HqKR7tQdlSa5BmPZbiA4ey1mbSWfVmKsgiPh6F54tKk2njQRezXtf3SJueM+RRctGkX617bc5FrUq1v4QOKHF+fgd5QJHSV6mQ2mjS3hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HcI1svsfFRqw8r5SF8byyRWC50X6lbKbgDyvvNp8Sxs=;
 b=T9et5lpuocgwWWOisX+3dU0ZAciEE/Ewx7b44tRsSUTtHscs54S8C8sA0EmezAn8iYa3/74nxlDv1T1FVTbZ0lAGvYM4tCakIwkHTeCaf9ccObMzU1TL5pvOqeRfk+GPZO3OeTEVNsqhM1K2g7NvLeB8e+T2KISsIZn7X+SumgpZVC2OrhBwDNplos9+kwB2bh5jIPKsZw4j/UFfE1zsjIIcLdKWTCcC4NTzO9f/RXOjPKk77u2o98WPifh4EkuRqiaFXlRKr3ThQnE+rYd0A9f4i+ddDLbLfakFBq36a3JgxH5sLhvXeL3Tde+xRhhlkVrcOdWtf7qCJxJjGfdBKw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HcI1svsfFRqw8r5SF8byyRWC50X6lbKbgDyvvNp8Sxs=;
 b=zHKHWbMK07qChbnzE3Ss4yrdyPjQOou720XgFVB7gwOfQGWk2cTA10yHyN7/xLehxezfaBVCP8Hv6TeFNco8WV+Ibr40cDJLrITLOVtszf6EZ/SGs63rkG6EYjERVb3LLpKQACS6lUe4Ehk2FAzeQfT8PtTj4AchlCuhx50XWv8=
Received: from DU7PR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::18) by AS8PR08MB8707.eurprd08.prod.outlook.com
 (2603:10a6:20b:563::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 10:41:42 +0000
Received: from DU2PEPF00028D02.eurprd03.prod.outlook.com
 (2603:10a6:10:50f:cafe::69) by DU7PR01CA0004.outlook.office365.com
 (2603:10a6:10:50f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26 via Frontend
 Transport; Tue, 19 Mar 2024 10:41:41 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF00028D02.mail.protection.outlook.com (10.167.242.186) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 10:41:41 +0000
Received: ("Tessian outbound 5ad6c4395be7:v300"); Tue, 19 Mar 2024 10:41:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e0ad7d0420c9cca7
X-CR-MTA-TID: 64aa7808
Received: from b093b8687b60.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1BDF4181-AE70-474D-A0BA-896DB4A1C421.1;
	Tue, 19 Mar 2024 10:41:35 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b093b8687b60.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 19 Mar 2024 10:41:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zk+WlN5SeO/GB0/pxHK83cfPIkFBPkbjN+wd3JweUGhvGxaPMpyFQpfcELBBzJ/2szJa4EvtGvi6AtxOUXUz/18dE/KkMvYyYnimgwzFzEtW+i5O9+t+SEWT+hZbAFOpN/2Sz6a7MMgXPNJhXmhrtEeuDpD7iCt+OKUFURxZvN2meltm1NxNe9L3D3ll+tzy+tG7oiluVyB6EQb+esJZ3X3myV9gYZqQWPo+xDLAytkKc3bxAarRHPy45UTboTBh0m7WmFjOe8fb5A80AbDx+w11KusghTfqoB6xV4LHdIX50vDFJF5alckzBZYczcYEIqBdgDzNX/pm25wUfyPOZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HcI1svsfFRqw8r5SF8byyRWC50X6lbKbgDyvvNp8Sxs=;
 b=hVSGVFle+3loPij2r5ojdHVaNk/zsaeihDGcGNKAMunA4swmNQVbUp+T0f+P1zpQa/TTgEy44GKaWFBxY5TGpIY5zzy5FKu2UxoQ65DktqJxAvpUCM/0KM4/u3pUqoS4rS57oxwfzfyoPFjFel0lrDcS7c+RNQDK0HkfPw+S8mSl6DcqQPwJYYmNzLsM8Ebdsgob03IJfBRLsowufRnh0b0b+oxpTLK/SRkpxUP3n2C72ULgAD5QpfM1URgOsul2Gbwn/t+CXRhPr+IVqhdMAhaTJhZCdR1VpEryA766SHO/3PWrK+yyVyIgnGB0kQmN4yme9XgIVt5+pPK3dooifA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HcI1svsfFRqw8r5SF8byyRWC50X6lbKbgDyvvNp8Sxs=;
 b=zHKHWbMK07qChbnzE3Ss4yrdyPjQOou720XgFVB7gwOfQGWk2cTA10yHyN7/xLehxezfaBVCP8Hv6TeFNco8WV+Ibr40cDJLrITLOVtszf6EZ/SGs63rkG6EYjERVb3LLpKQACS6lUe4Ehk2FAzeQfT8PtTj4AchlCuhx50XWv8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB9993.eurprd08.prod.outlook.com (2603:10a6:102:359::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 10:41:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 10:41:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"brennan.coslett@bluerivertech.com" <brennan.coslett@bluerivertech.com>
CC: Bratiranjan Acharya <bratiranjan12@gmail.com>
Subject: Re: [yocto] install-vs-shipped
Thread-Topic: [yocto] install-vs-shipped
Thread-Index: AQHaeV70Yyua3NjSREKRdBxpEW/mwLE91kUAgAEK9YA=
Date: Tue, 19 Mar 2024 10:41:33 +0000
Message-ID: <54D7D4E5-6557-466C-AB7C-48A84B160CCB@arm.com>
References: 
 <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
 <12640.1710787554155823886@lists.yoctoproject.org>
In-Reply-To: <12640.1710787554155823886@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB9993:EE_|DU2PEPF00028D02:EE_|AS8PR08MB8707:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 wF83ui2CmGhECd/yPaUrawVEzwjm5+A3o5WaFC7xz6942LFK+JbVdvai/CjKsA/n3N74PNo7tCDW6+X+vBshYQnm+JGeVNARimlaj1I6gnhXknSFsJEF5pjorhYkgUb6i3Kt1XVwkAx4Edyn97ac3HNrSpQcpa+5QjrpZ1ntElEUttbCXAhDkgTd//Lr3vpewK/4kgADbCZzALLwdLSuO3XCeezIFUOvNynOJnwrBOvzeia7QEOOnFr4MVRPx62qc05o+ZDMpngALlb8zDelXMF5zJ1IPyCAsthfjzc6L73VAy3tIhLOQENaLTIj37tBl2/EkEnUXqDlv/sgB2aFFiROtVSkK6I5+6V0mcj6Npe+O8RndUUZHPoaQdmLYxgGJQjHpLqwFwY/zgHv5YLFY6GGZ1t0IlPEN3ADkaI4p+NZzBFE0mDbkfwSsNnnVFvXIgKoAyLaZUhsiYMOQPYO8KfRqUkbCphQxAfzY8hCKq8modW1XrgoboE2pXczBoScpYcnmhhfQ7Go165MNO9LHRqZyS8KLTdpvHB19+11iIeiMgZw2OF6vs/oExwi6BTIovgsdx7MW6GKOTy+ubYVlY1wyFHI6sSRZ7IIpKAwbGRoD3toZrVTw0tyg2RSRkVKLyp/MKSb2wz3EWPE5IVebRHAejYzDM34XUhkUlJdq3o=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
Content-Type: text/plain; charset="utf-8"
Content-ID: <919692979CA62140A1F6E738A1CECADB@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9993
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028D02.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7cbe9e25-360a-44b7-f973-08dc480129fc
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9o5VoAtihpsoWkXb6aYC3xv+cwrIaqd3R99UT+D7Pw1LY0CJpFPM9hOzLQC02OLNs6/KpnmVsjbon2ZVIG6IX09ye0sqMvkhU8XFs+XrX61WmDs40Tb+FaiEAvYKd2AKtq5LN1JTwYmf6EwxtY4z3VWQtOwkL0roIPfgHYUgN3bk08tAllh862tunPdJ263wvlb1vVuKnh4Q9m1GaH9W3I+VK7dMvsUVkVhmkO3DKYkujS0+OvTjvp+SesFuqzP5yBlY0RsjgAFHxh8C5vTRR7gOeNUgiDMGftoA/T/YtgNKsTa7kSpXt9DJaAeqRffvgSDXhWpADKfCCeZVF+tPQH5rz6zWT67BQRrEH8il3aHq5a+MNysY1cvR3/H6PQUIn4lwLOFq5YaW1Bsbpe8gwivl4+GPrl49MsC7iyq92BYCKtKe85OiHVthVOi7cWdW0cmO/M55eGAZlfHBfZt9ZGqsML882z0vWgD5n6SJZzOat4RmsI4o7cT1P8Hh9OW+sUQzIs4qGSe6EDIrrhEj8I8F79UHGBRPDaao6TAA4vD8lYXl7BrIvRrglb0wfqFPH5ZwDhC/3iS2qxtZPWNQ41B9lpp32p2vIJj4tV9346LFfwWAcDYXQN/i0cM75+SGyj0s03hLCHWPeQIiSqE9tTeihQY3u4tsqLWlcxq7dWp+AcgoAcWL2FFpouj7SV8Su1tO4CY5fxFHXxniX5Lpg6t28LHRHLKj9p3tGvQsh9x2zXFXSh2y1nxWxVuQ2IY5
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(36860700004)(82310400014)(1800799015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 10:41:41.6379
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cbe9e25-360a-44b7-f973-08dc480129fc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028D02.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8707
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 10:41:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62791

T24gMTggTWFyIDIwMjQsIGF0IDE4OjQ1LCBCcmVubmFuIENvc2xldHQgdmlhIGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgPGJyZW5uYW4uY29zbGV0dD1ibHVlcml2ZXJ0ZWNoLmNvbUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEkgdGhpbmsgeW91IGFyZSBsb29raW5nIGZvciBg
aW5oZXJpdCBub3BhY2thZ2VzYA0KDQpUaGF0IHdvdWxkIHJlc3VsdCBpbiB0aGUgcmVjaXBlIGJ1
aWxkaW5nIF9ubyBwYWNrYWdlc18sIHdoaWNoIGlzbuKAmXQgd2hhdCB3YXMgYXNrZWQgYXQgYWxs
Lg0KDQpSb3Nz

