Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web10.5775.1631836253018176516
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 16:50:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W0q0m2+Q;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id j16so7476670pfc.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 16:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i7liDdwaqA0DNT/++LzDtsyAZMkz4Wb9mvNuPZQur7s=;
        b=W0q0m2+QGQhdliWOqc1KF0WRuBLFIYXlQcBcZuHpAnqtaqdEaQjyVgMlUHcxGtbHpo
         o3Sjz3bZnaWX5mI3D9j5TOx13Vyy4oDcozRAFBbJP7CBZR3z96vbWZ8vGFmjYYEAcDA9
         +6ktKkUiyOwL6wKoDHXvTcT64QbPWAkGIh3ybkYk1JY3gJMhVQaJ/OyzBjDLbjpAkAmG
         O2ZykrnQW31WrVJf49WwPS1lF+PKRyTVfY+i1kqWDScN7svx96AEOmn641gYJ5AIjLRq
         YMHTgzk5rgMae4bz6efYR0lxqT1/J91pP2MU4+J4qzdbnYa4BZnIKy7Kqu0MoFvlMy12
         t+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i7liDdwaqA0DNT/++LzDtsyAZMkz4Wb9mvNuPZQur7s=;
        b=a57k9G+mvftd2A+6mSUx3VjddWhHn82CFzvxsgZkqlQ3WXjku3Qx7lg/jS60KrzXgl
         e+InSW/CBkotxs3/s6crb2jbH/fpns6JhH7IAdIKMJZHCXr1/bJiQwwIO3lQG3xToh8J
         YTJm/SZBDX+rfskl5EsJFp/okAksCAa1i8HbgPvnMj5W50bX8TR0krAv3EvUUrIqBXVy
         NhLvozCn/w1Dy+lhutnsoeJfHtyEq+mqKdUaoSbMONtCsJCMLNXY4AysabaVleD0hbnU
         7Bxl9Dv7Hsi6NzB6ZhOe9q044JVzicpGrAOwEPV5Tn7f9GHioA69g7FFLA/HdmuQHyFU
         4KAg==
X-Gm-Message-State: AOAM533yNDah3cT6OAwC3a6mb4P/a616YShflKaqEXAZCZhpmIVJ2dwN
	QDPSLTgsEjwp+Ju80tHqxe4bt7XEWO8=
X-Google-Smtp-Source: ABdhPJyWqaoKu837N7QccDOoyyuJktGpUQWqQTRq7qCoMpMFICTnqn4GeYGD87Jy5g29uwb4cIhZQA==
X-Received: by 2002:a63:651:: with SMTP id 78mr7269262pgg.306.1631836252330;
        Thu, 16 Sep 2021 16:50:52 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id c3sm4210107pgn.76.2021.09.16.16.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 16:50:52 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][PATCH 3/3] secilc: Security fix for CVE-2021-36087
Date: Thu, 16 Sep 2021 16:50:49 -0700
Message-Id: <20210916235049.2519448-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916235049.2519448-1-akuster808@gmail.com>
References: <20210916235049.2519448-1-akuster808@gmail.com>
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

