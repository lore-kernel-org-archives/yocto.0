Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517EDC46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 08:13:49 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.12225.1704788020942080347
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 00:13:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=bVnnmvJs;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=173861e99f=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4097t2ST011381
	for <yocto@lists.yoctoproject.org>; Tue, 9 Jan 2024 08:13:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=aESpPbmNZdAYM6JhE3
	fnPA0sdVFv483CW8XxzFa/7vg=; b=bVnnmvJs0tP9YGLFFbO4dBPdGjxGr7v+v+
	NlIU0lUws/q/j/seDIeYfD6QKJDqYZq3utiJB2z+C2dBn2m7JP2t78WPS26fv+WC
	iLTsRyf9TauSeBuLfSAq3Gjfc1BsfuPVULnKpB7ZmNBI7Ot2SV7OJqS4oVYZB4Gp
	dpm/smWH+jOgh1vdChSKHhe9Skq/hD20rOxQhkoLaF0IKKeQCY9l+XzIJMJhkWc0
	mfaPw3AwV/eTpbvLn724vxEAA4u0b4VpxKz6KfHCjqXXxhHroxXLUPNkqMo1Jri8
	rjX06jwBMYcOalmaE89HSppa6ps4lwb6mMCRx6kf98T3KbAFUe+w==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3vewu5b03t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 08:13:39 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QV2yAD0lLhRKZLFmGU6+wtU6uWHUIEdD6rNX4CwrACcqjUS+iGtByxfN75JnrUZ9IAbQue+v56wTbRLvO+gW334DZIrtNVkCvI+iBg+sQHiga7Fhe+3xOi11HrfgaXfTuz7Q0BeYKJ6w813elOwfzvK240gi3tcR3O3fwqawAp/7ZMlqF3/wNeBXGNuUnS9Hesf/Wn8ee3qL/uHexb5/zX610OdgcGdMOauJNssA6g0PbCgIlTwXxJEv7u27hvak45OuATzv47Ej71VI+CPUzys/Dah/cFCP3LkP5hA+224zxgx4LcoUCWteeMCBl3XYbJ7K4oaDr8GT0iZfo79oMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aESpPbmNZdAYM6JhE3fnPA0sdVFv483CW8XxzFa/7vg=;
 b=kt4ozMdQptAlUf4uhDXt+VP2khy2/dyjYK/ZywqIgodv5VHLTJAZ8YZlSeyqoHTw++VKZLm7Ry7H6k6phD/FHusqkPSdiUazlJBSet8V3SXw1m3bh1p6d9p1PfBM75pwAYabO8INRpAKG5oNfbeqJwLShh1GJCWPsHfhMLq7UTLz3tjfD0RSBgD/74s0GcZDDyKYZb0J5DZNGahM2w7y0OSRXOsgi8sXO1o4B43o68qJHsiIgRUfXtrhCYWd7x7V14++K67fQ0LCtMJVIyLEbbe7hqVK6Y8jBozK0oc+Ix9ot9SSfaZ9F0LnHlsxreLr9vKGp8zatM+aZZXj+Os22w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by DS0PR11MB7904.namprd11.prod.outlook.com (2603:10b6:8:f8::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.21; Tue, 9 Jan 2024 08:13:37 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315%7]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 08:13:36 +0000
From: Qi.Chen@windriver.com
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: set ROOT_HOME to /root for sysvinit with systemd
Date: Tue,  9 Jan 2024 16:13:14 +0800
Message-Id: <20240109081314.1416559-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0188.apcprd04.prod.outlook.com
 (2603:1096:4:14::26) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|DS0PR11MB7904:EE_
X-MS-Office365-Filtering-Correlation-Id: 579207ba-fa1d-4f40-51d4-08dc10eae124
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	V013o372y7ahLcVlvqK00esWW8usd71zbzyZpN536YaFZLUWousdfqssHWYX1ZXzddjL7fUHcApM4Ovz8N/gSF7sHLPj3TM+cByx0ybJCaGTYck2O4bCXmluMEsR550pLW6aQ5FrUJPlA95LejcbSUT37DVaIxHXaJKhJAh9EK+iDUWw9V8qb2tc7uBo80YynceOZgRDd8kg2001+Y6u4Bc9df6ZmI+CaS847zRH+KWOz3dugmEKiu6GA4qdZcbZ7UjJJ+TCzLFcW4Qpirj0VywR62GHgRgucCIRHfAQaoha2StSVXTZ72zlCMx2SQvD0o0QkIP0kELDqoQHlWpInHc+v4vQytIDW4Kvyv553Gg+yQbd9GQjocCWMaZJHluzubagPEnDPCGxmHqPmPjWFAQpH2teSqVNDhA2E3+VNDfh+UPAHL1TR1dFCjeEIEdb37+CbaebsbtvJnuWlgFirN0Lsc0ijaj5TbaZpHNU3T8t4ZZQVYEsxQWWMYRTrV63Pdod1PXLOk9o4qSezNCKsgSZbVXyPXBvyZnukP3sFQ2hBRCWbOrQ0kXVmJbYNuANn7EmBRt653MrSjRRouFYvXQmzPe218stryzq4VzI41kM0WPVekSbowqojMT9DVUHQMD1qx7UUjM3je6EtuF+JnGgi9wiQ2gl3RNBhJONGGQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39850400004)(230922051799003)(230273577357003)(230173577357003)(64100799003)(451199024)(1800799012)(186009)(52116002)(2616005)(9686003)(26005)(38100700002)(6506007)(6486002)(478600001)(1076003)(6666004)(6512007)(36756003)(41300700001)(86362001)(2906002)(4744005)(5660300002)(83380400001)(66556008)(38350700005)(66946007)(6916009)(8676002)(316002)(66476007)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?C+l+iPaUcpAX7/RYIVKcm+85jQvEfNUijr2CkOjVsKPG+u9heVytVTc/yrK2?=
 =?us-ascii?Q?ITPltgCEuyhv+6DmCX3+teZpTPIuFqzQ0d3HzZRGBJZXUZ7CIVZP+jQviwDX?=
 =?us-ascii?Q?ICtvda3bJ3xcemz2Jjl6k5qNaES0HjkUuhTpzVR+O2ozMex2w+KmhWObb0EI?=
 =?us-ascii?Q?cg+voYonyGo7cJr3H4pI7okUQLPK7chxB5k40huX9FUivgvNgRO7nZVkxFyf?=
 =?us-ascii?Q?1NJrPUmQU6ixQVQ5FOHr31b+moKDsHQp+CBO8sNWKdlCEamtcaln2FqiElWg?=
 =?us-ascii?Q?8RQPIvbP/AT7geb8W4OP5AvuIIzpgOtfshwUJ4ah7JhWSaQj4v+70/pERKaE?=
 =?us-ascii?Q?giLihU+Q21QLMKejlS7MUBVGG8vwq0OJaYrqNEKkdplcpqTojGRYHqKID15P?=
 =?us-ascii?Q?pkvy0prwY3MqmwButCeHXsSxQVrVLo9mDJ0BSMyCBdHi+3hnjmWOcaj/dUOx?=
 =?us-ascii?Q?pEzNVLOEL/+DAa93iuDAnC5nFG8/Cke05Vpmc3fFz7Mm4LMBrp11YLMCb8HB?=
 =?us-ascii?Q?O+OfL0ju3H+C+N8vEalrKMWosjI7JCZp/V1wUXxGOlrgF1nxyaE6X5dbyskr?=
 =?us-ascii?Q?6DBXJ2mefNO8Dw0YsiY6dcG14IRNNXNqeRJvq2kKZixf+ekDLdc2tWMEbAIh?=
 =?us-ascii?Q?yfyloHX9Fyup6dtkdxyrFqet7S58gQllVfTcVJR4h057dLEr3wqrkMJVLbBV?=
 =?us-ascii?Q?DL7LDBnssLucWaVwOy9LOcgmED+cfWURv5RTbeN1BT3FH8fTjB1tyHVMpUFQ?=
 =?us-ascii?Q?er3tgDCP2d6jGrtcgowV4UsDML2Zm3aG0Q3hTfnocnoXP9KAF5whNhq6CyqM?=
 =?us-ascii?Q?W54pjH5EI4UUAI3s5VevmVW68FIp8Hn/tZGdIJvIL0VCoCEQ3ZoJwV1QS+gC?=
 =?us-ascii?Q?F3SxiewqpQ2iT0iQyFD1eLeiEGuD71whWK6pN3WDRSdlZihjgx8gnRXpsJU1?=
 =?us-ascii?Q?20xT6VSHKGAWKk+2aLztLcwzb+FUDgKwdoBNmCD6q/6vrEVTKS3mmtmk8Bfs?=
 =?us-ascii?Q?uQTUKOkmmpTSfobJANBqpryR4+6TvNoGpZTqk6LCRMeId9OhG84bd3dFWbiK?=
 =?us-ascii?Q?13qmqj0vlU8ELF9EQywwzWl4LVCwTEnD4TTrj8Q6lX6NKlbK2TsvnMmJ3GqE?=
 =?us-ascii?Q?KPuoTREjsLZ2B0f6tIfo+aW40SmcxUrYy/BYU2cfG3+eYGeP7S3b931Zl8kp?=
 =?us-ascii?Q?NdJpu4o7WEM1NHB5kUEpnj5Tl1gbBVMMFfss8SxAaMWmsPB0l3hBF8xCvajT?=
 =?us-ascii?Q?oHjqwCJmKA1Bt35l+1pnV7WuKL9uvwdWNncOyHcUcsvy+bosHYgz5m7PVGCQ?=
 =?us-ascii?Q?IdKN+OBM+k3Q+4ajXmUQDtrOghFEb78Bgmpy6lCSbaLC0YpvLVpct74tcpxn?=
 =?us-ascii?Q?wi0q9i6xCTknlpoXaY6gFsRKciYvcqpumMBg4J5yHP0x3TUBvKe6QmJr+P9g?=
 =?us-ascii?Q?3RG5wq4YJZZ0HcUNjrkNbIFn2c3bcHWMgc0PE44cJ0WIg3+FgxVHirjm/UN4?=
 =?us-ascii?Q?UnNShnHbGAm/3ndahMmAY4ET0st0HdnwedKEGWFkEYk2+uhFcEyD+lFt7ju7?=
 =?us-ascii?Q?HiYR7ddyCZeGmjlDevi82jkALgkMVvKMq6cjao92?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 579207ba-fa1d-4f40-51d4-08dc10eae124
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2024 08:13:36.8668
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BmTzHxVoHS1C7QKRMrTk6pMv6tZ+cc3cigeUQB2zsQtcqdo0zYPfv2sdkab/td+0/PHV7B8pvNxK/fNJORnPKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7904
X-Proofpoint-GUID: NJ5N3_1dJnI-G1BOxa4Lv1QSuzl-BTVd
X-Proofpoint-ORIG-GUID: NJ5N3_1dJnI-G1BOxa4Lv1QSuzl-BTVd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=858
 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0 clxscore=1031
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2401090062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 08:13:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62113

From: Chen Qi <Qi.Chen@windriver.com>

For sysvinit with systemd, the systemd package will still be build.
This gives us a warning like below:

  WARNING: systemd-1_255.1-r0 do_install: Using /home/root as root
           user's home directory is not fully supported by systemd

Set ROOT_HOME to "/root" to avoid such warning.

Note that when using sysvinit as the init manager, /home/root is totally
valid, it's just that 'systemd' being in DISTRO_FEATURES causes systemd
to be built. So the only purpose of this patch's is to avoid warnings
on autobuilders.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 4686068..ad18226 100644
--- a/config.json
+++ b/config.json
@@ -1432,6 +1432,7 @@
                 "SANITYTARGETS" : "core-image-sato:do_testimage",
                 "extravars" : [
                     "DISTRO_FEATURES:append = ' systemd usrmerge'",
+                    "ROOT_HOME = '/root'",
                     "VIRTUAL-RUNTIME_init_manager = 'sysvinit'"
                 ]
             },
-- 
2.34.1


