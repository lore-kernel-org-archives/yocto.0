Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8539C4332F
	for <webhook@archiver.kernel.org>; Sun,  2 Oct 2022 13:54:03 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.7676.1664718841130074401
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Oct 2022 06:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=m/YimHMO;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=7274699444=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 292DmDwL012274;
	Sun, 2 Oct 2022 13:54:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=U3vTfNC7DWUH0xwzzwZMX1gDm1+EC/Vm4DGD1jUmNzM=;
 b=m/YimHMO3PmYOakU1K2Ef9l2ejuq9YsE2Bh8ua6fnxDM7jxkITGAmhtuzxSQ4Ooh6Zk/
 L90LqxkksW0LUdiheCLQTLfv2PoZlJFKXlSOVMmjLEXLivBeXCle9PQSX1aN/j0i+/o0
 k5vj/OlSWl6ZgrMX41DWhkyDnwmTzR6/KitrlPcdLVTJ+TJD8428vPWDOx7U6pNI7fyP
 J7KDbhVgX3A7VFMhaTQUoMpnCwhPNvFRchFm6mbF/XuCkm+tcnKIHIQZj4sbEunERJ4C
 5//RP6nQQzVmfbmUNwHJkhSDs/jsOpX+V1ciBGKP+E/QabFGY526LQFq3n6fQlwr/I7r EQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jxch9rypv-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 02 Oct 2022 13:54:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbRxbIHFkg+0Mi73fexedMSNY/lAkFdtM8CPa2OaqcR2SnASTC4TbpG7NLZNJFV8jrVEncj0mxzFWXeCbnKGkG3sFsk6EdsdmbSMsqHuTyqJAkVDVXNeXY3nlGYq0f4J41k2kM0LMmR3msLSWsKMRyx/adPpoF4RvOtfWriKT2/iRYhB44TJVPpn0+/psym6/Q/Lf+VvfiQV7yNBHzgZtnBHY4OeyhoNxGCXOTC89a2pc27CqUAg/Tpyy3xlwpmpZfQxLjPCLMfbYv66gIslRda9yIwkXvYnyl5ePTKN+ingd4oEAkxqe/N0EeU3W9j1kiSQ2/LgSwoo/5vBVyidJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U3vTfNC7DWUH0xwzzwZMX1gDm1+EC/Vm4DGD1jUmNzM=;
 b=I4lLEqfRiBzm5OqRN2pbDEOplZbxYtIKBAQ52XDntc3bj70DcCSMf7Dvc3USdLWnb3W9EmuBYUD0BNQWCuYLeG0xZzpyX2+AgZOuNt0SdpATNrgaF/ZtfUyFK9jurMIOOTmQvydXOcnyRKCPU3LAMqwJemYH63q5tmfG75cfw1m0CMIPK4sBCqXTBEJVRKk29nNsaN+7jt4W3BYr/OxkBQ0ZrLOS8o8IKKdNfrtknCTbSO5qQ2HPBZaoeB8ibHnMoa8TVrjNNvs+LAHOkxdADCmA3aCIUljX54ed7ylFT+MvXI1ULHldOWllFhmmPGK1DH68GDdU7NoXSFOyutO2lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Sun, 2 Oct
 2022 13:53:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8957:e965:a52:2366]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8957:e965:a52:2366%3]) with mapi id 15.20.5676.028; Sun, 2 Oct 2022
 13:53:57 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 2/2] resource-agents: set correct path of rm command
 in ldirectord.service
Date: Sun,  2 Oct 2022 21:53:43 +0800
Message-Id: <20221002135343.3039016-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221002135343.3039016-1-yi.zhao@windriver.com>
References: <20221002135343.3039016-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0012.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::24)
 To CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH7PR11MB6676:EE_
X-MS-Office365-Filtering-Correlation-Id: ccc4447c-1463-4a43-b195-08daa47d8d70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Q5pri/x/9yK7PX8IGInKah2Jc2D3ku+/aZ4F3G1ytQ06UYB1pwlNrW0B0Ifu5H7tRJ8i2eTCwFO2QJaWvQMcEyGLOKDw1JNJ97VHshx/ROzRDocUqEBNDZk8+/sMomT6AwUYW6CscTM9JPIj0VzpDSSiWFZ3LUMYYcre1Xqc1ck4V5Kq7mZGA/BqjkW8bPjvYrqumIiJvXee7Q3fMehSqWLm4J3R/jrZogI0GWQB5ubE3ugmrnsBwq1GAUzPbnU/21EbfF8E+S15OhL5NIO6oL0nauAf/r4OXb9dAq8/C4nLahqCX7RGI7LeI9Y0sROdR4Myp3NWAcvwfs/u2O/1fiCsFWmBrJsk/lZQ/fuGfH7XGQNB9fvV+RWKhKP5+JIddtYJiUmn42lbq0X2yrDQ45I/z2XxwMqapeoNXAuBE/90s8HCm+HFYhOJkttlio5Jqx2mylBYeWqAZ0eN+v22XU6B0mwBWABTo7Y50sd0V1iANqWY5aCOTGZBoVjtb8yH3TscaQDs5Oa9IYQitxvoGidn/KSnubXxt0fLjNJLEAjvziBfTyWzu43Aaw71T6+C2t9OT1IABhITV3IsIb1WgwC8t4XF8O/nyG6hMpDJ6uHCt4oFrQIfr3g0AGrVNT4XNYnNV3siZ+YnkwoomD4M12YOWR9vMZTB8EleIwahja1laZIPG0Y4XBG/vjmIwpxB44ZUX82E6p7KbSFWz7JlxSlCjtt8XlE7UZ6TIAtJUlo7+OlJIGRlQ96YoMbP2R8TwTKL6udmHO8zQjY0hEZbjw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39840400004)(396003)(376002)(346002)(366004)(136003)(451199015)(86362001)(478600001)(6486002)(316002)(8936002)(26005)(41300700001)(6666004)(66556008)(66476007)(36756003)(66946007)(8676002)(6512007)(2616005)(186003)(1076003)(6506007)(2906002)(5660300002)(83380400001)(44832011)(38350700002)(52116002)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?R5pPSOYkERLPbh42jJUA4TTXvNt/aIoOMva45ulKZqSaXAMsEJrq9oCVCVoP?=
 =?us-ascii?Q?I7eREPpv6M29NUdamEu/YVM1lqDElsuy0Ne0y5FA5p1VOmVSRBeQ7m0pZDgY?=
 =?us-ascii?Q?26MAhxcxDDQ6ovbU9sIpQEmqGMc0Wf4rm4vawNWE6WmzJOvqAw1Klpz3L7fr?=
 =?us-ascii?Q?oFH8AX7B6kxNRcnTKvuJMPdTKYqWGHwAFOHfIl72+WqsSQ5MWjDMVLfp/aSO?=
 =?us-ascii?Q?YlIFRpgNBu3LZQyE7nCVT6VEXQNBk/aapjkj1pQHYDamSswb4XyWzbyyAW9R?=
 =?us-ascii?Q?yi6UII8wmeZ7utkUpMguO2B/4FW8aD21Q1WWM72UmCKwVVm7XF/cn61JvH5X?=
 =?us-ascii?Q?WwaROl72Ivc46M4sY1NrbFLsoo6r2eCI2dE27MJS47tELstjtcBClT4uFyNv?=
 =?us-ascii?Q?o/D9ukQQZqF9YTW6GrpXsVNoP25B0wnRQ9rE+BrjEjL3ZfXw/15eFUg+arRM?=
 =?us-ascii?Q?ispgfNPtAW91iuElo7Doxf3scURSoKOWzSKeggzgtrToZXQ6RSPDQMKnovfq?=
 =?us-ascii?Q?bP+TCJGeOBthjiCEzSeGq+9kbaiV1l4nqIdadVOS2k2Q3KUVGnasueCzPCfg?=
 =?us-ascii?Q?E1BK1lhtbNJ62/TJl6pM1/aT6zj/QZqW8cqq7TVP0P5abeu+C4RRFo4hAYkE?=
 =?us-ascii?Q?ikP9hNQbVORXSbZGK9cX6mYp2XepIOJozpknG9Sz4JhkhxKahN8N4P1OOOBA?=
 =?us-ascii?Q?y7qEpVQD1hAy4ZwiN+oQ8uYgCwUUqhM7Bqs1xSNOC3Y2sEyTpynT45AMPXHt?=
 =?us-ascii?Q?xYl7aVnj0zmh4RTAGQvrwSOKc39lYaTH50vshZuVf7cFLlhku2GoCT7eSy0z?=
 =?us-ascii?Q?oSj+XlMbSfrn6bvm+yVoGZg9WFwBuUvH/+2YgTzJg/OY4BXj1iWEd6rpfMiR?=
 =?us-ascii?Q?0V/p8+1GZ/SNXo11FFRPJXhk4RJYnGSW/V8UUvoL8QmeUxmgf/wOYL+X5854?=
 =?us-ascii?Q?I47MlGdP7crLX2MEY0sDJ5u5kmmyYOwtzF4yb2ma5Fxyd8lcCWkYImeI3ge0?=
 =?us-ascii?Q?Dv6fkUvdoDOG8wOg9oWhlCtZv/9XXkR22IWyHQPYfNlaaRJqBthF95xXyu4o?=
 =?us-ascii?Q?TtkdzRjQDhQe3dXIGfXafV6QemmL4tFY2XsT1xUhKu8yqZvwp7bsYUKOZE82?=
 =?us-ascii?Q?ONuYsCl1ExmCeb5aNV3W+wwmdde4WoOoCVXj/uwyOC0NjxhmVL2eVS5y58HH?=
 =?us-ascii?Q?fN58ILPZlnTdFKBI49MHWzVn5qIRpQ4ObKfjxd1BcjuuBCt8MpQRXoHRqmkJ?=
 =?us-ascii?Q?6nYIfgf1KXLEFx0MaS4rLJTA7dGPd9vR5XtuQ6YVrbMQvh+RFjqIUNnFuv1h?=
 =?us-ascii?Q?wMCyVwzshbww+4KbjljpPO63w49DuIHgQ4N7HVcjwHJBBVkaSKJVdFBEGz5U?=
 =?us-ascii?Q?j15GVR8OoKJHcOm4kZHwrVR8xZAXYYgpOUUjyZ+Hr1VaHM7qhihF8tCjPB3w?=
 =?us-ascii?Q?fhwFYskpm6dzhqwJwCizsA83jcPUIe1olEEwmOsiNRqIb4EEu0m76hmCkdkP?=
 =?us-ascii?Q?+pnIOjciARpGbxB0HTIhSn2dorBaPo9D3oEcKuSCAX4bKvJb24Nz/aNwPGfa?=
 =?us-ascii?Q?gwqhPZIL+LKU9M4iGE4ePEmLHfgRIdd1j+fnI1dg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ccc4447c-1463-4a43-b195-08daa47d8d70
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2022 13:53:57.8905
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 dVWeCJOQwixB3sqHom3VMsdTvtcZ3OQnDyaq+W9aeP+AuA29pb2XkKyT4kqE1Ws+guyKp820Y3v46BHkcOGuuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
X-Proofpoint-GUID: dVxoyuqovu-1rFLTaHxED1olna4xmAqH
X-Proofpoint-ORIG-GUID: dVxoyuqovu-1rFLTaHxED1olna4xmAqH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-01_15,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 mlxlogscore=999 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210020091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Oct 2022 13:54:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58248

Fix buildpaths warning:
WARNING: resource-agents-4.5.0-r0 do_package_qa: QA Issue: File
/lib/systemd/system/ldirectord.service in package ldirectord contains
reference to TMPDIR [buildpaths]

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ce.in-set-correct-path-of-rm-command.patch | 28 +++++++++++++++++++
 .../resource-agents_4.5.0.bb                  |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-set-correct-path-of-rm-command.patch

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-set-correct-path-of-rm-command.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-set-correct-path-of-rm-command.patch
new file mode 100644
index 0000000..d53faea
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/0001-ldirectord.service.in-set-correct-path-of-rm-command.patch
@@ -0,0 +1,28 @@
+From d34c5d8611d084db9cb7169e3628f3f752618cc7 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Sun, 2 Oct 2022 21:08:34 +0800
+Subject: [PATCH] ldirectord.service.in: set correct path of rm command
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ ldirectord/systemd/ldirectord.service.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/ldirectord/systemd/ldirectord.service.in b/ldirectord/systemd/ldirectord.service.in
+index 7965b79fb..bb476cf5d 100644
+--- a/ldirectord/systemd/ldirectord.service.in
++++ b/ldirectord/systemd/ldirectord.service.in
+@@ -6,7 +6,7 @@ Documentation=man:ldirectord(8)
+ ExecStart=@sbindir@/ldirectord start
+ ExecStartPost=/usr/bin/touch /var/lock/subsys/ldirectord
+ ExecStop=@sbindir@/ldirectord stop
+-ExecStopPost=@RM@ -f /var/lock/subsys/ldirectord
++ExecStopPost=/bin/rm -f /var/lock/subsys/ldirectord
+ ExecReload=@sbindir@/ldirectord reload
+ PIDFile=/run/ldirectord.ldirectord.pid
+ Type=forking
+-- 
+2.25.1
+
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index 1da020e..764a1d2 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -20,6 +20,7 @@ SRC_URI = "git://github.com/ClusterLabs/resource-agents;branch=main;protocol=htt
            file://03-fix-header-defs-lookup.patch \
            file://fix-install-sh-not-found.patch \
            file://0001-ldirectord.service.in-use-run-instead-of-var-run.patch \
+           file://0001-ldirectord.service.in-set-correct-path-of-rm-command.patch \
           "
 
 SRCREV = "fee181320547365d7f8c88cca2b32801412b933d" 
-- 
2.25.1


