Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A47C43334
	for <webhook@archiver.kernel.org>; Wed,  8 Jun 2022 05:44:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.3203.1654667084557194500
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 22:44:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ge0TCKlp;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=31585b7173=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 2585QJmN027812
	for <yocto@lists.yoctoproject.org>; Tue, 7 Jun 2022 22:44:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=fWiL3f6dq/3UmKvZQRZiGzB5NprAaHyDAHtdhTziITk=;
 b=ge0TCKlpw8JvSHGzORsYCcZKKX3OM4LjzCOlBC5MAMxlwPFWBljhLmmxTdmu+fv0vUZT
 tADt+mALiS9jpqNH036wkDNPpNhD0OH5eeUETNekLL0sFzQgl/+wJJ0fbCxTcQZmDcaM
 3c8J2ttdfzxCCtdCu073IYt5UktSJ49kFdQVxictj3P2YIjxNy1Fup1aReZ2qxNjHNoy
 BbH7R+4o+EQ/lS1rSHPmfqlZm+AY+gdltN+idKkytQJ2LBLkt2WacSxLP+KQJIv83R14
 umYcGTSV3ihu9UExCZXt0/qkbZI0AblaMAk4IbIhisMTL2ScalaENBCW5ks6+nwLQGaE iQ==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gg6wmakht-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 22:44:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXxfkOYRUFD5MyQ7onW65AhjUxM5pWQ/TdK5mEozVQ6W6SwR3XrTygosrrBR9miL0Y0GAg9ZlKwqD7Dqvm+4FwxStI+35axNPq1FnFrSl5OeFUGoAII68PNnVpleo5a+3OhC6EsXO5eex4M7oKgcNcjoJvbc+YRUbr+CVgXYwi83Z5TlEnGX20euS0bf1FetUhS1JXJCIUEjQUvxv3rYU2EHOVkZUhlx196C6BWQZFWI5pN+aPy+nV3Ndjpv9soDPnJ6Wa2wbTc0nSzqEtaVM96LHIQsuSU13rGhEZcZ9Zf0L3dgeHWtlj4OiFeBiq2fMgDLgJA05mNKHkXVvb0ysw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fWiL3f6dq/3UmKvZQRZiGzB5NprAaHyDAHtdhTziITk=;
 b=Jv4M90VE26yW9uB/fd4+cpCnPScBuCTzo+dUmjVDaYub2xh2rhXDcB4J6TrXEY1yu0jcN7/EOdkeV6F6wR2Jlw+2q0wCm1tbKmjZnb1oPL+adB6dJJIpJa6TcZiFe6me9sn33aFdCzVFaueNOA481iI9I5jjF6v1fXaJlIKTvAp/Y6S4112Z1VCf4E6EaVD2AXrOv1tgqJQPBoEPR/JaCMoR+TrWwrXnIrZ+dfePZDtClQQ9Kds5VIgrJEiYSfqkBScr9+oxqeqRxodAJM0oOW84G0cwGuIr2AcyCo2vAnk8wXfdZx0hfzatfeooMzHs2O7PxXYg1tiZcrvwPaFAfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19)
 by BL1PR11MB5463.namprd11.prod.outlook.com (2603:10b6:208:315::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Wed, 8 Jun
 2022 05:44:41 +0000
Received: from SJ0PR11MB4878.namprd11.prod.outlook.com
 ([fe80::e1d5:f8a:7956:87a7]) by SJ0PR11MB4878.namprd11.prod.outlook.com
 ([fe80::e1d5:f8a:7956:87a7%2]) with mapi id 15.20.5314.019; Wed, 8 Jun 2022
 05:44:41 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] aide: fix typo
Date: Wed,  8 Jun 2022 13:44:24 +0800
Message-Id: <20220608054424.1572712-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2P153CA0044.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c6::13)
 To SJ0PR11MB4878.namprd11.prod.outlook.com (2603:10b6:a03:2d8::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4f39aefb-8f2e-4509-fd2d-08da4911fb59
X-MS-TrafficTypeDiagnostic: BL1PR11MB5463:EE_
X-Microsoft-Antispam-PRVS: 
	<BL1PR11MB5463902D5AD25008B71BF502F9A49@BL1PR11MB5463.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+2srxlOPDOgQd3nbd0H751ux6bBbNI4KQijmQSfYdLt0CzunAcRueP11inSJLLX7dNV+7MDC21wp1Aqx9FXuZ8quqCa0Bf0wP6GYBPse0vzF6GGSxohvboVeA7kOY/OF4VSe04T6TrCTq7OuaUwn8va7025d70yBpNgG3ktFOhjKp0F6zEfluJTopQjkCXYmY8SocRXw7KhgQ5KCnk2fwlNqMxQ8s1+t0CzvouoYj/Rx8kX6j96PbCyDDbM36Xc+Yq55RDcEnJciq1x/WqYd2nGBMEkgRXwrwpaJzUXthtMxG13eBGpR6dmJYaYQ73Dqd6wNQLTe0EZleRh1r0TEH1taGFA0/Hj4qA4K1B1dH3AeZvbU+f1AVQQMjsbxwZbET9qUFXbDKs1GT2ni9IQVAcw3xWF2ebkK2lEsLLaXCtTRdJY9G1B18+UUZx0L645l2ulcBoGUgyKpLNUlKTFRXEC9Ke1KcP4MCKKjt+NNwbW2+2eEyLy92vYkDC52bNCmpwM4TWcVqn+4DTR/ArISbhx1o31YO/6krmSFJmd/Dwt6PWGRku9h0s297aMUpE1FQAazyKa2ZIO2vzkHuobNkUp/L1uC1Dn5KexkY4x7pXaS9pWeps0RuXE0lHDxLF/bdVs0VZupeacWM7ReEoOZDzvmqjdc/3B2l1RnLOvSiHHAOLz0FKf+avpfEqg1cZct4HaTeATEIMKCtvy9KmlnVw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4878.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(83380400001)(508600001)(5660300002)(6486002)(6916009)(8936002)(186003)(2906002)(52116002)(86362001)(6666004)(6506007)(1076003)(6512007)(26005)(44832011)(4744005)(66556008)(66476007)(66946007)(8676002)(2616005)(36756003)(38350700002)(38100700002)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?v3Ovxo4yk4+hzS1kjXWadFzRBk6iePbct/9NnfWTBO4JUN6HaR9ifm79Qwfu?=
 =?us-ascii?Q?hTiSQVTAOjrkleZ4nj28N8dzxvzzSZmQfCj3HIsMIjS/EGLBD2gYMa5X5hnB?=
 =?us-ascii?Q?vresG7dncI1arc0rGNM7ymYyQTydK6xUuEGMm3QCtT8IU2BfQ1l6IcTHjhly?=
 =?us-ascii?Q?a+HWhIrQg3hefsk7/TgmLXqfDbRz8bWQz1xuLUzpBvVrVv9JQXr+gjsuiFdB?=
 =?us-ascii?Q?SccWTO5yG6HsdYn9xcPH21v2qG5A9NsCyk9d8wDwYHhuuiZ8r6sEdNr6NIil?=
 =?us-ascii?Q?jQd904nnfiUUvU4qAk4fTjbgB4xU8hgPgmkc41lLuXmLu05WXUur6/34DjjR?=
 =?us-ascii?Q?xd5SBxRundKBVbm/NYp97qYWd/TgMvalf2gBmIiZSamv+bO2b7y7ys2BI15Z?=
 =?us-ascii?Q?qgvfcXFv7OsorCqVls9KkcxxRRbmuf+quCeYgVOkgJ46sMuOKhOYTZDFpsL6?=
 =?us-ascii?Q?sdtHGR87UL5V3p+j1v3eXRvHXU5FoGRMrqOKqCdaqzrqI3fxA1XQPthSTDbr?=
 =?us-ascii?Q?xt+UJ+qiQhm6B8WVwiKpDL4oEf3UA3yCI/j4akxbXMb83WKMoV6n0NMpfPd3?=
 =?us-ascii?Q?ka13Bjp9KDdLVQKUQfqPFWmcx9TqvRMuRDOl0pC48Q65pZJHdS+RqisUw04P?=
 =?us-ascii?Q?87sW7wB/gNp2aDGXMD5PhOFe61AhGdFbYCAmmKfpB/ydQU50wyVaODVYeOFe?=
 =?us-ascii?Q?Q9XvSeQH+tOGorki7zCBS99l+GkZkGehUqrX4iLqDDaZstr5Bo0YsgPo4lHC?=
 =?us-ascii?Q?nnxuk3S8DCFLXzA0Cu/RcVrv48mHdn1ZxO2rv1/ef24Yj10HoeRsFVok/m8t?=
 =?us-ascii?Q?d2Pq2X5YHDm6Yxme/Uh3Xcl4i1kUS+T+d3fFb6RkeK3EW0MizANP4ohnOLB5?=
 =?us-ascii?Q?RPWm2EjuM94w6JDGfFMsvRVGFdfU8OQWeAp9JG5tQdVvUZ8MkkAD6mY65bQ3?=
 =?us-ascii?Q?5pyzUUSMP+xO34CH9q+KyPgY+65bKvHfFZCWQ7cnMKUxoHopRJY/j0ThC8MB?=
 =?us-ascii?Q?66cXFxmbT/qgBV14c74VY8RvRJvMBDoZh2MVIYQ+QmoVV77huGxjwH2LZvLA?=
 =?us-ascii?Q?ZTBKaq7C67kVDNgM+xTKY/YO1klOi9RQy6oP/v7HW/BBLDxSmkF23miJwK5C?=
 =?us-ascii?Q?mNLSFvrQDDP7KUazJ8ZuVZhijHlYysS7YimIXVN+IISlr1jKde76v7jyE/rh?=
 =?us-ascii?Q?EDEWM0O9jbGyHV4EqKXCZm9f7EpTCGgBM2j7I1qAPYzo876HDonmMm+iof3b?=
 =?us-ascii?Q?m+r93fIYvQXfmtZmkEU0KOp6FsyKbQ9pTW11EzTVGvmQ0lXySmmT4U2T4Y4l?=
 =?us-ascii?Q?jSQjg81Mgf0ObJCB9CrsefOKA8vWhPpT8eudmLRH1PH86JD7676xcO598Lug?=
 =?us-ascii?Q?/jQC1ErW0Rl2f2PFWeTpUakW2AKkqIlHR/iNhUye0kO9JsDqPPFj5Bxs9h7Y?=
 =?us-ascii?Q?7qMGh8tOxSC9vtwI7xr/TjPJsNYQsiBgbbU6aRxWRUaUR2pdea3fTB4bYEYh?=
 =?us-ascii?Q?KW47he7pYyXboBBpqt97L41tIw4Czr1EDFCaNR6U4iHs1dezLQvipNLM0V9S?=
 =?us-ascii?Q?SwrpRDXNVSFC77juXj5vjltvSeq9IN7Iipx/G6cK0u9n+ma1Jk8fi/e1Rwje?=
 =?us-ascii?Q?gQzuXiJU/rk6PRXxFj2VbldJ9y7v9jFw3hjIXdi8oCE32o8pfLzbvAdJf3rf?=
 =?us-ascii?Q?ffTFps6gbM4ssML6tsiXDMC+ORCuBPzEU5y8KNX4lDl6yjg+7vBnoO6KEKPx?=
 =?us-ascii?Q?k+XIZ2axOw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4f39aefb-8f2e-4509-fd2d-08da4911fb59
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4878.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 05:44:40.9565
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 OHGaERtL5f/uwAgCHZj3w2z1P7sVnrhmSTvW5HcojcYzvfxAWIV5qKF6of2NCcvSki9MrbWuTUxo5pd2W0bNwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5463
X-Proofpoint-ORIG-GUID: mG5hD1Qb-FPoGFEyclcXD0wyECDA9T2E
X-Proofpoint-GUID: mG5hD1Qb-FPoGFEyclcXD0wyECDA9T2E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-08_01,2022-06-07_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0
 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=555 suspectscore=0 lowpriorityscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206080026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jun 2022 05:44:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57303

Fix typo:
RDPENDS_${PN} -> RDEPENDS:${PN}

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-ids/aide/aide_0.17.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/aide/aide_0.17.4.bb b/recipes-ids/aide/aide_0.17.4.bb
index 6bc2bfe..ebd6ac3 100644
--- a/recipes-ids/aide/aide_0.17.4.bb
+++ b/recipes-ids/aide/aide_0.17.4.bb
@@ -38,4 +38,5 @@ FILES:${PN} += "${libdir}/${PN} ${sysconfdir}/aide.conf"
 pkg_postinst_ontarget:${PN} () {
     /usr/bin/aide -i
 }
-RDPENDS_${PN} = "bison, libpcre"
+
+RDEPENDS:${PN} = "bison libpcre"
-- 
2.25.1


