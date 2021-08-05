Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.5798.1628149188359631470
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 00:39:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=HXS4wlVV;
 spf=permerror, err=parse error for token &{10 18 testsso.windriver.com}: permanent DNS error (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38513e44b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1757ZXKG029366;
	Thu, 5 Aug 2021 00:39:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=gZ43Ofg3R431RLsWZVGdnKh62CrJyYQ+Tz4KKxCD08c=;
 b=HXS4wlVVnoNOwmMlKTruw6esJGjObZtOOToez25W/vAsN9juOUn26+uEI1Poxglc67x0
 RGkW9ZBQ6uaOeuKz3M+sRMQYDqX6GldyRyDC5xrNHl+q7jd+Wx/f0HBgmXqottXgMjxr
 EM6uH3jKFUicJEcOYvF5mai1F1AOayzVZUOaD15gOugRCemijSSQm0lie1b21o19HYAU
 4Qo+tATVsSI0QmeeQj9K8z4geQ16U+IP+oRg/jz1v0AvaKgv8xp+mXBTEhPw0xKt6o6D
 iV5JtLi+Zmts9OphxgoKk2SAujEb7xA8E2cP6MKJKHRVTEWvuGQw62SdpJtCmRNY+u5Z zA== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a800vrcwr-4
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Aug 2021 00:39:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ch/exMvWuG4TyhgK9wpr2pcS1u9IbhTkyBITNEhXQ8skpxCS84QddY8+XpRLr70X5HfSwNfGN3tZhrSx/VddMHtS0tykMykcZTmxCQWQXk4DqOICpt0clKMg34MoErE5mqIjRavW2bPi/hhqBAgEeZuX6V2LQxOcYD7fXH/vXoF0CiQcSS3HAGqewkaCTLQrClACP23WF++ed0ImHtgEpCFvzJU3UsUhOjq4P8NPX+BzSqUeetw6t2xoxWf5waB+mg+224RGnehM+I0LADD9RkbCoSl90SOHJKfVFmdI0xG5gyex9E2WXON+9lM1/MkNNfi0Og+kiMMwtXmcXzkdnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZ43Ofg3R431RLsWZVGdnKh62CrJyYQ+Tz4KKxCD08c=;
 b=PNg4S6GVyjgL56Hw25Np+32AoitUk+PlyCMxwo3OZc6QUStSy0i+jffg7QlRe6xgDv7sEH6h2RKh/LyO7fJwcOnPHaiISc07GQAhOwvc44z8VgTHp5g2b/C9XzLEjiS6Rrr6NtJdWqvLoKPnipkwbioEOFalNls0+TTsd7qGtTWO+jizpnY1DsOfO0cb2Crsac5kfpcD+3EFfaTp/uEhhmAPZuGrIGNXrpb6B1OlS+EoEzHT1Yq8ySI1xpPGXgSuRKiEowddbU8uUXUYb43TzhBt+0feLhtbRyyAMVNeHLs6RJ37WMrBgzzZaeUNJhjDAx2YHKz+DZ07n3WEos8Ydw==
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
 2021 07:39:46 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 07:39:46 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 4/6] cgl_common_security_flags.inc: remove SECURITY_LDFLAGS override for audit
Date: Thu,  5 Aug 2021 15:39:28 +0800
Message-Id: <20210805073930.382397-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210805073930.382397-1-yi.zhao@windriver.com>
References: <20210805073930.382397-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR06CA0016.apcprd06.prod.outlook.com
 (2603:1096:202:2e::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR06CA0016.apcprd06.prod.outlook.com (2603:1096:202:2e::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 07:39:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bfc595e2-1454-4b27-5998-08d957e4322e
X-MS-TrafficTypeDiagnostic: MWHPR11MB1264:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1264D1BC8CC22E39B9B3B0D7F9F29@MWHPR11MB1264.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lmnoQ8vkgjSauVVmOPDKltu5b9p4i/AFq1XDdHTSc+It1LhrnqKG26saDQ7xCkxtnI3yIiuRUx2ybII8Oo6MPew/arpWT9NYn4vrAecmJAnX11ARnmiWDFyFwjSrCB14RxwWsSXFu2g0vlvqb2Yr7CFE/o6LOw3O6nFHdA1W0livyzfnGBzU2uurTMsxEq4eGWH2zScrQxUnY57p0MjwUHcl3AmuGjx2lVcaawZOFybFxrUcU3MqDyxyr5uz1Rxh0xngLAS2yqyNZTgDxiSiAOcbwcHzC+hUNrYm2ELa9ML1L+3P3hp/gSIjrR5rqepIP3BtsgL5pVB0L4m7kqTAruC2WeSiLkecIHnSiiDbcGZKtjNtlrGqg3ZOWR8+schKik188/GAh+2WUfPXxovvCSYwxz3mcZ/smnIMnadNCSdkWt9Y8Z1vppF28MvZgtLCD5HVPGUQ0P413YSWbn1UP+nAkfPyJTVWZ+gT4fYd0YljHB3vfnWOJQ+BuDw3DGCcNLPQFUVejc7y0A/ATPW1XqF++yc2T9Bc7PXfgGXxACZ+KbbbxaQxipdFkvCzGIX1NCcA28BtBGoDv1gz74ofY8TXlG5Z+hXdLl5gg1ghRkOGicy5q/PjIkni078UKE2iZvVospA8grzCvYaVutF656+nFS4ZavGDor2+KfRTXyX+townei94K22BrKzHWxOAO2ys1umBkey3jFOKH7+hfg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(366004)(396003)(376002)(346002)(8676002)(1076003)(38100700002)(38350700002)(66946007)(44832011)(83380400001)(6486002)(66476007)(5660300002)(478600001)(6512007)(6506007)(316002)(66556008)(26005)(8936002)(36756003)(86362001)(15650500001)(4744005)(2616005)(52116002)(6666004)(186003)(956004)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?UXoURYYSeO1QpTvT6hNhj7tUs8lQoxSCykgXG45WZVyVfeIg9s1g0guxEQL/?=
 =?us-ascii?Q?JCZFatR+WHukTPEvZjBtWfBMdh6066bFadGpN10HicLZwV/8nNpS0RzxHnVi?=
 =?us-ascii?Q?HjFupgiHGhVCEcCqAzzdVOV++i/eKJLlN5ikb9+pY2k7lK8UdK3i84A6kPa0?=
 =?us-ascii?Q?P4B26p9ROGUZdJNkyM4M7ibt2ySO1MLd7B/VQ3XfeWxZKR0bvtYbE6BjH4sn?=
 =?us-ascii?Q?2sxtBBUawJmHDu97FferY2jpUcyAKJLsSwYYoRjDSzYq7LSIobNsZBnnkZB1?=
 =?us-ascii?Q?2mQQEkeah9Le7jWdUbkDjXDCQ3ZcTYFuu1676x+Be11Ldw8EdqieUlmM9l3J?=
 =?us-ascii?Q?hqkMvEH1KjwGMDzeKkbQdpQjDYMoqqF+9y2V2ooYkyYWzCQ9VfpVW5DPqQIf?=
 =?us-ascii?Q?JSEt/AmVeGaEZQJ2SP5yvvxDk0FVabiETK0A9ee31irFCCm6252chPspKrHi?=
 =?us-ascii?Q?8G5CPGGAd5PCdrBz7T18VeAO1tSsN2BcoZ6IV015dcRwDpI1H4tMTAijolHu?=
 =?us-ascii?Q?Q1aJamlhwY/Ecllck641En5KjegAq5T427ti2RATk6yB+69bNCtCodrCFnHM?=
 =?us-ascii?Q?nqlj9HN0qutsD8lGixS9xIpEjVg2L/mUe0JHPpY8RnCn9U6T3PriQdmHz//Z?=
 =?us-ascii?Q?/Jp4IT6lLmUQMdlapXEWWtcaJLKlWaXs1Po8tC2s+fFmw+QPiky3063hyQ8/?=
 =?us-ascii?Q?9GQ6l56QOc9lpvfMFSNY2hMv7qAs6vFKUOFysQJ3VvkCj7y3tLEWmnvdUJR4?=
 =?us-ascii?Q?0MzZbqbBB/eBINI4U8Y0qTN8vAMwtWywha/L+Uwh3TaYNZxEC/IZ1ubiHwsR?=
 =?us-ascii?Q?Br/e2YD+RhTI2OvKBXJ2Ua0uW9GJESFVU4Idui/bq7aL/LTe/N6Uam9ESnCa?=
 =?us-ascii?Q?MYYQwnck2kyGXjpsIHvSPq9aW/6bOGYroQQJdDua0PLMe/Oi1G4lOXfIY4RF?=
 =?us-ascii?Q?sYgr5m2L/RdFjJmV6v6BjVCRnJa9hsCHu2Yl82KqjQaBli6clQwEELgbU9Zb?=
 =?us-ascii?Q?Y9ZZJLExuf8dMaObvwyllhUPatOlGJUd5KdroyWDd7eW5UbX7+dujxjw4hX5?=
 =?us-ascii?Q?7bdVo30LcpcH0zZxtMYDMFSSh+SW9v6px1dYDqgrUS8sJLwGIAngV6Kr3svk?=
 =?us-ascii?Q?5UiIIJgNq5zvVKXw3EplHn/lI984iZ8PXZNklM8Ea65UhHhJo/6YDNltqstu?=
 =?us-ascii?Q?Lxy/SDevFXlA1qzWF3HSgNX7x3YxXvintO3nkbP5CWe+TRMZMeL4iZpFV7ca?=
 =?us-ascii?Q?+KL8GP6Uh5hcW0W+8S+SOUTsyjco2YmR7SuUfXejazyO349NXS8kbebkj1QD?=
 =?us-ascii?Q?2IBoFqyWqEpeRvhidA5pftRf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc595e2-1454-4b27-5998-08d957e4322e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 07:39:45.8083
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: my0ZAdZ8d1JsBOUwgwWKk0RgWXWPDV4y7oHNOD581QJyiCWNgtcIvPGC1faX8uXiVdUD2dyxU4qxK+bE6ZYquw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1264
X-Proofpoint-ORIG-GUID: FhSNfmG5p-2kM9rrVpbzIevc5xHN9Eu6
X-Proofpoint-GUID: FhSNfmG5p-2kM9rrVpbzIevc5xHN9Eu6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-05_02,2021-08-04_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=989
 spamscore=0 mlxscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108050044
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Compiling audit with -fstack-protector-strong works well now, so the
override doesn't necessary anymore.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../conf/distro/include/cgl_common_security_flags.inc           | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
index 126352b..ef3f296 100644
--- a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
+++ b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
@@ -1,5 +1,3 @@
-SECURITY_LDFLAGS:remove:pn-audit = "-fstack-protector-strong"
-
 SECURITY_CFLAGS:pn-ocfs2-tools = "${SECURITY_NOPIE_CFLAGS}"
 SECURITY_LDFLAGS:pn-ocfs2-tools = ""
 
-- 
2.25.1

