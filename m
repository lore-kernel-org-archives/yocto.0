Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A396C433F5
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 08:52:19 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.4580.1641372738189784733
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 00:52:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Xsqid/Ju;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=8004391f67=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 2058hO4R022034;
	Wed, 5 Jan 2022 08:52:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=phaZ3E5yps467noU9NJy0VHrbPW9RtQL+53fHsa51jM=;
 b=Xsqid/JuAleletqhfuaOIp6ihl7RpyzpzWxaStDFB6Bd10lXHeGb5nCZUJu1DclxEMWK
 7BM8MXNKSlpCrcD73m+AP7wvP6W18LVSbJ3/S8hhEYbMjlvsxcR6AyDH39s182uK+XMI
 +ZMjTR/+nOro3FIk5DchVw+xuQ9TsGd3rG+AX64dwY6qd3pej/2z7M3gd/MYINe2usrk
 wzUPyExAUX+ABdwqB0B70cyF2qBn24OXTCmEzInDZWDyNjebBC0LhUYj0j9nUFUjgOOR
 hLBMbw2y0w11bw4yhNY9t6oz/a07DdmeUt2mFLndBFD/ho+/nv31VaiDsDTSfiMVi3Yr KQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dc53094xb-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jan 2022 08:52:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GViZ4aKTKCF1Mu8fVymePhLm66db23iVR98jyGBAcE1MUbGZpQVdV0VWGEtvduk+Tl//jw/n4j/szBsK1SeE+6IfkAwuH6eNPKuxcHrDpdrFk9kWC3kOITnFDAyknoMw67S4d3MZ3yba+CGo2sz/kWbn+//Z3kePk7+MUuixP6rDQc1eoz9eeJVKuIx3A46GJ+UbaUGFJbKKY77Atz2XKIINrkKTTdOBN4KjYCzdjjlXpkete9CpEYef0tRejC3aaao8lVxdZKamPKIQoLwotOg4xK0FxaASXEkCXTQhmqqFJcJieEiUofcnhd1tN1fwcB8Z40P8G6VTtAsJwEt9zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=phaZ3E5yps467noU9NJy0VHrbPW9RtQL+53fHsa51jM=;
 b=AMbPr9uGi+WVdoLZkEJIzL09sJCyMefgdnx8m/YOnZqcyrZMNJ2VpLiuoulLwE9KB9aqtOvNzTej0CDTVMmXqOSzKAPZ+9Mz2JcKeu8a9t4zTR8Wwr4cXAHp5m4dQxrQaCApr7mAeaVaPKQUSEhNTn6yMKBrkUVdS6E2EV7HtMzWLbz+2QMyVDPyqpo4GCZo+OmUFyf3OxrbESMVGaiJR1khgWr2Y0yAZrmhGwa/FtbL8X1GvcqWGJ+HERZWs1uowZCQ31Dy8pDqLKNtisqcDhMO8ikBLlnopW4FcAbP5+Sr5clUnOzYuEF0HdJyb7JRuafI0saTh4VcBlvLEMDiLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Wed, 5 Jan
 2022 08:52:16 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4867.009; Wed, 5 Jan 2022
 08:52:16 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][RESEND][PATCH 2/4] selinux-python: add RDEPENDES on
 audit-python
Date: Wed,  5 Jan 2022 16:52:00 +0800
Message-Id: <20220105085202.69468-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220105085202.69468-1-yi.zhao@windriver.com>
References: <20220105085202.69468-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HKAPR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:203:d0::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 467cf981-710c-4d27-c626-08d9d028ac63
X-MS-TrafficTypeDiagnostic: CO1PR11MB4769:EE_
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB476985EBB3591D4523E9A0D9F94B9@CO1PR11MB4769.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:404;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gs6Ro5Wr33ETSZIOX3WQwkJLOYR+9+h48t3cp8Wi2mJC8z6jMG+bBbNJOXdzBqBQZ8A2b0DlRLrgVsJ3UG8/SePk0JgYZUNIIPYvwd33X+vyLuJePcq7hzAGGBLHk036P7UYzlyQRCjJ4HN93WS/rBG1F55Za2LI/aCGTy2PWbK5n2HwFUbdZht2EotWNF3NjwS9QzI96xfHVb9NnqEHbLfb8RNKfuHRt1kxXadZd9vsplgcWp/0MpTBFCuk4ubZust2Y27O7c7YQA67El+8bXPb+cCjuTwmVIXuJyn8rlTkMPV/36HdXpK/Dv6UTxqKCIUDyF2Dn+krBqGxbBgx/7vr2F/HXPXXLqBBM0IFa/WJ+fLSRuEKBOS0eSqk/9i//FpHLG0jxvBQW9HGGNXuA2x5svDZGaNN+EK9vhDjeRZbNQNxxigNiYYAcgG9JUmxqdu7ZXkOmlxaKJbDNNr1Y5rKROJ/V1MuDZB5bwWd44Oqi49Puc7+AvJ5leLQKxKYsImXmAX0wkDXWpJf88ciG5q3JJhUt20sU3CEHOhSszDWF8vqntnAa6UJlGYTea3kaR1Y0BU2eqUZOaYBRtPgq6MkmRkSGRJdvRK5rwQdfXugE6q+dUulE0vRwQXTv6G6bipHpYz+SOJ1qcFuzz4QaF/Lb8PsI732WFq89JO8RxyJi0o/wxCSi/kOFDbArBqr7+57RmLX6XW4gzB//m2AfA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(66556008)(66476007)(44832011)(83380400001)(316002)(38100700002)(38350700002)(6666004)(6512007)(2616005)(1076003)(6486002)(508600001)(8676002)(8936002)(52116002)(36756003)(186003)(26005)(6506007)(5660300002)(2906002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?kdROYHrLE0xv0YHvxH4pHUGHh0VwprTqnMnb4G6m6IdqtvWuQSkHMJZkaMIJ?=
 =?us-ascii?Q?3usAjVs/rablhQrYXh1rEsfFYj55TFwzDkgyUjJ0gLXC1jasqL1ruFcYrTF1?=
 =?us-ascii?Q?heJIJGZ9XXH72MAelYz/Dq0RRinwxEAOtiCy3n4/uswP5Y+oVp2VLQtT8PnC?=
 =?us-ascii?Q?uDnUh8dikwr2e5kZniS4h+D9ggkO7AvUQTbRH2i2UjAbBsy5aZdYF26srhLR?=
 =?us-ascii?Q?zZBd/Ogl/DUA4OnsEokPp/rzrg1NAFFwnMhLaisforEWMoEZE3jSDPare6p4?=
 =?us-ascii?Q?Q/gDYORaYv4o+AU+MCRoTwX346Hjl4vjknGeFzgzuaabdCXv/NiKGD840VVG?=
 =?us-ascii?Q?0OKfGJiFoy8netEQJUuBKoVoHyk6tHcEyO6zb5fwP+vEhyK+X9p6ki15zxSq?=
 =?us-ascii?Q?07QlbIRmZbf402T778cwWYZXRFald7eO/GSmlA6Fr0RDYTst1LECOktH6MzA?=
 =?us-ascii?Q?h4iRuG6tQKDAKNopIHr1IUm6wjP6ba3J3O9X7rfgmNSin3sLe2qYfxWEN3y9?=
 =?us-ascii?Q?111ef6aXRQAUn6oWe67Qhu/yx/2TuGZ5h2ztVRJyfHTv7reIpRymfp2JYk8l?=
 =?us-ascii?Q?kGxsnAM5Z5xrSDneAwnnRnecOc5JIMQO2ZSU8gH8HVOYY+zF+avlpIQQIw0O?=
 =?us-ascii?Q?7nQ2HshkTZ4RE4+dtvGUPPWRJg7WAp8MPVokZUUTpUccUEGMi2r3vV/ds51i?=
 =?us-ascii?Q?qQxdyimfuas8pQt6vEdlBveAAD5YIiFs7pUREx56tcROg9kcl17GaA9GJJq2?=
 =?us-ascii?Q?eFHxN/kpuboSZXLu3vvC8cUuLDpPr+Edf1Aazeg5zWTcAPIB0X3Sg9cq3UCu?=
 =?us-ascii?Q?eLaskLk4PwbOzxu8OuMhnFHDYALXyMVWG9wOS/jL5N9/MJ7XKUcW9ePvilea?=
 =?us-ascii?Q?YigdpmKOkje645iHU+cq3Qkyl5g+9ot4zFtfX+Qv7WTnCG7jbGExYkT7vt8U?=
 =?us-ascii?Q?FN2O60X3YieznnbugUQPXDIDbvYdW3OAm+/raFko9WMmHUA50hcTfaj/0ICw?=
 =?us-ascii?Q?Awx2/teyOWmo5b0BGfziwew6IWn6xzXAVCamLYiMCzJ0Gl4yN2M7fRFm1zl4?=
 =?us-ascii?Q?GTOKt/jSB0ipZnW2fzYRZvt1+7E3mdSCveSxQN8OOIKr7E1kacauTAORhOD6?=
 =?us-ascii?Q?AVU7v/hy2VcsuYvK9Eq/dm7OF74KxHnLLSmZxasIqOq1MxCeRRsurfx2IYJe?=
 =?us-ascii?Q?13pSsbVRiyLMa2hmykZBK0blanr77c3ZDGfVl1DCQX+3HMvfyzauzKs860F4?=
 =?us-ascii?Q?Vde6Pojk5ntaYtiEITkCUQAwKQW/b7M4i6hYwXCkI3Fh3Us8sNI0HY2sDAe/?=
 =?us-ascii?Q?R1HBJntkoSkpgC8v5yB4sXc6ont8lnR/3EHG+Jr/9Lyt7kQInCL35iv8Zw7j?=
 =?us-ascii?Q?aw9G4xC112A72vnXCZREOz3MOKaQLaN2Q6PlrvBEoe6b6+cCuiBKPdJJZ9vU?=
 =?us-ascii?Q?7jhXDlts5/V9e4QiWLuyeK98pYpr0/F7wx310iXDx95lTOHKBP9kdQZ4i+Ou?=
 =?us-ascii?Q?cEnNlBJ8tizx5Zb4EoeE3STh40cVJdtrzjzP4sg2YRConY1rSxqgDFHKyS1x?=
 =?us-ascii?Q?nbtiOG/a8eVA2wsLXgDoyIg1onkQ7M9BrO4kVlXvJ0QNkxpvT3nLySN3dgHt?=
 =?us-ascii?Q?UhMjlUAupsVQZtNHS7RQrqk=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 467cf981-710c-4d27-c626-08d9d028ac63
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2022 08:52:16.0080
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 VrTxnRL9UHaGQ00VfxK3HUydPOLvKvQ7r4ppcL1f2UrpE4DU8oQO/ehXQiuz9LdEBxSEVrQA3D//0V8YHWKYuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
X-Proofpoint-ORIG-GUID: rrmm3TSXOx2f4kuZyG08neiHtM25OO53
X-Proofpoint-GUID: rrmm3TSXOx2f4kuZyG08neiHtM25OO53
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-05_02,2022-01-04_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2201050059
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 08:52:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55735

Add RDEPENDS on audit-python for selinux-python-semanage.

Fixes:
$ semanage fcontext -a -t user_home_t "/web(/.*)?"
Traceback (most recent call last):
  File "/usr/sbin/semanage", line 975, in <module>
    do_parser()
  File "/usr/sbin/semanage", line 947, in do_parser
    args.func(args)
  File "/usr/sbin/semanage", line 329, in handleFcontext
    OBJECT.add(args.file_spec, args.type, args.ftype, args.range, args.seuser)
  File "/usr/lib/python3.9/site-packages/seobject.py", line 2485, in add
    self.__add(target, type, ftype, serange, seuser)
  File "/usr/lib/python3.9/site-packages/seobject.py", line 2481, in __add
    self.mylog.log_change("resrc=fcontext op=add %s ftype=%s tcontext=%s:%s:%s:%s"
      % (audit.audit_encode_nv_string("tglob", target, 0), ftype_to_audit[ftype],)
NameError: name 'audit' is not defined

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python_3.2.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-python_3.2.bb b/recipes-security/selinux/selinux-python_3.2.bb
index a954676..d130900 100644
--- a/recipes-security/selinux/selinux-python_3.2.bb
+++ b/recipes-security/selinux/selinux-python_3.2.bb
@@ -50,6 +50,7 @@ RDEPENDS:${BPN}-semanage += "\
         python3-xml \
         python3-misc \
         libselinux-python \
+        audit-python \
         ${BPN} \
 "
 RDEPENDS:${BPN}-sepolicy += "\
-- 
2.25.1


