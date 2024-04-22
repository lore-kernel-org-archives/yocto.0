Return-Path: <ncaidin@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41F3EC4345F
	for <webhook@archiver.kernel.org>; Mon, 29 Apr 2024 17:56:30 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web10.17806.1713790869369228886
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 06:01:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=X9TYTkh1;
 spf=pass (domain: mvista.com, ip: 209.85.160.180, mailfrom: hprajapati@mvista.com)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-439b3cc8d91so4436321cf.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 06:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1713790868; x=1714395668; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TpajSK/g0oohEqkdV/EUzkXsI7+2OhOeCDFQUb3r/mI=;
        b=X9TYTkh1OZIP1WNM4kZNtbPqR8wO1h8YxnUzqynoz1PwvYy1DwBCD0umTRVZrqzfvg
         3BqBx1wWcLkfLTmcENJDyg7O3ASMZwJi/mv/LB+cqHzYRB03TTRukwnYewMclItcXJcq
         VVzGriAhX1WUFHejFY/JTOdNiVvC77pHOY5Rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713790868; x=1714395668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TpajSK/g0oohEqkdV/EUzkXsI7+2OhOeCDFQUb3r/mI=;
        b=Fv0VVf61KF8daRw30TMo2a7OhtkPDozksKumNPrtYmWjlxI5tUO9hb6jbpSokIBupN
         Jaf/8QadsA7Ku5BEyFID0Tnhjac49de8fci/pBdPGhCvqmiiqXBeExmp3ceER5YXJ5s9
         fow8gODqAv+CbspMZ70YGFNezMUvDvx3UAIfaypTJRan05G1yay1g4OLMYrkvWNsF4uE
         KPTgtBNo/WhUXfHhIBfYIEKx75HNk1D2arpoD11wNdJAUGSTSVRauuqF7vZtOUMtKhZ3
         qHf2mjdi0zTd+5zz6AU4W3XVK4j3ztu53qJc9dB5KSn5YQp815YIQzSCVjcf6xElVkfo
         NdHw==
X-Gm-Message-State: AOJu0YxWE/8c28GYA1vu8nA0+l9dzoVTCR3fJ5b9v9Qo/tq0qsGU0BT+
	g2gTSHu/ocUcntkozBwt78ZinOKcz7R9+eavHiYbasehpaudkXLoZM++M13t+MGrrRabZTTpibN
	P
X-Google-Smtp-Source: AGHT+IHjK633ysSYFroiYFCpLboWRMHQFFmq2G/wjF6GQXy/y46YS2WyjgB2D5zDxbkjJxiTsA9ALA==
X-Received: by 2002:a05:6214:1414:b0:69b:188a:f31e with SMTP id pr20-20020a056214141400b0069b188af31emr11150574qvb.38.1713790867826;
        Mon, 22 Apr 2024 06:01:07 -0700 (PDT)
Received: from MVIN00016.mvista.com ([150.129.170.139])
        by smtp.gmail.com with ESMTPSA id ez4-20020ad45904000000b00690c77505bdsm3348167qvb.37.2024.04.22.06.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 06:01:07 -0700 (PDT)
From: "Hitendra Prajapati" <hprajapati@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com,
	Hitendra Prajapati <hprajapati@mvista.com>
Subject: [meta-security][kirkstone][PATCH] sssd: fix CVE-2023-3758 Race condition during authorization leads to GPO policies functioning inconsistently
Date: Mon, 22 Apr 2024 18:30:54 +0530
Message-Id: <20240422130054.239371-1-hprajapati@mvista.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Apr 2024 17:56:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63013

Upstream-Status: Backport from https://github.com/SSSD/sssd/commit/f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726

Signed-off-by: Hitendra Prajapati <hprajapati@mvista.com>
---
 .../sssd/files/CVE-2023-3758.patch            | 222 ++++++++++++++++++
 recipes-security/sssd/sssd_2.5.2.bb           |   1 +
 2 files changed, 223 insertions(+)
 create mode 100644 recipes-security/sssd/files/CVE-2023-3758.patch

diff --git a/recipes-security/sssd/files/CVE-2023-3758.patch b/recipes-security/sssd/files/CVE-2023-3758.patch
new file mode 100644
index 0000000..db6f8ed
--- /dev/null
+++ b/recipes-security/sssd/files/CVE-2023-3758.patch
@@ -0,0 +1,222 @@
+From f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726 Mon Sep 17 00:00:00 2001
+From: Sumit Bose <sbose@redhat.com>
+Date: Wed, 8 Nov 2023 14:50:24 +0100
+Subject: [PATCH] ad-gpo: use hash to store intermediate results
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
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
+Reviewed-by: Tomáš Halman <thalman@redhat.com>
+(cherry picked from commit d7db7971682da2dbf7642ac94940d6b0577ec35a)
+
+Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726]
+CVE: CVE-2023-3758
+Signed-off-by: Hitendra Prajapati <hprajapati@mvista.com>
+---
+ src/providers/ad/ad_gpo.c | 116 +++++++++++++++++++++++++++++++++-----
+ 1 file changed, 102 insertions(+), 14 deletions(-)
+
+diff --git a/src/providers/ad/ad_gpo.c b/src/providers/ad/ad_gpo.c
+index 219f398..bdca096 100644
+--- a/src/providers/ad/ad_gpo.c
++++ b/src/providers/ad/ad_gpo.c
+@@ -1314,6 +1314,33 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx,
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
++    if (hash == NULL || key == NULL || value == NULL) {
++        return EINVAL;
++    }
++
++    k.type = HASH_KEY_CONST_STRING;
++    k.c_str = key;
++
++    v.type = HASH_VALUE_PTR;
++    v.ptr = value;
++
++    hret = hash_enter(hash, &k, &v);
++    if (hret != HASH_SUCCESS) {
++        DEBUG(SSSDBG_OP_FAILURE, "Failed to add [%s][%s] to hash: [%s].\n",
++                                 key, value, hash_error_string(hret));
++        return EIO;
++    }
++
++    return EOK;
++}
++
+ /*
+  * This function parses the cse-specific (GP_EXT_GUID_SECURITY) filename,
+  * and stores the allow_key and deny_key of all of the gpo_map_types present
+@@ -1321,6 +1348,7 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx,
+  */
+ static errno_t
+ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
++                             hash_table_t *allow_maps, hash_table_t *deny_maps,
+                              const char *filename)
+ {
+     struct ini_cfgfile *file_ctx = NULL;
+@@ -1454,14 +1482,14 @@ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
+                 goto done;
+             } else if (ret != ENOENT) {
+                 const char *value = allow_value ? allow_value : empty_val;
+-                ret = sysdb_gpo_store_gpo_result_setting(domain,
+-                                                         allow_key,
+-                                                         value);
++                ret = add_result_to_hash(allow_maps, allow_key,
++                                         talloc_strdup(allow_maps, value));
+                 if (ret != EOK) {
+-                    DEBUG(SSSDBG_CRIT_FAILURE,
+-                          "sysdb_gpo_store_gpo_result_setting failed for key:"
+-                          "'%s' value:'%s' [%d][%s]\n", allow_key, allow_value,
+-                          ret, sss_strerror(ret));
++                    DEBUG(SSSDBG_CRIT_FAILURE, "Failed to add key: [%s] "
++                                               "value: [%s] to allow maps "
++                                               "[%d][%s].\n",
++                                               allow_key, value, ret,
++                                               sss_strerror(ret));
+                     goto done;
+                 }
+             }
+@@ -1481,14 +1509,14 @@ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
+                 goto done;
+             } else if (ret != ENOENT) {
+                 const char *value = deny_value ? deny_value : empty_val;
+-                ret = sysdb_gpo_store_gpo_result_setting(domain,
+-                                                         deny_key,
+-                                                         value);
++                ret = add_result_to_hash(deny_maps, deny_key,
++                                         talloc_strdup(deny_maps, value));
+                 if (ret != EOK) {
+-                    DEBUG(SSSDBG_CRIT_FAILURE,
+-                          "sysdb_gpo_store_gpo_result_setting failed for key:"
+-                          "'%s' value:'%s' [%d][%s]\n", deny_key, deny_value,
+-                          ret, sss_strerror(ret));
++                    DEBUG(SSSDBG_CRIT_FAILURE, "Failed to add key: [%s] "
++                                               "value: [%s] to deny maps "
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
++    ret = sss_hash_create(state, 0, &state->allow_maps);
++    if (ret != EOK) {
++        DEBUG(SSSDBG_FATAL_FAILURE, "Could not create allow maps "
++              "hash table [%d]: %s\n", ret, sss_strerror(ret));
++        goto immediately;
++    }
++
++    ret = sss_hash_create(state, 0, &state->deny_maps);
++    if (ret != EOK) {
++        DEBUG(SSSDBG_FATAL_FAILURE, "Could not create deny maps "
++              "hash table [%d]: %s\n", ret, sss_strerror(ret));
++        goto immediately;
++    }
+ 
+     subreq = sdap_id_op_connect_send(state->sdap_op, state, &ret);
+     if (subreq == NULL) {
+@@ -2722,6 +2765,43 @@ ad_gpo_cse_step(struct tevent_req *req)
+     return EAGAIN;
+ }
+ 
++static errno_t
++store_hash_maps_in_cache(struct sss_domain_info *domain,
++                         hash_table_t *allow_maps, hash_table_t *deny_maps)
++{
++    int ret;
++    struct hash_iter_context_t *iter;
++    hash_entry_t *entry;
++    size_t c;
++    hash_table_t *hash_list[] = { allow_maps, deny_maps, NULL};
++
++
++    for (c = 0; hash_list[c] != NULL; c++) {
++        iter = new_hash_iter_context(hash_list[c]);
++        if (iter == NULL) {
++            DEBUG(SSSDBG_OP_FAILURE, "Failed to create hash iterator.\n");
++            return EINVAL;
++        }
++
++        while ((entry = iter->next(iter)) != NULL) {
++            ret = sysdb_gpo_store_gpo_result_setting(domain,
++                                                     entry->key.c_str,
++                                                     entry->value.ptr);
++            if (ret != EOK) {
++                free(iter);
++                DEBUG(SSSDBG_OP_FAILURE,
++                      "sysdb_gpo_store_gpo_result_setting failed for key:"
++                      "[%s] value:[%s] [%d][%s]\n", entry->key.c_str,
++                      (char *) entry->value.ptr, ret, sss_strerror(ret));
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
+  * cse_gpo_index until the policy settings for all applicable GPOs have been
+@@ -2763,6 +2843,7 @@ ad_gpo_cse_done(struct tevent_req *subreq)
+      * (as part of the GPO Result object in the sysdb cache).
+      */
+     ret = ad_gpo_store_policy_settings(state->host_domain,
++                                       state->allow_maps, state->deny_maps,
+                                        cse_filtered_gpo->policy_filename);
+     if (ret != EOK) {
+         DEBUG(SSSDBG_OP_FAILURE,
+@@ -2776,6 +2857,13 @@ ad_gpo_cse_done(struct tevent_req *subreq)
+ 
+     if (ret == EOK) {
+         /* ret is EOK only after all GPO policy files have been downloaded */
++        ret = store_hash_maps_in_cache(state->host_domain,
++                                       state->allow_maps, state->deny_maps);
++        if (ret != EOK) {
++            DEBUG(SSSDBG_OP_FAILURE, "Failed to store evaluated GPO maps "
++                                     "[%d][%s].\n", ret, sss_strerror(ret));
++            goto done;
++        }
+         ret = ad_gpo_perform_hbac_processing(state,
+                                              state->gpo_mode,
+                                              state->gpo_map_type,
+-- 
+2.25.1
+
diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 4c75e0a..c07559c 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -24,6 +24,7 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
            file://fix-ldblibdir.patch \
            file://musl_fixup.patch \
            file://CVE-2021-3621.patch \
+           file://CVE-2023-3758.patch \
            "
 
 SRC_URI[sha256sum] = "5e21b3c7b4a2f1063d0fbdd3216d29886b6eaba153b44fb5961698367f399a0f"
-- 
2.25.1


