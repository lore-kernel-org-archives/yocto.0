Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04209C00140
	for <webhook@archiver.kernel.org>; Fri,  5 Aug 2022 10:38:40 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.5377.1659695915025858585
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 03:38:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ADvRKHA+;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=5216ebdf85=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 2759MMKq027338
	for <yocto@lists.yoctoproject.org>; Fri, 5 Aug 2022 10:38:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=RW2lRnYe5UlR8bRI59K4Ujq0mC+0avVztO/v1ReW0+Y=;
 b=ADvRKHA+4m9PpzBblUtEKaNzNr0vgnrw37eWtZSkiJaRCQ0zuQk1J6rrkYG/Nukdpwzc
 dY3YOtjlfNM8nenAisu2zmI7zGlpiY7FlGDICCp4/GzeyEVDjsLTqXwVFGZmmIY4f6ox
 4DTMdXGF2o1riaIcT7mhM+x0ktWrw0yBUfDBOtGsn3RBMD8iXZFu7wwqdnMdsgGfD8pf
 lKA8cEk8Qs/h26PoazTVCa2VTuTZ/u5bYXwuGhWOJoLUmiutqmFH5qSDIabX+iIfNWYJ
 5tcka84hMWLkIy3duyWPtAuT3EKgvV60lE31Lz4YOLb2Ns7ci4pIU84S2gQBjhEk7MgD Dw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hr40098jm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 05 Aug 2022 10:38:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdHHBuZTahPn7a2EQm8PpYwH1YreEPZISAiYEccaJXckvkun74oT5b3gcXaACQxuhYnZfmRrO2+VijZplzP5AQ36B+AAXio9SjObspDuc8zOZI+MOp9laqfmeq8wTkPx9eiLWnIILbHjLZ8XwndtxLeG5XNy2DeIdb6f8lOQqnhxyXZQZF8qmQS7JV35MlG0eRjeiRFiWGkrAI6B8DX8ERRFs/iiYEgR41LPfB3qwdVReKm0ir6ARCrbDxlFJxmcF8DTEHaH8c06xTXqyP2IFCGDuPF04aFy01E74OhmYDyykTHaCJzK2nEmR5SYHk4riyBM2VHzbiB/GzpZ0FQCNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RW2lRnYe5UlR8bRI59K4Ujq0mC+0avVztO/v1ReW0+Y=;
 b=jkZtRI0M8SN92t8nNyl7wD61Xwc2a/6r+ykw0eynxk8YUZKwsyLhfPlnbsKQekXHB+W/x/DvW+mJKlFznRNIxcTEVPhbBAbIFzgudlG2SBbCwjeDzCNZmqfVH4blSmTayhSsoFBXLy8SjoHlSQEhwUluPA5WiinDRlGq4Qw3d0kfWCz1f181U1XVO3Giu6svNhZIu8I1uoMK3pjm+Gh/bcFljJvlLJERbtZYRIXlKeJ/cM1RTAO3kn9cacB7/N1QmwA2rf9DRl6bO9/ONLFu0XvhAaiSb57P/UwMVuDB76wjvtgrzj+B5KOk6I1AhyN4afc/8S5gNPPE/R3X8oDotA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by BY5PR11MB4435.namprd11.prod.outlook.com (2603:10b6:a03:1ce::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Fri, 5 Aug
 2022 10:38:31 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::df5:1876:3bf:d8a9]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::df5:1876:3bf:d8a9%5]) with mapi id 15.20.5482.016; Fri, 5 Aug 2022
 10:38:31 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH] utils.py: Fix for is_commit_ancestor()
Date: Fri,  5 Aug 2022 03:38:25 -0700
Message-Id: <20220805103825.72037-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR10CA0010.namprd10.prod.outlook.com
 (2603:10b6:a03:255::15) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0dd98350-110d-4bc5-7f7c-08da76cea3d9
X-MS-TrafficTypeDiagnostic: BY5PR11MB4435:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	c4jONI7Aw69ZOTF0q/K5HHbrmpG6wBmKhIUvGW7DXaxG8TpYSbh05+O7HGMge54uflqcDG45wiuZRpv9aN39YFRd/xgAvIRyHm7s0vprYRUf+LZ9SdaIbLpKhWTvGgtuoiqQT/HvGejTysVVG3Xq5m+NS8e1GQBlcDHe/CKIK5quvDIf1oq/KMKa+Y+pBpiavLHyqVr8EwEDrs6aN36TbtxZooF5dOx0YM+ocXe+4nzNns/oughWLjI7CoXxOxyh1FsbZSsjXE3LKgvRLIS5BiyM5pmlVipb6Rw/hhZqHvpLFWIY+F8zd9yVFrUwLm1xL3vpyNIrK7Kq9o0IoZD4zSyYbChkdl/uMo3xPtH6q/SYVOk0/tyV1f+KsAYdmNdE7/N59abvdpb/kDotqX5tcrLTJdmjNSpvjo3N0sb04/GhzjeUW55MjUBSVPe3NVQfo88eylUsLMt5GJLQNuAuq8qVDbSaEgccbLV4KqcNtyhetpgeqjevBjxGRWq98Nwh3+CGpS2pIunBI3nIyLe5XTNGiLRyq9IMw/9rBc1lRRs/koul0N1GI7FLoKFZCrzKqG/eUW+YqsrcApOVB5iL+1Q1w1x5E6JD3bMlWOkwSXdzNSdlSuPlM+S+hr4PTMpCGZAd0exZI4h7ppVhvE5B1WQyMunhxx/9xmHdt1wxzboGHOWGeDAl9muHDSk27qDceWvcyhZT7t8yW+aT3xz/gx4Ik5SDZm9CZLdq0rHfMC2BzdILNrJW4x01SxZGeJJ/sd68brfvowdDWZZ6IZhVkQHBd0vukCovERqiOl6DD6/+Dj6jC8mSqkEgRdfsd5fB
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(396003)(136003)(39850400004)(346002)(6506007)(6666004)(6512007)(52116002)(5660300002)(41300700001)(8936002)(26005)(6486002)(478600001)(2906002)(186003)(2616005)(36756003)(1076003)(8676002)(66946007)(38100700002)(38350700002)(66476007)(86362001)(83380400001)(316002)(66556008)(6916009);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?tKteZVDkkmmDQK0wHi6boks/FJTTo8385DYxiwuGt9vhkUC8GCSAg/up3DLK?=
 =?us-ascii?Q?Pi6+2Zg/P5tlcTM7n+Owf+xR3V45d0vUPnJzAYYDGGUGxgEmOgarstiC7JLw?=
 =?us-ascii?Q?qhbqz19x0AkP+eh0cz3zzB/2wfGlRoQhHBMBaMX7NNe2xKgJiWF11pAs1G5b?=
 =?us-ascii?Q?HsEZ7yEuCfGDfwoDLVB1ft3L/2bC6+szWo8DQQVf37w1V3n5y9qYIaijxTFG?=
 =?us-ascii?Q?BTI4Ql8HetpAYZw/H3wznAKksmGs5C/P+3FsAYtjCZg/o+nnSiuQzrmlVKdW?=
 =?us-ascii?Q?KBCDe4S69yNQqWb6hQdn/Z+B+crRjPA38YLLwCwfp76ztuSzWNMJUy7LeIon?=
 =?us-ascii?Q?AUNQx4MDZjeKImah3IIBVrna0sS9BYwolao0lZcCYR1AzCgZMKRNZuMF4vpH?=
 =?us-ascii?Q?QAgef3LCzyR9hSMxCl/pLX33VnrckSETxAsMzQDQgNYKPc8YNFutcVLp11gA?=
 =?us-ascii?Q?1uVtqTPAuQdRSlbCqQn0SasR2HTLDiU3He2Ci/fwjv/jiAzI1EknabMMS0Sn?=
 =?us-ascii?Q?EKw0am/sddk28IxmMOxLjdocxPoaw3wUl6lXNFalA3vAxQc6VIyvETSnIgwF?=
 =?us-ascii?Q?FfFlDj/UhtDHbG0zBmHzDaDyVg/PyrNs8aoR9mJfxmTxee5Dy2QCYio7C6Xr?=
 =?us-ascii?Q?LNjzMUMaBPrvOCU9gdFhCQqEFnVKUp6C/01YDOaYu4YrjScSJF/QiVdsu9KP?=
 =?us-ascii?Q?hSpgdxulQIgcjnbji61N2IHY9KkBbtpfSb12FH05ez4j7Y6Kk/E0Bv1Gp8Ik?=
 =?us-ascii?Q?RjhZoIdddozmqnY1S/CeYKIeaGFJrAk8H1hqQAQ1eQHhoy2BGpz1vKFWIeIM?=
 =?us-ascii?Q?I86NqS44zH9owYherD4Zn8W6j+HFlV16NgP7Niifdnpdv2CRujSmGrm3BVce?=
 =?us-ascii?Q?WhEdfhywtgifVNRKPRpncRcIxNkdI7iuI/kZ4od4io/8DSAXK4ML6jVLQLb0?=
 =?us-ascii?Q?pN9SeUgC28e+zxhKx11QfsP/lQzAly5+whhnj+9jSWDA1uJ+9jSTwQAl7EFB?=
 =?us-ascii?Q?Mrb9DPiFPTsjOE2a6NQfFaAlTaiSB5IcH8Ln+bfuHAubUM43FaMeNyTbF2aJ?=
 =?us-ascii?Q?FjBivO4N9IbajbrH9nqEeIQRTnxup++972p2TWoZjeMi4ThUYHhf7d06BYST?=
 =?us-ascii?Q?S0L5qTvEkDm+lNU7nfsBCFt92ZGnTzq4F2VPBSbh1oZ01ALN75uzbdFLN7tF?=
 =?us-ascii?Q?k3TgkHa9fOjI8Zu509fljPdiOPyO/X5XshwZPXMAf5Lz3gut2M44Rc7qKCJV?=
 =?us-ascii?Q?kykoHRPU06DVJXIoi5V1eTZ5SVvoBR+ZskmsUxMZDcd0T+qXcIzUNRN59tX1?=
 =?us-ascii?Q?FNjLX/RgHItyAj53vgwqQo1PkJHeLfGY7xCOMLgJ55KLLoDLo0eqL3cUGUqp?=
 =?us-ascii?Q?1bQT36VonXLrc1SHgKITXkEl3TNwBv/y0FWcjCtlex+BxPfqkADKcrG56dzG?=
 =?us-ascii?Q?Q8mzU0r0P9lXxgIvl3GwSaWUlqw5yz9Qqmb9rowV4g41xvO+pJZbSumlXx1d?=
 =?us-ascii?Q?7DnjKCKDoyHgBBn8dBsCYvAqh+Z7gsIjB8XTJ4yO2TGDyrEqoYrZqOAJ48e+?=
 =?us-ascii?Q?ANiHaZ/5ZXZVu4rXPcQKPHRZ3AsJ/y1GurOy3irq9rx515PvIrfQzXCWYFlK?=
 =?us-ascii?Q?7Q=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 0dd98350-110d-4bc5-7f7c-08da76cea3d9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 10:38:31.1564
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 VhLwgU8oWTklADRac1vrJSZJssPR0WmlJo/SUbPNZ/PX5ODk+rE04XBktGjiom5RJv4b2AB0pgVLKxYIyAuHrBHyOVtF3NEfE2Xj9cPrka8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4435
X-Proofpoint-GUID: p9hAovTndzrDbXzGQyehwvaDbOdW5dWp
X-Proofpoint-ORIG-GUID: p9hAovTndzrDbXzGQyehwvaDbOdW5dWp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-05_03,2022-08-05_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 suspectscore=0 mlxscore=0 bulkscore=0 adultscore=0 mlxlogscore=766
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2206140000 definitions=main-2208050052
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Aug 2022 10:38:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57784

The runcmd() would print an "ERROR" when failed which caused confusions since
the failed is expected on old branches, so subprocess.getstatusoutput to fix
the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index efd18e4..6d73c9f 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -243,16 +243,18 @@ def is_commit_ancestor(repodir, commit, logger):
         # check if commit is a sha1 hash
         if re.match('[0-9a-f]{40}', commit):
             # check if the commit is an ancestor
-            contained = runcmd(['git', 'merge-base', '--is-ancestor', '%s' % commit, 'HEAD'], repodir, logger=logger)
-            return True
-        else:
-            raise Exception('is_commit_ancestor: "commit" must be a SHA1 hash')
-    except subprocess.CalledProcessError as e:
-            if e.returncode == 1:
-                # commit is not an ancestor
+            cmd = "GIT_DIR=%s/.git git merge-base --is-ancestor %s HEAD" % (repodir, commit)
+            logger.debug('Running "%s"' % cmd)
+            ret, output = subprocess.getstatusoutput(cmd)
+            if ret == 0:
+                return True
+            elif ret == 1:
+                logger.debug('output: %s' % output)
                 return False
             else:
-                raise e
+                raise Exception('Failed to run command: %s: ret: %s, output: %s' % (cmd, ret, output))
+        else:
+            raise Exception('is_commit_ancestor: "commit" must be a SHA1 hash')
     except Exception as esc:
         logger.warn(esc)
 
-- 
2.37.0


