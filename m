Return-Path: <rasmus.villemoes@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E1BEC3DA42
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 13:11:48 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.68])
 by mx.groups.io with SMTP id smtpd.web10.79371.1720444303936089252
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 06:11:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@prevas.dk header.s=selector1 header.b=WDjENbrW;
 spf=pass (domain: prevas.dk, ip: 40.107.249.68, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PZcMmWmryRz7UNJGsTGZ5vVWGDfYITm3GXKDdl4MGoDW6dX4qXbbz9D4CFqSRmNG26BwSOB/KDKhMTypojvg0EjdPkkLnUNnOjPHT7VpVCEoq5L1iXvQbD0fYkupSx0I4iRkQf9TZwaJs9XRUWo3KGtc5/Vb9psLIklfb8VmswYpKfrXCN747/+I9SI0AUzRqJ9UCyXaNEuUdjPmu7U0AYff3lRoy2iRiQxNuAVROEISzeYimHVYDwBfiQzpw5sgFwc7EUtcM2HfGzsZUOfLxfNzRjLk+qgoMuTltcl9CH7vWfyVDT6jZlEYbwD0QOo20/NGz8llOtohfg5vS5moOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KVbKdb59ogWKDe0i4icwgiMY0y62wBDL69zJB59azJc=;
 b=PZ/2N++VuyHy35R3Umlj05vqqKl69hbAJMMpFFWrNHwo8z0PQzCjWg+KL3p+OQrQHjFFrxRfqCGKRVt5Wg/KwC5k6F9Atcw9MxtQiQW1imR1/sMEObPIFcQAkIZ9thXKGmZ2+5MhPFZ84mWjD4ZhbqowQ4m5ojDnmuP2Q10COVw6pOndH02zG5eDNHSqGlvZcXJTbFXGcXJorNtjuZVbKLoFXqHFdA8xdSpLZWefoDuCLnglwS6hg84/4uoU4OcOsiN8UNxopLmmOq+BHxms/WXpD8tylShlG3Ivg/nDtqNHNTl8IElOnPlN6fIyqq/XNE+c2uISfJkGnELeGENOyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KVbKdb59ogWKDe0i4icwgiMY0y62wBDL69zJB59azJc=;
 b=WDjENbrWZAJ3RJpNa2RDqU5REZBPd958/sQuTL2JRXlM5VfIai90tloTkDOimly0wHs8kOekNX2WtM4ymXsHdf+nD9Z4hX1HoX7bUyh7ZQCI+SvFJVqciOKghLpnankrHbRD9SD/YaRSG4Mv/p+5SFsnGgkGgZF/iwj/GDEAVWA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::14)
 by AS8PR10MB7706.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:63f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.29; Mon, 8 Jul
 2024 13:11:37 +0000
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9fcc:5df3:197:6691]) by DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9fcc:5df3:197:6691%4]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 13:11:37 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
CC: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: [meta-security][PATCH] fail2ban: update to 1.1.0+
Date: Mon,  8 Jul 2024 15:11:38 +0200
Message-ID: <20240708131138.3125264-1-rasmus.villemoes@prevas.dk>
X-Mailer: git-send-email 2.45.2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: MM0P280CA0027.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:a::34) To DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:45a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB7100:EE_|AS8PR10MB7706:EE_
X-MS-Office365-Filtering-Correlation-Id: 7298c881-c55a-46b0-9c67-08dc9f4f7fb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?u4MwBhy+HXebKUeGJeWw2YXzMt27WA4u7ozeeH0B5llxcSSifavxBnr76+R7?=
 =?us-ascii?Q?v4CVQ79ek3XJdOGu2zNgKHOg6BsJGc4I3ZQFfEV3cTFkexdQ/Kelt+nm+PCa?=
 =?us-ascii?Q?HkWXxjSt1bz3XtcYObX4VE9lMdoVwOM2O9EmqUQlm5PglWEfLTitVdNg6FtV?=
 =?us-ascii?Q?Bhe5MIHdRBgvF5ub7Do/y2gQ+V2UH4DaZZAOXO5PjdVI11fkmLSdxVq5YiAT?=
 =?us-ascii?Q?/SqOApHTBS6VcDoSdcE91BqZHQysHvMs8mUv1SlgxtT13DcKC1exeWsJq51P?=
 =?us-ascii?Q?95LA74tkV6yUTL2D0rT/y9hbRpPcQPW/rWLyzaJtSs8U6INrg7Z/0otsMpg2?=
 =?us-ascii?Q?hDzsXuQYZopWR43bcsOXbarmPeJyiarVnoqkj8nBlmjwzQ2Bhh+NuZW8MOxv?=
 =?us-ascii?Q?gx55nNP3T6Y9hqzkOMKqQEyfFJNVSS3ILIFZG+PKk6GPOXrRKA5P4Clg66LN?=
 =?us-ascii?Q?96pyVUViyQsJoFE1AJ/gUVa2utQQzJw7eN4x4HqAwKTdotEYcyTms5LMo2EN?=
 =?us-ascii?Q?WkSne6+DczD3x+7s1/MSSFGOnc4zaoz/j76I2ZQMIJ7upjTJQlmYY/uLICdP?=
 =?us-ascii?Q?uxN54e9Wcsp7o8jYDr2ED3/j/KjxZ4/7BgPrL3oTq7zK2P9We0wTRjH0QFkZ?=
 =?us-ascii?Q?UM5nWqvrSq/CA66dxUashQTP6cMXK2d4NH9OOZ+YS59oe+krpj97GbAd1uFk?=
 =?us-ascii?Q?6GXC4QoGARmsLjLj1yCputGdrIbuXccRXZutn3IRGXSK2t1ugoJBfkj6+jgO?=
 =?us-ascii?Q?IZxP1ZpSSp6j6nvJJwjgWBdNO8/ScEipGTHUAw5Yao+3mP/ujjlh1EH8YbVo?=
 =?us-ascii?Q?dq+HdZmLYsap3cRpzAl8BbkpLqdbXuD40c/YQEiu2IMOXt4/vE/ybGN1Tbcd?=
 =?us-ascii?Q?Auw1P787Fc58xJKsC7u7A+Ec2brvL2yA9vWejwaEZmYE+mKxU64uqQNr+jqh?=
 =?us-ascii?Q?KsKTQW3T/Z4WWG2pcbALrBIFTh/0lFuLWis3v/FEysKbppVOstj8g01T1tZV?=
 =?us-ascii?Q?p2HjtaBGgoRWLaqdPaRPA7OZH+yR7GJtJKcxmDQg57fs2I1YpXuPaUk3Dha0?=
 =?us-ascii?Q?E1/0l/tiSlo7OVlaBly/ZiERRbpo0jnx/DysbbKKHBLEKkJ1rGC7IeqJIKHC?=
 =?us-ascii?Q?VjLV+wNF2q74nIjlqkooZGVhtT2FJillT6n5KUn0RRsDdtVYzsCKMNBQLhaB?=
 =?us-ascii?Q?YW2TFNjk/7maT/cj9LaNf7OQae2yr8Pt0Rdg/OZdrQebvTwr0ZVRrQPQHm2r?=
 =?us-ascii?Q?9UUPDioY8MnPclk4eTr5bBo2oTPiIjNRN8gsScDOH5GEIz6IIha0N6jkp0Sz?=
 =?us-ascii?Q?VPzzL/F1lHTXhGV15QiImXqj/sLr61I0/whkYs56CGJQ6g=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?khgHNZYczTBS/mWfEKCgQ/9FX/vaIz/bQkw4l1buSISXBsBPLDRmZ8Rhx+3o?=
 =?us-ascii?Q?QNZyY66vHypC4zr3Dmi44NwC2GzwCiQFIUKmxlNfttSigaw3Lfw5XLQcBjaT?=
 =?us-ascii?Q?WozzL07X7jcR7uQzOMQHbHGdXRvLYMtXWZp1F+rlkXGNsbw1tQXtV9yUeIkd?=
 =?us-ascii?Q?COoXLPcyebKnFNZhcDtpQcMZo4MwxpgDlHrPwMsQDTY+QvJwsdKb0ViyG5ZK?=
 =?us-ascii?Q?RQm6fpd243Hs7wmXjdzJO2BGl/HAugJEEVNoAFcNvMjclpL6aNQyzIP6AJ0b?=
 =?us-ascii?Q?eFMF+sD58SCQ6whS+wHKngz4+s4pdca2N3tig78hsuFUE58ZqVxzUwxU2R3J?=
 =?us-ascii?Q?mIxHJaZHu7W53AfBgZMEJm2+1S84/2puEkhBNbDOSVLI55QTq9qveWEk2Uf0?=
 =?us-ascii?Q?YNftl3CgknDYKROXPuLRv1ogi73McpOBMfAp633HCZrWJzxFaarJB+XSw+ai?=
 =?us-ascii?Q?4WUIkCrP5w+xrUFuyBG1YigH3zpIa70daZKiDgiZQqiJbfLmF9zoSyqOayVE?=
 =?us-ascii?Q?iNrHb0EHK5QjO55SLnN+DH1GOP052mtq50ot/Jxn07leN0YD83xbXI2Za2IJ?=
 =?us-ascii?Q?H5GLcUJDxez2QVj4+i0af1EgDz9IT9n0LfrtLSEqsuhrV1oq/6FaexLmlBtC?=
 =?us-ascii?Q?GIzA92jKYsAJhptvijPkFGkaJINGPNbApq+ByaCdY3k/uHD38XNsOd1PNEMl?=
 =?us-ascii?Q?FggzVvfzf3d10RdKMgKSV/5w0U2k8Q9+6ebamx6jhYU9N0XXlMJywsPWj28c?=
 =?us-ascii?Q?XzkCdcIEWQ9OmWqscFL7dM11RTWf6rulpJNODZ3TJ3wwz2bamIqKRqU297PM?=
 =?us-ascii?Q?yAwh+E1YlPFoAxQKGINmU58ZWn1zQty9fBA1cjD1NnKogGjq6FZexTB/+GP8?=
 =?us-ascii?Q?8jN9fiq1Kbg0bPaixeaG37XxXScMwCGnI10Td7m79nSognI6GvSfvb5HDvsS?=
 =?us-ascii?Q?RLV/gCFg20OwasxJvTRGGeEYRqgULkn1/+qGs1P0GecU8PhRCUbk3vfm6i12?=
 =?us-ascii?Q?vRVZ3NwPsj1geut+/7faMkSJAsXOpCl+xGChphoDz+dRhwKnpPLacY3eGIAm?=
 =?us-ascii?Q?U2iAfYBi7UwAw69OtES+PUGPp8w+aAqpYWtall7GU6+XacdnBwSSRdkTguo4?=
 =?us-ascii?Q?JXQ94KssqHfuyHhCjw92MYoWi8w2W/SUtsEGg/hZ15yEyGNqNNoJ2u07dUZy?=
 =?us-ascii?Q?VFAWLHI2GvR9NyscZaiGUReiOvFlA/GqC9yZPSzls48qcVIhIgzLaLliM+/E?=
 =?us-ascii?Q?Mad3MHPPid95e/izRP1kYA/v0yHad8HnhoPiq3B1YTICixVuf1lDVAdxkMCJ?=
 =?us-ascii?Q?Ruk14fTAFJ55I6bOLLccI2965a/Qt0qrOyvhO6L72pAdjjQnK9jPlsAnicul?=
 =?us-ascii?Q?Jf6N6OzzbJoIYuTy4wy/CEBUY8LsBiTVw4ac7eIdVB9bdODD654eg+krj2Ya?=
 =?us-ascii?Q?8DBMjuGa1F2qu+05goCTYgorOs6l6brnEF36UAQwMqE6p7/FyDzn++U/OrnG?=
 =?us-ascii?Q?W7YsgGKFNmyuz8+MbZYRz1sBnbg+WQd4WLt6j5EiR4b36RaXs25qDBjBb6Hz?=
 =?us-ascii?Q?bB6svVSc2EHb3chDEqYv4YB7fQsRz+YhjofFft9Urh+EJGKJfchyKJqLVKSm?=
 =?us-ascii?Q?Bw=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 7298c881-c55a-46b0-9c67-08dc9f4f7fb2
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 13:11:37.4827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fLZG2dU1M8e+wBkhMsDY/dnJsXsm82sDXgsx3aahJ0ioOVgltOpV52gXHX5PKgfxtR/Z3MjyRAdjtFGpRuq3/NY4zaQAW77RxcQcWmSCkMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB7706
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jul 2024 13:11:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63442

From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>

Current 1.0.2 version does not work with scarthgap or later releases,
as the asynchat module has been removed (as scheduled) from python's
stdlib as of v3.12.

fail2ban 1.1.0 also does not work out-of-the-box, as the distutils
module which the pyinotify and systemd backends depend has also been
removed.

So update the recipe to point at commit ac62658c10f4, which fixes
those two backends to no longer depend on distutils.

Upstream's out-of-the-box ban action now uses the 'nft'
command. People can still override and customize that in
jail.conf/jail.local, but to make the recipe useful without
customizing things back to use iptables, change the dependency
iptables->nftables.

Since 1.1.0, fail2ban has been python3-only, so the recipe becomes
somewhat simpler since the whole do_compile preparation step can be
removed.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 ...fail2ban_1.0.2.bb =3D> python3-fail2ban_git.bb} | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)
 rename dynamic-layers/meta-python/recipes-security/fail2ban/{python3-fail2=
ban_1.0.2.bb =3D> python3-fail2ban_git.bb} (89%)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-f=
ail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/pyt=
hon3-fail2ban_git.bb
similarity index 89%
rename from dynamic-layers/meta-python/recipes-security/fail2ban/python3-fa=
il2ban_1.0.2.bb
rename to dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail=
2ban_git.bb
index bf5f87d..1d0fb62 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_git.bb
@@ -11,12 +11,14 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Decabc31e9031=
1da843753ba772885d9f"
=20
 DEPENDS =3D "python3-native"
=20
-SRCREV =3D "e1d3006b0330e9777705a7baafe3989d442ed120"
+SRCREV =3D "ac62658c10f492911f8a0037a0bcf97c8521cd78"
 SRC_URI =3D "git://github.com/fail2ban/fail2ban.git;branch=3Dmaster;protoc=
ol=3Dhttps \
            file://initd \
            file://run-ptest \
            "
=20
+PV =3D "1.1.0+git"
+
 UPSTREAM_CHECK_GITTAGREGEX =3D "(?P<pver>\d+(\.\d+)+)"
=20
 inherit update-rc.d ptest setuptools3_legacy
@@ -26,16 +28,6 @@ SYSTEMD_SERVICE:${PN} =3D "fail2ban.service"
=20
 S =3D "${WORKDIR}/git"
=20
-do_compile () {
-    cd ${S}
-
-    #remove symlink to python3
-    # otherwise 2to3 is run against it
-    rm -f bin/fail2ban-python
-
-    ./fail2ban-2to3
-}
-
 do_install:append () {
     rm  -f ${D}/${bindir}/fail2ban-python
     install -d ${D}/${sysconfdir}/fail2ban
@@ -66,7 +58,7 @@ INITSCRIPT_PARAMS =3D "defaults 25"
=20
 INSANE_SKIP:${PN}:append =3D "already-stripped"
=20
-RDEPENDS:${PN} =3D "${VIRTUAL-RUNTIME_base-utils-syslog} iptables python3-=
core python3-pyinotify"
+RDEPENDS:${PN} =3D "${VIRTUAL-RUNTIME_base-utils-syslog} nftables python3-=
core python3-pyinotify"
 RDEPENDS:${PN} +=3D "python3-sqlite3"
 RDEPENDS:${PN} +=3D " python3-logging python3-fcntl python3-json"
 RDEPENDS:${PN}-ptest =3D "python3-core python3-io python3-modules python3-=
fail2ban"
--=20
2.45.2


