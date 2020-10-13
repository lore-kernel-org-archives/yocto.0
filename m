Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1091.1602607958567418147
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 09:52:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 questdiagnostics.com}: parse error for token &{10 18 spf.messagelabs.com}: parse error for token &{10 18 nets1.spf.messagelabs.com}: limit exceeded (domain: essvote.com, ip: 198.145.29.25, mailfrom: michael.davis@essvote.com)
Received: from us-smtp-delivery-164.mimecast.com (us-smtp-delivery-164.mimecast.com [216.205.24.164])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6A8CB38C1164
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2020 09:52:37 -0700 (PDT)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2172.outbound.protection.outlook.com [104.47.56.172])
 (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-cIqP2Ph-Ov2cEdHvUoZbAA-1; Tue, 13 Oct 2020 12:52:31 -0400
X-MC-Unique: cIqP2Ph-Ov2cEdHvUoZbAA-1
Received: from DM6PR17MB2474.namprd17.prod.outlook.com (2603:10b6:5:69::15) by
 DM5PR17MB2027.namprd17.prod.outlook.com (2603:10b6:3:8d::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.29; Tue, 13 Oct 2020 16:52:29 +0000
Received: from DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4]) by DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4%6]) with mapi id 15.20.3477.020; Tue, 13 Oct 2020
 16:52:29 +0000
From: "Davis, Michael" <michael.davis@essvote.com>
To: yocto@yoctoproject.org
CC: Michael Davis <michael.davis@essvote.com>
Subject: [PATCH] conf/layer.conf: Add dunfell to LAYERSERIES_COMPAT
Date: Tue, 13 Oct 2020 11:52:16 -0500
Message-ID: <20201013165216.146141-1-michael.davis@essvote.com>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [23.152.176.73]
X-ClientProxiedBy: SN1PR12CA0048.namprd12.prod.outlook.com
 (2603:10b6:802:20::19) To DM6PR17MB2474.namprd17.prod.outlook.com
 (2603:10b6:5:69::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (23.152.176.73) by SN1PR12CA0048.namprd12.prod.outlook.com (2603:10b6:802:20::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20 via Frontend Transport; Tue, 13 Oct 2020 16:52:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c260d348-4318-4ff5-73bc-08d86f985f12
X-MS-TrafficTypeDiagnostic: DM5PR17MB2027:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR17MB2027EE1FB6BD0909571ADA34F8040@DM5PR17MB2027.namprd17.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: M0WOkd/5Al9GHF7nii0EL9IRXy+fpOX/9GBCrtLu+LRKxslm1tgLTNfzsMWBSdAyOuZ8ylfCpCsqrgE2SdHHhrf89+1SFuK1ex9x1UKs0n/MbheyzyW6R5ALh3Qhx8I5tTXFrXgx/RXUhbxzrMS0gWS7j2LDfMcoTpGsuZxCYVLDxgMjsAIOnGWxwJKBpvQDDlBN/cdVS0w67EFyRu5ejI76p5nYVYFmb2fTDYXbBkv49yHfHTVQ4SkGOiLHOMqjhm1/KTQ5fISS/FGO+U0ly4nRfn0DtRgSi8uyqcmcZY6a9qP1Ra763OK3c/ghpMJxSec2TmyyLG1toi7cNLhqBRTnuR9/QnMJTs5JVgine1LFO47HVDXt5NyScLBIbVmn
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR17MB2474.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39840400004)(136003)(366004)(2616005)(956004)(83380400001)(66556008)(66476007)(26005)(66946007)(86362001)(44832011)(69590400008)(6916009)(478600001)(6486002)(2906002)(316002)(6512007)(107886003)(8676002)(52116002)(4326008)(6666004)(8936002)(5660300002)(1076003)(186003)(16526019)(36756003)(4744005)(6506007);DIR:OUT;SFP:1101
X-MS-Exchange-AntiSpam-MessageData: nLEPGE2McTNPCZzk2hchksDUErOfe/CX8Snp67YBzhbAetd+BtVZZkdBqc+SIysbO48WyXDChA2nEH24StOe+scVnf9VRyoCscx8IyT01xDCy1jc2wRDzYB+wNxz5GkjLdIYYXL/EhgRrsHCD4ZP/e0RB4IYz0cbRRFYC/1MAeW9xTAZ5MotfNfsOv6IxEPuhLHyBGnxqbeH840qtOubHv/FG5pzuPxtU7TEyD0+yh8hr/MuYwcylHiyVgbnq1ER6Fzc1xTWUX8ted/9rG4mwvhZhezjpidcDNgeBpqd8aYnr2XVucimEFTFR2iAbVWbZdCjbxhTfCA1USmLIJ7hiqh9+ppSkm5hJH9DfLRk1pwomyJdmUmTyNLS5iT0mX+wH6k0riWECEmV8tDtbTseLwP4y+ox5/IEJRLNmh/MY3jNZMhoUR6h96R16XL9fwT2JapLN5L20JPX6N9fEXF2X0URMWv4/RjqidcbHcVH1WQdo9zNVzUDFo6+lb4RDKtppH7MdP8FvI7UiJw/PHWd2TzxXGlbh+dLo4H/lBFBFIivhw8EpD1vUErdkuIgagoTl+SDMsJTORuwfe+mpA1gN/6PKeY1ciXQTobmCRxa/lc0talNDKq0kD+fA7H/DbvZbjLCsYflGhQGi3NQYmd7KQ==
X-OriginatorOrg: essvote.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c260d348-4318-4ff5-73bc-08d86f985f12
X-MS-Exchange-CrossTenant-AuthSource: DM6PR17MB2474.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2020 16:52:29.5441
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 55818b27-dd2b-48d7-b7c5-95b96a0b1261
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKwXjW1ZLANjDvL0zSkKJYkQSIGWTK3aQr8fdcwAw0wCDyBTzLuTx2Vkt8/LF/5YCl0ZdGRlPUT4Aameo8bUFEzDyMcAaeZ1IhnHVv/1Yb4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR17MB2027
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA64A369 smtp.mailfrom=michael.davis@essvote.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: essvote.com
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12010131252331271"

--MCBoundary=_12010131252331271
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

--MCBoundary=_12010131252331271
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

--MCBoundary=_12010131252331271--
