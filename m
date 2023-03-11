Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F4A2C7618A
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.44234.1678540425161016667
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=apPRWPyw;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDBF9K031858;
	Sat, 11 Mar 2023 05:13:44 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=2zbRLdhAUrTefG/HpgMu8E7iK0GaakEvv0UYcXb46SY=;
 b=apPRWPywXX3RSZJJUPzJ7JY2193GJa9fqiBsOqUw3bPcu/Q+laLXOz96WBoZ8YjIGRmp
 WSLs1x7heEKUva+OzkBDqQmDpvAYK+6WxsT6aMIGTFiawNVsNHKnDMFqJD1EcQOf0r7t
 g8aQmExgREHFYB7c4lhszRyEXW1iQJpHVAhZx1+F4FqAipDo9HIUrlkgp6+8zEwXoVu4
 XBVnkSIJF2o52UdIDb78zFwPeqJV0sw5HVGREIdoZDUIgf/qgIGQYutWAfBiMbKAyXA2
 ajHTbKuXYbz8NzEgwEYD5W+5MkX0N5qnTy7WXTy2z1WE/ZxPR4/T6IN95s19EBuVtn6S +w== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8nt8r56h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=APmueptX8rWMOoZLGfVbYCWrB7OGzwhlLoqcdpM0B5FOc1CAvRL3CVk7AWognG4ZfnCrym8jdLM1Q3Ackkiy/oBUpJlDvtYmKvEgtIId0pf/SAXSa3JsZPB0hBG+VXRAxHUBo8BheskgS52bpYQ8ZZbw1+ZsxXFlAZT2BhtqbPVQj2ANdskM8kbo43hLAFPFJexqcd0LnpaLcHlWZUcZNbRwCk1CneKp8KSl0sez2EfmU1sYuvpJhOHTceKKVvLvUEpyqDstI6Hx31J8lTMh6EsigIUe5NPOOCOD0Hnrq9Pj7gQaL/v86+ZMMY9jtRwf12mq73k69sAJ+eVyLpNNRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2zbRLdhAUrTefG/HpgMu8E7iK0GaakEvv0UYcXb46SY=;
 b=Y7fn+yycIR4ZfxcrICHolP1eaj6AQIfrltIhEFf8BNVX8awwZRZczjY4pzqN54gBTOiwwLbtNI/3xPbzmh291nlSAa8IV2QZuK4xrOAbPWKtP9ajMxGswsK2BR45h5+JOWj5G7Na7DSH0tSu/VNuHlpeRg0sMDcGaIrvPUvw9ZKwAnglRqlHdeQz+c8wNzMJI0Z3V5ZauC8QLExveTNlOOzNVkJJfIJioLr3HI9O4EbmoXU60D+VavuK6VnnKJzSmVoS6BnTrCekyNtKE+XIMC0d+u1XKO0NMxdbNpADgFgWutwuLk6cdKeOGm2oKzT228vO6hV7DPVAOCHPCFkw1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:42 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:42 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 11/17] mcstrans: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:02 +0800
Message-Id: <20230311131308.1337339-11-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: ccdc818b-e87f-4d39-dd65-08db22326fe4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TELwF4vkadI98J7yNY2NfVbHD9jzMlCFezQ3QVSJcrPK2K2AqurWDWiA4Ml51QBmbTvLdnUPb4kMS0qDReR6wZJqsci6Fh0jEDAox+H7fFB0Aprs+mD8FEd+IEsfhUu1feCgHuVjHUvCXjRNrBT3AUkNFjp+Xw3DOpIGpKDLq1tQUcn9Xn7/4pnE4X04NhTxfYObiVIvCJeUQ+PaU9qYrDa+Wc0o2L/ojlF6NC5eQWG/Dio9COUTIJ2SlAxZUW4nXzXukVyv9Kl1w0Iin+h8yNTzobp/BSx5ZrwqDux0kJc07H0T6OYnACRqTtL5Hln070fPtqqsPuG23Y8JVXhs7i6f/BY63sKH/rSJgcQSusncO8Ph3ZhdoCxJRPwxT0qWGXRUPUjjqcxcRc2olxlPbBMTN7P3kSy8ymcLZE209D4OTtOYqY+XLxodmZ3N7Fa27tfc2mrWtEzM1vRDbLplLRBbtlLUaXYqb8y2hiTOLQZK2NMiUrM10oihKKg+3yo+Lv29dtobPgXbFoJfQx2MoJr+hb30lcuGGC1E5LxICCdlPQpFccS1zoypOJxP/nYsYT87pyv9sgeNLEOqHxPSbkmg8E2yMGG+9Nu9MDlGEOFcQ0N8JUNb4J9BHbVdNg0K3sOpnJxmnVpMj452eodxGUhLBDMSWQHaatVIuqgBFAcBK9tZfs5I5ZlWpLhjDIKuEZG+TKIhM4GYbUdxuZlNsQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ka87SdY+ZURqNtSKgPVWsA71ujs3srC4OIPUYsV7eyHGoo3Sx4/TED5ja0gi?=
 =?us-ascii?Q?u9XcnOkujfeY4zuYkmCvufuU2ZjioQGQAs1vI+L1b7HAUklfURZm384AesGC?=
 =?us-ascii?Q?sefQiA53bBeLeiGo5SeCN89aZngPLhsxiVCPj21ogLpnol+bvuKjflNZmDo3?=
 =?us-ascii?Q?ajBGRlGdIXMroua/xuNGNx00K0kh2QG26Cz+/Snu3wUA5SYpJiXYuzmnqf8Q?=
 =?us-ascii?Q?jjnhlRTKR2NJCQVC+jgnltikTCc7baWx2F/pq+IKzQYTx5Q9X/29sKWsZmD/?=
 =?us-ascii?Q?3fhsI3HdDdCOcI5gUxkkFwo1yXvREDcizbvdOIYMFoL07DhjaO2lqbqlWz9q?=
 =?us-ascii?Q?kEuvZjYi99sTvFxkQI5ibz+hOJEyjNknvZnSBTxFsdiweGd2XSwr4uravKLx?=
 =?us-ascii?Q?A60ss9fUVBEhdW3+B7+Z2v4Zd5+zGCevz/VIcZZ+pKB0U8F8l77lCS6uoP/k?=
 =?us-ascii?Q?UNdWnktpNMJdgRfGiRfMYdR6YFitTv+PMQ2w4K5HN8Zce63CSn2lP9Yl7H59?=
 =?us-ascii?Q?mHQcb38IZqlA9j8RFanvbLlH+GjI7lFbMMdQrIdgWiKPv0SCLhKQAsqkjPWL?=
 =?us-ascii?Q?l7jz6WliCSmSxTfaCU4nVo5j87Yk7WqMZHXghHgzilKi+6T3UgnrEFnbqBQB?=
 =?us-ascii?Q?VHzhy5ApZQ0KZZqeLHWxnnAf0sZvdLRtqIELdh+np6fL5U2jaRIO8IGEGTEb?=
 =?us-ascii?Q?rNbfi/9ZeiZAjcreb7PgoElmQVS+WiDwoM4qn/wguVUFLDAsNycMm9WgLt9x?=
 =?us-ascii?Q?5zoVFB0GKcuBsPF3oAJXcNQvYcFOw/vZK5yJrqo5RI4O5Vx6qJEa7/VDnRon?=
 =?us-ascii?Q?8fkFHfS5EJ9BQJ658VzLbwkv6O+GiPOkKVWSdNJhzYjvgPeYfqnrFHbqPHmW?=
 =?us-ascii?Q?qGTekmB/lSW7Fut9PLwJ/0IvZj50Te2j9Go1HEJfb3KoMVSTzHBkiVHZfvjF?=
 =?us-ascii?Q?QuHP0aAuarxVUdawFB0lJlLUbm8yHlgvAz6YKFnguf257VU7IrQ5d/k82Hvw?=
 =?us-ascii?Q?zgtU6vKoqfsQLdrM0Q6NLBWEUlMDreOdnT69FTLVR/Ovy8h4X6V0EP52c1tg?=
 =?us-ascii?Q?KFmH+MjeIAUH1kOh7VkSzyC+Wcg4sJL6WEr4PK9D0kovyZ6MV48wM3X06HBY?=
 =?us-ascii?Q?Ta8nTu9tr5dcnHOZEY1ZJgT46nbpzs1T+bV0LE0oX/27JBC9wHsdv7qBNpxu?=
 =?us-ascii?Q?CHaVWyU99Yp4qAR35h461WWwU85tZOuFAgGDLTewpKE1IwZj9Ca11BVbORrl?=
 =?us-ascii?Q?cRgDiZO1ToQHHRME2pc+iMn4sK4KMaA9ZqV/95ycHc6avN02jYX16TyS++RZ?=
 =?us-ascii?Q?ZQay7kXctXVSuJu+LhyggAXR1rjp6pBYgusJ3ZnnQO8k8xS+DMR+L2+SJzBy?=
 =?us-ascii?Q?VuHXuQ0zSA+cTc9OEG3JnEZGe7+8hTQfaHsKyS+lKBGu6A5hEIekjo7wcbDy?=
 =?us-ascii?Q?2Z55rZ91ckn74ftnmeFOI4LFM8J6OER+j4amHRSWEFg8G0EEsIplEiJzA+i3?=
 =?us-ascii?Q?DQJPTkwsJhB62PWKmPGDwSUBYPQJgN0YZIz694XgtM7h1Rx2UBQoo6SEJhLg?=
 =?us-ascii?Q?XL1LB6NkQx71g+Du4qJ6/hqqLK2QM52mQvu2Fa7DpQCXLgQb4KFEviNEkUTI?=
 =?us-ascii?Q?MA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccdc818b-e87f-4d39-dd65-08db22326fe4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:42.6848
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iVurqILlOaBqNYdsVtD7YDUirNQXb9lAWRFFJ59NnxXvigi+F8Y4dJDKL2Vlskw+B45/ju2wqZWbRYjFpY5gCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: YBQVlx3-aAgSWBGytq5fBj_W7EmmqNsg
X-Proofpoint-GUID: YBQVlx3-aAgSWBGytq5fBj_W7EmmqNsg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=528
 suspectscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59394

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{mcstrans_3.4.bb => mcstrans_3.5.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{mcstrans_3.4.bb => mcstrans_3.5.bb} (96%)

diff --git a/recipes-security/selinux/mcstrans_3.4.bb b/recipes-security/selinux/mcstrans_3.5.bb
similarity index 96%
rename from recipes-security/selinux/mcstrans_3.4.bb
rename to recipes-security/selinux/mcstrans_3.5.bb
index b5d6b54..4a8482f 100644
--- a/recipes-security/selinux/mcstrans_3.4.bb
+++ b/recipes-security/selinux/mcstrans_3.5.bb
@@ -5,7 +5,7 @@ mcstrans provides an translation daemon to translate SELinux categories \
 from internal representations to user defined representation."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 require selinux_common.inc
 
-- 
2.25.1


