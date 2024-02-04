Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05400C4828D
	for <webhook@archiver.kernel.org>; Sun,  4 Feb 2024 03:24:35 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.32219.1707017067113556087
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Feb 2024 19:24:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=OZvtieBT;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=276424a97d=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4143H31k014816
	for <yocto@lists.yoctoproject.org>; Sun, 4 Feb 2024 03:24:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=DPODsYdmnMeNeivR7C
	zCd/rxzYEHnyEubFKXLu5JZLg=; b=OZvtieBTkV6swOKRqmsDBvpH7A7sYsiE95
	yEjUrN6W9YfcBz1bPERUwet1Yy3gx/SxlhjbKDg23xqrYtG2wlFlqWly08J8HbJ3
	Yz02YCGbUvxWdnVL/RGhToL67QuPKaeA1AnxZWpGzXjcQLMY17+PE9CuzPi93m0v
	shQ+frWtPGWhVdaoAt2Oekn5GjGhJ5w2WsfNMGzrvzCCt1aYXDYozRPznbbgf1MC
	tStVz1wTLrrhPwu0v61Eoid1+68ayOiofrsjepGr1iUGzgV5t3XDFo6zpOW37D6D
	crWu4RlMmeWUsNl8Xjpkv+O3c3Z63eLZvH5MdtK+xZrCEF1jqmEQ==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w1cs78r4f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 04 Feb 2024 03:24:26 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxNDxFxxviqLSs48guhmS1EX/nP+pRw21JwVNpGnH6oEk6OWeASEPP1zR0M+H6DxSoEEApt89UjNYQxNzc1QMohOh8BeXWF5vbI8NS1XDAa3y0ODv6gKcbgPJNQ4V+/mRToqb2hbzcQW/ipjCykRwEVOu0q9N7e0icnMM4w+gh+91RvXifpNbeFN8LTSK9lxC8w3mYdL4uJYwZwzWVYWEZAWoh7srrV8xU6uRMPNmsXpJgBE+DQjrRCcAllNYFMnY2nnTpUr+x/CelUhIZ4QFT0/HMXtPrm74+vphQnKPIfKwcCpx6LJlqw6c7thecbAw9/8s80mkQdDkK8jTrlSYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPODsYdmnMeNeivR7CzCd/rxzYEHnyEubFKXLu5JZLg=;
 b=Vz/YpLQozZS2EMCLO+7MP+ZnWcZQ433wIwUsEWKV4qD9wDhUttf7jqbxWI+rIbJBIk2aNGAECxTxLPEOeBDbZ6gaBCLnWF8xKosVhNOybneSyLPYjW+M7VQdNgxsJoZK3U8aR5lqOvvrrhUp9R2vsJZFOl+pxOa7x9l8Z9xFzTp2O2Akk7UKDWxuUTOHxJdXwiSO3QhOtjBrLOALY6OWbrBa3ctW/XVsCV+Nvj80nbdRcUePODtWCyNNY9cpmLUn4OuaQKR1Fs9tbd3B8jCLMStnMNz+L0IVh2U3sVra69PFGx/7ev5ARBgutu9h0xrLGAl4+6EDNFb8mPho0TyoKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CH3PR11MB8342.namprd11.prod.outlook.com (2603:10b6:610:167::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.33; Sun, 4 Feb
 2024 03:24:13 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::5d84:2b01:5029:9315%7]) with mapi id 15.20.7249.032; Sun, 4 Feb 2024
 03:24:13 +0000
From: Qi.Chen@windriver.com
To: yocto@lists.yoctoproject.org
Subject: [meta-tensorflow][PATCH] meta-demo: update LAYERSERIES_COMPAT
Date: Sat,  3 Feb 2024 19:24:01 -0800
Message-ID: <20240204032401.1530344-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.42.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0065.namprd08.prod.outlook.com
 (2603:10b6:a03:117::42) To CO6PR11MB5602.namprd11.prod.outlook.com
 (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|CH3PR11MB8342:EE_
X-MS-Office365-Filtering-Correlation-Id: c60c3df9-34a2-42b0-8f06-08dc2530c29d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ggVK6WSKoLB8RunxMji2aS9Yl5hTJRMs2lHR3oRB079H5ryU2tmTndUAA73bO5+djKNhELCTP3DSv84IKC0WBXZYlc5WL0qJErvCzOFzbaW5bwvd5XilBgsEkNIZ+pn5fLhCE0wYEz4FTkGC/COr22p8fnu+Y5/ffCmd4sR5d3MlyQWFTbkQazEw7+7WiXmx2HRoeF4lpgjKz9bWI9WOOT6zT11fildHqB1GpAZbAs1UpC0digEq1xrERxNlLNazfV6I940d4xmqr/cdr36otvTTgZCbqnn9sUkI/VFkxxZdbsVOV8WQTH4OkAQrBK6rl+3etJrCVTw92viL1DhpyA04T7uGG1AumTBe2xkmwrFxIGQwBklRzn+FBoeovF+d6To3zNhyhD8XMR9njhqzPTQqNUnElw16+lzNHRFdtN1w5ZZ7mFNwAOt5oVkFUQDUD/RCTKNwgQbMoxPWHuFnBBX9sClKEmH5NzAkPmpdb7+gUrl/Ku/sTpXobHuCaMH2NbFXzh6KdzKbueRdLjOxvGeXwggTVdGy4zt8GIYIA3V6twcxyQs8X8bzOsS7hx5JrSbAnFrcfOaWGxnfIL8M24dV/CKpQxMqJrIfg9YdAFVKGQM559QuBav5zLoNOEjx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39840400004)(136003)(346002)(366004)(376002)(396003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(2616005)(6486002)(66574015)(1076003)(86362001)(38350700005)(26005)(52116002)(478600001)(6506007)(6666004)(83380400001)(9686003)(6512007)(316002)(38100700002)(6916009)(66556008)(66946007)(66476007)(8936002)(8676002)(36756003)(15650500001)(4744005)(2906002)(41300700001)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?X3a4naNxDMcJWZZ6HRWcrumVJUml9rd3sFgD5KnRy78tABndA0deUN4ahKBb?=
 =?us-ascii?Q?7blLbHn0p+PChI4xA0skGH90NfTQHJ/o8gFUzNLqHc+vWb//G5lhNatZ8Ikk?=
 =?us-ascii?Q?AfjL6dk1v8vZsrImciMUWWVvUFe/S4M4HaiRD9aRxA2SDA67RJOyv0I6cOgT?=
 =?us-ascii?Q?L5nsKRM0au3kSH+ybZVbijn9XAO1HLDUuik77YXgLKxR53DXxy6akBpqtF0J?=
 =?us-ascii?Q?azhOE9bF5CuksjgvgVrcM8qEPv392lLB1kVHjh07kIBUBK/r5D454J8rxMlv?=
 =?us-ascii?Q?ZdwKhPg2A2oh2kgyyyAcdDsRf1TIGyEcAUfX5KNR4DLwIBm/8du1tbUX9QAC?=
 =?us-ascii?Q?K4Q+RQfbrVcydJO9f3luzp18RCSWE2IlkOrSqkkC5CA6hq3Me76y2oC4SEj3?=
 =?us-ascii?Q?TPTQfNDscfoXl/ZmSkfqvOVO9wqlWGmEHTWxTiafa0z2NYJ1dmYeAmmPvspS?=
 =?us-ascii?Q?G3F5LZ9r26PI/JJypyKViTg661y0NCifgF1RdjZ/Du3fR3JQlgZIwmKJP2Yn?=
 =?us-ascii?Q?TDhqej2z/XAvW0TN6MK6B63vQFlQQKLFkOOuoSQbsM9ZtM5fDCB/MCQoj3ZB?=
 =?us-ascii?Q?dJIjbZULJuM9msg6J1AqA1vb/rm/KHNalP2NkJ1T7iBTJVNgnwHmrrx3Y5HO?=
 =?us-ascii?Q?KbmlP7sK7TYwihEXG7JlSjH1A8VFw3zBYfEiT9BPaLJ6R9ZbnZjKlADIe94M?=
 =?us-ascii?Q?RvHIyNj4FEqgLYs5lWYjEkcpg66OoaE0DkIqK9vuWhNrEy5VXO+XjnOdonG3?=
 =?us-ascii?Q?BOcTz6ZdRPUHOqhcmd/BAP81L8qYem2dGoa6/8Tgv2B/+j2DbYjP4inQSNqi?=
 =?us-ascii?Q?8T7i2QEMsyLftPErsG1acARUrAi0w8z3iitJ286XCdz6Ab8KG+gLRj4iANny?=
 =?us-ascii?Q?k1+QyriPRV1DBmJt8pB8pEp0SBX5urpnUswA6iII4YNsf72HpbZ4W1hK8Z01?=
 =?us-ascii?Q?o+HWUfg4YJQ2fh1DvrXSSL1Sw2m2LA9Zf81mhzP2p5letBDRUMdbPCu4nqJ/?=
 =?us-ascii?Q?2Bm/CAd2FYBWF/Tp2lXaBbbHCUI1hUEve5kPLDcffoE3Fj+7KcBK4kLk7RFr?=
 =?us-ascii?Q?hp1cjIIWxFntVdH2PhW23ZwjQlbqvffBiwn64bX3R6WS4k7PK7aTvBR5hmPZ?=
 =?us-ascii?Q?vVlkmXhGCkI2TfycWGGktf3O4PqG9e+MWpcLrtMGTHT/U2tphGwkhCRrze2Z?=
 =?us-ascii?Q?d2+HdgIVlgTR5wKRNCpwRTuhqjxojRertb2VDl/uGhYRPpzB/wYlH3QlTdRL?=
 =?us-ascii?Q?/vUmKf0gxpnkyuyyhBuLOtWHIIXx3AtCQELy+SHIqAauUG7C7WTZ01l4Ncxb?=
 =?us-ascii?Q?0e3YXGpJVQI02VQYdxPjffigWcAe8edi+QzvJyqlEm9xRxrrKxK0Im4SUnMT?=
 =?us-ascii?Q?lAUcAiBmJtdz/QdVC1VUGaoN0Sd0dSj27ju+X0kQQUtDrMWxv1IbFIFst5Du?=
 =?us-ascii?Q?FUbEp+Z6KnLp07RUsFvw8TG175ynezI66Y36Brn/epwLVUfqZNxGPVXOtfyd?=
 =?us-ascii?Q?ys9JExYxf92NCoKt+6yaK/0AgoFcY1ehXZtUIT4xj5B0haWpnoa3FDKcrhzm?=
 =?us-ascii?Q?sjTJgHQePlx/liLZerV7TCW8oeRCEWPgQODDso0iRDvs6CMHD9fGO71SMdff?=
 =?us-ascii?Q?jQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c60c3df9-34a2-42b0-8f06-08dc2530c29d
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2024 03:24:13.4886
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FKngTC/u+b1m0FG7hUjMq9b05nJw1Jjtt6JvLcpd2SMzkdv9VE8qGNUY+dIr6lAnKJ1bb2ADQvozDBHJuXz+pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8342
X-Proofpoint-ORIG-GUID: AotFjkOcZJ6ONnke3Qlpw6TPAAE22AkI
X-Proofpoint-GUID: AotFjkOcZJ6ONnke3Qlpw6TPAAE22AkI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-03_18,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 phishscore=0
 bulkscore=0 mlxlogscore=541 impostorscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2401310000 definitions=main-2402040024
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 04 Feb 2024 03:24:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62388

From: Chen Qi <Qi.Chen@windriver.com>

oe-core is now using nanbield, update LAYERSERIES_COMPAT accordinly.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-demo/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-demo/conf/layer.conf b/meta-demo/conf/layer.conf
index 390ecf9..b78736e 100644
--- a/meta-demo/conf/layer.conf
+++ b/meta-demo/conf/layer.conf
@@ -18,7 +18,7 @@ LAYERDEPENDS_tensorflow-demo = " \
     meta-tensorflow \
 "
 
-LAYERSERIES_COMPAT_tensorflow-demo = "hardknott honister"
+LAYERSERIES_COMPAT_tensorflow-demo = "nanbield"
 
 # USB webcam
 KERNEL_CLASSES:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ts-demo', 'ts-demo-kernel', '', d)}"
-- 
2.42.0


