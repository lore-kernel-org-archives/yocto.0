Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1207.1602608219418037095
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 09:56:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 questdiagnostics.com}: parse error for token &{10 18 spf.messagelabs.com}: parse error for token &{10 18 nets1.spf.messagelabs.com}: limit exceeded (domain: essvote.com, ip: 198.145.29.25, mailfrom: michael.davis@essvote.com)
Received: from us-smtp-delivery-164.mimecast.com (us-smtp-delivery-164.mimecast.com [63.128.21.164])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 83FDD38C1164
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2020 09:56:58 -0700 (PDT)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2056.outbound.protection.outlook.com [104.47.45.56]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-eI2a6QfVNHGVWY8ANDl6XA-1; Tue, 13 Oct 2020 12:56:55 -0400
X-MC-Unique: eI2a6QfVNHGVWY8ANDl6XA-1
Received: from DM6PR17MB2474.namprd17.prod.outlook.com (2603:10b6:5:69::15) by
 DM5PR17MB2027.namprd17.prod.outlook.com (2603:10b6:3:8d::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.29; Tue, 13 Oct 2020 16:56:53 +0000
Received: from DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4]) by DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4%6]) with mapi id 15.20.3477.020; Tue, 13 Oct 2020
 16:56:53 +0000
From: "Davis, Michael" <michael.davis@essvote.com>
To: yocto@yoctoproject.org
CC: Michael Davis <michael.davis@essvote.com>
Subject: [meta-openssl102-fips][PATCH] conf/layer.conf: Add dunfell to LAYERSERIES_COMPAT
Date: Tue, 13 Oct 2020 11:56:40 -0500
Message-ID: <20201013165640.147029-1-michael.davis@essvote.com>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [23.152.176.73]
X-ClientProxiedBy: SN4PR0501CA0035.namprd05.prod.outlook.com
 (2603:10b6:803:40::48) To DM6PR17MB2474.namprd17.prod.outlook.com
 (2603:10b6:5:69::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (23.152.176.73) by SN4PR0501CA0035.namprd05.prod.outlook.com (2603:10b6:803:40::48) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.13 via Frontend Transport; Tue, 13 Oct 2020 16:56:53 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a7ee58dd-3adb-4fec-cf63-08d86f98fc72
X-MS-TrafficTypeDiagnostic: DM5PR17MB2027:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR17MB202794ACB6A05323F8A7E31FF8040@DM5PR17MB2027.namprd17.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: wUAcHmayTxEwFJxoJeAyxywqvyd8l25F737dCutmKV3/mFp2tC6dwubunuicJAX61XTFX7CtkAT9kUntJBBloqHnfzR7uCNh1YlQ6gGMKcF1Yb96izoM1W481j5udKGTZ7Mm4axtFtTLt+m6dqLMJPvIHbuMnmBiWXPcnvwBCqqqigINMKlwz7Ea0bVgtw6wc70fkp+jEOE9/7DQA3tpXUtrNDfkWSUoahy7klbrtRAuwUPyeHBckzxi4sJodJWllHF2ei+XzOpfQ1IPMKQC+gkm1RfrWprjBRIjV9lrmS14+a2enyKjaju3hwXutWkMttSNvBv5OKevyK0gWcn5LSxWc8q9ADQ2ABLT5uTz1eZSAQA/22sISlwXnLvyD+mi
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR17MB2474.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(39830400003)(346002)(136003)(366004)(2616005)(956004)(83380400001)(66556008)(66476007)(26005)(66946007)(86362001)(44832011)(69590400008)(6916009)(478600001)(6486002)(2906002)(316002)(6512007)(107886003)(8676002)(52116002)(4326008)(6666004)(8936002)(5660300002)(1076003)(186003)(16526019)(36756003)(4744005)(6506007);DIR:OUT;SFP:1101
X-MS-Exchange-AntiSpam-MessageData: O/biZJ6WkRtyrfoE7ukk7He8HN6KmSK7Wl8PQKeve/wrsXPdOF3llChMYnF2UdKulKTYmCm/UjI8SeuYPqBlE0W4YRRzLt9U6hzKljMQ7itGHxO6e4Ueku9Bu7Yx/vyFJBBvUuUq4TM6g85ixigBfVYsH9BJR8LgCoV38SFd2MtcCeqoTLLid5axo72SwGa/xu7PT7aP45N1PljT8C0q7Df+p4RLriQseZEQunGzu7PYPk5SD3ipT5nnHYxqv9RjBYGf6mW/sdht969OvjfZ/YsWUTyM8Wf1KiArmocNiMHjW8kmdvYP5jgGeCXUtOrZqJJgxNfz910+Ww+1aQ84Q6zJkeXFNpIvUZ6iU3T1rxBA6UfdZFUITdSRdITfQ95RJG+FE6KHfqKyKrheGPvjpf4sisJbThd2WQ6vEmA9Gw1U34c5hdSmtMMdySDhOSRIb+XF+vLHDupV8Y+af8jSeUZ96W5sJs1VDcN99vfOJsEHdt7M6RuftgE5gM3kGre8xt3EYPdEp+h9N4Q3meZLNOe5t07tPoLYb+MBl+URD8LrB0dz8aASpGQUJKHVdeq8H3usXDnkt8EIz8+BL/vzJry0dLr6cijc6ZAZzBEgH2zgU+HCI3x9YokxQivANxeLkMgNBo0nzzb/o16p5pBb+w==
X-OriginatorOrg: essvote.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ee58dd-3adb-4fec-cf63-08d86f98fc72
X-MS-Exchange-CrossTenant-AuthSource: DM6PR17MB2474.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2020 16:56:53.6068
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 55818b27-dd2b-48d7-b7c5-95b96a0b1261
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qNrJN7vjhPMR/+5B7227UdMMU+6/WpUs33gzLCIxAlucLRUIbwhuMHPnMU2vYHgfnvwKDkYK92VJoSoDmRpt9T7eDpoXcL8b/qYa/x0n1WA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR17MB2027
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA64A369 smtp.mailfrom=michael.davis@essvote.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: essvote.com
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12010131256552631"

--MCBoundary=_12010131256552631
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

--MCBoundary=_12010131256552631
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

--MCBoundary=_12010131256552631--
