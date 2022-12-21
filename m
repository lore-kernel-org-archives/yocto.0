Return-Path: <liezhi.yang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC4C3DA79
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 03:57:00 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.11050.1671595016794808374
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 19:56:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=p4lR8nj8;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=9354952c09=liezhi.yang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BL3hGap024926;
	Tue, 20 Dec 2022 19:56:56 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=S4uFKYo0FCWwZuqlmQIXIEdDVUtBFL1VmzHo0Oo9uAc=;
 b=p4lR8nj8jlvNEkwIBKza0mmnKMhRuRIfYghmXK9kr52HQ0yTxp99x5mNwQvhJAPWbXU1
 ogNwFj7QWLsQ4o/IRDYY1tI31BN9vDvJwrsJWz9PzVswyZnsaj1Hw/WrabfspA/a1qYw
 6FpkrNj1eBK01rc0Mri2eT59RTJn2tbOUcwc1UpqGVIpEQ2BOFOw9VYTyJxM6BCht5MQ
 oNvP5duCkla7s4VDbz+T9ZCnht7jUsrSJzUsSOXXv68N4b5gpQ7O+ICBZOpfOnAxvIvV
 B9PiOUJ1iydM3MzbItKpl1HFgtWEvDw10H3weIhKgAJdm8I1UsFKWJJ/p8yCK9Js07OL kQ== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3mh9x8tsdw-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 20 Dec 2022 19:56:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HZxhOb/W5Y9SHyw9UVfhTzA5nBHuVlpPAgoYXOOeDrIipM9cFNqOV9YHbNa/TV8Ex+rk7jAaJ0a4kpH8f111HCnVUhumEG0SNaXqVC9+ORIV4Wa3NKoCnyOQZcVM1+cr5WMEnsByTkQrlR/iLDXgmX4M+PFGb0BJXk9FluyBNBo6tLiaDYpFApRpta5uJrdCZcboYD+wOHhKyptUgefQG4aOvmYI+mJhbjQIb4hS5Z46Nba8eQEifvjP84zjpIsMBgy1i3twlAAPHVUnPHfdb7NI6RKJM+wIfqr5kcar6Mp6eB1LxyLpqOSJk/IMty3ckgZUGAVAR+WxQ+sszqOY8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4uFKYo0FCWwZuqlmQIXIEdDVUtBFL1VmzHo0Oo9uAc=;
 b=nKS2VfIjnh1arpxAYRa12dcPkFktRnia57QRImlSg58+AkrHBXFf/DMRXQPON2JWtdi0NDnwDacJjB4y6UpKEVpr/Qm4Vq//qEjUpOd4FCaU/9KduDc8+GEQd9zIzmHOIobvNmGamZkABPjwnAmCrtWt/xjeVluUA9dJAXQ45iwXIIs7990AU52yAhNfVHngMzKHwDH80o0ChGG+g+pQDRZiIO2/6CKZb/28WFbkOL1IzAW3/ZpUUovwnj/fUdRRrIkETrKoJhAeacZO9uqNObHoXPkrFw8z1dPBuu9yM5YiLkk1ZuGK7WIUwNxdBeKfcXAIzSmOl0KuEGWI+h7vFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2789.namprd11.prod.outlook.com (2603:10b6:a02:cc::11)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 03:56:51 +0000
Received: from BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf]) by BYAPR11MB2789.namprd11.prod.outlook.com
 ([fe80::6736:bbc7:d903:a7bf%7]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 03:56:50 +0000
From: Robert Yang <liezhi.yang@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: tim.orling@konsulko.com
Subject: [PATCH 1/3] util.py: Fix for removing non-existed dependencies
Date: Tue, 20 Dec 2022 19:56:40 -0800
Message-Id: <20221221035642.113852-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0073.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::14) To BYAPR11MB2789.namprd11.prod.outlook.com
 (2603:10b6:a02:cc::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2789:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a2945c0-aba8-45d2-dbcc-08dae30763ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eFStHm1mghBPOl+oC2TXSAAhrliTwy9Cnj0i01mNxSjqPPKywB/Dc80XZsa/sW8kt+lLM2yb8l7AIW1PcSJQfG3Z9QaP43XRizEneC4EhHnQR+qwJButalJCACpKbMDkHFmZ9lE3WDSqExWsLL9YwlQ2qsYEu/NYuEKMOt4uQ7c2tb4nHSTBUSgE1afFqdvtCKzwVcS1tjN9YkmrqYbm64yWwsmmhQH30KfgI3tspvTbkuJQYuYhjjd6iZfafNR9PEtdwwdcy+++aqaUVzOMRHTvJ5v3UnnEuoBjd5oTAD9iXGCz/EtK4V0mczRhyRNbgv0R0EvFh25+9r7p/qiRN1tPARFZns8WH5D1EJILggdB6tS0orkXaLpz7wHLkeDaMQCa6fRys/pqbttYdY2oeMKSZMk3DNeMMCmPUu+T1Vj/mu8EDfV1QKEFW1Bh7ukakFLwckPXzZV2x1fsxMNcbadqXdX2EzDkiOWnMq+Of162biGzmsJybUhypiDbZbeBDRZwBDwfZShHKMk+mhGdvonVcVW0kflSop9C3asVrYMLkFdcIIodJNd1eUeAK0e39XOz5HQj/D4tStJZhxGXqhCw8DogOktZdndkHcuMQMAVOiSx96oiapK859jjAgL15+YQ5HlIn7SLMdqH9XndGbxY9zjnM9teCoRd9USZzjFig7xYyCbgC/L/9WTmP/WX8VgRJrS7ce5EvBSdCYEXBw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2789.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39850400004)(376002)(136003)(366004)(396003)(451199015)(52116002)(6506007)(478600001)(6486002)(26005)(6666004)(6916009)(2906002)(66946007)(2616005)(36756003)(186003)(316002)(8936002)(41300700001)(6512007)(8676002)(83380400001)(66556008)(66476007)(5660300002)(38100700002)(38350700002)(4326008)(86362001)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?2l1HdDlfrg7EhqpzxVqYoHvcatNvPLH79vpEQmvzZM1ueT01c0pe0XIKYjov?=
 =?us-ascii?Q?iQlV6Etx9ixHTqg2hOVFz7s72QKUKbZPLQ/m5HCjOvyqq3sPY0WrzcXjCvKu?=
 =?us-ascii?Q?F8kGoQ6i8BMyknKgDnOP0R7ymOXVEiNnOugcqPRV9d51V58LMBVpLgnFgxTW?=
 =?us-ascii?Q?gzVQcCY14YN4Ub654G+n8O7bLebzebo1/ZMdW5KB1y2+Byqhy770RUVnhSil?=
 =?us-ascii?Q?J/+ukjTMQ5ndC0VaDAQuBsbEUDCNdwCqIHgsWalWAtffjJLSJo7wFFzf0SAV?=
 =?us-ascii?Q?+zhMWrys/gxwlMd2bkvq+dMHAP9LyOjHOMcInVcTbU6OeK3c8qylA1B4zI+C?=
 =?us-ascii?Q?YQQVJwJJHLw94cU6px0UJSUZBOmZ8dtJAxUUFNrphOWZlmgRRj5hghKRprOJ?=
 =?us-ascii?Q?MMhys2vjdVNpMTTolhAKQg0m2Ridq2O91Px4z+RzVR4F9UN4P+g5EEcF1iWH?=
 =?us-ascii?Q?WewqXXhmrVJanbg7Ir1hkQUv33/o625ognSHge1Cq9fgL+7Hgq3Js570R1lE?=
 =?us-ascii?Q?n7I7BaKU5e3MehrOdd76SJ0/sXyN2vSu9DOw/E9KyTN/YmGZ/9/LbGMJmjRj?=
 =?us-ascii?Q?nEDSiCjxw64k3euuBnc7zWUfu5l5NIWjvpAJ21f9N1vYgJyzjVXYKTpbckOo?=
 =?us-ascii?Q?MkJAddfj+XCnqiTq7XWAS2oep9KOIlwY8GDfz3g4d2pl6KP3eTHgVj/cf7k4?=
 =?us-ascii?Q?X8kiHcvW/j2wlhBxH2V4o26P/A5pfaSoGMwfeDmIkJ/y6eZZqbv1RCmsAJsm?=
 =?us-ascii?Q?08J2SIfAFsl4Pl9/7Gz8/0879NHVrSyG8aqJ7hCMi05/AAePtDJGn4OGeVwS?=
 =?us-ascii?Q?R7giWTLzXGl1/OadUwohuhRL5s68XuUmPL8XgGnH05tHSn3RQBndwgRIolC3?=
 =?us-ascii?Q?yUCsU6mK6A8Dyw5b3EwWocqd9BLR1k8G1R1E/dsAwFVBmXNcVKjFDAl2+3H+?=
 =?us-ascii?Q?IppcNukALj7pYNUEyIbsPTjQdsv4yAY/FMKn26daRMEkQlULDs5JIbU6Kmg1?=
 =?us-ascii?Q?BwrCUw4EEAKANnovoin97erut42Uc423TcrsYTdo+ryi5eGhkkMK7ZdoyUsS?=
 =?us-ascii?Q?dG+fBMRkQU3KZO7P/wjXLuVOYnAj5T2KVx3RRdNOF4VrCVkGDUClYQCG7jrV?=
 =?us-ascii?Q?xlaBiviQjsNjTAYrP2ivelqtlFoh7OULH1eyNPxORU/2vgahWMsV+9HOHv57?=
 =?us-ascii?Q?CxTOTl2I29ovwyY1LjtlPNitAdwidrTRIcPg4XNV1ejcGKoBDrYk0ToKoypb?=
 =?us-ascii?Q?XTGfu/VQNXdCZbK/VHDI4ttlv5uSExSnk3JHag6GrbZoG58m25IuLsFi5Wm5?=
 =?us-ascii?Q?kRjxaFuADEy0445mjK13OHSMGKkWxqasv+0baEcSqjegiJC/ppxDnpSIHm1p?=
 =?us-ascii?Q?DZnY5Mp405qe8gN+sKnJcBqeZ+x8I52W4n4APzg/WnK8V/C4XzfFjDoUrx1k?=
 =?us-ascii?Q?6vRcp6JLn9lMOwAv2WMErIHiKSURx6A8N4/j1RvMaPFoXUViW/i8zTSecPta?=
 =?us-ascii?Q?PtkzdThco2r5DY967yLYL3vPp814b9yX7l+ZyUbqVf9zj5/kn4Sj0tCz1BOL?=
 =?us-ascii?Q?VCw+kAeNd8fqjoXmUYdAeDUWhPk8pvlTIL7S8BQPPwgBYWL8EBpi09atveFX?=
 =?us-ascii?Q?1w=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a2945c0-aba8-45d2-dbcc-08dae30763ee
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2022 03:56:50.8470
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: al4u5nEpnZErtruWZiUEVx4FyZEqLC+vV7eJ2hiu8iXZzf+ZFW0+c4B1LhLOvsSJ7iOnNa1DCUt1XMAH1zvPkWpZe7HYI59xOK7zBEDvSIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
X-Proofpoint-GUID: dMaag25rMMVdVwTHgohGgJPsbT35Sqvy
X-Proofpoint-ORIG-GUID: dMaag25rMMVdVwTHgohGgJPsbT35Sqvy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-21_01,2022-12-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=795 malwarescore=0 priorityscore=1501 clxscore=1015 mlxscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2212210026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 03:57:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58848

The previous code didn't work when there is no deps or recs, it would return
immediately without removing the on-existed dependencies, this patch fixes the
problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/utils.py | 30 +++++++++++++++++++-----------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 9d94015..4b6aeca 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -109,6 +109,18 @@ def get_dependency_layer(depname, version_str=None, logger=None):
 
     return None
 
+def remove_layerdeps(layer_name, need_remove, logger):
+    if need_remove:
+        import settings
+        remove_layer_dependencies = getattr(settings, 'REMOVE_LAYER_DEPENDENCIES', False)
+        if remove_layer_dependencies:
+            logger.info('Removing obsolete dependencies "%s" for layer %s' % (need_remove, layer_name))
+            need_remove.delete()
+        else:
+            logger.warn('Dependencies "%s" are not in %s\'s conf/layer.conf' % (need_remove, layer_name))
+            logger.warn('Either set REMOVE_LAYER_DEPENDENCIES to remove them from the database, or fix conf/layer.conf')
+
+
 def add_dependencies(layerbranch, config_data, logger=None):
     _add_dependency("LAYERDEPENDS", 'dependency', layerbranch, config_data, logger=logger)
 
@@ -124,10 +136,15 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
     if layerbranch.collection:
         var_name = layerbranch.collection
 
-
     dep_list = config_data.getVar("%s_%s" % (var, var_name), True)
 
+    need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required)
+
     if not dep_list:
+        # The need_remove contains all of the deps or recs according to
+        # required is True or False, remove deps or recs immediately if
+        # there are no deps or recs in conf/layer.conf
+        remove_layerdeps(layer_name, need_remove, logger)
         return
 
     try:
@@ -136,7 +153,6 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, layer_name, str(vse)))
         return
 
-    need_remove = LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required)
     for dep, ver_list in list(dep_dict.items()):
         ver_str = None
         if ver_list:
@@ -177,15 +193,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         layerdep.required = required
         layerdep.save()
 
-    if need_remove:
-        import settings
-        remove_layer_dependencies = getattr(settings, 'REMOVE_LAYER_DEPENDENCIES', False)
-        if remove_layer_dependencies:
-            logger.info('Removing obsolete dependencies "%s" for layer %s' % (need_remove, layer_name))
-            need_remove.delete()
-        else:
-            logger.warn('Dependencies "%s" are not in %s\'s conf/layer.conf' % (need_remove, layer_name))
-            logger.warn('Either set REMOVE_LAYER_DEPENDENCIES to remove them from the database, or fix conf/layer.conf')
+        remove_layerdeps(layer_name, need_remove, logger)
 
 def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
     layerbranch.collection = get_layer_var(config_data, 'BBFILE_COLLECTIONS', logger)
-- 
2.37.1


