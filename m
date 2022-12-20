Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2AC8C4167B
	for <webhook@archiver.kernel.org>; Tue, 20 Dec 2022 07:26:41 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.45247.1671521191169226786
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 23:26:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Lc4puQ//;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=9353c7c777=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BK7Ltad005995;
	Tue, 20 Dec 2022 07:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=ejo/c3hCvjmeCiEA4mBp/PEyEm5lG37gg0Ov37aalyE=;
 b=Lc4puQ//piA05+aNHH8LBMqv63HaEYwwnSaRJYuyO5ytuDVuYwkedCUBvzUgYatoUrGS
 qQTMjrXUv26tImLvRAuAUylsZKCIcdjIVZGu09I4BSIEiuLoEejUQa3Bc39tSDdY+gsU
 CfrjBfMpBZnSkyEIfYynWZCBkuGBavHM4RwVR7TJkwQt/AmeovBPbEtdBTBuqS9/C3Os
 Gd+/x6mYkakMJU30cHYTXKzSS7QeJnbPzsVnfSX71i01a2nx0yPK4VU5Dv2ciyQltQuN
 Ijb9rDFOanVz6EWN5sucHvCfPlqzajYLXis88AI5DFQlsxjOTl2zR+djrS7skl1aA/gR 7Q== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mh301j4vm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Dec 2022 07:26:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JmXpltMSbdtoz+PMa8lTK9WeGzmRnontXL+4f5ZWk6JVaPJQIKCPVB1AUzs7DxgHjDQCtHB2GWQZOEpKQloba99Ei1q77k4WCgxKRs4VcNZ4UjBQPQI9VD/EF669IdZZDquyDKEBrslvxXrK5CU4z9Xny2yUsSlqJgdWRVKy+QPIX+v72G1Q/p5mMPOVavaaeWjzMCoVtJV82T6VkVzcXnSPTsnPqfPRqDPXJEt7K+tsmir0XnVU4RgM0ktlOmQYJateeC01tGYei5je6QJjM5DwW+ArwiItsfoDaRAPB5n+AL8jYBpQ4/0lbmUC4B48MGCfQfQzU0LUhdQ0gd3PHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejo/c3hCvjmeCiEA4mBp/PEyEm5lG37gg0Ov37aalyE=;
 b=dIxrbaJAK/2Q3UPtL9BW0j7lhQgOVgGBzTnu9uHA12/vEeA9IJRdRJ+zERhlVdbY8y0Fzd6sdCjH0Tsm/36Q1c0RU83Gpj1WkDcrWDVcbo+jUk4bxCV/+v30J/MGK8Pb7ZN5xm9PFjFLkWG8oDpwQ9pa/VM4b7X/12QcNaEvCHIKU/Q7KzzzxpnHksyKDR4P1c586H84DGMIdkOpXGZT/DWZBsonUwuQNXDKbpOAr0uNZqh648p3yHSOQBln/eQ1Y30obDcDGfq4N4cW4i+kbO8fDJUfu9Mxa2NjBZn6kT1SSO/eGsiEeHfASdYKX2SwCyedooOuyJ5WLgOCksx3ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 07:26:25 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf%7]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 07:26:25 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: tim.orling@konsulko.com, martin.jansa@gmail.com,
        richard.purdie@linuxfoundation.org
Subject: [layerindex-web] [PATCH] layerindex/utils.py: Add to baseconfig=True for bb.parse.handle()
Date: Mon, 19 Dec 2022 23:26:19 -0800
Message-Id: <20221220072619.104336-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::40) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|DM8PR11MB5686:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ea2a7eb-1907-430f-2913-08dae25b8059
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	js/QHxF5vYf7wsVP/ERI3w6yHausKiKvB0epVwGjmVAPp3kHg1hWqhU1LmpgXtHapPkiqyf7VWN1Lpef6NCHWByvyVpr311y67Px1ZYXDZVidpOJ9mHhT0892soSJqIh6Os8a+ROsmNYaaM7wXaXApq/z3+YZIDN8axBsBB0yV2g2dq4eUu9/QNJ9HkpMRF7opNPfAtePIbRMzj16pxp53AjsPnAmiakgeVLJQi2vWWLTBIDsv/3eCrH444j2R2qfDGToNNnv/BugCWrr17f9nkMO+76YjGR20TWPuotzWrzPsRZR1a9M1R4kOWfC5Hq6RbdgVwzhjt58SXAIbc1+ClqkOHpTSwmUpTo3QzVg7bMfoTx7wxh3zzmXmiygs8c76aRex+b2+i0x4CrCvNEh7loYmouTdOSJ2TpyRD9LbjjsNiXEAK5W/nMusfx6/kMILnvONhvPBxqbdMX5hXs4OoWsaDi05qa5LptUZnI6bxX46C8WhjosWpXwsr/PMUsj0vud7pFhSxGVAp5Hld5Yyfvzs73jdJ8DEF/wQKT1qRJVj71WqxGrRTwAbpwVXWrszeQLWfcV6QRHbPeMgdBl/QvJLXZo2Kp+s/eOD9zem7grwPp3dNO+PcxhRpxO6j+UCOGhNEtvFOniQdpObPbbLOr+7l7byMG8B0N6akm+SXmSUNHZKtTRQAXkZEQ7XHjroYSqWGRlN+dG1mOSTnCFQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(396003)(136003)(39850400004)(346002)(376002)(451199015)(86362001)(316002)(6486002)(478600001)(6916009)(52116002)(36756003)(38350700002)(38100700002)(6512007)(6506007)(83380400001)(186003)(1076003)(2616005)(26005)(8936002)(2906002)(5660300002)(8676002)(6666004)(4326008)(41300700001)(66556008)(66946007)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?QVzxBUgdQ7WRdU/toN+MoAlALya79XIvfpuEN+3vaDFc0JeHwk2F4zAzsic1?=
 =?us-ascii?Q?sAzGSPAQCH3wpQr5Sfnn40qnoifjvJkgKEAMmqI/uHkMUzVZ7aYywb3h6lm6?=
 =?us-ascii?Q?yOsqdUrqU2vb44zSmLKTfw9KP9QfZMjEG8fMK4pV0wXEbk80nrtW/WtbV420?=
 =?us-ascii?Q?FCyAyduXLGW4HHjSanO8JNFCmXBBMlIroZ03HPZZShC81j0lK2TZF67iVD7a?=
 =?us-ascii?Q?jCs+mRzb/VctNs2MAlKJ1iwDUL5ypDmvhJFa/N3Vd8H/YC260Q7EuvVmBA9B?=
 =?us-ascii?Q?I7PK/T4Vb9S/DhEty2bDHCm4VrWl6nMzKXrtBKia0yvSURELA87+TKiJHsZn?=
 =?us-ascii?Q?tBm9LAbRC+YBH8Ah5JrwiaBfsWKaK/SGH3gDGMg4MT1oNfLrEcspGrut6h7M?=
 =?us-ascii?Q?BYfQ0XgTSRLayDR+SSuWyELyMnoRUo9UoziyB5lsY9qA2WyaubPGAKb8Bw3I?=
 =?us-ascii?Q?9o+yh+RcVRFNmEqrpP2s0OtyV2IkZVhrr4YiyCr2XIbMCz2tyD2t4g5lHmmI?=
 =?us-ascii?Q?mqF/F5tdP0wEX/k0CDtu8HG0lMJJi1fsv5GqV9yCL3nyroGAQ8bcY3pgcfDP?=
 =?us-ascii?Q?Jb+3Qa8EDCE0+8bhWMffIx3eaCdItjesySWyNiGjD3KbznkcYGmIrckmZrWx?=
 =?us-ascii?Q?KFcete/tEFw1gb39+kItGidL9/I8We7zkjN1cUfhDCRZaVHuh/1Or4N0Edb5?=
 =?us-ascii?Q?bKPF/Yn7YJvgJV8Mr/dUlaN6YUcw2GWVSEFQUlbWDxA8uJLoL6KCx0M232QR?=
 =?us-ascii?Q?skjROimKRt5VNc9F1ce1aov4uFzt1E77sL8uQwx8MjFbroDukbORm+jl8MEB?=
 =?us-ascii?Q?HdzgFRQrouMqfvVf8nmHjM0UqtmU2tHblPCTJPUKtmwVfijRwHauCliZmsqb?=
 =?us-ascii?Q?pqcQr7hBOwIeTrVtODsP0Z/KI53+O4gMPG7/L/1K97lNS2rMg3IUpWr0UD65?=
 =?us-ascii?Q?XG2993qz8j+PLuvNTfQgYEPrrmUnhkWdaIqr4vAVchMr7r+7JNBy4nM9lHNh?=
 =?us-ascii?Q?Xt0cuE8DhlRHJWYGjyELtr+az8E0TAt1DZZ2XRtfPbvovfMA+BTp8cfbpBu3?=
 =?us-ascii?Q?DzuSV0lzmnEOOh6p1nSpqlMmPTBDh/9YJfHbfv7v6YIfWNF1PNSE3BfemBAM?=
 =?us-ascii?Q?1Q0YXfNLxs35lroAqaqiRfH0ri7K5+6mvpcVAq5ShfQH+jU6rU2G6LFtC0xa?=
 =?us-ascii?Q?w0g+8YiqunARmWBXihpdCzUe6yDR2IaAypzVmnY+j5Eyc+FGObpZShiZXeX3?=
 =?us-ascii?Q?IdIM6G7CqyYEZZXn4jC4nhM8UkY4HYTm3bEAvYb7ooGNUP/2ITTIJFa/X5L0?=
 =?us-ascii?Q?W7l+HSaA9KuHaUpAeMj/Ai2V+ziQtr2yUXqc1KZ2iI+28juSx9uVR+++FMgi?=
 =?us-ascii?Q?TkAH175f1wudy/So2dTH0P2mSTnlQX0ZH9E/6O/g422x4rc2ImQ47387o/eQ?=
 =?us-ascii?Q?75CzNG4QS+MTRnGMxtd14H4bPXT3iFUAc2BCh5TxGjOz7Mbgi4pMjIYvGOWq?=
 =?us-ascii?Q?0woyr8SiXhpXwjmh7z71KhTiRaLHKByWTKybarr6Z26aHSlYSSOWdK2IykOm?=
 =?us-ascii?Q?ZdgJ+7S3TQQkrT0+nSBiLDNonyF1dR8AnoCZEUM6x45LWV51VofJqgUOJXr5?=
 =?us-ascii?Q?TA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea2a7eb-1907-430f-2913-08dae25b8059
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2022 07:26:25.1293
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z4LqTlf81IdLXWEW2p+FbQk0KlHlPBD0kxUTjBrfMhewnjI/H0y1Z4q7cCWxdSqXf9gmmMFh+99Lh0k7r8MVmoPUKchwjSizY4NYoyEJl6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-Proofpoint-ORIG-GUID: 7Xhhw5oID8b-BpBKB-rRtMQCkF8cprAE
X-Proofpoint-GUID: 7Xhhw5oID8b-BpBKB-rRtMQCkF8cprAE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-20_01,2022-12-15_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 impostorscore=0 mlxscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 phishscore=0 adultscore=0
 mlxlogscore=429 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2212200061
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 07:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58837

Bitbake's api has been changed via:
afb8478d3 parse: Add support for addpylib conf file directive and BB_GLOBAL_PYMODULES

The conf file won't be parsed without baseconfig=True:
bb.parse.ParseError: ParseError at /path/to/oe-core/meta/conf/layer.conf:132: unparsed line: 'addpylib ${LAYERDIR}/lib oe'

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 6566710..9d94015 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -314,7 +314,10 @@ def is_branch_valid(layerdir, branch):
 def parse_conf(conf_file, d):
     if hasattr(bb.parse, "handle"):
         # Newer BitBake
-        data = bb.parse.handle(conf_file, d, include=True)
+        if hasattr(bb.parse.parse_py.ConfHandler, "__addpylib_regexp__"):
+            data = bb.parse.handle(conf_file, d, include=True, baseconfig=True)
+        else:
+            data = bb.parse.handle(conf_file, d, include=True)
     else:
         # Older BitBake (1.18 and below)
         data = bb.cooker._parse(conf_file, d)
-- 
2.37.1


