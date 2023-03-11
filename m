Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35EA0C61DA4
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.44230.1678540416209568512
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=rZ4TAJrX;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDDZgu031964;
	Sat, 11 Mar 2023 13:13:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=cKxvXo0+AAj1VkQaQ7qwZaBA2iiDrnF403AWnjUXVno=;
 b=rZ4TAJrX2yIM3fs7CFbgJbhT35aypS2JisM8cyqXzlZ60UDoqJ4ELWUpRZcGeufJOe8R
 NzKVDmBvsrqYuSzJ83+w/pFOfhk46gfCX1Ymg3WjNAIaFRFe7ZTRQgV8kTtZDWaYQLyf
 1GuTMrumdYqbADt4r66bKy+2kSK7/4iMf5zPHwCj7iHG4r5f6GbE2LWG1wzqAj26P4HC
 HtiZSG8xUH5PrKSyzRs/PAhjY5hdGgGTxmSfLRdphSz/O4c8h1Gqm5va2z3PJVXK/4VC
 +CF+Ru5XLnEA+ijUZ3qMy5Oc3g1tJWT1+oCVFg5Cro0gFKH2VDC7aYV2DiUSqate/7Ps 2Q== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2103.outbound.protection.outlook.com [104.47.58.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8gma0b7d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EanTOaUoT22IIqqplWJMkXjcxy2XyOvUrDwLiMbW6IsS1z0+qIOQ33GggSSxoKfifohPCT0/qj+oTNFHXOKy9GcxWueX/+wDn35BAEGhQzT9IQ3JzVmBFW6HICmUjbQ8Re4hBUUsLkVnb2RnZ40rXB3RRM+BtAU/jhpLbjJYARMMvKi674uybbSvFDQ2xoi8yrhT2pNz6Wne32/rXVSJHGOKhPnuDMMUZG7RHyG9gecZ3Z6voL7+2ZcPDQLCt1qmtoBgKtiut3Hgm8LNWPQtvx8fiANVxOGWGukaAlf2kWPPzVhC1a0IeMLorxqPC14WY3x8i/1bwpwwYmIgIFgpLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cKxvXo0+AAj1VkQaQ7qwZaBA2iiDrnF403AWnjUXVno=;
 b=ilc75VCBuEKPiRuwFOID1yIqp0twSYh4LffppaqA+EF03tBMwbGF6laUsaRXXPPmhqriwP9KsfUqh2j04L0RZBigpGU5Te0pM12DYSSpByAjUiKubOsdZFFhu1Tpm5NcYYVGAGVu3xLLBKTiuNCsYfl2YKtlVJIz9jisGrn2yLRmAXNMy7yqP1VrDQerFtPa3cSZK2IOtxl7XFzaYcGIjbDmLup5zwxve6Z/zuZjEtJCdcTBMwf7KueuoaB6cLyaxUWjWqql2mVorxwZBfVXPnB6HXllMWcaC2TaRTaTuqamuzkGi/Df5VyE25owde5RykoqCrglrICZmn0frb4mcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:32 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:32 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 06/17] libselinux-python: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:12:57 +0800
Message-Id: <20230311131308.1337339-6-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: ed5e5330-12ea-4d82-5803-08db22326a1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qugFCfDloPAp9lPx81Dej4RlcqMWNX+0ynCN48nJEV8h0iE1yutppli16dSv5F1e3qyKVWsbxqZ2XJYO8Qu4dUl4DHXOToUnSUyW7xRFTpKsXu6cQ/KLSNrsYfBNs6Ajm0yuMXAbboJqN6jebQa3dxXjhosSBxrJA9e8Eyn0VWYrZmL+YtKLfi2Xoo6NaG9Ek5yC7FHeKcTeNHw3Luyg/fmRPpjxs9Ils0a1eGpRNBOjZiSl8KTMUMi7W1/68pdvlM7xnYJoV5JgFWYLH7K7dEDKrbxWVxH5y599iiXy7Ly0Tg9NYuCbxIjNG7WiOgYmOrvHAOVUZ3T1caEDUpBLE5yDOFlE8Kf9coZau+9Tp7lrB5T6WigBeZ/xx956JJg98J0WcNXb/wdnfYGJ+v0vbLXiRZy1hp3IyesIaLsfsntlmXPRO1wFyGYkfrZa/Q+PvM5Mokl4lJCs+DsYYgKGYfMfLPt2guvlFzFgAnXVdU96Z7p/n+NVVSDjvxjzy9RL5Aj5ivx7iy/SoO4PItmkX7EJ9MaD/vAvTHbRPxwQkJx2XoiDIBCLQzvsLbovKNw+OvATQh5WSc/sGxGGLOyaFdPv4dnlaUTv/Hby38UCUfDe39dYd7ywSS9RSjqJ/xpnjBwlvg2hOLnXN6r5SgYOFxKw93avIQAMDe4v7oP+QysXbL3AED3z9ZJU4k2zoy/m2dLodf5QUbChlfraCFho9w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(53546011)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?M9co5dGI9tNDeWzcIDY7WLzoBV1pBotZPVg1izmJ2EOfThQgv/F6nejwOrX+?=
 =?us-ascii?Q?RcvEvIyRbA7pcjWt2tXXqlN2WobzyxxLBFQc6tzqoH/rvW9+C8aRqBb6yL4o?=
 =?us-ascii?Q?p0tY2LZTAdcsKDsXar1/lc4FQLs3gOkeQUW00Dbk0k9x16TvkeunewdcczEC?=
 =?us-ascii?Q?xnBCWVEuGfDVKgFyav/dis+W8ylHXhZxGcn6jQtjSVc+nttJqlktGmT5ku3s?=
 =?us-ascii?Q?4xBzDsFAN2ai1oRerYCme4D3AGST538hQHaODWe/DP7vDEz9IvhE9DjXpZb5?=
 =?us-ascii?Q?h+3iV5x0XArSkcIBSVf+RAb7tIUWTXZ45CoHzKlcH4obXSRk3bCIzzydLmB4?=
 =?us-ascii?Q?cQKEnYPq+e0zt1zfQiQOTProAPINWTstWgMWUPqlYK7Vx15P14+xVPLZgGJB?=
 =?us-ascii?Q?y/6zfkVaYQ/Edtr/bjn2n7uoib1SxyGfKvXigyX/lYJPTURoYvWyqixxpwtw?=
 =?us-ascii?Q?q5QLtZHekqz8c0a2rXamZ5ANdQohCk/Xal8Ts0xokFa6RO/ccG/idf7KZNSt?=
 =?us-ascii?Q?/XekuAoERD0glQz5hjs+H9q/rR/mSDYQC+xQjhkmN5rXqXX3nOCyIGTiR9jV?=
 =?us-ascii?Q?r9T+oRBYcaVsTowWOFiWKjbqGrBVmJw3SrXuXlwg+cFwKxBN753h7cQa7K2S?=
 =?us-ascii?Q?wr79ZOPShXQi5d71DqqLJJbWdkK7FQbU+Kz3g9FRvyOOfN3717C6mxKyAT6a?=
 =?us-ascii?Q?2HZO8jRet6j0q4rV7p8/WIVAwAbdwtLrqo6BK0LBTqAPnbbM9G25HfPjvQYi?=
 =?us-ascii?Q?bXWXnalWH+OuWuXRcnrRsdTBZnG0tu1NNgzmAoXBZQxNVQfU5hj8Pc6OLR9m?=
 =?us-ascii?Q?+lHQ2unn7njXLbzDfMwTfvwAxgUBBTtQVIWb79eUEc7OxUu5qwNjUEzjJp0H?=
 =?us-ascii?Q?CEgBtm/2VswgNo1Q4yPxHhCRWXCCX6cFGsfNfb/2i1jY1y6uRp5tHBcHp2Bq?=
 =?us-ascii?Q?vBcRi/TQmZbpQDMKs3IBKRIm7CMdo9CzWGvMTy0dHmi6TGeebXc9IyM47KIa?=
 =?us-ascii?Q?YRpIQ3cIXKSyv1TWYu4rG+B5g1B5j1ML7rLYg1bL0wdqmyWj4actOLb5PrJa?=
 =?us-ascii?Q?7T3yy7tY02rXFpIRUq2WtPlXLyilP8vIlzO4j0ryEs8xt7XDIn2P5ShPWL7U?=
 =?us-ascii?Q?et0r2glb32C8G9VMlpuhceFidwwvUEvTjuMjFjdP/Rl8ORuvT7cHYw3x46cb?=
 =?us-ascii?Q?Af0rjPWgTU1eHnFPhEv9Gbb/dKlG+LOBd5HPFpm2PUXXth3zhMRMAfiCiY9c?=
 =?us-ascii?Q?IWS1l7N7tCWud8JC8SQo085gDoCqBy8HGLVgmajP5K7xVN8C+FRaTJin+Tsg?=
 =?us-ascii?Q?eJichc2+Qkinfq5FyShfug4XrKdnq747kWrp/gGIEcewmqjrpw0nd+W6owet?=
 =?us-ascii?Q?y9cR2cz78goifK8FKqbcVOe0F9ojcIjZoj2ZKeHjX2MQalTlVQt9abIrTvzH?=
 =?us-ascii?Q?ZumJ6SPKp+dw3VNbB7Kth8tdcLo4xCzJeH/YaVh2wLgdI2D3429WY54WCl6c?=
 =?us-ascii?Q?pYxIXVK8+Wdfxczey+XJnbhmliIoMq3EU87KVE55UEqr3zdFe9GBd2oUDgdz?=
 =?us-ascii?Q?cN2gPV41x2WcMMpUWrwoo6nllol3j4CMa6BqI+vAozBqnA3Wlw7PSC3zIxdc?=
 =?us-ascii?Q?xQ=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed5e5330-12ea-4d82-5803-08db22326a1e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:32.8702
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WqKIAdWU4950XUfzSOFmaEDKCSd5AoeVbUOU81b73/XFibYmP6f+7A3GG1JUb63U67oyg6/fRUM1Zq6sXPv7wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: j_3NnPM5I3VpwOZvdm0CeooVLrx0CHtC
X-Proofpoint-ORIG-GUID: j_3NnPM5I3VpwOZvdm0CeooVLrx0CHtC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59389

* Add dependency python3-setuptools-scm-native to fix build error.
* Refresh patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...inux-python_3.4.bb => libselinux-python_3.5.bb} | 14 +++++++++-----
 ...x-python-modules-install-path-for-multili.patch | 10 +++++-----
 ...PYCEXT-and-rely-on-the-installed-file-nam.patch | 10 +++++-----
 3 files changed, 19 insertions(+), 15 deletions(-)
 rename recipes-security/selinux/{libselinux-python_3.4.bb => libselinux-python_3.5.bb} (76%)

diff --git a/recipes-security/selinux/libselinux-python_3.4.bb b/recipes-security/selinux/libselinux-python_3.5.bb
similarity index 76%
rename from recipes-security/selinux/libselinux-python_3.4.bb
rename to recipes-security/selinux/libselinux-python_3.5.bb
index a850369..3555a72 100644
--- a/recipes-security/selinux/libselinux-python_3.4.bb
+++ b/recipes-security/selinux/libselinux-python_3.5.bb
@@ -18,7 +18,7 @@ SRC_URI += "\
 
 S = "${WORKDIR}/git/libselinux"
 
-DEPENDS = "libsepol libpcre2 swig-native"
+DEPENDS = "libsepol libpcre2 swig-native python3-setuptools-scm-native"
 DEPENDS:append:libc-musl = " fts"
 
 RDEPENDS:${PN} = "libselinux python3-core python3-shell"
@@ -33,12 +33,12 @@ def get_policyconfigarch(d):
 EXTRA_OEMAKE = "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE:append:libc-musl = " FTS_LDLIBS=-lfts"
 
-FILES:${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
+FILES:${PN} = "${PYTHON_SITEPACKAGES_DIR}/*"
 INSANE_SKIP:${PN} = "dev-so"
 
 do_compile() {
     oe_runmake pywrap -j1 \
-        PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+        PYLIBVER='python${PYTHON_BASEVERSION}' \
         PYINC='-I${STAGING_INCDIR}/${PYLIBVER}' \
         PYLIBS='-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
@@ -46,6 +46,10 @@ do_compile() {
 do_install() {
     oe_runmake install-pywrap \
         DESTDIR=${D} \
-        PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-        PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages'
+        PYLIBVER='python${PYTHON_BASEVERSION}' \
+        PYTHONLIBDIR='${PYTHON_SITEPACKAGES_DIR}'
+
+    # Fix buildpaths issue
+    sed -i -e 's,${WORKDIR},,g' \
+        ${D}${PYTHON_SITEPACKAGES_DIR}/selinux-${PV}.dist-info/direct_url.json
 }
diff --git a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
index 9750cd6..1b9dfbb 100644
--- a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
+++ b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
@@ -1,4 +1,4 @@
-From 1ff60a36bb0bfc95ce33cf950f58e121548a3c8a Mon Sep 17 00:00:00 2001
+From 57a087de68d6f7fe955268ee36b523cbe7c0c6db Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Mon, 13 Apr 2020 12:44:23 +0800
 Subject: [PATCH] Makefile: fix python modules install path for multilib
@@ -11,15 +11,15 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 04bf4f2..81ae6a2 100644
+index 36d5712..983f8af 100644
 --- a/src/Makefile
 +++ b/src/Makefile
-@@ -181,7 +181,7 @@ install: all
+@@ -187,7 +187,7 @@ install: all
  	ln -sf --relative $(DESTDIR)$(SHLIBDIR)/$(LIBSO) $(DESTDIR)$(LIBDIR)/$(TARGET)
  
  install-pywrap: pywrap
--	$(PYTHON) setup.py install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR)` $(PYTHON_SETUP_ARGS)
-+	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR) $(PYTHON_SETUP_ARGS)
+-	$(PYTHON) -m pip install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR) --ignore-installed --no-deps` $(PYTHON_SETUP_ARGS) .
++	$(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
  	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
  
diff --git a/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch b/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
index db7d68f..cd5510d 100644
--- a/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
+++ b/recipes-security/selinux/libselinux/0002-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
@@ -1,4 +1,4 @@
-From dae53d7cd4d7875f7fb7aba016a0331559044eea Mon Sep 17 00:00:00 2001
+From 1454521f2b9f2cbc3c40177aae9c260ec8966ae0 Mon Sep 17 00:00:00 2001
 From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
 Date: Fri, 25 Oct 2019 13:37:14 +0200
 Subject: [PATCH] Do not use PYCEXT, and rely on the installed file name
@@ -27,20 +27,20 @@ Signed-off-by: Changqing Li <changqing.li@windriver.com>
  1 file changed, 1 insertion(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index 81ae6a2..37399e1 100644
+index 983f8af..3d777bb 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -15,7 +15,6 @@ INCLUDEDIR ?= $(PREFIX)/include
  PYINC ?= $(shell $(PKG_CONFIG) --cflags $(PYPREFIX))
  PYLIBS ?= $(shell $(PKG_CONFIG) --libs $(PYPREFIX))
- PYTHONLIBDIR ?= $(shell $(PYTHON) -c "from distutils.sysconfig import *; print(get_python_lib(plat_specific=1, prefix='$(PREFIX)'))")
+ PYTHONLIBDIR ?= $(shell $(PYTHON) -c "import sysconfig; print(sysconfig.get_path('platlib', vars={'platbase': '$(PREFIX)', 'base': '$(PREFIX)'}))")
 -PYCEXT ?= $(shell $(PYTHON) -c 'import importlib.machinery;print(importlib.machinery.EXTENSION_SUFFIXES[0])')
  RUBYINC ?= $(shell $(RUBY) -e 'puts "-I" + RbConfig::CONFIG["rubyarchhdrdir"] + " -I" + RbConfig::CONFIG["rubyhdrdir"]')
  RUBYLIBS ?= $(shell $(RUBY) -e 'puts "-L" + RbConfig::CONFIG["libdir"] + " -L" + RbConfig::CONFIG["archlibdir"] + " " + RbConfig::CONFIG["LIBRUBYARG_SHARED"]')
  RUBYINSTALL ?= $(shell $(RUBY) -e 'puts RbConfig::CONFIG["vendorarchdir"]')
-@@ -183,7 +182,7 @@ install: all
+@@ -189,7 +188,7 @@ install: all
  install-pywrap: pywrap
- 	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR) $(PYTHON_SETUP_ARGS)
+ 	$(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
  	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
 -	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
 +	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux*.so $(DESTDIR)$(PYTHONLIBDIR)/
-- 
2.25.1


