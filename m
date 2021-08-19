Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.65259.1629348457428473703
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Rxd0FFpF;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4la8V012396;
	Wed, 18 Aug 2021 21:47:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=OL0TzyQcDA7viAgXkqSTFKjfuy5+E+49Ufd+BrGr+8Q=;
 b=Rxd0FFpFYJb/LCB3R8sUb26o0KP8/9m2zdbxZpS0oI7NnLpz5EUmLX8Du0Vir9gWV/Yo
 z/ypndZTDG+NgubH9iel+3h787bdG8AqGT+HlLSFIdrs9HiFuOpjW2pBYas+vif2dR/u
 d/yJyWc3vROJY/PD1qWuIXf/+MFEH2T984lcS+rNZYZoD8EdhPqW7aP0g/Gf0ZgjTjHp
 s6zhN8v/LUcM6zY10ZAmr4JiJUMhLr3UWE7vCIzJ4vf1RKs2iPT31FF7daQLSbM+tuJ/
 Cb4sa0vKsgnmTb0qmzCFfB3dVH8E/uVJHughMHpNl9wcnxvM4HMtI0dgXKvMCxX0aW2B Dw== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ah20t0mdq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Aug 2021 21:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKZrOlsPDlFevcyaL8IC8qvyCm2VhQUWi8kJtpivgGWbSNAjlxl36YlnFjBlg6F0WqLQbdEFix5KtpvOFMa8WbqrLjfieMbPY2Tl3PSy+MWSWJBU+GEhM4R6gLiS7MiYPvKYJokEKFQEYelW3X+WKTT0UW8D3q50CZ7ZwWKOgWjXMKB7gmoQtMDWhhKUAX0/86QTRr9QBOJbLaVGMLnUexgfqOCyFTKt433wCkaiN/zb74RORqxeQ+Tza/UCm+r4jiB9CyPMUDEV5yRHZA3lu0ZS7odDJtrx93N8KajsZ492PhsSe8A69CCF2rCiurJNYj/0GhS2N4m6Vdo7Khky9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OL0TzyQcDA7viAgXkqSTFKjfuy5+E+49Ufd+BrGr+8Q=;
 b=axmj//r07A8TVRRoIJPrffx4g8whkQ2Epv0glpndOb4GjUhvERy3G7vJpBGbjaHCXaMnjwhQrGhVKQHaLw4/gLL67TzGNFWfk74B30SCAchfYOYfWS7oKRhvuIZS1pj+zWy30lKJcmqkU4FUzdy5Yxybw+vtRCL6VGntgBJA0VD3t+Psr2duJPB+1ZJ/wVDAZDgfFUFYGDbVJmi2VNdZIjJOn5TMmxbJeux3lupoG2tWh5J56V8KN4BtRfmfiLtGZ/zMIPmNF01WW6WS3ULa+9/2keXv0sgo2G15IQ7qJBTxHVnnJr6ve3xUOSVW1p9NCQQUsmjMrAK0tNwfETNYCA==
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
 2021 04:47:34 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:34 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 10/12] setools: disable native/nativesdk build
Date: Thu, 19 Aug 2021 12:47:06 +0800
Message-Id: <20210819044708.105282-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13234bf9-56b0-4c3f-373d-08d962cc75d6
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4867E3F4CDB4562AF2957183F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9ssVuaKyui3vuWW0yppi2UcxKl74c6QcNG8/unAiWbkP2loHziYpFsrCr6lFh+uKqobjXECSU6b+/E8Eox1RwFJBEyBPdxhBkdmQ8psdanpLt7ijsksHnekNW1wqWn61TCLf/09YQkYTYJde7a4YWvA8iA4WSUxZGUc1lbnXntymH36InYxEA+ORUPi/UlYlp7GIUEno92thJtyvwM69f/ytKo21wVNThU/qpxznba9Z0204u3o/XEH4U88LaCoo4LIu4NLCnWC0SGufhWEdPaXL70Cr+LxlLzYcizQx0NvIr2i5PasO8sAkNyWOxgo0Y51d9+OdMIYyeqnGM87EptRLA81Q4X/X56qZuSoYEsI/j8RUSsIi+Opoj/y/WEea7vVoNr7JJsonq5+kOcMBYYVBNtUcpNRNBiS1zzpMHj4MrcgGk178ySNyTOBttU9A1kt0Pjj1Dgf/54hZNYGmwqV4THkqZz1VHe5eSNIgiiBRC+tPXqkienE7eoUUiPNClQmIK0j0/kVQwjf7dDUh64EkMk8pxChMig0NQcJ5ey7oDzMZAkm3z2oe/ZFmBR8b20HrVxh83oT8wksVmo9wwr8ISoYQgsHAkqTbfQisVg8FKVCYhbFTTXKFbHn48kpdSHEkdWpwfCu0oQiWovLJGf1PUxCRDyPC1Pt+mgYnJ39bIyORRku0dv3VIMXfN7rNw3LTuQPqWjOr9LnNEu2fbg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?LhXhJSQCEiBG4eOTzKdPRw59VdBqNC7p7EVknxqD4XyultxDvPI/nsZcAl2z?=
 =?us-ascii?Q?HAeEcbws8XCCIehWfNYGX3hEigDvQCHC/QbPoylo89ViQsIMSWlNF3tMvnoF?=
 =?us-ascii?Q?SiZArcqy8xzu3oVlWgNnXlkQ5mndwM8C0zY+ddBoeMWmS2573a9rO8IlQTC3?=
 =?us-ascii?Q?2CIKTOeWPyhEiiLqpGDjkwstx1HadyNnqyNLEji9JE3TA/DKzhfJgRdpIHOA?=
 =?us-ascii?Q?FC7N3V8GVTVElpYcr5tzyy6rMuSplQnMQrGv1BJZyMwerXIaLQjQhXHwh23v?=
 =?us-ascii?Q?z0SVp7ZAVNMQudxnKqvIFjtCpCWz4fyfP0wIcKhE7bDKJxY3v3h+/BCMqUAe?=
 =?us-ascii?Q?MfAUxzdpcGeoysVC2pgkRT+vfqi+3IePWKnlwcnjeLxSgnfOTiRPtBO5BrpF?=
 =?us-ascii?Q?L2a+ADGMUcpY1DLybCURK7Qx80k6+83rgXG5p/Z3Z3q2trLr2V2vJMtWSBQQ?=
 =?us-ascii?Q?/aDWjiJhCWbrkWjOACU46UDRsTJ2HBEDFZgnzgnTaU8cunYIRFGIUra/qVGy?=
 =?us-ascii?Q?xRsBk6rmOwwzH1NZ3vW1eZyZRKaFVpXY2rMp5emW1eyfmcORruSmbI6qFI9B?=
 =?us-ascii?Q?gDc7xYR+Sq7XZF1rvRFjRrzaJ6vEtHDKRCXQ2aeDl32rJJigQx4Oj8zdwaaU?=
 =?us-ascii?Q?XoweBBPmOo9UT8xVR/fvZ6xnGJgDzVDXz8C0DwJbIllTWIFUjzTwUM4dY86F?=
 =?us-ascii?Q?tgu5344ARFoLlNbF5ZU72Tor3xL8k44fbNjxYmHyNCpUqFlogpiNlDO2nrqD?=
 =?us-ascii?Q?QkR1Wdt6FEOgt5wT9UmmeaerPLjWVdMvWTTI1/f0GbBLdiGGnocSnIdpZAbE?=
 =?us-ascii?Q?9ParIKXXW7+7KflXiYcBN51GaRcTtdNmrOQwm9HfhD1iR30hx3UtMtADvo7d?=
 =?us-ascii?Q?jBFIAD7hV+tyQBvdIUyOlAVonS47Z0cyGjHF68wN93cvmkmzeVorezODVdST?=
 =?us-ascii?Q?WyNQClWghl9xTYnWrST7JFC3ITNBq7AoPMtfXGh2xp7NRridvTnnIztCO74V?=
 =?us-ascii?Q?Ejv1Gb7h7Of8Mq2rX9NXk017yaNAWE6fKM7z7WplhEyCVBbHe1cGB5NGVmKH?=
 =?us-ascii?Q?LyZ3GZmpo/T5utHehX8lO1LoDvlInrmfoyTlVO9pKi6bXfQHzR6Rt4UnJK2C?=
 =?us-ascii?Q?kOvboVsjWbcIW7UPfIGEioWrxrXnDDXWJf2ZltCRTJIoskZE3m5wD9OJlx7n?=
 =?us-ascii?Q?D5OBDJi8CHtH8Htb1iK4W9qbZMlhOsjlOTQl46gBskfr2X+ZZ6zE8BVATocp?=
 =?us-ascii?Q?Zf4U6GIt8pEq3O576YFbh3637v0l7na7zySsKlx2Gd6Y8240YgiinmOqvCLg?=
 =?us-ascii?Q?h62u2Ild0sAs4rALjfbEvUMr?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13234bf9-56b0-4c3f-373d-08d962cc75d6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:34.2257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hM36Xfvmsi6xGK4sbOqCkpramSJmL5JwJo+5GZrFgJUMM73lesOAbZiJdnEgnFD/9uBLyXuyvsHviBizcj8+nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-GUID: ELW7K5YdAXW26d_90BxIvcu9-PLpJ6j5
X-Proofpoint-ORIG-GUID: ELW7K5YdAXW26d_90BxIvcu9-PLpJ6j5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=928 adultscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Disable native/nativesdk build as they don't work for a long time.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/setools/setools_4.4.0.bb | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index 528e78f..2b10993 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -8,8 +8,6 @@ SETools."
 SECTION = "base"
 LICENSE = "GPLv2 & LGPLv2.1"
 
-BBCLASSEXTEND = "native nativesdk "
-
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4 \
            file://setools4-fixes-for-cross-compiling.patch \
@@ -23,13 +21,9 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
 
 DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol libselinux"
 
-DEPENDS:class-native += "libselinux python3-setuptools python3-cython python3-networkx"
-
 RDEPENDS:${PN} += "python3-networkx python3-decorator python3-setuptools \
                    python3-logging python3-json libselinux-python"
 
-RDEPENDS:${PN}:class-native = ""
-
 RPROVIDES:${PN} += "${PN}-console"
 
 inherit setuptools3
-- 
2.25.1

