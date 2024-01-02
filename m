Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E172BC4706F
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 02:30:23 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.21114.1704162620639916871
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jan 2024 18:30:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=D35i2ga1;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=173143555b=qi.chen@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4021xld1024149
	for <yocto@lists.yoctoproject.org>; Mon, 1 Jan 2024 18:30:20 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=JK39aMCb+AVXyn+7KJ
	jP/PDF0V3el18DNmbW4MwHzGc=; b=D35i2ga1pGdpcYNodVpfNlerhW/Vx+Lg/T
	4qKxLh+IZ5nHFOHq6MkVvGF1h0wBhc2qnnzMeR4bcq8Dnv/PJgOBO2C2tb874pJ5
	uLopUQwFJSrLOd5i/eCEdLttIOV9Gk119YzaDVCecAiVckLgJ1nGpZYrwRTVGNZx
	UzxTlMy2q88PFtYgYDobdbB0L0xfuLIHA0Ble4QSt3WJKqwW39JHqBuLV2HpymUX
	FwMjjGTit17BWWOz91i1S0P4XiTrKJl96kKsxHZ9aOWLjwoFXOsKuJo9XQxN7XHR
	SfkHEU2DsYS1NtnlEcn580ia5HeFjIhA0P802NcZjQujoKGdWJog==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3vakkkt12s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 01 Jan 2024 18:30:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SshbuYIwWIuYCS5YAdGKybrZW88+PieBHTibsrLsOPa5PiLBmCzI1G785pztpKhKqeALYK2YzYv5dTKj9FJcVyUHXtoAeDDdUEv/0Kn3P+HmJFzLjU1pgZXYSl8n8ELHJKbepztEJUuD5L6NGGcTqVkd2RE1qKAtFtPQ6mZ7Xk6kgrfvwu9/R8VDNx+fuaIFWqZz2OOOLehYTS/pIM53G+qZX5ge5/fwUmQDIlKYynYJfgIEwTUHRhgpMnY0M7IYLYKUgfu8TnmZwDnHmwISj/M3WtEb/Ay7QT2zfFxaKZKbktQNmMd5A417VIDQIk5YkFlQcmUrUOfc+WAdJ3JXag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JK39aMCb+AVXyn+7KJjP/PDF0V3el18DNmbW4MwHzGc=;
 b=QWFcw/01dyNuxMVS0I00BksHt2r59U/uAvY0shQrzAFWCUH/qkhEmt7wg+1oTIajQ0ubeK/ZzLOJfJDx6mDlkPn72BaxyCrMjYPPPvgHXZ2v3Wnx7W1rahpy2K3+m+hIsX6/RAUG9Ww5m19qT1AL5HTkgcIimv0plN6DoVpnojItxCZrKMglLfLyD6+1G2BVK8FbG1rv31RLoWPkoMBePimn6S9fkA9JkMtmRwdahdg3SDXrPsersJfOL2Zc2NnKSF4STcUogRBg4SC54x0YoyjgI6qe7BOxue+l2jCKT83QY04E5bYgbP1RSblqYiVhUL7gLEY1sgPqANi5p/htXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.25; Tue, 2 Jan
 2024 02:30:16 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315%6]) with mapi id 15.20.7135.023; Tue, 2 Jan 2024
 02:30:16 +0000
From: Qi.Chen@windriver.com
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: use INIT_MANAGER
Date: Tue,  2 Jan 2024 10:30:00 +0800
Message-Id: <20240102023000.4006647-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP301CA0026.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:381::10) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|BL3PR11MB6411:EE_
X-MS-Office365-Filtering-Correlation-Id: e8aa9b11-ac46-482f-199f-08dc0b3ac176
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LcyB99h/2XrqW1KRNQG6jP+RHXJcHSR7jb7/3tz1VGeC7HbR06kHSehO+oHOrr9FNgREh8esMhbkrBtQ6gmr0W39Ah4/cD3pL5cbQtNkGrw6Ytx09PwWf0XEm6eOgA9xi37wefclAnS56NiUr60kq8zbGTZmPBiuGDd7kqrhzETAchgpX21lMHwk+6uJtQ4SJc6EfpkNlFmtQUMYXIrtPc+NnuV9F9uuxD3xC84eFkB6u9s7iI+EM0DT1BEG08kejs9Im4LPH8wuVfXC/5HuXLBH8SHKWU9FZ1nwe2lQv0SIBBmoAcVA6g/jn0tfkuv/rd8UVvrwsTckjTEZPpUGae/+d9wqvHJ8vhf765ZDVQvpHe6eRRpdUw/LQaj4sOq4BBoKVA4PkfESKSg2beTorx0W7behDF19zlKAeUMZqr0+jWK6Jix1SIRm7X1AI4sAqXCeN4+IEJZU0j3mViUR2do6VQQceX6gevv6CpbzHQpmD/ztq9wRCl6HPHEIymflAvTdg+JaK8u9Aoz67NuZ9GVTpkKw0e5gYtUbj+9Ygsp/TYBWzit4vA4wqWcYoo/0cGdHRHHQoMNYT0IKPrWNL6y2nSe7G7zqursepEuRosATZnqaP4a3R/tdIfiNRoz2
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(346002)(366004)(39850400004)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(6916009)(6486002)(66476007)(66556008)(66946007)(316002)(2616005)(8676002)(8936002)(26005)(1076003)(83380400001)(478600001)(6512007)(9686003)(6506007)(6666004)(52116002)(5660300002)(2906002)(41300700001)(38350700005)(36756003)(38100700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?TIE0NvP/KnFoKEF+xmmS6iYeFKJRMa8jswQguehxSF9GrwiBhyzg+tYgqs6z?=
 =?us-ascii?Q?8slBPNCi1981mk8wQC7v03LP0HboWFPbmxh8oosiR8c39EMzJbToDCwUCN+W?=
 =?us-ascii?Q?eq8EzyAukfbT1S0rs7Y6Ymm73FAIQ8d+2LOT30UdesT4/9wdjUrcPmHUNehX?=
 =?us-ascii?Q?Hms6Z64HTt2dSExtm1BavGGIYAadNdRtwGmmMu+YSE6FtFbWO+fVrlSgW0HK?=
 =?us-ascii?Q?fDwePG2jAVl/m25PKNHQjOu5wQEgg6PcmtiNtAec2/WAVVPCxt2A29Z1d2cO?=
 =?us-ascii?Q?0uS320f9zVFNs4d4GEF1jXsPWO7XhVH5J+VkUKyMfBA9sfykv2+/CjVGClbT?=
 =?us-ascii?Q?gJSPj4xqfrhwBRcX97OCUbomU0xzSZng0p4L7hF8X5LvZxdaESi35iHBG7iV?=
 =?us-ascii?Q?rdXZMPvP9WGxX/F/eWUduQBq+xAWkVUqep8gfB3qBfPx7IJtOf/fap2cypsY?=
 =?us-ascii?Q?rtUO1xUI/doyUHQVeWrhFqnm77etZryEQEPfyqI3nw1uVPtCVi/AadtI6lI0?=
 =?us-ascii?Q?rcs94r3ymNwVhe1sMEHi9TMEB9d9y0rqJHA0d2/FEfUStLNJG20AAo5626Jf?=
 =?us-ascii?Q?mNSTLOgaSDSWpOPVldli7fypuoXPiv2yClYkel5mtAIjTTw+uide0LeSBQBH?=
 =?us-ascii?Q?AP9syFRK2ChtNJE6lp4AsJGeX5FURIAI999L+EsSK7TZeYUTL4oU0gQ7TKHm?=
 =?us-ascii?Q?lKdAVatNJDS8pMkuOvWUEHdt5D/jyhQcVeKJfom9mza1eGZgO51424JT+qI2?=
 =?us-ascii?Q?grXwTayl57BM3t6fJGFSVi93g6ELMRjExeCWyjaHoSUoWyKGsngg2ak2NmJP?=
 =?us-ascii?Q?p9j6u7gAfobSBaa5KrSOYf7Wh+Ib/wqgBeRbeceUbEhiuaMILD+UnSgjSb1/?=
 =?us-ascii?Q?tZ6+AHppoksIANztZtrqFNLLjXod9HS1WOTYVFuWRf4mMOb+NXWpOu0x5uGQ?=
 =?us-ascii?Q?RUrNqNqkvRdrsS9+dor5CEHIAwGNQJEE5qxpzGiAuZxbOtvAcochRgTb/vU0?=
 =?us-ascii?Q?QvkfZBphaLnC2GOEAVg3LsdMqt7/cqgXAo3mOMRdZDs9BwwoYk4mUc+Fi9Ma?=
 =?us-ascii?Q?f7sM3ipY6Jhsxe7aehKaTcjnUGqbpXg9H965nPoBDlcvfHC+6EMNwuc48O2E?=
 =?us-ascii?Q?Nx9hQklUvbBx+5T8L2hDyM8Gg54Q8sQIYHo9EjYkO42p1gzNqUn2kqg9Z6rj?=
 =?us-ascii?Q?UW9U9GTHzq9pB8rV7G7KPrzIqbhzIWpv5dK6U9HQvyFtwuX050McEFpjZ9W5?=
 =?us-ascii?Q?l9dfPalnzZb+cG+vqMwDhSbjM0GuihRlaiFDoGfGnVL5E4CHA74QbdRJYmWV?=
 =?us-ascii?Q?CbmCapARuDkY2IJj2iVEwfjNNuisqO1yZwMROkvXK+u/gBWF1urgP2lzjVGO?=
 =?us-ascii?Q?mPdy/1NeMdYNqXX/yjMpIALlP5sxFf/c90x3Fr/MBAz0UPGvzS+vzBFoYT9N?=
 =?us-ascii?Q?N9kYZ7nNGUET7TPPQxyqmEn1+spsC5mQ73X5wNeoH+TF9Min1wqxLoRpOCCM?=
 =?us-ascii?Q?9zTPozR/Ie0SAbbCYWrf4szzH/1qjc2zQINE9764tZSaeWShneA9XfTjTlCN?=
 =?us-ascii?Q?jxUAS4axcIQwYBopQzUCR/6MqqWu9oqsJbz5soue?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8aa9b11-ac46-482f-199f-08dc0b3ac176
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2024 02:30:16.3675
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DoJdAN4eAwaZyWzlEvce4lcmLtc3qnavzdSqUU9VFR7tc3L3bxw+nrUy1tGPgbgLPba2HaPxb1JHw4OLxfgp6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
X-Proofpoint-GUID: rNNuHNdagF5fGOQRWtc-ifqjJIk78yMd
X-Proofpoint-ORIG-GUID: rNNuHNdagF5fGOQRWtc-ifqjJIk78yMd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1031 malwarescore=0 mlxlogscore=997
 priorityscore=1501 impostorscore=0 suspectscore=0 mlxscore=0 bulkscore=0
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2401020018
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 02:30:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62061

From: Chen Qi <Qi.Chen@windriver.com>

The default INIT_MANAGER is 'sysvinit', to use systemd as the init
manager, we use INIT_MANAGER = 'systemd' because we can make use
of the settings in conf/distro/include/init-manager-systemd.inc.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 config.json | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/config.json b/config.json
index d504d07..6024161 100644
--- a/config.json
+++ b/config.json
@@ -1107,9 +1107,8 @@
                 "shortname" : "Systemd weston",
                 "extravars" : [
                      "TEST_SUITES:append = ' systemd'",
-                     "DISTRO_FEATURES:append = ' pam systemd usrmerge'",
-                     "VIRTUAL-RUNTIME_init_manager = 'systemd'",
-                     "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
+                     "INIT_MANAGER = 'systemd'",
+                     "DISTRO_FEATURES:append = ' pam'",
                 ]
             }
         },
@@ -1422,8 +1421,8 @@
                 "BBTARGETS" : "core-image-sato",
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
-                    "DISTRO_FEATURES:append = ' systemd usrmerge'",
-                    "VIRTUAL-RUNTIME_init_manager = 'systemd'",
+                    "INIT_MANAGER = 'systemd'",
+                    "DISTRO_FEATURES_BACKFILL_CONSIDERED:remove = 'sysvinit'",
                     "TEST_SUITES:append = ' systemd'"
                 ]
             },
@@ -1442,9 +1441,7 @@
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
                     "TEST_SUITES:append = ' systemd'",
-                    "DISTRO_FEATURES:append = ' systemd usrmerge'",
-                    "VIRTUAL-RUNTIME_init_manager = 'systemd'",
-                    "DISTRO_FEATURES_BACKFILL_CONSIDERED = 'sysvinit'"
+                    "INIT_MANAGER = 'systemd'",
                 ]
             },
             "step7" : {
-- 
2.34.1


