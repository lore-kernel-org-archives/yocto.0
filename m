Return-Path: <Divya.Chellam@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A95EC5472F
	for <webhook@archiver.kernel.org>; Tue, 27 Aug 2024 13:51:13 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.78251.1724766671757619441
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Aug 2024 06:51:11 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=8969404eb5=divya.chellam@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47R3EPNE019113
	for <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 06:51:11 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 417f1katek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 06:51:11 -0700 (PDT)
Received: from blr-linux-engg1.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 06:51:08 -0700
From: dchellam <divya.chellam@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][kirkstone][PATCH 1/1] tpm2-tools: fix CVE-2024-29039
Date: Tue, 27 Aug 2024 13:49:51 +0000
Message-ID: <20240827134951.3139782-1-divya.chellam@windriver.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [147.11.136.210]
X-ClientProxiedBy: ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) To
 ala-exchng01.corp.ad.wrs.com (147.11.82.252)
X-Proofpoint-ORIG-GUID: dDzZw-2Tq___TdqUn1HApPilf7BsS18F
X-Authority-Analysis: v=2.4 cv=McQ+uI/f c=1 sm=1 tr=0 ts=66cdd9cf cx=c_pps a=/ZJR302f846pc/tyiSlYyQ==:117 a=/ZJR302f846pc/tyiSlYyQ==:17 a=HCiNrPZc1L8A:10 a=yoJbH4e0A30A:10 a=t7CeM3EgAAAA:8 a=xNf9USuDAAAA:8 a=NEAV23lmAAAA:8 a=bUQKSiCPAAAA:8
 a=qHUOglpnbeFhvRd7ip0A:9 a=FdTzh2GWekK77mhwV6Dw:22 a=SEwjQc04WA-l_NiBhQ7s:22 a=-fHZXUhsFbuwFN3fwQAr:22
X-Proofpoint-GUID: dDzZw-2Tq___TdqUn1HApPilf7BsS18F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_07,2024-08-27_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 mlxscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.21.0-2407110000 definitions=main-2408270102
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 13:51:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63748

From: Divya Chellam <divya.chellam@windriver.com>

tpm2 is the source repository for the Trusted Platform Module (TPM2.0)
tools. This vulnerability allows attackers to manipulate tpm2_checkquote
outputs by altering the TPML_PCR_SELECTION in the PCR input file.
As a result, digest values are incorrectly mapped to PCR slots and banks,
providing a misleading picture of the TPM state. This issue has been
patched in version 5.7.

Reference:
https://security-tracker.debian.org/tracker/CVE-2024-29039

Upstream-patch:
https://github.com/tpm2-software/tpm2-tools/commit/98599df9392a346216c5a059b8d35271286100bb

Signed-off-by: Divya Chellam <divya.chellam@windriver.com>
---
 .../tpm2-tools/CVE-2024-29039.patch           | 92 +++++++++++++++++++
 .../recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb |  4 +-
 2 files changed, 95 insertions(+), 1 deletion(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch
new file mode 100644
index 0000000..5a87152
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools/CVE-2024-29039.patch
@@ -0,0 +1,92 @@
+From 98599df9392a346216c5a059b8d35271286100bb Mon Sep 17 00:00:00 2001
+From: Juergen Repp <juergen_repp@web.de>
+Date: Tue, 5 Mar 2024 22:11:38 +0100
+Subject: [PATCH] tpm2_checkquote: Add comparison of pcr selection.
+
+The pcr selection which is passed with the --pcr parameter it not
+compared with the attest. So it's possible to fake a valid
+attestation.
+
+Fixes: CVE-2024-29039
+
+Signed-off-by: Juergen Repp <juergen_repp@web.de>
+Signed-off-by: Andreas Fuchs <andreas.fuchs@infineon.com>
+
+CVE: CVE-2024-29039
+
+Upstream-Status: Backport [https://github.com/tpm2-software/tpm2-tools/commit/98599df9392a346216c5a059b8d35271286100bb]
+
+Signed-off-by: Divya Chellam <divya.chellam@windriver.com>
+---
+ tools/misc/tpm2_checkquote.c | 41 +++++++++++++++++++++++++++++++++++-
+ 1 file changed, 40 insertions(+), 1 deletion(-)
+
+diff --git a/tools/misc/tpm2_checkquote.c b/tools/misc/tpm2_checkquote.c
+index 6ce086f..8a2a154 100644
+--- a/tools/misc/tpm2_checkquote.c
++++ b/tools/misc/tpm2_checkquote.c
+@@ -54,6 +54,37 @@ static tpm2_verifysig_ctx ctx = {
+         .pcr_hash = TPM2B_TYPE_INIT(TPM2B_DIGEST, buffer),
+ };
+ 
++static bool compare_pcr_selection(TPML_PCR_SELECTION *attest_sel, TPML_PCR_SELECTION *pcr_sel) {
++    if (attest_sel->count != pcr_sel->count) {
++        LOG_ERR("Selection sizes do not match.");
++        return false;
++    }
++    for (uint32_t i = 0; i < attest_sel->count; i++) {
++        for (uint32_t j = 0; j < pcr_sel->count; j++) {
++            if (attest_sel->pcrSelections[i].hash ==
++                pcr_sel->pcrSelections[j].hash) {
++                if (attest_sel->pcrSelections[i].sizeofSelect !=
++                        pcr_sel->pcrSelections[j].sizeofSelect) {
++                    LOG_ERR("Bitmask size does not match");
++                    return false;
++                }
++                if (memcmp(&attest_sel->pcrSelections[i].pcrSelect[0],
++                           &pcr_sel->pcrSelections[j].pcrSelect[0],
++                           attest_sel->pcrSelections[i].sizeofSelect) != 0) {
++                    LOG_ERR("Selection bitmasks do not match");
++                    return false;
++                }
++                break;
++            }
++            if (j == pcr_sel->count - 1) {
++                LOG_ERR("Hash selections to not match.");
++                return false;
++            }
++        }
++    }
++    return true;
++}
++
+ static bool verify(void) {
+ 
+     bool result = false;
+@@ -374,7 +405,7 @@ static tool_rc init(void) {
+     }
+ 
+     TPM2B_ATTEST *msg = NULL;
+-    TPML_PCR_SELECTION pcr_select;
++    TPML_PCR_SELECTION pcr_select = { 0 };
+     tpm2_pcrs *pcrs;
+     tpm2_pcrs temp_pcrs = {};
+     tool_rc return_value = tool_rc_general_error;
+@@ -537,6 +568,14 @@ static tool_rc init(void) {
+         goto err;
+     }
+ 
++    if (ctx.flags.pcr) {
++        if (!compare_pcr_selection(&ctx.attest.attested.quote.pcrSelect,
++                                   &pcr_select)) {
++            LOG_ERR("PCR selection does not match PCR slection from attest!");
++            goto err;
++        }
++    }
++
+     // Figure out the digest for this message
+     res = tpm2_openssl_hash_compute_data(ctx.halg, msg->attestationData,
+             msg->size, &ctx.msg_hash);
+-- 
+2.40.0
+
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
index c20af7e..e4966d7 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
@@ -6,7 +6,9 @@ SECTION = "tpm"
 
 DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
 
-SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz \
+           file://CVE-2024-29039.patch \
+          "
 
 SRC_URI[sha256sum] = "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d8909ff64119f7a630"
 
-- 
2.40.0


