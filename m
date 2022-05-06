Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A170AC433F5
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:38 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.10104.1651847553852749671
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BlsXCusi;
 spf=pass (domain: gmail.com, ip: 209.85.214.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id i17so7602326pla.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=dP4AwLMlRL0OhrsmTf8tXwj1LX+9eqyD1YggTHk9jw0=;
        b=BlsXCusihv00n/IeYPSBTRCzwQLX8TCbBCt5U1IK/vtaltgtilnGhth+uR+/Q4+9MS
         4pv9yPllVUeHy1Tvtgrn6r1cAp3iC4lxGw0Zd9O9wVTdK8MDGiHG0BK0pfOItFZDkKYZ
         nmbFkJ0jHHv8P9l02rruCPyVTSL8M22Iv03KtHDA6P8v/f2+0+I8EheInXtoQaMH0DNF
         KaxCO6q/7lPX8HFvnvBIuLvfqcKd6sI0DocVlKY/BCJ7zUYOHD0rZEOf32UCnzgIwic/
         VImJLWX+FJC2owoyyAvenkaNL+oaBeZyJMY+ENPy0DSLxYuYD1Tk4UI/D2HYYEKES60V
         plRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dP4AwLMlRL0OhrsmTf8tXwj1LX+9eqyD1YggTHk9jw0=;
        b=YMvGaJw2L3wgsm8D80ZsAnlTRXxk2Bs1Y9tq/CPGLJSMpXcWTwWU3jMFSc08iNZc8o
         2Qw76Z4mrcUHMlCHlSYCjqyt/K9P6LgCQpYW9zwsHG8DpJvWyHoyj2M8Wlbs00R/CXGy
         sGqyxZTgi7aLJr4syz6BYBf08JKJEdfNV3DaPNBXv5HVNGtOFsvxGEdNtrBE7FwY65Si
         JvGOVnyIDS1bYXqbtYX35EEXzQKmqZ0h4KYxFb7rfeM5L4SULRW3dKuLhSdR0BiCbqlo
         JkjyTf4g3bPMKZ8l+/46Kfs9w2L3VtLB2K3uhB7mBlEcfMiEMMX2IP0rTkXm5riCZtbE
         j2fw==
X-Gm-Message-State: AOAM533g4DQS1xaW+fSYnq2aSkZGFjr3peGF5Kpt5ZC+4AxJHzH8o6fG
	8FSV+F7BnlMricfIFBFGU4Yu8u8pyZyoBw==
X-Google-Smtp-Source: 
 ABdhPJwEG4D18aSW3YR2ZbYRUP5qZSFLhVLGJ8Tvsq1rB6JXJKsKSuoYff8Yr8DXNqPLvRi06YXDzA==
X-Received: by 2002:a17:903:32d0:b0:15e:8cbc:fd39 with SMTP id
 i16-20020a17090332d000b0015e8cbcfd39mr4063810plr.95.1651847552790;
        Fri, 06 May 2022 07:32:32 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/9] meta-security: move perl and python
 recipes to dynamic layers structure
Date: Fri,  6 May 2022 07:32:22 -0700
Message-Id: <20220506143229.2141000-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57013

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-scanners}/checksecurity/checksecurity_2.0.15.bb       | 0
 .../files/check-setuid-use-more-portable-find-args.patch          | 0
 .../recipes-scanners}/checksecurity/files/setuid-log-folder.patch | 0
 .../meta-perl/recipes-security}/bastille/bastille_3.2.1.bb        | 0
 .../meta-perl/recipes-security}/bastille/files/API.pm             | 0
 .../recipes-security}/bastille/files/AccountPermission.pm         | 0
 .../meta-perl/recipes-security}/bastille/files/FileContent.pm     | 0
 .../meta-perl/recipes-security}/bastille/files/HPSpecific.pm      | 0
 .../meta-perl/recipes-security}/bastille/files/Miscellaneous.pm   | 0
 .../meta-perl/recipes-security}/bastille/files/ServiceAdmin.pm    | 0
 .../bastille/files/accept_os_flag_in_backend.patch                | 0
 .../recipes-security}/bastille/files/allow_os_with_assess.patch   | 0
 .../recipes-security}/bastille/files/call_output_config.patch     | 0
 .../meta-perl/recipes-security}/bastille/files/config             | 0
 .../recipes-security}/bastille/files/do_not_apply_config.patch    | 0
 .../recipes-security}/bastille/files/edit_usage_message.patch     | 0
 .../recipes-security}/bastille/files/find_existing_config.patch   | 0
 .../bastille/files/fix_missing_use_directives.patch               | 0
 .../recipes-security}/bastille/files/fix_number_of_modules.patch  | 0
 .../recipes-security}/bastille/files/fix_version_parse.patch      | 0
 .../recipes-security}/bastille/files/fixed_defined_warnings.patch | 0
 .../bastille/files/organize_distro_discovery.patch                | 0
 .../bastille/files/remove_questions_text_file_references.patch    | 0
 .../recipes-security}/bastille/files/set_required_questions.py    | 0
 .../recipes-security}/bastille/files/simplify_B_place.patch       | 0
 .../bastille/files/upgrade_options_processing.patch               | 0
 .../meta-perl/recipes-security}/nikto/files/location.patch        | 0
 .../meta-perl/recipes-security}/nikto/nikto_2.1.6.bb              | 0
 .../fail2ban/files/0001-To-fix-build-error-of-xrang.patch         | 0
 .../meta-python/recipes-security}/fail2ban/files/initd            | 0
 .../meta-python/recipes-security}/fail2ban/files/run-ptest        | 0
 .../recipes-security}/fail2ban/python3-fail2ban_0.11.2.bb         | 0
 .../recipes-security}/mfa/python3-privacyidea_3.6.2.bb            | 0
 .../recipes-security}/python/python3-oauth2client_4.1.3.bb        | 0
 34 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-scanners => dynamic-layers/meta-perl/recipes-scanners}/checksecurity/checksecurity_2.0.15.bb (100%)
 rename {recipes-scanners => dynamic-layers/meta-perl/recipes-scanners}/checksecurity/files/check-setuid-use-more-portable-find-args.patch (100%)
 rename {recipes-scanners => dynamic-layers/meta-perl/recipes-scanners}/checksecurity/files/setuid-log-folder.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/bastille_3.2.1.bb (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/API.pm (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/AccountPermission.pm (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/FileContent.pm (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/HPSpecific.pm (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/Miscellaneous.pm (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/ServiceAdmin.pm (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/accept_os_flag_in_backend.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/allow_os_with_assess.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/call_output_config.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/config (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/do_not_apply_config.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/edit_usage_message.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/find_existing_config.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/fix_missing_use_directives.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/fix_number_of_modules.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/fix_version_parse.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/fixed_defined_warnings.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/organize_distro_discovery.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/remove_questions_text_file_references.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/set_required_questions.py (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/simplify_B_place.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/bastille/files/upgrade_options_processing.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/nikto/files/location.patch (100%)
 rename {recipes-security => dynamic-layers/meta-perl/recipes-security}/nikto/nikto_2.1.6.bb (100%)
 rename {recipes-security => dynamic-layers/meta-python/recipes-security}/fail2ban/files/0001-To-fix-build-error-of-xrang.patch (100%)
 rename {recipes-security => dynamic-layers/meta-python/recipes-security}/fail2ban/files/initd (100%)
 rename {recipes-security => dynamic-layers/meta-python/recipes-security}/fail2ban/files/run-ptest (100%)
 rename {recipes-security => dynamic-layers/meta-python/recipes-security}/fail2ban/python3-fail2ban_0.11.2.bb (100%)
 rename {recipes-security => dynamic-layers/meta-python/recipes-security}/mfa/python3-privacyidea_3.6.2.bb (100%)
 rename {recipes-python => dynamic-layers/meta-python/recipes-security}/python/python3-oauth2client_4.1.3.bb (100%)

diff --git a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
similarity index 100%
rename from recipes-scanners/checksecurity/checksecurity_2.0.15.bb
rename to dynamic-layers/meta-perl/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
diff --git a/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
similarity index 100%
rename from recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
rename to dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/check-setuid-use-more-portable-find-args.patch
diff --git a/recipes-scanners/checksecurity/files/setuid-log-folder.patch b/dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/setuid-log-folder.patch
similarity index 100%
rename from recipes-scanners/checksecurity/files/setuid-log-folder.patch
rename to dynamic-layers/meta-perl/recipes-scanners/checksecurity/files/setuid-log-folder.patch
diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
similarity index 100%
rename from recipes-security/bastille/bastille_3.2.1.bb
rename to dynamic-layers/meta-perl/recipes-security/bastille/bastille_3.2.1.bb
diff --git a/recipes-security/bastille/files/API.pm b/dynamic-layers/meta-perl/recipes-security/bastille/files/API.pm
similarity index 100%
rename from recipes-security/bastille/files/API.pm
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/API.pm
diff --git a/recipes-security/bastille/files/AccountPermission.pm b/dynamic-layers/meta-perl/recipes-security/bastille/files/AccountPermission.pm
similarity index 100%
rename from recipes-security/bastille/files/AccountPermission.pm
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/AccountPermission.pm
diff --git a/recipes-security/bastille/files/FileContent.pm b/dynamic-layers/meta-perl/recipes-security/bastille/files/FileContent.pm
similarity index 100%
rename from recipes-security/bastille/files/FileContent.pm
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/FileContent.pm
diff --git a/recipes-security/bastille/files/HPSpecific.pm b/dynamic-layers/meta-perl/recipes-security/bastille/files/HPSpecific.pm
similarity index 100%
rename from recipes-security/bastille/files/HPSpecific.pm
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/HPSpecific.pm
diff --git a/recipes-security/bastille/files/Miscellaneous.pm b/dynamic-layers/meta-perl/recipes-security/bastille/files/Miscellaneous.pm
similarity index 100%
rename from recipes-security/bastille/files/Miscellaneous.pm
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/Miscellaneous.pm
diff --git a/recipes-security/bastille/files/ServiceAdmin.pm b/dynamic-layers/meta-perl/recipes-security/bastille/files/ServiceAdmin.pm
similarity index 100%
rename from recipes-security/bastille/files/ServiceAdmin.pm
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/ServiceAdmin.pm
diff --git a/recipes-security/bastille/files/accept_os_flag_in_backend.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch
similarity index 100%
rename from recipes-security/bastille/files/accept_os_flag_in_backend.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/accept_os_flag_in_backend.patch
diff --git a/recipes-security/bastille/files/allow_os_with_assess.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch
similarity index 100%
rename from recipes-security/bastille/files/allow_os_with_assess.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/allow_os_with_assess.patch
diff --git a/recipes-security/bastille/files/call_output_config.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch
similarity index 100%
rename from recipes-security/bastille/files/call_output_config.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/call_output_config.patch
diff --git a/recipes-security/bastille/files/config b/dynamic-layers/meta-perl/recipes-security/bastille/files/config
similarity index 100%
rename from recipes-security/bastille/files/config
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/config
diff --git a/recipes-security/bastille/files/do_not_apply_config.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch
similarity index 100%
rename from recipes-security/bastille/files/do_not_apply_config.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/do_not_apply_config.patch
diff --git a/recipes-security/bastille/files/edit_usage_message.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch
similarity index 100%
rename from recipes-security/bastille/files/edit_usage_message.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/edit_usage_message.patch
diff --git a/recipes-security/bastille/files/find_existing_config.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch
similarity index 100%
rename from recipes-security/bastille/files/find_existing_config.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/find_existing_config.patch
diff --git a/recipes-security/bastille/files/fix_missing_use_directives.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch
similarity index 100%
rename from recipes-security/bastille/files/fix_missing_use_directives.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/fix_missing_use_directives.patch
diff --git a/recipes-security/bastille/files/fix_number_of_modules.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch
similarity index 100%
rename from recipes-security/bastille/files/fix_number_of_modules.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/fix_number_of_modules.patch
diff --git a/recipes-security/bastille/files/fix_version_parse.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch
similarity index 100%
rename from recipes-security/bastille/files/fix_version_parse.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/fix_version_parse.patch
diff --git a/recipes-security/bastille/files/fixed_defined_warnings.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch
similarity index 100%
rename from recipes-security/bastille/files/fixed_defined_warnings.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/fixed_defined_warnings.patch
diff --git a/recipes-security/bastille/files/organize_distro_discovery.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch
similarity index 100%
rename from recipes-security/bastille/files/organize_distro_discovery.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/organize_distro_discovery.patch
diff --git a/recipes-security/bastille/files/remove_questions_text_file_references.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch
similarity index 100%
rename from recipes-security/bastille/files/remove_questions_text_file_references.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/remove_questions_text_file_references.patch
diff --git a/recipes-security/bastille/files/set_required_questions.py b/dynamic-layers/meta-perl/recipes-security/bastille/files/set_required_questions.py
similarity index 100%
rename from recipes-security/bastille/files/set_required_questions.py
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/set_required_questions.py
diff --git a/recipes-security/bastille/files/simplify_B_place.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch
similarity index 100%
rename from recipes-security/bastille/files/simplify_B_place.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/simplify_B_place.patch
diff --git a/recipes-security/bastille/files/upgrade_options_processing.patch b/dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch
similarity index 100%
rename from recipes-security/bastille/files/upgrade_options_processing.patch
rename to dynamic-layers/meta-perl/recipes-security/bastille/files/upgrade_options_processing.patch
diff --git a/recipes-security/nikto/files/location.patch b/dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch
similarity index 100%
rename from recipes-security/nikto/files/location.patch
rename to dynamic-layers/meta-perl/recipes-security/nikto/files/location.patch
diff --git a/recipes-security/nikto/nikto_2.1.6.bb b/dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
similarity index 100%
rename from recipes-security/nikto/nikto_2.1.6.bb
rename to dynamic-layers/meta-perl/recipes-security/nikto/nikto_2.1.6.bb
diff --git a/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch b/dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
similarity index 100%
rename from recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
rename to dynamic-layers/meta-python/recipes-security/fail2ban/files/0001-To-fix-build-error-of-xrang.patch
diff --git a/recipes-security/fail2ban/files/initd b/dynamic-layers/meta-python/recipes-security/fail2ban/files/initd
similarity index 100%
rename from recipes-security/fail2ban/files/initd
rename to dynamic-layers/meta-python/recipes-security/fail2ban/files/initd
diff --git a/recipes-security/fail2ban/files/run-ptest b/dynamic-layers/meta-python/recipes-security/fail2ban/files/run-ptest
similarity index 100%
rename from recipes-security/fail2ban/files/run-ptest
rename to dynamic-layers/meta-python/recipes-security/fail2ban/files/run-ptest
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
similarity index 100%
rename from recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
rename to dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
diff --git a/recipes-security/mfa/python3-privacyidea_3.6.2.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
similarity index 100%
rename from recipes-security/mfa/python3-privacyidea_3.6.2.bb
rename to dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.6.2.bb
diff --git a/recipes-python/python/python3-oauth2client_4.1.3.bb b/dynamic-layers/meta-python/recipes-security/python/python3-oauth2client_4.1.3.bb
similarity index 100%
rename from recipes-python/python/python3-oauth2client_4.1.3.bb
rename to dynamic-layers/meta-python/recipes-security/python/python3-oauth2client_4.1.3.bb
-- 
2.25.1


