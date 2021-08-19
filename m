Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.65217.1629348453945865334
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=INqOKZx1;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4bfIS000779;
	Thu, 19 Aug 2021 04:47:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=TUvTFRH/F7r0EYrgvfmZN23vcjZ1/nHvNn3vh0an24Y=;
 b=INqOKZx1DXoH9M9otbnCO59eEXyUNSpAjFRgsjqc04FxFfBX0Ni++Z6gnw4y99bsm5OO
 a7sb6P9e4jL9TdpZ4PyjKS3NxeYPExiMJfpoLvZ5p3N0d1/lC6JmbjB8xsgBDbgSPWAr
 78HTGaEEBhcnT96SRNjYLqO1BcC5gm81lN1M0Tb1WhPeHM2KKz/hREoh8UsfmlWehesc
 HP2IrnNbp8CBlLTPbCkLiUNkZIhTf+P9YvKaEvdgoqUd9EE29p0xzaRGMgnd1lQA/jAO
 kpLK5V+3DwUPNWCeQTt3s6mlZhqmaTxoQXe1SrY6mP08nCjft9WnvgZxB4GsHGIuM4WR lA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahfs9g0qt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 04:47:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NYmBrnXL7KKSuRw3fjxueshc0Jfprgm/2CvbtUdkLdbABjLf8ggVKozGY/SBAiWICnaqzOn5ChA5GyJCu2RMciUCJQp+CWQM5/ILKcqfRCeQ7wU9pssEfK6GUsbFOulDS8gX1S0idFQwpRflEDoXkFcoFWQXOLwLlLXid+eWwcnE15aPaFR3R2Ugazs9Gq2WnI0ClaIpd+OD/u+rOATgCR+Bl2tymy+RMwWCQ+aDJBE0z3FE18eAD2vM79qhhdKfIrzdOXsg64gcoZUgT2foMJ5gVEgnk5uQVVtSov5mxovbeI0wMYjkdYMwxQ4Tl9Nn0yt+57+jVmvaQB8HWmMAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUvTFRH/F7r0EYrgvfmZN23vcjZ1/nHvNn3vh0an24Y=;
 b=oBdYkRiIfBvWzBObQsEOB3ScWc/QdQIVW5tCbHMsbvDT428CY5SACiIRIESs/ynUdXwOuhHt21sIWfCAaHDUxla0NARGte1zgmIP1LgZpESgucFqgjw0ah+alkXWxYcqmU7FGLZCmRkuqpVXNnQ8teKPUNslE7gpSAkug1eh8MFMnOaw6c0AsHK9I/Be7zAoLZVkEnWyeii1jO2HiZuia9suGxc+UMrXQrEddQ4QH83uPm880g4mpyxy0I8uU3M6nNgDXxZCX7tWMul1qwl+SJxrTJSAql0tT8zDtRHDD4VNk/B9+ByaxZUU/JZJdzLlmJtHtJqcy4pcrjLW1L6EXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:31 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:31 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 08/12] sysklogd: sync the initscript to latest oe-core version
Date: Thu, 19 Aug 2021 12:47:04 +0800
Message-Id: <20210819044708.105282-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d789543-6ba4-4433-7d8f-08d962cc73e1
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB48671C5DE38C58B056BA1B03F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gXoUkfE1qWgjc+aKmTMDLviqAXMpeztV0XDzoQth6NFoWQdrlzwM4WijVGJl6BZ1CLkgQQWmfeVzIhWez5KD2pab1qYH4CFyK+kAngWFQLy6/gF8xdc7T9XqUvInZEgsVCNEfbsRjZDar/iTHj+n94Q8AMm9o5iidblLXblz6dHG+Rlk9RP9/p1jFpl4c7Omu0hqtX+mowsJInjwjonDtTXeO2TASfhkqEeCtvcrN7DpODb9JFnOskRd1V7uQPoKP3UPqob6v9PQDjaN08RieZuMCkxZNxmDfdYtI9CeqlZRFhnjauxEBJ1jKhBHrYBrcahgw/ClJDrrTLm7xnV1MCvBGrzVVhUb/u7tVz2SFJcCzaFOgCOr5UOEz7MVYkgyh3lraRErlLjgawnv0vY1EpHiwEf9rMW9+KMPmmqIJZs7tFp+zP+wIqzotLZsWOUyk59Kwd9w2ZsDgO8rUxf1KZGu0JcMenAc6EfW68A4oTFOYcAhAE4SASddGpW9MgbZ5EfPRoemDeuDHzZEnYYU9uDrwqtIo3qCNFYQFtagAu9qz/dTMOigKI4cu4rnPgmLZvCBZvKnamBu2/MTF4tieHvCsr9pEHkPmzhgSoSRh/ynmXDxETQaVv4wvUsE9ADup0O+T7XAPXeA/yuHZGqPRq6RUQTAyyy/tOkMghKPB2ZTNV7gnfWh+O9cyfsKJoGSqO8buNdeD0jYxD4iN7jBEw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(4744005)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ozU800wy5kYifm3p8SNuk9Nw0wLVui7GaIG/SPftNXN226hgBQf5mYy+LhYU?=
 =?us-ascii?Q?NOjwRPdV4ptkwpCBX03Tv7fTXsPIhXWWSPBF3b/YkMpo9EOSI0vHDPvtbHm1?=
 =?us-ascii?Q?JgEXRFMCzPBqJiwa4E2Dl8xdNMtnjlWa++eslvq/r8k476Bo42DESEFl0eAU?=
 =?us-ascii?Q?5DjfsGQ0GB29CD57qhCjZpIx2SkMShm0Zwy2GEbPpv8vJCFg2AVVLzvkKR4J?=
 =?us-ascii?Q?88hRQqI+9SzUvxzM/05LyEJBCnWaoHKqUnmNZg+LqIvgB/q9MN7ckgmzzV0i?=
 =?us-ascii?Q?zEWzwpqF8Sb5sTfU/mNeaVbIu8xNJieIiafVtstD1+aQX34CC2WapMlnV4A2?=
 =?us-ascii?Q?b6Wl7wfu3HA8yeygUVVXK4feg03PwgRsPXZY52I7g+NtPFKfLJs0ZSFUX6Z6?=
 =?us-ascii?Q?AZ1JwK6DD4apj7ho5XKjeGNyzQbeLe8vJjLrYZR+lIZnhn/pXH7AQObkLE5v?=
 =?us-ascii?Q?HanK2t7zei2EPIMYmFCU2IbEfBcxMnPN+yMODFuGe4oVpjIp/tvhju4lRmbs?=
 =?us-ascii?Q?MRiep9nfYuxkJQcYz6dJHys8iK0lSQwpsoZl+958qCsi5xSsFD/uxJGcCuEb?=
 =?us-ascii?Q?NLJDIT3JhRPRLznmry9ByGmmMewsGf9hSNgfpZlxL3UBUPgUuLmL9kgOu2HE?=
 =?us-ascii?Q?nX5hin9BcwV3XU/J5f8GQxBTu0VRihj8e2AdJL/oUeTdlQVpIlhKa1aK7xZi?=
 =?us-ascii?Q?dUBRVOoobzRf2+C9jJv+eVHhUdZzOO7AJQRQAeXTuPzIjuMPxo7Cgk6edq9t?=
 =?us-ascii?Q?WcAkfxH/0C3ggU/CTxz+0L1lTAoIG0qoY2oIakP2+ivSlVJvKmhlpwOierag?=
 =?us-ascii?Q?V1iMPdpWANBOgPo9MbICojAw7g4rt9wzK0jYG6yuf03sCkl4e52oErMtVWcD?=
 =?us-ascii?Q?CS83jYkctmHC1NI7PlNm+OBzpY20hsDoppFRkvX5pc5EGYpKl9ny4E8im+2E?=
 =?us-ascii?Q?BYCqLxOkauGKrKCPAXCUcrbPCLBziX3kA1iUdbfeK+AeZQJ/s0lqVB8JcYJt?=
 =?us-ascii?Q?6pKl8DpnOA0vExqu64eYgRYcZV49ZWrTCGr0s2fbeP7jEnwu/F8Pb7+AeHP5?=
 =?us-ascii?Q?chDDDrTU4URfJkxW+dkXvFO7nDabXMgnqgMq51Xv3TP7iALhpo6xEq0ug3RF?=
 =?us-ascii?Q?fPoClaaMVzy/l/na2qyB5kM3e55q6KamaD2pLwym1MBGT5ghKAecbSrMEfee?=
 =?us-ascii?Q?vn/HPakKH/WmiALVF9tBKD0qpw/BQR5FYxurAPDUFh+LzUZCqObPSs3SwCsk?=
 =?us-ascii?Q?cpkAeg8SwzKUx5z7axRY89G4poMv6xe0Gy9NHtMKK/HlVjD9bYgcV8XwguaI?=
 =?us-ascii?Q?Qpz4JHRTvhNj+SdfuO3CVa0B?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d789543-6ba4-4433-7d8f-08d962cc73e1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:30.9411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iIWe5qdm7fC+Clhd3zuxJVWhQkWVR/cq529hXwngxITwWpnyKcfsJO+fR0M5gE23UDmCC6Lv513wNZrDy7pvMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: 1RhiUAwl_g3hFx8GySMvGKIFpw-Mh37B
X-Proofpoint-ORIG-GUID: 1RhiUAwl_g3hFx8GySMvGKIFpw-Mh37B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0 mlxlogscore=975
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The sysklogd has been updated to 2.2.3 in oe-core. Update the initscript
to adapt it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/sysklogd/files/sysklogd | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-extended/sysklogd/files/sysklogd b/recipes-extended/sysklogd/files/sysklogd
index 7943b1d..2a7eae4 100644
--- a/recipes-extended/sysklogd/files/sysklogd
+++ b/recipes-extended/sysklogd/files/sysklogd
@@ -22,6 +22,9 @@ binpath_syslogd=/usr/sbin/syslogd
 
 test -x $binpath || exit 0
 
+# run secure by default
+SYSLOGD="-ss"
+
 test ! -r /etc/default/syslogd || . /etc/default/syslogd
 
 create_xconsole()
-- 
2.25.1

