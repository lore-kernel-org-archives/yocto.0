Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CBC4C07C79
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 15:34:18 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web11.332.1713800053806679539
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 08:34:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XJRmzqE9;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-61b6200fcb5so12122497b3.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 08:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713800053; x=1714404853; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nhtj/DTYgj7PyySeID1woZlHrLtV86jjyy9ew3KQAy8=;
        b=XJRmzqE9CUZ7QsK5R9qffLNxkMx/4RskwxAB8F9FHKUoCZ/pSytCdsUyLdkkipE4c5
         LWnrB0RxYlhKyd7/j9vfqjX3bAQTVUWJN6OD4HRXN0Eh07BCsg8JaoGm6fFsqoMdbMgR
         iG5POoadmwr/eYDq1BHTFxFMWiSrjX1wB2z90QwldsCFOAEYLI5zxhTJevQfpKCXLG5f
         v53+ARMm3NZLi4LDoYSrbYHx3b78gKA3VJBBTR56eIrPo+NpNY8YRuTFxlRVneFf6A/g
         VGq3z/sPsds4NCcJK5lfjZWwWO3GEbsNqKniTHn9pb/l3OPe/wUsGXppq8nAXNFrtr5a
         7mpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713800053; x=1714404853;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nhtj/DTYgj7PyySeID1woZlHrLtV86jjyy9ew3KQAy8=;
        b=Ewb1YyT4YpkCKjJQ5OvWsPU/cDgMCBD0oFEDJP9xvBx3K1Y+NgeZiNrYBiTwAcrcFK
         7U991SVt/0oMLYkR5aOPRtQe2p4VFVy1W7DOA3yV2gM39Nry5FbfKcB9veG7B7OAFXXn
         aworJqfGKlNgMO8wRWt+u8wMw60xlfTp7QF8EOugFvdGS3GyzP1WU+dS9figKJCWazBc
         nDqIudrlblR+XKdSMqkenDvtPncb+Y5WSyupY6JH5agdvbLEXiZwYDtWL9Nz9/C7GpqO
         lS7FJKSgm3a2Iwi9rxmCiiY2pPkU2+CylJ+oMC6O7kDP0iFsWbU48i7MyyUSD1ji8x15
         T19Q==
X-Forwarded-Encrypted: i=1; AJvYcCVs7naliEwBry9TTak4E9GiPhgozNL96bA/tzS7Vcnwso6G0bvGD5lBCJRiQAcNqKAreipujApwujFO1LQamtqJIrbW6kDIE9D1Ij6f
X-Gm-Message-State: AOJu0YytXMexzFr1rILJFLLky4thhGHE3Ctoc13rdjIbkl7uO7ofa0eU
	YxWWlNXz7LGPCIrL3h/xpCYyuBsDnzx/ar/f0kpJVFgAi/0TaO20
X-Google-Smtp-Source: AGHT+IEUuEDOWuca8CBl6eHr6VatZLu7pAIGo13h0Mjr9ctfdLFhQqaSr9DtE//kSVhH1nY6jin+Pg==
X-Received: by 2002:a05:690c:6d05:b0:61a:f895:3442 with SMTP id iv5-20020a05690c6d0500b0061af8953442mr14787117ywb.16.1713800052700;
        Mon, 22 Apr 2024 08:34:12 -0700 (PDT)
Received: from ?IPV6:2600:1700:45dd:7000:188e:5bde:fe5c:3bce? ([2600:1700:45dd:7000:188e:5bde:fe5c:3bce])
        by smtp.gmail.com with ESMTPSA id y193-20020a81a1ca000000b0061abd7e611asm1989641ywg.103.2024.04.22.08.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 08:34:12 -0700 (PDT)
Message-ID: <db8fc58e-27d4-4daa-82ed-0fa74d1b8250@gmail.com>
Date: Mon, 22 Apr 2024 11:34:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-security][kirkstone][PATCH] sssd: fix CVE-2023-3758 Race
 condition during authorization leads to GPO policies functioning
 inconsistently
To: Hitendra Prajapati <hprajapati@mvista.com>, yocto@lists.yoctoproject.org
References: <20240422130054.239371-1-hprajapati@mvista.com>
Content-Language: en-US
From: akuster808 <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; keydata=
 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
 ApZ86eOP
In-Reply-To: <20240422130054.239371-1-hprajapati@mvista.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 15:34:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62978

Hello Hitendra,

On 4/22/24 9:00 AM, Hitendra Prajapati wrote:
> Upstream-Status: Backport from https://github.com/SSSD/sssd/commit/f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726
>
> Signed-off-by: Hitendra Prajapati <hprajapati@mvista.com>

A fix landed yesterday for the same issue.

- armin
> ---
>   .../sssd/files/CVE-2023-3758.patch            | 222 ++++++++++++++++++
>   recipes-security/sssd/sssd_2.5.2.bb           |   1 +
>   2 files changed, 223 insertions(+)
>   create mode 100644 recipes-security/sssd/files/CVE-2023-3758.patch
>
> diff --git a/recipes-security/sssd/files/CVE-2023-3758.patch b/recipes-security/sssd/files/CVE-2023-3758.patch
> new file mode 100644
> index 0000000..db6f8ed
> --- /dev/null
> +++ b/recipes-security/sssd/files/CVE-2023-3758.patch
> @@ -0,0 +1,222 @@
> +From f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726 Mon Sep 17 00:00:00 2001
> +From: Sumit Bose <sbose@redhat.com>
> +Date: Wed, 8 Nov 2023 14:50:24 +0100
> +Subject: [PATCH] ad-gpo: use hash to store intermediate results
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Currently after the evaluation of a single GPO file the intermediate
> +results are stored in the cache and this cache entry is updated until
> +all applicable GPO files are evaluated. Finally the data in the cache is
> +used to make the decision of access is granted or rejected.
> +
> +If there are two or more access-control request running in parallel one
> +request might overwrite the cache object with intermediate data while
> +another request reads the cached data for the access decision and as a
> +result will do this decision based on intermediate data.
> +
> +To avoid this the intermediate results are not stored in the cache
> +anymore but in hash tables which are specific to the request. Only the
> +final result is written to the cache to have it available for offline
> +authentication.
> +
> +Reviewed-by: Alexey Tikhonov <atikhono@redhat.com>
> +Reviewed-by: Tomáš Halman <thalman@redhat.com>
> +(cherry picked from commit d7db7971682da2dbf7642ac94940d6b0577ec35a)
> +
> +Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/f4ebe1408e0bc67abfbfb5f0ca2ea13803b36726]
> +CVE: CVE-2023-3758
> +Signed-off-by: Hitendra Prajapati <hprajapati@mvista.com>
> +---
> + src/providers/ad/ad_gpo.c | 116 +++++++++++++++++++++++++++++++++-----
> + 1 file changed, 102 insertions(+), 14 deletions(-)
> +
> +diff --git a/src/providers/ad/ad_gpo.c b/src/providers/ad/ad_gpo.c
> +index 219f398..bdca096 100644
> +--- a/src/providers/ad/ad_gpo.c
> ++++ b/src/providers/ad/ad_gpo.c
> +@@ -1314,6 +1314,33 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx,
> +     return ret;
> + }
> +
> ++static errno_t
> ++add_result_to_hash(hash_table_t *hash, const char *key, char *value)
> ++{
> ++    int hret;
> ++    hash_key_t k;
> ++    hash_value_t v;
> ++
> ++    if (hash == NULL || key == NULL || value == NULL) {
> ++        return EINVAL;
> ++    }
> ++
> ++    k.type = HASH_KEY_CONST_STRING;
> ++    k.c_str = key;
> ++
> ++    v.type = HASH_VALUE_PTR;
> ++    v.ptr = value;
> ++
> ++    hret = hash_enter(hash, &k, &v);
> ++    if (hret != HASH_SUCCESS) {
> ++        DEBUG(SSSDBG_OP_FAILURE, "Failed to add [%s][%s] to hash: [%s].\n",
> ++                                 key, value, hash_error_string(hret));
> ++        return EIO;
> ++    }
> ++
> ++    return EOK;
> ++}
> ++
> + /*
> +  * This function parses the cse-specific (GP_EXT_GUID_SECURITY) filename,
> +  * and stores the allow_key and deny_key of all of the gpo_map_types present
> +@@ -1321,6 +1348,7 @@ ad_gpo_extract_policy_setting(TALLOC_CTX *mem_ctx,
> +  */
> + static errno_t
> + ad_gpo_store_policy_settings(struct sss_domain_info *domain,
> ++                             hash_table_t *allow_maps, hash_table_t *deny_maps,
> +                              const char *filename)
> + {
> +     struct ini_cfgfile *file_ctx = NULL;
> +@@ -1454,14 +1482,14 @@ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
> +                 goto done;
> +             } else if (ret != ENOENT) {
> +                 const char *value = allow_value ? allow_value : empty_val;
> +-                ret = sysdb_gpo_store_gpo_result_setting(domain,
> +-                                                         allow_key,
> +-                                                         value);
> ++                ret = add_result_to_hash(allow_maps, allow_key,
> ++                                         talloc_strdup(allow_maps, value));
> +                 if (ret != EOK) {
> +-                    DEBUG(SSSDBG_CRIT_FAILURE,
> +-                          "sysdb_gpo_store_gpo_result_setting failed for key:"
> +-                          "'%s' value:'%s' [%d][%s]\n", allow_key, allow_value,
> +-                          ret, sss_strerror(ret));
> ++                    DEBUG(SSSDBG_CRIT_FAILURE, "Failed to add key: [%s] "
> ++                                               "value: [%s] to allow maps "
> ++                                               "[%d][%s].\n",
> ++                                               allow_key, value, ret,
> ++                                               sss_strerror(ret));
> +                     goto done;
> +                 }
> +             }
> +@@ -1481,14 +1509,14 @@ ad_gpo_store_policy_settings(struct sss_domain_info *domain,
> +                 goto done;
> +             } else if (ret != ENOENT) {
> +                 const char *value = deny_value ? deny_value : empty_val;
> +-                ret = sysdb_gpo_store_gpo_result_setting(domain,
> +-                                                         deny_key,
> +-                                                         value);
> ++                ret = add_result_to_hash(deny_maps, deny_key,
> ++                                         talloc_strdup(deny_maps, value));
> +                 if (ret != EOK) {
> +-                    DEBUG(SSSDBG_CRIT_FAILURE,
> +-                          "sysdb_gpo_store_gpo_result_setting failed for key:"
> +-                          "'%s' value:'%s' [%d][%s]\n", deny_key, deny_value,
> +-                          ret, sss_strerror(ret));
> ++                    DEBUG(SSSDBG_CRIT_FAILURE, "Failed to add key: [%s] "
> ++                                               "value: [%s] to deny maps "
> ++                                               "[%d][%s].\n",
> ++                                               deny_key, value, ret,
> ++                                               sss_strerror(ret));
> +                     goto done;
> +                 }
> +             }
> +@@ -1781,6 +1809,8 @@ struct ad_gpo_access_state {
> +     int num_cse_filtered_gpos;
> +     int cse_gpo_index;
> +     const char *ad_domain;
> ++    hash_table_t *allow_maps;
> ++    hash_table_t *deny_maps;
> + };
> +
> + static void ad_gpo_connect_done(struct tevent_req *subreq);
> +@@ -1903,6 +1933,19 @@ ad_gpo_access_send(TALLOC_CTX *mem_ctx,
> +         goto immediately;
> +     }
> +
> ++    ret = sss_hash_create(state, 0, &state->allow_maps);
> ++    if (ret != EOK) {
> ++        DEBUG(SSSDBG_FATAL_FAILURE, "Could not create allow maps "
> ++              "hash table [%d]: %s\n", ret, sss_strerror(ret));
> ++        goto immediately;
> ++    }
> ++
> ++    ret = sss_hash_create(state, 0, &state->deny_maps);
> ++    if (ret != EOK) {
> ++        DEBUG(SSSDBG_FATAL_FAILURE, "Could not create deny maps "
> ++              "hash table [%d]: %s\n", ret, sss_strerror(ret));
> ++        goto immediately;
> ++    }
> +
> +     subreq = sdap_id_op_connect_send(state->sdap_op, state, &ret);
> +     if (subreq == NULL) {
> +@@ -2722,6 +2765,43 @@ ad_gpo_cse_step(struct tevent_req *req)
> +     return EAGAIN;
> + }
> +
> ++static errno_t
> ++store_hash_maps_in_cache(struct sss_domain_info *domain,
> ++                         hash_table_t *allow_maps, hash_table_t *deny_maps)
> ++{
> ++    int ret;
> ++    struct hash_iter_context_t *iter;
> ++    hash_entry_t *entry;
> ++    size_t c;
> ++    hash_table_t *hash_list[] = { allow_maps, deny_maps, NULL};
> ++
> ++
> ++    for (c = 0; hash_list[c] != NULL; c++) {
> ++        iter = new_hash_iter_context(hash_list[c]);
> ++        if (iter == NULL) {
> ++            DEBUG(SSSDBG_OP_FAILURE, "Failed to create hash iterator.\n");
> ++            return EINVAL;
> ++        }
> ++
> ++        while ((entry = iter->next(iter)) != NULL) {
> ++            ret = sysdb_gpo_store_gpo_result_setting(domain,
> ++                                                     entry->key.c_str,
> ++                                                     entry->value.ptr);
> ++            if (ret != EOK) {
> ++                free(iter);
> ++                DEBUG(SSSDBG_OP_FAILURE,
> ++                      "sysdb_gpo_store_gpo_result_setting failed for key:"
> ++                      "[%s] value:[%s] [%d][%s]\n", entry->key.c_str,
> ++                      (char *) entry->value.ptr, ret, sss_strerror(ret));
> ++                return ret;
> ++            }
> ++        }
> ++        talloc_free(iter);
> ++    }
> ++
> ++    return EOK;
> ++}
> ++
> + /*
> +  * This cse-specific function (GP_EXT_GUID_SECURITY) increments the
> +  * cse_gpo_index until the policy settings for all applicable GPOs have been
> +@@ -2763,6 +2843,7 @@ ad_gpo_cse_done(struct tevent_req *subreq)
> +      * (as part of the GPO Result object in the sysdb cache).
> +      */
> +     ret = ad_gpo_store_policy_settings(state->host_domain,
> ++                                       state->allow_maps, state->deny_maps,
> +                                        cse_filtered_gpo->policy_filename);
> +     if (ret != EOK) {
> +         DEBUG(SSSDBG_OP_FAILURE,
> +@@ -2776,6 +2857,13 @@ ad_gpo_cse_done(struct tevent_req *subreq)
> +
> +     if (ret == EOK) {
> +         /* ret is EOK only after all GPO policy files have been downloaded */
> ++        ret = store_hash_maps_in_cache(state->host_domain,
> ++                                       state->allow_maps, state->deny_maps);
> ++        if (ret != EOK) {
> ++            DEBUG(SSSDBG_OP_FAILURE, "Failed to store evaluated GPO maps "
> ++                                     "[%d][%s].\n", ret, sss_strerror(ret));
> ++            goto done;
> ++        }
> +         ret = ad_gpo_perform_hbac_processing(state,
> +                                              state->gpo_mode,
> +                                              state->gpo_map_type,
> +--
> +2.25.1
> +
> diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
> index 4c75e0a..c07559c 100644
> --- a/recipes-security/sssd/sssd_2.5.2.bb
> +++ b/recipes-security/sssd/sssd_2.5.2.bb
> @@ -24,6 +24,7 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
>              file://fix-ldblibdir.patch \
>              file://musl_fixup.patch \
>              file://CVE-2021-3621.patch \
> +           file://CVE-2023-3758.patch \
>              "
>   
>   SRC_URI[sha256sum] = "5e21b3c7b4a2f1063d0fbdd3216d29886b6eaba153b44fb5961698367f399a0f"


