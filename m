Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4705BC64ED6
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 11:09:12 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.85])
 by mx.groups.io with SMTP id smtpd.web11.87555.1677496150773939264
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 03:09:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=yA+pek1/;
 spf=pass (domain: arm.com, ip: 40.107.8.85, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dtrS8kZx37I/e+gKUZhvRJ2ZXBMtL+1SoeqXAhcRolg=;
 b=yA+pek1/yQZPIYKiF4iiBAzO0pQr1GTcE8tUbdrP/w+ZiJHC8uNh51h6t36ATMVfCjohOktqgnwSomiqwlTyzqrEwOE8uh0ZJ4vrs+hpcfDKriL7ewJGO63befNdNH2+wUgN/ZOpE+hQnzRHJUCkL88TL/AeCuxaosQMYasdu6g=
Received: from AS9P251CA0014.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:50f::18)
 by DB9PR08MB6425.eurprd08.prod.outlook.com (2603:10a6:10:261::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 11:09:06 +0000
Received: from AM7EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:50f:cafe::15) by AS9P251CA0014.outlook.office365.com
 (2603:10a6:20b:50f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29 via Frontend
 Transport; Mon, 27 Feb 2023 11:09:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT060.mail.protection.outlook.com (100.127.140.216) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.16 via Frontend Transport; Mon, 27 Feb 2023 11:09:06 +0000
Received: ("Tessian outbound 43b0faad5a68:v132"); Mon, 27 Feb 2023 11:09:05 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 832eb32833f5daee
X-CR-MTA-TID: 64aa7808
Received: from d4f8a2593dce.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F07DC9B2-7A8E-4701-97A7-83E18E6BAB3B.1;
	Mon, 27 Feb 2023 11:08:59 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d4f8a2593dce.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 27 Feb 2023 11:08:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UgmprrJxbajdxnjwWevz/of3CpoXid9xyHpUcpEiFRZWFocoqMdjHS+7XQ8D92jYx++3/pUZlhusKuTCeBAh3gFGuTf6Wud1/1nozCcHP+GI0nikkfjUsokJDaJxGlMfNAYejmlSVI1xiwxsvIo6ou9huGcr7BJHNvxelhkRqE4NHL3Nx63qOvej61Gj3KNIjGaiHRcQziEs/dXntQkbH5xqE/BweNVyACHzGnmZZyIhyxqD0gfL+5gb/K4nq6Wn95krBoOO7dBRpi4FnA5mJ/G5p0+0AV1TDYEIj7aV07fHMkPQjaQhAeqao+bMWk7w3JGlVtE3zu8NT1cdk8jTNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtrS8kZx37I/e+gKUZhvRJ2ZXBMtL+1SoeqXAhcRolg=;
 b=BeAt/ED8L0qfauLRvajuu3VV4iicyeBRT+awTaUm6WVHu0DuddUI7PlURcQyfHaRJPChJR+aQqEezY+7OBDVSoQhNLBwVv7Zz74ofSWsyFTnuBsjm+ATNkHCAvFhok3m6Y5yj48pW13gc+1ppLkBWmIxs2R6aa2OsQuPF20Wu/5nB9kFOPbrR7BBkdNhrNwd0uCs3fAUCbTaD9ttPjovr6Vyg/NSwesQEZzyHT1jeKbjgENXGcLKWJ8HCwuqAwAUNK/ZHloTKOcH12IlWp5dQ/Wt3XitAWOcsPsEGX43AOs7byzEc6b80Z1Mx+eQSTozOTf2PlUwst85SS9DqreltQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dtrS8kZx37I/e+gKUZhvRJ2ZXBMtL+1SoeqXAhcRolg=;
 b=yA+pek1/yQZPIYKiF4iiBAzO0pQr1GTcE8tUbdrP/w+ZiJHC8uNh51h6t36ATMVfCjohOktqgnwSomiqwlTyzqrEwOE8uh0ZJ4vrs+hpcfDKriL7ewJGO63befNdNH2+wUgN/ZOpE+hQnzRHJUCkL88TL/AeCuxaosQMYasdu6g=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8398.eurprd08.prod.outlook.com (2603:10a6:10:406::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.27; Mon, 27 Feb
 2023 11:08:57 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::e305:742e:e10b:1093%2]) with mapi id 15.20.6134.029; Mon, 27 Feb 2023
 11:08:57 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "minecraft2048@gmail.com" <minecraft2048@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Does python_poetry_core installs dependencies? #devtool
 #python
Thread-Topic: [yocto] Does python_poetry_core installs dependencies? #devtool
 #python
Thread-Index: AQHZSOjhCk1vpFYgLkSyQ+TdbjQ9IK7ipeYA
Date: Mon, 27 Feb 2023 11:08:57 +0000
Message-ID: <95B23DB5-C851-4731-A46E-F3189B9B9618@arm.com>
References: <FABu.1677309282952960631.ZNJ5@lists.yoctoproject.org>
In-Reply-To: <FABu.1677309282952960631.ZNJ5@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.400.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8398:EE_|AM7EUR03FT060:EE_|DB9PR08MB6425:EE_
X-MS-Office365-Filtering-Correlation-Id: e8a4f581-0b39-4664-6a1c-08db18b30abf
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 ypL9JtdwyXCpzO+pXiI5k8/YRsP8KLIQd1aSTtHYVdoiCinjG333zqYTeNDggATMcqY0m0AS16zZFmP8uB/vA5nu0VQXRmPdtnlGwFwTPpo7EIHnSQXPu9PzRMo2ZapA7r88WcWxmnvfk7GOn/2vdUOBDEM9l02aaJdY5rLfPATQ6qryc8BO9zHcQ3qw1ZhDj2RWhibVIRMPvS9Uf5VBtK3kR4j6JlkWqj4U1AKuYOEZ9qbWScoIbQZD3sL0rs8qsJ0YVSlPe/fElfaF1EhM0RhyX/Izx9dU+zTBYsBrSq9DnmBCFKpGaj52u7h7oxLFVaqzVp3i3KqFIuJEXofX03hpHzmE5vQMl6T+1RTJ0/ivpERd3p2MScEaHnlZRil1Baj35QtVB65V6xrMKtbputDfRkbuDbN17TGncYd6n0ty31EYpvzbpVIhV9OnHAyegIwyzXDLET/QBF1yj12Z8UJ0IiXkT2621LSF/40znZey6EMBL0d7yaLNT9jNEBeyJ9Yg5y49qx2CSHDmM7b2Oeo3IX5T+ptn2mfhgfL6BzESxEJOJGwXItKjJMrOoAz/wFLbMkB1sluuY+e2TwGwa6MOy+QmefNK/BBd5Q34vxKuHltmwlhmKvPELPGEaaq/cSwPzKfbASb9/TRu9d9yBig3nAeYG6p6blWsezoxY5I+FdaJt4kVJuuRwmXZr7WWOpxuXIVG2a5vCYVJDoLKcvlGqEBk2itqqK1W9GQA2oE=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(451199018)(122000001)(8936002)(316002)(38070700005)(6512007)(8676002)(36756003)(186003)(4744005)(478600001)(53546011)(26005)(33656002)(71200400001)(86362001)(6486002)(6506007)(2906002)(2616005)(38100700002)(5660300002)(76116006)(91956017)(4326008)(66556008)(66446008)(66946007)(64756008)(6916009)(66476007)(41300700001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <D0CE6DAD096E8441B1BC404DD20BCB8D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8398
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	dde5ff5b-2337-46f6-5a39-08db18b305a5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wXS0ckzpE+ii1yg5GKjTu2UeQq1Fpb1MNnPk/Iwj1ODj2/+8JtAXPW157XIsRZTL02TzPSBu6uAu1/wVcRkZGHWDbyOA3BzHUUf1F8FwDrMDxxjPO3HWwA6rDhQ8+gf/Pzg8wFK4o0DAVA9eexsFln5AF8J8Ulnj8yO5WoBOpBjjFp2EqmrMFssM2y3UIVX5GQ3IF/64fXfzUHyQ/cWZgXZHDLDhAUOhwZNGbiuWvKrxu+s6pHQev57x/QOulhIttMoZsw5XsO4cNhpXmRMu4dvSP073bX4odG5UnOUxkWEtU+ssoMpMNs2g7GooY/47CCr/gC8DhUhQINB+/tzvKnHwC5iIaCpVMGMY1pKz6ECHKBHBpM8sjjndq2Z03YNsnClfjVhy2EhXYWMWwpuBvFOuVMh4z5v81UxqQp2VQt5rC/LYkGeeg/XBOXHSz+xvCTnT0zlxYeE1UBtchRrp3Gdezn+66Ggx01anyq4Ba6rODH4IWLa/ExIHEvKi324zKKuWdGsCFa3pn2QFKvV5q8idn0HBK26xrivsFZy30p1q3l9JPL8CdcrhU0ht2G+uVdRuWwrwcIXg0N5iFd3Qtc3UwEqnllnTM9LkyvLRdS+fmVzPCd8scgWkDu2+Ktom6iUFpLIQiq0a3w58UDETxevDVfphREOLIC5yEIEvsZjpQmWVUkNyKbT4L/dbuqbeuAontVwkZKPYg+4hboaVlg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230025)(4636009)(346002)(136003)(39860400002)(376002)(396003)(451199018)(36840700001)(40470700004)(46966006)(82310400005)(316002)(336012)(47076005)(33656002)(36756003)(4326008)(82740400003)(81166007)(8676002)(40480700001)(36860700001)(53546011)(40460700003)(6506007)(2616005)(186003)(6512007)(26005)(6486002)(5660300002)(70206006)(70586007)(4744005)(478600001)(6862004)(8936002)(86362001)(2906002)(356005)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2023 11:09:06.0961
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a4f581-0b39-4664-6a1c-08db18b30abf
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6425
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 11:09:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59305

On 25 Feb 2023, at 07:14, minecraft2048 via lists.yoctoproject.org <minecra=
ft2048=3Dgmail.com@lists.yoctoproject.org> wrote:
> If I inherit python_poetry_core on my bitbake recipe file, and install it=
 into my yocto image, will my python script get all its dependencies and wo=
rk?
> Or I still need to add the dependencies to RDEPENDS? How about virtualenv=
s?

The Python build tool, be it poetry or flit or setuptools, will do a build =
in the environment that the recipe has defined: only the dependencies in DE=
PENDS, no virtualenv.

The point being that we control the environment and know exactly what versi=
ons of what packages are in it.

Ross=

