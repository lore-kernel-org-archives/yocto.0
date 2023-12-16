Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07BA1C38147
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:31 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.12151.1702714947372056530
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=BXNhtFat;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG8LB1u024985;
	Sat, 16 Dec 2023 08:22:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=KTKaEeqSPr01wEKStsN+tROn3r7g66nVTMPMr70AVJk=; b=
	BXNhtFatIONktbbQt6ae4cjKE9F7KVw0DSpOiheHwXfmeqTL1Btfh4dhgDqGb0Yh
	fuYmEykVSfMb9M6lo0KQc9o189N4EJ3/OzmoxwoDeAKSORneTp6L3h3Zvz9O8GmH
	xRGYpndYEKOabxYRU1DkGLecclpk81XDeN1qfwW6D7zuvorCO21hvFzJ4vNvICLr
	GIqYWGrgObbWZbS8UHA1w4TqRjWlUvS+dJy54tCHn3nmhAQlF4S9XjVjDUYxuX8Q
	Ohm7NvDXKBUDJE/jywvIMf4IX7BmRQVEinBuPzCzc1GQUdHEI2tfua8742WjvJGL
	tlhVu3K2nd0o2/QtuSGcjw==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v12v5r5rg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:26 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNru/foyMKZhFcRng8QP3xbrgskRzVLlZryS7IhNC8s8cRpmZBmnh9x3Gxv3s1q9pg8tGORrGsjYIot6htPJEctMnTHB5YXP3CeqQ+Qk8X3TEtiNHlt8w1S8KBNmnTS2a8qrip32cyzJfk5VHyV8zdCQpveh+eKkGXZ5ygCaN929e4mOv968kSqSTX+JqFwIQajU0l8ch7xlDMZrdyDNC1tjvLYZzcVbU6WlAzYJ9j7Z2m60nv2YMBjuHwZrvox/0RXfumtESdeF6hI0sg7KMctWDbBwKC6nFfp8lDbGaK2kAL9Kz2OpuQG0cedyh1z5O3gOCC5F1txqftbw0bfeCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KTKaEeqSPr01wEKStsN+tROn3r7g66nVTMPMr70AVJk=;
 b=GubNvfeqyBqarjPrcV2HzRkmrV0jveiR34lDTPO1Ju2Kal1X8wI5ASQsuuaGHLLnslvlnTQjczUeWkzpbmoSe6a9nkWnm69ve7bs9XqL5OMMQsEXiuiqIRSU5oNgJ4eGzNJwuwxJ0iS3k0zwEBX02/I+dKZUCJkB9GfS2VelOW7ucVwZn8pqB6SNSRKYtbgnbDSyPv6nttt50sLhySdr8iULn86Lcv22nyJQaHteYOSxqa9vWBqFJJ11vjBaCJat/uL2T6uqGC0Y69hQa8ObEr0RIRREuVc7K/VIrxTt6PDOg0wkEx0cOLYCPeDBkiyjaqRq5wXDPVCA8kdj2vMQpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:24 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:24 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 14/15] semodule-utils: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:41 +0800
Message-Id: <20231216082142.198501-14-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 52685c36-e0cd-4d7f-bd6e-08dbfe1021ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fiWDTNEntukkydye8dx9xlLt+4HeOpSH+1zhMzUI1MhIXsrRWgHEZJN2wSSm6ACNIUA9BzmCdfVeSIvYQqMfXJUYwA2LSquagULdrXLzta0jTY6ONjYGD1Gg+XpEr/6LDVtvWs1SJi1L3lZj2ovSz2R+05N5B5yxrtltG8YnxO0y8KZVur4Hkmm4DQqIS/Wgg6rJoQTgv+Jx0ZwWjlu59ZulILRuHsaMXCTRKH4/6yMbqpnFJ3t9oDwLSC8dGsvotXjZfpBsp+qYYrI/oUUQX4XtASwAuiTrVBr4WjFSzwMFn9U7BdfDB04nuQ0V5KKbgF/nFTDqYz6VVDQCJ/bvdnLWRpJ0JxVXFp4mBLPVdlT5jMz2DYQfgOD4IovzeOurq8NdefBfsHf0fXKlwEYJ/A50LGRaJCfH6mtNeG9g7mD0dMba7U0MwBoFmbAsKl9qW0b8Biz/YTZ223VPTFrqh76bbAbLpnVzg0+Rr6c2FeVDsdkP/5XAzek4GcS6kgEMBwn/1RIVaJ7UOcH206y67t+sGRdYxoWN0uo6j82vj8oPkBoxDdUtAs8BBmUW/Ar1+xgyIsKoUl9hhn/Ci6tKDwmJoSG2nP3zqEMRRVjbD1stfZuh9QJw5SvRvq/QUkD0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?oWlfBzvA42RuU+M8uBpDXXwzqb8hOJxgdBgzZM7RbpxXiyrxpEcOTUkEspSB?=
 =?us-ascii?Q?DK1QK3hY7gH10HFJYle0j/1vaJgyOWRdO2bzg3vhH8Lyg30wMOLvW8BoM/p7?=
 =?us-ascii?Q?slAJ75+sf1Yf17VGDml2NWKledaBHagzCPlaqI81RgjHXMhM+64MDYUNnE3r?=
 =?us-ascii?Q?qZo61sR56AHMMfJb2wAMwhkVQbVJMouB3gHCAG+7DVOJb8bpdhbYNvStlarF?=
 =?us-ascii?Q?DtBXHfEYmpAZ38baJ11qt8EezTz8VHzUfirJR3PeIx71RNs580SaUNRljYOn?=
 =?us-ascii?Q?532byRQkn9uaUInzvYBcY0xcUeB7cEzd6246dZTIlSwM0CNg3G8ZcZJBqYP0?=
 =?us-ascii?Q?z8nJxSoWHuvinqNcyO06Lbo69ON/9JqR8Qf5/i7vqh6k9Eo5pHOWUZUmBsRK?=
 =?us-ascii?Q?tTsgxKs9rU7ruFlPntwwrCY3qqnMSnlI6Gj7sID114b3EkO+ATUW+i3j8ODg?=
 =?us-ascii?Q?kVBhFyXd6ZyJGKIchRZ9x6iIPZpSBPYRLqW8dYxcko2XD+kl9RDL8xw6d2HV?=
 =?us-ascii?Q?xmpoZI9Q3xAke55Vus2F2agGTdN7tlNXsfzKILG/HpsJh8ThJkxLY/aU+ODl?=
 =?us-ascii?Q?92U/MyAzqy0c+WIZXya/NiK45QDLeG+4lv/iJTiLdJ+9d1WF9f78aIB2dpVR?=
 =?us-ascii?Q?/kDAJCZ0j/fNgoN4K3Rypm/iuUbrXoGGYs0Px2U4OzUOULCQxzSzh1M6gb55?=
 =?us-ascii?Q?9LBHgr/m1i/m+HlomsaEDVUieJ7IvMnwetmgBw6PGNID2KoZAw93U42cZ15A?=
 =?us-ascii?Q?QRK7U2rQqI0nQ/Iz6071vNLUXyHPx4KKmSxg3LBnPLidLxth1CqSdrlJ6C/W?=
 =?us-ascii?Q?IMuNMAZw+CM2AUBm0oKrALyqb2HgUudLq0nEL8NEZ4eRGkMl21eiFFrojL+6?=
 =?us-ascii?Q?9U78HL2nfzcXLG+uCCFXZvT5C/BSlWm2D2Azmjjrr5nvIceSMhHVIVL+/DdL?=
 =?us-ascii?Q?Usinxv5eT63Tg4BYvdvYqX6DPOb4oMPCb1LgoeZRr/Xwe0RaPj2e1USi/oGL?=
 =?us-ascii?Q?CC1q5rmyMxDjQbOG2w2CtKSdByaH2L6WM8MIXIScXsgKJ1+XKpnY3HHglx6/?=
 =?us-ascii?Q?cyv/1xGcuNwKtjT18A+oCAFttDJ8vQbsQR9CxpSMl7VbxK9X54RtPmOtSTz/?=
 =?us-ascii?Q?43lvYU89Z5fCjl7nlh+ZpeT2smQZFSjhaJAXh1DSrFkQtZo5AIS5kngGJvcr?=
 =?us-ascii?Q?WVaIixyCrocDB5ij26l+56himqs+/Lar5zBb/t3tcyh5thsnfvXSn1YwWE+6?=
 =?us-ascii?Q?iVuwKn6stmz1+OQJx8D9FBYa4JjGkMN3CeBp1A4WiXqHkRtEH7s96dyVu+4R?=
 =?us-ascii?Q?zOrRofKFje0htTIKp+OYBdOI313KJ/rTQ5kQOaI24ZB6i+2rZathI/lnCWN9?=
 =?us-ascii?Q?UR1RGh852NLYUoNKsSFQSiZo2RbDqbDnr5zNyZS/SpHL2jsOEd0pqhDZv+F2?=
 =?us-ascii?Q?hSKdWEcTVuqHgQsqxirgEYBNM23u2rVzcnQpk5VmN5dMHKnUGZi8izWlajF2?=
 =?us-ascii?Q?vpefWOqpiygEgHsatILmSDqmu9DuLOJntAIOiFE1mY6mwplA+ldz171Mj8Ax?=
 =?us-ascii?Q?rMyTz5xqXQVX6wvnrSe0RBEgmkI4R/Sg1cJX5a28?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52685c36-e0cd-4d7f-bd6e-08dbfe1021ad
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:24.4885
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dkypF0OysiRevih5UaeOSFHfKb7Z5b/TV76aNrlcMY2ttKBPL/YRezQR2IhLr+C9LptPVPHz693B8BKhNwnlsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: LFvaKGX53vrB5o7LxqkBopgOgjBywzJy
X-Proofpoint-GUID: LFvaKGX53vrB5o7LxqkBopgOgjBywzJy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=622
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61940

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{semodule-utils_3.5.bb => semodule-utils_3.6.bb}      | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{semodule-utils_3.5.bb => semodule-utils_3.6.bb} (100%)

diff --git a/recipes-security/selinux/semodule-utils_3.5.bb b/recipes-security/selinux/semodule-utils_3.6.bb
similarity index 100%
rename from recipes-security/selinux/semodule-utils_3.5.bb
rename to recipes-security/selinux/semodule-utils_3.6.bb
-- 
2.25.1


