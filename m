Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 138F2C6FD1F
	for <webhook@archiver.kernel.org>; Wed, 15 Mar 2023 02:21:02 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.2820.1678846859121929745
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Mar 2023 19:20:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Jkdvf4eX;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2438a26fb2=kexin.hao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32F1sIRf004263;
	Tue, 14 Mar 2023 19:20:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=ii1d6slB+qYUTxwhfuxTHCjdGkgaXE4IdnXOJ7oe7/s=;
 b=Jkdvf4eXSbaGhzzssgoFl4DpiV8NW8Ss/Q75kWsSAEuCRQxuJtDGLLeRiRQqOlBfmZDg
 TO5/OVwhbgrAdPiJeOdiykacI+sV5PcZ6QnFi97YpB6ct6J/51ofTF99Ui9PL6MBeXWS
 njfzAF1EVDFvwKrohNePuqfGXr2CmEJ2f2ZKXHAXEqObNs8nnWJAl7Tng8mIygcHHqhU
 H52ORzNcNlLXYRIWxEP1hzJuPUzR6tkIvXDEZS5MBtdibnipVUE6pihfYXhdMWJv2IsJ
 YlU7JK9J8OGZzep0Sq+HzhqLz8PhuLHjPG6d5BbEp6TbLFVvkUMsGyNiFD7Yt8ao6x0x 0g== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2172.outbound.protection.outlook.com [104.47.56.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pb2avg41j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 Mar 2023 19:20:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XTU68t3XhRuse/Q+ZDy0kJCrOD7INxbCLI3uh9XWCxa5ldSD6ikEKROnTtP/vb5wgHp3JJgTOAkoLBMX6b4WrmL+EbHl68LGPDFFYVL3O1wesbEshLsybD260o30r242woEG1yO/pAW/qTcc3anNMqy8AqrxIH7VtLBzN5gj+FXDbiJ7XJrYI3r4hW51goyb290r9aQMwg8e1E6Ck9Ralh6Gjt/t9ja7ie1LK7uB22cqiDXLfZfAeHnYFN8a2wGQX9F2nnCTdkhWXczsjAu4sXzLuUvwlHcLrGfSv4tJHYnecGYmR582GPTBYrBlDJ+IpiWsmhp/anHKMNFaxbWUcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ii1d6slB+qYUTxwhfuxTHCjdGkgaXE4IdnXOJ7oe7/s=;
 b=mtLMlywdnL4NK/6HxT8BEvhKy7MHHM3ElcM9FPJ0QBXmzvwQUVtty9UjQKPkGjoYeuSIaH7rHSBxPmJUpxCP3syQbU5FYcdCJnHgeeys43hZwr8fU8GeIPNNejcj9gxMn5VgjB+iZ4iu9BZWXnJb+qdTDrTsLEi3NvHxli6tJohRyxVzbl16LWrJkkkKJIuppJd643B81cMamO0ohzXDEYmOhrEGh3FJiwEj4+ecvLg3wTEoug9NjJy7KO/96RXAdmUnQY9y7Ep2ibkNUccn0M/6L4aOKWg2nloxw5+vwqFCTlaei+Qn7B1ksnMPYnJIOa7naA9AJxERxXtvaxMe3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 by DS0PR11MB6398.namprd11.prod.outlook.com (2603:10b6:8:c9::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.24; Wed, 15 Mar 2023 02:20:34 +0000
Received: from SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::6cd4:23dd:4229:fef7]) by SA1PR11MB5899.namprd11.prod.outlook.com
 ([fe80::6cd4:23dd:4229:fef7%8]) with mapi id 15.20.6178.024; Wed, 15 Mar 2023
 02:20:34 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Christer Fletcher <christer.fletcher@inter.ikea.com>
Subject: [meta-security][PATCH] dm-verity-img.bbclass: Fix the hash offset alignment issue
Date: Wed, 15 Mar 2023 10:12:24 +0800
Message-Id: <20230315021224.571351-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.38.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0126.apcprd03.prod.outlook.com
 (2603:1096:4:91::30) To SA1PR11MB5899.namprd11.prod.outlook.com
 (2603:10b6:806:22a::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5899:EE_|DS0PR11MB6398:EE_
X-MS-Office365-Filtering-Correlation-Id: fc33ccf3-cf87-47bb-68e2-08db24fbdb44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hRnR9ZycYGKOflYuDocy6lZ8TgWulGIx8xVlFxVSkWLKIRCm0pGgzahrUydlyDnVEn3j25qGsh+SIpE34AZ6R7kOpUAVtmNTWhUytmaa8BHyhvVIuvOeKOJsydUVafzrXwNc13AKSJjK9O+fbjZMxsfWCZD/sKuqb/kNrOglTItB2Mczmw6lMTUlaTtSD6ry+5RB3h3z50JGAJdNPZ5YmO5XMQU4TEuLvknvzS3Vt0YLlIahxomuk6Ia/S3u6OxY6IzVRBtDT7zQ8+Ze+30qPIJJVlKIJRLgUPPa9+RTyBcc+5qMMp9P7MnHW9dqFuACFJv3g56T+eGimGbG5Uv4REsmN13SEqn67hK8G4dznV0f8AMCowCcERFLI+tyOq3fuWHd1mfNEmzkYdcAm2YZJ2AY47cvkQ9ptEs0wA5qj3rbnpmsir+YfaWCZV1TeCdKz5qkwqyEfLhv27HbIy5RsCGqYWfWvgD79DlkxOmy0I1mc2Srnj2jH/Ww5jyKWyTjgzv+fYX0mm2N/iNCcA9dpvAhnYhdNl5RxrBoMJMwHHqYEn8ta4Ckd3pjIGpog0JHjRcz9YZCjlD03EWsc/hI7l4DdqIzfGLFDp+36yGed7rnnm2vtoEbHivZCoMYbZTTYT+Nzc2P9Y3Dl4AOhMngfTt+mHomElfZ5iqZrEyo41dLToeH8G3bRiP2Rp7tpATY
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB5899.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199018)(6486002)(52116002)(66476007)(8936002)(8676002)(66556008)(66946007)(316002)(6506007)(41300700001)(6916009)(5660300002)(1076003)(6666004)(6512007)(478600001)(2616005)(966005)(83380400001)(54906003)(26005)(186003)(86362001)(4326008)(36756003)(38100700002)(2906002)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?UkCElRg0uptPiNeaJNDfYH6dtg/5Zg8725VjvcufvvvMAGPiooyX9T85iFBK?=
 =?us-ascii?Q?USgRpVfGWfuHF9zbBvyQBLRnaoZwNjvozHHNn4CLC8xmWi4EYLak7sTkvT/q?=
 =?us-ascii?Q?cRHx2fSmiEUrXbSzg8ppMGWS2EBn7tLp+NqJaAqPTMIQc1ybxd3Jo+mtk63z?=
 =?us-ascii?Q?4m1/aKLf0FxcRF3En4ibAgb2uhFwU9x36OG4JbbLQY7r4e6+nUg+YmjrjW1t?=
 =?us-ascii?Q?UhcaGmhLkWAakhxd+4j3qZrPAzmvoK9ENhiIXSBqOuSC6LQPypndW2p8BVqf?=
 =?us-ascii?Q?uGHXjjmiWrOt6khnesmpfn45/sCzwzWXoOCQYwCXp9Q6JieIXQ3mv128t9qJ?=
 =?us-ascii?Q?bGjYBxLTF+9Aec43EbVXA/UQ51VNSNJ6Xx+y9FhLV/ZwZZRDJXiGzo0MO7Vh?=
 =?us-ascii?Q?I/Pee7jni5Jv3QkghuH1EvoxOE5uC+OV5jtXg26CR1sid9a/8p6TT2bpGQl/?=
 =?us-ascii?Q?OZfBzmU/Liz4krGWcqOYI3Epj0BAoogppXgv34JQJYk5ZNf5zsRaNMyEPnnI?=
 =?us-ascii?Q?fh58MHz7W+EistSHTWx/lAU/GTm8Y+uMrTbqhWwyaVsvvSbMPy5bkupYiiCo?=
 =?us-ascii?Q?YwEpXNRn23rOe6ks6WUE00G/ySgeBlhx1VrrWDOmgXAqAKUaBtF/2VQ708ed?=
 =?us-ascii?Q?LgWz0AvD5sHCCS6+wHw49kN1vGCKaG0paUss10KBAy8HuA0NwWCBmNqpVBU3?=
 =?us-ascii?Q?41w14IjnG0ygqzMBerWOCdjEbLv1vN63x+T8Gikzs/Oo2rFTiW0bFN3S1rvr?=
 =?us-ascii?Q?4UwmeBbMAXuMIUZyDwKOFgjg7VTYAZIi/X1lRr6TUUjDuZuVdZmDJ2cxJNdQ?=
 =?us-ascii?Q?++emf9b23a2lUgGp1nZ8sXC4mn3QQi/oJzAybSqRCd4b0lqqNkurFWF36Dg3?=
 =?us-ascii?Q?FA/iJ4jL1HLCpZ9+FATV20j7Dfa92IfgH/fLy6NLHoQqKCNUAZkv1mX0/q4v?=
 =?us-ascii?Q?yCn8EhrbKoFC7Nw9+Xlz7XhIiYt+A7tdrSclJoeG4Tyd0hsDvgn+p8Bru0vQ?=
 =?us-ascii?Q?D1l2nxYfBJocCeKZUmZEKHWnHHlLlS4JcUwvdRHNUXnbNfdKH4QhVtEmMSZc?=
 =?us-ascii?Q?gRJx2bVfvfevAofo8WWYDM3y2AD2sM7o6CFEdgwsBH/W5Iui5yxA40fU7dMj?=
 =?us-ascii?Q?llrVd2uEappuLxa3kO2AY3cZfojGa5pQovAQhYAHfOVI/VVAIY/FXDbOdk8X?=
 =?us-ascii?Q?wavYVmwPrtTvZqJsuPbABu4eRzgCxgLsd4Y3b65ABDH3ubRIQs90PHgv5ri0?=
 =?us-ascii?Q?ibiOiXm4y6mSzFiSaoExR3w4eowE5oxGrlJK1/WmeyVSuhdCqpD0azLS0O2E?=
 =?us-ascii?Q?Jhj4Vg6B5tW1zur+j3HfHeQPAqWYkfX3tgq97I8hjzuDduJFLBzvPBG0qqjJ?=
 =?us-ascii?Q?5dRr9SV6ZzRbOA+qNFqCu3CK0VGM+kMh8N8WUqoIfz6v5QoY04w5ufYsYWMd?=
 =?us-ascii?Q?8CMkNBuk0P3vd9nOBWI3U4DMF7y1JBW1N6OM+dBFFtTnITfxifmBHVA+6CjZ?=
 =?us-ascii?Q?slHO4lv+o3zAv+jpnNlgD0TnPQ+36/X1BRAAUtaeq7I6jWDPXBCVS8RjAvYo?=
 =?us-ascii?Q?pBJTM+bKRVsBrPfOjcJIMMUa6yNYbnPLnge1rvss76K3BxW1suXgmokwmEl3?=
 =?us-ascii?Q?3g=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc33ccf3-cf87-47bb-68e2-08db24fbdb44
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5899.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 02:20:33.9484
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8c3NWNga+5WdQQafqfDwCu+TmnNfrS/8ZOVoIUJrjpMbOCo+j2axWGZ0rFSqpwY+5IJwbhhEHNYeAoiTC2FhIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6398
X-Proofpoint-ORIG-GUID: mFEn7TqJfHDPoWoATxV1tpFUbTWAtbM3
X-Proofpoint-GUID: mFEn7TqJfHDPoWoATxV1tpFUbTWAtbM3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-14_16,2023-03-14_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=982 suspectscore=0 phishscore=0
 clxscore=1011 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2302240000 definitions=main-2303150019
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Mar 2023 02:21:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59427

When using the kernel module parameter "dm-mod.create=" [1] to create
the device-mapper device, the hash offset address we passed to kernel
module is the hash block number. That means the hash offset address
would have to be aligned to the max(data_block_size, hash_block_size),
otherwise there would be no way to set the correct hash offset address
via "dm-mo.create=".

[1] https://www.kernel.org/doc/Documentation/admin-guide/device-mapper/dm-init.rst

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 classes/dm-verity-img.bbclass | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index e5946bc3279c..8fc98de8a2bd 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -25,6 +25,9 @@ STAGING_VERITY_DIR ?= "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
 # Define the data block size to use in veritysetup.
 DM_VERITY_IMAGE_DATA_BLOCK_SIZE ?= "1024"
 
+# Define the hash block size to use in veritysetup.
+DM_VERITY_IMAGE_HASH_BLOCK_SIZE ?= "4096"
+
 # Process the output from veritysetup and generate the corresponding .env
 # file. The output from veritysetup is not very machine-friendly so we need to
 # convert it to some better format. Let's drop the first line (doesn't contain
@@ -56,11 +59,18 @@ verity_setup() {
     local SIZE=$(stat --printf="%s" $INPUT)
     local OUTPUT=$INPUT.verity
 
+    if [ ${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} -ge ${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} ]; then
+        align=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE}
+    else
+        align=${DM_VERITY_IMAGE_HASH_BLOCK_SIZE}
+    fi
+    SIZE=$(expr \( $SIZE + $align - 1 \) / $align \* $align)
+
     cp -a $INPUT $OUTPUT
 
     # Let's drop the first line of output (doesn't contain any useful info)
     # and feed the rest to another function.
-    veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
+    veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-block-size=${DM_VERITY_IMAGE_HASH_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
 }
 
 VERITY_TYPES = " \
-- 
2.38.1


