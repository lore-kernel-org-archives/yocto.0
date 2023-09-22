Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCBCE7D0C3
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 02:59:04 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.13797.1695351543675934429
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 19:59:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=hMvfvVOZ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=76297e7a8c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38M2e2un028558;
	Thu, 21 Sep 2023 19:59:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=oEqQ5iGWBfhfzUU0OP
	HqzHdRiN+FrfVZEf+D2+iQlyY=; b=hMvfvVOZCOgJDmHylgN3yf4AcKDpnW86wu
	GsiFNz52Pu/FV+tpCfMasi/wFtyXmKq6/wKyBYiTlxs9urUKi9Q6G7xI3AqAkI/G
	pjlwjeTcjd5yNTUJkXX3HQM8QdLWDVL80qD8HvAyXR65wtARXV9Rfjv9Syvvwh6M
	CIhssiT2OqWpGafD/DxX6yWNZ58g2Aomxha+TeCV1B7c4qDisJSGu4HUvLdnh037
	nHOG3vCO8CmH9rtafholnSJFjDLz+UzC7kAfWOGmBkFVDokm6qTNpYRio3/Xoi/8
	mqbMpqK0pY2XEeCZSFE1HGugwJqS8wQRMdG27X8y4Lzl3E5NFu5A==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2109.outbound.protection.outlook.com [104.47.70.109])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t8tr5rc53-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 19:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BDoBIhBnFjmRqTmZVpd/Bli+pRNisiduX9QluohCfirhguoupzb+0FBlcMcs9Y4IrRvtTyuNvGzv8AHzROJ7XTpeXvuTTdcBf/Dj4hfUvEbEq4fZQP4w/FEJ8no4Ggdao0SIUZxn8e7xbKtyP4IhpzPlRD9iMKrEYgi9/zQ0KEFvZkuENdSGfSezBZxpXHRgFo2XWCguIm1UD+HD70e7kPPXZx72kyPDHXSzs3VTmGflBdCdeB3EYpAYsbKfL1JdoMZiNuP01NvoEyndr/dlpj6f05Aoimbuktx/0ibBXKSuJv0+ph1EwU3FBpkGz56Eh+jyeV7FvV5ZZLwntIieOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oEqQ5iGWBfhfzUU0OPHqzHdRiN+FrfVZEf+D2+iQlyY=;
 b=Wm4zDjHdLK/GuRK7TzUeCupeiQrbcdWSZ+33gO1kB7vtZykV/eFkKJpGYXVAKEAPv0xbrzKqT2pJWuXuX26CJ+OgE1+X7DJi1GthdRTuBv+9LvDmreQ/CWEVmC0jFH11PuvyyV9N2cG5ouK7MrczBXtrJAL8K+e0I1U+WYjxmFxooyNlEcD1fG9DSOXAYIs4Vp+avLkxjo/z2FWs7pkxEpkzO4RWUAtCTDUtfAdplPt7swNTiaszhCNGSBDoppdvii+3n+uGvfDsDo5LfYhOMPc+zFMFSFQUr1C7MmLnuP4ujRYx38UXByQg0Y5DBaQ1TjOiTKM3Is1rd1fO2zhG+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH0PR11MB4950.namprd11.prod.outlook.com (2603:10b6:510:33::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.21; Fri, 22 Sep
 2023 02:58:58 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6792.026; Fri, 22 Sep 2023
 02:58:58 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH] layer.conf: update LAYERSERIES_COMPAT for nanbield
Date: Fri, 22 Sep 2023 10:58:45 +0800
Message-Id: <20230922025845.3608425-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGBP274CA0018.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::30)
 To CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH0PR11MB4950:EE_
X-MS-Office365-Filtering-Correlation-Id: 24c24a1f-5f97-4ebd-9685-08dbbb17ddd8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	z6sLy6MUaDccSfIBADO1ior7Qwz/t1ojqgSzSWbOYCt6cjjzciutqQECZrY0u0DTAa0yXb9nL/ClG0jU55Pk3ku6KAxgP9BUc2tcpJo/FOS3E35BmxNMdMbTVTb3UPcFBpvdfoNkeUxo1G8KxcpgpjruV3vvNvYnOaftgGI5KuTCk2HYcxKWQckTB24bKi7xfTZ1HQGcSH1S+8b00uBH+Wj/NGxC/Chj3XcHp9fFjjFOVr/3H6bJazmmqwVN0Z3rP0ihDTnATwUmF90nQoetLuouwm0PuJwJEqzCsAlc5/er6U754TW00OAFZbUITUmdDkWcBzTPtQfMhIbNk9iIp3WgxnbG91u0PbJFJgooDCyGRm3yW5V/bADOaDwCFYtVfyMUMBqG7cFEjRHxT4bpsTWtGJXxUTpKvrBPmjmwPRCnY5NRkhHPTQ0GBnMzGITXTn63KbJ9I5Q0Sz+UbYT/rGjTRmlxgjuMBSlYurz7hQp3bsAUzXfNc7945TF+mC6QYWf+boZee5DB62WUaveAdeoch6BhCG6wEshGSor3r8AYnElTzQncQC24TU+APOjtq+Qikn3mD95M0wRoMeARFDkJbfCOArxngM7tHznSQYw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(136003)(366004)(396003)(376002)(346002)(186009)(451199024)(1800799009)(6506007)(52116002)(6512007)(2616005)(66946007)(86362001)(478600001)(966005)(38100700002)(6666004)(38350700002)(1076003)(26005)(6486002)(66476007)(2906002)(44832011)(5660300002)(316002)(8936002)(41300700001)(8676002)(4744005)(36756003)(66556008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?y3MZDz/qOKdabLgw1cjOZ5tZy05hpXQXKJZCNANOcW1/5mYpxiJ4y9s5T6xX?=
 =?us-ascii?Q?2r94l2cVSxip1UqXJVgex+2inyUl4JSI1uGMQhcjjd20KiI07IAvkfximr7W?=
 =?us-ascii?Q?1FPKerK0VvdRRbzkTkicWoAgs5TPDO2XM0kUU0muCKgLkh0QP7PhlI4JmdEC?=
 =?us-ascii?Q?JeMG5omGd63uRfwdPA/41YRQ3Q12KAjgb8HDQU1yv6TpU2AkJcLlWtttDTON?=
 =?us-ascii?Q?qgsp2RFzd+GiyCe+zPbvHyJobAxfP1yhhQpO7CGSxNZhjsr7gyxDZl3adbRW?=
 =?us-ascii?Q?M3BSv76O8GRA4+JbT3OEKNbg+i5dXkQMRkkP+bJY84U4okuKr/uMtFcllSbM?=
 =?us-ascii?Q?dmQmYFxdehcEDWWufXVXeEihd9+nsflZa/5P21WGeN8WrxipU1QDwHjihYrr?=
 =?us-ascii?Q?56x8KKR9icku/8FgfEcpX4Z2k9TGRwu94EJDTkE2oTeX9/uNtvm7bngkQH+l?=
 =?us-ascii?Q?wPAWs06EuIuVMRkdYURAQ44X/H6HZVbRiji55vjXIAL5kUaA/7GM9yF98vIX?=
 =?us-ascii?Q?HjFq/nXULxZjnpdmQR2t6jHVukLNOU1Nvc+ezD0WnUq/VgqoJscii0C2xnG7?=
 =?us-ascii?Q?IfmW+uLtjrXNZL2O3TRLoSAXAz810kzj9hjIYHCLDJwOM0tSvCb/7YMcFrWS?=
 =?us-ascii?Q?D1sJVsqRHdda1AiZRrpS2xHsDVcNNPCwNprVQdkdi84YFnUz/77u2LZOnCWL?=
 =?us-ascii?Q?jHHWd0VC7atP7BNGlKQ9CERkOFShlV5u+jqzejgfuNKJ74NJ+RQ0yXyYayVX?=
 =?us-ascii?Q?Zs1plwTK/QaIPY03hc+mz7BotkW+u4+8uDPD9S83l6gElY95OQxI6q1qgF8N?=
 =?us-ascii?Q?Jmjiakd8SACCVWU28YDGxElPBNSCbMIXnfKts4gYv4/iEvBN3On4xYyuyb+x?=
 =?us-ascii?Q?rzRZ7UonMvVsx/PMdMOmSpPOx0pdZW/FjY3/4m4pAFXa+d8P8wYeQVmfO7S/?=
 =?us-ascii?Q?0G9nZX9KC4jPXUiHTD/5RQItDIOnJm5da+CLrS5qPV/s67TpZoYp65tVOg4s?=
 =?us-ascii?Q?y+60BnVPMx/+1gDyihfX4bmHIBWD1ol0QsfdSbZG8HZrR929LE7ewSop6Qi6?=
 =?us-ascii?Q?v1gVNZe7e2b+6qMsJfKaFjqPdfo0PAbSzOQXhGpeDTpcv7T/rXRsJ37FZANW?=
 =?us-ascii?Q?aznxeLQus9wpP+EdTmPLS7EfEFD1HqNQnRl5+fJhKXZepTpLqag/8irUWDgC?=
 =?us-ascii?Q?P36Bb3fn0YG+fHQ9/zMXaHNMVj/h/o2CHCzyFFHxWMxQWG59APmEiH8KWq3G?=
 =?us-ascii?Q?rSArTZSbYz8NCPsoiNRgmfuLsTY0CZxHmhJcV3TGzXk6XCu9mPSXgI7h1VFP?=
 =?us-ascii?Q?S5FZHRXsNsizejs00qaEoXYgXdl0ShAIFgW+Y436ItiY9yEN7BeEqGshxpnX?=
 =?us-ascii?Q?6HJ6FE7YXqrfiyzvx0STV394A1fnF34qiZNbq2GYwO4/XYwJHgGiHdwfmDiV?=
 =?us-ascii?Q?BvbDWIHy0dyMZra8ClHC9VTxATDjNrkpuYAYsb/C2gcKj8HFU8jprAiwhltT?=
 =?us-ascii?Q?KytqsKbPHrhtHH/ecl9UFSLwgul7mKmWfj/1R7D924WaUGtH2wmwGofw/QGK?=
 =?us-ascii?Q?AcpN34rItxFRjki3xH8ywiY5tjYccpAGblY0YKn6?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c24a1f-5f97-4ebd-9685-08dbbb17ddd8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 02:58:58.6285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QD4wAi1SItKZxNekeuYQnxA6EQdb8epyuyAIS04MFDKrQpLjqEOgdXTe+5ykvQfLNYA2icjdGkr8X9XV/a1+/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4950
X-Proofpoint-ORIG-GUID: u78c_CKb5P2Fj4bMyL4lQ2e0qgsWs_V5
X-Proofpoint-GUID: u78c_CKb5P2Fj4bMyL4lQ2e0qgsWs_V5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_01,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 mlxlogscore=669
 clxscore=1011 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2309180000
 definitions=main-2309220025
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 02:59:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61075

oe-core has switched to nanbield in:
https://git.openembedded.org/openembedded-core/commit/?id=f212cb12a0db9c9de5afd3cc89b1331d386e55f6

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 8bdc3de..0a0a6ab 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,7 +17,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "mickledore"
+LAYERSERIES_COMPAT_selinux = "nanbield"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.25.1


