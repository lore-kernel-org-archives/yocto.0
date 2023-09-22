Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 438DEE7D0BF
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 02:22:54 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.13329.1695349372719898006
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 19:22:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=cJjPSIhE;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=76297e7a8c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38M2DKLC005215;
	Fri, 22 Sep 2023 02:22:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=Zsodqib8WEN+PLJ6Ol
	nWzPApIYZBK9gB6Qvk59sddDY=; b=cJjPSIhE31gbQRev/D9vtBJdjrVjWDjWZ3
	gRvgzZ1AVMiPTZCioCnHtYMPXVEkcbkfOnUqbJwFxxaeBTHBvp4UkY1FFKcgnPt2
	vHXx9LmI2W6YoCjniczHtT6FUStYpsbDeomADH5EOFgRAV6n9neQS+k6vQUnmoIy
	RsCe1FscZjpSrBA+JkrTVG25C8n5qmHZ0i9cBzLS7xiijtUXCNB2qbpnO8+omIe2
	R9e6YFapW6KgjOirIacRVGMUJmrStp9ZVNXivEM5DCuHcpP3wXTWL12+6P1K07+a
	bvrMi5ibfx+dB1cT/3Z3SPbM8+N73VHPHuUtgxQfmX9BwxWBc/eA==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t8tvx0b2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 02:22:51 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bOFwqaXeVXMKgz4pD8R5R5hqTxCawneGRB9mGc2438RJd1mA/CYuBLL0Hb3Bk5KFpiFd3miCuYZGkoksXIBFoqcjdWTigDD/aQ/oo7rIjjKUyRBCJuex2K59LKfg4DX8RxDbQ4aaSvIBijMfGs5iFZnHO7P2xWT380eNnC/LTmFYXFY51Xz6sBhdJzMCKfA4rlcWOZWMJrt7t80Q4Re4mYRf3rbfMc4S/W7mC6U5kM7OWFInDVJNPoYEUSV78Ws8E545EJvJqPksX6Elz51Puh3lPH0661iYBsg5R5CLQUtxQFgKYbjssEOXlKURwASoJT4a2a9EsXwg0j2vcKrH6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zsodqib8WEN+PLJ6OlnWzPApIYZBK9gB6Qvk59sddDY=;
 b=dstoLYHLck7RtCoIwL0F5v1UIPwWqjiz2yxOUuL2TZjBS/IEXoeEmanUbiR94B0bI1yi8QA/wnKP8FSHDvgwi0aDfPODeWfZnO9AazBtYZhpJo0pN0ANLnBuY+0ZNnwyUIomVbxTmdyuHQ+11COz1kfR7E0PbGyJ2g0WoLnLcQ88ViMkNAZgUNW2D/B+4fKTvxoZFq6VMsqbs2qOO+LQ/dm258u+PiACPc+h4wRozT2rhG6Gjfb242V1hDy7+0PNM5IyDTqgxHxx1OR+/3YeZP6LO48fva9NiRQUB1IpClV67+oVA76nKxqi6zx7IMYaCR4pDDsCL+f6b0wxL6X71Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SA1PR11MB6614.namprd11.prod.outlook.com (2603:10b6:806:255::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Fri, 22 Sep
 2023 02:22:48 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6792.026; Fri, 22 Sep 2023
 02:22:48 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 1/3] selinux-image.bbclass: refactor bbclass
Date: Fri, 22 Sep 2023 10:22:34 +0800
Message-Id: <20230922022236.3578345-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0028.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SA1PR11MB6614:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a7515f8-5a41-498a-cff1-08dbbb12d096
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5EteRNy9BUSeURmOm8Ka4qQFVn9rAG6FngzBy//XGpYbwxaURZd3K/HwO2bXQoGMFfuaA9t+no9h1Giu3a06RXClq3jlZ3AE31J6dTc6HkHL8YPjomtJO2SM8ov6VyN0eWvBZk4Ja/whaBNabS5+VyMNvApJtRn2+KPgJf6L4bblmDYPkHZB6zZYBwz0EivMXnns8spIzYtNsW9qUzE4pWLyvQLP4+fDytRGbMUIEFeykIJR7P3hf8hq6Q3bUrU3YGfmhtMv8qxpYlO82tIjIeGnKn6LmxZKP1OXxSrwPVUBpimogbiyWs1ll3AUB1OLEXkf+UGArhhk4SzM0L2fUe0M/2FQ63/Ezm645RSRxCPgTVUQ6P21TrQDKx1FByiYQONi+MQIL28Xg3oM9thkg3ZZC7SbgX1jLx8FpZoG5qtbO8Ql+dTr/awVjBK0d11sGO5ii2HzQuDxohn4vGxrbUCqKERDXG9tqX/3j+obQrMc/fkbpBkMAIRgfLDTx3HwKzGdh/bcDMvlo+EOFqClXtyENZutVNKh4sGVzyM0HY9gxFAd1MxEvCSBZpvfDOE4zPbqp/DrzSlzGpKSEeqQe1lNDus8WMwpa8zVHa9cXdhNHULbTn8t2IKrzwLRvqmk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39850400004)(186009)(1800799009)(451199024)(8936002)(66476007)(41300700001)(8676002)(66556008)(316002)(66946007)(5660300002)(44832011)(478600001)(2906002)(6666004)(6486002)(2616005)(6506007)(6512007)(52116002)(1076003)(38100700002)(83380400001)(26005)(36756003)(38350700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?apORdyypy1Nz9L/1Wem6Zh9Hj8VHKF+0X/Hvx9XPNbUakpKQ7CCjhmdA4J6Y?=
 =?us-ascii?Q?Cv0b+5Qr4Jxi6Pc3JEGd0D+UI/oapK4ndCKoF7yLL9SLf9elmwqXb2WpRD2Z?=
 =?us-ascii?Q?O0Gl+yAnv4pvaCeOiRSOt8KMrAOeif4qaNlezs5gmZXJN12j8SFQrdFPbdMb?=
 =?us-ascii?Q?ovxAyjVN90inIIsx4SjaE4Ex6PuZ7SV11jPv2bdzifRXGTf5DTN0zREM+1VQ?=
 =?us-ascii?Q?LlzaqH/czRTwUnOosjY7DV8XihFSwfkRGKaQWzC21l73+UDDEKI+Qngfrl19?=
 =?us-ascii?Q?cx5Tl0aioYnpJqYZzI+YrVzk6etVd/h9rwlzVEViCIRup2GtKLYWg8WOlzVv?=
 =?us-ascii?Q?7nok6ZGmLceDwm0zdlNyhXQeP1EQlii9BVK7pwEgMxnNw3XxWgfeCK3dh9Bn?=
 =?us-ascii?Q?L13BfVvVyGW9RHYi1TAbsL7rXBRMQN2vvgGKC3p32GqIgIGTkX3dlvJ9PqHb?=
 =?us-ascii?Q?mPMsWXebiIlNQxNZtcV+1OMnAT7g88DjgSEKfkcPrgzkkZpuWK0N7oGhTbMO?=
 =?us-ascii?Q?za/YxSjhXs0hruR4ac+BR1GMDbjJCGCn2J+qqV8xf10D2gjhPTr0oggmcpXW?=
 =?us-ascii?Q?3h/Ib/vg1iq7B1Dmr7v7hCng8gJddgEWnr+6WGZ2QZ/xYzVHv0AOC/x574t1?=
 =?us-ascii?Q?AMDaLXzEung8HGZwGqJsHNeUfWq88A/FEcKbpXZhjCwqoxgvFweX8k3cG9up?=
 =?us-ascii?Q?j/D68o68Afi0VdQICYAFAmaRqV4zOvYP/OPMqob0vw+80OgsmTibQWUNoD10?=
 =?us-ascii?Q?nftOBGiHBrE20F0ZoOkcUGTxm5+d9F4R5rfLW58pizKo1zg+sWLNBoxhEa0i?=
 =?us-ascii?Q?6yzE4qYV5AMVbR0zVfHIoF/Rm8/lmfnUCkn26RUeRrfQv1cx+yViBMXdYkEd?=
 =?us-ascii?Q?EKYEaOUAOTbhm8eNBZch3T6wtv8CVsJeU6crH0ECWfoSVFf/60Jz1GNXrGJE?=
 =?us-ascii?Q?s9lEqWhzNvyCBxDuLw0clnBq3RR/fSgpqxZ2Y4sRdymtpg77INZsPuLTjdIK?=
 =?us-ascii?Q?x6LaQy0X9WEkyURlMgcwV6g6IS22dSXSnF6+HY2m7jMhhXvmlSDimmePbXl0?=
 =?us-ascii?Q?9seW+iiaeu+yeVrRyZQ/nfI+12XDPG++Fs3JHmxO60jiQxNX73mRTf+Jtgig?=
 =?us-ascii?Q?ahrPBUzvUfRNEQgBwzsg5TeNtPHtz49FbuuhyBIapMujt3cDfPNMfxV3nrt6?=
 =?us-ascii?Q?yU7DSHtty6WNr2db/eU3ACOTGT1Wk0y5XCylZN0VB6LWJUtvleU7YI1kHxKN?=
 =?us-ascii?Q?3akKa8l9yH2/GtkkulL0jF7uZGsaMhMuU5vooaelkoaD8GPQhNWDbotIrgB+?=
 =?us-ascii?Q?voYSnSH9LkKHy3wkJ/nfIA38yjqKdtW8Tw8Swl9zuDw6CTvCqgGHOrTVHd9s?=
 =?us-ascii?Q?9bpsKO5Dso6jx2L/Vy0/Zk93l9IOOi3poXL5zRn+/7rYAdPD5k+hCMmi+RD8?=
 =?us-ascii?Q?9aQzTfmNPqwWZxdPKutQaK1BUhy+m4VKbnM/w/mNE4fm4IYLZV0RYA1+VXXN?=
 =?us-ascii?Q?QHVPZs2za/t/dJsRhx1C86vTQSApVnbdeKsl08y9H3rPdjKmhwbCycDI+X8D?=
 =?us-ascii?Q?PEsV0Yq20DQJuHN15k/ak+Ma2h5vRxR1nrLuu42G?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a7515f8-5a41-498a-cff1-08dbbb12d096
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 02:22:48.8260
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iAfvhlGd7rQHR+4BiCQWOUt8KW0nq9Wggg/CbB/d2uApEp4enxkYUgExHdoBgPW/u35JEGCun4Oyym4bDC4MRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6614
X-Proofpoint-ORIG-GUID: Ehs2q1qZ9412cv95rseinLpAh-Jai3Rt
X-Proofpoint-GUID: Ehs2q1qZ9412cv95rseinLpAh-Jai3Rt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_01,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 spamscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 malwarescore=0
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2309220020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 02:22:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61070

The selinux_set_labels function should run as late as possible. To
guarantee that, we append it to IMAGE_PREPROCESS_COMMAND in
RecipePreFinalise event handler, this ensures it is the last function in
IMAGE_PREPROCESS_COMMAND.

After refactoring, system using systemd can also label selinux contexts
during build.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 classes/selinux-image.bbclass | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
index 23645b7..b4f9321 100644
--- a/classes/selinux-image.bbclass
+++ b/classes/selinux-image.bbclass
@@ -1,15 +1,29 @@
-selinux_set_labels () {
-    POL_TYPE=$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=[[:space:]]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
-    if ! setfiles -m -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS}
-    then
-        echo WARNING: Unable to set filesystem context, setfiles / restorecon must be run on the live image.
-        touch ${IMAGE_ROOTFS}/.autorelabel
-        exit 0
+selinux_set_labels() {
+    if [ -f ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config ]; then
+        POL_TYPE=$(sed -n -e "s&^SELINUXTYPE[[:space:]]*=[[:space:]]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
+        if ! setfiles -m -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS}
+        then
+            bbwarn "Failed to set security contexts. Restoring security contexts will run on first boot."
+            echo "# first boot relabelling" > ${IMAGE_ROOTFS}/.autorelabel
+        fi
     fi
 }
 
-DEPENDS += "policycoreutils-native"
+# The selinux_set_labels function should run as late as possible. Append
+# it to IMAGE_PREPROCESS_COMMAND in RecipePreFinalise event handler,
+# this ensures it is the last function in IMAGE_PREPROCESS_COMMAND.
+python selinux_setlabels_handler() {
+    if not d or 'selinux' not in d.getVar('DISTRO_FEATURES').split():
+        return
 
-IMAGE_PREPROCESS_COMMAND:append = " selinux_set_labels ;"
+    if d.getVar('FIRST_BOOT_RELABEL') == '1':
+        return
+
+    d.appendVar('IMAGE_PREPROCESS_COMMAND', ' selinux_set_labels; ')
+    d.appendVarFlag('do_image', 'depends', ' policycoreutils-native:do_populate_sysroot')
+}
+
+addhandler selinux_setlabels_handler
+selinux_setlabels_handler[eventmask] = "bb.event.RecipePreFinalise"
 
 inherit core-image
-- 
2.25.1


