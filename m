Return-Path: <soumya.sambu@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0DDFC04FF8
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 02:51:18 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.9715.1713754273279193867
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Apr 2024 19:51:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=Yf923Qfq;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=4842708068=soumya.sambu@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43M2khPA026349
	for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 02:51:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding; s=PPS06212021; bh=/XIe7laz4muwerxFCV
	VS1dQv9omwK8JgENwx93qTr8g=; b=Yf923QfqHS7Yx/iSTuGEOG5SJGQW8d3bwi
	WrX70STQdxr+KOckSqBwAqaxx2iux9nrMRzXcl8b0dHBfxQ00pow/HJfVwH1VhXy
	+0Hl6lJxrXn7rdIDyIIGMkg8rwM5UyQFVAxjk/RhPpouni+4Q4Q8zPMIxtqvP8jY
	60/q91TlNgTeF3mSAWnrHNAU8jAaDaxv88odjyw/1UtanRKxPSXVywyBd9WzY5BE
	n513wtvIV0a1rBaETLQExhoR/PDao/MZF5TisTSKugF0BvBKFe/LRExBoN5GmG+7
	phbREqTeDqpTQGgnCykopDi/xJrdPgbUwypl57HZmWsJyTYAFldw==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3xm2wy1brd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 02:51:12 +0000 (GMT)
Received: from blr-linux-engg1.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.37; Sun, 21 Apr 2024 19:51:09 -0700
From: ssambu <soumya.sambu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][kirkstone][PATCH 1/1] sssd: Fix CVE-2023-3758
Date: Mon, 22 Apr 2024 02:50:45 +0000
Message-ID: <20240422025045.3950530-1-soumya.sambu@windriver.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [147.11.136.210]
X-ClientProxiedBy: ala-exchng01.corp.ad.wrs.com (147.11.82.252) To
 ala-exchng01.corp.ad.wrs.com (147.11.82.252)
X-Proofpoint-GUID: _xGzLCmoOrn7UkJt1Z6kxEJR59wpil4n
X-Proofpoint-ORIG-GUID: _xGzLCmoOrn7UkJt1Z6kxEJR59wpil4n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-21_22,2024-04-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 impostorscore=0 mlxlogscore=999 clxscore=1011 lowpriorityscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404220012
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 43M2khPA026349
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 02:51:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62972

From: Soumya Sambu <soumya.sambu@windriver.com>

A race condition flaw was found in sssd where the GPO policy is
not consistently applied for authenticated users. This may lead
to improper authorization issues, granting or denying access to
resources inappropriately.

References:
https://nvd.nist.gov/vuln/detail/CVE-2023-3758

Signed-off-by: Soumya Sambu <soumya.sambu@windriver.com>
---
 .../sssd/files/CVE-2023-3758.patch            | 221 ++++++++++++++++++
 recipes-security/sssd/sssd_2.5.2.bb           |   1 +
 2 files changed, 222 insertions(+)
 create mode 100644 recipes-security/sssd/files/CVE-2023-3758.patch

diff --git a/recipes-security/sssd/files/CVE-2023-3758.patch b/recipes-se=
curity/sssd/files/CVE-2023-3758.patch
new file mode 100644
index 0000000..b604d64
--- /dev/null
+++ b/recipes-security/sssd/files/CVE-2023-3758.patch
@@ -0,0 +1,221 @@
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
+ src/providers/ad/ad_gpo.c | 118 +++++++++++++++++++++++++++++++++-----
+ 1 file changed, 103 insertions(+), 15 deletions(-)
+
+diff --git a/src/providers/ad/ad_gpo.c b/src/providers/ad/ad_gpo.c
+index 219f398..fc9691e 100644
+--- a/src/providers/ad/ad_gpo.c
++++ b/src/providers/ad/ad_gpo.c
+@@ -1314,6 +1314,33 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx=
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
+@@ -1321,6 +1348,7 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx,
+  */
+ static errno_t
+ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
++                             hash_table_t *allow_maps, hash_table_t *de=
ny_maps,
+                              const char *filename)
+ {
+     struct ini_cfgfile *file_ctx =3D NULL;
+@@ -1454,14 +1482,14 @@ ad_gpo_store_policy_settings(struct sss_domain_i=
nfo *domain,
+                 goto done;
+             } else if (ret !=3D ENOENT) {
+                 const char *value =3D allow_value ? allow_value : empty=
_val;
+-                ret =3D sysdb_gpo_store_gpo_result_setting(domain,
+-                                                         allow_key,
+-                                                         value);
+-                if (ret !=3D EOK) {
+-                    DEBUG(SSSDBG_CRIT_FAILURE,
+-                          "sysdb_gpo_store_gpo_result_setting failed fo=
r key:"
+-                          "'%s' value:'%s' [%d][%s]\n", allow_key, allo=
w_value,
+-                          ret, sss_strerror(ret));
++                ret =3D add_result_to_hash(allow_maps, allow_key,
++                                         talloc_strdup(allow_maps, valu=
e));
++		if (ret !=3D EOK) {
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
+@@ -1481,14 +1509,14 @@ ad_gpo_store_policy_settings(struct sss_domain_i=
nfo *domain,
+                 goto done;
+             } else if (ret !=3D ENOENT) {
+                 const char *value =3D deny_value ? deny_value : empty_v=
al;
+-                ret =3D sysdb_gpo_store_gpo_result_setting(domain,
+-                                                         deny_key,
+-                                                         value);
++		ret =3D add_result_to_hash(deny_maps, deny_key,
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
+@@ -1781,6 +1809,8 @@ struct ad_gpo_access_state {
+     int num_cse_filtered_gpos;
+     int cse_gpo_index;
+     const char *ad_domain;
++    hash_table_t *allow_maps;
++    hash_table_t *deny_maps;
+ };
+
+ static void ad_gpo_connect_done(struct tevent_req *subreq);
+@@ -1903,6 +1933,19 @@ ad_gpo_access_send(TALLOC_CTX *mem_ctx,
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
+@@ -2722,6 +2765,43 @@ ad_gpo_cse_step(struct tevent_req *req)
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
+@@ -2763,6 +2843,7 @@ ad_gpo_cse_done(struct tevent_req *subreq)
+      * (as part of the GPO Result object in the sysdb cache).
+      */
+     ret =3D ad_gpo_store_policy_settings(state->host_domain,
++                                       state->allow_maps, state->deny_m=
aps,
+                                        cse_filtered_gpo->policy_filenam=
e);
+     if (ret !=3D EOK) {
+         DEBUG(SSSDBG_OP_FAILURE,
+@@ -2776,6 +2857,13 @@ ad_gpo_cse_done(struct tevent_req *subreq)
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
+2.40.0
diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/=
sssd_2.5.2.bb
index 4c75e0a..c07559c 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -24,6 +24,7 @@ SRC_URI =3D "https://github.com/SSSD/sssd/releases/down=
load/${PV}/sssd-${PV}.tar.g
            file://fix-ldblibdir.patch \
            file://musl_fixup.patch \
            file://CVE-2021-3621.patch \
+           file://CVE-2023-3758.patch \
            "
=20
 SRC_URI[sha256sum] =3D "5e21b3c7b4a2f1063d0fbdd3216d29886b6eaba153b44fb5=
961698367f399a0f"
--=20
2.40.0


