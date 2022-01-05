Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A653C433EF
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 08:52:21 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.4680.1641372740793766450
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 00:52:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=dOu18e3z;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=8004391f67=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 2058agCd003999;
	Wed, 5 Jan 2022 08:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=b0XIhNW920aH8RT5rtXBXHmnN24gVCKtYluG9Bdlvqo=;
 b=dOu18e3zwAALxkiGC0RHV5xSF06ERqdrQvvQpTJyrjkibWOyVzEoaJYAguL2p/kuf2Ev
 emVlv9A6V0YjUAu07sPlzGnXqCWBCDgvlBjdQ790AB5+3Srf0bp1fYvGZMaiZQenzPa+
 KRoD73DhBzOp8w7MyxfHZz23Emiw+ZZv9ypg3Rt9D/l0O6hNLczHKyQAYsErRrEpUKG2
 q57CV4+R4cfIfwyUvgJs2E9Cd1zR9LJpDQvrjXVspPHK77BMlPN+d021meYGpXAibej1
 I43Ly3777zpSgVGN/GB6rQYasEJPSUJq1XaXva+5PgX0CqXF2LuR9BPYfCGUaJrmNvq4 hw==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2169.outbound.protection.outlook.com [104.47.57.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dc53094xc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jan 2022 08:52:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nzW6D1tfzdR2TBEN7AlD7wYGXXhVKDdizIdNn1DlCp29bhxJ5H5rdLZdq8olMI/5fj/kwSahuFhMayaB8zaelpjiHAqBPhHbkSbIrmkBihPx1aoE51ROK2k3jQNKIF8U0Pb4KUb/LUWhYj5U5OhNdkWHKB2eEDfT4gYQxOwgxdgv3pt10OhngyWqPHKC6XTEC3sn1hzFFPxOQJB+3be2yLsIOHsVPGydagnmjvbPcg6EB+bs572Y0JorJ4fcDgbGr92NTPyhlr1/Edx92nZyY3ORUS2FVt2KtnHkfJPxQPcnu2SjsBhNOFpTGSm7A5Iab5HrmEU9sFikiQ7R+DVb7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0XIhNW920aH8RT5rtXBXHmnN24gVCKtYluG9Bdlvqo=;
 b=jSrvukAR0QfIJkU2+AODnq+eRogWUZVuciJ/2P94P3pD7Tp3LOKArPjw9q1XfWjSSe0jew5/ArpblttyiCCr8465awg7VLM8Eq3uhdxXPz2FSjGKYXN4NSvOKsAGLoeeTmfInmOzJILULR3ivaAq+JGGunWgMBopda8NPIvp+O4Gmmkckdajiv/+U1YCvZh+D45yC2WN9r5zGuLJCKQKE7ckZv9xCcy3JxVin0HT6JHFpHh53uhDbtS9tTrbVGxHCyPHc9pGxQ+jwNTYB8Q37zHiIKPhd/SfiSREFHfvzKYqyRyNHF9p2wvVYIN+lu4k2oO3kS2gH5N3MGOjrAgW+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Wed, 5 Jan
 2022 08:52:17 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4867.009; Wed, 5 Jan 2022
 08:52:17 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][[RESEND]PATCH 3/4] selinux: upgrade 3.2 -> 3.3
Date: Wed,  5 Jan 2022 16:52:01 +0800
Message-Id: <20220105085202.69468-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220105085202.69468-1-yi.zhao@windriver.com>
References: <20220105085202.69468-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HKAPR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:203:d0::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f192a0f-6855-44d5-3e98-08d9d028ad2b
X-MS-TrafficTypeDiagnostic: CO1PR11MB4769:EE_
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB47690462894F33B2A108B10FF94B9@CO1PR11MB4769.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gPdHYtDzWfCRti6m9IO1CfXotCTpajtifyXxxFOkzFYF4nxp+lON7RsAt8syyhSiy2qbxTMTBvCT3YIw4AzIsIbXWI8JwPOZ3D+/UpLH6y8qGUtHnxNMkOGPtWClkSpcSb47a/EmWgrZmWUcdGf+8GWn6lSQu8gXD36O5SvEdVGGzgYLLvzjtDtdhTUJTy/0CMfjb7jUet8uZYE7OAG9+rqZm9tPtBk5JTBO25n33fqm6ltiuKg+ZlhAxcLrOUWQ720/6tQ8msB9yFx9/QhifGfAVRrPj/nZ9g8cwozJdxfXR48ShOocikTKQpnkAoGIV2GVpl0a3kfeG/kW93UPtqheQzHyzZsJaCoT3eSJnHgflUrHvMz76yECrtn/oB2iy9zKu+9mOwFX6DX29eY2ijfsoKbeP7UaY96FwxNYqcxRzyBi/MyoIMROpbtpkNdN5Wj8tQggk4kfUf9bgB4KTR5IqQDOJSyfDIyUYqwcvAotbjUy+76iHVaFXGqeYco54HOcY5KEqGqtfGpXmm96CF9ngu7HNWrYwW1pywOR/A5Cs9qbTJrEZhy7XTjh+Rv5U3xZqHG2Ud+nALAg+xW3/eYFAGFzmsgu/1ebPuwgFh3r9kxDf3kDFA64o4EOCb8nyPaQoR31DN28PMmTOuZT5KniiKPx6fx0ED4vanKT5qPCx96vjn47xfJ1e/C8fQ5m4v+cM3Y9sQqeeYX/foKg4X7KuQ07MqD8QSmnw3W9ViVmiDy3s1UFi2VkrvjWi73ZxODbtjdmhbuWyDvVigfPK+2jRjwW3Cn56IGANfpVpXkw2uASxh6ELSvzZfx50jCcx6+DoMeVOkO9IrkZvZvJIw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(66556008)(66476007)(44832011)(84970400001)(83380400001)(316002)(38100700002)(38350700002)(6666004)(6512007)(2616005)(30864003)(1076003)(6486002)(508600001)(8676002)(8936002)(52116002)(36756003)(186003)(26005)(966005)(6506007)(5660300002)(2906002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?njVzvlk/lK91GElfnEPjXJiaJ87in0wmRRX9IRCvLEgkLgXVYADNxHV29Hmt?=
 =?us-ascii?Q?/E06j763apAXIW8GsmuUuSzDcCwkeVGXt786V8M8XtoaUaV/8krOxd6zCB/1?=
 =?us-ascii?Q?DkUqLZdOnD9n7MvGccdIfDsN+C6c0Pv/B+LfcqXb1rPW7THoOQzrpH+f+VuO?=
 =?us-ascii?Q?dPQPed+Ipyw0C4WvVXoZjCkB6vUKwMofvmKNQf4jtfqj4MJLAm9iATPVc8Ip?=
 =?us-ascii?Q?8MgOtdTDHAD1Y3twZZzdacX2s+rwdjrJY+ON7+hnjv4tLihbMl7g2FeYSCbw?=
 =?us-ascii?Q?TKaRYI9l5Bp/Wyc1a1JWkOi90q1f/AHBSanKcA66MQ1mj4XjzWqYjW5lsGdl?=
 =?us-ascii?Q?KCgr7aZ6SgAQpwKoXFH1k7i3TQjiC+Lths/mvb0GIuDLeyZuxMkEPCbDwYW6?=
 =?us-ascii?Q?+UInBMa4MpmimFKY3lSCEfVOOMtGIw9ZfI3IF3PzLgg2blaaVbifKIlA+Iza?=
 =?us-ascii?Q?DWWdyF75BqwptCjVyx9+q8aOJ/p19Pm0t2i7SRR5aJhX9cYRGtxmj12M+eeL?=
 =?us-ascii?Q?8FiF0i70GzaPOKEpXUuv9VxX/A/vhcvjCzZhdzbrX2MzJ3sUhGhJY3laaMVL?=
 =?us-ascii?Q?/dkdVZo/pQKnABg37ltRNSmp7RPYUnlIskTsQ0Ec0mimFUiJkh2mhLr/PM/d?=
 =?us-ascii?Q?eJfxUFs5yxw5SKU7cBSE6ReI+vrPCHs09XRVbBTNvjCmGpTdU+200NqLPOJU?=
 =?us-ascii?Q?MeKJD3uLhW5/Kuk6NaLeWnxAxWtdLCoN8Xv5GPbvhvvu5jG4724UhAiGhwpo?=
 =?us-ascii?Q?q8bQqf7HTQC5GlkexqRlSFvoHrpCNJefcD0bt2hJOe05+2wjTsy+s5pMZaoD?=
 =?us-ascii?Q?k2jdeZs0qbiNEgWnwZgCG3CTdVhVmjno8KSCFoEofw6FhXZ//IRB81+sCJu8?=
 =?us-ascii?Q?zorOuQwypU7rjicmbUp6e4v09/ak4a90xEaAumhaaa9eV8CIaTCfwvCvFPg7?=
 =?us-ascii?Q?ajxtadfYgE5Xm0Ac5d5F1R3cTqeJHrQG8/v3ICgP/HWNsSd4Z/G8zFx4RVJq?=
 =?us-ascii?Q?c8ME87AKAz9Dux9rKqsKZdAZT0dXAlRhH/knhaNd0sF/4o6bmEs1y+9tUDqU?=
 =?us-ascii?Q?2Hizbuq0YZ/EG67YvliO676HAkhPXO7oKIX9xG712HsOMVLG68fmXOYFE9TB?=
 =?us-ascii?Q?sJXTSzjIAWHufVtYtjglhUObL2QN1JjFlGSSaHTDPUS/UqHhUTMqvWxVPGbJ?=
 =?us-ascii?Q?Ab8Qw9nhFJzy865DNto5kjjcYnHq3IQvOOiuM3cKt9vfDOa+GqsVnxFdEZ0G?=
 =?us-ascii?Q?LXZJqfmP4mWq5h9PZUkWnYvZX2YAZkRB+pC9R8VscSdiFApHi6nkNRvsP3Zm?=
 =?us-ascii?Q?l0BZKXdy25h/ECdXlzps9jxF3qnXuOBCZSDJZslZRbTj09KKCq2ms8a5QeUc?=
 =?us-ascii?Q?vYbOIIyHfnkgNiNoW5I/tJ65gAQ7EuG8I6HVr2K0mh0jypS8RRnbheW2Xqat?=
 =?us-ascii?Q?9vpX09/aFlWRApldQC1tgw2b0DPwC+AHxmwPehff705BxBzgSOrifKr7n0e3?=
 =?us-ascii?Q?UuYCo0mRmwz31WTANLY7V1axpApXPyDTsX8z3+kCe6E4vHlu2cBOuI7ymoKK?=
 =?us-ascii?Q?hIcimpaTsLNb764/4QAb9I16/GlIEuu4G2xnWe7L2ZvCK7eNi1rAXEdSjI9l?=
 =?us-ascii?Q?mQUV8TZw4XQzctIeuMrLKQY=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5f192a0f-6855-44d5-3e98-08d9d028ad2b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2022 08:52:17.4696
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ucy0/TAuItRh0cQB7rSckVT+U7f93L6qbw/mJabjtnDiLe1InnmTSOlp6rt0KHrYTpZKsCxY5R5FgSkztCg6nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
X-Proofpoint-ORIG-GUID: KkA14G8pC_zo84cUZC3z94cPmh3qRMYA
X-Proofpoint-GUID: KkA14G8pC_zo84cUZC3z94cPmh3qRMYA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-05_02,2022-01-04_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2201050059
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 08:52:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55736

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...{checkpolicy_3.2.bb => checkpolicy_3.3.bb} |   0
 ...python_3.2.bb => libselinux-python_3.3.bb} |   0
 .../{libselinux_3.2.bb => libselinux_3.3.bb}  |   0
 ...{libsemanage_3.2.bb => libsemanage_3.3.bb} |   0
 .../selinux/libsepol/CVE-2021-36084.patch     |  99 -------------
 .../selinux/libsepol/CVE-2021-36085.patch     |  38 -----
 .../selinux/libsepol/CVE-2021-36086.patch     |  46 ------
 .../{libsepol_3.2.bb => libsepol_3.3.bb}      |   4 -
 .../{mcstrans_3.2.bb => mcstrans_3.3.bb}      |   0
 ...oreutils_3.2.bb => policycoreutils_3.3.bb} |   0
 ...{restorecond_3.2.bb => restorecond_3.3.bb} |   0
 .../selinux/secilc/CVE-2021-36087.patch       | 134 ------------------
 .../selinux/{secilc_3.2.bb => secilc_3.3.bb}  |   2 -
 ...elinux-dbus_3.2.bb => selinux-dbus_3.3.bb} |   0
 ...{selinux-gui_3.2.bb => selinux-gui_3.3.bb} |   0
 ...ux-python_3.2.bb => selinux-python_3.3.bb} |   0
 ...-sandbox_3.2.bb => selinux-sandbox_3.3.bb} |   0
 recipes-security/selinux/selinux_common.inc   |   2 +-
 ...ule-utils_3.2.bb => semodule-utils_3.3.bb} |   0
 19 files changed, 1 insertion(+), 324 deletions(-)
 rename recipes-security/selinux/{checkpolicy_3.2.bb => checkpolicy_3.3.bb} (100%)
 rename recipes-security/selinux/{libselinux-python_3.2.bb => libselinux-python_3.3.bb} (100%)
 rename recipes-security/selinux/{libselinux_3.2.bb => libselinux_3.3.bb} (100%)
 rename recipes-security/selinux/{libsemanage_3.2.bb => libsemanage_3.3.bb} (100%)
 delete mode 100644 recipes-security/selinux/libsepol/CVE-2021-36084.patch
 delete mode 100644 recipes-security/selinux/libsepol/CVE-2021-36085.patch
 delete mode 100644 recipes-security/selinux/libsepol/CVE-2021-36086.patch
 rename recipes-security/selinux/{libsepol_3.2.bb => libsepol_3.3.bb} (85%)
 rename recipes-security/selinux/{mcstrans_3.2.bb => mcstrans_3.3.bb} (100%)
 rename recipes-security/selinux/{policycoreutils_3.2.bb => policycoreutils_3.3.bb} (100%)
 rename recipes-security/selinux/{restorecond_3.2.bb => restorecond_3.3.bb} (100%)
 delete mode 100644 recipes-security/selinux/secilc/CVE-2021-36087.patch
 rename recipes-security/selinux/{secilc_3.2.bb => secilc_3.3.bb} (90%)
 rename recipes-security/selinux/{selinux-dbus_3.2.bb => selinux-dbus_3.3.bb} (100%)
 rename recipes-security/selinux/{selinux-gui_3.2.bb => selinux-gui_3.3.bb} (100%)
 rename recipes-security/selinux/{selinux-python_3.2.bb => selinux-python_3.3.bb} (100%)
 rename recipes-security/selinux/{selinux-sandbox_3.2.bb => selinux-sandbox_3.3.bb} (100%)
 rename recipes-security/selinux/{semodule-utils_3.2.bb => semodule-utils_3.3.bb} (100%)

diff --git a/recipes-security/selinux/checkpolicy_3.2.bb b/recipes-security/selinux/checkpolicy_3.3.bb
similarity index 100%
rename from recipes-security/selinux/checkpolicy_3.2.bb
rename to recipes-security/selinux/checkpolicy_3.3.bb
diff --git a/recipes-security/selinux/libselinux-python_3.2.bb b/recipes-security/selinux/libselinux-python_3.3.bb
similarity index 100%
rename from recipes-security/selinux/libselinux-python_3.2.bb
rename to recipes-security/selinux/libselinux-python_3.3.bb
diff --git a/recipes-security/selinux/libselinux_3.2.bb b/recipes-security/selinux/libselinux_3.3.bb
similarity index 100%
rename from recipes-security/selinux/libselinux_3.2.bb
rename to recipes-security/selinux/libselinux_3.3.bb
diff --git a/recipes-security/selinux/libsemanage_3.2.bb b/recipes-security/selinux/libsemanage_3.3.bb
similarity index 100%
rename from recipes-security/selinux/libsemanage_3.2.bb
rename to recipes-security/selinux/libsemanage_3.3.bb
diff --git a/recipes-security/selinux/libsepol/CVE-2021-36084.patch b/recipes-security/selinux/libsepol/CVE-2021-36084.patch
deleted file mode 100644
index 1001563..0000000
--- a/recipes-security/selinux/libsepol/CVE-2021-36084.patch
+++ /dev/null
@@ -1,99 +0,0 @@
-From f34d3d30c8325e4847a6b696fe7a3936a8a361f3 Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Thu, 8 Apr 2021 13:32:01 -0400
-Subject: [PATCH] libsepol/cil: Destroy classperms list when resetting
- classpermission
-
-Nicolas Iooss reports:
-  A few months ago, OSS-Fuzz found a crash in the CIL compiler, which
-  got reported as
-  https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=28648 (the title
-  is misleading, or is caused by another issue that conflicts with the
-  one I report in this message). Here is a minimized CIL policy which
-  reproduces the issue:
-
-  (class CLASS (PERM))
-  (classorder (CLASS))
-  (sid SID)
-  (sidorder (SID))
-  (user USER)
-  (role ROLE)
-  (type TYPE)
-  (category CAT)
-  (categoryorder (CAT))
-  (sensitivity SENS)
-  (sensitivityorder (SENS))
-  (sensitivitycategory SENS (CAT))
-  (allow TYPE self (CLASS (PERM)))
-  (roletype ROLE TYPE)
-  (userrole USER ROLE)
-  (userlevel USER (SENS))
-  (userrange USER ((SENS)(SENS (CAT))))
-  (sidcontext SID (USER ROLE TYPE ((SENS)(SENS))))
-
-  (classpermission CLAPERM)
-
-  (optional OPT
-      (roletype nonexistingrole nonexistingtype)
-      (classpermissionset CLAPERM (CLASS (PERM)))
-  )
-
-  The CIL policy fuzzer (which mimics secilc built with clang Address
-  Sanitizer) reports:
-
-  ==36541==ERROR: AddressSanitizer: heap-use-after-free on address
-  0x603000004f98 at pc 0x56445134c842 bp 0x7ffe2a256590 sp
-  0x7ffe2a256588
-  READ of size 8 at 0x603000004f98 thread T0
-      #0 0x56445134c841 in __cil_verify_classperms
-  /selinux/libsepol/src/../cil/src/cil_verify.c:1620:8
-      #1 0x56445134a43e in __cil_verify_classpermission
-  /selinux/libsepol/src/../cil/src/cil_verify.c:1650:9
-      #2 0x56445134a43e in __cil_pre_verify_helper
-  /selinux/libsepol/src/../cil/src/cil_verify.c:1715:8
-      #3 0x5644513225ac in cil_tree_walk_core
-  /selinux/libsepol/src/../cil/src/cil_tree.c:272:9
-      #4 0x564451322ab1 in cil_tree_walk
-  /selinux/libsepol/src/../cil/src/cil_tree.c:316:7
-      #5 0x5644513226af in cil_tree_walk_core
-  /selinux/libsepol/src/../cil/src/cil_tree.c:284:9
-      #6 0x564451322ab1 in cil_tree_walk
-  /selinux/libsepol/src/../cil/src/cil_tree.c:316:7
-      #7 0x5644512b88fd in cil_pre_verify
-  /selinux/libsepol/src/../cil/src/cil_post.c:2510:7
-      #8 0x5644512b88fd in cil_post_process
-  /selinux/libsepol/src/../cil/src/cil_post.c:2524:7
-      #9 0x5644511856ff in cil_compile
-  /selinux/libsepol/src/../cil/src/cil.c:564:7
-
-The classperms list of a classpermission rule is created and filled
-in when classpermissionset rules are processed, so it doesn't own any
-part of the list and shouldn't retain any of it when it is reset.
-
-Destroy the classperms list (without destroying the data in it)  when
-resetting a classpermission rule.
-
-Reported-by: Nicolas Iooss <nicolas.iooss@m4x.org>
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-CVE: CVE-2021-36084
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- libsepol/cil/src/cil_reset_ast.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-Index: libsepol-3.0/cil/src/cil_reset_ast.c
-===================================================================
---- libsepol-3.0.orig/cil/src/cil_reset_ast.c
-+++ libsepol-3.0/cil/src/cil_reset_ast.c
-@@ -52,7 +52,7 @@ static void cil_reset_classpermission(st
- 		return;
- 	}
- 
--	cil_reset_classperms_list(cp->classperms);
-+	cil_list_destroy(&cp->classperms, CIL_FALSE);
- }
- 
- static void cil_reset_classperms_set(struct cil_classperms_set *cp_set)
diff --git a/recipes-security/selinux/libsepol/CVE-2021-36085.patch b/recipes-security/selinux/libsepol/CVE-2021-36085.patch
deleted file mode 100644
index 4bd05eb..0000000
--- a/recipes-security/selinux/libsepol/CVE-2021-36085.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 2d35fcc7e9e976a2346b1de20e54f8663e8a6cba Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Thu, 8 Apr 2021 13:32:04 -0400
-Subject: [PATCH] libsepol/cil: Destroy classperm list when resetting map perms
-
-Map perms share the same struct as regular perms, but only the
-map perms use the classperms field. This field is a pointer to a
-list of classperms that is created and added to when resolving
-classmapping rules, so the map permission doesn't own any of the
-data in the list and this list should be destroyed when the AST is
-reset.
-
-When resetting a perm, destroy the classperms list without destroying
-the data in the list.
-
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-CVE: CVE-2021-36085
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- libsepol/cil/src/cil_reset_ast.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-Index: libsepol-3.0/cil/src/cil_reset_ast.c
-===================================================================
---- libsepol-3.0.orig/cil/src/cil_reset_ast.c
-+++ libsepol-3.0/cil/src/cil_reset_ast.c
-@@ -34,7 +34,7 @@ static void cil_reset_class(struct cil_c
- 
- static void cil_reset_perm(struct cil_perm *perm)
- {
--	cil_reset_classperms_list(perm->classperms);
-+	cil_list_destroy(&perm->classperms, CIL_FALSE);
- }
- 
- static inline void cil_reset_classperms(struct cil_classperms *cp)
diff --git a/recipes-security/selinux/libsepol/CVE-2021-36086.patch b/recipes-security/selinux/libsepol/CVE-2021-36086.patch
deleted file mode 100644
index 7a2d616..0000000
--- a/recipes-security/selinux/libsepol/CVE-2021-36086.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From 49f9aa2a460fc95f04c99b44f4dd0d22e2f0e5ee Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Thu, 8 Apr 2021 13:32:06 -0400
-Subject: [PATCH] libsepol/cil: cil_reset_classperms_set() should not reset
- classpermission
-
-In struct cil_classperms_set, the set field is a pointer to a
-struct cil_classpermission which is looked up in the symbol table.
-Since the cil_classperms_set does not create the cil_classpermission,
-it should not reset it.
-
-Set the set field to NULL instead of resetting the classpermission
-that it points to.
-
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/c49a8ea09501ad66e799ea41b8154b6770fec2c8]
-
-CVE: CVE-2021-36086
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- cil/src/cil_reset_ast.c | 6 +++++-
- 1 file changed, 5 insertions(+), 1 deletion(-)
-
-diff --git a/cil/src/cil_reset_ast.c b/cil/src/cil_reset_ast.c
-index 89f91e5..1d9ca70 100644
---- a/cil/src/cil_reset_ast.c
-+++ b/cil/src/cil_reset_ast.c
-@@ -59,7 +59,11 @@ static void cil_reset_classpermission(struct cil_classpermission *cp)
- 
- static void cil_reset_classperms_set(struct cil_classperms_set *cp_set)
- {
--	cil_reset_classpermission(cp_set->set);
-+	if (cp_set == NULL) {
-+		return;
-+	}
-+
-+	cp_set->set = NULL;
- }
- 
- static inline void cil_reset_classperms_list(struct cil_list *cp_list)
--- 
-2.17.1
-
diff --git a/recipes-security/selinux/libsepol_3.2.bb b/recipes-security/selinux/libsepol_3.3.bb
similarity index 85%
rename from recipes-security/selinux/libsepol_3.2.bb
rename to recipes-security/selinux/libsepol_3.3.bb
index 192f1b3..48d5f49 100644
--- a/recipes-security/selinux/libsepol_3.2.bb
+++ b/recipes-security/selinux/libsepol_3.3.bb
@@ -9,10 +9,6 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
 
-SRC_URI += "file://CVE-2021-36084.patch \
-            file://CVE-2021-36085.patch \
-            file://CVE-2021-36086.patch "
-
 inherit lib_package
 
 S = "${WORKDIR}/git/libsepol"
diff --git a/recipes-security/selinux/mcstrans_3.2.bb b/recipes-security/selinux/mcstrans_3.3.bb
similarity index 100%
rename from recipes-security/selinux/mcstrans_3.2.bb
rename to recipes-security/selinux/mcstrans_3.3.bb
diff --git a/recipes-security/selinux/policycoreutils_3.2.bb b/recipes-security/selinux/policycoreutils_3.3.bb
similarity index 100%
rename from recipes-security/selinux/policycoreutils_3.2.bb
rename to recipes-security/selinux/policycoreutils_3.3.bb
diff --git a/recipes-security/selinux/restorecond_3.2.bb b/recipes-security/selinux/restorecond_3.3.bb
similarity index 100%
rename from recipes-security/selinux/restorecond_3.2.bb
rename to recipes-security/selinux/restorecond_3.3.bb
diff --git a/recipes-security/selinux/secilc/CVE-2021-36087.patch b/recipes-security/selinux/secilc/CVE-2021-36087.patch
deleted file mode 100644
index 5410477..0000000
--- a/recipes-security/selinux/secilc/CVE-2021-36087.patch
+++ /dev/null
@@ -1,134 +0,0 @@
-From bad0a746e9f4cf260dedba5828d9645d50176aac Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Mon, 19 Apr 2021 09:06:15 -0400
-Subject: [PATCH] secilc/docs: Update the CIL documentation for various blocks
-
-Update the documentation for macros, booleans, booleanifs, tunables,
-tunableifs, blocks, blockabstracts, blockinherits, and optionals to
-tell where these statements can be used and, for those that have
-blocks, what statements are not allowed in them.
-
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-CVE: CVE-2021-36087
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- docs/cil_call_macro_statements.md  |  2 ++
- docs/cil_conditional_statements.md |  6 +++++
- docs/cil_container_statements.md   | 28 +++++++++++++++--------
- 3 files changed, 26 insertions(+), 10 deletions(-)
-
-Index: secilc/docs/cil_call_macro_statements.md
-===================================================================
---- secilc.orig/docs/cil_call_macro_statements.md
-+++ secilc/docs/cil_call_macro_statements.md
-@@ -58,6 +58,8 @@ When resolving macros the following plac
- 
- -   Items defined in the global namespace
- 
-+[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockinherit`](cil_container_statements.md#blockinherit), [`blockabstract`](cil_container_statements.md#blockabstract), and other [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
-+
- **Statement definition:**
- 
- ```secil
-Index: secilc/docs/cil_conditional_statements.md
-===================================================================
---- secilc.orig/docs/cil_conditional_statements.md
-+++ secilc/docs/cil_conditional_statements.md
-@@ -6,6 +6,8 @@ boolean
- 
- Declares a run time boolean as true or false in the current namespace. The [`booleanif`](cil_conditional_statements.md#booleanif) statement contains the CIL code that will be in the binary policy file.
- 
-+[`boolean`](cil_conditional_statements.md#boolean) are not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -126,6 +128,8 @@ Tunables are similar to booleans, howeve
- 
- Note that tunables can be treated as booleans by the CIL compiler command line parameter `-P` or `--preserve-tunables` flags.
- 
-+Since [`tunableif`](cil_conditional_statements.md#tunableif) statements are resolved first, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in [`in`](cil_container_statements.md#in), [`macro`](cil_call_macro_statements.md#macro), [`optional`](cil_container_statements.md#optional), and [`booleanif`](cil_conditional_statements.md#booleanif) blocks. To simplify processing, they are also not allowed in [`tunableif`](cil_conditional_statements.md#tunableif) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -164,6 +168,8 @@ tunableif
- 
- Compile time conditional statement that may or may not add CIL statements to be compiled.
- 
-+If tunables are being treated as booleans (by using the CIL compiler command line parameter `-P` or `--preserve-tunables` flag), then only the statements allowed in a [`booleanif`](cil_conditional_statements.md#booleanif) block are allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block. Otherwise, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block.
-+
- **Statement definition:**
- 
- ```secil
-Index: secilc/docs/cil_container_statements.md
-===================================================================
---- secilc.orig/docs/cil_container_statements.md
-+++ secilc/docs/cil_container_statements.md
-@@ -4,7 +4,11 @@ Container Statements
- block
- -----
- 
--Start a new namespace where any CIL statement is valid.
-+Start a new namespace.
-+
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
-+
-+[`sensitivity`](cil_mls_labeling_statements.md#sensitivity) and [`category`](cil_mls_labeling_statements.md#category) statements are not allowed in [`block`](cil_container_statements.md#block) blocks.
- 
- **Statement definition:**
- 
-@@ -47,6 +51,8 @@ blockabstract
- 
- Declares the namespace as a 'template' and does not generate code until instantiated by another namespace that has a [`blockinherit`](cil_container_statements.md#blockinherit) statement.
- 
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -97,6 +103,8 @@ blockinherit
- 
- Used to add common policy rules to the current namespace via a template that has been defined with the [`blockabstract`](cil_container_statements.md#blockabstract) statement. All [`blockinherit`](cil_container_statements.md#blockinherit) statements are resolved first and then the contents of the block are copied. This is so that inherited blocks will not be inherited. For a concrete example, please see the examples section.
- 
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -199,15 +207,11 @@ This example contains a template `client
- optional
- --------
- 
--Declare an [`optional`](cil_container_statements.md#optional) namespace. All CIL statements in the optional block must be satisfied before instantiation in the binary policy. [`tunableif`](cil_conditional_statements.md#tunableif) and [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in optional containers. The same restrictions apply to CIL policy statements within [`optional`](cil_container_statements.md#optional)'s that apply to kernel policy statements, i.e. only the policy statements shown in the following table are valid:
-+Declare an [`optional`](cil_container_statements.md#optional) namespace. All CIL statements in the optional block must be satisfied before instantiation in the binary policy.
- 
--|                     |                |                    |                    |
--| ------------------- | -------------- | ------------------ | ------------------ |
--| [`allow`](cil_access_vector_rules.md#allow)             | [`allowx`](cil_access_vector_rules.md#allowx)       | [`auditallow`](cil_access_vector_rules.md#auditallow)       | [`auditallowx`](cil_access_vector_rules.md#auditallowx)      |
--| [`booleanif`](cil_conditional_statements.md#booleanif)         | [`dontaudit`](cil_access_vector_rules.md#dontaudit)    | [`dontauditx`](cil_access_vector_rules.md#dontauditx)       | [`typepermissive`](cil_type_statements.md#typepermissive)   |
--| [`rangetransition`](cil_mls_labeling_statements.md#rangetransition)   | [`role`](cil_role_statements.md#role)         | [`roleallow`](cil_role_statements.md#roleallow)        | [`roleattribute`](cil_role_statements.md#roleattribute)    |
--| [`roletransition`](cil_role_statements.md#roletransition)    | [`type`](cil_type_statements.md#type)         | [`typealias`](cil_type_statements.md#typealias)        | [`typeattribute`](cil_type_statements.md#typeattribute)    |
--| [`typechange`](cil_type_statements.md#typechange)        | [`typemember`](cil_type_statements.md#typemember)   | [`typetransition`](cil_type_statements.md#typetransition)   |                    |
-+Not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
-+
-+[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockabstract`](cil_container_statements.md#blockabstract), and [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`optional`](cil_container_statements.md#optional) blocks.
- 
- **Statement definition:**
- 
-@@ -266,7 +270,11 @@ This example will instantiate the option
- in
- --
- 
--Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)). This statement is not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) or [`tunableif`](cil_conditional_statements.md#tunableif) statements. This only works for containers that aren't inherited using [`blockinherit`](cil_conditional_statements.md#blockinherit).
-+Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)).
-+
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro), [`booleanif`](cil_conditional_statements.md#booleanif), and other [`in`](cil_container_statements.md#in) blocks.
-+
-+[`tunable`](cil_conditional_statements.md#tunable) and [`in`](cil_container_statements.md#in) statements are not allowed in [`in`](cil_container_statements.md#in) blocks.
- 
- **Statement definition:**
- 
diff --git a/recipes-security/selinux/secilc_3.2.bb b/recipes-security/selinux/secilc_3.3.bb
similarity index 90%
rename from recipes-security/selinux/secilc_3.2.bb
rename to recipes-security/selinux/secilc_3.3.bb
index 50413e0..60ab2fe 100644
--- a/recipes-security/selinux/secilc_3.2.bb
+++ b/recipes-security/selinux/secilc_3.3.bb
@@ -8,8 +8,6 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
 
 require selinux_common.inc
 
-SRC_URI += "file://CVE-2021-36087.patch"
-
 DEPENDS += "libsepol xmlto-native"
 
 S = "${WORKDIR}/git/secilc"
diff --git a/recipes-security/selinux/selinux-dbus_3.2.bb b/recipes-security/selinux/selinux-dbus_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-dbus_3.2.bb
rename to recipes-security/selinux/selinux-dbus_3.3.bb
diff --git a/recipes-security/selinux/selinux-gui_3.2.bb b/recipes-security/selinux/selinux-gui_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-gui_3.2.bb
rename to recipes-security/selinux/selinux-gui_3.3.bb
diff --git a/recipes-security/selinux/selinux-python_3.2.bb b/recipes-security/selinux/selinux-python_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-python_3.2.bb
rename to recipes-security/selinux/selinux-python_3.3.bb
diff --git a/recipes-security/selinux/selinux-sandbox_3.2.bb b/recipes-security/selinux/selinux-sandbox_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-sandbox_3.2.bb
rename to recipes-security/selinux/selinux-sandbox_3.3.bb
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index dc4ccd5..8bdf8ad 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,7 +1,7 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
 SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=master;protocol=https"
-SRCREV = "cf853c1a0c2328ad6c62fb2b2cc55d4926301d6b"
+SRCREV = "7f600c40bc18d8180993edcd54daf45124736776"
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
 
diff --git a/recipes-security/selinux/semodule-utils_3.2.bb b/recipes-security/selinux/semodule-utils_3.3.bb
similarity index 100%
rename from recipes-security/selinux/semodule-utils_3.2.bb
rename to recipes-security/selinux/semodule-utils_3.3.bb
-- 
2.25.1


