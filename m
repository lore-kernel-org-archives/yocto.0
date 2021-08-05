Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.5906.1628149188814145893
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 00:39:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Umvp4Wzn;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38513e44b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1757ZXKH029366;
	Thu, 5 Aug 2021 00:39:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=erLT0r14Z+ps553KbGZEAdCyESvBhda7KSxn2NKctEk=;
 b=Umvp4Wzn9GDtggKd5/Ry6g88fpJseS4ohIRCy7HRcw016zlQfO60AuSWCAWflx29t6Co
 nIRyZtq/B1BoyKIi+K0lsn7uxBOVK8njuiprIQu/UW7u/jSa7C4jyfPW6DuTG4hpmHaL
 TGxGJkeefVCmdkeshemTgH8ZX/SDGP2d5rf3/MRTtBYYXtNM4wZJK6/rLTReM8vTEetL
 DiVuNZXcqlD9rZJoHdbnGdGCyvlyN1RvJBlDuXLzsuWjojVTXR8ObT1LLpFjgQpQmpqI
 0PC0SXnL1rnjxBtWbJz+TlrlvEbSmGbmPVHMTutTaMAnX74YVT4EHagGsC5yKrY50TKR yg== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a800vrcwr-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Aug 2021 00:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VjS6YZoTu26rMyHPfJmceIkBSa9PfsTTDn8+gnXhdiU62ckrJjSNcTTYdUA9zKzKhdauX0IDEIWEAeqNMF/UL/qIzXwbZMky0yiJElPPpAyO/6G1m6p+xKuFJNDV0r+lWS0LjmWc+MOWrvS6rGyens4jC6FAq+U6ExxTupoQ0nigdPZk/873+H96hgE58NckkRy6rXdRXSf0jwnNe3CiuFpkEEpCKOCyPaJnI/gJq2BjREeaU7O+FifLTwgb9cxhWTNLJ5G4VRUXVqvtYe7b7fMJNYFd2jn8x0RhfjohHUxIGVFEnBIE1aQEqVhqWU5hZSa7cyHh0/fspHJXWcYBsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=erLT0r14Z+ps553KbGZEAdCyESvBhda7KSxn2NKctEk=;
 b=mLfL+/8Qr2gBKasmVvp/+aUq7lhBAtti8FpUur7+iFhXelTnnYciL8/+A0T+bmmm579apCMqKC2gHDePtVRpsVtBQeiKZnBr0CmpYSweY16z80Lq+S31l7b5OY2Q28up8MEKMuhd3IIWxkNY/vWlJcjPM/ThzkLuPPNiYfP+kwjvwyt4D8mjp8RwQEme83uPNKVn+QhJRNLDuuKOuEYDO9iPqOWxPvkxw35CiL2egrX9a0i4aZezBGX89FB1+Oqj3g3sJTldVFm6X1kso5w7QYvlUyZPI/o6DM60pinjz5hGvePli5DBPa39gi0DoEWKe4lU3Fn8DSbdOS5CaCOLvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1264.namprd11.prod.outlook.com (2603:10b6:300:27::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Thu, 5 Aug
 2021 07:39:47 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 07:39:47 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 5/6] README: update
Date: Thu,  5 Aug 2021 15:39:29 +0800
Message-Id: <20210805073930.382397-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210805073930.382397-1-yi.zhao@windriver.com>
References: <20210805073930.382397-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR06CA0016.apcprd06.prod.outlook.com
 (2603:1096:202:2e::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR06CA0016.apcprd06.prod.outlook.com (2603:1096:202:2e::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 07:39:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dca30575-5902-481d-947c-08d957e432f6
X-MS-TrafficTypeDiagnostic: MWHPR11MB1264:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1264C5CE413A33BA5018FEE8F9F29@MWHPR11MB1264.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	neJ1yG+wF557NAs159aQwNFzwL2pF8Mbr46nDNvH1rLBJGvN8cg7Vp+9MmluXMZlaDc5xhBTdI4PGwvVDKP2FLM1DJpZhvGbDsBcdm7yr0dszTChZj0wzdJCm0pKEo69hghpmpTgQOnLtaOZdUCtXOUfwsn/tqUgZOckOxYL5eL2AbGGMPmitttvpmxDdvfkj6QMfmqFQLWbE1zSrnNSfTRIBXGcfzxyVb/5VKzxwCstaG1Xai7uv/mEf6F8dlWCgyewGkTC+USec6giU8QthSXZXpkQPNWo3njHdn7DTu8ssvpbrgsujIR0+h7L3R0le9IxWHrB81nkpd1oGVlxCqDOCs7/MBc0vMGjDOHL7JG58nIsPidX29eXXpgf5yY+qFr2ZgJQXA8fDCfoNHrHfnsL+x2XlzfY91tA/MLscLpjJbMwcdK7eAvr9VwBwnYQwDiDSOgV0rnqfqAZ4cdlkCjEzDDzbaR4OxUpqEXJXcZD/e080OVpO77krIhaIEreLPMDqb4e3hOx5edgqkp5Q9ySRrSfI+XqrnRfKpsESCSys9xQHrNk5bL3r6nW8m5S9QgOhZr5EA2F6/0p32PgANVURrednsS7GcnzWs+fkRgyMp5wc7QefPGiWehXtrF9D63vGOzQA34TlUpPz/+X6ZnfIHTOmoIJvVZuE4F1e692C/jmwZO/yEXP+xRLQKBFmr8dccChBNyiFPX5w5+D+Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(366004)(396003)(376002)(346002)(8676002)(1076003)(38100700002)(38350700002)(66946007)(44832011)(83380400001)(6486002)(66476007)(5660300002)(478600001)(6512007)(6506007)(316002)(66556008)(26005)(8936002)(36756003)(86362001)(15650500001)(2616005)(52116002)(6666004)(186003)(956004)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?dV2/Wt4AV331TEP6vBwQVN9QU4n84vyejRsfQ4tmjvWO8ShEPcuGcGePh8Xp?=
 =?us-ascii?Q?6Cv1j6BauNHFFQZr853adiBvYIGB69MCfDKPnPhp3nC8D8ZOZ9lKuOdd4yBA?=
 =?us-ascii?Q?aMsAZ4q2XeP888AcZpYT+lxsfbBfJe0wdvtecH2GoTi6R3vlIdbfIgLX3toW?=
 =?us-ascii?Q?qHRU5sJ5l3+wF+FpGwGbhlmYalb5GQDZAdTGswHGjNFtrw+QcETptiUi9W0i?=
 =?us-ascii?Q?72dwkVL4YP8SZfwe/pCXqg2yg3xdKKWgLdfl93s0Jq86HaTHExYPIR/xdt0O?=
 =?us-ascii?Q?Z/a7iAc6WYgknKly5xr/XOVrej1Jn3EEd8dooYBAhjhSpSLutXQ6Gcn8XLar?=
 =?us-ascii?Q?+ZHC6YFp55iFv5l15NY2RUIxflXBC9AKvcmlURoHxYWYTyOfWKYPjXfxG81V?=
 =?us-ascii?Q?2ERDpeskjZOwFhpw+FJtrZfjc46e0y6Q2ngDl6OACf3+ICKVmh0aHIjItSet?=
 =?us-ascii?Q?ym5+RWmuoCnvK/WeXVlWkxQGQiutmatvBbIpH9rxCnoAntp9alFIx3aPhid4?=
 =?us-ascii?Q?X41sLreoIihxCguR/fLkpVC5CbCZofgCMRrxlIBn2yK9KbvbH/9kkHvBseq9?=
 =?us-ascii?Q?oKR1PwHVrXNnAvS8u1Oios52EOK01/0JRkkd2/sXj9d4cFiibDyK1yAPxvQF?=
 =?us-ascii?Q?df2VC2XmlPTxdr6mAl/vvJCzM9b6I+Cxs+mNb8HrGfLnEiwoUWMo0k50V1rj?=
 =?us-ascii?Q?lN4T2Q/MkyVa4jzaDPxFxFaUZMS+7+AzeH92jYOFV3dK4w5Os61qbyTv3deQ?=
 =?us-ascii?Q?C3zG7ZbHJW5qF9GRX+dOz8HILTpY8ARXlpXGxndc8+7OQiFrA3CrboMzBIva?=
 =?us-ascii?Q?1NWIXhV7Gn2DElPhpnHqftV05CLkI5/zDeKDTRZqcyhb9SFzTjVzJAWXtukZ?=
 =?us-ascii?Q?pUfVzfR/A9CNNFgSW5NmoPNE0rpHYu7pFgXAEKd5/S1i1ehP2bCK0WQdJzlb?=
 =?us-ascii?Q?qZfnIr+iqXpXJYH5jrvjgOxPVzDtn6XVInl7GUWBOYfTPTuaVgrz/B5CmQJt?=
 =?us-ascii?Q?kxiFF3MmOaN6TdmNoOjjMBE4weIy/qUQv3WCc6jZy9kpmPL+MH7wDb3MmNSu?=
 =?us-ascii?Q?q6+b0z1VgdAXqNO2eb9NQfbJMFCGRh3ogP1786gnRpVKJkM7h5KN50SLivNm?=
 =?us-ascii?Q?zELUMIV8kjkDvXOxtVbUntJmCZZh2qev/vdufpNsC7OjAihbUtF4VfUHcvhv?=
 =?us-ascii?Q?5I+MhNxhbXcZjlO2assZsR0tdMgDPdTjCSKq5t5KGjjn77bRIwOT8XJ34CuU?=
 =?us-ascii?Q?8wSoNGkLyhLQtKjKoS6t+gbndTRVomKaMHSZI8e9Ji+AblNixPHgjZQPzqyx?=
 =?us-ascii?Q?TXjF7L7hsQ99B7A/xm7ZZklI?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dca30575-5902-481d-947c-08d957e432f6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 07:39:47.0120
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vjNGqtD+6p1m0mZxWDjT0iYnvSDis452fuhOPMba3EUk5aZnc36uS2HrRQxpj2gTPEJveDsG6CW3AfaEXsa4qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1264
X-Proofpoint-ORIG-GUID: bkUt6AYZzwHrbtRlucNIcQqxGZ9coZeU
X-Proofpoint-GUID: bkUt6AYZzwHrbtRlucNIcQqxGZ9coZeU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-05_02,2021-08-04_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=588
 spamscore=0 mlxscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=21 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108050044
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Remove mata-qt3 layer dependency since is is obsolete.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 README                 | 7 -------
 cgl-init-build-env     | 2 +-
 meta-cgl-common/README | 7 -------
 3 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/README b/README
index 0117c1e..bb2e0e7 100644
--- a/README
+++ b/README
@@ -18,9 +18,6 @@ This layer depends on:
   layers: meta-openstack
   branch: master
 
-  URI: git://git.yoctoproject.org/meta-qt3
-  branch: master
-
   URI: git://git.yoctoproject.org/meta-selinux
   branch: master
 
@@ -86,7 +83,6 @@ other layers needed. Adapt the below list to proper format.
 
     meta
     meta-cgl/meta-cgl-common
-    meta-qt3
     meta-openembedded/meta-networking
     meta-openembedded/meta-filesystems
     meta-openembedded/meta-oe
@@ -99,9 +95,6 @@ other layers needed. Adapt the below list to proper format.
     meta-security
     meta-cloud-services/meta-openstack
 
-A BBMASK definition is required because of some recipes duplicate existance:
-    BBMASK = "meta-openembedded/meta-oe/recipes-support/multipath-tools"
-
 Now there is available the "cgl-init-build-env" script which could be used to
 automize the above mentione information:
 ./scripts/cgl-checkout -b master -l meta-fsl-ppc
diff --git a/cgl-init-build-env b/cgl-init-build-env
index e04846e..acf459d 100755
--- a/cgl-init-build-env
+++ b/cgl-init-build-env
@@ -28,7 +28,7 @@ unset OPTION
 
 NUM_CORES=$(grep -c processor /proc/cpuinfo || echo 2)
 BUILD_PATH="build"
-METALAYERS="meta-cgl/meta-cgl-common,meta-qt3,meta-selinux,meta-security,meta-virtualization"
+METALAYERS="meta-cgl/meta-cgl-common,meta-selinux,meta-security,meta-virtualization"
 
 function usage() {
 cat <<EOF
diff --git a/meta-cgl-common/README b/meta-cgl-common/README
index ec6e8ba..2928890 100644
--- a/meta-cgl-common/README
+++ b/meta-cgl-common/README
@@ -18,9 +18,6 @@ This layer depends on:
   layers: meta-openstack
   branch: master
 
-  URI: git://git.yoctoproject.org/meta-qt3
-  branch: master
-
   URI: git://git.yoctoproject.org/meta-selinux
   branch: master
 
@@ -86,7 +83,6 @@ other layers needed. Adapt the below list to proper format.
 
     meta
     meta-cgl/meta-cgl-common
-    meta-qt3
     meta-openembedded/meta-networking
     meta-openembedded/meta-filesystems
     meta-openembedded/meta-oe
@@ -99,9 +95,6 @@ other layers needed. Adapt the below list to proper format.
     meta-security
     meta-cloud-services/meta-openstack
 
-A BBMASK definition is required because of some recipes duplicate existance:
-    BBMASK = "meta-openembedded/meta-oe/recipes-support/multipath-tools"
-
 II. Misc
 ========
 
-- 
2.25.1

