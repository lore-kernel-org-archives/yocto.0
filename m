Return-Path: <soumya.sambu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E01C3DA7F
	for <webhook@archiver.kernel.org>; Fri, 26 Jul 2024 12:03:58 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.59891.1721995437514782747
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jul 2024 05:03:57 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=793772edd4=soumya.sambu@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46Q5ADSa014772
	for <yocto@lists.yoctoproject.org>; Fri, 26 Jul 2024 12:03:56 GMT
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 40kca1sjqs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 26 Jul 2024 12:03:56 +0000 (GMT)
Received: from blr-linux-engg1.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 26 Jul 2024 05:03:53 -0700
From: ssambu <soumya.sambu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][scarthgap][PATCH 1/1] sssd: Fix CVE-2023-3758
Date: Fri, 26 Jul 2024 12:03:33 +0000
Message-ID: <20240726120333.1918532-1-soumya.sambu@windriver.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [147.11.136.210]
X-ClientProxiedBy: ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) To
 ala-exchng01.corp.ad.wrs.com (147.11.82.252)
X-Proofpoint-ORIG-GUID: _dhTpfYXOiwWvjoJFQLbXBHkZKR_tLi5
X-Proofpoint-GUID: _dhTpfYXOiwWvjoJFQLbXBHkZKR_tLi5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-26_10,2024-07-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 bulkscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.21.0-2407110000 definitions=main-2407260081
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 46Q5ADSa014772
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jul 2024 12:03:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63578

From: Soumya Sambu <soumya.sambu@windriver.com>

A race condition flaw was found in sssd where the GPO policy is
not consistently applied for authenticated users. This may lead
to improper authorization issues, granting or denying access to
resources inappropriately.

References:
https://nvd.nist.gov/vuln/detail/CVE-2023-3758

Upstream-patch:
https://github.com/SSSD/sssd/commit/f4ebe1408e0bc67abfbfb5f0ca2ea13803b36=
726

Signed-off-by: Soumya Sambu <soumya.sambu@windriver.com>
---
 .../sssd/files/CVE-2023-3758.patch            | 220 ++++++++++++++++++
 .../recipes-security/sssd/sssd_2.9.2.bb       |   1 +
 2 files changed, 221 insertions(+)
 create mode 100644 dynamic-layers/networking-layer/recipes-security/sssd=
/files/CVE-2023-3758.patch

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/files/=
CVE-2023-3758.patch b/dynamic-layers/networking-layer/recipes-security/ss=
sd/files/CVE-2023-3758.patch
new file mode 100644
index 0000000..7f39b39
--- /dev/null
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/files/CVE-202=
3-3758.patch
@@ -0,0 +1,220 @@
+From f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726 Mon Sep 17 00:00:00 2001
+From: Sumit Bose <sbose@redhat.com>
+Date: Wed, 8 Nov 2023 14:50:24 +0100
+Subject: [PATCH] ad-gpo: use hash to store intermediate results
+
+Currently after the evaluation of a single GPO file the intermediate
+results are stored in the cache and this cache entry is updated until
+all applicable GPO files are evaluated. Finally the data in the cache is
+used to make the decision of access is granted or rejected.
+
+If there are two or more access-control request running in parallel one
+request might overwrite the cache object with intermediate data while
+another request reads the cached data for the access decision and as a
+result will do this decision based on intermediate data.
+
+To avoid this the intermediate results are not stored in the cache
+anymore but in hash tables which are specific to the request. Only the
+final result is written to the cache to have it available for offline
+authentication.
+
+Reviewed-by: Alexey Tikhonov <atikhono@redhat.com>
+Reviewed-by: Tom=C3=A1=C5=A1 Halman <thalman@redhat.com>
+(cherry picked from commit d7db7971682da2dbf7642ac94940d6b0577ec35a)
+
+CVE: CVE-2023-3758
+
+Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/f4ebe1408=
e0bc67abfbfb5f0ca2ea13803b36726]
+
+Signed-off-by: Soumya Sambu <soumya.sambu@windriver.com>
+---
+ src/providers/ad/ad_gpo.c | 116 +++++++++++++++++++++++++++++++++-----
+ 1 file changed, 102 insertions(+), 14 deletions(-)
+
+diff --git a/src/providers/ad/ad_gpo.c b/src/providers/ad/ad_gpo.c
+index 44e9cbb..cec0cb4 100644
+--- a/src/providers/ad/ad_gpo.c
++++ b/src/providers/ad/ad_gpo.c
+@@ -1317,6 +1317,33 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx=
,
+     return ret;
+ }
+
++static errno_t
++add_result_to_hash(hash_table_t *hash, const char *key, char *value)
++{
++    int hret;
++    hash_key_t k;
++    hash_value_t v;
++
++    if (hash =3D=3D NULL || key =3D=3D NULL || value =3D=3D NULL) {
++        return EINVAL;
++    }
++
++    k.type =3D HASH_KEY_CONST_STRING;
++    k.c_str =3D key;
++
++    v.type =3D HASH_VALUE_PTR;
++    v.ptr =3D value;
++
++    hret =3D hash_enter(hash, &k, &v);
++    if (hret !=3D HASH_SUCCESS) {
++        DEBUG(SSSDBG_OP_FAILURE, "Failed to add [%s][%s] to hash: [%s].=
\n",
++                                 key, value, hash_error_string(hret));
++        return EIO;
++    }
++
++    return EOK;
++}
++
+ /*
+  * This function parses the cse-specific (GP_EXT_GUID_SECURITY) filenam=
e,
+  * and stores the allow_key and deny_key of all of the gpo_map_types pr=
esent
+@@ -1324,6 +1351,7 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx,
+  */
+ static errno_t
+ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
++                             hash_table_t *allow_maps, hash_table_t *de=
ny_maps,
+                              const char *filename)
+ {
+     struct ini_cfgfile *file_ctx =3D NULL;
+@@ -1457,14 +1485,14 @@ ad_gpo_store_policy_settings(struct sss_domain_i=
nfo *domain,
+                 goto done;
+             } else if (ret !=3D ENOENT) {
+                 const char *value =3D allow_value ? allow_value : empty=
_val;
+-                ret =3D sysdb_gpo_store_gpo_result_setting(domain,
+-                                                         allow_key,
+-                                                         value);
++                ret =3D add_result_to_hash(allow_maps, allow_key,
++                                         talloc_strdup(allow_maps, valu=
e));
+                 if (ret !=3D EOK) {
+-                    DEBUG(SSSDBG_CRIT_FAILURE,
+-                          "sysdb_gpo_store_gpo_result_setting failed fo=
r key:"
+-                          "'%s' value:'%s' [%d][%s]\n", allow_key, allo=
w_value,
+-                          ret, sss_strerror(ret));
++                    DEBUG(SSSDBG_CRIT_FAILURE, "Failed to add key: [%s]=
 "
++                                               "value: [%s] to allow ma=
ps "
++                                               "[%d][%s].\n",
++                                               allow_key, value, ret,
++                                               sss_strerror(ret));
+                     goto done;
+                 }
+             }
+@@ -1484,14 +1512,14 @@ ad_gpo_store_policy_settings(struct sss_domain_i=
nfo *domain,
+                 goto done;
+             } else if (ret !=3D ENOENT) {
+                 const char *value =3D deny_value ? deny_value : empty_v=
al;
+-                ret =3D sysdb_gpo_store_gpo_result_setting(domain,
+-                                                         deny_key,
+-                                                         value);
++                ret =3D add_result_to_hash(deny_maps, deny_key,
++                                         talloc_strdup(deny_maps, value=
));
+                 if (ret !=3D EOK) {
+-                    DEBUG(SSSDBG_CRIT_FAILURE,
+-                          "sysdb_gpo_store_gpo_result_setting failed fo=
r key:"
+-                          "'%s' value:'%s' [%d][%s]\n", deny_key, deny_=
value,
+-                          ret, sss_strerror(ret));
++                    DEBUG(SSSDBG_CRIT_FAILURE, "Failed to add key: [%s]=
 "
++                                               "value: [%s] to deny map=
s "
++                                               "[%d][%s].\n",
++                                               deny_key, value, ret,
++                                               sss_strerror(ret));
+                     goto done;
+                 }
+             }
+@@ -1784,6 +1812,8 @@ struct ad_gpo_access_state {
+     int num_cse_filtered_gpos;
+     int cse_gpo_index;
+     const char *ad_domain;
++    hash_table_t *allow_maps;
++    hash_table_t *deny_maps;
+ };
+
+ static void ad_gpo_connect_done(struct tevent_req *subreq);
+@@ -1906,6 +1936,19 @@ ad_gpo_access_send(TALLOC_CTX *mem_ctx,
+         goto immediately;
+     }
+
++    ret =3D sss_hash_create(state, 0, &state->allow_maps);
++    if (ret !=3D EOK) {
++        DEBUG(SSSDBG_FATAL_FAILURE, "Could not create allow maps "
++              "hash table [%d]: %s\n", ret, sss_strerror(ret));
++        goto immediately;
++    }
++
++    ret =3D sss_hash_create(state, 0, &state->deny_maps);
++    if (ret !=3D EOK) {
++        DEBUG(SSSDBG_FATAL_FAILURE, "Could not create deny maps "
++              "hash table [%d]: %s\n", ret, sss_strerror(ret));
++        goto immediately;
++    }
+
+     subreq =3D sdap_id_op_connect_send(state->sdap_op, state, &ret);
+     if (subreq =3D=3D NULL) {
+@@ -2725,6 +2768,43 @@ ad_gpo_cse_step(struct tevent_req *req)
+     return EAGAIN;
+ }
+
++static errno_t
++store_hash_maps_in_cache(struct sss_domain_info *domain,
++                         hash_table_t *allow_maps, hash_table_t *deny_m=
aps)
++{
++    int ret;
++    struct hash_iter_context_t *iter;
++    hash_entry_t *entry;
++    size_t c;
++    hash_table_t *hash_list[] =3D { allow_maps, deny_maps, NULL};
++
++
++    for (c =3D 0; hash_list[c] !=3D NULL; c++) {
++        iter =3D new_hash_iter_context(hash_list[c]);
++        if (iter =3D=3D NULL) {
++            DEBUG(SSSDBG_OP_FAILURE, "Failed to create hash iterator.\n=
");
++            return EINVAL;
++        }
++
++        while ((entry =3D iter->next(iter)) !=3D NULL) {
++            ret =3D sysdb_gpo_store_gpo_result_setting(domain,
++                                                     entry->key.c_str,
++                                                     entry->value.ptr);
++            if (ret !=3D EOK) {
++                free(iter);
++                DEBUG(SSSDBG_OP_FAILURE,
++                      "sysdb_gpo_store_gpo_result_setting failed for ke=
y:"
++                      "[%s] value:[%s] [%d][%s]\n", entry->key.c_str,
++                      (char *) entry->value.ptr, ret, sss_strerror(ret)=
);
++                return ret;
++            }
++        }
++        talloc_free(iter);
++    }
++
++    return EOK;
++}
++
+ /*
+  * This cse-specific function (GP_EXT_GUID_SECURITY) increments the
+  * cse_gpo_index until the policy settings for all applicable GPOs have=
 been
+@@ -2766,6 +2846,7 @@ ad_gpo_cse_done(struct tevent_req *subreq)
+      * (as part of the GPO Result object in the sysdb cache).
+      */
+     ret =3D ad_gpo_store_policy_settings(state->host_domain,
++                                       state->allow_maps, state->deny_m=
aps,
+                                        cse_filtered_gpo->policy_filenam=
e);
+     if (ret !=3D EOK && ret !=3D ENOENT) {
+         DEBUG(SSSDBG_OP_FAILURE,
+@@ -2779,6 +2860,13 @@ ad_gpo_cse_done(struct tevent_req *subreq)
+
+     if (ret =3D=3D EOK) {
+         /* ret is EOK only after all GPO policy files have been downloa=
ded */
++        ret =3D store_hash_maps_in_cache(state->host_domain,
++                                       state->allow_maps, state->deny_m=
aps);
++        if (ret !=3D EOK) {
++            DEBUG(SSSDBG_OP_FAILURE, "Failed to store evaluated GPO map=
s "
++                                     "[%d][%s].\n", ret, sss_strerror(r=
et));
++            goto done;
++        }
+         ret =3D ad_gpo_perform_hbac_processing(state,
+                                              state->gpo_mode,
+                                              state->gpo_map_type,
+--
+2.25.1
diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2=
.9.2.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.=
2.bb
index d61471c..3e05858 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.2.bb
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.2.bb
@@ -25,6 +25,7 @@ SRC_URI =3D "https://github.com/SSSD/sssd/releases/down=
load/${PV}/${BP}.tar.gz \
            file://fix-ldblibdir.patch \
            file://musl_fixup.patch \
            file://0001-sssctl-add-error-analyzer.patch \
+           file://CVE-2023-3758.patch \
            "
 SRC_URI[sha256sum] =3D "827bc65d64132410e6dd3df003f04829d60387ec30e72b2d=
4e22d93bb6f762ba"
=20
--=20
2.40.0


