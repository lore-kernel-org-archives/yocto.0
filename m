Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E828C433EF
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 07:15:07 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.9032.1638947706861558142
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 23:15:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=psILyZvx;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=7976aaeddf=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B87B5i6029776;
	Wed, 8 Dec 2021 07:15:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=iaJI7BTra7NbF+p8t98O+1vIn5J9HrZAryQ6qzEG9+c=;
 b=psILyZvxuGO1pra/RI4WLQsq2I+Nh7ThXuMU3Br1769seyK3OnQ5FbF/xmeBfyxxMwaB
 p25ifTe1z2Zn2urVP16A7tgeOsB8Mo3Er45ook3Bd58KMcBWnLjvoy92m9/HD6AfIkow
 tAVhu4AhLLv+GB6KhOO/bYbSlypH4EWwOeFGLgO+0jdrjn0MyNEepxjX42r8Fmg9v9u1
 IJnrib4sEPnRkMiVbDqZUUmNjgYvlxRc3C3+lg90kdgiVqsw4+SiC9jhrwXaltlvTjto
 UHIVHzbD6M69qJYK23Ydl/l5DGFhRq7r4vmvEwhbEJIhH7lcQMdDF77hr5HgXnM7+it4 1Q==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ctba60hb2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Dec 2021 07:15:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CdYIEsPYX/+gAqIHSc0+N50eoVGZHf5Bfs8RTBSUI5KKi1OOeZXSbbsxhQOVKNHfR7yTHXAeR8AX1oGqPfEhRDBOqace/E7DE0N0eQIZiGcbap/aLO4d12EsBpaW5U3RWDkg1MRe/HD+0cCsKH5JYbjLMAo2bA36tf0QA3mDEVSjc3MEaaUCWnMCGyacZ34IaOXgKGdzNV9OdxnKxfdohLMTMMDg0pidEzr51jwbH42omngHCEdnhGYThuDCzBQIY47BLx8D/EIMX4Z1vLqsJmvssLouvr5BNBylXCscpTkww6uKeEqWxdTqTs5vp5kVG4G2fi0eqKxDvBWLsP5fjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iaJI7BTra7NbF+p8t98O+1vIn5J9HrZAryQ6qzEG9+c=;
 b=P7Rex4G+nG8V21TtFZNlcGRAi6wr5gabI+Il8zhVy/7HKCrjhlFMKf+mZ/vn2YXCGclq0ojHfXadVyrDvxB+ZPCnRxjF0NZSWwUJhKMa74Aeq7pWbMiTk0QVHIm9wPOF7hopvAPvVVqiGwLbSJpRHOuLChMG32YDz1n6Ew6jgfIp25qXnmBL9b4UpJcRILuGhTq3SZv0xb5zjyITbA+DhovALlGUlsx3CyGhMDXXcFHGX7KVX6qMemgD+4peSCt5siEzJ7+hKZtdDRTjk63bCRIsTJI+mhh4+VRFll2+V7eJ+P0pV0epNCIavfHEU3lUd+nPvM0rChXsW+26pWoGiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CO6PR11MB5604.namprd11.prod.outlook.com (2603:10b6:303:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15; Wed, 8 Dec
 2021 07:15:03 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::98c4:c603:2360:7b8b]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::98c4:c603:2360:7b8b%7]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 07:15:03 +0000
From: Chen Qi <Qi.Chen@windriver.com>
To: bruce.ashfield@gmail.com, yocto@lists.yoctoproject.org
Subject: [yocto][meta-realtime][PATCH] schedtool-dl: add branch and protocol
 in SRC_URI
Date: Tue,  7 Dec 2021 23:14:54 -0800
Message-Id: <20211208071454.103387-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.33.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0046.namprd11.prod.outlook.com
 (2603:10b6:a03:80::23) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
Received: from ala-lpggp7.wrs.com (147.11.105.171) by
 BYAPR11CA0046.namprd11.prod.outlook.com (2603:10b6:a03:80::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Wed, 8 Dec 2021 07:15:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 96f588e9-b411-4f07-71f2-08d9ba1a747b
X-MS-TrafficTypeDiagnostic: CO6PR11MB5604:
X-Microsoft-Antispam-PRVS: 
	<CO6PR11MB56044782852D0C1E85FAE8B9ED6F9@CO6PR11MB5604.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AfRudmxJXlSa6CjixC6JJwsXBwzYu4PUidaBAwjZQ+X6rEFn2RAWBCgCKP4ktsk6fxEi1NI36Er/UVPqO+UTME42GENtlOnGnUQ0cKFcDVku8mU5ruOgvDBRUVsd+HivmgM0id5T0k8EPxjttdPxaylhQqD+wADZT8X83cs8XJJCHs4h4OljYKwhtpQTT4YkaInn9iPqnfhD9Ikm8uZeNOVMHZM0qFCkLXmrF3s7nJpaYPPG/5gB/N9luYGbooDhYuitlrHMU3FDt1z0pTVtmNg9coy92mZWIVOEOI+TGYombU2aGuW+FmwbjbuIDWx2/O9/ZKXvzYdJZ27H0gtFDLPVGXpQnr7+EUnTN0StAEa6SZdvGHjSFtgI77NR1CAH5vlls2ANul7GBZXWKKbRqtPaPIY38uBMsLch1RIuD40xIwlapOvIMr2wgOZoV4tUAM7tet5OHLFhbw+8TRDYccE1tNCsjJstv755O51tc4gI74nouRZT8ibxgp4DPaCHVVErMY0gBOyEHIF91oEDqiO9PLX5hSueJiw69MIKAuuHOacm8ex1EsWYWZD6xPoz8SS00ty5I4pIh1IEsVyNZEYToLH+ZFs0RKLbVFazIKEOA9j4mP6PcZ/PYdRh5LKmfrgUpPn3WCMg+6NbVo9n0QkIVX4qGRS6btFmicgIQ/cRao74WtEkVt74anwkKfis9pfNAFob07taho1e1BjfCg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(4744005)(38100700002)(38350700002)(316002)(956004)(66946007)(508600001)(1076003)(36756003)(5660300002)(6512007)(8676002)(26005)(66476007)(83380400001)(8936002)(86362001)(186003)(2616005)(6666004)(6486002)(52116002)(66556008)(6506007)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?84559ZpQeTKjUIfpe2KKOAu+2ZUO1lDdpqnYWBzgc9BzpfF5nwmCKNH60Dtt?=
 =?us-ascii?Q?Qp6V/li7QkWqGTC/eM9aoEy9/NrAUnRVk2XVrkd5CvCRwqbvieZP8hCc8x8p?=
 =?us-ascii?Q?al5Ryf3IaLWekeY6TQm3toMcMJjLb0Xa+8gQxh2Exdm8jBhLeX0nQnGdYS8j?=
 =?us-ascii?Q?+JAulMJ4/mix+U8OVY4AY8ii4TBWYHVXHT7e+xgPMpgCpep2ULzd3fmQaDdl?=
 =?us-ascii?Q?0/qJoIEDZHgWTrf3M7y9JUZ2hEHngHciEWGd2mOkExO4/mrnW81nJi7zsxyT?=
 =?us-ascii?Q?io7FAvFwqu+SSHdD0bO5HJryqjlejRiThAlD7GFGTpU9Z/XHbb5Olgw0EZN3?=
 =?us-ascii?Q?oU6TbPwhOJUXb0bER5Q+9UWS3cvrj6q0qw1k/tS5JG7Kp5cpotSl5bwE8MIB?=
 =?us-ascii?Q?OTqopZGYTiNl+VDmx7xhkHaR1W2GTHU07+ytRRGoER4TGT6EUdBkbg0oQ6vI?=
 =?us-ascii?Q?7JK8V+hhz8q9Y/BCYB/DCrQwT8ujRrCFAlKhKzr2uXWw3baGDPqjYNo7KENZ?=
 =?us-ascii?Q?nOgN1vzNvUTWb05NrPb8T8vgbgMjDc0nv+gDTjW3DX9xI9X5FB6y7vG1obkk?=
 =?us-ascii?Q?adLuOsZPiDpE2o198es4o4UyAxf5dJ9xyetR92XUtHehYhjiV7o6UbgqLXwF?=
 =?us-ascii?Q?7oipiR7uxOFkhZVQnN0TL6fLwt7f8UBEreOtQkvlGy7c3LZpMEGFhiKKHSGH?=
 =?us-ascii?Q?2w/VXCxB3mxjuhVXZm86ZmsQX56LgXftIKJm3lYKPLiXT3M6RFVDZHSTO72i?=
 =?us-ascii?Q?CjwNGOTSkkWu+w1UQmwY+sg0fP5a5lCUrKI2enFP6HV8x+6A+BFBrLzxnVYx?=
 =?us-ascii?Q?HOmryM1lCvnag5P+r8D9nbxT9iHxb+1fUiHRTVL534Z7n+iff4lMamifA9f+?=
 =?us-ascii?Q?CoqutNPXooF4ZbLL7DY+uswj6s9sar+i1OYYRs9Jdr8kMRH7zfbF/EOprBdG?=
 =?us-ascii?Q?PDj9+Kp6F3hZWcheoITxsG1yeVbZY7HIg3vbXtWVW+MEcEnJ5zRGWUrp5qXQ?=
 =?us-ascii?Q?y49FzHqB4E3LzUw4uohxUppbfnmXoWIyhhWfQQH2ifqNVBsddxAfwu7jj7Qq?=
 =?us-ascii?Q?n+cPP2f1vJwGNIQfZQz8kNu7gEN3ZVUdpR5Y3TewKb2ph3UUJA2JvqxZ1cX+?=
 =?us-ascii?Q?GGovPcAIVG5bZEBYMl5mqgzz0oUHnXMWxeNcaFp8jDYZLcTL2HuPlxdzgILI?=
 =?us-ascii?Q?cdCyFmnUP4N8hF+mPWBHTRr3j6ykFi6AhEEHfWCYKV3yXtsOk99UgOj804ao?=
 =?us-ascii?Q?+28Cgw5S0SfMla4/mTlHE/x/0DYwrKqDDH74eMsVVZHE0oV05NiFyz72thIx?=
 =?us-ascii?Q?Wwn7vzK/QJtDHA4JRbTQyTxTluwPH7Ak2RCLJF7nNLj+2XuS9nO2jlUUcvrU?=
 =?us-ascii?Q?HafEqGBZSSWsSD+OviAHORKoP7zJDqbYSPKLJy4NTg2JEDVHBEp1K80KojhN?=
 =?us-ascii?Q?0lN3Rr4kdN1QUnn3iamTr4teb7z0+4MTcC+FiS90xsAhCXVCqLjXdYXNtoeu?=
 =?us-ascii?Q?JMJGl22VI2J+MoyQBE51QaFVdfJakRjcNi7hW5Wu9EvYtiqRt2JxFuq+amem?=
 =?us-ascii?Q?wclgqYSgHnj1WRfXi6mIxluOx1aRhM0vLV4+WJUVBLGNBhSAdlOTY4Exu1Ii?=
 =?us-ascii?Q?jVynlmiZCEEuhfMO/kNomg8=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 96f588e9-b411-4f07-71f2-08d9ba1a747b
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2021 07:15:03.7879
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 6p+EsAXBMj2hbnwA12Qy0MnlE6FUEmek2i7bF+quM2vPwKNOzJMPP12ytN09f/RKDujagYQE7VfpdrKaLiSCLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5604
X-Proofpoint-GUID: K5-0kdfEw0iSlnBueU1MPjkodL7QC-CS
X-Proofpoint-ORIG-GUID: K5-0kdfEw0iSlnBueU1MPjkodL7QC-CS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-08_02,2021-12-06_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 phishscore=0 clxscore=1011 suspectscore=0 mlxlogscore=517 adultscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112080049
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 07:15:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55509

Add branch and prototol to avoid do_fetch warnings.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 recipes-tools/schedtool-dl/schedtool-dl.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb b/recipes-tools/schedtool-dl/schedtool-dl.bb
index 59e3b32..c8f5d1e 100644
--- a/recipes-tools/schedtool-dl/schedtool-dl.bb
+++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
@@ -3,7 +3,7 @@ SECTION = "devel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=dc1f51f7ca94aebffb9b3663d82873ec"
 
-SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git \
+SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=https;branch=master \
            file://0001-schedtool-dl-add-flags-to-parameters-of-sched_setattr.patch \
           "
 SRCREV = "3ffb479929c31cbae09de08f94f58b8f0f061d91"
-- 
2.33.0


