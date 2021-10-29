Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CF4C433FE
	for <webhook@archiver.kernel.org>; Fri, 29 Oct 2021 13:23:09 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.5278.1635513784522530043
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Oct 2021 06:23:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=o/9bPpvV;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=693691a099=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19TCTWnX007588
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 13:23:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=nLJGKDuXIqRP2MuKKTUA9W1IFAqZ7EGPBO0pNtgyGBQ=;
 b=o/9bPpvVE38yc/RmzMcDS5MDA+qBhn8fQw7ApSvOc2ljHb2FjIM/SvbdTifRkXzlv7Ko
 fn0jXOPav2sZ7aUjtHjvxn5bin61ac5CUtltAVGvx7Z+MOnPj1GBlXcAHG/HPSl5bFcS
 H9mVOMEZxyUR7Lgn9XU1yTTwHP98t7fO09+OUfEyk+h+HE9naUTn6jaaTm+zhAe0CJ4/
 U+aEieYfDzJyxnXCbqCuJHDx52WgmSRws8NNDuQm76HKNqFFAj/NLNj7A4U/g48moeHy
 93dzAd/YtiVjtNet2u8kiblhS16ulLjn1yqXvFBgh7an0wo73ZidOYyiOTu8GhLXA9F8 BA==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
	by mx0a-0064b401.pphosted.com with ESMTP id 3c0gxxg191-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 13:23:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVRpYNYkN4KYzBUIN/97WCkqNyUTovG0cC+v9Jjl4WC4GkD3HW32+SomRt49jDVLDQFH1mmnEbEwgKqcM/x8Zjk/Tjx6WvuuA36NConqBORybetd4YSl254ApssMvWZTAwuzniyCy0cFn0DtBpXxMG2H3ohdJoj44DwOEzJAOAhw6GGAThAkg05GMOYAVEkikpAK33E8kkZXVjmGDEG7MRRrtwcsSqeWQF9ABTWdSmKEmN504YbqsJURwdWb1+es8Q6hxJB5x1zmJFsMINorKne7DZdSyNHVSA9R49kIBim/U3WtpzPYrqlufkAgb0UK1NBa6hbAwzja03m/ibjXeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nLJGKDuXIqRP2MuKKTUA9W1IFAqZ7EGPBO0pNtgyGBQ=;
 b=hT40bM8gZNOC8KD7Nv3HgsWODlsoirSVLcc5qa2Aaa6v7bCWw4m3s/qar0/eq3wvPATl5raa21PFHX7+S5c9TslEtjnOHszNF0iWKjhzfMX98idhOll9JzyoIHjF1xoaZW74X2Rx/cN2OjOAP5BKjAaEgaX3xRWT468hXzodrgQ+IoHQnsmT8dC4ODPYqPloo9Nj9sxBsiMGlbtoNVNlUTubLy+wnlxAPjmuEptn/8klxBVxidXNTvTZJ5BdAIUMon5KSgt2QFse7tIz9abUw5XT5xDnIaKd7XHY3tlTm33O+UbqM1/KjW96WEwWMZBTZ6cCIJN6jdE5+pEPfrFmxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB3912.namprd11.prod.outlook.com (2603:10b6:a03:190::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 13:22:59 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 13:22:59 +0000
From: Trevor Gamblin <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] builders.py: Add canStartBuild disk space
 check
Date: Fri, 29 Oct 2021 09:22:47 -0400
Message-Id: <20211029132247.205325-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL0PR01CA0030.prod.exchangelabs.com (2603:10b6:208:71::43)
 To BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::60cb) by
 BL0PR01CA0030.prod.exchangelabs.com (2603:10b6:208:71::43) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Fri, 29 Oct 2021 13:22:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7ae87003-0025-4eb1-3b66-08d99adf3a2f
X-MS-TrafficTypeDiagnostic: BY5PR11MB3912:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB391230B927C0A5B535CD51009F879@BY5PR11MB3912.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8ySKaGIe11aEPuOSbfDX/M/jOsEwlk44EknAuPvDmntYjxC6fIydQKE2oUXsZqoBPDtUGqMCsBhuv/Cmkc+OBg/XeUjUdBVnMfCnm/dSV6dv0aK4PGYqv92glGUzVr2L5o1MjBMSgmpwTL019cwCdD+N2AIHfwtCrvHQeASiXht6wx+eW8yoSOWoWqOV0kFSLQC0OFl1u8Fr4RpcO3ZHLkJCFuRj12X6ui9VDvMAw8arvR88lcqwV6SwfQUuPSWUo9Cb84qzh/6Vl0oMZeSmu35VxZUN2EgofgVctOix+1Z3qL/HH5r4jgD0t9rD0itLTjKQj8r2B1QFUKgTpP+VkOoiJYGha0HqTA3DTNy6zoIPN65NG2QhbywzLMRflo0sD1eG8bMm1BP1PBF0Wux9MnLyPcbWIBK7Z8i8/j6e54vLtmPwPs/0sNZmdjK2/ehnwR4hHw8/fsNgUHCM8Ez3+tQCa0TT1XrF29cnMBAz3mvmWGLhV3bSN6YS12sdzbpWYuRK3hBGyzlhqpN2EfC/s4g+iOtHEfzXP9OwMsGxOPGHlHfrlAkrGvceMx9hO8bCpwABadsodoTnezw30I25BthSKb7KeIMBhWg0EnoFWK3+7Ay/Fs9hyyJ3ZP2qLRDxcCZHePwppUjLslwfU4iFkWaboZf4f1Om/nTV1ednkAnS821/t/hhTK3TtSJ6QWn6hHSAeeFESXXa13c/AIkmS6WiqbuG+WiVWYM3qAddR2Q=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66574015)(8936002)(2906002)(6916009)(5660300002)(186003)(6506007)(8676002)(38100700002)(316002)(44832011)(83380400001)(36756003)(66946007)(66556008)(6666004)(6486002)(52116002)(66476007)(6512007)(86362001)(508600001)(1076003)(966005)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?7JC6jhEqx+drS6UfHaiVBT9OuKLuY4bwPhT4OTtbsNdeZ9N0hRtx+TLjGGue?=
 =?us-ascii?Q?YzQ/CcbcynkFeOB2owjaYu1/qJWk+ez1UutUsPMsueJkI75PuTkEXdbNjeJs?=
 =?us-ascii?Q?9YcrZgAisiyc5Phy0og2dbGMURG3sFCgNT5itGx3vtrPxG88f+FkqIOUn7ir?=
 =?us-ascii?Q?wejBxwPTeGGlx7zKL5gVJBmyENERiYWsya/Q4mm6pGiA3e2g55yeU6AgfuPc?=
 =?us-ascii?Q?z17kkMRR4sS7NI/hK5DrVcMuX9h48rkA9qnGo7bxBAmQft3jw/qblN4CruQl?=
 =?us-ascii?Q?XNiKbm2uYjS9nDMvjxMHdyGKketKhAVCASGF4k7FMqBGM0h6h0JIqIuQ3Rgf?=
 =?us-ascii?Q?vh+3mhWQAL2/fxgmUOtUpHw7h5Jb7N5isAGYQ2K09IhBnokC20E5X+WMn2AB?=
 =?us-ascii?Q?zzcuUhuHZ5NeQuQmm52aSBl/Brt5DB3sp9/3c8z2eoN58yg7mhwCfdRODjfl?=
 =?us-ascii?Q?IjmyEu7hFds4reICYZWlyIj9QNh1AD/UlhKpZL5lqkVPDN7Iv0/fInI+RCov?=
 =?us-ascii?Q?rjDmMQ/V9dxdJdYg15Mgb0GJtHS9JGxfjEMlyOlA0V608rhLcCHO2TLmzwS9?=
 =?us-ascii?Q?5T8dr/cm1i25vXhayrYZsFoezmDRhIRP9brwSENeJiBp14TiwImsNwCzwg6Q?=
 =?us-ascii?Q?ZiV7n7Yev7xQJj10AveOKWNle+p54DrHlnVXObWS/eySwQ7oniNMuUGyfON6?=
 =?us-ascii?Q?hdNoMgn42US6h8FRRgdIqhHdCcQJQ3aDwYUPGxjBs2v+GM4Nm7Hglgsr1u98?=
 =?us-ascii?Q?JORGFAXk2ekKaSORit5UMwqUxSBQIr4RrVck3jcLXPmmLwPg6ecq6Zg1BzCG?=
 =?us-ascii?Q?1ElsV9TH7vmuaVWSNlT7yG5DQauiKi1PSwKxUd6sG+J4lQtfsbLcfCZucZ9u?=
 =?us-ascii?Q?woy39wWFViBzEC/5iM/2sDcG6s3CfX+i+wQrFatCa/MqUJGq31q175AWgyTw?=
 =?us-ascii?Q?hmv69nooMJg0j2XFVW3gUO93GcB5hw/PztUJkfT07g0HOBGLsof2fvpUgdId?=
 =?us-ascii?Q?2DORzdRhIV6dWGu5/B6fS5hulodLzaoqrDR5xZZpzsrki5zauIBmMJaj4Cpm?=
 =?us-ascii?Q?6evNUtsJKXAMuDvsAVjvcF021SXwy4vCA0we1UvBpvgzU1am27gikXKTvVJW?=
 =?us-ascii?Q?Ee2gmSHHkB/UZ0pYBA+43tJXf2UmTpNjnUsRGwsGhYXXqfJ49Wpr67yz1yH9?=
 =?us-ascii?Q?W5OvRHhFgleGPj+AquyHzR5h6ues3rQgVv9lfFrOrNbHsWTnJV/KnlHDh82h?=
 =?us-ascii?Q?dRF6kAZwKy7pHibWMpCXFgDyyGasvbhPbEGgm2ttMmlCTo7LjofaXfd6I4gd?=
 =?us-ascii?Q?14gbnFWyxyXTwZKuVQusepKWtrJC88eGYLtm81IyvFsiDhX9957mr2BzCf7d?=
 =?us-ascii?Q?noRvjUkhjauzRjU4qtKtBo6pYREqlRgUKjd2ceSeHGcUq9eI9QK+kswELsmB?=
 =?us-ascii?Q?ZL375IDKF4aGrn7w7hpmOF+sTFcxXMErVMLm3w73wqnbQz7HrMcO+BDQDLRc?=
 =?us-ascii?Q?/eM/paYVMG03iWsNbrVp4fYm4OEtRjm5o1A0ClVJGVSTz/XFy8V/aq9SHmRr?=
 =?us-ascii?Q?UtCM1wbtEyAdZ90ZPkGh+jOK6aPlJLd+y1+CXNkY7W4HjRpudY7AUpuTihpO?=
 =?us-ascii?Q?t/378AiSctPQB36Zf23tn9TkWSKv6PwS9t3jt6pH+AH1GA4MmnBezJJ1AOnC?=
 =?us-ascii?Q?3dk2ZJAiYVHMfhb8kPd6sneQroKHQYrgUpDyJcPNwLcL9WJM?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7ae87003-0025-4eb1-3b66-08d99adf3a2f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 13:22:59.5673
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Y5h713AUqB+48l9ByCfB0c1/U4MDlhdjazBzauIq2N+RsaD03piBNTgSeRpjQ7kSz8hFtKUxzwVSvtZKjK/CQmTJpl+I15h0it5QSfdeABY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3912
X-Proofpoint-ORIG-GUID: HZVUM6LKFoqESFL_xitG2RJ8knHTsav9
X-Proofpoint-GUID: HZVUM6LKFoqESFL_xitG2RJ8knHTsav9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-29_03,2021-10-29_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 bulkscore=0 adultscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 spamscore=0 clxscore=1031 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110290079
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 13:23:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55184

We need a way to limit the builds for when a given worker has less than
a certain amount of disk space available. This implements a
canStartBuild method based on the example in the Buildbot docs and
blocks a build if the worker has less than 60GB of disk space available.
Unlike the example code, we want the stdout of the command so that we
can calculate the amount of disk space, rather than just relying on the
remote command's return code.

Docs: https://docs.buildbot.net/latest/manual/customization.html#canstartbuild-functions

[YOCTO #14591]

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 builders.py | 44 ++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/builders.py b/builders.py
index 5773950..0d1facc 100644
--- a/builders.py
+++ b/builders.py
@@ -8,6 +8,7 @@ from yoctoabb import config
 from yoctoabb.steps.writelayerinfo import WriteLayerInfo
 from yoctoabb.steps.runconfig import get_publish_dest, get_publish_resultdir, get_publish_name, RunConfigCheckSteps, TargetPresent
 from buildbot.process.results import Results, SUCCESS, FAILURE, CANCELLED, WARNINGS, SKIPPED, EXCEPTION, RETRY
+from buildbot.process.remotecommand import RemoteCommand
 
 from twisted.python import log
 from twisted.internet import defer
@@ -45,6 +46,41 @@ def ensure_props_set(props):
         "publish_destination": props.getProperty("publish_destination", "")
     }
 
+@defer.inlineCallbacks
+def shell(command, worker, builder):
+    args = {
+        'command': command,
+        'workdir': worker.worker_basedir,
+        'logEnviron': False,
+        'want_stdout': True,
+        'want_stderr': False,
+    }
+
+    cmd = RemoteCommand('shell', args, collectStdout=True, stdioLogName="stdio")
+    cmd.worker = worker
+    yield cmd.run(None, worker.conn, builder.name)
+    return cmd
+
+@defer.inlineCallbacks
+def canStartBuild(builder, wfb, request):
+    log.msg("Checking available disk space...")
+
+    cmd = yield shell("df -BG | grep $(findmnt -T . | awk '{print $2}' | sed -n 2p) | awk '{print $4}' | sed 's/[^0-9]*//g'", wfb.worker, builder)
+    threshold = 60 # GB of space
+    if int(cmd.stdout) < threshold:
+        log.msg("Detected {0} GB of space available, less than threshold of {1} GB. Can't start build".format(cmd.stdout, threshold))
+        wfb.worker.putInQuarantine()
+        return False
+    else:
+        log.msg("Detected {0} GB of space available, more than threshold of {1} GB. OK to build".format(cmd.stdout, threshold))
+
+    wfb.worker.quarantine_timeout = 120
+    wfb.worker.putInQuarantine()
+
+    wfb.worker.resetQuarantine()
+
+    return True
+
 def create_builder_factory():
     f = util.BuildFactory()
 
@@ -136,7 +172,7 @@ for builder in config.subbuilders:
     if not workers:
         workers = config.builder_to_workers['default']
     builders.append(util.BuilderConfig(name=builder,
-                                       workernames=workers, nextWorker=nextWorker, nextBuild=nextBuild,
+                                       workernames=workers, canStartBuild=canStartBuild, nextWorker=nextWorker, nextBuild=nextBuild,
                                        factory=f, env=extra_env))
 
 # Prioritize assigning builders to available workers based on the length
@@ -300,8 +336,8 @@ def create_parent_builder_factory(buildername, waitname):
 
     return factory
 
-builders.append(util.BuilderConfig(name="a-quick", workernames=config.workers, factory=create_parent_builder_factory("a-quick", "wait-quick"), nextWorker=nextWorker, nextBuild=nextBuild, env=extra_env))
-builders.append(util.BuilderConfig(name="a-full", workernames=config.workers, factory=create_parent_builder_factory("a-full", "wait-full"), nextWorker=nextWorker, nextBuild=nextBuild, env=extra_env))
+builders.append(util.BuilderConfig(name="a-quick", workernames=config.workers, factory=create_parent_builder_factory("a-quick", "wait-quick"), canStartBuild=canStartBuild, nextWorker=nextWorker, nextBuild=nextBuild, env=extra_env))
+builders.append(util.BuilderConfig(name="a-full", workernames=config.workers, factory=create_parent_builder_factory("a-full", "wait-full"), canStartBuild=canStartBuild,nextWorker=nextWorker, nextBuild=nextBuild, env=extra_env))
 
 def create_doc_builder_factory():
     f = util.BuildFactory()
@@ -345,4 +381,4 @@ def create_doc_builder_factory():
 
 # Only run one docs build at a time
 docs_lock = util.MasterLock("docs_lock")
-builders.append(util.BuilderConfig(name="docs", workernames=config.workers, factory=create_doc_builder_factory(), nextWorker=nextWorker, nextBuild=nextBuild, env=extra_env, locks=[docs_lock.access('exclusive')]))
+builders.append(util.BuilderConfig(name="docs", workernames=config.workers, factory=create_doc_builder_factory(), canStartBuild=canStartBuild, nextWorker=nextWorker, nextBuild=nextBuild, env=extra_env, locks=[docs_lock.access('exclusive')]))
-- 
2.31.1


