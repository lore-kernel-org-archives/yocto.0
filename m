Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.5799.1628149190631319166
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 00:39:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cT4+r9lM;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38513e44b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1756eAHU031137;
	Thu, 5 Aug 2021 07:39:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=dzFYdYK4E662cFIzwNaL1YAeAqBzfnzJ2yjYH3c5t2A=;
 b=cT4+r9lMBpJBRaNP4uLiwoBwPOKIh6g2NmyQ6Pju6T8xwOPUcCdHsD3E3cWDk2+azh8Q
 tsLHJxRvdyYtsCrRpYWT8b9w7PSJ1/rdY9sOf5Z8dWG0yJ4OnDNWktgNa36dz4glt6/n
 J+Uv/4RZ7AgJCRnj95E3SNrS4LqKKMJtEZxY2NpEj2x03IqVxunXZ2LfHHvbd+OP7Fvo
 TqWZf8jFhCEFr1gYy2F3ON5rid8F5R+EsrNrl+3jeByMHYNl0DqAjyVAMqu+iHq27voT
 FDnYamJ3N/zrwn4CIV+rJ8C8/35VNXWebgyfZGH3z26YJ/XdsDKM3y99et6pcChQLV6L 5Q== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a7uekgmt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Aug 2021 07:39:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lu08fj80b+z/RZvA+Sji66s2t7/uJbsvo9k7adqOTCdheHnm2pDDCwEOulXRmhydaew5hzsG2azv5xu1EJ15Rz3yflfX4+d5o2snh/nMS2TqFg+0f+kcoykTbEZgB/GRnLfidFJMY+6IqSxpW23U+UZHwcPVrzXo8jkjhqc0h5aoJazmZKxSjRvaT3QvrTyuQzIxBTvzvpmkGBg86cqJNwzpf8O6w1ZcFY5TEk5pKzUkekhO0ED3TIkTCle/bKxBr/xa7Bt8Xsiq7dKc2ZVwhEHfHMoz8FV7Gdku+TIyWgFTqeiFcYNLArXpSD3c4+rvCTdgmlhrIGHtB129Xk/CoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzFYdYK4E662cFIzwNaL1YAeAqBzfnzJ2yjYH3c5t2A=;
 b=WGRUfAOPh6PukzAJcLLEowgCpkmOonEoMrb764wd0lW9gSB+I5uwMzD/UgUvcWMNc863zTe0yHCRvWaYYZgPxPdSc2qAjq2/xvg9CPWrWo8YH6RVboxr6Ql/0aGRT7zoooaa9OzKPL1/brjY6aWAiwPnBrQdUjE47nqmeVG4HgP7JgstpBmN74OXYYZbd3SthXaaqkSoTHlno/Ezab7hs8EQeoDkWLXJGmGf+2B2L4KV7hdlina6HD3hYK3SNPBOfuI9RmL3Kg6dHxVhKkmnJLhpADzX0sP/ZUjcudbVpI7xXGRaNdwJXeRMfKaSX+Okn6xzztaafVc9bjwcfJ5Q8w==
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
 2021 07:39:48 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 07:39:48 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 6/6] crmsh: upgrade 4.2.0 -> 4.3.1
Date: Thu,  5 Aug 2021 15:39:30 +0800
Message-Id: <20210805073930.382397-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210805073930.382397-1-yi.zhao@windriver.com>
References: <20210805073930.382397-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK2PR06CA0016.apcprd06.prod.outlook.com
 (2603:1096:202:2e::28) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR06CA0016.apcprd06.prod.outlook.com (2603:1096:202:2e::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15 via Frontend Transport; Thu, 5 Aug 2021 07:39:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0969d015-b897-47ec-e23e-08d957e433ac
X-MS-TrafficTypeDiagnostic: MWHPR11MB1264:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1264B472CE9C5DB09C23E010F9F29@MWHPR11MB1264.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fbgXitfN6qhGiYW97OEWaLnxDwwgiFknrQRal9TzTVWdz/WyyUK3O4OTPxaFHP7QovNjHUGJFkgXUV9/07ZQjNXAcDzcUuMzP1UYF7HOyn4kTFcQAvVn1SNTZb7DpJL8iyR0tCMMWvahOr6+rLMOGiBFABCpAEtgmbTUsNeiAxCa+UhuVD1m4krnryVr5K5//1FMV7lRm+2OdQyKi+4tIhO+FTF8H2gAMTvfjknUrflQu09RU84NldXuggI0iP+AKO06xNhIuFxGkzfm7m0Ykeys5mvc2jyYPvwAR1EWnQYW1UljUiMi751W0YpyuDyAlnzqUgcbkHJZ4vE9CYMvhtMZt4h/ulhZpVJnOckS4fnkQUEru0iafuG+5TTIWAaeDm9jA4RAjU0MbCkJ+vj6iyS9x5R4vb191HCPt1ZM4JHlgLUihBxJ6y5Xjn0LkPLDSgG9qFzoRrIIRl9qAN6DbEisBzE0lH1MKhaexqT7qHLA/dYmO0FUeWjzwASfTfWQtHTSW8r6DOdeKGPZPxt+BI+2HVtF5jI2G1wV9F/Vyz3AQ2pMUO9eQuBgN8dJPhv7sIgf/72MyZZXU/i2gCmX+ThYxZ04nHbvUuh6Q9i0XS+vchGoOWrznLB1xROxYBRiashs/lA7IHCEKaDeaXb9+4D7cTegMPNWvrqRe/bQ8q45sTNucqNdsOmlMETvMYgKsNbpqtlI3v+xoP06MI05XQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(366004)(396003)(376002)(346002)(8676002)(1076003)(38100700002)(38350700002)(66946007)(44832011)(83380400001)(6486002)(66476007)(5660300002)(478600001)(6512007)(6506007)(316002)(66556008)(26005)(8936002)(36756003)(86362001)(2616005)(52116002)(6666004)(186003)(956004)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Qbm3VRGmv0Oq6VV7lbHZpEFnVrUT+UxT9klD/H05RmRuEp0aazZTcsEBHaPW?=
 =?us-ascii?Q?lI/+/iEp0hTvbAo54bN7JwIrG97FXZnHFqIvXYM2MaGSodwC6QhlwGBJDABr?=
 =?us-ascii?Q?l9BnZyhgI9GhdR7B40xk/GVcRS6DT0dXW/y/Y8wAa45Ma8Xc6Fwh7GWztqKJ?=
 =?us-ascii?Q?NPbC2v1WwSfD4taeTie7uJx9KTGhzqn1roW5m4Ys3TPisN5VHOQEZL1TkiwA?=
 =?us-ascii?Q?UnD46z6OUcYiMzqnUVyOKRaYDaBWVVvQBVwRy1DBzqVMOr5rDxmqwxy44Cba?=
 =?us-ascii?Q?41yR7+er1/W/uIZIMPO47BvBH1yr9WKxkVQ0fhllroBYe94F4oJWkOoUjrBg?=
 =?us-ascii?Q?ivkzwsjiTnL0Mpzz//LW9gGLFIPXF2rZfyZ03BBhE82xozY0i1Bfujs47A2a?=
 =?us-ascii?Q?b8nZ/S5LKScX4QITzuT9gTVTTNRdCoBURss8nLvo127IRocfXCdI81lHgvwW?=
 =?us-ascii?Q?DbTY2eyiyyDlLC6uPW/r9L/rckSl86iQzu7QdxSots2i1CBz9FlqMkEzUe3V?=
 =?us-ascii?Q?17pK0g4CQhRVtNjJqJp6WIe1C7w7BmNLN0zjcIzMjSerxN4yVZIvM5i6+OYq?=
 =?us-ascii?Q?t5JxZ49dHHatOEC82+B76Ah9CSbcZaqRifd4EX23V1yQR/GHpXJ/lvI3GsdF?=
 =?us-ascii?Q?ujGZNzEX88JzNaUrRzXOlTVVjVNMwhWuNx4U5CpT3yOQfquJEAVH0M12OG+V?=
 =?us-ascii?Q?fbOLtoUBu20e2ZEdBpnP5rIaYmBRvDIx9VTUPNNyeF8X/8/V7V9AlL1ykSzc?=
 =?us-ascii?Q?6kYwsNNOmO3GedWGG+7BhCbHKlYm+drnCZv6eiRsa6SZMMeFJkmU7m8VvNEk?=
 =?us-ascii?Q?P3onYJZBIt/LH2w3LU6tvs5viGqwHvzNnfybb+CiXwh/H4mKz11u4ExD7zl8?=
 =?us-ascii?Q?+suqdRyaT6qzXMJ/3eUyI40GyBbgU7g03QAqbr1gpRk7T5dA1PWsE10IfKFd?=
 =?us-ascii?Q?yGvAWmPOlpgexQfkzAmSkZ0m8+CEzsX6yA+GVa+yQcE1L39t06NWHN9oXZnJ?=
 =?us-ascii?Q?QNY/CPeizrUs4PZlYndcfCwrh0liejTRS0+dGEwvG7Oh2N4EPu4ySQFuPttG?=
 =?us-ascii?Q?P6zEOHypQjG7J0D0b4QhDmhfJDQvl2bT6T5rElVG6wMoFGa1biFzm8rAzfHP?=
 =?us-ascii?Q?P5iZzsFNHW2cU+CUc/KUMh3WV4/EMJb5ePLwG4GXRBFirzj783nMmUzw8Hu7?=
 =?us-ascii?Q?rLd0QqSVujFe/IGp2uewsQM/DvQMzjzHlIQaIUA8qdtoOdxMM/wZLYDol+xG?=
 =?us-ascii?Q?z6sVxqtHOFSoWEYkRYLvAU/DZThW/0sjDmFXLE9FAXgz4DOXEOMNZ4Q7aq4T?=
 =?us-ascii?Q?oovmmwlzmBT5ktUv9K086Qus?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0969d015-b897-47ec-e23e-08d957e433ac
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 07:39:48.3173
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gDFl+X5Lc1/RCXy5ojST/UWIGckTM+Rwm0knA1uKyhPEHXI9L14g20umU0Waq8OndDsLfDYdTFDSKnxK4Sw/Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1264
X-Proofpoint-GUID: 1VDBb_iiCMcGsMhqs5w6J4Xv7L4hH72_
X-Proofpoint-ORIG-GUID: 1VDBb_iiCMcGsMhqs5w6J4Xv7L4hH72_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-05_02,2021-08-04_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 phishscore=0 mlxlogscore=746 spamscore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108050044
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-cgl/crmsh/{crmsh_4.20.bb => crmsh_4.3.1.bb}       | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta-cgl-common/recipes-cgl/crmsh/{crmsh_4.20.bb => crmsh_4.3.1.bb} (92%)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
similarity index 92%
rename from meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
rename to meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
index ac97e25..75e720b 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
@@ -10,14 +10,14 @@ DEPENDS = "asciidoc-native \
            docbook-xsl-stylesheets-native \
            libxslt-native \
            "
-RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash"
+RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash python3-doctest"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
            file://tweaks_for_build.patch \
           "
 
-SRCREV = "d10d2fbdd1b357500387bebb432c68e88748526b"
+SRCREV = "00ec69054edecd068deda54c6184c0385d90ebd2"
 
 inherit autotools-brokensep setuptools3
 
-- 
2.25.1

