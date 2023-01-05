Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BA30C46467
	for <webhook@archiver.kernel.org>; Thu,  5 Jan 2023 01:05:18 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.2310.1672880707812781709
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Jan 2023 17:05:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=MGCGajNc;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=03692d28f3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3050kJZs016579;
	Wed, 4 Jan 2023 17:05:06 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=RYKT206UpOjOMzz0sURxgUQfW23oyeHX8ELWGmpqoL4=;
 b=MGCGajNcpntDWZalJf3CAKNhrRW/ddODS1puZEuxmR+3hwC+fH+iKwvB1f7EVx0IFCYo
 exwVJhoPjN49jO5986VGP1Uu21REE+KtSNLPO+QJL2FbGolBWCH3MTPKDQOMr1eyBNpi
 xGivH/yv9GmujUvbj50GpVIjr7QvooJ0XmDwClcxxMaKEjeSSiN0hGlS5o9MVzFUvr9H
 vL0ZlvVV/UDMr0uOIZJ1QkH4ly5ALdg5IK5wEXPdkBBr3rEpLjaiAK930wbx4vP4Nxa1
 OmxIuPmYOIHnJrm7yEfZGP/V35IaVQXDC3nB7loKbvugbtZHj8E36OsZDteN2ogDytJW 2A== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mth87tsjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Jan 2023 17:05:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b0NRG5LbigavyJuSW3gH7I/WvEK9ZMaPaf7R4u/tugQBQN44svl6dzHVUSm5pkZlL4pAJsH1LrlM+bbFh79TATNygt5m1ieZ1NAbF7uXQBaK7xjySZjLcdWvEP3dd527QwSSv5YuRCSBJSfgo+LihGEXttGuSO+osFCRXhEzETjeywP7JJtA6y9SdxijzWHWNA4WFC6Dj/a9Ktde2Yv09AdaqCjIRTsW5S6UNpirUEUaA2ODtaSMGHoNdDJ56LOi2hvvnE6nNqietMQ/7N/8O9Zsw/3cHdGnQZg+igRQMmqNIpI1D5W55ENsw/0HR1AveXbeA3eFgOYski8AX2TMCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYKT206UpOjOMzz0sURxgUQfW23oyeHX8ELWGmpqoL4=;
 b=lLCNEA0BksjzACcWLYPQ3cuwxXcFwD79sFWSEaGBMzslN9JoelwWVU/teMFEjf+y3/KCuzBRCNyUHjGpjMFVeg0P1OZYiF3g7mDTwT9CqeGr7kG+GPjn33Dw3ezpP8Ir1gIY3fYNM6/fhM0+Oq/rQYYNIWjvbLTBu7Oa6yvKe7aGAZAClT92sm6dOmvmy7mG8fwjEB8w1h01yTaW3VUYCfoG4WL5Z1LretOGodlxezo//1n3LEbpTE/dQPkimZITEb+r6uNoj2P6HH3gDuU6ielA1pf51mHETizGN/cUIIq/GKto8cE3CALkGOFXka32fMCa1PcFtlg9essvVsHu7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SJ0PR11MB5215.namprd11.prod.outlook.com (2603:10b6:a03:2d9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 01:05:03 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::eb7b:3a04:80bb:4a5f]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::eb7b:3a04:80bb:4a5f%4]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 01:05:03 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH] layer.conf: update LAYERSERIES_COMPAT for mickledore
Date: Thu,  5 Jan 2023 09:04:54 +0800
Message-Id: <20230105010454.1971258-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0085.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::26) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SJ0PR11MB5215:EE_
X-MS-Office365-Filtering-Correlation-Id: e09d5201-2b39-4fd5-fa2f-08daeeb8e078
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x2keKdgXbQS9KixEBFbPLMdyPDUFfcxYXVJF5CbZ77RI9wjwo7/YiNdGlbRQJKrjiarOqqGU3u2RUnx5YjeWXef5xIs6w8cbMbyKZlUmn41N2yYb+jyJL/i2VpzElnizNJSKuS81xVAUbpi2/ynvKXmFZxcicsuDvCzlb5H7g/3ZXVjUsaZhoBPqvNJ/SNG+JMzddeVRHGdyoE1PXffy3Eo7xdUHWyRPrAmRSsP7dgsfR9TUiciEHyCdKxtn9MfUksU2tE1QZadmxhpHdVrwQxX1GtTgJmM61YvOZKfdJQsEOx2yLnIPkEx7E+m4vIldS7x/2QCqYcOEzTiJp3fEJJB8fBGWq7Sqi7/T+7ivcRj2a3+fc50ZSQsghpxp9yGFCfmFEeVOhTgdMbVMqE1yjEchOrcpzInpFmDTbw4l02ZfNX0PbL6twLFbax+OO7d1iJzIqX8pRI70AxDqZu5YY89fdNMxz1MDNBHsY44vovE/DjJ/2o9Ks5qvrp50MeTfRGwdeVh1dkmxCNKA8MJRxXLD09KKs+QWO1eXvd0JVM2lOffFAflSO1exPnmpVwTsAaFcDhnxzCvb7TBiMwTfzaaPSlbkQveGgtKcG5WyneV8kP2osnLaMEtl4bQN5Nq7ZamTcoHOGcLzpSl1UE9y+gzCncPugyP4rpPWXMFHjBfSEqAnV6SdwTJB7GCm/CdSyWwwT1kMsJnHKKxpCceyYw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(136003)(396003)(39850400004)(366004)(451199015)(83380400001)(1076003)(26005)(186003)(6512007)(2616005)(6506007)(6666004)(86362001)(36756003)(38100700002)(38350700002)(41300700001)(8676002)(2906002)(5660300002)(44832011)(8936002)(4744005)(66476007)(52116002)(6486002)(478600001)(316002)(66946007)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?j6yvhOkSUGIFhA/yls6rTjk1cC7R+Jwx/ICBANgyPk+3m9r/Rh/ePEE5c28Q?=
 =?us-ascii?Q?AeL6FALyHr8tpfi27NB3cer976N7zDZB18YzY2cEd7h+/ooVb65hbmpcbdzn?=
 =?us-ascii?Q?msvybvByd8O8AK4YI7mOhHLAruTI6LWN73Kjg3z185k+jOKwrHtl7blf47pc?=
 =?us-ascii?Q?47N0z2VWi2GJpc9A+Oa4RBgWGMZmWuJOl7wKYKbbcI8kketUfnF10L2tHDCj?=
 =?us-ascii?Q?P0+dkyX8v3cBorSxzT+JmBhuutg0FgopTk/8gq6EAY6W3t9ETDBdB2id8+jR?=
 =?us-ascii?Q?3sxz3FrbetYwW9uydbLabbV6llfWAaiyvi+K5B9BziSC+71sK+kyln/pz1ql?=
 =?us-ascii?Q?7W5L7fh3PNDuVttMiOwoovk4gbcu7ulr2R4PDCXZ68re/GEYKJjTce4qT/X4?=
 =?us-ascii?Q?/SJZBbG76nrQKL3IsnipgkfTP3GRfFLab7ksNHU1REWiyT+pZFfUxYNTt60p?=
 =?us-ascii?Q?yDQoUyjlPCbpIrns3TFxjgiPH2yq0urHTlPhGE+ZqQawHFcXPVG8FwemwAC6?=
 =?us-ascii?Q?ipoGeOy/s7ZRhdHB7UUP5btOLyMNufmIGAmPjAznmGFKhxePXNtTrtkxXp1B?=
 =?us-ascii?Q?HdLVhosGV9g6HWt7u6Pv9Yj9l50Hm5EKPSa/ucrgJaxlnoSrNVGLPMfVa3qn?=
 =?us-ascii?Q?vpicGU/7gqoTHosJlpIGaZxbxVDBYuZVk+Nw2FtqeNStcTmzJtKJ6CeqzPzD?=
 =?us-ascii?Q?1wISkW/n9Q8Bsh3JcHL18JY9XdkXUPOv3/xA8hJJNAP63gvnTjJQHCKSrdcP?=
 =?us-ascii?Q?MoQ780Wp9QgBcHj1JzpCYN8FMFIUur0eyLN199ytkdnvdP40frVzOhnJmDJ9?=
 =?us-ascii?Q?s+uWTcnGmfyhNDMWpJRbvrxynYU0OpAsp3eAkGRpPEK0HKRckQEwNrJt8jBF?=
 =?us-ascii?Q?hzcNNLzfdBcazRYW3vnqYk5+5Dna+zi+3stFZyWzcuCSTHirDrwzGq32PJdh?=
 =?us-ascii?Q?CD732Hqess1AzF5Gh5cqL/Qkoj8zvW1elFKDcboCj+1/L34sPSea12S+v08G?=
 =?us-ascii?Q?KmUW+wNa25pdx0QFImnY5GozxSBg799969K0bnH1M/QJFRtfVHRrfp+7zUMi?=
 =?us-ascii?Q?ETzsnSepJqbk4eMCGvnvd+ntbmR3b+obk85VvyngD1XHgJhkeaCEUgWl6pOF?=
 =?us-ascii?Q?NLUsUT9U4rWCK6zIKT/c2cB4jLFlh16KJik6xHQ3jvnPMD0X+NIQCUxNnznO?=
 =?us-ascii?Q?I7hfZcbH7pGvFUFgfc/tU5L+OCVyg4O1DKE1x4ZCqqbkkMgxSj+TfhfUDNrt?=
 =?us-ascii?Q?42wI8a14b/Pm6/4kJkrtSC1ew7G3OVi2fweXh1U4THxinJ6nl3FIt5uUMnu2?=
 =?us-ascii?Q?pR1UV9tIyjO2uiCgL2b53qXhW+IiCYoVY0v1TCEHkNNmfqGfTdc3TyNAhrrY?=
 =?us-ascii?Q?cFmFsvCD+uayzwBVruKChOsvryY6RziRC7Zjt7UubCkJrxXa4QQKsnY3axQ2?=
 =?us-ascii?Q?J8Yf8u3rw6bs/A/RzgGw6bn6kPPy2+BJoxiksNrFog/Vg+BReAjRv6CoIm2s?=
 =?us-ascii?Q?asepMTx+5N6v37IW/XEKlDZiUnpCPt1l9JitUAabR2K9LqV6SzmJ21kJ16TM?=
 =?us-ascii?Q?+kb6WSdbTUtFi1me18aYDhOKQ9zLYsAgXZ6P07Hg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e09d5201-2b39-4fd5-fa2f-08daeeb8e078
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 01:05:03.7045
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 05kDdyYP/G/CTqXLvs3SYAL7/ES5xSW1Ep2y9056GXw4L4ogIwL3+qjXzLDZIV6mOpKvRoXUZ+8pmG457OLVSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5215
X-Proofpoint-ORIG-GUID: nyMB4c6vzEdnvhfDV5Xu3Z1RI55Ix2fg
X-Proofpoint-GUID: nyMB4c6vzEdnvhfDV5Xu3Z1RI55Ix2fg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-04_07,2023-01-04_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 adultscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 clxscore=1011 mlxscore=0 suspectscore=0 phishscore=0
 mlxlogscore=801 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301050006
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jan 2023 01:05:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58927

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 5673b73..8bdc3de 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,7 +17,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "kirkstone langdale"
+LAYERSERIES_COMPAT_selinux = "mickledore"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.25.1


