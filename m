Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D74CC77B61
	for <webhook@archiver.kernel.org>; Tue, 25 Apr 2023 09:46:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.75495.1682415998090209526
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Apr 2023 02:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=L+4mMY0/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=347927f1c6=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33P9fvRo019317;
	Tue, 25 Apr 2023 09:46:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=AxjQryndrkyryJAUlnMlgFUqv1qL4+pZ7qIcTurmHA8=;
 b=L+4mMY0/EVp1UXVenO4ebK7VCHMFkxYEo8ZSOEHFK3eYOLv4J0/VZYY+deqwI1Ws/Thm
 EkfNQrtO2+/W6icbic10AaQ6MqxQL13wNOjuovTFMHy0ws16c0AF87Ewe1diiE1iQn3k
 FFLCLkgk8OBtq68S1h2NU6MyLgynvf0A4AuDOYN5Jz4FgTYfW7aIy2GxiZYfnk6VfOhl
 XfWaaDfGSvQx3Xwyn4JyEDA9DlG5RcgAhM8kY+1aCEpDdAjAPwO4bPT2FB41JoKRTg49
 rNp7kxNSj9liI3uQyHbERT1o4TSNYkOUOKf3aTW9ArhGV7ou+HSJ2opaTxSL7zj0ZbnN IQ== 
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2041.outbound.protection.outlook.com [104.47.57.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3q46jbb720-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Apr 2023 09:46:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYmQKeTmtXbTg4ViBBapcavhJP3Qob9m6ZjbSs9MHTwDbyErxmfI5MbNddE/sst1AhyqjdbaSE7n/YdnlQFce3dEuGdDWw/TT3sv+62LDPAuwi9ES8vwXSCnSNPvg1D3osb5PIa3W79bVvHO2NkQ5n7Jjhbp7KjBoSNk7KtFZnIT16sz18e/jRqY690JZzJmMY6F4C0LiVYUbgfQ9jjoGzd9Qk5bm71/o+jSKkEfU+EE65Oh0YEZ4AydIqyalkl/dye8O/PM1DRcMRrOkJsRUcapog5pnu0vK+hvOzYwsnRpZpLuxRge9J1y9DgT9++xgKSiEtNpvtbIVlUdtMgQHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxjQryndrkyryJAUlnMlgFUqv1qL4+pZ7qIcTurmHA8=;
 b=bxmOFtWezjSKdZn5AEK/XvtBjcEG6N9hxyaBaTLFlgFbg0MWSDr+pE08HARdpuqyqdImRIZnjPj3evYe/8NbBTBBeOU9z1ECO0/LEJvW5UldVbkDk6kv+mVNXh7cznMND+o9BwzTOMxrbIic0N4ELoDqvPJ8pWcJAvtRwh0s+tD6t+W14iZlpfo4S28D3pp26jed+7XK4Su60K9eHMc0XswPtesEHA5HzGmjkBCbWR3Ru0yQ8a1uAdeFDAkAmnNIiGoHtx0iAuijW71A+CDtqfzOUmlbI/nW4WWE9zJHcsINcWipix5AzY+6PS6jF9DS7t9fWfsDI39tASvt5bYPvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Tue, 25 Apr
 2023 09:46:35 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fab6:ffe4:3a56:6428]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fab6:ffe4:3a56:6428%3]) with mapi id 15.20.6319.034; Tue, 25 Apr 2023
 09:46:35 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 2/2] linux-yocto: drop CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE
Date: Tue, 25 Apr 2023 17:46:20 +0800
Message-Id: <20230425094620.1517154-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230425094620.1517154-1-yi.zhao@windriver.com>
References: <20230425094620.1517154-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0044.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::6) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SA3PR11MB7527:EE_
X-MS-Office365-Filtering-Correlation-Id: 45380497-75c1-4a37-0f5b-08db4571f518
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oFOF9oLtFRiK9OOIKHwz/9BWCcuDJiTko/655+Fkd9C4mNknDQJGlAV6r67DaSQx0FjBp7ykT0q87wXhB4iX8mJJqGESQ/sF6zQ+cCtyueYcrogjsT571zIFs0wRZvfPOXVP243kCvj32qqpyJm9RFT1uo0EGmn5jSS+9EV7VTInxEEuOEqhwCNrimDLv3v1qNlbHfeqBqe4rjuO3LAdjuDy5dMDcwkJ8j2gw2HHsruh1TpWf/Uo6i7Sp5V6fWjOCsX5xFq5E81Q9Ix7kIaE0hzceEEAfD5QfJuP4wb8Xxc+z/UicleVTeln7vAkZVa9BPKDmR4eBhh252LMbx1gc50J9TMNi9MdruH1Fx3ut464hsjtNAwzx8svyZNdB9BGiNTBFUYoOlm6vPidliVEKQykXMy9oxFR/cHEHxy0xo4/GGUWH5OWMha8A1UCqKLRsFjBrvoIL4M4V0qpDqpJWSeoQBgLWK+jKkffnakdo9VE14cCgXMPAXGWiZdEffCONt69CzMyzpR/+Dnvb7GkfgGub2BlFUJE/D6S8ia6MMqh4xx8UDeGWW7pX/NlqMjuXAwY2DTT25Ea7TdenUogT3qfgJNnruLcJ3zHqjaxaVDEzlSgTCUqxGxAelQsiWSB
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(39850400004)(366004)(396003)(376002)(451199021)(36756003)(478600001)(316002)(66476007)(66556008)(66946007)(44832011)(41300700001)(38350700002)(2906002)(4744005)(8936002)(8676002)(5660300002)(38100700002)(2616005)(966005)(6512007)(6506007)(1076003)(26005)(86362001)(186003)(6666004)(83380400001)(52116002)(6486002)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?qVu9njUDUoPWzTxpznqpUTrHid0Nbl6LzV22cbAWLVYW6t0iwFK+exw2GxPz?=
 =?us-ascii?Q?qySHOkcI20llXbLjjox/vRzgqYkUlPi4VfDoMbQhJafV2uWuX1g0ULNsqiYG?=
 =?us-ascii?Q?HNt045ufCkm4ZphYzk5iz0yaPYe15Fp3K7OurPV/3qx7IMufFKTK67svtyan?=
 =?us-ascii?Q?CWuxYEhqwxNgLzs/rklIDuODqVDT9ibQMfkvT7PufbH8uZQWYPKAkwmMl17A?=
 =?us-ascii?Q?ou09gFbs8zV3XGYyekNBOukx9UkjSX7ZJMj7xrecjNBeKGr/TGQdf4y84h5k?=
 =?us-ascii?Q?/L6jlb08vX1k5l+d32fsCGq061Em2ta3/LWMMjKiaTtP/lnUKmHu4Dvak1pQ?=
 =?us-ascii?Q?UvkJvgDVGbx5xE+Gq99wD0F/7rFWPCCWnfKkVZ93+RZMma/xhUhq6kY7yCt3?=
 =?us-ascii?Q?ZVqRHCgrLUmXcvJpRqzZ7DijnzMVCpGSKq53HtaC+kVrFwtgD1h2kSj6gzZ9?=
 =?us-ascii?Q?/L576k4SfLNbMQnRvNl9jVTKwWXTSmjqIQym/ieznWv7kiBEWF+InpGzjI3/?=
 =?us-ascii?Q?2cwU9KMkskzVhLRmeg6QT3HBubDQTnBnk3jTWC/OBijm5+Sw/tyxo13R2Fc3?=
 =?us-ascii?Q?YvV783Dr9HDdLGaXuK/PRrWHQyvuJpayDVLjYzPfxgLR6nwmjrjKymo+HXlq?=
 =?us-ascii?Q?srTCwBJC7tZ1+CS3X5uh3CoGd2p44XEwjtMhfLMCkT82QiK87RMqXW8HWLp/?=
 =?us-ascii?Q?uPlVaTKpwjLX4GnjTKS1/0hlwPIjb5ifEwunT/d8bfvvOYRnwsNylKTD/xeE?=
 =?us-ascii?Q?YquDLc4QbMYsB/MVapysMTi3III0Wj/Q4E6wcacWad0NOPy6vQkMdzQmwOcP?=
 =?us-ascii?Q?KDuFe28SQMLoaFoRCX6gF2NJWumG3MUS7BkBm2YwX/PGelRCUCH3Pj0Nz0Bq?=
 =?us-ascii?Q?n1UGOpSMLs6l/LfkDlk3LYj8UntuOU0TW/whldAOmzEd2Q5yJ1TEEd8k1cBV?=
 =?us-ascii?Q?P+RJxAwGbrig/nqWQEuQ9V6kwFjfBjmoedZGX75G10DQzmcQDpMMzskI+3Zg?=
 =?us-ascii?Q?+qOqRFCkgXtMaSPIYub+Yn/a77ivVUUk6lldL1SIE/rpRg1qdU6L3gjpQRWr?=
 =?us-ascii?Q?Mld8uk0TFf4K6uMY6HB4go1t0bgWE4aK+jKhIAQ6LDHozooPVhPX+PlJ6/+t?=
 =?us-ascii?Q?C2dTdjaWQDQ1UxUPrkcLHScCxeCgtHl/RAa+V3/8FLLHdrQA4Ulvv4yNPDoH?=
 =?us-ascii?Q?WxSgccgSF+tE56N9OyT6B5jQN2jRGaenoCKdE6h5gMG1CazDF/3GGgOim/aC?=
 =?us-ascii?Q?6YsJMaHpL8cIYyVIwfryBY/9+8lTHnGMZhvxcbLd9ZVvvCPc6JYMAmyFov/z?=
 =?us-ascii?Q?TtONFZT4gB8sHthHubOkPsebv66oLREY3kNc4+t5SPUOqXOJNwF5WNUIcfLI?=
 =?us-ascii?Q?Kt0v3BcY4VZ5lDT+QjTVX/yuyC4EVMKHQxStUg9xvFq3t0QHdZwnxUgdOWAB?=
 =?us-ascii?Q?wcXpSa9sHRiLtl/nBhTyMmSsMVEchscKlD9Aub3ICtpCq4Yvbwo/s3DW5cOh?=
 =?us-ascii?Q?YPqZQNG966KPrqy4ReVcKJEAMbvi7xv5c7fuFkDLdyMharVKiwofCYqgHYwQ?=
 =?us-ascii?Q?QPoOaxeba1BDsjR4njwLw8OdJ3wOp93z3WzghB2h?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45380497-75c1-4a37-0f5b-08db4571f518
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 09:46:35.1677
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e1240FWA7W2tyftGMvbiUy192zl3jEbuj13CC+F0cJRr9QvjgUOYchGcCjo5z4Cncmr1fnRQil1y+o5kimaIoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7527
X-Proofpoint-GUID: 4_AahhrQtiAL1zRZyqzPQ9LpOXuUAaTh
X-Proofpoint-ORIG-GUID: 4_AahhrQtiAL1zRZyqzPQ9LpOXuUAaTh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-25_03,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 mlxscore=0 mlxlogscore=664
 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304250087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 09:46:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59776

CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE is deprecated and will be
rejected in a future kernel release[1].

[1] https://github.com/SELinuxProject/selinux-kernel/wiki/DEPRECATE-checkreqprot

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-kernel/linux/files/selinux.cfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/linux/files/selinux.cfg b/recipes-kernel/linux/files/selinux.cfg
index 7d16dc5..a081095 100644
--- a/recipes-kernel/linux/files/selinux.cfg
+++ b/recipes-kernel/linux/files/selinux.cfg
@@ -26,5 +26,4 @@ CONFIG_SECURITY_SELINUX_BOOTPARAM=y
 CONFIG_SECURITY_SELINUX_DISABLE=y
 CONFIG_SECURITY_SELINUX_DEVELOP=y
 CONFIG_SECURITY_SELINUX_AVC_STATS=y
-CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
 CONFIG_AUDIT_GENERIC=y
-- 
2.25.1


