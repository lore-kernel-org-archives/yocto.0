Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.11353.1575901840129719213
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 06:30:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=HoXrUA+4;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: joe.macdonald@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4987E010A9; Mon,  9 Dec 2019 06:30:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.195 listed in list.dnswl.org]
	*  0.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1195AE00D33
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2019 06:30:38 -0800 (PST)
Received: by mail-pl1-f195.google.com with SMTP id x17so625220pln.1
        for <yocto@yoctoproject.org>; Mon, 09 Dec 2019 06:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p4pQMGuWREXVl+nRQlPlrJjWI+asS2wsZbq9dS0RtLI=;
        b=HoXrUA+4GqxDk//mShHfZpZLzL7h/31vpQx4D60R+L7F1x332EEoIBtIIYwgV58UGg
         U1LoyyPer9BqwJul3vVGtetDXRx8e2GG776zBnVFdIf9cQhkbKkBwXcsWIrOcPhfb72h
         a/mfa7qYcy360KuWUvLIYaB7MhZl8bNVJ3BBiZjlx4C7bVW6JDJzyp3JkPdb3HOwuYJm
         R66S+ruHhncxUwM/iCQR7M1p45QKzLZnCLxjEf7jwmTQsCuwXmatVCNIHwOs1UlkQ1pD
         X9n1TmoejoKGxxVtldGQKyvYw8H2xvlCWBYzWbaChUtyHa+IcpI7RcGXD/3mffgvRH3C
         qlsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=p4pQMGuWREXVl+nRQlPlrJjWI+asS2wsZbq9dS0RtLI=;
        b=MhpwsTmJ+G+H6Jm/jxH8n5f6XdI65Hg1aj6B1dkngFYo28hEsdCv3MRuDma+6opUQ1
         qXgaeh18N0KkLxzhj9kAzcBknoo4M1lPPYXsfs/obkYH8elVOJ4XCYBSoWAOtdSR4vaa
         ZO9H5CQ1SyfPWwc7lxEqQMqE3w1UwcObtPUcDZ6ecosCCiUDzGKGn1TAVdDECUL98vMO
         vdr2lP7Xyyb0bHHATGbumjLepk+26N2zFHsfQPTqyehxDvxM7PKx+iKxEl/Mjtw1s0A/
         Zg8scvMjTpz+4gTR7XKiFfGLYsUZl2lxnYa35tK41opXImJca3WhLzEynrrOTr42ZIfF
         Tn1Q==
X-Gm-Message-State: APjAAAWUSwMJndIULoZyDSblaYGHnyz6NWR+eIw5C24/kurvEioVxlaC
	3tAnMa8LywAWVwb7TJnfODLCbMCrArk=
X-Google-Smtp-Source: APXvYqzCuTCnJBeDaiHuXj0Aslt6EfNFyRngWXDtP/uCmbpyPSdGHPG9kCi2jpEs2c4IVgP31kS64Q==
X-Received: by 2002:a17:90b:46cf:: with SMTP id jx15mr33532904pjb.2.1575901837762;
        Mon, 09 Dec 2019 06:30:37 -0800 (PST)
Received: from nightwinge.world.mentorg.com (nat-wv.mentorg.com. [192.94.38.34])
        by smtp.gmail.com with ESMTPSA id a2sm29318386pfg.90.2019.12.09.06.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 06:30:37 -0800 (PST)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: "Joe MacDonald" <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Cc: mark.hatle@kernel.crashing.org,
	flihp@twobit.us
Subject: [meta-selinux][PATCH] support policy module configuration at recipe level
Date: Mon,  9 Dec 2019 09:30:28 -0500
Message-Id: <20191209143028.39685-1-joe_macdonald@mentor.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On highly storage-limited machines it may be beneficial to completely
remove some or all non-essential policy modules.  refpolicy already
supports this with the 'no' option in modules.conf, so we'll just expose
this feature (with an appropriate warning) at the recipe-level.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .../refpolicy/refpolicy-minimum_2.20190201.bb         | 10 ++++++++++
 recipes-security/refpolicy/refpolicy-minimum_git.bb   | 11 +++++++++++
 recipes-security/refpolicy/refpolicy_common.inc       | 10 ++++++++++
 3 files changed, 31 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb b=
/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
index 40abe35..01c9fc0 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20190201.bb
@@ -44,6 +44,16 @@ EXTRA_POLICY_MODULES +=3D "mta"
 # hostname_t, ping_t, netutils_t) from modules:
 EXTRA_POLICY_MODULES +=3D "modutils consoletype hostname netutils"
=20
+# Add specific policy modules here that should be purged from the system
+# policy.  Purged modules will not be built and will not be installed on=
 the
+# target.  To use them at some later time you must specifically build an=
d load
+# the modules by hand on the target.
+#
+# USE WITH CARE!  With this feature it is easy to break your policy by p=
urging
+# core modules (eg.  userdomain)
+#=20
+# PURGE_POLICY_MODULES +=3D "xdg xen"
+
 POLICY_MODULES_MIN =3D "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
=20
 # re-write the same func from refpolicy_common.inc
diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipe=
s-security/refpolicy/refpolicy-minimum_git.bb
index 40abe35..3b3ca15 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -44,6 +44,17 @@ EXTRA_POLICY_MODULES +=3D "mta"
 # hostname_t, ping_t, netutils_t) from modules:
 EXTRA_POLICY_MODULES +=3D "modutils consoletype hostname netutils"
=20
+# Add specific policy modules here that should be purged from the system
+# policy.  Purged modules will not be built and will not be installed on=
 the
+# target.  To use them at some later time you must specifically build an=
d load
+# the modules by hand on the target.
+#
+# USE WITH CARE!  With this feature it is easy to break your policy by p=
urging
+# core modules (eg.  userdomain)
+#=20
+# PURGE_POLICY_MODULES +=3D "xdg xen"
+
+
 POLICY_MODULES_MIN =3D "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
=20
 # re-write the same func from refpolicy_common.inc
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-se=
curity/refpolicy/refpolicy_common.inc
index 137ccee..2d9ace5 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -122,8 +122,18 @@ python __anonymous () {
         d.setVar('DEFAULT_ENFORCING', 'permissive')
 }
=20
+disable_policy_modules () {
+	for module in ${PURGE_POLICY_MODULES} ; do
+		sed -i "s/^\(\<${module}\>\) *=3D *.*$/\1 =3D off/" ${S}/policy/module=
s.conf
+	done
+}
+
 do_compile() {
+	if [ -f "${WORKDIR}/modules.conf" ] ; then
+		cp -f ${WORKDIR}/modules.conf ${S}/policy/modules.conf
+	fi
 	oe_runmake conf
+	disable_policy_modules
 	oe_runmake policy
 }
=20
--=20
2.20.1

