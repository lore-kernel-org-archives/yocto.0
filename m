Return-Path: <kexin.hao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AF29C48291
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 10:29:45 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.59727.1707128979936942223
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 02:29:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=kJzpb4+S;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2765a7b064=kexin.hao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4157cI0u023477;
	Mon, 5 Feb 2024 10:29:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:cc:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=ocmLxT1RuRjrc1kn1s
	VYLldwbWuGGB4/JzBmmSC1y6I=; b=kJzpb4+SvGAVLgYS7Bz9LDdyexHuLe2xo2
	0PkDo25orHJRVrreyQo52gPNCs5i70tqWLp5LS92n97+yt/l2ZupdyjR2gj74yX4
	Dk+kENd3pZMpAsDykVikbJi8Vy7PfLpGW8RL5nYheDLYMT9oCc3wnek7gwSo7Y6W
	OUgYXyTn2Fpj+eQA8eX2gIJmFJ5gBYAZqrLTp7ByVmOuoTHRKbbo5PTPG7DZAzzt
	jbi1VanX2mcQWHzIY2pdFS/VxJjsRveNd/UnYLbDXj0ii1WPthW1SLQvXI334tYm
	GqaANFpwLo5bBiwv5LVyXDOUPFRnMjGnrgAHA6p6yLzx177vMQXA==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w1cq0hp12-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 05 Feb 2024 10:29:38 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6qIrDo6sxfwtmDEvHNfNBQO0DCIJBslDk9Xi2rxXz1hgWEgD21PlzqIjFt1uCrALM5srevQKV0w8QWgX5yuzE+FAiAwRll7odbiaHIZ4Yr8fIcuVIye0QLZUsdiCpx9QEIwKDDPF7mCVP8pEXTqGPHL6feX55454EYWoPkjpyq+o4ZjtrwZS/Ym/RSZ4V0u6TcZowckIBsncVmWE64U4xVFIMkvgzwy+mFSuktlGNFZDaGZOZucMalNrvVNEZDkYPE515NxCdEj7ry0rlMtxZ9SRaCAVqst0QXZUVOfzDZyMxy7P5LtKXw6Cu2q27S4bLG6gqpCTak2L6pdfxLDKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ocmLxT1RuRjrc1kn1sVYLldwbWuGGB4/JzBmmSC1y6I=;
 b=hwrVdMKv566Wmk3WNGfHFnxnG6nDPZu6ChUdiBqf1/mPJMC+0ZdAR48STx2Gh0YPn6NA+RxYq0MjN78DaR/u0r1yYNJwutSuG76R7vMv3Z2She9i4HIZu+jpLsEym1YV/5t4K4PbA2/9UHXcyMANcrhsyeKuWByyvmDSJU9iRDnaHjxdOVhkJ7RGaDa/tly5nQhdgSemUvcreVlAd2+UqpVzOgxF7VLpDeLz0QzqkWk4ul+5P+TgKADjpsoRmM4QR4VwGUudnZmjPFuvr/mFVO5FplhE+Xvg+U4KnUhPHDD7x2JlBfRb/nl0N4BJ2pKGCBWRb1FWkBzBSNESs/GL4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 by IA1PR11MB7920.namprd11.prod.outlook.com (2603:10b6:208:3fc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 10:29:34 +0000
Received: from SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::eb2:f350:d19a:61a9]) by SJ0PR11MB8270.namprd11.prod.outlook.com
 ([fe80::eb2:f350:d19a:61a9%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 10:29:34 +0000
From: Kevin Hao <kexin.hao@windriver.com>
To: Yocto Project <yocto@lists.yoctoproject.org>
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH] rpidistro-ffmpeg: Fix old override syntax
Date: Mon,  5 Feb 2024 18:29:10 +0800
Message-Id: <20240205102910.3778516-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.40.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::35) To SJ0PR11MB8270.namprd11.prod.outlook.com
 (2603:10b6:a03:479::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB8270:EE_|IA1PR11MB7920:EE_
X-MS-Office365-Filtering-Correlation-Id: e6abda9a-51a1-4fb3-5042-08dc2635586b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fdJq+nuvK8zy4HBwLBJdHuBF7sNjqYT6j6izrw52E198rkpAwDkcFJDZgH/9y4PtkYvFAzFXyFiPbYK84NGbf+o68/BmASIdPbTd6a1AxWk44BbDD8cPe6+hMjGfSp+2D5FJu1X+KDCenTR2D81uEPGiDE48zcblBC5B85RYQWy6/a/x6sSgawyLWtnEfNNkomOw/lTt1ZRW5LOMMLRbsBCN2cIJBA+AwPh7gKFzC8V5tSuHDNsOUElo5U4dltug3QIlwqiqNB2NXuhNTqoYePo6+OTLD3hNffdnXXSObfXj+vDvWTaFrSsWauajRVPRkk1GWKqmqKW5y+ICZ3hGzOV7RvSSjz/pQQKxwC23ZMfwERTPqJOUfyWRI4YqUmmtoiTJkwo6X76Un9VNQgurVt8JscIVgCwp7jUtzl6Xmpui8C9ovHHL1TuqP4FNvzni1ZOgw73eZJqWg4vyDILYYOSjOzAvOA/KLgrOMZAft42gyS/OXabEOZlho97AKWgkMbdtPa8vHjNi+bEMYLCd6i/UElPaYSzdVaswn1aanQEehATlB2Wvj6OVJWLErZQqliy3bOWrLDLA+znDjL2QH2KGSOIF73M+a1gaYHrJ9Ys=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB8270.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39850400004)(346002)(396003)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38100700002)(52116002)(6506007)(6666004)(83380400001)(316002)(86362001)(26005)(1076003)(41300700001)(2616005)(4326008)(8676002)(8936002)(36756003)(6512007)(2906002)(478600001)(6486002)(966005)(5660300002)(66946007)(6916009)(66476007)(66556008)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?iw7je2Bw4zCETs9lEeqCeD8ajdB8PGRPudO6TsayjdiSgT3z5m9FTwHfbwV8?=
 =?us-ascii?Q?b5MMqD/t9XXBVaVNLedwU1SWdQWmhu+9kXNfLBUAWkBeWDS4OBT1dYkz4JhV?=
 =?us-ascii?Q?NHzai0V/jkkUx3XJRGDQEc6SR7vjRCPsBGUF95sNA6qtVNMFZFHXBna2rb2Q?=
 =?us-ascii?Q?EAQ6nwEH+FrXM+0NMdgAsNeqDyJ9kIEDqC0HTQrksz+W+Pl3/bwzNBtKkQOk?=
 =?us-ascii?Q?bPCuxK7VTFMAXfB9H1uyeaeX01+BGRUD/U103oh7vfPwPHnCJ6owRR8wd2QR?=
 =?us-ascii?Q?cGo1tBV94lT9uD2DU4BqZz+4tTnkjTbZkwOaH6878yNi/rr3vq4CvszGchEU?=
 =?us-ascii?Q?35xkVN0qPUDYoTF6/QBUdQx6Fhb83WkH1NiCdWn4J6XXGOkfyKDePQeSZgPh?=
 =?us-ascii?Q?barwZTHE3jqDrEq9Q5gdI2C3hshMYT+eyVfMFTMuSzBjKJW/exZP8mUqrcsK?=
 =?us-ascii?Q?gzC0ibEWhKcVzlX9tns7XuAy6TEzy1+gj3jbu2DZqRHPiSOvMIUqPsyhkIxs?=
 =?us-ascii?Q?sf0jzJT4DANXJlBhueM6u/B5rA5TFN6LBNOrhdRAsbmOcw1zmIyFnif4bnlh?=
 =?us-ascii?Q?XGZTWQILJSnKSj/hz76qXlHM7hStHASjt/eMjzugKsTmG0mv1bSz0p3M1cLU?=
 =?us-ascii?Q?LVGrpdwOQossr81tvSNaI6DrHOw8PqTtNGM0rgzc0Yu+9ey+MJcBNJ4cS02t?=
 =?us-ascii?Q?1+V32hTwd1yxwJs/kj3S24/P2qC1HdGL5scLQEE8yFbB3JcBYc/WRZgsdlB6?=
 =?us-ascii?Q?HauGFHuhLejKIxemexj4l0saiNoNwXLHUtWZNlOx3fll5JGLaaVbw4nqQ16o?=
 =?us-ascii?Q?6+5oGDzqRK6G0KGYUb2ri4E+lYUqyXx6t//lkPUgNW3KNizjYk19v4DLenK6?=
 =?us-ascii?Q?WUP1r2gK3FcT1J0ObG6R9LUK5lOWhCExj4m7HcYpCg5vaskrKd5DCsQgDrTB?=
 =?us-ascii?Q?zM55mGDhE6AqavpEhp3aR3/66B4NK/alopTSym78/5ullHwt0+W8PbovDc7v?=
 =?us-ascii?Q?GESA5nQkAfXByxcAvpct1sqkfkmCxR2HkN60ptnjj3LZylQMavqkasQydSH5?=
 =?us-ascii?Q?TEDjocMeKJMIuVpMXUONQFPBC4SA+bWPwBuNNohKaQWHH6Atas8x9XpvB12q?=
 =?us-ascii?Q?aMhf+zFW/Xhsi+fFMMj7jQ2JArIdf0B7rSSDwZTcwYYYUQPpjpUX1ZYB+BdA?=
 =?us-ascii?Q?dT358u034DWBTXA/bWSSNEG0cp3lbN6t+4WnA/Ozdb9PAMtoU/kTkOOerjXf?=
 =?us-ascii?Q?3BfZ60hEdBDPa8eOkzOeW4P83ajCEFchIPWQmK2Xaadv8amxZOLgguDUFN3G?=
 =?us-ascii?Q?n1LIwNBnJryXutiWjwctvuEvWO1XuHoLj8xTqaXGMbQl+1YHLDaEyeAH80yP?=
 =?us-ascii?Q?HxEJyE66xJAwuvakDU8zLtVNhpo0mM5x1K7XCPdTfttWb4gtppuHZxz7oz22?=
 =?us-ascii?Q?db6OLQcuNV7hFMmcpsFB201Y+0g0ouhO/J8q4ojkhFOJCnC9WgvH8uoS+oej?=
 =?us-ascii?Q?A2/ESd07r2w6pV4zDne/2uz8XqCJyG8YU7dOk2avHgeQW1Hxwu9FPdsUmVqs?=
 =?us-ascii?Q?5Pv5jBMVqiC69b+Y0Q+gJ5U3sSLWV/QirPu9kLjZ1hKeVmOc5ILNh5OPnMar?=
 =?us-ascii?Q?LQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6abda9a-51a1-4fb3-5042-08dc2635586b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB8270.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 10:29:34.1197
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s16kWTQxkyZ6LgoD3lAJXOEbLENsrcGB6lxPCPOz5CI7sCqhspybT6tOWXpnQX/fSLXOYymbA7kwBqhpsKeE8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7920
X-Proofpoint-ORIG-GUID: 5ZQid2RyhaDdChQwXAwdk4YxZM2_BlGf
X-Proofpoint-GUID: 5ZQid2RyhaDdChQwXAwdk4YxZM2_BlGf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-05_06,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 mlxlogscore=816 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401310000
 definitions=main-2402050078
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 10:29:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62392

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb              | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb
index a4a7f90edfc3..5a8ff8fa9c96 100644
--- a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb
+++ b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb
@@ -23,9 +23,9 @@ LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://COPYING.LGPLv3;md5=e6a600fd5e1d9cbde2d983680233ad02"
 
 # Build fails when thumb is enabled: https://bugzilla.yoctoproject.org/show_bug.cgi?id=7717
-ARM_INSTRUCTION_SET_armv4 = "arm"
-ARM_INSTRUCTION_SET_armv5 = "arm"
-ARM_INSTRUCTION_SET_armv6 = "arm"
+ARM_INSTRUCTION_SET:armv4 = "arm"
+ARM_INSTRUCTION_SET:armv5 = "arm"
+ARM_INSTRUCTION_SET:armv6 = "arm"
 # Should be API compatible with libav (which was a fork of ffmpeg)
 # libpostproc was previously packaged from a separate recipe
 PROVIDES = "ffmpeg libav libpostproc"
-- 
2.40.1


