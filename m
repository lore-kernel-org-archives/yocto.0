Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32781C7618D
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.44235.1678540431519396524
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=qYgt3+O4;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDC8Bi025015;
	Sat, 11 Mar 2023 13:13:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=r6rvsp1gkASAchhyvAcwDcfoIjkrvzpSWb1FKlA6dMg=;
 b=qYgt3+O41EE3T/mZ0gZw97ZYTWQHLbnSLyO18x0rOK3jLq8KAHzQqi51NquPhvWyp2+a
 pRP376eGPPnfv4HRLQaKl/zGUyxgzeE7D1TYXVxNMDmX/UKKq6nde0NfXFpJGzrPI+i2
 WyFu5EYT9I7Da8HbDLm0wtbGgIkYmrnVFTmcj2Jh71uIVP8roubtXMqXZ5NyovuVDdcZ
 CN8Vjx2++PS6HE+eHD1d3RqL964swicbpuZjenp4xUsh6pvWt49An1TEZag84AUGt5Sn
 sby2nwF7eoMyo5/zMqgwD5fWYKMUtHJBNN9dN2W/bj6E4SbUm7ASDJz0Gno2fUcfTurX 8Q== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8ev2gdre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1rj96JFKkQIyUKEt9URHVHIDeT22uWhe4aqRkWBEdpgZ1nOemusgMTNmxcWTcq69Phh4QG7+ENxeWreTWcQK/qQcns527R09nK5L29vvevpnVkLOUTybZ8X/IexGqdclbmMrn95TBz0Qj/9NWpqIGcoHojrZhuvoqPhnlJ3DWnX9/vtA/lZRX/5D9+sqqzziH2oXXHj37jtsl6fe95z1zgz4ZsPCKjJT32PMHSrEieo6fEYZqqjz58ka8tv/iA3npXHHC+HHHqCDsm6MoNKSyb2qDjSRN4PX8FIhBBOZyYjhtaUvUX6ME+i6GpyGdiDlrmBEXJn4G+lLnEBr9xmIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r6rvsp1gkASAchhyvAcwDcfoIjkrvzpSWb1FKlA6dMg=;
 b=Rf44b0Z7z+qxOiTQcexF1S2c90bK3S2mBulJ71uJaHP5iF+pyM8D3JgSkM7HEXNmfnrLvtbyncONR51Tey1ZgItnEsYYmpfaZ0b9jcBNmzLlZXBubhky9vUYTW5fdBeG+6JGwMO02mO5zlTkA3/aaPfluI3g7hzC16k3dMP4ynkhDfW57xXVpKV9NuxNu+tPINITzatPBNB/38Azj6I5cFAjmiXBvPISBbaoFPsNlAdcSFQH7GdJTI5bpsWDqXQdNZ4zjm24ia2tqOAudJU5lW6gbFUV05GNbDBLPQF2gRSq0zHAibPWJzUQ3iTItmDPxAd+Xgm4JwTjWrMcAUhdZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:49 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:48 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 14/17] selinux-dbus: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:05 +0800
Message-Id: <20230311131308.1337339-14-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 80823608-bece-4bda-10ce-08db22327395
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XxKI410+9v9qTamSZ59vuwBtlbakWDHuw9sSjrqYcpsnZmM/izJ+Jf5undswXFBHBk4tbm57Y/ky7mMhbvR7vxIk4xqhbNcaen/MVPqPl0fn5XKXibld7pH/3RSYvacpxiPjU2vq2I/ZCruOwuU+yk08XejNkn5jMx0R+YswiBju4NK/HqqXy2rqaiNgpoBM64GHszeLNPO8QE014WgGF5ROZwuNqIqjRfzxWhcHZx+YOLULnfAWtATrjAB0GHCTYn58G4RU7XxX7Bm/T9eeC9GxqAd8/urLOqiJiCqk+PCXNWerRRUfH2qNwf7X3b6oZAVDQ9z7eDWrWT//7dSPJWEKVvl3LcPSfjZpUVHPX1DisOFUpA6Nxk76gj6QswZvYP9jRm0y+Y2D8gn57Wbcqdxa3zImKz4grth+nPnDe8cRK1hWZfkPOx2St1IICUeo6+7XPYE77gotL5uzgUrWY3AcTlnW8VZL1lA+R2UeH2lw5j7eJdTAPKpEu5xKGSL+ljHoPiG4VeVE8WOdlPeMIzhhRse0uQ2zxOxnpOVepM/RlfRBqLtzhJ0F7bKNhPC/zB2O5IASGzmiqNz82d1mYy6mpBnsc6fl+1xvZShegXZDI3ogRNPChdLjUZO6fycSea8tzMX8XPLBhosfUeUdXttBOTBc1lmzMv/r4Bu+9kHzmsxRxixbmzbcqeMz1wukyCneD9Otrafdhp3dKkifiQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(4744005)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?VbkgWY6z04zDnd+SbIbdqQ+18rL4nIin6RMajSrGjd0yvVFrdb98KY+bSydv?=
 =?us-ascii?Q?HciyZA/tIiEaIWqvIZF1Ne0JzgiB0NLKSn9A1WSf2xKZ144U25gPPdrTD8gT?=
 =?us-ascii?Q?dRfG+yn/3iA/uuJXtcYct/IiIYwT46pzixSkwiyJToZDtmrhu4XHXpecO8m7?=
 =?us-ascii?Q?cwHIkd0ExLqxtnSMstDa0Z4Ar2bFCkv/HupNKQE4amIFo6YDzuCFljRPY8CE?=
 =?us-ascii?Q?Jgk7AzEAvahaLfnIpFoA1z8eLUaZ5gAfhOQFssMzp4B7tN+Ol3dJ9L0fedX9?=
 =?us-ascii?Q?0PvDclUe6RMxNRtrDI89dOzOQSpRB09T1yHl76mdnan/vtdDu4bCwK3akpAT?=
 =?us-ascii?Q?OrP1fKnoAviWdo+MNcybipqNeT3AmnEeywJLagxiRo5+wa6Sf0JVoWM4PCtX?=
 =?us-ascii?Q?dQhXCcRMLn/Ad9Rn7NTjmGoy5TdQROVwKx5f0Zn4ecj/c8/p5AgFpFapxG8U?=
 =?us-ascii?Q?d9zlerDmoFcdZvtz7hnZL5lzGkNzAkWTw3nhZntBB7/WWO9zDfDduobqEDdp?=
 =?us-ascii?Q?mdG068LYbcFMXHz7iawHsLFPQg9a2JO3OtWWODhyz0lZ5mvxE7DED2IzUVO0?=
 =?us-ascii?Q?zjH0xpJWD1iwbjWO0xJs/WKQ8Qa2tJgrqU38CObSDDpN+7ryYnpYrC8dW45p?=
 =?us-ascii?Q?gJd91/7WtEGmPnGPbrI5EpJwatjLBfxokvxHT0u1cyV8frqtqAAdvbhFAeBB?=
 =?us-ascii?Q?AgqX6h6jBWVTku3NVLyVodavsY56BBla8L9FV9ccJclFeY7lSCSikXkZniqp?=
 =?us-ascii?Q?z5PW3eC3rzC0YsxuMKXCZkJDP+iAD7+8w+xXfpU8+YgFd2m44hCtgYRKYNIW?=
 =?us-ascii?Q?u8u5ejSNLnuAa4RIbkpr6bkTBT069lLzPlbAZODrNZ9pE/wuc4OvVt4CdAgF?=
 =?us-ascii?Q?oaLzYodE7lk7XLevHczFahaLG6NV/OdSc45aKpTCLBRQSYV34UDrXxoVRF4R?=
 =?us-ascii?Q?dSOgniOfNdLRfAA5PdMBggkRDhayNwOaqzUaHPC8jiNhvz6JpmAJmUxVIhRN?=
 =?us-ascii?Q?aDaQrWJ5mFHRQA+vTJryIYNPHKyMWcoJpjfAnchYxCAS4n9plzq0rqK+4ELS?=
 =?us-ascii?Q?ulmm8gkBfLZlGQffDyyecPYUjl/wgp9O/DHeRtxC0lwVDUYwSAGBt9/6mLzR?=
 =?us-ascii?Q?RjziinOeNVkoM26oFdmfJISyx/59sVfDRKXRqFKF7e8gNibQiAYl9egbDwsu?=
 =?us-ascii?Q?Kh22BnTiwVGScFrQogZxftp5UhsBg5fbKOsz8Ah0sN90AOoTizqnoRKIQ+H8?=
 =?us-ascii?Q?h+N9o+q8+IoTcc810V7+/ifFpVTnmdPvs7MciSd++YT/8xW2wPqwDOsBFT7v?=
 =?us-ascii?Q?1U/JsrWanY8osM+pskIXaRmTp/S/Zr7YO926bMHo9tlUHuUYKq9Fdn/LLhZI?=
 =?us-ascii?Q?+Fczxh0FfmwihixqCMCPTvvyXT7zHTmV5TPZF/UFCiczC1S4lMi8YzVuVluH?=
 =?us-ascii?Q?nSm/l5vut0MRBB62n9d4IABP4v90wjp+a7Pa+Hk26lbqANKFfkk6XP1kYTMZ?=
 =?us-ascii?Q?c3F4VQFkY3ERSZ5T3BCOtTmtvIA4bcvjebqcJ00UmKczWS7gtGgNOix9Ho8a?=
 =?us-ascii?Q?R3y8hmemE+mX6Xio+H/U0UMgYvtZlMSvRNvb7emPgYv89GnRDqj0deLPyy4i?=
 =?us-ascii?Q?nA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80823608-bece-4bda-10ce-08db22327395
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:48.8739
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9CZZ0HMWzAd6AcEmN9TsmsnFlDy+ibSrAzYGVDq+oDbGoPn4jMt972Z5SvLH9eDLH1A0+rVOMBEnKLx+Vn1NRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: YjcDuY0_2E7a86mJz6Je97fPgSrfbRAy
X-Proofpoint-ORIG-GUID: YjcDuY0_2E7a86mJz6Je97fPgSrfbRAy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 phishscore=0 mlxlogscore=638 clxscore=1015 mlxscore=0 adultscore=0
 spamscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59397

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux-dbus_3.4.bb => selinux-dbus_3.5.bb}        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/selinux/{selinux-dbus_3.4.bb => selinux-dbus_3.5.bb} (88%)

diff --git a/recipes-security/selinux/selinux-dbus_3.4.bb b/recipes-security/selinux/selinux-dbus_3.5.bb
similarity index 88%
rename from recipes-security/selinux/selinux-dbus_3.4.bb
rename to recipes-security/selinux/selinux-dbus_3.5.bb
index 1619829..b1198af 100644
--- a/recipes-security/selinux/selinux-dbus_3.4.bb
+++ b/recipes-security/selinux/selinux-dbus_3.5.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 Provide SELinux dbus service files and scripts."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-- 
2.25.1


