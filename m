Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.65258.1629348454913850452
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=AE2wuWMa;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4lWHt029457;
	Thu, 19 Aug 2021 04:47:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=R/8vaB44i8NoOCaBHbdH1Dc8QBiZPma9N5CVBTofzS8=;
 b=AE2wuWMaZ8H9jPysTbZWhPl7l34mycyVOQjkwBiq6L/phcNs8bt/nhmk+1e/Jxv5vCLk
 7bRN8DqDpN3RWfVobvmEPZEcnvMWYXL+dPEq0gJ/FKCIz/sjWloZ/U+QbYNZQBocPfsd
 PdNibbvIliCWSmLFvExT0hAVhN7/KoEK910EshiHDbimZl/9Deu5UsEKBj//8fsx0YH9
 DpKcOwQ2ZsmknzRavhQ4DUBQyaecvUgKfrUFPxMkl0CHEaua5vamZaw6W727s/Px3rJt
 7pAh+B+qEQJ2q/kVEjc4NaL1NlwSG3ZUeHjQdg7E+uo50s0EhBmsZ0MEAgxJHLfaGSO3 Ag== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahakcr615-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 04:47:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gKxun7h7nF9WE79ZETOvEgR7/GkhwDotIPKOOwEgEtviLFRTaO1yn5HR1EirmQu6yx6KVFLuMUO5YwYGp+PSCfKWjZ+nSVE7V/3rz+FaxMldfr/mV9KKWoVg2L/T4cxnxitdr5XhrI/q7rjQbM24e4W5PE/RU7XR0Ua1kim06Y7G8E72TchkeTiTJLfn07ozEENQV77E0wSMcvtGVGwxKXI18P1G77R6qdJG67iRiNCQ9MNIikicfRnW1DmJShTwNeSVDGb50CUK/pG/tDZ6qlayUMYC8O0bDiN/pVviRb/LTTbMGpz4Ils4XAxspoYh06KaSIGxPdYmKjVtta4gow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R/8vaB44i8NoOCaBHbdH1Dc8QBiZPma9N5CVBTofzS8=;
 b=JOfWo6Y7Lj+2Sl+kXdcTL/h29yoIknmmYvh4Hya2925ruaItQWwnzMNwzksvCpOHWPGXRr08cn15YX1ACRmcev5ihjf/0ozLaIetkZC99ECtJSp3oxh+Lk4yn+6lpJ+P92bkUj10Z+ittyj6jAnF5z6LFJE8CJZrI4Jffj6bkp08DrcIYdJYw9lAZ17/Gzq2IKKmo7SpQhObbJ/AKnHnYU0zsqqOsuezM2k+6qVu7v3bcr9QTOvGpgiA5PRmoLjwtEEimNJpnj7Hwr7+L+zcfE+WyHeqNBPofgXzlWhhjwAScdjTTAmtYjIOP4NCzUp80H4b5Uj6ft2525kq7j/AHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:32 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:32 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 09/12] net-tools: fix selinux build
Date: Thu, 19 Aug 2021 12:47:05 +0800
Message-Id: <20210819044708.105282-9-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 31b13342-d502-460f-d3fe-08d962cc74dd
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB48670FAA1F7A7B343107CA30F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	f3NZVAH2g/9QsEzIqNLCZTBBhrzke6AkBjgQJ/GhYy16FEZlfb+mJoEYcWBpm3YpS4oB8+kU+0sh6IctNn8NkuPVCoQAw0aHHxeomzSdqEIXEfRK4Ip6IY+RrCiI+95qu4cdgeWf+8ldAlyNf4dcvkF87eKHCQWFyUDscbdC825BRTBu/vPVxUj2GxLmDX8/bpVozDTl2a0obiRSbvbKD9c1KTWO9TBlPfEaXQBFaITdSgX4pB8/8TS0AvDvDlbvlKijVfd5/EIAJyBIh5kFEF7lUCvP58v1gekMPaLGR63a/TL8UNtBmWaVdLonOPHXCGDeL1/aaYr+wHa61i11bXu5cPIKe/4BAXawhDFJQlSZaiOLfG/1X2Rm3XThNmrf1Dk3ANE9oFzBb6buzAR7pDAZ4y3lBspeCNqoPiL3mQ3+hhKziAUTCwoN86R3r3wvQ9rPNT48G0kqaI6RY97h4EC+QDaxEFCtag6aOY47DxVq9bXSDLc1ghMDmTQSgwFE/OUKxtYfcRx4mQMQuXKL8oSIk4Tcz4lrnSvMuTlIZGfRH42ErEYzCdwDB3EgDSTsIfyxidqc1beZzNFL+2NCwbIwXIGDlovUIZxR+MY1XLuIKlhOBqrL+NOrAxh7GRjdRaXXEBBXuGPThS7tPWTixSK+xOm15yBr/xwroDFaSMt8yMec48q1sFNLk2S5AENk6FifwdmOp6GfXp5Q8BV93Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(4744005)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?s5ncA7v3xyOak/TtwJedivSewMA8lbSQVQSnevCaeZ+OdpKQ22f4jItDIQvv?=
 =?us-ascii?Q?4y7d3roHpnzmi6xcw2inpYECUm0aKVzfjeNKcYb3OdA51Clb95WHV66Z3VYP?=
 =?us-ascii?Q?iGRdfFV0i06a3C/XAUAGKKjrfSy+TQbk1rqZ18/kPjlZ3gKE/yCv1hBdQvzD?=
 =?us-ascii?Q?yPYeIOJehRc36iBtzatATeD/aBOF9bdQbDJO/9Tplm+Hc+paJbO5jNzgZlHg?=
 =?us-ascii?Q?+CwORoHj4cuYyIzCdCCFcUlaEwpeZHylmMi8/SasErnZUaN/KhMl2t7xnhp/?=
 =?us-ascii?Q?u8rnlXiVKhu9zoDHRb/5cYM96ROog1pRJ9L3VsW6pVWGsPC1wQmitKrtB2Zy?=
 =?us-ascii?Q?pIXJOAqhtVuitN+68riYYCfdaGWB1GBM+NY+lUJn2drsREX5TAXWHhkQDWAn?=
 =?us-ascii?Q?1DqPAdARtlIo4S/iz7mwSdfNCVfJT8CLN516u7xlX62NiXpbXlCMsWXIX5LV?=
 =?us-ascii?Q?B9+tEHGxczpcLsP6CM91CaqGrHa2/o2HzTdii1HPAWEgj69BEVBMcBgpDvZ6?=
 =?us-ascii?Q?JhM6v75tkuxt2l4Ic27+fcuAPTdsex8gcRA20kLQ1F2SJET3B4VLYs056q85?=
 =?us-ascii?Q?YAHrPYDrlodJy8ldtXf85PlWi847vmmDp51AlY1kfFouJO4JKFndNi12ai1e?=
 =?us-ascii?Q?yDJt2Gfw+1rZh09cSpPYRWdbQvTuYvhU04i4AiHHfqnq1nsHfGnzcJQaOtEO?=
 =?us-ascii?Q?9hWSmxGw+ctGkUpgIlsYKhN2eOd1lwonFYc3694/wNbgKBlAS0mdUdyoI3cY?=
 =?us-ascii?Q?LwX/vPs19Sxq0QKjC2dOdar6nc1OsO82iuPv1VkQW75m7y2fzwfCGjmPeL1t?=
 =?us-ascii?Q?rF3G+KOxMoVR6Pw1ZxkHqdzw14iEY7h8O+vWE685jNFegx718MqngOceLQPb?=
 =?us-ascii?Q?U40qxLRI2deTFy4pNelqzS7StKajqVWhwAfmuxyzGO4zLfdI0LPEWfu9OQmy?=
 =?us-ascii?Q?7kGjw96RiGJprnRQuGkDqhwKfxB9wxw8uLMlnjkF2CRhoxeN+vlFZwIouM/F?=
 =?us-ascii?Q?GX9PSzJmCdfPj9i79dR1cXONm0834MYepQNDoPdlXZB/yskv6m77QEDeaqX1?=
 =?us-ascii?Q?6Vz+pqDL2ZeZwMNkhH8Mvx+fvlZkuRSgEScbg4MMS7g7jh7p+WyN24Y4y2Lw?=
 =?us-ascii?Q?yTO4dC5klD5eKAd6uokxYJuoK3m2OichtDBBiaa4GRclkaR2fuyOntcEl9TG?=
 =?us-ascii?Q?6yC6pID8v1l1B0Z6RlqC0xEGj+fQxs4fJtZ2xXFjtmXhtht3KOY+CqptLxMu?=
 =?us-ascii?Q?Zka0eMnk4cMbUDKIfANGFYiYsBZzjhiA1cDvyfJAV3tatQ206Qd151xtmVgj?=
 =?us-ascii?Q?f1rS8spde6rQ+6rNJ5EqasE2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31b13342-d502-460f-d3fe-08d962cc74dd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:32.6078
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7PdEUkazMUWEvI3RH+PTNElJYA7kZ12Gt6zTrVwQUmDnbrZGAXrcfCiOMGXq1DOLDqNIERkhlwsOFE5azhfXCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: Of89jhSaXyZQNj87lkw3pp9FAN2Z2g1T
X-Proofpoint-ORIG-GUID: Of89jhSaXyZQNj87lkw3pp9FAN2Z2g1T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=950 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Simply adding EXTRA_OEMAKE doesn't work for selinux build. We need to
modify config files in do_configure.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/net-tools/net-tools_selinux.inc | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/recipes-extended/net-tools/net-tools_selinux.inc b/recipes-extended/net-tools/net-tools_selinux.inc
index 1bcf7be..6454205 100644
--- a/recipes-extended/net-tools/net-tools_selinux.inc
+++ b/recipes-extended/net-tools/net-tools_selinux.inc
@@ -1,5 +1,10 @@
-inherit selinux
+inherit enable-selinux
 
-DEPENDS += "${LIBSELINUX}"
+PACKAGECONFIG[selinux] = ",,libselinux"
 
-EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
+do_configure:append() {
+    if ${@bb.utils.contains('PACKAGECONFIG', 'selinux', 'true', 'false', d)} ; then
+        echo "#define HAVE_SELINUX 1" >> ${S}/config.h
+        echo "HAVE_SELINUX=1" >> ${S}/config.make
+    fi
+}
-- 
2.25.1

