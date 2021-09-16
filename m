Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.5860.1631836660383727979
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:57:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Tht7uM+3;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id k24so7826259pgh.8
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i7liDdwaqA0DNT/++LzDtsyAZMkz4Wb9mvNuPZQur7s=;
        b=Tht7uM+3N2g+mgqJHFQt/icTjvsGGzOM9NGDHqpaugT2eG1s8vFC2lhMtGZJURZoIw
         YPMsziwNIHxEFg0JhXL4dZg7Z8VVSUZ107P4ShrktodqRlo6Q0P/Hiuf5onoWc2vtcC6
         7Aj/zx0qGWHNxrVC+RZ4lW7gsCCkq2B/gnlVpqj55zjRSBmjovJBg2gHyqv086JlFxIl
         LSOrJUdhVJMiLEpKEsa9MKPUd06vT6uG1OjD4JdQh2y18+lSFcZoSTRku6pt51FMKEhQ
         46BnEzd0+l7SDKukAVSosnZ/MPDb8jssHoNp3wcnaPX5jQGiHQUHxxEAGDr6VM0h55Z0
         /5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i7liDdwaqA0DNT/++LzDtsyAZMkz4Wb9mvNuPZQur7s=;
        b=qb3cp1SIfWlGIIzhTS+GMaAzO9u9jjuilefii+jYlh5cGDQNMXtIdotRh5W0jP2Jp/
         Hqxsrb/JcEbQpN50lID3+O9Wzf8wV5JBQF2P7fHfItmoSDxt9DjNbR277aZkVal3mV7n
         hfB5knzmfa4eWTa5DCauohDyNjbVoKtU8VU4ZaOwgLDnFYEqWU0ItIQ1WpKv0yClc3d5
         +xJ+7528meGBy+iuRlLbrskREaJRe7pb5uOjlRIHI2sjJOTJEYH0/1eMyShnuGQC2/vv
         iA8qw4mOH+k3S7SbD/0K9EDCw9kKhvzjI3SWF33bP3AfAE3UW8ei5Gzb5lohoS2GNBMi
         03Fg==
X-Gm-Message-State: AOAM532GXCBrfk9mNyfG5LdfAUpHvt70U2nLauOJS/5G9Mu8kuaBBat9
	ci/grSV50WCrSlBTymfBSwf4Sb4k6F8=
X-Google-Smtp-Source: ABdhPJw7L9uolISyAaCXKWNAF+oFkqfeqkuXEyZ9HFSaj4jMdohuckq9QYiJ5LUzxSu/KA4UawWRXw==
X-Received: by 2002:a62:8015:0:b0:43b:400c:7a73 with SMTP id j21-20020a628015000000b0043b400c7a73mr8051877pfd.34.1631836659446;
        Thu, 16 Sep 2021 16:57:39 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id x9sm4248116pfo.172.2021.09.16.16.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:57:39 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][hardknott][PATCH 3/3] secilc: Security fix for CVE-2021-36087
Date: Thu, 16 Sep 2021 16:57:36 -0700
Message-Id: <20210916235736.2628153-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916235736.2628153-1-akuster808@gmail.com>
References: <20210916235736.2628153-1-akuster808@gmail.com>
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
 recipes-security/selinux/secilc_3.2.bb        |   2 +
 2 files changed, 136 insertions(+)
 create mode 100644 recipes-security/selinux/secilc/CVE-2021-36087.patch

diff --git a/recipes-security/selinux/secilc/CVE-2021-36087.patch b/recipes-security/selinux/secilc/CVE-2021-36087.patch
new file mode 100644
index 0000000..5410477
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
+Index: secilc/docs/cil_call_macro_statements.md
+===================================================================
+--- secilc.orig/docs/cil_call_macro_statements.md
++++ secilc/docs/cil_call_macro_statements.md
+@@ -58,6 +58,8 @@ When resolving macros the following plac
+ 
+ -   Items defined in the global namespace
+ 
++[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockinherit`](cil_container_statements.md#blockinherit), [`blockabstract`](cil_container_statements.md#blockabstract), and other [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
++
+ **Statement definition:**
+ 
+ ```secil
+Index: secilc/docs/cil_conditional_statements.md
+===================================================================
+--- secilc.orig/docs/cil_conditional_statements.md
++++ secilc/docs/cil_conditional_statements.md
+@@ -6,6 +6,8 @@ boolean
+ 
+ Declares a run time boolean as true or false in the current namespace. The [`booleanif`](cil_conditional_statements.md#booleanif) statement contains the CIL code that will be in the binary policy file.
+ 
++[`boolean`](cil_conditional_statements.md#boolean) are not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
++
+ **Statement definition:**
+ 
+ ```secil
+@@ -126,6 +128,8 @@ Tunables are similar to booleans, howeve
+ 
+ Note that tunables can be treated as booleans by the CIL compiler command line parameter `-P` or `--preserve-tunables` flags.
+ 
++Since [`tunableif`](cil_conditional_statements.md#tunableif) statements are resolved first, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in [`in`](cil_container_statements.md#in), [`macro`](cil_call_macro_statements.md#macro), [`optional`](cil_container_statements.md#optional), and [`booleanif`](cil_conditional_statements.md#booleanif) blocks. To simplify processing, they are also not allowed in [`tunableif`](cil_conditional_statements.md#tunableif) blocks.
++
+ **Statement definition:**
+ 
+ ```secil
+@@ -164,6 +168,8 @@ tunableif
+ 
+ Compile time conditional statement that may or may not add CIL statements to be compiled.
+ 
++If tunables are being treated as booleans (by using the CIL compiler command line parameter `-P` or `--preserve-tunables` flag), then only the statements allowed in a [`booleanif`](cil_conditional_statements.md#booleanif) block are allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block. Otherwise, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block.
++
+ **Statement definition:**
+ 
+ ```secil
+Index: secilc/docs/cil_container_statements.md
+===================================================================
+--- secilc.orig/docs/cil_container_statements.md
++++ secilc/docs/cil_container_statements.md
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
+@@ -47,6 +51,8 @@ blockabstract
+ 
+ Declares the namespace as a 'template' and does not generate code until instantiated by another namespace that has a [`blockinherit`](cil_container_statements.md#blockinherit) statement.
+ 
++Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
++
+ **Statement definition:**
+ 
+ ```secil
+@@ -97,6 +103,8 @@ blockinherit
+ 
+ Used to add common policy rules to the current namespace via a template that has been defined with the [`blockabstract`](cil_container_statements.md#blockabstract) statement. All [`blockinherit`](cil_container_statements.md#blockinherit) statements are resolved first and then the contents of the block are copied. This is so that inherited blocks will not be inherited. For a concrete example, please see the examples section.
+ 
++Not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
++
+ **Statement definition:**
+ 
+ ```secil
+@@ -199,15 +207,11 @@ This example contains a template `client
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
+@@ -266,7 +270,11 @@ This example will instantiate the option
+ in
+ --
+ 
+-Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)). This statement is not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) or [`tunableif`](cil_conditional_statements.md#tunableif) statements. This only works for containers that aren't inherited using [`blockinherit`](cil_conditional_statements.md#blockinherit).
++Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)).
++
++Not allowed in [`macro`](cil_call_macro_statements.md#macro), [`booleanif`](cil_conditional_statements.md#booleanif), and other [`in`](cil_container_statements.md#in) blocks.
++
++[`tunable`](cil_conditional_statements.md#tunable) and [`in`](cil_container_statements.md#in) statements are not allowed in [`in`](cil_container_statements.md#in) blocks.
+ 
+ **Statement definition:**
+ 
diff --git a/recipes-security/selinux/secilc_3.2.bb b/recipes-security/selinux/secilc_3.2.bb
index 60ab2fe..50413e0 100644
--- a/recipes-security/selinux/secilc_3.2.bb
+++ b/recipes-security/selinux/secilc_3.2.bb
@@ -8,6 +8,8 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
 
 require selinux_common.inc
 
+SRC_URI += "file://CVE-2021-36087.patch"
+
 DEPENDS += "libsepol xmlto-native"
 
 S = "${WORKDIR}/git/secilc"
-- 
2.25.1

