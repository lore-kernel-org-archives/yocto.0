Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.588.1625018940453007320
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jun 2021 19:09:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=W+K/QYlI;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2815ceffb0=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15U290dq029632
	for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 19:09:00 -0700
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
	by mx0a-0064b401.pphosted.com with ESMTP id 39g5a80fa8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 29 Jun 2021 19:08:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0g3NdKxUA4kbW8D77iF1nepPmBO2+l1lyh68W/txSNO3ZgVR/FApd7eNzuSZ22oPOA7Whuyanlro8xOKapQgt8P7NUKsmLBpeLBctqJkBheiCw6ZXe/s0qshoGe0bldjhcHb3K7nWdIofqXnmIxukIX5pbanjVXuV88RNBIvcVGNAo7UjdvmYFR7DZdzOdc72vY6Zfo5XN33WW4yXY7b2OPFlBW4LOd/iqV2zFQBjTplUaYiMiHXz34SwkY53Y5G8084Os+gNhXoSl0AkveKh3npc/i13dlb99fxmyOQZ0ogwvjv+XKK5PR/41b70Akfr9L7+kqttmpYt+sySYTHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgOBm2IR+CyQWjKKqK4dmhGW9EUo4A3iN7g9HY+8ibE=;
 b=ZYJHdAx+fdBPMEWU6JJKmQvq7tCMsJ2sGTybUY7gfX90Bpo8LKwGEtSjduc6lsdFOpkiSwapJCGR6z/WEDWrEMGkWjNlRIyY7dLBIt/jpzxenSa5ur4XArPAGI3U3m4Kfxhfufu9xnvijtVAwAMjxLDTf7JSTMrkXiDqcnLXS18ycVMgKo48E4ZcSLPlm2jFuu73Jud1A3mjkT4yRGLAeGnYLIoMwzZ7xpO+Wv71Qm6NHpvD+Qoi6tvpPaD1PC2szBID2NBfe/e8UARa05C+nWKqFz57Tt1e0ZIQQbwCiT2wqNpih8lTyNgsL4pvwpFnyModt+hR/8QoINvhFCxbng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kgOBm2IR+CyQWjKKqK4dmhGW9EUo4A3iN7g9HY+8ibE=;
 b=W+K/QYlI4N8mNYzF8kwIOwu1X9p3bsfeT3XXso87MRS8O3OLwpIKar17TonzGUbhmofkga/ct45plTlBCndYxsoF7D56HxK9jLOqJwRpq28EbdRUeGy3udKLccw5RdRguup0Kkilsqht+YKDTv5LsgGzh52n05S+/fDkZNY/6C4=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2189.namprd11.prod.outlook.com (2603:10b6:301:51::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Wed, 30 Jun
 2021 02:08:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c%6]) with mapi id 15.20.4287.022; Wed, 30 Jun 2021
 02:08:57 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jason.wessel@windriver.com
Subject: [meta-openssl102-fips][PATCH] openssh: refresh patches for 8.6p1
Date: Wed, 30 Jun 2021 10:08:44 +0800
Message-Id: <20210630020844.83280-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR06CA0020.apcprd06.prod.outlook.com
 (2603:1096:202:2e::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR06CA0020.apcprd06.prod.outlook.com (2603:1096:202:2e::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19 via Frontend Transport; Wed, 30 Jun 2021 02:08:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a2f3441-5628-41aa-d5ee-08d93b6c049e
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2189:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB218924631BE2F60E603E89D7F9019@MWHPR1101MB2189.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:153;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1qiWfhfpfOkxB46V4E4vMG8Bm3NdpgGfSnbsekCAdzbXx5aUnA5HBweE1q1inqrzxZxL4IF7WZcUMUsys//Ukz9bL5wtxXlJ8k/J9aQjgMx5QvzqyyEUE3RHLPxA2we4kjj5I2YCq/fwI9B2wEQg6XyiCPcZC3hg25uYINtqKk/sYfvloXChWHaBZhtpi3IC0s6UzqO6ahp/HrPyzaknd6a7U3UyWwxU/8iWrFbSz3mCVvbOafH2IZZVyRsFS6mJ/1KWr6MflQYQawiySm2rz+deGvHgwcj0LfQZPkKXZEPKefkXy3Bl3e5+wVjK2RPae9LxGHKwu+G0rG3Dxb/qcvEl2Ti77v4kTQn9gRly2JemYwN4mbY2UEdV8JCeDnjCcK7h1EbY1qSB1w5EYHTpQIUBqU2LkRPSxIXZG+W2s8QlC0CquS6L8bZkFc4+PBjFuFbQDM8vBQHpJEaR8wCmbP6DPm+P78PhKBhUuCdkowc6EnUBnkqnEhrShWIgmrNvzRNg0ISS/RoAi81H980SZmMt6RY3jE0UHeKUSBZk6VwHcfhkyM6QRopNYLP0pL1L3OQUrGAy5c1mLBZt+vhOpLRH3Xjiz5c8crJGMLEOGZqnEqyyFfehGO40sHV5EUHLQgWUjqkirV9UNUrkyPeXCa9LtyVmuqvJnrYimLL0Tu+IvfUb5gKsuCFFxkksFY55hdwlIaeQzCjDMrcJxif1LS8pIYVTGLW49F30YAOKXcxMUMkjzQNZq8jYHnRbmLsqNuU40B1BeAahS2Jebm18lB6i9I/uObPuIVeR3CkztNBwLTtkTxyJi0w+mOJx72ssPoFpnX1exCRSGWktpIdllQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39850400004)(136003)(376002)(396003)(6636002)(6486002)(66556008)(6666004)(956004)(2616005)(66476007)(66946007)(38350700002)(38100700002)(2906002)(36756003)(86362001)(316002)(5660300002)(186003)(16526019)(53546011)(6506007)(478600001)(52116002)(83380400001)(6512007)(44832011)(26005)(966005)(8936002)(8676002)(1076003)(30864003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?6niURKLs/kcHgQ5WFK/394+R+T79Mz5u7mD8uaI+nu6eID2qQ/FYvZeUxvS/?=
 =?us-ascii?Q?kF61Kg8v/mKqARyR8eJ1h/3MNCqQz6CNPOV1FwtaMO8Yl7h5nsSRCrPJvLM6?=
 =?us-ascii?Q?a/1il5ZE8auVi7VjiVBQPu0MsuFxywyxo2ZezavOmR1LltSwPdBDlmwc8NoP?=
 =?us-ascii?Q?FXUtbdsJUW6DygWQpzHD+QB0q/Ohj6G6jIsej76XLo+AKU0ZZI9UTPI2009s?=
 =?us-ascii?Q?oyHz0sGunJo5S90rdDYqi/ElZVojnx97592mAoVNR3qvtEI4iLR2ojQzpW6B?=
 =?us-ascii?Q?6aOUVaeV7irdFcfdgU3Nc+87lu3Outk/bRUlwoTpgwdlnCEd4c864Iyp21Aw?=
 =?us-ascii?Q?PgaWXCdQJ/7HNd2WnAceEP8deTPcpD9/JpwwE4Q3F0uTHj0O1XFAKdZcjaq5?=
 =?us-ascii?Q?moozfUfiisERkwsUzzI/BBCB9mDiNsnlLmPw1AmqZY/2mijFgHz25b8XYsKs?=
 =?us-ascii?Q?YDymJbWGW5Kjviyir6tcVwHMaYltQ5KPCjyIb/uTAmyj5FMSNetPOxBHqwn+?=
 =?us-ascii?Q?xcuwvj0JAtD30Kgyhc3EQV+KU8x9c7CmDGcWwwIOfoYhhJM5FeIrIk7M9CK/?=
 =?us-ascii?Q?ChUH+raTTXCaVaaAcuieO3c/6O85o73dOU/quzz+E5KAHI4SRN9ovsp2pDWb?=
 =?us-ascii?Q?nTfzqdrEagIVaeDInEWPT2YKngvKCYiwInDRKO1fAnz1xzP+/ivx4ScAVxHc?=
 =?us-ascii?Q?zRzvrV73XRNXYbD1glRMW4PP29Zy8l4a69YOU3pMe9P2SbQ8kdTM+LgOAvRm?=
 =?us-ascii?Q?wBol+28Hs5582oQremGpws/1aqNfd+eGJqnXJySeLGtkX/hDWbtOnMoWJdXv?=
 =?us-ascii?Q?lTz6C3y+zoOT9r+JdNf1CgtU015wWj/lPIbHOWTH/66ZqJXpcxNh/XB87fdD?=
 =?us-ascii?Q?k+PxoyC185ZiXZbfLyeGnWBHJvF873hmD2kslk73oZzqxXsibX9iCC7hRH80?=
 =?us-ascii?Q?mhjrJ5z96dn7vYbYOgK+a7378Gn0Ac5o9+OeLtmCvyTSozCpGByJ63w090+F?=
 =?us-ascii?Q?F6CloW6TybI2oFtdo0tIRJZfs2av9RV5UDAGVMkDYnWqekZ99WccWa5fJ40A?=
 =?us-ascii?Q?CvBOI3MbB1UgMk9trObvGy2e44kSSiNwBbo4LHqsq57+RuXk+TZN4b4VpsJc?=
 =?us-ascii?Q?STqGjOOTTkLTYBCjBf1FGHenuMuNNvH/wl6akZrA3gcnspGAFE3LK/2+5D7e?=
 =?us-ascii?Q?OWATB5t06Ym03N1Sds8dYMjCp9kw6TzkdGt2ED0yNZLoRvsvFCtsgP/mVXXE?=
 =?us-ascii?Q?GfwD6+4LRD+DrhdrAWPXpRtr++bn8ygVOrYcdDrnofS+ORlj5W45SFIr968C?=
 =?us-ascii?Q?i2zG7p787uysJei+xgCT0mTh?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a2f3441-5628-41aa-d5ee-08d93b6c049e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2021 02:08:57.2388
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ElZ/jUsVsFqDw4twZpytsRD5EVuv8mIsJTUht6DgV+OXdNiQcFv0Sx0CvTeP8iTnSGXH9KRhFRWYu4nOGEOq/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2189
X-Proofpoint-GUID: ZctOqVQVDrBfrWGyPrWG7P5a0vLxJ2No
X-Proofpoint-ORIG-GUID: ZctOqVQVDrBfrWGyPrWG7P5a0vLxJ2No
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-29_14:2021-06-29,2021-06-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=999 impostorscore=0 adultscore=0 mlxscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106300013
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

