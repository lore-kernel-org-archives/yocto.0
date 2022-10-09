Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B95EC4332F
	for <webhook@archiver.kernel.org>; Sun,  9 Oct 2022 09:38:53 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.1019.1665308329618315606
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Oct 2022 02:38:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=FG+Db3G9;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=728112dbd4=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.5) with ESMTP id
 2999cF08008466
	for <yocto@lists.yoctoproject.org>; Sun, 9 Oct 2022 02:38:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=MrecbB0EHtx6y5EeTQQS2UmkVbpgpKH93z0gnyYjRYI=;
 b=FG+Db3G9LFNMvHd9z9f2Jy4GlXCih3hzmLj8BTzCUJ23V68wywCc48H81v970FTYJlti
 HSU6e4xyJD1yCg2IoWAP/eqiL7E+VqYelskBtwqtahMmSppCDdZEu9Z0ucwAHd/CMrpb
 NSsTcKf9LUZZO6ORhJ34EsJ0tsleA3TVmrQdCkmO8QYQQJ/XL5UP2Gqk2b+0oQMA3wsW
 0rOA7fCrJgIrfAdv4WkL6bR3TBYLJetIHacTpcIz5PTe+ShAiqcDFT3cFCX1gO1Lrgd2
 fTkbfL2g8jK7FK76XrIMgvfTOO4uA15RWF9OvZQRQx9HLS2ZPKdPcs9dn4G9o2b3QDZ3 YA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3k38qj8heq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 09 Oct 2022 02:38:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dz8qWgwFM6mBWIzNYF7/vukMqwHpluKG5fxR6TE2KWX5YCZTGxoYXZCd0+BOiZwOsXi2f69b52OFQ2Y/N6CR+A6NFuYOtzjjL2NueLUnQCNsG80tWYTc1KeFTa6CNJUUZ1AHL1AFZ9z2duwI9yimiOQmHv6GU/TYuAT6GGXnEPPLpzsRGPu4Tg7Po8TY7AF2twYTDCn2WgXxhkogi/Q4/p4VT0+iTeVdY2T4uVilOpOXBI0oXyq1VLyEePdsP16RSMqLhhYD/eMIkrLMY23E0Drd2yqOMmvOG1dAXXQZwwLP3DWdrh9UD7qvft5neRoJtiYdrgI7kfRrYDc95ItPFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MrecbB0EHtx6y5EeTQQS2UmkVbpgpKH93z0gnyYjRYI=;
 b=mWc94i8tDjiRbunuFh+00Il+eD5LT7heqCpVkYtC31cvmaApNk2KapiycIL3XbC8OlAxU5U/Rm6g1BqRAjLMw3Q5Vs+xHLYnI0ntQTMdVSD0gI8tnnUmQwOIA8FswvVuD7fv/AWCdT/xkY78BMeAijzwMM66S5Yx66wgaJM+F8IwsoaTw1HdjKLyqbFowdB5YLLkTMJNE8MsDW4XfeehkTqVKMc+uuvHc7V9I2XBQPwQwWtvwNOheis7tkvv1h17NQ8KaGVmqI/9YFwEKKZLWIgqoYtflMIVrvNpO8rUSDjPRbcrlIZ0d5VTrdB21IMBTX0YRel2KvPtfJWavqucKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Sun, 9 Oct
 2022 09:38:47 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::4018:c3c5:27bd:7ed2]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::4018:c3c5:27bd:7ed2%3]) with mapi id 15.20.5676.038; Sun, 9 Oct 2022
 09:38:47 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 1/2] utils.py: Fix for is_commit_ancestor()
Date: Sun,  9 Oct 2022 02:38:35 -0700
Message-Id: <20221009093836.90911-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR04CA0009.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::19) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|MW4PR11MB6740:EE_
X-MS-Office365-Filtering-Correlation-Id: c58e791e-b5c9-47f5-78a1-08daa9da1074
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JC30OBBtCvzDsXPY26z/aMTcy7CK1Uf9kOgzJpVC6h7aB+XVcnc9AOocwR5Mvvar4GtOhjh93m1UlT842EcfSOAyTcXfxNLyJ3+xO77HsJvvjj9xDXZsjDIak9+13z8OfFp416A58w6XlPD39nif/EWAls5MsLbbOeRWFmJvU3lgvkDL4T5rFUO/i6Yt/41vVi0npchygesLWS7G1cqUEE8hEyknRdliteGQ4OhqZbeQCj1AsGqY284kt/WIDN/4hW/YsJUNoWaaInX/6fD6vTccUJRNlxnCnUPZxYRdtmxvgj/BSOv1LXylbrq2olIAuZ/IXkS2nyJjuRu2TfOEam3LOhkT3sKKfC5AZJVn7nakjlwzIc7qdrnvq9krPpyLm7n+p2o/7ogMZQQrU7kNYIamheX4z1nkUSAtJpi8FkCLEWXADF9Abtuf1wPoQyeVVuFdWZFWaKlIchM/a3JrgF2Hl04lqy8e0+rCKatQqW0rzwWp2KMxoSzlrE8P4V56wdLoTjhzJvW1jHw/McHp5GK/Szm9qw4GhTp2ij37TdyyCZ8K+hcE1Hz75GjE/CYa7I4dL7Q3QeX7PuiIQARb0MFuQusYWDQjYTxaGARZSUWBPM7mTAAVpKjz8WyJEZXQAdcQSFee6bbwPFwrFCIvKMCK3jh73nWafwcv5CAQQmRx1udixoonywUyRDkPxpzcPjW5Tq0Z+4zFMMcvDpCSjd7rjN2E+GKSSQaXQugmpSBbdbKTSYNDYr5K2y0QGt6ZjS6llG5kuBBNI9/ytk4oJw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(366004)(396003)(346002)(136003)(376002)(451199015)(2906002)(41300700001)(66556008)(66476007)(8676002)(5660300002)(8936002)(86362001)(38100700002)(66946007)(38350700002)(6512007)(36756003)(26005)(6506007)(186003)(52116002)(1076003)(6486002)(6666004)(478600001)(6916009)(2616005)(316002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ovbOZJWeM2iyUNigNVkeqqvy4Hbt6MTZacilhT2amD5Hpm5b31YXeyt6u2mC?=
 =?us-ascii?Q?6YY6dR0RWVow+7UOe5qFIxFSN2ghAD5zl4KkfPUeJfpqizIjhO4xctUdA8p4?=
 =?us-ascii?Q?Th8oHqU1V+Wty21eBjSmL8Pjju1uiwNp0od4cyEx8RcPOqrksl3UfJNcUU7m?=
 =?us-ascii?Q?dDOpQgYbm/oBZoupwmQdhPRFKGr5KrTNn+b4yjXWCuDFxhlB8sNGWGjznnvU?=
 =?us-ascii?Q?PBfTnO51h3yq7tEhOiRcbXtLQKISBPtW5jUTo3ATvfvPjo8zNgRKR9Z6Oqq2?=
 =?us-ascii?Q?piUXGnkhwWcdc/3fdP3lKxjmRrFmwofUuvAYpFJfpXhGkkbyDJgnGa69Gf4d?=
 =?us-ascii?Q?u25lGIpsPpzxKBj+3zo9uHERR6/reITXjKStkQ6GjzPTQaX59+6TtZNBVxGW?=
 =?us-ascii?Q?MHZwldlyBWAlLoXfwGu6rtMB6eTeJKTazS4FpCBZOT0j8WjeJ9lmocGdblmL?=
 =?us-ascii?Q?pn6xnOl6Ae78Izt5X7bUmdTPnBMys18aagwZf/8Pu/1YJH+gOKsSzx7Pct/o?=
 =?us-ascii?Q?y9yx7uiojAYskeFs96iZQ1RudjE9FeFsgQnEZblk42q/xrRlnRy5PrTDRAno?=
 =?us-ascii?Q?3GPqGpUZWFykatBAv+36E6atWFQbL8wCKKGvWbPFsc2WxIX399sPQ47NwDt4?=
 =?us-ascii?Q?J6UIuWDHSuYE1T7tqPH2mEvm5yjunwGqV263a/v9f4tys+aFf2jhIj5+ZoYS?=
 =?us-ascii?Q?AX8/u3oAgWJZMtMfGBW4rjA7tjDpckuLYmSHCf2p1SEMbAt6GqU0vCUcBh7z?=
 =?us-ascii?Q?ltBvuNQQswRqWcGlnpTq9+AdkMWeAMsQppHHMS2a6aqF5HG/tfGGVcaygjus?=
 =?us-ascii?Q?+VzQlDuIMD7wFRgRJQ/YN1OGu++CObFgoR5WgMkMT1rmtwZtmBbxgxv0ThRi?=
 =?us-ascii?Q?mjqKMB8mdG5+QNuV9gYQGuG9B59oHZwwVZxpOkyX6VDxhyXqRP0XEdNPmCus?=
 =?us-ascii?Q?b93wVLmCkmnkNqZo5uAlX6WXJMHVJs0NtsSOO+8/w3AVJ5wEKUw4HL0gub6t?=
 =?us-ascii?Q?sXf+TMv3AcNEf2glTKd71vg5sC2BjgVzS56YJSPVQEI45xJXP9S+SEZM42mc?=
 =?us-ascii?Q?+cJ8u58aWoip/7A6QBTA7AbRCjoJF1Gqu2sTzXdU/+v3OuTIbKZi7qV0dKay?=
 =?us-ascii?Q?wcLiKAy9FwsK3k68ryR3jQpbFYfGi3j+jhu1NpCjnuRmzRVW28mF4aRmo1o+?=
 =?us-ascii?Q?I7exNsP8Ld58twsY0Cb7lFCAE9aR++Qm3B96+9liOoIaApl01aJVlUv/pC3u?=
 =?us-ascii?Q?zE5QKqg6PNeL4cqP9neMthsJTR1SyoIB6GTWQAiMSszEOLu1xcSu3g793MOw?=
 =?us-ascii?Q?xLSGEw4lMFBJ8gHmiHv78NzqLvmqnlziafdpaAKxMoIA6vA5LsrouhyI12sz?=
 =?us-ascii?Q?3vwR4dO+y/emFaHEg6z4XdKz/qSrTzcVGY+i2ZzXDNOEEO3q7ax+dEQdCZGx?=
 =?us-ascii?Q?8xoA5JOybbkpLQRWaeUd3iUoDSroFB3N6ZJD1wdp1klnTG8eoeqZ3nGtArF1?=
 =?us-ascii?Q?HuvgiSgztrd1GqLUEipnF0VyULftHfZ5+Vm6Bze7jfP6iyAOVNmdKhydm921?=
 =?us-ascii?Q?QvfVS7F4sGWR23EDV8XP1Fss3ROvUOm1+363FvLGtnXbo51Rffxpu0+aGtRV?=
 =?us-ascii?Q?Xw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c58e791e-b5c9-47f5-78a1-08daa9da1074
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2022 09:38:47.1473
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 zdwx7r6CGVUiU0bQneVT28gk1cB5f2Qr9Ke1yLQiIYdIylBDSW7j6EKewgNhn62HdEd4UEDXIRD3Pz4218hzrePu3znxRrHyGmrGYu6RWiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
X-Proofpoint-ORIG-GUID: PBrFchCHQfgJv7ttQ_CHJmr636K7fVMY
X-Proofpoint-GUID: PBrFchCHQfgJv7ttQ_CHJmr636K7fVMY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-07_04,2022-10-07_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501
 mlxlogscore=823 bulkscore=0 impostorscore=0 mlxscore=0 adultscore=0
 clxscore=1011 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210090062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 09 Oct 2022 09:38:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58297

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
2.37.1


