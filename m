Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.7698.1626960429854757319
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 06:27:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=iv/e/l7i;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2837e0545f=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16MDDCBv001094;
	Thu, 22 Jul 2021 06:27:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=1/tq5JVH5jRbYG1tgnja/+eLT+r5giSbdoVIp1ecW1c=;
 b=iv/e/l7i3JeUuuT8AkIlpP7+lslt50HCGgY+dcqVPSm8F7yGyH4A2BerW2NLAlTaSf/e
 xwdEGBFpGG4prpOK/qCgqBBAlQu0SBFswkIwzKKjtAPi5wPQiM2FJHYSAPOzdRLPOdnC
 KSyf6KwrP7l1gJ5OxeVTR1PVfq63slXC2iQYYA6Ndj5oDGQlxKpVlC5GUX9nASF2dBCT
 BHCy3DMi2HVfBU3karHzY5GBOm6BjW+XjjTugcKxyneS7xrx7/7G3GlrImGZCkoxonbG
 4fnusjT6gCkTTMC+ksZJQg8IVclVmvWSaDJH8vOlKXfsT/EnZZ3B4j4aaycBuRTJDORB uQ== 
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1anam02lp2045.outbound.protection.outlook.com [104.47.57.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 39y6kr840j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jul 2021 06:27:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANVhu6EeLu4wlq/+g10e9wXZ8G3F1+pNFVWCUoNv0P+7SBrN5XUtJd9z6aSKWRxfYz/45XUk+KFHf8OdrwkCCyGGI5Ng5tOGj9lnDHXDxb3vv3uVwr2pkrHvk8deEZmLErLEoulYe3ayLcFy10lo9PLQO5M9ytpFxb9x0WOiXRyimb3hv0VAebI7jJalExgliZR/kf5XebKcem2FCO5If9E+FSSQNO2OmiQ9iPyOj/Pj9a1orLmCHxE/PByu/76srfA6c81klu+ktkBuAX+fXyKS5I7fOKvS1RWhsFCuSFI4Y2B2BhJY6J3JXZNfQJT5gviYHcmBI+ovw1NBPq0JFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/tq5JVH5jRbYG1tgnja/+eLT+r5giSbdoVIp1ecW1c=;
 b=AEAKarT7JTNHIQkcMRVi46D+JE5PeY5XZtixYoqdEhZmOymHhBf7k5TP542cSoXrsTMI8j5UIg8D1Ot6GFZtjIB2xYV2mfZyD/4PisiC3mJ6b/y0RQB+J+VwLodE5jOuciPMqUP/KI9JPVg9ZQc8uxkW89ia1lrP7FVZsKYIRuWbEwyH6asid2P7ZOkdeOGfuR+YSD75XgLgMri5uJFcN6dDkL0iqLLEyqUZZvQLrS0t7YHfEwjNj6tm4Jm5qqB1ZoYxq9DKVosM2WwYc5/XrvK+orf5P/SiOtBk7gtmwIBqKgS7LZSr3bB6NzC7kFaCLQMJ1ALGekNvXxoB55TQOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4354.namprd11.prod.outlook.com (2603:10b6:a03:1cb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Thu, 22 Jul
 2021 13:27:06 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4%4]) with mapi id 15.20.4352.026; Thu, 22 Jul 2021
 13:27:05 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: steve@sakoman.com
Subject: [yocto-autobuilder-helper][dunfell][PATCH] config.json: track system load with PARALLEL_MAKE
Date: Thu, 22 Jul 2021 09:26:51 -0400
Message-Id: <20210722132651.150435-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: YT1PR01CA0062.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2e::31) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::f245) by YT1PR01CA0062.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2e::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24 via Frontend Transport; Thu, 22 Jul 2021 13:27:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 766fa1df-28dd-46d2-147a-08d94d1465f9
X-MS-TrafficTypeDiagnostic: BY5PR11MB4354:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB4354875C0E54383F5EB509C99FE49@BY5PR11MB4354.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AyaQfk7FCfjqUFjl9gqZsCo9WUC2b9BxK7dXAbDbFMg0+7aOmwFBI7PnamViKTvFDPxmyM3cdEV7ENhc0Z4mp0z6oxm9Bt3f1PI0hAUnU1cbJPMBZ//5qCezTOT0xQc5tXKOlRsa1e1Ug0U6E32zcV136aS36/Gkg5vhabl1JQdQJSet7nZ17Oxpp3ujesPG9pe6BC/I9m+iqRkS+it/u6xEI9cFWVJu+3Dg/4f5PKIf5bls+r7/FhXogCLr/FHFwHTzT0m8NlQ3mzKP6F+nGwOtE18npRIOWOrsci5KoBI0GHnwebiNSD3hMBT8g6sEEV29tqiV49v07M4eSNxUfpvA/1NSH8Cf+xCEvBQbpKvHLMDIg/GijXcn2ZvK4jvHJ7foo3dcQw32qNWy8oAsg1FDC8YpwK7fm9giRwUO9lOO3gdK/NQnpJK0Wc6yPcNAFYKXGKhboc2rlhR/BWKwQucdv3yPGkLhbEdyNpe/8e8qm8jex40rmJgwqSXm1y8WATX70N+tMdT42yyMVtdfE2hIF+f+5KQjRbDx/tLh7VFTpEzzHzV5aJVTUB+OpwrKYjmxQ9Bas4PglU+rp24rs8Ysxzzcic/Myuee/O/m8gN0WoWt2942mqfh/Iy+s0CKBtNusmsMRbI787GyR+P19Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(366004)(396003)(39850400004)(136003)(6506007)(52116002)(8936002)(6666004)(6512007)(478600001)(38100700002)(8676002)(2616005)(316002)(66476007)(6486002)(66946007)(66556008)(186003)(6916009)(1076003)(2906002)(5660300002)(4326008)(83380400001)(36756003)(86362001)(44832011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?b4iRe9nnCamaX+tH1nfpztmeSBJtw3/erlpndXQRmKQ82hl1OZ+3bU+p6snZ?=
 =?us-ascii?Q?kWPNn7jNMhnLwVCWb2OtuCm3lK28YX5+gRXwbkhwf4bfuO6TtHVwHwt+pNJD?=
 =?us-ascii?Q?qlJd4zqgvUQqCmJ96+uF7X+2IA6P0kCC6ovd2Tvg2LCF4NJnAzgCyiTCy/RQ?=
 =?us-ascii?Q?yAzoy77BDT57RaLjx0wEkskNNjU32B1UEerkFpAJIKy0On9t+z1KnglsKNYv?=
 =?us-ascii?Q?V9PwexuvY+pANgHwKgO0SWsyZy3Pu4/69LZYGyt7FRU71iKnAZvNSryOFmUa?=
 =?us-ascii?Q?ftV2ZJ9irixSDZxjT7hteC8Y3PTZdjSJfQN3mTtWXu0khuybPLbfJkt2RZxe?=
 =?us-ascii?Q?OD0QUE7JFY2B3m8cQikmH2eftvkmsfh6UkLbvtbDmWX02eZQYskvUyvv3wER?=
 =?us-ascii?Q?OZcQXp1oPi1rPz7Xq8iPxoUij4gEcECVPHbsZapdE5eNwy7dmr74N592YNo/?=
 =?us-ascii?Q?9YOpdmXmhiF4Pj72q7u6a17FX6aVP+vTHPj5qTmLZ1zCRrABzTupt8/AEKuu?=
 =?us-ascii?Q?UeS4blpSMU3v4xKJ2tQKlR8M3n6tT9sQ/GQVsH8CI1uPVRVSGgXH8UeP0CYu?=
 =?us-ascii?Q?HFFbZU0os8hCOH8IOGbwLU8QHVC69bozCC73W6ki1XdH1V6o5qu2JeXP5NfP?=
 =?us-ascii?Q?NqQDH8nbbAMJrp1i8piO4/WWihfYDv05UNycH1OjFj02E2an91JY5HjbAPUx?=
 =?us-ascii?Q?KP5/lkhgYgE9+dDWM1yLNOQdmYIwvGg4OV7HvTPkxFLlHWm0RrNplJjzNWby?=
 =?us-ascii?Q?kP4jiU5IG4RlieExL0ZHYhLSve5jLODUcB3uoBhhSUkgn+8v1dYZjErSbRq7?=
 =?us-ascii?Q?v7GsYLGw+p8zCehb03P6DgJYadKpoJQtzsEfEbuBOaVk8vMIBHB6682rzZzu?=
 =?us-ascii?Q?wU9jYIrE9Hhgqy9peN2Jpq5jqJpq3LHmVcPNfFpCAZtw+PDDDnuupe+2eMEz?=
 =?us-ascii?Q?B3V83i2f3tvqeQwdBZY6wUJlpIibSxw1DMoCod+1BwNCSW8FPS/shUi1TBqH?=
 =?us-ascii?Q?eBw8oHdJfnm28X+cm6yR2MMcL5cqGMEMPQKUhoEnRCrnpeUfuM2L5kG+QkxS?=
 =?us-ascii?Q?+Fp0nfDwhmJunOI0YsbJNAFBjAb1ZmRoDFN3h/eymHAxLlrUmFFon+1apm48?=
 =?us-ascii?Q?FxDnF5YJ2h2PjE0XGEky964ngQqZCAyn1lsW698XCtnCEdKOB+LWfm0Bfgbh?=
 =?us-ascii?Q?spJLYkC5mFe5IlzExAcejTRH/S+QKGp+UttuiTw+E2e5Q3dw9ZfUfSSG5ynX?=
 =?us-ascii?Q?c2G5MJLvONOqxwy2yX2CY2hKQ5v7JQTyRHf1dPN5iUXXdWgOEQx63J6xe7ky?=
 =?us-ascii?Q?PmkuSY/d2WwbxJS+t2K6IWchBf1FYrkMr7UUatyle+8gZWAd7/kb+25O3/np?=
 =?us-ascii?Q?Si8nRZ4=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 766fa1df-28dd-46d2-147a-08d94d1465f9
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2021 13:27:05.8501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bMj82bBz/iysO8YxQyVEmYDQqpwDf26WkSJRfjEqhZXnIe//tPH3sVKsXXLOaoHhIxDfjsAN0IynZOMa/ESh7sesBL8eRYOit9X7KNLZfxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4354
X-Proofpoint-GUID: adX7sLRLG0TVofTW1wShsTHRQQUhmja-
X-Proofpoint-ORIG-GUID: adX7sLRLG0TVofTW1wShsTHRQQUhmja-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-22_07,2021-07-22_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 mlxlogscore=999 lowpriorityscore=0 suspectscore=0 malwarescore=0
 phishscore=0 clxscore=1031 bulkscore=0 priorityscore=1501 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107220090
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Backport for dunfell since we have been running for ~1 week with this
patch in master and the same load limiting may help reduce build
failures for dunfell itself as well as when its builds are running
alongside other branches.

This adds the "-l" option to PARALLEL_MAKE in config.json with an
initial testing value of 50 (the previous iteration of this patch both
had it set to 100 and mistakenly stated that this was a percentage,
rather than an absolute representation of system load ala top/htop).
This option is supported by both Make and Ninja. However, we also
require the "--debug=j" option to be passed to Make in order for the
latter to report perceived system load in the do_compile logs, (which we
need in order to track test values), and since this option is not
supported by Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we
can determine if the target load percentage needs to be adjusted.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 3cff363..8323864 100644
--- a/config.json
+++ b/config.json
@@ -43,7 +43,7 @@
             "PREMIRRORS = ''",
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16'",
+            "PARALLEL_MAKE = '-j 16 -l 50'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
@@ -56,7 +56,8 @@
             "SDK_EXT_TYPE = 'minimal'",
             "SDK_INCLUDE_TOOLCHAIN = '1'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
-            "BB_HASHSERVE = 'typhoon.yocto.io:8686'"
+            "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
+            "EXTRA_OEMAKE = ' --debug=j'"
         ]
     },
     "templates" : {
-- 
2.31.1

