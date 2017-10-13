Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2C31E00CE2; Thu, 12 Oct 2017 20:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8100E00CCB
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:43:17 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id b85so7973647pfj.13
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 20:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=ujKGJs1FphUbFGoItRVfKPnWM85gXzs4+8OYKBYuXbc=;
	b=iDJgUig3YTtwoTHWBtXb9QnhKkz6yoNMZdGetu41LF0DbatGttKftAivTCXqzFncKg
	hsM/frJgJoPOSHccs5VMW9quaXtmNQsHfj+PRiahUIiiPSQgfsAiSK7ClbUC2zs3Lq6V
	b/UeP2hjuz9st3lRQQLzpRmSoReCy6Ev98Gyo3t7HnuDLBVuxHn0NaUk1UWXgP2Dqfex
	kAQ+4HPOkTxRm45trO69YhlQR8/aArbBHJBk3Pwiy+K6RmNorcQcl77cT6d4nqpa2EPh
	rDDrZeqm3+NRJS6m29MFOqT77YMUVzDuRO3AcSC0I+Awg3/t+mjl83zEY9KqpyiBVofj
	Q3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ujKGJs1FphUbFGoItRVfKPnWM85gXzs4+8OYKBYuXbc=;
	b=A+QJCCRGYOZVQ3Dnx7EjwtxkwBxzT8osgzgr6TG83JaiW1yHutPykPVuRKhZ8E2BY9
	/A2TtWIpGAGJHop0mc8q7mm24gUxpYVwKWyCFrnDPfvkT+20M/0mcB378VPgPkci0Mka
	FYip6aD/JxA6xQg1NzAIRGoRv+rKzFC4ATrTth5XqeFKEXS8XCiHH0bSUE3ppYVrPPf7
	b07X+lJmyfAOUeNIilW4hGEaUGFsU6sPhLaQy6/YZYwgPnAJgRsu6lfp+xKQNqO3mxJ9
	7opxrEMOR4IpmAhYXIqyU8YmYi3TbCnLyepy6+q2KJoNdaGXyBZXeczAxAR+6cFA35Qg
	71ZA==
X-Gm-Message-State: AMCzsaX4yTZFZABdIIoYDto0+lGr86l+7OlM/4cdbnahi4WTm4lO++1W
	YNqPD+NeRzkuwWd31nG+BOjbqA==
X-Google-Smtp-Source: AOwi7QCwO0zvVZHL2XljCx1N5BWeKuUUtGH70kk+wqwhnp9vNvCaNZ0kDeaqHg+3M3KatyJuto/7Qw==
X-Received: by 10.99.115.5 with SMTP id o5mr71960pgc.225.1507866197056;
	Thu, 12 Oct 2017 20:43:17 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:986e:cac9:f2ec:9855])
	by smtp.gmail.com with ESMTPSA id 81sm29655pfh.145.2017.10.12.20.43.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 Oct 2017 20:43:16 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Thu, 12 Oct 2017 20:43:15 -0700
Message-Id: <1507866195-16955-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] openscape: fix ptest compile errors and update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Oct 2017 03:43:18 -0000

update to 1.2.15

plus
ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue: /usr/lib/openscap/ptest/tests/probes/process58/all.sh contained in package openscap-ptest requires /bin/bash, but no providers found in RDEPENDS_openscap-ptest? [file-rdeps]
ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue: /usr/lib/openscap/ptest/tests/xmldiff.pl contained in package openscap-ptest requires /usr/bin/perl, but no providers found in RDEPENDS_openscap-ptest? [file-rdeps]
ERROR: openscap-1.2.14-r0 do_package_qa: QA Issue: /usr/lib/openscap/ptest/tests/nist/test_worker.py contained in package openscap-ptest requires /usr/bin/python2, but no providers found in RDEPENDS_openscap-ptest? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../openscap/{openscap_1.2.14.bb => openscap_1.2.15.bb}               | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
 rename meta-security-compliance/recipes-openscap/openscap/{openscap_1.2.14.bb => openscap_1.2.15.bb} (94%)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb b/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.15.bb
similarity index 94%
rename from meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb
rename to meta-security-compliance/recipes-openscap/openscap/openscap_1.2.15.bb
index 0d26959..4dacfa2 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.14.bb
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap_1.2.15.bb
@@ -11,7 +11,7 @@ DEPENDS = "autoconf-archive pkgconfig gconf procps curl libxml2 rpm \
 
 DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native dpkg-native libgcrypt-native nss-native"
 
-SRCREV = "7a924c0eea10d05f512660192c8c4aef447801a6"
+SRCREV = "240930d42611983c65ecae16dbca3248ce130921"
 SRC_URI = "git://github.com/akuster/openscap.git;branch=oe \
            file://crypto_pkgconfig.patch \
            file://run-ptest \
@@ -66,6 +66,7 @@ do_install_append_class-native () {
 TESTDIR = "tests"
 
 do_compile_ptest() {
+    sed -i 's:python2:python:' ${S}/${TESTDIR}/nist/test_worker.py
     echo 'buildtest-TESTS: $(check)' >> ${TESTDIR}/Makefile
     oe_runmake -C ${TESTDIR} buildtest-TESTS
 }
@@ -78,5 +79,6 @@ do_install_ptest() {
 FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
 RDEPENDS_${PN} += "libxml2 python libgcc"
+RDEPENDS_${PN}-ptest = "bash perl python"
 
 BBCLASSEXTEND = "native"
-- 
2.7.4


