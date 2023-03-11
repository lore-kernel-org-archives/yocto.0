Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BC3FC6FD1F
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.44232.1678540418372591601
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=anTLzUbD;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDBF9H031858;
	Sat, 11 Mar 2023 05:13:36 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=Rn4EqxQEHeVD78syPW7/lsMVjY6fVO83Hk7r/z8fG64=;
 b=anTLzUbD4oYEo9GY7NH/RuesAbOTMHTk3C1mWu6z35G4tHbkuq8EnTDCtWiWeoQ0P3vM
 en5bCH22MlWVVWt157RxAh0RZ5pBGQgv4LF+jeBspaLcZT2zcL8Zn0b6slZ4ONA84zuM
 yPbH+K7+mN63pTgZ0h3eRMCpx3T3RQEoMXAhTECd0zAvy9c5IPHFjR9OXRcAoawOuGwi
 tdH7Gfr+sfyLx0ti2Wc3QeyMyEVsDPxYGz7DIayyitHNx3wmgyvQkdxSQPCGcgQaZ/Fo
 CFc6mRoyuBnpZBOAFwOvniFEC0jsf1Alyc8ITU2E22Yxn/OAGbeGELKgQ2GFQ5LiDhV1 6A== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8nt8r55q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlrfnUmh+dKiyqspncpQmBddm7tQZIq+IooQVVLAjRJKQbpBhW9LcYrexfUIHmRxtdWmVzDiVwrRTY3pyV5cichJzFGzkTtMJKv1Xa82GiQHaDPO9VTrDhWdGT+/8WEw27a1cx/57hqfxZ87b8xSg8hNVRDAe+zu29ZeFGwFLNMbmEwAYFLE2XjzmQQjkdes60ViNXu4aygCj22S+JdoElqT8bqFLS6cJyq5IPN/XdykCxCJl/QhtUxMDr+HIE2L9UdRXSygS96dR3dtHJlwabMiY0bLo1YawicQOJzTdy1KFTQ3LqNCeyFyjKo8InBHdVPnhRvdD289iHVz9bZu+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rn4EqxQEHeVD78syPW7/lsMVjY6fVO83Hk7r/z8fG64=;
 b=B0HFN7GUZQgWr8zSAm4rX27u2YPxcp6S1zNcYOLmydiI9WdkPTHbDhr8RKvmhsObBonG8EnmG3PTjdJrj1YvDKCiI8X6aOT2rpHSknIGWtDHHyUf/nOIwzxKC1OeG9MOLoq2805SMTAjyLj701tzg2uxjFB7T+ylOGd2QNI93kmSveWCsYhI1yBSw3rEAxIvFeWZSBLS+oMmzDFv2WAesfO7mbPpHuFJhQHaXLSzu+SUCInA4NUAqO85YkYaDyCFOCSEn57L9EEyQRnYJunaHCYIUcRmU4fgtUdiaL+eflvttH/mCrgIzUdW85k2Hy8DgiaidlzQXYwITlcdR46y/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:34 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:34 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 07/17] libsemanage: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:12:58 +0800
Message-Id: <20230311131308.1337339-7-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 881819b0-dcca-4536-0f41-08db22326b3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yQOp12OmGyI/Cn6elg6+sAt0hbLUCm1i6JxUSO+ns5ftLVdsTbYR1TaqR6ClCtCczM4j5icYk3VCXa+QFIzJy+6ne2OtZMqmeyfjDwAAi9xfI8moSaFwvPJv9/EAVO8lE5gryfm1uvVMbdXkjh2hGovxXIj4m8DO6RMqLR4GHxbMTCWc/q/lAH9IXs5tZDCdDi7NFPdZmZsTWllRqc06a73FsaZECbTWwFVny7bKqsWRTkJ3Okw+cV37GmHQipmU/2Jfj8lTmv19INAmYgBbGJIkqlaSz0YpIADcwhhZXcPzv64bMGGXRWGClbfIltkqEBPt072iWcHLiy5zRbmgPVeMJoMM9B8HJ4GaceSMJF+QArSF9kXs/oN0sMCBGONIg3nh6w5PcKZHSEigf4DwS5r7EiTVUG8jMkklO9w8UT66nycyCEChQ5EBBFGNadZYPlKhJDEALZCBZPlsNubeWbGc6NiPIkskFQDnze/tTxU7C7Q0E2GGnqaAqaWpHDZD3vUX82YX0YSr2Jlyr/ixQSpUnn70apoopHc/Y7++D7hM88HEFq50TW6XbNOeRc+D/KdgA5cIk3McdP7/sTsRafciSHxuGUmdOtUyKooZWLumN/InelgzfKvPx6c5grpeZ7VDzJZuWYJgfP9dgZiGzUwquH1e67TRsRQFTSHqjPocyyBj1bNTSbOnK88CPsgIQIceTFO/igE9M7i1vCmJFw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/ut2bPBLOiasx1EvIasM5sRG2Dup3Fp7KhkeIEAZu7E1kBaZr4E5xfltodgS?=
 =?us-ascii?Q?UjQruSKNPi4hFa2X9IFX9yH3zUwoNPt5znY2fgunkAVq4w6QuD6D+h91xAWI?=
 =?us-ascii?Q?IAGtjvtrx72wPsL3/zjz70oZpm2T7DNsKZ047jLdjq0OTzG8Bpw/VrY0vha8?=
 =?us-ascii?Q?OnJ39hATsn8t8m/Y5ahvQWaiEu5wEYVazi4+xi3I88+NEvBt7pkcXSgl81Co?=
 =?us-ascii?Q?CZc2QrvRWW5WFhF/tnw0zVKtFfIQFwRSQy4DhTF8AN4hr9qVcJI8uoMwQ7jW?=
 =?us-ascii?Q?l3pgZiXIzeV0D/Hl87H2EfY8oGyfh+onc6p3jetgpg2WJ3TQa9KhjL8H6pzA?=
 =?us-ascii?Q?ItctPthNapMMJbZvJVR2LXfxjLokOFIDPE3AqdLSwppU+Zl9w1cDuCvSfG5u?=
 =?us-ascii?Q?/HgvJyU8oRsTQrVgyVlvb7QD3QUcWrXfhjRoAW06cpiqUQWc4GDKaPbvNjH6?=
 =?us-ascii?Q?lj5QPO6z9WdYY1is6hwlLuhV+NBDyTjEH+AtqHXsjev6wMTFnZRJSdsLSADw?=
 =?us-ascii?Q?qlhc+XUDzoYr3G++8HNrgHYHiXDF9Cy/qLVz8UpwljpubP3AHXOA2xQgUP/0?=
 =?us-ascii?Q?Q4ihXLC3BkKu9HoXrig2nGgwWh+UQln5lu/g969bHJQEQLWtEV5jNfc4lfRA?=
 =?us-ascii?Q?u68EbvJHHTRDXVpZUaR9F8KDsDOnD3Cnb5HX0clQyXv/g0olTfEUNkJ4YGB+?=
 =?us-ascii?Q?6VJKBABcCGAJLlztUylOqG+c+0Eojg/l30j+85v79oudUMwydf5cjtcFKugI?=
 =?us-ascii?Q?asd3Q1syISGz1pX6qk/1FdJP5lGzzjT7RyI8+81owecYlVUhKun5lTX8kcW0?=
 =?us-ascii?Q?78lyUizBGms0etBnRpSTSJxuMLkiR/KYbioT8hT06DoCwgkdMukgfFw+0cnZ?=
 =?us-ascii?Q?czIwfXb3FX3gx0cLQzKDz4hC0Pr7sGS+9cKGG1ID6GO+PCzP1nu/fucCKfof?=
 =?us-ascii?Q?3QPZxG0xsNXizh4/VDFbPcI/2oWvS3iHXymVjifTWRP/G57rFSrZ2i6R2WBe?=
 =?us-ascii?Q?AX/fNJVynizA94Mr+nRwxHULq93tZBLbyxmk/TZei7vYunasILVciEiCaxQ8?=
 =?us-ascii?Q?dzx7Pt6e0srwztJ2uDb0rU89cKZTat0vGQMhTNOD7J7lx67SQfqE76beld6R?=
 =?us-ascii?Q?wglSu2hrrFeMoyrieYiUJkyxN/8vwHdV0lp2lmsmeJHd+IevTUpZoDvM2tSM?=
 =?us-ascii?Q?SreD5Q1FxG/x6Ia3ni5Poy5vLS0iXfV+H8bcR9STj/zhpXyJC2UNd3J2M9oG?=
 =?us-ascii?Q?i1vpqIKLk1ft0zNj54zk0mGDE8DOq2nt0wqMDixcRC7UZwx42BCSiTeqvbZv?=
 =?us-ascii?Q?kr4J5A7llfgWkYkcRz8G18omp4093c+ymrzre/nhi/k30/D/VCNxyZaYF7V2?=
 =?us-ascii?Q?O6aBQdIKQMCg1G7i8ZU/P1+5p65OoAaewUIiCuFbpqUZgP/CdkM9l4UYWx/U?=
 =?us-ascii?Q?38dnOpczdBHiFv1aKpBogzHcU+oT/VnamgBvWIwGA+jxY5PsCJGdzw9/nYDE?=
 =?us-ascii?Q?aLZEgQqERO/ruN3na/+rfyXSURMjMhDiR3tEgd3A8P/Tx+RXmpSFCxDWQCtr?=
 =?us-ascii?Q?5iyhBqR+3JcRLIEpesr7f1/74VKLWG08a0o6mQUEf3Z76qXyvd07lZRa0OkI?=
 =?us-ascii?Q?NA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 881819b0-dcca-4536-0f41-08db22326b3c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:34.7441
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nZFPCBaRTU94AlwYU8TNHyk5712tJHU1g967hpHl5iwjQgggjcZw2GQH4WdxFAnq1xRd+RjBbN7i4STgxX9vJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: 2LcRPYhZE-shnB_8SukNnrDmt7U4Han0
X-Proofpoint-GUID: 2LcRPYhZE-shnB_8SukNnrDmt7U4Han0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=556
 suspectscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59390

License-Update: Rename COPYING to LICENSE. No content changes.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../{libsemanage_3.4.bb => libsemanage_3.5.bb}      | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)
 rename recipes-security/selinux/{libsemanage_3.4.bb => libsemanage_3.5.bb} (78%)

diff --git a/recipes-security/selinux/libsemanage_3.4.bb b/recipes-security/selinux/libsemanage_3.5.bb
similarity index 78%
rename from recipes-security/selinux/libsemanage_3.4.bb
rename to recipes-security/selinux/libsemanage_3.5.bb
index 7f038ac..93eb870 100644
--- a/recipes-security/selinux/libsemanage_3.4.bb
+++ b/recipes-security/selinux/libsemanage_3.5.bb
@@ -5,7 +5,7 @@ as by programs like load_policy that need to perform specific transformations \
 on binary policies such as customizing policy boolean settings."
 SECTION = "base"
 LICENSE = "LGPL-2.1-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
 
@@ -29,23 +29,24 @@ PACKAGES =+ "${PN}-python"
 # For /usr/libexec/selinux/semanage_migrate_store
 RDEPENDS:${PN}-python = "python3-core"
 
-FILES:${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
+FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}/* \
                       ${libexecdir}/selinux/semanage_migrate_store"
-FILES:${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
+FILES:${PN}-dbg += "${PYTHON_SITEPACKAGES_DIR}/.debug/*"
 FILES:${PN} += "${libexecdir}"
 
 do_compile:append() {
     oe_runmake pywrap \
-        PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+        PYLIBVER='python${PYTHON_BASEVERSION}' \
         PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
         PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
 
 do_install:append() {
     oe_runmake install-pywrap \
+        DESTDIR=${D} \
         PYCEXT='.so' \
-        PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-        PYTHONLIBDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages'
+        PYLIBVER='python${PYTHON_BASEVERSION}' \
+        PYTHONLIBDIR='${PYTHON_SITEPACKAGES_DIR}'
 
     # Update "policy-version" for semanage.conf
     sed -i 's/^#\s*\(policy-version\s*=\).*$/\1 33/' \
-- 
2.25.1


