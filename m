Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA6C0502E
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.55471.1661653801874931355
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nnnWsiDq;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2U1XX008518;
	Sat, 27 Aug 2022 19:30:01 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=X9vXZ5BVJu+8ukACoj+HdGh2xcFKRi6qD/ZizlB6uHQ=;
 b=nnnWsiDqN6YFudvF3jaoyAHyMCWMraKmxV6NMjvLTv773LLdIJKkfnH4Q3y5sEvXfU/I
 zmxCpB6X/Sny5pekf5Y39aN506DMw6LPYMN+BJ8YabX6IcZOWmLVsm8NT8IFmoyZTDKX
 RDQNDUQ40kKKpU/MCI/f+s7Ez3TnI8EKhiyuvLC2XdC6orHx5ehLBp7hlWw2aTzsDcKd
 eem/XN0fDrKRmXmfoKxHg3KZkT9t7eQAYugyblTF4vu4dF7HrL15bAp/dBpQjIfX5YkW
 DNLq8d9TkMEIrxC1/kYONx36Mo7H1Xd+/P4ZVKPhEb5FP9AxPzb0xhkLc92zOJXDXIID vA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2048.outbound.protection.outlook.com [104.47.66.48])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7jsk8d5c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BbC5jfAnKrFe86sOIozG95otNsIIbfVUZsFGFP8tbbCOlfhlfwCoyZK5hibB+WkztT+l7uK9PWRoSwojZsZC9fPWhBEsINDfM1eT16gcYcs3T4cL5Y94tuaRKUUSooF60VfVdv+TW0qsTuTqDYcXWMjEBJ6c4p0aa1wwv4eOPW1zPjtW8SR/gZXuAzNCFIDXDKOhyC1/5QwhWHQF/Kbe19NbpRL3x/iJJPd2/b73Z0swhG68SqneXo0r4Z44aE6OEUatFDwh01OrMO7Cx9hWvhEOYWK62Vd+qkHfkA+nQlsG0CHipJzwaBz0aj1w1PeI4r+GT3CRrtd8rbMmfyEOsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X9vXZ5BVJu+8ukACoj+HdGh2xcFKRi6qD/ZizlB6uHQ=;
 b=e8ocxCO8ppUp7yg2rmpycDhTwItfQUzQ83sLE1N/eZgS+Vjz88hTH5YlQkeJBk/xg1eaTanblSBbAyj9VRE1oqY8TrtBYjcBTJDyf3Nz42uASZZOC9jffjwr5S0HF8YsPM29ESUjmjmC6nhEeoQG6KYVxsvcNWCjHS2670Cy+K8Lln8/0wOxV8gkB+qwTXitT2K3FswsfYL9CbeK95FQTfBukOr4PnLCDVBkv4scTqaSsZU34A+e8NCvb2Zdh/f8XZClNf4rL8/lXuxjx4zpohgHQXiQgGos3/xAI+75xf7rnXQ/2GZKD5E5kTX21QvtURkehqWnRyAfS81r+6WARA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:59 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:59 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 08/16] policycoreutils: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:26 +0800
Message-Id: <20220828022934.47592-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb8eebd8-e396-4d7e-a73d-08da889d3416
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ljBhdH4YdK9Dlh0r8bgdbLMx9OPh7uTToPdsmaytqfXukqm8bjB8l16gdUnhtblvS3WDUoCrsY+ZefiyimMnG51OzogEY9HtaAKdZCt4yuNbTONm2eQBRjdO6IcT56xFBt4Vip6X/l+wTO7GDv81EhnPfpWwOG3qHtAEj95xhjm2yrIG76cY0YGOrOPJK8bf/kB1wpJxiIw/ZwUxBJLFT+SvMhHyx3u+MrUNm6N/wMcu/V9dLSz3pk26I12hVE6WV8cXvKzjs3T389y7+iW0soicf+v8ieAE0ZDKSanXn+4vOWbLtTo2rsZo1bk5PCCaRPrRfWzUFslJZ3S4mWOpfu5VorWyQRffVTE48IaVCJK1uI7nI6Gnnxyxm/5GZzCephxdn24HRMzX3QhYR2+TARoL8pfu6hpZ3o0e8AlLaXs461UnR2DO9PWXWyUz8TCDdsg0XhmLiUc0mikwuoUQP5YS4KIwnq174A7MtvIioCi0cOZy+tVA4EiA0EipnGPjaq4UaNTuQm7kTmdN3isaNMjIQN8CBdjyKGLr8UegfUK+DhnHIc9JbY/jb5UMpXAaOzFLv8wyHguMDTGkS1DB9RKlZUhve6Y41wq1mCdCPh86LumfZvTJ1nbbkOpHknNtnUT4gIva6RHNPtrTXdPftiTIQiT06SqapIFqixedaaTXPHmbf0DDIqnEMPCgyrq9+XN5sRoE155Flul4UaU9teNJeNm0x0XAsPxyGjgozFP6EW7NvmrNMFIEgUMM5kb8xAbR6LLoy2GZVZfgISQbTg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(53546011)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?P+oA9blLG7W0MBHswIzWzR+qFckcKpVzvpysq8o7amvyZxNv3tGI6EIP90sp?=
 =?us-ascii?Q?v17aoGh4X+fgwez4jTEDdYJTrSU1KA8NSmX2CCu4CPASIPg3mN8IWqfSJ6Bw?=
 =?us-ascii?Q?jBx9/7dIhm4Mwbdx66XOLssicMg/nYsElkqMqxjQyfEKvZVg4k6jqkzVEbPv?=
 =?us-ascii?Q?q+wVNzY/fh/OWv9sTl5FAhAthZ/dQIXuwHaIHAK4joVsIxAoYTv1OfY11pgz?=
 =?us-ascii?Q?Tg/tXFA8VbLTnAUDvLEAGPxydQ0fnJ65RX853pNMemuHvhfFysEvezlW4Opr?=
 =?us-ascii?Q?0T/pkyK8ii0KMcRJz7XXJx2GysG7TjDdUPtU7b4A5V1O7AonyGWQ7hgl6t3N?=
 =?us-ascii?Q?PTQq77p7spu8RwJnj1iBWGM9PaM7xJcEmhMeBNKcsu2W19FAVEFglI1OXZa8?=
 =?us-ascii?Q?YI4WcZy+ZqvlExoHyAj5fYrJRphMnsfKVB5EBz+NemEvk4S0dP/0PYzbb3XV?=
 =?us-ascii?Q?pzFTs7OPOLJ3YaJmOaqt+k2+oIC+L5uDTjnquCgjMFpxdgl0FxmTOrK7e2UF?=
 =?us-ascii?Q?lfQgfGsAigyx1hc8fV0zySAq/VClinh21m6EgZlP73WyX9zKuRMmAMWu9rIq?=
 =?us-ascii?Q?6peOzF1YPsK2s4JXNnq7eYav8+x8Rs9Qz5LqOrcujKwwUCcai1DreqNGb4yw?=
 =?us-ascii?Q?dSHYaEQ58RgppnOKTpLGvZQhRh5ObpTok9E5SfJeYZ8PnOPZ6jB1e6LWIL9z?=
 =?us-ascii?Q?snUxOsIf7Mgk0dvKX4euNfziYJZWbGxt8XFI1vuJXp6BoVucCl8q0AEYLchL?=
 =?us-ascii?Q?MZCJgMt3oDLNDu4QAxU2UpbzvSH8eR5GfTbO7SqzeT66xy7yN/ztd/53cnDI?=
 =?us-ascii?Q?77TjWnkW3F3EoMo01tm8VqnOtrL3qMelSaTyKwCVCvB1tlGGFOPzwDfNJ4Ps?=
 =?us-ascii?Q?WIJhm8mYLl4zZU/Eneky8el59ThY2NuDV3pqBQvJrDpQp7VnnOFWQowpNkhH?=
 =?us-ascii?Q?Oo3wfwc8B1XPPzgWJyf8L3GBoXh1peyZT3EH1Md9t82WHt8B3xEI4BgECIh5?=
 =?us-ascii?Q?3r4gDi2ZfLHQN+EkHd92I7Qc1swmEX8+qpSjUk5joKr8cGGliHGy5l45EsX6?=
 =?us-ascii?Q?gNDJ8gFgtXsXjZsxinCSY2mhuZpm1BX1SyBejpxXjx7hQgyQNg9NnZ00S1ga?=
 =?us-ascii?Q?AtamLK+as8gc+DjyzuivqbZmPBJPxGIaZ9yszY7IFyGnJnOxB2uvh9iJstrj?=
 =?us-ascii?Q?hBreAd6nArnjcCr1Z0o5B/EZZ9bYb0XSrzh/qqsWOS2GwJ1oC0MUV2A3KEjh?=
 =?us-ascii?Q?pBj2qHzKD+Xq/LLGuv6MOa9t4yi9DfP/pUkRzK0JR9Lqid2QACMdvRbu9WuT?=
 =?us-ascii?Q?CnfIl3+bHsKDcoECknkvlm8F1q3uJjMcItQKE+IBKid56CjQw22P0ZTIeT+p?=
 =?us-ascii?Q?CS5WZPbGxLdtFzBVtw30C52dU0KgCKWyfbUa7c09Grhm4p/e3yn/q328JuIX?=
 =?us-ascii?Q?ZTiZyj7psLhhEefYKr0HvLa601PidOPrThbdNy+t4Ya03SftxIeWOMwyKqql?=
 =?us-ascii?Q?KI4tng46PTfcGPSeKW5li5rQd28EZm7/wopzXDxquCN4RfP2VpaXq/UTFkwT?=
 =?us-ascii?Q?1XgOfvYq3Xcm2MDDl2tC0GVqrdxdBDEdUekU7QKU?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cb8eebd8-e396-4d7e-a73d-08da889d3416
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:59.2739
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 RcSAkPfj2nZBm+vxGTtoEbT8FnG2DypZpxisrHFeCU3LkpvdDgOxalgBGMMKVq3+6jUm9FAY3lPW3D/zZ77Xgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-GUID: Wq7m-HTkDtde-S7I8Ev2L4Qd5oA_6Xxm
X-Proofpoint-ORIG-GUID: Wq7m-HTkDtde-S7I8Ev2L4Qd5oA_6Xxm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 mlxlogscore=999
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57923

Refresh patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../policycoreutils-fixfiles-de-bashify.patch | 14 ++--
 ...oreutils_3.3.bb => policycoreutils_3.4.bb} | 72 +++++++++----------
 2 files changed, 43 insertions(+), 43 deletions(-)
 rename recipes-security/selinux/{policycoreutils_3.3.bb => policycoreutils_3.4.bb} (78%)

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
index 70cdd4f..0e80959 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
@@ -1,4 +1,4 @@
-From 25ca94680f2fe20f49b80e8b5b180a0dbb903f17 Mon Sep 17 00:00:00 2001
+From cdc8f6e887d9ab8944e3ae89dd18bf55edf080c4 Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 20 Feb 2015 17:00:19 -0500
 Subject: [PATCH] fixfiles: de-bashify
@@ -10,7 +10,7 @@ necessarily the best option here.  Introducing a second invocation of rpm
 is minimal overhead on an operation that should happen very infrequently,
 so we'll try that instead.
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
@@ -19,7 +19,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  1 file changed, 14 insertions(+), 9 deletions(-)
 
 diff --git a/scripts/fixfiles b/scripts/fixfiles
-index 1aa330f..a10837d 100755
+index c72ca0e..143cc2e 100755
 --- a/scripts/fixfiles
 +++ b/scripts/fixfiles
 @@ -1,4 +1,4 @@
@@ -51,7 +51,7 @@ index 1aa330f..a10837d 100755
  	  exclude_from_relabelling="$exclude_from_relabelling -e $i"
  	done < /etc/selinux/fixfiles_exclude_dirs
      fi
-@@ -138,7 +139,7 @@ fi
+@@ -140,7 +141,7 @@ fi
  # Log directories excluded from relabelling by configuration file
  #
  LogExcluded() {
@@ -60,7 +60,7 @@ index 1aa330f..a10837d 100755
      echo "skipping the directory $i"
  done
  }
-@@ -201,8 +202,12 @@ fi
+@@ -203,8 +204,12 @@ fi
  }
  
  rpmlist() {
@@ -75,7 +75,7 @@ index 1aa330f..a10837d 100755
  }
  
  #
-@@ -276,7 +281,7 @@ relabel() {
+@@ -295,7 +300,7 @@ relabel() {
  	exit 1
      fi
  
@@ -85,5 +85,5 @@ index 1aa330f..a10837d 100755
  	return
      fi
 -- 
-2.13.0
+2.25.1
 
diff --git a/recipes-security/selinux/policycoreutils_3.3.bb b/recipes-security/selinux/policycoreutils_3.4.bb
similarity index 78%
rename from recipes-security/selinux/policycoreutils_3.3.bb
rename to recipes-security/selinux/policycoreutils_3.4.bb
index 552d354..ab871a3 100644
--- a/recipes-security/selinux/policycoreutils_3.3.bb
+++ b/recipes-security/selinux/policycoreutils_3.4.bb
@@ -18,48 +18,47 @@ PAM_SRC_URI = "file://pam.d/newrole \
                file://pam.d/run_init \
               "
 
-DEPENDS += "libsepol libselinux libsemanage libcap gettext-native"
-EXTRA_DEPENDS = "libcap-ng libcgroup"
-DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
+DEPENDS = "libsepol libselinux libsemanage gettext-native"
+DEPENDS:append:class-target = " libcap-ng"
 
 S = "${WORKDIR}/git/policycoreutils"
 
 inherit selinux python3native
 
-RDEPENDS:${BPN}-fixfiles += "\
-    ${BPN}-setfiles \
+RDEPENDS:${PN}-fixfiles = "\
+    ${PN}-setfiles \
     grep \
     findutils \
 "
-RDEPENDS:${BPN}-genhomedircon += "\
-    ${BPN}-semodule \
+RDEPENDS:${PN}-genhomedircon = "\
+    ${PN}-semodule \
 "
-RDEPENDS:${BPN}-loadpolicy += "\
+RDEPENDS:${PN}-loadpolicy = "\
     libselinux \
     libsepol \
 "
-RDEPENDS:${BPN}-newrole += "\
+RDEPENDS:${PN}-newrole = "\
     libcap-ng \
     libselinux \
 "
-RDEPENDS:${BPN}-runinit += "libselinux"
-RDEPENDS:${BPN}-secon += "libselinux"
-RDEPENDS:${BPN}-semodule += "\
+RDEPENDS:${PN}-runinit = "libselinux"
+RDEPENDS:${PN}-secon = "libselinux"
+RDEPENDS:${PN}-semodule = "\
     libsepol \
     libselinux \
     libsemanage \
 "
-RDEPENDS:${BPN}-sestatus += "libselinux"
-RDEPENDS:${BPN}-setfiles += "\
+RDEPENDS:${PN}-sestatus = "libselinux"
+RDEPENDS:${PN}-setfiles = "\
     libselinux \
     libsepol \
 "
-RDEPENDS:${BPN}-setsebool += "\
+RDEPENDS:${PN}-setsebool = "\
     libsepol \
     libselinux \
     libsemanage \
 "
-RDEPENDS:${BPN} += "selinux-python"
+RDEPENDS:${PN}:class-target = "selinux-python"
 
 PACKAGES =+ "\
     ${PN}-fixfiles \
@@ -74,34 +73,34 @@ PACKAGES =+ "\
     ${PN}-setfiles \
     ${PN}-setsebool \
 "
-FILES:${PN}-fixfiles += "${base_sbindir}/fixfiles"
-FILES:${PN}-genhomedircon += "${base_sbindir}/genhomedircon"
-FILES:${PN}-loadpolicy += "\
+FILES:${PN}-fixfiles = "${base_sbindir}/fixfiles"
+FILES:${PN}-genhomedircon = "${base_sbindir}/genhomedircon"
+FILES:${PN}-loadpolicy = "\
     ${base_sbindir}/load_policy \
 "
-FILES:${PN}-newrole += "\
+FILES:${PN}-newrole = "\
     ${bindir}/newrole \
     ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/newrole', '', d)} \
 "
-FILES:${PN}-runinit += "\
+FILES:${PN}-runinit = "\
     ${base_sbindir}/run_init \
     ${base_sbindir}/open_init_pty \
     ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
 "
 FILES:${PN}-dbg += "${prefix}/libexec/selinux/hll/.debug"
-FILES:${PN}-secon += "${bindir}/secon"
-FILES:${PN}-semodule += "${base_sbindir}/semodule"
-FILES:${PN}-hll += "${prefix}/libexec/selinux/hll/*"
-FILES:${PN}-sestatus += "\
+FILES:${PN}-secon = "${bindir}/secon"
+FILES:${PN}-semodule = "${base_sbindir}/semodule"
+FILES:${PN}-hll = "${prefix}/libexec/selinux/hll/*"
+FILES:${PN}-sestatus = "\
     ${base_sbindir}/sestatus \
     ${sysconfdir}/sestatus.conf \
 "
-FILES:${PN}-setfiles += "\
+FILES:${PN}-setfiles = "\
     ${base_sbindir}/restorecon \
     ${base_sbindir}/restorecon_xattr \
     ${base_sbindir}/setfiles \
 "
-FILES:${PN}-setsebool += "\
+FILES:${PN}-setsebool = "\
     ${base_sbindir}/setsebool \
     ${datadir}/bash-completion/completions/setsebool \
 "
@@ -115,11 +114,12 @@ PACKAGECONFIG:class-target ?= "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)} \
         audit \
 "
+PACKAGECONFIG:class-native ?= ""
 
 PACKAGECONFIG[libpam] = ",,libpam,"
 PACKAGECONFIG[audit] = ",,audit,"
 
-EXTRA_OEMAKE += "\
+EXTRA_OEMAKE = "\
         ${@bb.utils.contains('PACKAGECONFIG', 'libpam', 'PAMH=y', 'PAMH=', d)} \
         ${@bb.utils.contains('PACKAGECONFIG', 'audit', 'AUDITH=y', 'AUDITH=', d)} \
         INOTIFYH=n \
@@ -131,6 +131,14 @@ BBCLASSEXTEND = "native"
 
 PCU_NATIVE_CMDS = "setfiles semodule hll"
 
+do_compile:prepend() {
+    export PYTHON=python3
+    export PYLIBVER='python${PYTHON_BASEVERSION}'
+    export PYTHON_CPPFLAGS="-I${STAGING_INCDIR}/${PYLIBVER}"
+    export PYTHON_LDFLAGS="${STAGING_LIBDIR}/lib${PYLIBVER}.so"
+    export PYTHON_SITE_PKG="${libdir}/${PYLIBVER}/site-packages"
+}
+
 do_compile:class-native() {
     for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
         oe_runmake -C $PCU_CMD \
@@ -143,14 +151,6 @@ sysroot_stage_dirs:append:class-native() {
     cp -R $from/${prefix}/libexec $to/${prefix}/libexec
 }
 
-do_compile:prepend() {
-    export PYTHON=python3
-    export PYLIBVER='python${PYTHON_BASEVERSION}'
-    export PYTHON_CPPFLAGS="-I${STAGING_INCDIR}/${PYLIBVER}"
-    export PYTHON_LDFLAGS="${STAGING_LIBDIR}/lib${PYLIBVER}.so"
-    export PYTHON_SITE_PKG="${libdir}/${PYLIBVER}/site-packages"
-}
-
 do_install:prepend() {
     export PYTHON=python3
     export SBINDIR="${D}/${base_sbindir}"
-- 
2.25.1


