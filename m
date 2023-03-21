Return-Path: <ovidiu.panait@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8932C761A6
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 19:21:38 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.23269.1679426495831316737
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Mar 2023 12:21:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=S/Ywm0fF;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=24442424f2=ovidiu.panait@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32LBUGmY015052;
	Tue, 21 Mar 2023 12:21:35 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=+tgMpFDj/wH19D6Z/cQmTzGsDwcPrF3UH6NoBBWhGUk=;
 b=S/Ywm0fFEqglMxNI/Swfl4CgtaRzbDZkIyubxMS5kpMnzjtS7nw6R6xie95dtnpE+V6C
 Ar4ceEMjeYzE9svj6JMvY2MbEauOEZAzm7jK9e0PHw8Y3ASNrD0VRB3T80IJ/08sEO72
 ClS4n1zGWUYHNVKa6S6L9sKFAStVO0Nm/XorgLI6Nn7umbzZizK2Cxjd8qngZWN8FkAX
 x9ObYT6zGNbBmXELcJIFsv6BDC8Yl0f2tJwNGGcZ0ULYIYs9ttYiwJcgxhiBchj8W4uB
 u+ENxYYpUh7BGmKg9xXh+WBKY8EQtI2DO22RWkI0sXc6z04UmkI1f3pPsIGaV9w2JI3s zg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2042.outbound.protection.outlook.com [104.47.74.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pdctmk4u0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Mar 2023 12:21:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKNn64i4dIxzTQarET/IcYBsvCQF6itgizQhzABh5FjlUd0U0DcLVC+xUrd7CEY5hnED6lDfWYmA7UdWcZ0Dv18EwmSnQ0x0RT+T77WG3TmKsZn8ugjIPrd7A+VWm3gm7dYPvC17cI5mdA0DcESaCKTDpbFsV3xlqB1Fgg6T97wrRbuH8/SS7RNASyyoCLV1bULgrnkrcd9Pr2FBM5qI4xZZoCrALdoKp5lNYpwswT1RboGX0q75MgUnvgvnO4B2khD3rKycnpQVQDMtwwqONcWlfI/mNmyDz++YadBN1p12ULdsxASAciH2ahOQnWvV+rO7QIdQLb/OuAzKHxPAUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+tgMpFDj/wH19D6Z/cQmTzGsDwcPrF3UH6NoBBWhGUk=;
 b=WR0C4rB4ky2ZlCrznpxocTSe3dGC2r/vEL/Ky7WbOzBtmIjf+LTYCyiIDlvYxZfLR7pPdL5jp+zFNvO0AAh598/UUWW+CLr072R2gIwT6Ay37d5l31GcH+v80bkJhurLAVwbtRlbOjGSxnVPTkFDQOY5boPSwFowXISJxPQFiptLm2vEUOYlGnT0KWx+Yidl0wFUR7Rbs6UAmmvypNknNmrugjgQ4GqhCHQbj3hPT/YpfsHON6bvoBLruJacU0E0e3Kv0zv/sfOV8ikU8O+DIXnjcjUrltqVBSj31p/JFhk6q6/D5+HYLwIsOM02O1QWepNKEuckd/ujHfjSoO1V9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM4PR11MB5327.namprd11.prod.outlook.com (2603:10b6:5:392::22)
 by CH0PR11MB5297.namprd11.prod.outlook.com (2603:10b6:610:bc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 19:21:32 +0000
Received: from DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::9f42:14ae:2b0a:d1fb]) by DM4PR11MB5327.namprd11.prod.outlook.com
 ([fe80::9f42:14ae:2b0a:d1fb%3]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 19:21:32 +0000
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: anibal.limon@linaro.org
Subject: [ptest-runner][PATCH 2/2] utils.c: make the pty file readable by all users
Date: Tue, 21 Mar 2023 21:21:11 +0200
Message-Id: <20230321192111.197351-2-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230321192111.197351-1-ovidiu.panait@windriver.com>
References: <20230321192111.197351-1-ovidiu.panait@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0102CA0091.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::32) To DM4PR11MB5327.namprd11.prod.outlook.com
 (2603:10b6:5:392::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5327:EE_|CH0PR11MB5297:EE_
X-MS-Office365-Filtering-Correlation-Id: 20a807a8-c09a-4b67-9909-08db2a417aba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BM57AGI6bIWVBs+E6M2bk1xm3qiduzBhSChVglcOBd0EhlBBrRSx2NGkkRa3OYg+Y5bLoNcINtH/cm3mnJo2ZaJdCeskSmYsVTAmiOp39hRXwrHGbylKaCBzE7cxPDvxD3+3k0p+QNa2n9kval2UXMcVUbBiKnfRvhn+p/yY09Yb3xRBxJ4pHEE9lex2vrHBwRrYhwCKDDxf/eOODZw8yz1Qu05DSXL8NlnD79jdI+RqCqcmKhR723KKc1dQzYUkBWuXldho/GcFb6aYuPahPNxBHJ+06gFviNl8eEkkP+zDogztdVi2PaaNNanvBgtRuwy3LM/6NdKS27C5Hh9eTQfah+wB9hacfSpzcF20UiDwxtXR7bUFUGsGF9QKOEVKOBx0k6I4+oqcF1x/DUZNb9gtMvIFb+7SjE7VEyJziZQHRI6b5kS/7qNR5Wa+yZlM4W12/uko7otzbrcIK9u05oxnWGdT6kCAaAfU7Yx9XyYVGFvS4fnYNPhYWUqZV7KrYRh57Yp4csrSGG1zQ9SX+jvoJYfaXdSnv8jaOI5gcal7e3MHQM1ijGWtDQ8JfgiuEB2DCNafqPUD3dviJ4lrG0M6fx3IP69MXpkX1xTfPFhUoYZJ6uoNENov+/EU2kxLArWyrj3FCrgnHxrUwV3Y7DVvSRVSDFwO5eEOuAeE8e5TE4Qs5Pk+rTFyKNGnBKN2kzHInVXNTNTjc3BJgQIjQjx+T/0y47rj0IuLHAYNMQ7qV6o1mTrYbJM84Y/3Q/mS
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR11MB5327.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(39850400004)(396003)(366004)(346002)(451199018)(52116002)(2616005)(186003)(6486002)(4326008)(83380400001)(6666004)(478600001)(1076003)(66476007)(316002)(6916009)(8676002)(66946007)(66556008)(6512007)(6506007)(26005)(41300700001)(8936002)(5660300002)(4744005)(44832011)(38350700002)(38100700002)(2906002)(86362001)(36756003)(26730200005)(19860200003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?J/o8PoPU8yXtFi75yYteSyPqrhcKyPxTyzB9yKLXQ+mlyS8oeYoVMQZGjYZi?=
 =?us-ascii?Q?4yVLg5rR+IrBIaK1Okj2VvPGUiRxP0mBXeYMx+Mb0RiE4yjCCNzRM9b0aSL0?=
 =?us-ascii?Q?1h3gLDJxMgZ3TrPFvcCUljYmCyrCV00kdlqOz85sucCZFvD/SSNURLxiPKp5?=
 =?us-ascii?Q?6/TEy293N1QQYcXU7c/tGxk0tjXVo5ATOJGhmR2/BuYL9qN3CgMMsIWqVFxR?=
 =?us-ascii?Q?qlYKS2K7UVN6OV5uZ8Q6EUAI3PHkMEQrymf7KOKVR1mFGzinVhIbOHaAVnMc?=
 =?us-ascii?Q?DIUMOVlfysTnS6baVcxWh978Rr14oiAEZo6p9Cu7TgMuh/0SEbRNPgcEmES3?=
 =?us-ascii?Q?0dABr6OFVthbI3046dB1hL2dXdWHHgPcEUKlpgSkYNIg8ahnVICYBGZ07ztk?=
 =?us-ascii?Q?UKHIYaIhmG8dCOc2riP7vKx1iqWjUUFLys4ekaqlImVviP8pySPZjp9dxnLP?=
 =?us-ascii?Q?9u++QrIQXuK0abrBrG/zB/pK0XV6hZFJZyJUp/RwC8a+ssRNCEb5U+swPy/1?=
 =?us-ascii?Q?1frcIKtG78YMEWLAPqc5cL+TfLRV1hejQVExhQB+gGfNcgsMZm8C5d2vwUgJ?=
 =?us-ascii?Q?DDcWIsQM31xkj42pL3FHnD+T6Qg/rrMn+C/QVnVJSZSGDOWAfTLo+0WEzjlW?=
 =?us-ascii?Q?u4hvYNrwXAFhs/wGZK8KXM9x4z70TYXZBGZRFIUnr1fa3+9G+QoZhQ88yzHF?=
 =?us-ascii?Q?QtHrRQ+S8j11goldnifnhjWjpC/7ZMTJOEGD1wjjf55TDyG3gcWTMETAysKS?=
 =?us-ascii?Q?pjijAJLCj3w2cyepEmUZFyMXOv2qPxDtUg7rI4V0NQBlQ2fnH8RGsivzl7cH?=
 =?us-ascii?Q?6Hvq6Ja21GG9OzNft5QjYmb4q5+IPNi8Ee6FZgJUjPUlfOwsvlj9Dcf2DCh9?=
 =?us-ascii?Q?j4XtrGwy/w+qNWjktiFZiaKlQeKGggixNVKoBXFAcvexeF3uG9jATKxXnn6I?=
 =?us-ascii?Q?LBQlAwcP2/4snOOJLo3Cjnsuibe4Ch6YdwKAzmpoaUIaWtH1mx+1VzzjhyeG?=
 =?us-ascii?Q?uqmw2p+O9ZJRbTYnrSUI+bA10k8vdP/eVLXccVnK119XE59KpLxxwOKQKGjV?=
 =?us-ascii?Q?+ss39m0gfLJNu87+gsWfL05OzsSqm1B0FxsY7/D5QPXygZv3SMefjUdXWvzG?=
 =?us-ascii?Q?Ir9owo0Lm6BkxR7lvtuhvFS1ZRV1XTOFYGkLH0nvnGUl65wP1CSgibNx/j9j?=
 =?us-ascii?Q?K2EDw8jE7blue1VOPbyT/F/tQ90N3VF7tLTwjm8DKjuhIS1Ka6ZwWEIqHGGO?=
 =?us-ascii?Q?weNB9suyJ7coUBndkc0JxGJ4lh3kmlo0J/NmfP/lDye0MEfoscrYOVwNSb5v?=
 =?us-ascii?Q?WH6ZiEQbiqravIr8a/ph7UuoS5sC7E1TgVpE1Y/0m8nm62Qw2iprGNun+jWC?=
 =?us-ascii?Q?pIHNluWv5xyxVHdflz3YVJuID55tOw50aGz5i+5p9wflKz96qvRz9L6UGzRq?=
 =?us-ascii?Q?YUA9R+opE17vih4VhYfCYUysGrU82SNk0vFOtJ2HYWls6Io0G33aagEZqu8U?=
 =?us-ascii?Q?PdVsPcoqFzXw1scDF4g+MKn6PBQ/pQ7QJ4iZsNaIk+qm1geoPTS6rVGcu2Az?=
 =?us-ascii?Q?7OAhVX2m+YJOH1SZgbqnsN0atVhXbUCY2T4XbUaXK4NforOGT64vKXXqY1XK?=
 =?us-ascii?Q?Aw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a807a8-c09a-4b67-9909-08db2a417aba
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5327.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 19:21:32.6940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8zDZqU+cpAPxff3dfPojt7SG6f+Iy9uJwrHU8NfM1K849UlWil5bALkNOr/Ezf0d3GnGFvV+tMnGFOKZmowzUFZWAoALb8GOR21kXS4iWaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5297
X-Proofpoint-GUID: AQ40nY1kaOoJTiEQckYqZGlkCJox2r_o
X-Proofpoint-ORIG-GUID: AQ40nY1kaOoJTiEQckYqZGlkCJox2r_o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-21_11,2023-03-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 mlxscore=0 bulkscore=0 phishscore=0 clxscore=1011
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2303150002 definitions=main-2303210153
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 19:21:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59484

The "run-test" bash ptest expects read permissions for /dev/stdin:
test -r /dev/fd/0
test -r /dev/stdin

The test currently fails because:
- bash-ptest is run as a regular user
- the underlying device for /dev/stdin is a pty, which is owned by root

Make the pty file readable by all users to fix this ptest.

Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/utils.c b/utils.c
index 87ac20e..643693a 100644
--- a/utils.c
+++ b/utils.c
@@ -406,7 +406,7 @@ setup_slave_pty(FILE *fp, char *pty_name) {
 	}
 
 	/* Makes the slave read/writeable for the user. */
-	if (chmod(pty_name, S_IRUSR|S_IWUSR) != 0) {
+	if (chmod(pty_name, S_IRUSR|S_IWUSR|S_IROTH) != 0) {
 		fprintf(fp, "ERROR: chmod() failed with: %s.\n", strerror(errno));
 	}
 
-- 
2.39.1


