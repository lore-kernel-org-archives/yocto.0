Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84F44C3DA6B
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.55473.1661653805209493028
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=s20iLsyQ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2TgpP010099;
	Sat, 27 Aug 2022 19:30:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=uSlALLMZVr5NHJgnOswfzcqemm5Uap4suyJm8pGtqYE=;
 b=s20iLsyQ7rG0t4fouQyHMCEAjhgMXekdxRtDtpANjdAPTwWRNG79hEeFFmYPcBJcr/fB
 30eDDdo1EVj647ASP35Dx+2n026OugYT80EKHS/qY4ER+emE/WqBuOT5T89VOUk/1qrb
 JOtC+MASwNnFnBK1guYbnLY5I/doin9XD7DFK0THXICMhDgHKHzKQyPBRTS9qReUyigD
 2iE7NhZVNdimPbfYEtd12mHUvGtyYsPF1haW4YrWM2CMjXzIscilnCIkauSRTauJkGuT
 KILvuvSf24OIfsiHf7QD3fGPMa4unhpueKBHvDrSiL+IFMp9FVcz+r6ILdvNR0MF5kDw QQ==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7ej60hj0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BiPPabFINoCLVneA6cAg/kg6mbKKsBcO0ifneHUd89Ev1zMuuX7ez2KJaU9iVMvM0Wx7PUJIxP7RvJ/P8fiwpzjAzcQ+dX01A/m+23nOSUzR64zSev+uoUKRWUAosIQ03Ytiry+7oQZuXhmFh5p24f6axqVTfyRJJzJ+G8wU2Vd1PzYuU7kRH5jjw9iI8jC3EM9ylzq5zQO7c+OCtND5tuI2bzO8YSs5eQiHE1WalLAxbeq3pyAo34MQoeJtcgwmWI8+eDV2xnyrtIPqm7Whx9bueUByAjTucOrd6LwrId8gBqNENsc8iivChtwOmFwqKAjiSapdNpXQJexPa40rOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uSlALLMZVr5NHJgnOswfzcqemm5Uap4suyJm8pGtqYE=;
 b=Uk9xW6+GfyhtBeTfJpvY18vCELddDJFKolixFBS6YubgP+EMqQlmvDP0WJjVayWVtcffmsRRwDpD1rpjXO0cWC69TXYQstDeqiDBwx0HKV+ggDlRONdIFSP7sHLEqK+LM9fq1oo/Iu7NOer9w3CIXbbw/3HysugK7kb4ZerpFQuen/CmBuh94ItqppGc0luS4EyfXFjDFVLDck3EyCzPCvjmZmyCgtzaEp/jCme1Dj/obppOrY1P83LrVrcrzBvOKT1qSrpMupM4Xs8WmwvYPRlWn0GrtMtxjNzHl3vaU7mfNIPTa0JtNQq7DTo1BKAsjgNSIXnRHXQ8uFQRo5UmnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:03 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:03 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 10/16] restorecond: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:28 +0800
Message-Id: <20220828022934.47592-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c7d0aea-134c-4179-e714-08da889d3631
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2xK+wXLYFKi/BXaVvhQjqPbi5KTDptst7yjt53B04TDwbZxCiCKpbNrmJzC4LNDiYCsowgGI20pn7CwVWViQfdqNyc3UimK8dLVd45RBpJA6uYLcaG2W8qbh/XiywEqttS7J6vliJsD44FVF3pt3QgQeE8jY+wj78lVMhhUgAvVJUmfyIDbFzGwkYfEofPdQqzaTfkLlH1S5Xf8kKNV0Dzz3dxgaKOt2emT9uHmXBJUH1dWjCJfGvO2sQZFOVw5o3gVx4BtHeAtu0XJ931+0FCKQezY10RxD1oaWeO6+OH1nDC6cpPMan5KW310SN5kDEAMX9e3W9+2m8bKlBbTHGFPZ8r2FihR9rLbHfx+1qz1BRtqC5uDPCvJHFuvPdPXlTlxB9V+fywiOpLBgyQxQiuQGRmpvV603v+Q+OP/fLSuaBJM66T3NvowBMnyNnub0CpKCr3CVTF5/GRGsN1txmnfBd5HtaU9PfeO30hHaq7bCdvKj8hLivBT3EOW8I++PBzlJLe+YW+CEvEJ5NEsxygbf2jfOThXpc2lk4VHZowrhDzHadmD6lfJcJh975M7XVyZvZLlH5Jcn+02aXajgBJcVPTscOiXwRdrQDIPq8yzTljsT4hj3wkhDWJXiN5/01acpf+hdfVwMNBjWE7l9r7tVK4n6thscybH7HLdYPWoG0rhT5SQumdV+TdTH2+ioJHijBojPBOmKWe2N+Hq9d9A8iLJ8T3zVrpWamiGe87ASKk858r198cYGhjyunY1sg7LpdbMoBvID9HGX1ITX7w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?vjBmraVBns4U6zRW7FRvvkuejjIi2JHSfZTR6481tpq1q5MdrBg9AUQpAIex?=
 =?us-ascii?Q?af3kWQnl3FWX13syIhnZHtn/050NXELs1CXpr9VHHIanCzZfqX8ERxFEfqun?=
 =?us-ascii?Q?tWBe4WVP/Zs5ujxTSzU3L5/7kyraNxKhManqQG8qjMIMqvG+1yXqf4X/pvdJ?=
 =?us-ascii?Q?qZwqFEcs+areC5HDj1wHGtghu2qWbUtGczOsr50SP6hGSZDpE5/9vIFzQaBM?=
 =?us-ascii?Q?rorUbofw4ifzn+0HjawfcuNTSPr8DQQsGz5LmCqyDdU2h9sk8Ce7oIf1N4N7?=
 =?us-ascii?Q?TKrRRD4QeniYstOEKDGMUvCZO/LmEGk0DOkCNfdxcihZt/4cqwfxegANCuu3?=
 =?us-ascii?Q?3UzxL01XgO2PGYADjlEHrnviHhlDZkULus9bcpaE4I3LGEuyAw3fShqNDBC2?=
 =?us-ascii?Q?jVBRmtJggvXlbADLRJdb9SPVn1jurFVhOV7s36x9182/uaLKkfUdRfJ/pBkv?=
 =?us-ascii?Q?qvq88F7rCaL746uWPxS3wdvWIcDlJwDRRLnJggKFFHnfg7Et0YXFAKHnawmU?=
 =?us-ascii?Q?Mti7dSDDuwttxAYMn/Vr2tYlJ/PpkDl3yfoFePcQbElr1BsWqItjE5Pt4Ena?=
 =?us-ascii?Q?iwMWZfMDZ8nBKjkvREKPtb7Pz2d9boSYeFHeaBqoW+XeEaBcpi9zGtexmlVD?=
 =?us-ascii?Q?sqMcg8rTG1TtpoqsR5ftvOW9OXZVWntPH3YEqTvb0gFYj/zzPhANPXPXDjND?=
 =?us-ascii?Q?e4qafCpGm+y7wWNcRRG4v+LSEY7pvbMYtJmGs4O/V3lXHJVbMRtvktqxcYeg?=
 =?us-ascii?Q?O50yPF5kNtQf8q77pjp49k/p9gx+sEhYbfUEMusjhg06ckDSgWvk2iSBeYko?=
 =?us-ascii?Q?2chmrJHGU4XHbhPvVxglhG+cz5Eon65kadMkznHykWOGjyQCfKB2MscPMsYE?=
 =?us-ascii?Q?1Sdq9lvjZ94kPcW6IHbr2jCToPooPuts9aJ5BSG940abYn9oOXh4Tnrmqqfq?=
 =?us-ascii?Q?9pWEgu9jCjKKAxp0wsJauvVMkb6tZmzeWfkx7sLmJ03QSiy+1IF3L8N1f6mW?=
 =?us-ascii?Q?lLpfoZQK9rCuz5VdBKOlDJGCdyACVKL0hJegmSeYXBM12x4TsJszd8GkGJNb?=
 =?us-ascii?Q?QYAp9qUtMGkXV6E5aEdLoaYGei4AAUVUG5ZX63acPSx4yYalEof1VXRiJnHQ?=
 =?us-ascii?Q?tDzPF4+MBR+54J6F1WqpOQaeZ6h/uOai+c2H2oGQMKnbPhT+1/ZM6ggydBep?=
 =?us-ascii?Q?bz7w4ylQMh0YIGM5Lfw2YZ63QbSTg7cv2n8CDbEeVOerhEjOlEIFeRlKfaaj?=
 =?us-ascii?Q?bmNMYQbGYSu7sDhZDXAP95TtLIS4cA6C4S2LfYzlpYH+/XzS6HyWNcTocpX2?=
 =?us-ascii?Q?WMQc3n0UB4GUrZ4KtepSxxQCFAW3OjPdR9Bs0pr9L3q2CHQ4KnyFLXxeWPwt?=
 =?us-ascii?Q?NjxC8TZIfbbat+Kri7DSucH48Ug8urbMjs9varw4BX1iPg9Wubsgr7n5wnga?=
 =?us-ascii?Q?/yr3nTBMvo06pHKktQZQ7nfFvbD95XrCXjyirODgUEZmBWktGgGenIsGNnRe?=
 =?us-ascii?Q?gQDoe3IDNen8BwT6g4HvnuFoWy+GMLP29W4egQlNli4fdcjob64dUNbK7/Ha?=
 =?us-ascii?Q?pALrDafACCQqLJBiMWwEaCKDz5EOOdYOCeJp9WeW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6c7d0aea-134c-4179-e714-08da889d3631
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:02.9641
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 iIJ1oNuEq/0Tq/MricYdC/hOra3VX7aSNtdO/ThS6TdvJq/0qlCW2Kck6IYJrrcSENCQf/7JiDVyxKRbdSupww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: YJX4ON0McbPBZzLRqOu859b6I4KMl84E
X-Proofpoint-GUID: YJX4ON0McbPBZzLRqOu859b6I4KMl84E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 mlxscore=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 mlxlogscore=707 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57925

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{restorecond_3.3.bb => restorecond_3.4.bb}      | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{restorecond_3.3.bb => restorecond_3.4.bb} (86%)

diff --git a/recipes-security/selinux/restorecond_3.3.bb b/recipes-security/selinux/restorecond_3.4.bb
similarity index 86%
rename from recipes-security/selinux/restorecond_3.3.bb
rename to recipes-security/selinux/restorecond_3.4.bb
index ee1cb44..5b690d8 100644
--- a/recipes-security/selinux/restorecond_3.3.bb
+++ b/recipes-security/selinux/restorecond_3.4.bb
@@ -10,11 +10,11 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-inherit systemd update-rc.d
+inherit pkgconfig systemd update-rc.d
 
-DEPENDS += "libsepol libselinux libpcre dbus-glib glib-2.0 pkgconfig-native"
+DEPENDS = "libsepol libselinux glib-2.0"
 
-EXTRA_OEMAKE += "SYSTEMDSYSTEMUNITDIR=${systemd_system_unitdir} \
+EXTRA_OEMAKE = "SYSTEMDSYSTEMUNITDIR=${systemd_system_unitdir} \
                  SYSTEMDUSERUNITDIR=${systemd_user_unitdir} \
                 "
 
-- 
2.25.1


