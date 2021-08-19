Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.65782.1629348449074320475
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=sYI46Qyg;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4d3in003987;
	Thu, 19 Aug 2021 04:47:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=rVy4SjpSvkfaw6hNz+tbH8omDHtE2Cs1qUhoOIJJoAg=;
 b=sYI46QygVuC0eROmtpjRVPm2wIrB2aMfkRvaX29rEh+3QaDfhgzpSfyAjc9RdB+uAqRP
 Q9WrdpYNjK/VDDvoWP5KQy8+vtSmkwluZfGEh4rN333+y9pOxx6iJnvuaAZIlQPgHWwF
 vpDsGYb3C0lBQpMaSK+FtpElRmGQHqErOmgzoBE+8gCdfcSkyH6rhG0kVJaWOvZ98Y+r
 NAYn6CgSDCtpfKagxCBvLefyTIQfXbk3PD/mbWYowtauLdvFWxYhtfcBPFQxIaSb3v3/
 5Twa+ujymbjQxrzatxrBSvHRfafxD4OiRINCuEFaqA+sZttog/ubt5D9f5c/83kQogzy kg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2046.outbound.protection.outlook.com [104.47.74.46])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahfs9g0qk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 04:47:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HSDj8Vd73/XookLJdLpnwS2Jj50H7VWkeE2zmmGKh5NBcdlfHSUBwUPPM7HZMGxseP0IyveuB8zTdaKUbGQ6MTfJbpGSQHNBfQKdh8AEKwB1Kbj+6SmxT9/nosHvHesALx2TX93KZyXEl55pnZiK8MlZDDAJtInznlbA8lHXBIxlkbJiFl9EeqOthkBu5/gBZ1AGZnTzLEOUKhOBdPZVVbXOWGL3BAYZt8BbBbbm8OodrO8dOWTMKC2UyItpqrUuyAnrJxFJ7zUJQbhlVlRLfg1OZrSpniFVpFHqNFlUSEIgvTd0LhMkuDJpsJpHCzEAB9CX9GjUWtd9SZWTWWCUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rVy4SjpSvkfaw6hNz+tbH8omDHtE2Cs1qUhoOIJJoAg=;
 b=L8NgSNvA/tzwT5xwn6QZ/lt8ZboHzkjnw4ttV7kB4npxOffFW+w8JH1le9qP//H4wVxi9U2JIZbVEicHrKoX/kKr2pjYhdjHKIOVa4ItHwhZheKYpI3i9FFxXdidkrhYlSlO64VDSEfkMbteLguUdvxKWQ9lrAq8dcmdaDFUUMPhvxc5fP1kbfETK/mvvbVFlasSw/nye9Y5kWJbhXnWB2JF9wmDhkri2gp93nLIQZQ3B5RKVsIi8NV1lcA61OBsHQ4pl/6A5eWLQZLCklPr3sCG1A5LPGlN9aMGnbohrMGS75o2TtwBLwLm1SbMUpQytRFFRapXltVgxGHQzS9NQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:26 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:26 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 05/12] lxc: drop bbappend
Date: Thu, 19 Aug 2021 12:47:01 +0800
Message-Id: <20210819044708.105282-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc977545-de0f-431f-7521-08d962cc711e
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4867F0F052BE467717836790F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1107;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JHTr32RbwGAMmkjxC+0BxPphwSxpOUZU4V/+9EIXrdTd7jbo4NBWa1mGJC8I0o8NH1cws7xNYl+n+jtoYvzaZ3GGdSlsZX53heMwmKAV5sIABAK40b34nGobZ7dcqCkNVhg81QoYemoKzR+hbznTkjjXhJBodh1eXejpF5LueUc3GovQM8dGt6neokPh9mzpEtusUDVMbux0IOLgMFdRohiY/zMcPtfAU2r+Kr/kHb8TfUzyHSeufaTjEsHFKRL6B8jbUwRvOtlDn6wdy1PI3bJR/0piYEv1wGw/E4838IYBf6mnxmwt8i7sBrbgIbS/plbYEwTJMWYj3K//fbh28z/Zw9MVgOWSsJk5/anKirJXKy0BHZhzzCUel6zaWAmGjLMlPgIz6DXLSW+JMWI1xCWxzWem5LMvUxvTYggFQNY/8w/N+prBuLsdzvFnQMIv1CjOXPEq7rOxtwNPTajkniW3FFKcZy/PrE6ZoEAkcsnXSqzvc2RHd5eV4cJ7OQ55PqfZLPEHy0MPmp+kvh01AMY5z5w9pH0S2g7q0p51+AMzoMOOdRZ59leNM/pC/RilbDF3p4JJVWlViAedw58EAQ3u8c/qoN47F+gJ/lBMHAdGzdH8/QTFX5RuCCGmEzgK5pApFnzkpWxwWdli73jPcX8tur0ohDN6Pfz2O980J/RFbmMHO/Dm0ka59wPW6znIJZWL5ZWbdAyG8L6m1F4Eyg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?b3Jk+uCXu7o9OiweLEsS5+gmH4dySnMDsJY0ap9APHDiyrwrCaoavtZ1uxyB?=
 =?us-ascii?Q?32g05fFJmr5LABxt5n9TgypcsJLibuzcRmiRx+OZ8fttO8/kJ8bZY4q2AUkm?=
 =?us-ascii?Q?Gob8Rj2+wIP676+ZlkjHshgA5QX4VdiEWf3DsyPNeq/wuPd1mkYkYKzclmni?=
 =?us-ascii?Q?YyJj9YBMOIZGofluaxxb6azqKRouvL9Jt8NWRfnpl4LqpNHpG3U7eVtvOK8E?=
 =?us-ascii?Q?fc37x46wkar+r6gZiZ96SxiMCNlztJDE1USZdjmUWqNTqNvf8JIn6srhhJ5/?=
 =?us-ascii?Q?UvLYUbyxfOkGYI66vaW3QtSJB/6QKOuY9xGd2l0lE9gJrsR3lfblezZQGCdM?=
 =?us-ascii?Q?PuTXXTQNSiFU3BZH9GkgR4GC9ThG5U0zrm0z9zyBQ493ubvcM/ftXJ8QnLsH?=
 =?us-ascii?Q?hcBcSANDC/ytdSJ5LqU7LeHaezFIWY2zkA8r+zHaP/dNMvgkC2EjozZfYDa8?=
 =?us-ascii?Q?5CUYGpiRzXjB2TQTQ4FsxQiHW/eB8FOUTOif17Vr4VQ0iRoT+byEmRu7SNy8?=
 =?us-ascii?Q?+AVYR3+vRuB0o2gTlqloxiyNAw4FNWqO3qOpnV7eQ1W0//v+itQpxBEjdPXF?=
 =?us-ascii?Q?hnSV5qxpn3grcfCBmzZKE6mPdyVLlUybZ1jK917H3kE9QaITUynSNbvOINK6?=
 =?us-ascii?Q?Ml/DGvpIDTi+mZsmnAnerr4g2Keglh3a1WCP9RDgyv0xFKYY4RYwP3plI6rF?=
 =?us-ascii?Q?+rSQVfQk5fxqvyka9X74v0gSQ3pji+fn24oQO3PBtJ2Nk7E90uyjptcxt4yg?=
 =?us-ascii?Q?fx4h2d85M3QTYkHMcmPJLJDZyKrhHsKMw5T8Be2Cw/ygB3QiKyWKEiZTBqyo?=
 =?us-ascii?Q?ez2Ww3LgUVieF9ryhVinwnIzR7kqk3lkYwP96o074zyJluTkdKicbnBVW+tm?=
 =?us-ascii?Q?Q+rpffPGC3wt3RWoHoA1ctuYCLvwRtztd1tdpFBPq/yC64ad1IDYH8thaTra?=
 =?us-ascii?Q?QiYlCNIMhCHZhlcE0I8okb9TvAh9CaRj/GmKvzpeChRLEqSnXz5nmymWBtQ0?=
 =?us-ascii?Q?IxKfT+51Kt8NaZKtpfsxFaBPF4VavJGNdgnaZFnoHKVaqcsoI0ios9wRPioT?=
 =?us-ascii?Q?MNzfK4yIzAeK6eIKTfnndxcre2UrXdbLsEWYQYQ0caNOh/Q/pS+k/oNYaSja?=
 =?us-ascii?Q?cc/YZUUwJEus3nxzoEk0q6MigYkwNhZQ8PsnQ9/nrcy4Iud2r1GFV6E0Jmb/?=
 =?us-ascii?Q?ihbA5AtKilEP2VnLDiaSaJy75mQr4/x0bPgNcd76gIpNFIf4YtkJQpkBuHWZ?=
 =?us-ascii?Q?SoXAb9EFwLwUAPC4yhOZmZ2EvkNffxJC3jJYiQSCEvhls+9Ab72KXCQNaw0A?=
 =?us-ascii?Q?FuANNAyvLGbEDuHRmX0BTijx?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc977545-de0f-431f-7521-08d962cc711e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:26.1552
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dB9EBGA0L3eDW79z6pgVtNKofscRcQwWgqpAn8Oe65tjVTbS91bfQoH/7QtUXKr0DHxoeZQzf2QDfW/tVPOydw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: RptfMOFomQJaAFrh17_Cgh7nBNjyfqLy
X-Proofpoint-ORIG-GUID: RptfMOFomQJaAFrh17_Cgh7nBNjyfqLy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0 mlxlogscore=692
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The PACKAGECONFIG[selinux] is enabled in lxc recipe.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf                                                 | 2 --
 .../virtualization-layer/recipes-containers/lxc/lxc_%.bbappend  | 1 -
 2 files changed, 3 deletions(-)
 delete mode 100644 dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend

diff --git a/conf/layer.conf b/conf/layer.conf
index ebc8e33..fcd61d5 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,8 +7,6 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 
 BBFILES_DYNAMIC += "networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bb \
                     networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bbappend \
-                    virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bb \
-                    virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bbappend \
                     meta-python2:${LAYERDIR}/dynamic-layers/python2-layer/recipes*/*/*.bb \
                     meta-python2:${LAYERDIR}/dynamic-layers/python2-layer/recipes*/*/*.bbappend \
                    "
diff --git a/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend b/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
deleted file mode 100644
index 74e22b3..0000000
--- a/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
-- 
2.25.1

