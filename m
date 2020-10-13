Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1109.1602608022856593563
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 09:53:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 questdiagnostics.com}: parse error for token &{10 18 spf.messagelabs.com}: parse error for token &{10 18 nets1.spf.messagelabs.com}: limit exceeded (domain: essvote.com, ip: 198.145.29.25, mailfrom: michael.davis@essvote.com)
Received: from us-smtp-delivery-164.mimecast.com (us-smtp-delivery-164.mimecast.com [216.205.24.164])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4759238C1164
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2020 09:53:42 -0700 (PDT)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
 (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-pfW5Y_-xMvSpDwIPoG7yjA-1; Tue, 13 Oct 2020 12:53:39 -0400
X-MC-Unique: pfW5Y_-xMvSpDwIPoG7yjA-1
Received: from DM6PR17MB2474.namprd17.prod.outlook.com (2603:10b6:5:69::15) by
 DM6PR17MB2298.namprd17.prod.outlook.com (2603:10b6:5:ad::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.29; Tue, 13 Oct 2020 16:53:37 +0000
Received: from DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4]) by DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4%6]) with mapi id 15.20.3477.020; Tue, 13 Oct 2020
 16:53:37 +0000
From: "Davis, Michael" <michael.davis@essvote.com>
To: yocto@yoctoproject.org
CC: Michael Davis <michael.davis@essvote.com>
Subject: [PATCH] conf/layer.conf: Add dunfell to LAYERSERIES_COMPAT
Date: Tue, 13 Oct 2020 11:53:22 -0500
Message-ID: <20201013165322.146248-1-michael.davis@essvote.com>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [23.152.176.73]
X-ClientProxiedBy: DM5PR21CA0028.namprd21.prod.outlook.com
 (2603:10b6:3:ed::14) To DM6PR17MB2474.namprd17.prod.outlook.com
 (2603:10b6:5:69::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (23.152.176.73) by DM5PR21CA0028.namprd21.prod.outlook.com (2603:10b6:3:ed::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.3 via Frontend Transport; Tue, 13 Oct 2020 16:53:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76c5a42e-db4d-4073-ed27-08d86f98873e
X-MS-TrafficTypeDiagnostic: DM6PR17MB2298:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR17MB2298E53C7F757A1A5B76EBBBF8040@DM6PR17MB2298.namprd17.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: mtNthnm/Gko8sjjN7ShGapbK+6r5E1tJekoqXvo91YLgXiuzl/DfZbWn7R8efsLV6KpgCD3b3DAtgv6vZzty2DNjDydUtz36VxHVkOOwNRKX82mpUO4ALE02x91juVzD/rgDkWgsaaffuvmO8P5bUQbN9iHy70GoEJ2Hen2vdESSKBmrhuTPhaDAOS+a63wg5/VlE5TLp5mg9lLXqoSVsugEn2p4qFMi+GEa7v5YCQGUJa2VKMu9H2kDhzE9tCsWOoNsz2uLlJ+HdrVEl+mqz1qB0JFhOxEY8aHPAzaox4E5IdyLADI/17VG2CTTKy5ZHOdVeXuCWqyIdONGJTMpXUqoZsqyimvNFgMyZA/DyN9p9iM9l2Or80frqWgJmfzR
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR17MB2474.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(39840400004)(396003)(376002)(366004)(26005)(44832011)(86362001)(36756003)(956004)(1076003)(52116002)(5660300002)(69590400008)(2906002)(6486002)(316002)(6506007)(8936002)(8676002)(186003)(4326008)(107886003)(16526019)(66946007)(4744005)(6666004)(2616005)(66556008)(6916009)(6512007)(83380400001)(478600001)(66476007);DIR:OUT;SFP:1101
X-MS-Exchange-AntiSpam-MessageData: 8Y62+uW+/D/fw8Kb2VgR3Erk5orws6y5Hwl/Iq4G5zORgIVYseXiFuu6Jv6HnRbTYZIOhUBGgF3bLo7vUj2Ild7S0nenmdg3WuPxX0HlJ+r0Z/ejnF3R4wRAsIIDtG5NgtH59eQhFyNEPpNG5BUlmybbpQbcAXbzcSz1NBKnQeBFo4b1QA2pfof9yBivVlPUBTEEn88PFuV3lRHAwGjTgrzoiTviyZBAMvBoHuwIXFGbqkcRQHf61o3DwbqSMq/OtPq8uav78hU7ljTVBZCcoHkeABOHgUYJK2NXPrdbyu21mu4O7BUd55fMwD5A8OXnIpU1tnuZDkrmV3xOqvK4Z27Usg5sGpKHwJzklS2CplFkeqMfwnXld3smFZRfco7JknD5XicFMH9V+K/j5d5dqfd+JBrYb5o8xLlCVL72IMNutdWWa+xy7ylJXMqfo0l1js585U6lBF1SnTb9CF2lr1llzRUYMALmwFGXZN4pjGu8w07GtRkj/Kp7WNuWBnZ2MDtdg54Y1nhVezviksR9XXDg24mzWJeMVMlSNN0nUGbxoO+MvoHXjNJIufS3/MrQgkobuMU/ZpkWyzgEaJWCrFsKDvZd5CFoJz+fiJ3JtwNZjTAWCJSWBKDDXzvt9cgeG0y9/a+E5lbUBfdlx/YTcQ==
X-OriginatorOrg: essvote.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c5a42e-db4d-4073-ed27-08d86f98873e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR17MB2474.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2020 16:53:36.9194
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 55818b27-dd2b-48d7-b7c5-95b96a0b1261
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NVgeJ73Rf/nwpoV1wpgakOIpPH+91W3aiH+K2RaPoOH79O5ps5Moj2VjtnpAN+C04m2bFy2fPrdW6DQvxCvjtX56kOGGf0LIqJUKz85XKYU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR17MB2298
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA64A369 smtp.mailfrom=michael.davis@essvote.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: essvote.com
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12010131253402141"

--MCBoundary=_12010131253402141
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Signed-off-by: Michael Davis <michael.davis@essvote.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 892cf79..1559f57 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips =3D "5"
=20
 LAYERVERSION_meta-openssl-one-zero-two-fips =3D "1"
=20
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "zeus"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "zeus dunfell"
=20
 LAYERPATH_meta-openssl-one-zero-two-fips =3D "${LAYERDIR}"
=20
--=20
2.26.2

CONFIDENTIALITY NOTICE:

This e-mail transmission and any documents, files or previous e-mail messag=
es attached to it may contain information that is=20
confidential, protected by the attorney/client or other privileges, and may=
 constitute non-public information. It is intended to be
conveyed only to the designated recipient(s) named above.=20

Any unauthorized use, reproduction, forwarding, distribution or other disse=
mination of this transmission is strictly prohibited and=20
may be unlawful. If you are not an intended recipient of this e-mail transm=
ission, please notify the sender by return e-mail and permanently
delete any record of this transmission. Your cooperation is appreciated.

--MCBoundary=_12010131253402141
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>Signed-off-by: Michael Davis &lt;michael.davis@essv=
ote.com&gt;<BR>
---<BR>
 conf/layer.conf | 2 +-<BR>
 1 file changed, 1 insertion(+), 1 deletion(-)<BR>
<BR>
diff --git a/conf/layer.conf b/conf/layer.conf<BR>
index 892cf79..1559f57 100644<BR>
--- a/conf/layer.conf<BR>
+++ b/conf/layer.conf<BR>
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips =3D &quot;=
5&quot;<BR>
 <BR>
 LAYERVERSION_meta-openssl-one-zero-two-fips =3D &quot;1&quot;<BR>
 <BR>
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D &quot;zeus&quot;<BR>
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D &quot;zeus dunfell&q=
uot;<BR>
 <BR>
 LAYERPATH_meta-openssl-one-zero-two-fips =3D &quot;${LAYERDIR}&quot;<BR>
 <BR>
-- <BR>
2.26.2<BR>

<br><br><p style=3D"font-family: Verdana; font-size:10pt; color:#666666;"><=
b>
CONFIDENTIALITY NOTICE:</b></p><p style=3D"font-family: Verdana; font-size:=
8pt; color:#666666;">This e-mail transmission and any documents, files or p=
revious e-mail messages attached to it may contain information that is conf=
idential, protected by the attorney/client or other privileges, and may con=
stitute non-public information. It is intended to be conveyed only to the d=
esignated recipient(s) named above.<br><br>Any unauthorized use, reproducti=
on, forwarding, distribution or other dissemination of this transmission is=
 strictly prohibited and may be <b>unlawful.</b> If you are not an intended=
 recipient of this email transmission, please notify the sender by return e=
-mail and permanently delete any record of this transmission. Your cooperat=
ion is appreciated.


To find out more <a href=3D"http://www.essvote.com/legal/" target=3D"_blank=
">Click Here</a>.</p></body></html>

--MCBoundary=_12010131253402141--
