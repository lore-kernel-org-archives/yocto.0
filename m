Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.5785.1631836685679954283
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:58:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E6wJDHlV;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id b7so7403886pfo.11
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fI/Aw/njlxWx6ny4FzfAay6YJkHHvkf6A+hHLr0FKDc=;
        b=E6wJDHlVetx38xDBspFd9wlWMUOwxaSGZwBai0CwA+26GKMA4Ry2eL4p9lZsVY8sBz
         9W5ndKzrChLEYfOYLFkVY+cTjcwfJ84O2BRHvR9I7ECLRoBAG+KmXjdkr93FeI/0eNp9
         MQlGWPOjXBGeaEUTZ7Xwv1jYrg8PzyvqLTkz6kNJibJHYNyapQm0pcvL/nh/W/lVvoyz
         DiwYDjohPzQAHUYIl2ky52iL7cEtqj4IFhC9senBFjQ7N6gdNfS00poppDKq8mcFsQGD
         TXZUf67gqWn5imufz58s8aF2PzmtXQkMLpx2MGKN9aPeRorFNna5KGYlDPdmTIh0C3Fl
         /DfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fI/Aw/njlxWx6ny4FzfAay6YJkHHvkf6A+hHLr0FKDc=;
        b=fl8ybGX5VTbSWVCzuOejARUAbNKLF9iixg4wTefyTZJ7skOQNJbtEHCL5pryOWfr7E
         BrUGQj9o1+KSbqhV98VSAq0pJ5EuUrCbMqTzxJ3RGDnu09ZofFdTA8gMsEng7RGEidgV
         UP5rFchUsBZPeofwCaxlmy+Jb01SutLKGp1Xtr3JZzPlGYza0siXYzG2Tuix5pEjt5EL
         3qdBJXakfazoN6VpV8eM6wTTHQbap8PYoscCtmlR6aDtG0AmCyIVPjcgXY/nHXKJDwK2
         F7kp/1mFa+5wSdZfRgwga7jtnxrIwECpz/OHLPD+ZYDCXoMzlPnDgdJrmbGzyMzoGAY7
         dSCA==
X-Gm-Message-State: AOAM530GXaQVPjO0gkNCJzowQ10haRlO/DSoQ3123dd/3eg1mLy/YE4U
	4R1n1FtjnFzT+UUTBdYQmlzZhHMRAIc=
X-Google-Smtp-Source: ABdhPJyAiwCKo5X2+vkTJlvDM3ogdXza16UH3191gGNwtLjORizLxGeRb+vzt83ZsnOJ0xdcRSYZNQ==
X-Received: by 2002:aa7:97b2:0:b0:439:14a9:2bf5 with SMTP id d18-20020aa797b2000000b0043914a92bf5mr7607136pfq.45.1631836684942;
        Thu, 16 Sep 2021 16:58:04 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id b7sm4400808pgs.64.2021.09.16.16.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:58:04 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][PATCH 3/3] secilc: Security fix for CVE-2021-36087
Date: Thu, 16 Sep 2021 16:58:01 -0700
Message-Id: <20210916235801.2628222-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916235801.2628222-1-akuster808@gmail.com>
References: <20210916235801.2628222-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Armin Kuster <akuster@mvista.com>

Source: https://github.com/SELinuxProject/selinux
MR: 111869
Type: Security Fix
Disposition: Backport from https://github.com/SELinuxProject/selinux/commit/bad0a746e9f4cf260dedba5828d9645d50176aac
ChangeID: b282a68f76e509f548fe6ce46349af56d09481c6
Description:

Affects: secilc <= 3.2

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../selinux/secilc/CVE-2021-36087.patch       | 134 ++++++++++++++++++
 recipes-security/selinux/secilc_3.0.bb        |   2 +
 2 files changed, 136 insertions(+)
 create mode 100644 recipes-security/selinux/secilc/CVE-2021-36087.patch

diff --git a/recipes-security/selinux/secilc/CVE-2021-36087.patch b/recipes-security/selinux/secilc/CVE-2021-36087.patch
new file mode 100644
index 0000000..ad7bf9b
--- /dev/null
+++ b/recipes-security/selinux/secilc/CVE-2021-36087.patch
@@ -0,0 +1,134 @@
+From bad0a746e9f4cf260dedba5828d9645d50176aac Mon Sep 17 00:00:00 2001
+From: James Carter <jwcart2@gmail.com>
+Date: Mon, 19 Apr 2021 09:06:15 -0400
+Subject: [PATCH] secilc/docs: Update the CIL documentation for various blocks
+
+Update the documentation for macros, booleans, booleanifs, tunables,
+tunableifs, blocks, blockabstracts, blockinherits, and optionals to
+tell where these statements can be used and, for those that have
+blocks, what statements are not allowed in them.
+
+Signed-off-by: James Carter <jwcart2@gmail.com>
+
+Upstream-Status: Backport
+CVE: CVE-2021-36087
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+---
+ docs/cil_call_macro_statements.md  |  2 ++
+ docs/cil_conditional_statements.md |  6 +++++
+ docs/cil_container_statements.md   | 28 +++++++++++++++--------
+ 3 files changed, 26 insertions(+), 10 deletions(-)
+
+Index: secilc-3.0/docs/cil_call_macro_statements.md
+===================================================================
+--- secilc-3.0.orig/docs/cil_call_macro_statements.md
++++ secilc-3.0/docs/cil_call_macro_statements.md
+@@ -54,6 +54,8 @@ Note that when resolving macros the call
+ 
+ -   Items defined in the global namespace
+ 
++[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockinherit`](cil_container_statements.md#blockinherit), [`blockabstract`](cil_container_statements.md#blockabstract), and other [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
++
+ **Statement definition:**
+ 
+     (macro macro_id ([(param_type param_id) ...])
+Index: secilc-3.0/docs/cil_conditional_statements.md
+===================================================================
+--- secilc-3.0.orig/docs/cil_conditional_statements.md
++++ secilc-3.0/docs/cil_conditional_statements.md
+@@ -6,6 +6,8 @@ boolean
+ 
+ Declares a run time boolean as true or false in the current namespace. The [`booleanif`](cil_conditional_statements.md#booleanif) statement contains the CIL code that will be in the binary policy file.
+ 
++[`boolean`](cil_conditional_statements.md#boolean) are not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
++
+ **Statement definition:**
+ 
+     (boolean boolean_id true|false)
+@@ -120,6 +122,8 @@ Tunables are similar to booleans, howeve
+ 
+ Note that tunables can be treated as booleans by the CIL compiler command line parameter `-P` or `--preserve-tunables` flags.
+ 
++Since [`tunableif`](cil_conditional_statements.md#tunableif) statements are resolved first, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in [`in`](cil_container_statements.md#in), [`macro`](cil_call_macro_statements.md#macro), [`optional`](cil_container_statements.md#optional), and [`booleanif`](cil_conditional_statements.md#booleanif) blocks. To simplify processing, they are also not allowed in [`tunableif`](cil_conditional_statements.md#tunableif) blocks.
++
+ **Statement definition:**
+ 
+     (tunable tunable_id true|false)
+@@ -156,6 +160,8 @@ tunableif
+ 
+ Compile time conditional statement that may or may not add CIL statements to be compiled.
+ 
++If tunables are being treated as booleans (by using the CIL compiler command line parameter `-P` or `--preserve-tunables` flag), then only the statements allowed in a [`booleanif`](cil_conditional_statements.md#booleanif) block are allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block. Otherwise, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block.
++
+ **Statement definition:**
+ 
+     (tunableif tunable_id | expr ...)
+Index: secilc-3.0/docs/cil_container_statements.md
+===================================================================
+--- secilc-3.0.orig/docs/cil_container_statements.md
++++ secilc-3.0/docs/cil_container_statements.md
+@@ -4,7 +4,11 @@ Container Statements
+ block
+ -----
+ 
+-Start a new namespace where any CIL statement is valid.
++Start a new namespace.
++
++Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
++
++[`sensitivity`](cil_mls_labeling_statements.md#sensitivity) and [`category`](cil_mls_labeling_statements.md#category) statements are not allowed in [`block`](cil_container_statements.md#block) blocks.
+ 
+ **Statement definition:**
+ 
+@@ -45,6 +49,8 @@ blockabstract
+ 
+ Declares the namespace as a 'template' and does not generate code until instantiated by another namespace that has a [`blockinherit`](cil_container_statements.md#blockinherit) statement.
+ 
++Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
++
+ **Statement definition:**
+ 
+     (block block_id
+@@ -93,6 +99,8 @@ blockinherit
+ 
+ Used to add common policy rules to the current namespace via a template that has been defined with the [`blockabstract`](cil_container_statements.md#blockabstract) statement. All [`blockinherit`](cil_container_statements.md#blockinherit) statements are resolved first and then the contents of the block are copied. This is so that inherited blocks will not be inherited. For a concrete example, please see the examples section.
+ 
++Not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
++
+ **Statement definition:**
+ 
+     (block block_id
+@@ -191,15 +199,11 @@ This example contains a template `client
+ optional
+ --------
+ 
+-Declare an [`optional`](cil_container_statements.md#optional) namespace. All CIL statements in the optional block must be satisfied before instantiation in the binary policy. [`tunableif`](cil_conditional_statements.md#tunableif) and [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in optional containers. The same restrictions apply to CIL policy statements within [`optional`](cil_container_statements.md#optional)'s that apply to kernel policy statements, i.e. only the policy statements shown in the following table are valid:
++Declare an [`optional`](cil_container_statements.md#optional) namespace. All CIL statements in the optional block must be satisfied before instantiation in the binary policy.
+ 
+-|                     |                |                    |                    |
+-| ------------------- | -------------- | ------------------ | ------------------ |
+-| [`allow`](cil_access_vector_rules.md#allow)             | [`allowx`](cil_access_vector_rules.md#allowx)       | [`auditallow`](cil_access_vector_rules.md#auditallow)       | [`auditallowx`](cil_access_vector_rules.md#auditallowx)      |
+-| [`booleanif`](cil_conditional_statements.md#booleanif)         | [`dontaudit`](cil_access_vector_rules.md#dontaudit)    | [`dontauditx`](cil_access_vector_rules.md#dontauditx)       | [`typepermissive`](cil_type_statements.md#typepermissive)   |
+-| [`rangetransition`](cil_mls_labeling_statements.md#rangetransition)   | [`role`](cil_role_statements.md#role)         | [`roleallow`](cil_role_statements.md#roleallow)        | [`roleattribute`](cil_role_statements.md#roleattribute)    |
+-| [`roletransition`](cil_role_statements.md#roletransition)    | [`type`](cil_type_statements.md#type)         | [`typealias`](cil_type_statements.md#typealias)        | [`typeattribute`](cil_type_statements.md#typeattribute)    |
+-| [`typechange`](cil_type_statements.md#typechange)        | [`typemember`](cil_type_statements.md#typemember)   | [`typetransition`](cil_type_statements.md#typetransition)   |                    |
++Not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
++
++[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockabstract`](cil_container_statements.md#blockabstract), and [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`optional`](cil_container_statements.md#optional) blocks.
+ 
+ **Statement definition:**
+ 
+@@ -254,7 +258,11 @@ This example will instantiate the option
+ in
+ --
+ 
+-Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)). This statement is not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) or [`tunableif`](cil_conditional_statements.md#tunableif) statements.
++Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)).
++
++Not allowed in [`macro`](cil_call_macro_statements.md#macro), [`booleanif`](cil_conditional_statements.md#booleanif), and other [`in`](cil_container_statements.md#in) blocks.
++
++[`tunable`](cil_conditional_statements.md#tunable) and [`in`](cil_container_statements.md#in) statements are not allowed in [`in`](cil_container_statements.md#in) blocks.
+ 
+ **Statement definition:**
+ 
diff --git a/recipes-security/selinux/secilc_3.0.bb b/recipes-security/selinux/secilc_3.0.bb
index 71b6cff..aa7d897 100644
--- a/recipes-security/selinux/secilc_3.0.bb
+++ b/recipes-security/selinux/secilc_3.0.bb
@@ -1,6 +1,8 @@
 require selinux_20191204.inc
 require ${BPN}.inc
 
+SRC_URI += "file://CVE-2021-36087.patch"
+
 LIC_FILES_CHKSUM = "file://COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
 
 SRC_URI[md5sum] = "be7ec221b874053a843ef90e49daa5cf"
-- 
2.25.1

