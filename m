Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.1820.1628234025014262304
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 00:13:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=HpHGhLUI;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3852e488c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1767Di8D018148
	for <yocto@lists.yoctoproject.org>; Fri, 6 Aug 2021 00:13:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=kgOBm2IR+CyQWjKKqK4dmhGW9EUo4A3iN7g9HY+8ibE=;
 b=HpHGhLUIMZV8KWShtfSE//eTvxxreD2EkOgy/l4TZfnc4Oz5YPygSTqfA2S4Ca+CLJih
 VCt1BDl7cTerb44oqMeNeUG8Hpi614F3P84D3Z/2Z1JaEGiteyHJo2dyj6sIK9JZaddn
 58S/pQ5H9sARB/djOjZju6CWNL5h2FFz3NUfUP0IbNjT1Gme8F1CqwQoWI1mVcUZAvyf
 CNByIytlKsvXkSbVCCzONTd5AiGucsoBZkwL19svCwqER9hXEXDzUUOPIkb6smiadh+V
 h1BcoBLaTgxdRPvE4ODpUVPUvgAcWM62YaUmefKBT79mhhicv/otV3Lwxb/whreW1EQj bg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a8ke0gfew-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 06 Aug 2021 00:13:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6SvzQevdGC2Dpt8Gmj5N8s7Npwjvyyn3uejRHE2DtNEHpIGtJZfnuBPTEfk8uYz26FVeNGHN57trsKrMrBeJ0wE9PhqOb/HFGxZG72rSvHN3kFwLHoj36COoyFrL/FD6c0uDoHsYWb4U+tjUEe8iMSmxgS8Q8neECalYDQGvGbFUtLwV7wpKXqnN3ZFMlMTqV7dW4q0hEnUv32HQ7ofhtfRAzYJDvIE3ZNnMEqlLYO32jnvqP+gFSgTqlwCEa7I+VMP6HWWY5fkrTqqVnoIADoQv5FWE21zpbppZiJQ8RGtPuu3jfa13/bXzWJMYpt01CVo9aHuuYKzc0rVWL0joQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgOBm2IR+CyQWjKKqK4dmhGW9EUo4A3iN7g9HY+8ibE=;
 b=ffGNGjAeD2ojhycI9fvfxAOVLQPWJFnWlkabRIPG4DMGcMubxdqRAc9yWSzmHKwUMaX6PHXt4QsXUjp40lTtrI5Xd+VLJtJuq7xuxn4Y/K/7TSAryIZ5sFcsuqmMj/fys2I2PDtctyQ4qJnq+CSaKDQUHd/UzmDp/pU/3RT4+4O7dVnjk4V5RZxiahUsHYfrPNTU/6AAl9T/VGWHUD6xxHcXXhqdfttH0QcOwFiQlueUfC7QFoP/STz2C3aggp3MTP3qfy8fdBIr/O6ZwSR0aC+fRaUEvsXifB80X8WhP+tQ1W9FQI/TM2o/e5hPnOUZAWN5nDyTst9aDDk2+/EfeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1421.namprd11.prod.outlook.com (2603:10b6:300:24::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Fri, 6 Aug
 2021 07:13:43 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.019; Fri, 6 Aug 2021
 07:13:43 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: jason.wessel@windriver.com, yocto@lists.yoctoproject.org
Subject: [meta-openssl102-fips][PATCH 2/3] openssh: refresh patches for 8.6p1
Date: Fri,  6 Aug 2021 15:13:28 +0800
Message-Id: <20210806071329.414087-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210806071329.414087-1-yi.zhao@windriver.com>
References: <20210806071329.414087-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0109.apcprd03.prod.outlook.com
 (2603:1096:203:b0::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0109.apcprd03.prod.outlook.com (2603:1096:203:b0::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16 via Frontend Transport; Fri, 6 Aug 2021 07:13:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 48d8b9e1-0aac-4e39-f050-08d958a9b91b
X-MS-TrafficTypeDiagnostic: MWHPR11MB1421:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1421B9E0A059D49C5C2A3A22F9F39@MWHPR11MB1421.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:153;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3gpbP4QiuKftkVIpxBmxo+VAUlBsxW+GF8PxNEMwDkBd0bHyOxNReV6dnpzovu5g+mDijqqA4tpADwlqUN275c32FXofZoIUAE/T6Q9zxJB5uVjf/1SIjArsipV3QJX+f8wBt20VOs/fNb7YP6rmc7wtiHuruiKIvMW3h67CpsII0rxFNOtc6vXin5Htb0Q4GRDNi8CVyAO13WEO78QUAVS5jBsQm+un+TsWE/r9TVt5K+QKpNiOWp8WqRDUlSMQ+W8/kscS7GquR1JERufXW17AlnfAamYE1T8wMDCt1Q1goN0ZOkQsB6TdujTuqH9Mo/fMCacPtJ0UGCjTlcQhHuOBE5qtpe3TPbLDGmIIMRx8V5bHi7caDvrpgweX7wPQXlt6z8FNBz5u7lCLpO0tswR+kVdaVWvoIF2uTaSoP9JUtHRr+F1k6OKWXA5Z7qe7pmm2h0Hv6UZMGWJJZYVc2n84Fw582aHvTtUr0TPhsLAPS3ihr0f2y1Y2ixWVGr6cdLvMgJ+10hbnIR5Lbp/NCUwanXwUN85h1+ajr9Lw7vjzpDkp/wFY48tYGeNGhMEPw2tGxpr9dKT6MAsNs6YTDtmafnmHH/B232EI6AxW2WDrs00PrWFe/8AwTizg7ejMeCw19rDKyy+6PcWe+eIoq2M41Z9M4aMvnmqKlhVQS70XsWH/iJ8WXI6gU28aFQiGSdrxsXS28NGYGDvDlCYncJINZsHdEn0I41X6uHD6fXMM5zks+KH6htxDg73kzy5ShETldurMJISpz7sxAUb26B/Ufyu16C/IN0+/6zGf7IM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(136003)(39850400004)(376002)(346002)(52116002)(956004)(26005)(8676002)(186003)(8936002)(83380400001)(316002)(478600001)(966005)(44832011)(2616005)(6506007)(53546011)(38350700002)(38100700002)(1076003)(36756003)(6512007)(6486002)(30864003)(66556008)(5660300002)(66476007)(66946007)(86362001)(2906002)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?idCgXG6gX3ir1Bs9qxDwyFeeIXOveSRiR9vFwyIO8h6/IgmPfiq/PPbU69YH?=
 =?us-ascii?Q?LC6dbGpy9PyvwP3nw5kOUy38Q6Km53xoLA8JqyZg370kv4psul1AEqpUJYeH?=
 =?us-ascii?Q?RidNFpA51IUwlyXDEgPlw6j6/qQ75RafYLa5agbo07MaXNzAFZCFHfUJl/qt?=
 =?us-ascii?Q?WJiSkaJkfqyX+1liOXP1vycX8u04STMMT9y47RlkUF7m62VI16izg7hMyo/k?=
 =?us-ascii?Q?ZYpKkwTq3RauN72haTff6hnUO/iT9nJHrvmnnxIEbxXD4lpRG2jC3inU7MCX?=
 =?us-ascii?Q?HNziHlnuWW17J7IGrR2jlElV2JyT8Zd/Vukyz7znLdhcTPoAmUovpAz31HVE?=
 =?us-ascii?Q?ElCS3HY7fimhHxq7pfFAIolMKv2BrMUtq65mdqxJZqab5FZRBKrrRNf5NUmU?=
 =?us-ascii?Q?DCCDlOmL7VHiLEKN6OX4nsZKqhiDaKZ3R+2WeuJ8ffa3EcC4WGTJpaWZWoDI?=
 =?us-ascii?Q?KMDIDWsBYmRYuuAxKma94qDnAcEVeYLW1wcSoM7Z2YGIhVX0cZowodWVL9l3?=
 =?us-ascii?Q?IMJ+c2BlBd6PEfUe2Sfv29cbA/e8JjIgDwSDQi1qoFZV6QpJiDIbq+DB4B51?=
 =?us-ascii?Q?kOTattPKJVWHAsNZMB7m6J/JRvQHNnuZn34/gKNJDSCUK2eU8WkMSquyjtoH?=
 =?us-ascii?Q?PHHTJxdXkRWKIJ7cns0bmxNJ15Wnwu3FmNMxJJc4AeV6qgsiQt2j/eaD4TGf?=
 =?us-ascii?Q?GL4rJpehxgWZp4vJS8l8iQO73uoioXrLVdW2JiK2CkmqANYLmmamTWnC0Gbr?=
 =?us-ascii?Q?cC6fzLr2IgyRsd/BN6oyev2o6XopRS7V8eEBEEGpJo0GZoTDg9qRP/H6emBZ?=
 =?us-ascii?Q?qJmjtdbHUVYCUKd1Z/PD5p6udNNJS5ZxPCq0sT/kPiuOo+IaHZEut8/2hgla?=
 =?us-ascii?Q?hFlSpBkx6bBat9EaKtZ308B4oqR6ZS0cF2D52BueVhySaJpXfl8FzZpEiOmC?=
 =?us-ascii?Q?JZJm+KRRBob3kpJwslL1u4RHkRQ+wNOU5cCoUyKHpI8JyaMlwvtCOVwb2Ze2?=
 =?us-ascii?Q?BAY8szN0+4j8ef59Z+dbmxIFnXo28E5ean9bjox+pRdRwvDTWx0fc1gZAc7i?=
 =?us-ascii?Q?tiq7lVTierUnELj/qnLtYBUek91/k/LXIZNEpi11e7zu54YTehvgv+ci8z/Z?=
 =?us-ascii?Q?BTUhOq/++fSWV5u+ZvYAfZ7ynutQGRdijkvHzxmtArpEJZf7F6c2l6boXca+?=
 =?us-ascii?Q?HimldZCvSpXjn1k4KytbjG49FNsVATJZ5zNmPopDWA+bX8+o9p+3zG2iekVi?=
 =?us-ascii?Q?Ba1UlUMe1WTdyGPZhVAxHUZIzda1074dcqPmourMV1dprAVk2POfUAts8yl4?=
 =?us-ascii?Q?JBNrVytIATrVSE/kzb/8LyXT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48d8b9e1-0aac-4e39-f050-08d958a9b91b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2021 07:13:43.0627
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FzTjBKvYC+21mNgn8ctvN4d/v7l/q3BidE7u1SOtS8RSddkd7RGysW0kSkxNCwdUoFWYbVkhexZfY+6+sARATg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1421
X-Proofpoint-ORIG-GUID: DHD7walC11F24vO6KjehZoJ1NyWRNcuK
X-Proofpoint-GUID: DHD7walC11F24vO6KjehZoJ1NyWRNcuK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-06_02,2021-08-05_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108060049
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Refresh patches:
  0001-openssh-8.6p1-fips.patch
  0001-conditional-enable-fips-mode.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../0001-conditional-enable-fips-mode.patch   | 38 +++++++------
 ...ps.patch => 0001-openssh-8.6p1-fips.patch} | 55 ++++++++++---------
 recipes-connectivity/openssh/openssh_fips.inc |  2 +-
 3 files changed, 50 insertions(+), 45 deletions(-)
 rename recipes-connectivity/openssh/openssh/{0001-openssh-8.4p1-fips.patch => 0001-openssh-8.6p1-fips.patch} (92%)

diff --git a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
index 9fd19c0..9bec7d7 100644
--- a/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
+++ b/recipes-connectivity/openssh/openssh/0001-conditional-enable-fips-mode.patch
@@ -1,4 +1,4 @@
-From 48888de317391522186c6ae24a8d6d7d7add2673 Mon Sep 17 00:00:00 2001
+From 1696484c2a06e2ec095d748d2155eb8206dd850b Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 13:03:23 +0800
 Subject: [PATCH] conditional enable fips mode
@@ -14,11 +14,12 @@ The ssh_malloc_init function is removed in openssh 8.1p1, we need to
 insert ssh_enable_fips_mode function to main function for all
 applications.
 
+Rebase to 8.6p1
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  sftp-server-main.c  |  1 +
  sftp-server.c       |  1 +
- sftp.c              |  1 +
+ sftp.c              |  2 ++
  ssh-add.c           |  1 +
  ssh-agent.c         |  1 +
  ssh-keygen.c        |  1 +
@@ -29,7 +30,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  sshd.c              |  1 +
  xmalloc.c           | 20 ++++++++++++++++++++
  xmalloc.h           |  1 +
- 13 files changed, 32 insertions(+)
+ 13 files changed, 33 insertions(+)
 
 diff --git a/sftp-server-main.c b/sftp-server-main.c
 index 06566d3..a10566d 100644
@@ -44,10 +45,10 @@ index 06566d3..a10566d 100644
  	sanitise_stdfd();
  
 diff --git a/sftp-server.c b/sftp-server.c
-index 7300900..42da9d7 100644
+index 838f048..8a8d87b 100644
 --- a/sftp-server.c
 +++ b/sftp-server.c
-@@ -1616,6 +1616,7 @@ sftp_server_main(int argc, char **argv, struct passwd *user_pw)
+@@ -1656,6 +1656,7 @@ sftp_server_main(int argc, char **argv, struct passwd *user_pw)
  	extern char *optarg;
  	extern char *__progname;
  
@@ -56,19 +57,20 @@ index 7300900..42da9d7 100644
  	log_init(__progname, log_level, log_facility, log_stderr);
  
 diff --git a/sftp.c b/sftp.c
-index fb3c08d..85b9b67 100644
+index 3f46c55..e9c8f1d 100644
 --- a/sftp.c
 +++ b/sftp.c
-@@ -2345,6 +2345,7 @@ main(int argc, char **argv)
- 	size_t num_requests = DEFAULT_NUM_REQUESTS;
+@@ -2342,6 +2342,8 @@ main(int argc, char **argv)
+ 	size_t num_requests = 0;
  	long long limit_kbps = 0;
  
 +	ssh_enable_fips_mode();
++
  	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
  	sanitise_stdfd();
  	msetlocale();
 diff --git a/ssh-add.c b/ssh-add.c
-index 7edb9f9..c75f85b 100644
+index 92192fc..4ed14cd 100644
 --- a/ssh-add.c
 +++ b/ssh-add.c
 @@ -667,6 +667,7 @@ main(int argc, char **argv)
@@ -80,7 +82,7 @@ index 7edb9f9..c75f85b 100644
  	sanitise_stdfd();
  
 diff --git a/ssh-agent.c b/ssh-agent.c
-index 58fe6dd..9018a7c 100644
+index 48a47d4..8a0d7a2 100644
 --- a/ssh-agent.c
 +++ b/ssh-agent.c
 @@ -1388,6 +1388,7 @@ main(int ac, char **av)
@@ -92,7 +94,7 @@ index 58fe6dd..9018a7c 100644
  	sanitise_stdfd();
  
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index 6451584..246caa1 100644
+index fc73943..cdb45a9 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
 @@ -3153,6 +3153,7 @@ main(int argc, char **argv)
@@ -140,7 +142,7 @@ index a9a6fe3..3c76f70 100644
  	seed_rng();
  	TAILQ_INIT(&pkcs11_keylist);
 diff --git a/ssh.c b/ssh.c
-index 729d87a..ab78b53 100644
+index a6e7642..8f91534 100644
 --- a/ssh.c
 +++ b/ssh.c
 @@ -650,6 +650,7 @@ main(int ac, char **av)
@@ -152,10 +154,10 @@ index 729d87a..ab78b53 100644
  	sanitise_stdfd();
  
 diff --git a/sshd.c b/sshd.c
-index fee4703..07faf7b 100644
+index b2ab001..8112d2c 100644
 --- a/sshd.c
 +++ b/sshd.c
-@@ -1534,6 +1534,7 @@ main(int ac, char **av)
+@@ -1535,6 +1535,7 @@ main(int ac, char **av)
  	Authctxt *authctxt;
  	struct connection_info *connection_info = NULL;
  
@@ -199,13 +201,13 @@ index b48d33b..456a063 100644
 +    }
 +}
 diff --git a/xmalloc.h b/xmalloc.h
-index abaf7ad..b3b1c8c 100644
+index a6b8d23..18fe756 100644
 --- a/xmalloc.h
 +++ b/xmalloc.h
-@@ -26,3 +26,4 @@ int	 xasprintf(char **, const char *, ...)
-                 __attribute__((__nonnull__ (2)));
+@@ -25,3 +25,4 @@ int	 xasprintf(char **, const char *, ...)
+     __attribute__((__format__ (printf, 2, 3))) __attribute__((__nonnull__ (2)));
  int	 xvasprintf(char **, const char *, va_list)
- 		__attribute__((__nonnull__ (2)));
+     __attribute__((__nonnull__ (2)));
 +void	ssh_enable_fips_mode(void);
 -- 
 2.17.1
diff --git a/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch b/recipes-connectivity/openssh/openssh/0001-openssh-8.6p1-fips.patch
similarity index 92%
rename from recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
rename to recipes-connectivity/openssh/openssh/0001-openssh-8.6p1-fips.patch
index 10687ff..ff1b5dc 100644
--- a/recipes-connectivity/openssh/openssh/0001-openssh-8.4p1-fips.patch
+++ b/recipes-connectivity/openssh/openssh/0001-openssh-8.6p1-fips.patch
@@ -1,7 +1,7 @@
-From 0452f9dc4acf90b8d7ac6ddf6ebbe455d202ce54 Mon Sep 17 00:00:00 2001
+From 064c5cafa532166058a5cc694c4398ed2aaae8d1 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
 Date: Sat, 21 Dec 2019 11:45:38 +0800
-Subject: [PATCH] openssh 8.4p1 fips
+Subject: [PATCH] openssh 8.6p1 fips
 
 Port openssh-7.7p1-fips.patch from Fedora
 https://src.fedoraproject.org/rpms/openssh.git
@@ -19,6 +19,9 @@ Port openssh-7.7p1-fips.patch from Fedora
 https://src.fedoraproject.org/rpms/openssh.git
 (commit: fbd5f1bee2e2cdc7b1b47f4604b8347d8c3ed63f)
 
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+Rebase to 8.6p1
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  Makefile.in              | 14 +++++++-------
@@ -38,10 +41,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  14 files changed, 171 insertions(+), 20 deletions(-)
 
 diff --git a/Makefile.in b/Makefile.in
-index e3cd296..bf53fb0 100644
+index b749206..ee58570 100644
 --- a/Makefile.in
 +++ b/Makefile.in
-@@ -204,25 +204,25 @@ libssh.a: $(LIBSSH_OBJS)
+@@ -205,25 +205,25 @@ libssh.a: $(LIBSSH_OBJS)
  	$(RANLIB) $@
  
  ssh$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHOBJS)
@@ -73,7 +76,7 @@ index e3cd296..bf53fb0 100644
  
  ssh-pkcs11-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(P11HELPER_OBJS)
  	$(LD) -o $@ $(P11HELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS)
-@@ -231,7 +231,7 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
+@@ -232,7 +232,7 @@ ssh-sk-helper$(EXEEXT): $(LIBCOMPAT) libssh.a $(SKHELPER_OBJS)
  	$(LD) -o $@ $(SKHELPER_OBJS) $(LDFLAGS) -lssh -lopenbsd-compat -lssh -lopenbsd-compat $(LIBS) $(LIBFIDO2)
  
  ssh-keyscan$(EXEEXT): $(LIBCOMPAT) libssh.a $(SSHKEYSCAN_OBJS)
@@ -97,10 +100,10 @@ index 32771f2..74fac3b 100644
  	return (&aes_ctr);
  }
 diff --git a/dh.c b/dh.c
-index b5bb35e..676f893 100644
+index ce2eb47..c038961 100644
 --- a/dh.c
 +++ b/dh.c
-@@ -152,6 +152,12 @@ choose_dh(int min, int wantbits, int max)
+@@ -164,6 +164,12 @@ choose_dh(int min, int wantbits, int max)
  	int best, bestcount, which, linenum;
  	struct dhgroup dhg;
  
@@ -110,10 +113,10 @@ index b5bb35e..676f893 100644
 +		return (dh_new_group_fallback(max));
 +	}
 +
- 	if ((f = fopen(_PATH_DH_MODULI, "r")) == NULL) {
+ 	if ((f = fopen(get_moduli_filename(), "r")) == NULL) {
  		logit("WARNING: could not open %s (%s), using fixed modulus",
- 		    _PATH_DH_MODULI, strerror(errno));
-@@ -489,4 +495,38 @@ dh_estimate(int bits)
+ 		    get_moduli_filename(), strerror(errno));
+@@ -502,4 +508,38 @@ dh_estimate(int bits)
  	return 8192;
  }
  
@@ -153,7 +156,7 @@ index b5bb35e..676f893 100644
 +
  #endif /* WITH_OPENSSL */
 diff --git a/dh.h b/dh.h
-index 5d6df62..54c7aa2 100644
+index c6326a3..e51e292 100644
 --- a/dh.h
 +++ b/dh.h
 @@ -45,6 +45,7 @@ DH	*dh_new_group_fallback(int);
@@ -163,9 +166,9 @@ index 5d6df62..54c7aa2 100644
 +int	 dh_is_known_group(const DH *);
  
  u_int	 dh_estimate(int);
- 
+ void	 dh_set_moduli_file(const char *);
 diff --git a/kex.c b/kex.c
-index 30425ab..1250f42 100644
+index 709a0ec..c4ac65f 100644
 --- a/kex.c
 +++ b/kex.c
 @@ -165,7 +165,10 @@ kex_names_valid(const char *names)
@@ -257,7 +260,7 @@ index f03b7df..57b8779 100644
  #define	SSH_ALLOWED_CA_SIGALGS	\
  	"ssh-ed25519," \
 diff --git a/readconf.c b/readconf.c
-index 724974b..870a654 100644
+index 0f27652..6311bd1 100644
 --- a/readconf.c
 +++ b/readconf.c
 @@ -2475,11 +2475,16 @@ fill_default_options(Options * options)
@@ -283,10 +286,10 @@ index 724974b..870a654 100644
  	do { \
  		if ((r = kex_assemble_names(&options->what, \
 diff --git a/sandbox-seccomp-filter.c b/sandbox-seccomp-filter.c
-index d8dc712..c6e62e4 100644
+index 798b24b..bbc2380 100644
 --- a/sandbox-seccomp-filter.c
 +++ b/sandbox-seccomp-filter.c
-@@ -157,6 +157,9 @@ static const struct sock_filter preauth_insns[] = {
+@@ -160,6 +160,9 @@ static const struct sock_filter preauth_insns[] = {
  #ifdef __NR_open
  	SC_DENY(__NR_open, EACCES),
  #endif
@@ -297,7 +300,7 @@ index d8dc712..c6e62e4 100644
  	SC_DENY(__NR_openat, EACCES),
  #endif
 diff --git a/servconf.c b/servconf.c
-index 9695583..98f6303 100644
+index 4d1910f..4502fef 100644
 --- a/servconf.c
 +++ b/servconf.c
 @@ -218,11 +218,16 @@ assemble_algorithms(ServerOptions *o)
@@ -323,7 +326,7 @@ index 9695583..98f6303 100644
  	do { \
  		if ((r = kex_assemble_names(&o->what, defaults, all)) != 0) \
 diff --git a/ssh-keygen.c b/ssh-keygen.c
-index cfb5f11..6451584 100644
+index 027c6db..fc73943 100644
 --- a/ssh-keygen.c
 +++ b/ssh-keygen.c
 @@ -205,6 +205,12 @@ type_bits_valid(int type, const char *name, u_int32_t *bitsp)
@@ -359,7 +362,7 @@ index cfb5f11..6451584 100644
  			error("Could not save your private key in %s: %s",
  			    prv_tmp, strerror(errno));
 diff --git a/ssh.c b/ssh.c
-index 53330da..729d87a 100644
+index 35b6b51..a6e7642 100644
 --- a/ssh.c
 +++ b/ssh.c
 @@ -77,6 +77,8 @@
@@ -400,7 +403,7 @@ index 53330da..729d87a 100644
  	if (options.sk_provider != NULL && *options.sk_provider == '$' &&
  	    strlen(options.sk_provider) > 1) {
 diff --git a/sshd.c b/sshd.c
-index eff4778..fee4703 100644
+index 8918eb2..b2ab001 100644
 --- a/sshd.c
 +++ b/sshd.c
 @@ -66,6 +66,7 @@
@@ -420,7 +423,7 @@ index eff4778..fee4703 100644
  #include "openbsd-compat/openssl-compat.h"
  #endif
  
-@@ -1536,6 +1539,18 @@ main(int ac, char **av)
+@@ -1537,6 +1540,18 @@ main(int ac, char **av)
  #endif
  	__progname = ssh_get_progname(av[0]);
  
@@ -439,7 +442,7 @@ index eff4778..fee4703 100644
  	/* Save argv. Duplicate so setproctitle emulation doesn't clobber it */
  	saved_argc = ac;
  	rexec_argc = ac;
-@@ -2017,6 +2032,10 @@ main(int ac, char **av)
+@@ -2023,6 +2038,10 @@ main(int ac, char **av)
  	/* Reinitialize the log (because of the fork above). */
  	log_init(__progname, options.log_level, options.log_facility, log_stderr);
  
@@ -447,11 +450,11 @@ index eff4778..fee4703 100644
 +		logit("FIPS mode initialized");
 +	}
 +
- 	/* Chdir to the root directory so that the current disk can be
- 	   unmounted if desired. */
- 	if (chdir("/") == -1)
+ 	/*
+ 	 * Chdir to the root directory so that the current disk can be
+ 	 * unmounted if desired.
 diff --git a/sshkey.c b/sshkey.c
-index b25c59a..8fcfe22 100644
+index e92709d..5bd4fa9 100644
 --- a/sshkey.c
 +++ b/sshkey.c
 @@ -34,6 +34,7 @@
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index 194a6f4..efba8db 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -6,7 +6,7 @@ DEPENDS += " \
 RRECOMMENDS_${PN}-sshd_remove = "rng-tools"
 
 SRC_URI += " \
-    file://0001-openssh-8.4p1-fips.patch \
+    file://0001-openssh-8.6p1-fips.patch \
     file://0001-conditional-enable-fips-mode.patch \
     file://openssh-6.6p1-ctr-cavstest.patch \
     file://openssh-6.7p1-kdf-cavs.patch \
-- 
2.25.1

