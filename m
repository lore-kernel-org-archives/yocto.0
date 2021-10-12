Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87A0C433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 07:01:01 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.10280.1634022060941931039
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 00:01:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=PMvwXUTx;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5919fa73df=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19C70wmf007406;
	Tue, 12 Oct 2021 00:00:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=CEpreppyUzNrnwjudWtQpSFh10WfCh7+s8dddA55tQM=;
 b=PMvwXUTxP05LBz/r7c2s3QxJsywcHnzLIr55mq7MbN+xXL88VLG/ry1g/QinJNj55vui
 On+XQ+6tYIwE9n9Qws0caV49jFx5AiNqWubURWmpKhzcFazhFrQhik8IURTKM9eCJxZx
 o2JJj0guqW1X00MhEfu4bVUk6jMFZWR3eZRpEGva8kKNktVwSOTp5Bghw4noHbBm92Ov
 vDTsw1ZTpFRmgihrqJ3BERNqXmUJFgJYdyKYzMy0XWbefHSaNhBbsPLVvz5IAFLQjb5C
 6LiPGvrq2py7vwMyTALD57QQ1JN9cHRgmM4DTsi5y+U/Gwxk+lUi96a+R6xk4JQwEfne /Q==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bmy72g7e9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Oct 2021 00:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PTVB+qU6xxdiyTYJICy6jqH+Fb7J3CVZ1OArmbnxfRtgla048dHT417n1NEE/WftqCLugxL4uNNXabvQqQxVUE5ToPnUe2RqZUD4kkeZz/HPu8EqlT83UrijAjcmYyqPozKZtogGk+LImPaloRozfn2xxA8DXc5Ax1RnRBhjkgW9j/BuWe3kpXsVRAHVxWI+6qfr6bUL+TObPNcExASqm7KNOHxDL3ho5Lr2kBZer4KExGcjqQK6xDcpGnSJvZZZmSttfZ0NSVzXjHm7Cgy/N/q7Djqvsdlq5yKgqv7Xj86AYeOGLDkBMItv+B2zrsjhEUxzygPGCACEqhvRhBS7vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CEpreppyUzNrnwjudWtQpSFh10WfCh7+s8dddA55tQM=;
 b=GNGVH+tEuTmvjNOgqM0x+jRACpL55QdI/xgRiU8KbMHDbdjeszcDKCcRtJwhlaCdoYd9LSLKUHryOjPvmhcbF5fPh4pEi0bXl5t8DwbRlQewuk3K7pKlzkZkxmJ/z4nnXaTm4NrOMeQjj3ldIheBE8E8TYrRiVLfE2EVmh/BUr08XNlTf0mSB5QcuRslulrFQC0NXg8WHGzSoqYdidANCyoRblmIWX771MblGaRFKxNklrcWOK2V4PArF9z/ZjtGwMdsiRVNrcNZXD2Io4Eqtm8IeYdXdJxYb05r6braPOHAw4Kn2tagFINq/v6dg/OvXI/PHOTu0pQS2/WNHA8cAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2142.namprd11.prod.outlook.com (2603:10b6:301:56::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Tue, 12 Oct
 2021 07:00:45 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 07:00:45 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 1/4] libselinux: inherit pkgconfig
Date: Tue, 12 Oct 2021 15:00:29 +0800
Message-Id: <20211012070032.124425-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::13) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:82::13) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25 via Frontend
 Transport; Tue, 12 Oct 2021 07:00:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 082e6526-2164-459a-4529-08d98d4e033c
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2142:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB214281BDFC58C942EED21280F9B69@MWHPR1101MB2142.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:156;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6MRQKT0QgE4CLIQOY7pKByvUlRvwqQmxesk4DZtmDP9voVncN/O8cd56pfu3+6SXifZK5mIf3gNJapUdp/dKDt3I8MCJxl4+OiU/4rMMW2LAP7nvxQ61Pr5OKl6po2D36VsbgIMKBCn0dMSWx6oXx4QkiKPzoT7OvF2HYeTIRTbfIwxv3Lm91xfz6SfrW1MQzGL3qoCubw3lJXJonj9C8c0uzNZilOXZCaxmUqadh6SFVQ48d8k/qOAkA6qwts7Iqq15wjaaHWhofvTWX98DfL2QDfqlX2G3y8uhPFExdj5uVrnYkd0AWNQyl25rUwbgLV5YBGAyKNEnSTnxsMU2fpLgyalJ79GsHVNuiptxAC8ef/YTKckPocAeu6QbR4u8VO00nWFlPnqcxnWwmod2BAHVvX02mI9L2HLzSgwr5Dw4zXK8CH97yvQkki7OYMKTXyOOCO35Hoa1qjuloaMM4c55uLvsgczsGn2yu72ynaw3YANZ6mckliCqFh3xcBv50+DPe68YJ1simJCZIbFpLNX/aJ/q3tOKaQKM2lbnzysKvTZclW8MRX6SRy358VDNhb9ttV8HHa+fLw6VZkV5/0h7WaVg9aNmaXJbz2338Kp0UTg9Y0C2roSxKbJHijLoDut3fbjto6YP1BqqPQDYwYcaAKp4Jy/tdpQAnxNbZRKnGZvmJMt+y5Zg9NwVOLk8IpUXG6dEd/XvqTQLmizvcA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(26005)(6506007)(83380400001)(6666004)(52116002)(5660300002)(956004)(2616005)(316002)(2906002)(8676002)(508600001)(186003)(44832011)(66946007)(86362001)(6512007)(66556008)(66476007)(6486002)(1076003)(38100700002)(36756003)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?6F9ua+7y/FCdCfxse6IuaUf8Lmg8cu1m/z231RnETEDRLm1SY8uVECHujbiX?=
 =?us-ascii?Q?mT6jk/ZhEVtdIix3PHQb2wrF29I77tDMtxEx9hGMA90spD2V1N1JBHHgt3gi?=
 =?us-ascii?Q?cQRRpA6dqs2LLjRV1WQEf26tPAt8TLMaerKcK0SZGs3ugug5cUFAPQO4KP2E?=
 =?us-ascii?Q?Z107lBJVpGm+j9KLLm+3+mAIWuKV3SymBNWfFdAezP43UjD6JSP4CPUCL/Tg?=
 =?us-ascii?Q?aJovywvC/FI11FGll3WxZHsNB868tM1NWDwc5lTZf7NYL2PHh0lsSUyl6mJL?=
 =?us-ascii?Q?z0M1WpjP9gT0XEjWk3Ck3BBEB5pv8tUzwrl0icRHpMJhhjr3uflwxqHPBJ1U?=
 =?us-ascii?Q?4teJqC5SsqzNnqeu+cfNOTezHgCmIe9ft4oxzqgsLGNa/1OuJOFIZbNGf6Mh?=
 =?us-ascii?Q?i1QDir7VzhNAu/BJJ7EYgTun+A3EZPUeDNhOARKQNjanjsvOtbbUrVjJflY6?=
 =?us-ascii?Q?rD9TGFahEaI6n1xQ4PqJtffpE/EkUNcDZLVX+ptnv6IDdZI4ixwnlOzskb08?=
 =?us-ascii?Q?+5UaY5zp+ZQKECsO0Y9A7pO8Y7pPJyptGdv5ceevjozYkNWNxILiQwElqelm?=
 =?us-ascii?Q?IJ559S5p+IDRozqB5TwH+ZCCEZPy7dhm6JnWoT8L+kD3fK9w6o3+dPTIiygu?=
 =?us-ascii?Q?VmLzcTOV0xye1ARiptF6QpJDmRMvn2U49go0ACTnNmqwHJcFfWlQOxuIfEHg?=
 =?us-ascii?Q?YZ7FVzXj11h5iH1xLUybrav8wxK27moyGR0VtZbBiSNTZDT/OM3ScmrQ7rZf?=
 =?us-ascii?Q?qnaN6PxfMt0rPC3X/gy5C5SWKNI6EkYcX1Y1q3B+a50LDHyG4ZYsmlVkAF6R?=
 =?us-ascii?Q?ja6jjXQ+5k9MPumLMLblCeq4CZM8prvU5kQBxoyPoZGCh0lKaZ07yFA6o1CN?=
 =?us-ascii?Q?RT/oaHbNvN0oE8uC55TMLeHeoBhLR8CcUnl/zgemP0dKsFSeMc77ebd10vya?=
 =?us-ascii?Q?L5vwnfSTliqTpuX+0HoLge3Imi7TkNCCLqfSlURv7Imr7weGeQ/JzHTNYPgx?=
 =?us-ascii?Q?SqqLQjbhfdBkOndNK4MJGYtYjbldD78PVBpr2A731GYNJnvOk8EaO6w3v5NL?=
 =?us-ascii?Q?reKEN8TuLih1zPOxt0W8SuUe9KqzWgfgP1h9YAcs5pwNUjXpVB91k4vo+ci0?=
 =?us-ascii?Q?VjpyhCdUl4T9nQa4aXsZjiEklPSIAu5+oRA/SmYSgXBDkKbR4utuny8BEwF2?=
 =?us-ascii?Q?wQAZ82cvjfVZ5yqDIwJt75QyDTnMuvUaA4B67+sp7zC8RDfaYYjLFsOkXkZz?=
 =?us-ascii?Q?fEdQ1GD1iIAUWEzA2MlplOCuszoWbO7lt3DkYT+Rf84m8T1YgVExz++AJ8bp?=
 =?us-ascii?Q?tqENLiGoDxuLS3YoGrV5hDHl?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 082e6526-2164-459a-4529-08d98d4e033c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 07:00:45.5273
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Lq4jjBVnUNreztQI9it/OpUW7UUwb1hqk2zx5Rhgw6jQe3BlI4GCV0q/L6838WPRYwq8BJN2Yrn5c69Yig4Q0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2142
X-Proofpoint-ORIG-GUID: VNK-b8GTZlkDOfCeTbUHXfiAMBxUPyxR
X-Proofpoint-GUID: VNK-b8GTZlkDOfCeTbUHXfiAMBxUPyxR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-12_01,2021-10-11_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110120038
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 07:01:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55032

Inherit pkgconfig to fix the build error which is introduced by
oe-commit:
  commit 8e26252b45b7660c7c67c702411bdec187a76ffc
  Author: Richard Purdie <richard.purdie@linuxfoundation.org>
  Date:   Sun Sep 19 16:17:31 2021 +0100

    layer.conf: Extend recipes not to install without explict dependencies

Fixes:
make: pkg-config: Command not found
/usr/src/debug/libselinux/3.2-r0/git/libselinux/src/regex.c:399: undefined reference to `pcre_fullinfo'
/usr/src/debug/libselinux/3.3-r0/git/libselinux/src/regex.c:444: undefined reference to `pcre_free'
/usr/src/debug/libselinux/3.3-r0/git/libselinux/src/regex.c:456: undefined reference to `pcre_exec'

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux_3.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux_3.2.bb b/recipes-security/selinux/libselinux_3.2.bb
index 55efbae..1144840 100644
--- a/recipes-security/selinux/libselinux_3.2.bb
+++ b/recipes-security/selinux/libselinux_3.2.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
 require selinux_common.inc
 
-inherit lib_package python3native
+inherit lib_package python3native pkgconfig
 
 DEPENDS += "libsepol libpcre"
 DEPENDS:append:libc-musl = " fts"
-- 
2.25.1


