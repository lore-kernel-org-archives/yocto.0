Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BFB4C433FE
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 00:31:08 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.45])
 by mx.groups.io with SMTP id smtpd.web10.750.1667349061952370133
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 17:31:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=JbBEHsGo;
 spf=pass (domain: arm.com, ip: 40.107.22.45, mailfrom: jon.mason@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=CDR1qSL/2sOU3gwGG9CVAYZkY7XnyWs0JnouIMVDWRVwwGpruIaLJlLRzttODU7wdWLpYy0aHQFuvoFrfO54KPh3Cm2Azl3kAojNPnaY56eDP6EncDC5D6vxS6ADzLOLNLzpO2fjOtbR1liEtytsnwjAQP/VfpmKJ1fND6CM9SXT4FjwZSbhdWBBX0oZxHJP295sPmxk6ZEqnVOF62AaF2uVs6OFK4ZMcRivNFyitEyGK1j5HLo4R7mzQO4KogMBnB2qtp+L5v9ZPXEugzu7pLdIX1cS+DlBFj4ZW9NyVdHmtXEkYvEb4veCJr+UiJkiehjP5aTFlPfgi5SAxKON4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7nMpi+yFa9/DwwkxhOP4wQ16LgCauOpNLv74Undyn9w=;
 b=glfD6W1Lc0mMyM7To5ZGhD3MCQIAIdwGlNBw7R7AbZ2XK4ZR3Lot4nbJ4YbFLUf782yWGnhWo8vtecciYVw+NUdDH+/chA9j/aABT8IBoJgg2Z0bNkKYFeO9/xcI2UTPps/GiNaOiAwCoY2VvUS/raZPknbDKVknXaXbArYNN7C/Kr2TvaZh4O7k/x7n+dUrVeuOQChO3xr3V/HrDBF5lBKF0tWqmub2qgYVoKJ0x+7ZY3rBBOna2Eu/5ukImVrrBrlqI0ibEQaBzlrSr7Z8izquCIJZMd5aMujA22AFgl3lxDOoG5nYjhbNByAjr6ZKGcoSe2e11M4IznICiVU/9A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nMpi+yFa9/DwwkxhOP4wQ16LgCauOpNLv74Undyn9w=;
 b=JbBEHsGo0HRaT40iCEa1cL5MP4f1aOi++I6v1ZCBmQnPQFx/fjTWuGpYjeXO+iK7eBBTVBf42RCwitMO5wLaTZtF0y9UOE0CUtMS/WSPXNoGch1QaiR0XHmiBTWL/b3jM7ZCiiLDU/P/lsqPVdPK0L1Xa9NmlzLY4PtASyzPs4Q=
Received: from AS8PR07CA0047.eurprd07.prod.outlook.com (2603:10a6:20b:459::35)
 by AM8PR08MB6484.eurprd08.prod.outlook.com (2603:10a6:20b:357::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Wed, 2 Nov
 2022 00:30:58 +0000
Received: from AM7EUR03FT020.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:459:cafe::c3) by AS8PR07CA0047.outlook.office365.com
 (2603:10a6:20b:459::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.19 via Frontend
 Transport; Wed, 2 Nov 2022 00:30:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT020.mail.protection.outlook.com (100.127.140.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Wed, 2 Nov 2022 00:30:58 +0000
Received: ("Tessian outbound 2ff13c8f2c05:v130"); Wed, 02 Nov 2022 00:30:58 +0000
X-CR-MTA-TID: 64aa7808
Received: from 802890fbb9a1.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id EC835CAB-916A-4107-81C2-10D1349C0AAB.1;
	Wed, 02 Nov 2022 00:30:52 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 802890fbb9a1.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 02 Nov 2022 00:30:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bu12ZTJEC2pgqGAqDOsxggcNPak0LnYMuXJbcWFNKucYnP3brTgu6vRo8A5zebgba1LHQOqzOJjpdwY4uk/9ggymF5s8J4gD8sFhWkrh6BwtQQbKl4pYz//1h2G5YbHctXt4tNj57H77rzRlyFPxsOSh//pCTTip9X50VeIiGUGlef08MKoCcY3GUbhwPhmZJtEFggkgg/kRGQnM3wqKuOVu7nTzGPZo+SZ1anF1gZy9AiLE7QXKgwfqDwrRrHwj55qBNQVxoqVQ/y0xYsyczPwJdISNrqnytaoOx+o7lfVSYgSDDluZwi7RxauuMKF9278eZFwczUflcaxjHuHngw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7nMpi+yFa9/DwwkxhOP4wQ16LgCauOpNLv74Undyn9w=;
 b=fmqEHr4RML49lZLcMwc6NeXCTHNGbwxfwe2ySmINyEqpQpuQJVngN0Gf7D/5SVHjMW88UoA7sPC4m5X38wyRE9aZRVRNOqavIyHq5LdvPkerf0ktKcAQiqkajqIDOzHukpzZadzy0AUg9t5I4PGvOCAO2XRsdjxCusgNH3oE8oig97JlYn7CEo4qkHIF9TXGbkkwf6/vAqu181kfEhU/WQKcm51A3Xw/imwmTW4+YXL6VPgcXkOvbu7W7CxEGN8Q1JdGHgQYXJX7iearEToxe+RaB5cIZINjyICns1/MQOXYm1OAVivxEzlsD5uvzeoCIDAtMvHeF8LAdaBaBkDbIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7nMpi+yFa9/DwwkxhOP4wQ16LgCauOpNLv74Undyn9w=;
 b=JbBEHsGo0HRaT40iCEa1cL5MP4f1aOi++I6v1ZCBmQnPQFx/fjTWuGpYjeXO+iK7eBBTVBf42RCwitMO5wLaTZtF0y9UOE0CUtMS/WSPXNoGch1QaiR0XHmiBTWL/b3jM7ZCiiLDU/P/lsqPVdPK0L1Xa9NmlzLY4PtASyzPs4Q=
Received: from DBAPR08MB5798.eurprd08.prod.outlook.com (2603:10a6:10:1a6::21)
 by GVXPR08MB8210.eurprd08.prod.outlook.com (2603:10a6:150::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.16; Wed, 2 Nov 2022 00:30:49 +0000
Received: from DBAPR08MB5798.eurprd08.prod.outlook.com
 ([fe80::dfeb:1527:9fd:297a]) by DBAPR08MB5798.eurprd08.prod.outlook.com
 ([fe80::dfeb:1527:9fd:297a%3]) with mapi id 15.20.5769.021; Wed, 2 Nov 2022
 00:30:49 +0000
From: Jon Mason <Jon.Mason@arm.com>
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: RE: Langdale branch for meta-zephyr
Thread-Topic: Langdale branch for meta-zephyr
Thread-Index: AdjtOVKGowIP0UbZRJehIMs1VResHgAZGHTQAC0fqIA=
Date: Wed, 2 Nov 2022 00:30:49 +0000
Message-ID: 
 <DBAPR08MB5798A14BBC36C8C43B157FABF0399@DBAPR08MB5798.eurprd08.prod.outlook.com>
References: 
 <DBAPR08MB5798254CD368AE30D2B33713F0379@DBAPR08MB5798.eurprd08.prod.outlook.com>
 <CO1PR11MB5026178FAC96C620AF1ACEC8C4369@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: 
 <CO1PR11MB5026178FAC96C620AF1ACEC8C4369@CO1PR11MB5026.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 59B12A14FEF4C04B9C51A4FCE54924DE.0
x-checkrecipientchecked: true
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	DBAPR08MB5798:EE_|GVXPR08MB8210:EE_|AM7EUR03FT020:EE_|AM8PR08MB6484:EE_
X-MS-Office365-Filtering-Correlation-Id: 53c21a19-917c-43e0-b948-08dabc69836d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 2z+NpurpksNfLc07TmV/ZPVIUG2tbL7oIMxoSXiZMJNursmpRlWkdMVNtxJH3N1kOoRcihuU2UOjUWRYFceZy5GnIMgBFMB78w++kSCMY/mY073zbPykCVdCWY66Z292T732uwmvWR7iubnJC+jaUj9FwfhGay75B3GDL+jAtQ6ONIfIt5Vr6T8e9IkAckNMEwjpvP3/6KIdUN6IHKJFMaLeQONotgydPzjJObnlgNY83I5jqZ4CuNuYOHLnJvcDuDZlruoOmIoGvIZYMtLW71ldF0mvJYJG+myRcHqDHW1ZgwbTSGstR9vG/vxyb1mDcGg9KZ7kKsbrUqFk1MbOs+lJUT6QX61R77jl+Qw0RfMrbNMfmZTJZXyHW/VIDm83DnJeXX+hkKiRTsEHQ/04H9fAY45rijBxo8i2ZlewxzYcAmpFgeXYMJehKSUGawHqxyzSO3fbmI3uBaMbebzysnRh110newL9ep9NPpkyllVNScw1rUHOdVPNa4OI44zFSycXMnGQer3/TXF8UansetJFnCBnw/9d64JLCPqiK5/5WrUzp8kyw+XnwlNjEeDND11mIdsEquE2a5V2k3eTu4E+AT0hdsUqLjyh8CUxuIfWLBeTYq4eH6An9WgduIVETzD3GnHyY3/KMlxywyBz3pG0VADew4aMJSp/b3TdJukCpkB7UdCaSNQbbGi7qzPFlHQVWw53lOaEnJjpLZUtue3fcF7JOiv9FQ209jbURDA/iA+iZAQui2ICdKecXQU1BHc9K9ggmDJ0NBTE3obZlTm+Djmcs9A9b5P9CTkvClQ=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR08MB5798.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(346002)(136003)(366004)(39860400002)(451199015)(478600001)(38070700005)(71200400001)(33656002)(166002)(316002)(6916009)(966005)(4326008)(83380400001)(66556008)(66946007)(8676002)(66446008)(66476007)(76116006)(38100700002)(9326002)(5660300002)(8936002)(7696005)(53546011)(9686003)(86362001)(122000001)(6506007)(52536014)(55016003)(26005)(2906002)(41300700001)(64756008)(186003);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_DBAPR08MB5798A14BBC36C8C43B157FABF0399DBAPR08MB5798eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB8210
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT020.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f6d82e3d-fb83-4b72-f48a-08dabc697dca
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K5b8yi2QUf0li/rpMahNghj5imRTRSvE9lt5ff1kzW7m5ddUebpg/ZJxjGuuLlhI4s2FuV0tW/PTMm081LHq2giMBFPzKEqjFLr2Actk9vty41YC4jlvwo23x15nh5MoI2wRi6GrXwRA8RMCzR0rkkXhBifZtXuGtaqJ7KwCXjcp2bglaQfOY+aV1xkmiPnYhx/JhApSGNSleAwwnuTRUw48RW2MAex5cxfzJCDp4Hk0FYJzTKXVM52qHr+mPc+UoDnZK3SxJyaZu7h9lde4AKNXpfJFDoQdKd8uUh36PesA8e89c9M3qxZfgE0kpuZgxHlxBR2YSkl4eetyEk9qk1BsesZIqp4OP2Q14qB+n8J1EOKH2y3PowVhQBh3imLnLQod5KUw0Hz2znMabN9rzcbRMv5Q+aYz97KWu3BuSIQlLWWg+OIFeEOYFAkmiIURaBruoZqQ8qh7NBGySfQ/Q00pH8VYFbmzWFV6Xl3f5kpmUl2WvMNcB4ziD09wDehocz4QsYjs7j3k9yWmMAsiGpxmOPkmbrMHVptqR6g9W2QS9HjXwKMXtpxU4s5OvdoSHPUqxaJrVCKy7jZYER7ddMCYlx3YqOAvYfjP7oUAJmp/mLPh8kQjanMfeBc2OP7zfEd6S2mradMScEJV5uYXH9XdqXd1A6wjyMz9iGYz0Mmze4Usaeed2KYZRe9tY04gHd8cQsk9cd0SCCDVGz32w6xZ1mw4bStU99yBbIiOHR0kfAfupmwdU4ANaFdvlAi6qtjKLGFbypNkrp9i3nKa9KIRAzRL+6FKWeuK9mZsaDjUP+t6i6Wu5hlMl3oPJXr0
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(396003)(376002)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(82740400003)(36860700001)(5660300002)(6862004)(2906002)(47076005)(83380400001)(33656002)(86362001)(356005)(166002)(81166007)(9686003)(26005)(316002)(40460700003)(186003)(478600001)(40480700001)(55016003)(8936002)(966005)(41300700001)(8676002)(70586007)(70206006)(9326002)(4326008)(52536014)(82310400005)(6506007)(7696005)(53546011)(336012);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 00:30:58.8003
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 53c21a19-917c-43e0-b948-08dabc69836d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT020.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6484
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 00:31:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58466

--_000_DBAPR08MB5798A14BBC36C8C43B157FABF0399DBAPR08MB5798eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Naveen,
I'll take a look at it, and hopefully have a solution tomorrow.

Thanks,
Jon

From: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
Sent: Monday, October 31, 2022 11:01 PM
To: Jon Mason <Jon.Mason@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: RE: Langdale branch for meta-zephyr

Hi Jon,

I have forked Langdale branch.

Could you help to fix arm machines failures with zephyr 3.2.0 upgrade patch=
es ?
https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/677723187

Regards,
Naveen

From: Jon Mason <Jon.Mason@arm.com<mailto:Jon.Mason@arm.com>>
Sent: Monday, October 31, 2022 11:07 PM
To: Saini, Naveen Kumar <naveen.kumar.saini@intel.com<mailto:naveen.kumar.s=
aini@intel.com>>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org<mailto:yocto@lists.yoc=
toproject.org>>
Subject: Langdale branch for meta-zephyr

Hello Naveen,
At least one team within Arm is planning on doing a product using meta-zeph=
yr and basing it off of langdale, and would like a Langdale branch on meta-=
zephyr for continuity with the other branches.

With the recent release of Langdale for Yocto, I was wondering if there are=
 any plans to fork a branch for Langdale on meta-zephyr.  Doing so prior to=
 updating the zephyr sources to the latest might be a good idea.

Thanks,
Jon


--_000_DBAPR08MB5798A14BBC36C8C43B157FABF0399DBAPR08MB5798eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Naveen,<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ll take a look at it, and hopefully have a s=
olution tomorrow.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jon<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Saini, Naveen Kumar &lt;naveen.kumar.sa=
ini@intel.com&gt;
<br>
<b>Sent:</b> Monday, October 31, 2022 11:01 PM<br>
<b>To:</b> Jon Mason &lt;Jon.Mason@arm.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> RE: Langdale branch for meta-zephyr<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US">Hi Jon,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US">I have forked Langdale branch.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US">Could you help to fix arm machines failures with zephyr 3.2.0 upgrade=
 patches ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US"><a href=3D"https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/6777=
23187">https://gitlab.com/jonmason00/meta-zephyr/-/pipelines/677723187</a><=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US">Naveen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Jon Mason &lt;<a href=3D"mailto:Jon.Mas=
on@arm.com">Jon.Mason@arm.com</a>&gt;
<br>
<b>Sent:</b> Monday, October 31, 2022 11:07 PM<br>
<b>To:</b> Saini, Naveen Kumar &lt;<a href=3D"mailto:naveen.kumar.saini@int=
el.com">naveen.kumar.saini@intel.com</a>&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;<a href=3D"mailto:yocto@lists.yoctoprojec=
t.org">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Langdale branch for meta-zephyr<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-MY"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Hello Naveen,<o:p></o:p></p>
<p class=3D"MsoNormal">At least one team within Arm is planning on doing a =
product using meta-zephyr and basing it off of langdale, and would like a L=
angdale branch on meta-zephyr for continuity with the other branches.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With the recent release of Langdale for Yocto, I was=
 wondering if there are any plans to fork a branch for Langdale on meta-zep=
hyr.&nbsp; Doing so prior to updating the zephyr sources to the latest migh=
t be a good idea.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jon<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_DBAPR08MB5798A14BBC36C8C43B157FABF0399DBAPR08MB5798eurp_--

