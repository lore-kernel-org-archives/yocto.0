Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07BD5C41535
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:31 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.12150.1702714942654800216
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=jkXl7toL;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG80YuP031970;
	Sat, 16 Dec 2023 08:22:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=b5U1287MfnMM7wSG5EWT8HmQa4PifRXO1QVFlYYLK3k=; b=
	jkXl7toLHulAqcdPH5hD1axGANHJZdofOgD780RNEbK4+Umpmu0cBd/FpthlvuFr
	Ab9R12szgD/S21W7eqbkAHcLt5RzTKPEIjpHxoKLZzgNJriILVXxjA0g3zPWDS8t
	GwQAu+KU8lQ2jRjnh8oDLPfhTOnY0TT4A60HiWQy+AvIXf6mL3q2/OtwGpaEzHYg
	PclJ/6U/6uZ1+n8+diWwBJHljEAAWYKKc3jFrRiuMaVEILi6cxT5kjRdRFiO/gZM
	BE6CWtUG/SPx1/l9Yr+hUibo3Qd0Lz3bLfSKR8HDJDjeV3m6dS6Xfii7jwVsGFbj
	DRNoXfeWguGAiYZFaxGu2Q==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v12v5r5rd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:21 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZCPusBXCTU2w86LPYui1ScwcFBDCIXDnf/W5cNjAfyli6jOwJ/k1RvpxM0VVyq9BR0Onc/0Rf30WoD/uWzLOs+bIZuLPU1pOBnFwpttIAQzWHTTgGeUFt6sq/BUg68cLZDJN1LPMZSeiMuaytxlHImosXH2KQYORaxyE9OpPaEIHftoJxFXOvv0JjAvihPAF7SFs+dqVH+a2ou4HIWLzr+oH6XJCkIV8YxJjmmjo0mcXycz0M3k44TlwRYnAvnWZRmUWI9jYkI/n+RHUEn5LICxBtvGBJgC62c0tbbykCdyDrHGjT/dI3mz6i8N98KGT6EVHk1TIdJkxOtarY3ckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b5U1287MfnMM7wSG5EWT8HmQa4PifRXO1QVFlYYLK3k=;
 b=JOUu2yNeZnjTuxw5rWro/+Nu8Y3p3sCF1J9ZmMptsUdzacVnfPMlFnGPoAb76CrpF3pgHrniR1XrvVtYOMIb2N3uqlKRlb+88UM0b2uAK7k1FWL2WHqq4cK/j7ZG+EVWWjJzKFlCTnLxTKDd06N87mHIhoSFcPwcmEQhsgxeDI+MisXpCRnn4ww2XYXolXAcVqRc5riQkq+C1zJIJQ5dRzZfvgazI/OxmWQX62uCa2aJjoIzgEROgISgN0CugAgm1h+dqSiiOpWsy49tRhiKSzkAfS73m/odZHo4ujIo2F30uu9N9s5h62OKZoAntO/yZFgRJD/Sp7fjjUIbxFh9ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:19 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:19 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 12/15] selinux-gui: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:39 +0800
Message-Id: <20231216082142.198501-12-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 06cca4a6-4b29-425b-16ae-08dbfe101ee0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	D0WfW6LCnX98nBQXF0jKRhym12+6DtvAdJQSsbK17m/lSFu8iZ9UC5ZxiUFi6+uSwOopzOTK4ixqcVjtzOTXZx72ogiCyvxOUzGPhxjBLNMR4+BC7Mg8RlyZ1YIWjuaJJs60VCh4M+epPVaIWzXZQCZ9E5haPbI/z+ATdFI6p/Nb1aAKmbQq10ZbsGxIipiIzAqClm+anJa84rFCFdWmEUhPwRdxC+WBcGczJGyDOI8KQG/AuxhZZj5mL3W7Iqczn87C2qVAv8esPKwUJuseyW6hmd3Cz7AY5wIioHD9e2kKuPuKgNgmqKBZtjbzcj6GAvpebmD94dSnA5k0mhmdsynYMMnYFCZWsxuY+gPZH9+bIGTDoQSHXYUChcr4T9b/zAH1+mLUrScsWT5KKP37XQlGbGtgNgCczjgLlmntBDCE7gj5QR7VOQBMBmkFMjrzlLM1WhUUGW9zEmhDlL/g7h0Mz2ptQHjQ01C4nxvC6IYrS1PKz+9k7j4KC27JU81zIqw+7X7SpOxuG73N1giz3DVik1TUIwwENVvogUs0DkFGp3sZtu6hajbmWYFzvY8hUetBibl9myJhMytCulmRL5SdvA//8FGN5fLGjk3TrjpsyXRkFE7bWUqqiVLo4kLe
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?+q4I56M2gF6HcRWQHF4yUXxQ+Ph0DKM9oQ1hjy8lIYc+HGEo/vVexP5qjM3J?=
 =?us-ascii?Q?a4yoBnXgYsTXPeotrKO6OULN7t0HQUFDz8wMNBmpg7joqLQrZT3nXbyvnm+u?=
 =?us-ascii?Q?jWgR8dgHCoaRDrqjnK8lAFN0Pdcqaf3NEZWvds45DiDDm2+GvA09TeLA8kgf?=
 =?us-ascii?Q?liO+JOTPyoqdr8BW8i/+pmPgLxtd0Pn7KAbSAra0NwkmYkQHcfn2h8wd6cwf?=
 =?us-ascii?Q?KWx+AzxMf66Q5/V3hPJWAfGpSSrLdchsuA+r7kDHVtYwKFvgVKk0i6yLQUkL?=
 =?us-ascii?Q?6ZNonDIWLbIIiH8GQGz34FFLHP0S32jjjGjcOpy369O1mYLU58oGhP8GC4Zy?=
 =?us-ascii?Q?eixogJmfrX+zK4zv6woXaGZ80BgiiqxUa0EI5wMWhkuMbjN4tpiXaNHrcdBh?=
 =?us-ascii?Q?Fz6Y2WPB8iwgA6EP2B6/uxh+YOfYG43RF5FUPCBniCrjIVf2QRbx8Twl0UJT?=
 =?us-ascii?Q?Op79cBzxUAgh5nqX20aaJbJTMMrsNHrci2oWF24/GQ/ZhQ7I+SUVgXLuaoeN?=
 =?us-ascii?Q?Kk0MJ5Yuc22O4JhHQ5of4/ve4LZZTYh9nxDIUjdewMLEiSP+97WCGtFPmjMR?=
 =?us-ascii?Q?39FRA5iuPhpfhwrqrZZ/goYSg6XzoJ6uelID8oKhDsycPAEdczqZPYSY6941?=
 =?us-ascii?Q?Ic0z+E/Pj++2+wv6A0r5m85jC85SjdidM1jlyBO9xqGc/Kiu5V12/xO2AMec?=
 =?us-ascii?Q?olLg7V6NLnZECB8r990WXQzdJBsECaF8Zwszo4S02E/meYaPgIpbxjoDLdoM?=
 =?us-ascii?Q?R+sRwVB73kCzS4EE2+bnUuSiP0OYaj1v26rVikMY/Ak+C5x0GrIuthXseq1t?=
 =?us-ascii?Q?BOP9fT/c0W99xKMhL8mAq6VUZGQlOvGps+pYjfiL1yxjxBUsObeb76JkRt4d?=
 =?us-ascii?Q?G4l8cvFBY6JQNj2ZJj3mL6ctOkR4JPbunFqNLJXB78ZL1dUzLq6uofBLHeZJ?=
 =?us-ascii?Q?q953MXwIcIQ/K7dXhSUPDV0kmguX8IxwcAamT60RJwYKmqPPl47TrxUOH5/4?=
 =?us-ascii?Q?bI37XVSRQGsUH8zTl0R2gLvz7eSnafaPPSbovmLK13qrIllW/o9a2saly4N/?=
 =?us-ascii?Q?Y11hVYVMP/6EJgNXTqvAhPSWN3edwA2Dhc23PivAhemgmXoKsdy9CawVYnu1?=
 =?us-ascii?Q?qefKLSAacDr02xsJygAAXRgV2xgyvmsFBbpeTOy5GvIN2sd4JhE5aKrVA0g9?=
 =?us-ascii?Q?3YuYGMWeyCT81MzLFleUtwehP8mA5fRzKy+qTuHYubgc2BBsG2t0WL6iD7PM?=
 =?us-ascii?Q?IOv7c0Bam6bRS0vwjEaR7cZ43b5oR6wVXeOWSHLAwmrEaLPxFs0d34rRCzdV?=
 =?us-ascii?Q?VYPj6GVzsB4xVDSC/Gk4KBnxeWYlRFq3OzRl6zgvE2i6uW6OV3/GDwLzhSDp?=
 =?us-ascii?Q?KyHnvSvVAtqyMz3hiUPfVUs8sOZZ+XECGhMfeLJGw/F0TUGyZXu3sIOYqtY2?=
 =?us-ascii?Q?cQqXPSJYVCqENRPU3fSsmuNll1SIHsFVM0obWTp4PGOpRk9D4YgyhC0WQXPU?=
 =?us-ascii?Q?JS3d9cVvw+WR68S3L2b5F9HU/yyUgNfH6Lj0AkM17qeWCJ87IDbuoLIhDNEx?=
 =?us-ascii?Q?NBzw6BMWQi18da5II9KEyrEWJt1E1xctUDUJgcuT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06cca4a6-4b29-425b-16ae-08dbfe101ee0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:19.7490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0tLTwp6Ir7yvO9LI0yf+gIwxrCUi83lCJhruUc1VBTDir1PBz79vPP/2OhLSFnw4sw3xWj/jHdv3O1CHkvgDAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: 5Uy39SWgN5O3BIvzNn_NOvxckisESAER
X-Proofpoint-GUID: 5Uy39SWgN5O3BIvzNn_NOvxckisESAER
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=611
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61938

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux-gui_3.5.bb => selinux-gui_3.6.bb}            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{selinux-gui_3.5.bb => selinux-gui_3.6.bb} (100%)

diff --git a/recipes-security/selinux/selinux-gui_3.5.bb b/recipes-security/selinux/selinux-gui_3.6.bb
similarity index 100%
rename from recipes-security/selinux/selinux-gui_3.5.bb
rename to recipes-security/selinux/selinux-gui_3.6.bb
-- 
2.25.1


