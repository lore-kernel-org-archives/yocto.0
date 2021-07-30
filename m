Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web09.21639.1627637123749659919
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 02:25:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g589q4s4;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id x90so12205074ede.8
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jul 2021 02:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dZgBeTycjP7WYVuaBpQsDHbYKl7gavQTUwtiRNhvDJQ=;
        b=g589q4s4bJWCunp+c/pLQbJI08aN0BFipF9wjTgPQgk2L5v27UOEZYNMaKc7G3culb
         bsU4LMvoaKgekcfhJgBec9eVfuoCSY3gn0I+TFvShv4P77BajN9DXGrGX/t7Ihi5V9Ln
         Z1rrCoP3d5rPCPltKFvH1iV8oQvE2i/rmvkuU67G4k9tbFimQsjgVgex9olTl3eRKEf0
         GsDX2aNmh/xrTwdYbjRk8yFIIb9jHbU6qmgP9nhamUsR5BEjZZacQn2gDh98KGQDw6/6
         ksVw0/Mmz0lCvQbVD65EwJrSxdSDeI3nrbhfZAqAzkhWdBx7jp20C9ejcO30pTx0W9NY
         65uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dZgBeTycjP7WYVuaBpQsDHbYKl7gavQTUwtiRNhvDJQ=;
        b=KQxaAzrXU0Ri/j2jCagb7DadGWYWc0piS1bDLNB/7Wcwey3RNkgwbD9zWqE5264dbz
         RfUj/0js/HNh4gLV2aElLqB9+wZEorlPNou3SMB+SqJTwBcm0xyP8Vn+wCGcU+JW472d
         8IjeLzFrAcPxiJbuWi9nAMHcV6B7AuPtz88m6amQR4MIpVdNq2uGXlCDmNqPVCD6u374
         o6vbdIDqlRmr1CsRzIQxcMhzVdsvoX8dJrazydpl9t2pj+9ji0xpJ/lOZnYbVxqKBkXr
         9UO1BX8R5jJlhw/3IlY1XTlh5gnGNzhvNHVOXG866b0ko0/NlVMMN8VFa6SHld5Z/2TA
         DNHg==
X-Gm-Message-State: AOAM533SKo8CheSQh2fYVdKzEwMVCWrR2ilLYrzQYw1pUHoHxDrUNYcv
	OCA2vuBSCKuqE0zjMPhkv6/5aYWB+T0Pdw==
X-Google-Smtp-Source: ABdhPJwCig7YCGRstau/zYqJduKC5FOHrsTI2XdEwWHDYWp+vMnqGLecwFC+GUU2KY727SsX3HGByA==
X-Received: by 2002:a05:6402:7da:: with SMTP id u26mr1906828edy.270.1627637121449;
        Fri, 30 Jul 2021 02:25:21 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id u5sm421093edv.64.2021.07.30.02.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 02:25:20 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][WIP][PATCH 1/2] Convert to new override syntax
Date: Fri, 30 Jul 2021 11:25:17 +0200
Message-Id: <20210730092518.14608-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is the result of automated script (0.9.0) conversion:

oe-core/scripts/contrib/convert-overrides.py .

converting the metadata to use ":" as the override character instead of "_".

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 README                                        |  2 +-
 conf/distro/include/maintainers.inc           | 74 +++++++++----------
 .../recipes-ids/suricata/libhtp_0.5.38.bb     |  2 +-
 .../recipes-ids/suricata/suricata.inc         |  2 +-
 .../recipes-ids/suricata/suricata_6.0.3.bb    | 12 +--
 .../recipes-security/krill/krill_0.9.1.bb     |  8 +-
 kas/kas-security-alt.yml                      |  2 +-
 kas/kas-security-base.yml                     |  4 +-
 kas/kas-security-parsec.yml                   |  2 +-
 kas/qemumips64-multi.yml                      |  4 +-
 kas/qemux86-comp.yml                          |  4 +-
 meta-hardening/conf/distro/harden.conf        |  2 +-
 .../openssh/openssh_%.bbappend                |  2 +-
 .../base-files/base-files_%.bbappend          |  2 +-
 .../images/harden-image-minimal.bb            |  2 +-
 .../initscripts/initscripts_1.0.bbappend      |  6 +-
 .../packagegroups/packagegroup-hardening.bb   |  2 +-
 .../recipes-extended/shadow/shadow_%.bbappend |  2 +-
 .../recipes-extended/sudo/sudo_%.bbappend     |  4 +-
 meta-integrity/README.md                      |  4 +-
 meta-integrity/classes/ima-evm-rootfs.bbclass |  2 +-
 meta-integrity/classes/kernel-modsign.bbclass |  4 +-
 .../strongswan/strongswan-ima.inc             |  4 +-
 .../base-files/base-files-ima.inc             |  2 +-
 .../images/integrity-image-minimal.bb         |  2 +-
 .../initrdscripts/initramfs-framework-ima.bb  |  6 +-
 .../packagegroup-ima-evm-utils.bb             |  2 +-
 .../recipes-core/systemd/systemd_%.bbappend   |  4 +-
 .../recipes-kernel/linux/linux_ima.inc        |  4 +-
 .../ima-evm-keys/ima-evm-keys_1.0.bb          |  2 +-
 .../ima-evm-utils/ima-evm-utils_git.bb        |  8 +-
 .../ima-policy-appraise-all_1.0.bb            |  4 +-
 .../ima-policy-hashed_1.0.bb                  |  4 +-
 .../ima-policy-simple_1.0.bb                  |  4 +-
 meta-parsec/README.md                         |  8 +-
 .../parsec-service/parsec-service_0.7.0.bb    | 10 +--
 .../recipes-auditors/lynis/lynis_3.0.0.bb     |  6 +-
 .../recipes-openscap/oe-scap/oe-scap_1.0.bb   |  4 +-
 .../openscap-daemon/openscap-daemon_0.1.10.bb |  2 +-
 .../recipes-openscap/openscap/openscap.inc    | 12 +--
 .../scap-security-guide.inc                   |  6 +-
 meta-security-isafw/classes/isafw.bbclass     |  2 +-
 .../checksec/checksec_1.5-1.bb                |  2 +-
 meta-tpm/README                               |  2 +-
 meta-tpm/conf/distro/include/maintainers.inc  | 34 ++++-----
 .../strongswan/strongswan-tpm.inc             |  4 +-
 .../packagegroup-security-tpm-i2c.bb          |  4 +-
 .../packagegroup/packagegroup-security-tpm.bb |  8 +-
 .../packagegroup-security-tpm2.bb             |  4 +-
 .../packagegroup-security-vtpm.bb             |  4 +-
 .../recipes-kernel/linux/linux-yocto_tpm.inc  |  6 +-
 .../openssl-tpm-engine_0.5.0.bb               | 16 ++--
 meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb     | 14 ++--
 .../tpm-tools/tpm-tools_1.3.9.2.bb            |  4 +-
 meta-tpm/recipes-tpm/trousers/trousers_git.bb | 32 ++++----
 .../tpm2-abrmd/tpm2-abrmd_2.4.0.bb            | 14 ++--
 .../tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb          | 12 +--
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    | 16 ++--
 .../tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb  |  8 +-
 .../recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb   | 30 ++++----
 .../initrdscripts/initramfs-framework.inc     | 14 ++--
 .../packagegroup-core-security.bb             | 34 ++++-----
 recipes-ids/aide/aide_0.17.3.bb               |  6 +-
 recipes-ids/crowdsec/crowdsec_1.1.1.bb        |  8 +-
 recipes-ids/ossec/ossec-hids_3.6.0.bb         | 10 +--
 recipes-ids/samhain/samhain-client.bb         |  4 +-
 recipes-ids/samhain/samhain-server.bb         |  6 +-
 recipes-ids/samhain/samhain-standalone.bb     |  8 +-
 recipes-ids/samhain/samhain.inc               | 20 ++---
 recipes-ids/tripwire/tripwire_2.4.3.7.bb      | 14 ++--
 recipes-kernel/linux/linux-yocto_security.inc |  6 +-
 recipes-kernel/lkrg/lkrg-module_0.9.1.bb      |  2 +-
 recipes-mac/AppArmor/apparmor_3.0.1.bb        | 34 ++++-----
 recipes-mac/ccs-tools/README                  |  2 +-
 recipes-mac/ccs-tools/ccs-tools_1.8.4.bb      |  6 +-
 recipes-mac/smack/smack-test_1.0.bb           |  2 +-
 recipes-mac/smack/smack_1.3.1.bb              | 14 ++--
 recipes-perl/perl/libwhisker2-perl_2.5.bb     |  2 +-
 .../python/python3-oauth2client_4.1.3.bb      |  2 +-
 recipes-scanners/arpwatch/arpwatch_3.1.bb     |  8 +-
 .../buck-security/buck-security_0.7.bb        |  6 +-
 recipes-scanners/checksec/checksec_2.4.0.bb   |  2 +-
 .../checksecurity/checksecurity_2.0.15.bb     |  2 +-
 recipes-scanners/clamav/clamav_0.104.0.bb     | 38 +++++-----
 .../aircrack-ng/aircrack-ng_1.6.bb            |  6 +-
 recipes-security/bastille/bastille_3.2.1.bb   |  6 +-
 .../bastille/files/AccountPermission.pm       | 16 ++--
 .../bastille/files/FileContent.pm             | 16 ++--
 .../ecryptfs-utils/ecryptfs-utils_111.bb      | 12 +--
 .../fail2ban/python3-fail2ban_0.11.2.bb       | 16 ++--
 .../fscryptctl/fscryptctl_1.0.0.bb            |  2 +-
 .../google-authenticator-libpam_1.08.bb       |  2 +-
 recipes-security/libest/libest_3.2.0.bb       |  6 +-
 recipes-security/libgssglue/libgssglue_0.4.bb |  4 +-
 .../mfa/python3-privacyidea_3.5.2.bb          | 40 +++++-----
 recipes-security/ncrack/ncrack_0.7.bb         |  2 +-
 recipes-security/nikto/nikto_2.1.6.bb         |  2 +-
 .../opendnssec/opendnssec_2.1.9.bb            |  4 +-
 recipes-security/paxctl/paxctl_0.9.bb         |  4 +-
 .../redhat-security/redhat-security_1.0.bb    |  2 +-
 recipes-security/sssd/sssd_2.5.1.bb           | 22 +++---
 101 files changed, 435 insertions(+), 435 deletions(-)

diff --git a/README b/README
index 4047b86..081669f 100644
--- a/README
+++ b/README
@@ -5,7 +5,7 @@ The bbappend files for some recipes (e.g. linux-yocto) in this layer need
 to have 'security' in DISTRO_FEATURES to have effect.
 To enable them, add in configuration file the following line.
 
-  DISTRO_FEATURES_append = " security"
+  DISTRO_FEATURES:append = " security"
 
 If meta-security is included, but security  is not enabled as a
 distro feature a warning is printed at parse time:
diff --git a/conf/distro/include/maintainers.inc b/conf/distro/include/maintainers.inc
index e02b903..f623d70 100644
--- a/conf/distro/include/maintainers.inc
+++ b/conf/distro/include/maintainers.inc
@@ -16,42 +16,42 @@
 #
 # The format is as a bitbake variable override for each recipe
 #
-#	RECIPE_MAINTAINER_pn-<recipe name> = "Full Name <address@domain>"
+#	RECIPE_MAINTAINER:pn-<recipe name> = "Full Name <address@domain>"
 #
 # Please keep this list in alphabetical order.
-RECIPE_MAINTAINER_pn-aircrack-ng = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-apparmor = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-bastille = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-buck-security = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-ccs-tools = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-checksec = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-checksecurity = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-clamav = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-ding-libs = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-ecryptfs-utils = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-fscryptctl = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-google-authenticator-libpam = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-hash-perl = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-isic = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-keyutils = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libaes-siv = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libgssglue = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libhtp = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libmhash = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libmspack = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-lib-perl = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libseccomp = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libwhisker2-perl = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-ncrack = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-nikto = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-paxctl = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-python3-fail2ban = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-python3-scapy = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-python-fail2ban = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-python-scapy = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-redhat-security = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-samhain = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-smack = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-sssd = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-suricata = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tripwire = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-aircrack-ng = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-apparmor = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-bastille = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-buck-security = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-ccs-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-checksec = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-checksecurity = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-clamav = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-ding-libs = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-ecryptfs-utils = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-fscryptctl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-google-authenticator-libpam = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-hash-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-isic = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-keyutils = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libaes-siv = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libgssglue = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libhtp = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libmhash = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libmspack = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-lib-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libseccomp = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libwhisker2-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-ncrack = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-nikto = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-paxctl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-python3-fail2ban = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-python3-scapy = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-python-fail2ban = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-python-scapy = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-redhat-security = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-samhain = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-smack = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-sssd = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-suricata = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tripwire = "Armin Kuster <akuster808@gmail.com>"
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb b/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
index 38dece9..2a0c93c 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
@@ -23,5 +23,5 @@ do_configure () {
     oe_runconf
 }
 
-RDEPENDS_${PN} += "zlib"
+RDEPENDS:${PN} += "zlib"
 
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
index 8ddd5e2..5754617 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
@@ -2,4 +2,4 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-COMPATIBLE_HOST_powerpc = 'null'
+COMPATIBLE_HOST:powerpc = 'null'
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
index 632f1d8..ca9e03e 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
@@ -122,7 +122,7 @@ CARGO_SRC_DIR = "rust"
 B = "${S}"
 
 PACKAGECONFIG ??= "jansson file pcre yaml python pcap cap-ng net nfnetlink nss nspr "
-PACKAGECONFIG_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'unittests', '', d)}"
+PACKAGECONFIG:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'ptest', 'unittests', '', d)}"
 
 PACKAGECONFIG[pcre] = "--with-libpcre-includes=${STAGING_INCDIR} --with-libpcre-libraries=${STAGING_LIBDIR}, ,libpcre ," 
 PACKAGECONFIG[yaml] = "--with-libyaml-includes=${STAGING_INCDIR} --with-libyaml-libraries=${STAGING_LIBDIR}, ,libyaml ,"
@@ -143,7 +143,7 @@ export logdir = "${localstatedir}/log"
 
 CACHED_CONFIGUREVARS = "ac_cv_func_malloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes"
 
-do_configure_prepend () {
+do_configure:prepend () {
     oe_runconf
 }
 
@@ -189,7 +189,7 @@ do_install () {
     sed -i -e "s:#!.*$:#!${USRBINPATH}/env ${PYTHON_PN}:g" ${D}${bindir}/suricatactl
 }
 
-pkg_postinst_ontarget_${PN} () {
+pkg_postinst_ontarget:${PN} () {
 if command -v systemd-tmpfiles >/dev/null; then
     systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/suricata.conf
 elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
@@ -200,7 +200,7 @@ fi
 SYSTEMD_PACKAGES = "${PN}"
 
 PACKAGES =+ "${PN}-python"
-FILES_${PN} += "${systemd_unitdir} ${sysconfdir}/tmpfiles.d"
-FILES_${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
+FILES:${PN} += "${systemd_unitdir} ${sysconfdir}/tmpfiles.d"
+FILES:${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
-CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
+CONFFILES:${PN} = "${sysconfdir}/suricata/suricata.yaml"
diff --git a/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb b/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb
index 2671ae8..4dc61cf 100644
--- a/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb
+++ b/dynamic-layers/meta-rust/recipes-security/krill/krill_0.9.1.bb
@@ -19,7 +19,7 @@ CARGO_SRC_DIR = ""
 inherit pkgconfig useradd systemd cargo
 
 
-do_install_append () {
+do_install:append () {
     install -d ${D}${sysconfdir}
     install -d ${D}${datadir}/krill
 
@@ -31,9 +31,9 @@ KRILL_UID ?= "krill"
 KRILL_GID ?= "krill"
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system ${KRILL_UID}"
-USERADD_PARAM_${PN} = "--system -g ${KRILL_GID} --home-dir  \
+GROUPADD_PARAM:${PN} = "--system ${KRILL_UID}"
+USERADD_PARAM:${PN} = "--system -g ${KRILL_GID} --home-dir  \
                        /var/lib/krill/ --no-create-home  \
                        --shell /sbin/nologin ${BPN}"
 
-FILES_${PN} += "{sysconfdir}/defaults ${datadir}"
+FILES:${PN} += "{sysconfdir}/defaults ${datadir}"
diff --git a/kas/kas-security-alt.yml b/kas/kas-security-alt.yml
index 25384df..f073216 100644
--- a/kas/kas-security-alt.yml
+++ b/kas/kas-security-alt.yml
@@ -10,4 +10,4 @@ repos:
 
 local_conf_header:
   alt: |
-      DISTRO_FEATURES_append = " systemd"
+      DISTRO_FEATURES:append = " systemd"
diff --git a/kas/kas-security-base.yml b/kas/kas-security-base.yml
index c4be5e2..b9ce493 100644
--- a/kas/kas-security-base.yml
+++ b/kas/kas-security-base.yml
@@ -57,8 +57,8 @@ local_conf_header:
     EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
     PACKAGE_CLASSES = "package_ipk"
 
-    DISTRO_FEATURES_append = " pam apparmor smack ima"
-    MACHINE_FEATURES_append = " tpm tpm2"
+    DISTRO_FEATURES:append = " pam apparmor smack ima"
+    MACHINE_FEATURES:append = " tpm tpm2"
 
   diskmon: |
     BB_DISKMON_DIRS = "\
diff --git a/kas/kas-security-parsec.yml b/kas/kas-security-parsec.yml
index 6152f0c..22ef5dd 100644
--- a/kas/kas-security-parsec.yml
+++ b/kas/kas-security-parsec.yml
@@ -18,4 +18,4 @@ repos:
 
 local_conf_header:
   meta-parsec: |
-    IMAGE_INSTALL_append = " parsec-service parsec-tool"
+    IMAGE_INSTALL:append = " parsec-service parsec-tool"
diff --git a/kas/qemumips64-multi.yml b/kas/qemumips64-multi.yml
index c8cf94b..6ef8b39 100644
--- a/kas/qemumips64-multi.yml
+++ b/kas/qemumips64-multi.yml
@@ -8,7 +8,7 @@ local_conf_header:
     require conf/multilib.conf
     MULTILIBS = "multilib:lib64 multilib:lib32"
     DEFAULTTUNE = "mips64-n32"
-    DEFAULTTUNE_virtclass-multilib-lib64 = "mips64"
-    DEFAULTTUNE_virtclass-multilib-lib32 = "mips32r2"
+    DEFAULTTUNE:virtclass-multilib-lib64 = "mips64"
+    DEFAULTTUNE:virtclass-multilib-lib32 = "mips32r2"
 
 machine: qemumips64
diff --git a/kas/qemux86-comp.yml b/kas/qemux86-comp.yml
index 14c5dca..478d631 100644
--- a/kas/qemux86-comp.yml
+++ b/kas/qemux86-comp.yml
@@ -5,7 +5,7 @@ header:
 
 local_conf_header:
   meta-compliance: |
-    IMAGE_INSTALL_append = " lynis"
-    IMAGE_INSTALL_append = " openscap openscap-daemon scap-security-guide"
+    IMAGE_INSTALL:append = " lynis"
+    IMAGE_INSTALL:append = " openscap openscap-daemon scap-security-guide"
 
 machine: qemux86
diff --git a/meta-hardening/conf/distro/harden.conf b/meta-hardening/conf/distro/harden.conf
index 66db9b7..1a5eb3d 100644
--- a/meta-hardening/conf/distro/harden.conf
+++ b/meta-hardening/conf/distro/harden.conf
@@ -6,6 +6,6 @@ DISTRO_FEATURES = " acl xattr pci ext2 pam ipv4 ipv6 ipsec largefile usbhost"
 
 VIRTUAL-RUNTIME_base-utils-syslog ?= "rsyslog"
 IMAGE_ROOTFS_EXTRA_SPACE = "524288"
-EXTRA_IMAGE_FEATURES_remove = "debug-tweaks"
+EXTRA_IMAGE_FEATURES:remove = "debug-tweaks"
 
 DISABLE_ROOT ?= "True"
diff --git a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
index 67be3f3..17c06ed 100644
--- a/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
+++ b/meta-hardening/recipes-connectivity/openssh/openssh_%.bbappend
@@ -1,4 +1,4 @@
-do_install_append_harden () {
+do_install:append_harden () {
 	# to hardend
 	sed -i -e 's:#AllowTcpForwarding yes:AllowTcpForwarding no:' ${D}${sysconfdir}/ssh/sshd_config
 	sed -i -e 's:ClientAliveCountMax 4:ClientAliveCountMax 2:' ${D}${sysconfdir}/ssh/sshd_config
diff --git a/meta-hardening/recipes-core/base-files/base-files_%.bbappend b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
index 3956304..0f0384f 100644
--- a/meta-hardening/recipes-core/base-files/base-files_%.bbappend
+++ b/meta-hardening/recipes-core/base-files/base-files_%.bbappend
@@ -1,4 +1,4 @@
 
-do_install_append_harden () {
+do_install:append_harden () {
     sed -i 's/umask.*/umask 027/g' ${D}/${sysconfdir}/profile
 }
diff --git a/meta-hardening/recipes-core/images/harden-image-minimal.bb b/meta-hardening/recipes-core/images/harden-image-minimal.bb
index daed3fb..c35c257 100644
--- a/meta-hardening/recipes-core/images/harden-image-minimal.bb
+++ b/meta-hardening/recipes-core/images/harden-image-minimal.bb
@@ -1,7 +1,7 @@
 SUMMARY = "A small image for an example hardening OE."
 
 IMAGE_INSTALL = "packagegroup-core-boot packagegroup-hardening"
-IMAGE_INSTALL_append = " os-release"
+IMAGE_INSTALL:append = " os-release"
 
 IMAGE_FEATURES = ""
 IMAGE_LINGUAS = " "
diff --git a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
index f943cb3..b27dee9 100644
--- a/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/meta-hardening/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -1,8 +1,8 @@
-FILESEXTRAPATHS_prepend_harden := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend_harden := "${THISDIR}/files:"
 
-SRC_URI_append_harden = " file://mountall.sh"
+SRC_URI:append_harden = " file://mountall.sh"
 
-do_install_append_harden() {
+do_install:append_harden() {
     install -d ${D}${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/mountall.sh ${D}${sysconfdir}/init.d
 }
diff --git a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
index 1dcd5fc..51676b2 100644
--- a/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
+++ b/meta-hardening/recipes-core/packagegroups/packagegroup-hardening.bb
@@ -11,7 +11,7 @@ PACKAGES = "${PN}  \
     packagegroup-${PN} \
 "
 
-RDEPENDS_${PN} = "\
+RDEPENDS:${PN} = "\
     init-ifupdown \
     ${VIRTUAL-RUNTIME_base-utils-syslog} \
     sudo \
diff --git a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
index 3f363f0..3058b55 100644
--- a/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
+++ b/meta-hardening/recipes-extended/shadow/shadow_%.bbappend
@@ -1,4 +1,4 @@
-do_install_append_harden () {
+do_install:append_harden () {
 	# to hardend
 	sed -i -e 's:UMASK.*:UMASK 027:' ${D}${sysconfdir}/login.defs
 	sed -i -e 's:PASS_MAX_DAYS.*:PASS_MAX_DAYS 365:' ${D}${sysconfdir}/login.defs
diff --git a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
index a31c081..97c5f49 100644
--- a/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
+++ b/meta-hardening/recipes-extended/sudo/sudo_%.bbappend
@@ -1,6 +1,6 @@
 
-PACKAGECONFIG_append_harden = " pam-wheel"
-do_install_append_harden () {
+PACKAGECONFIG:append_harden = " pam-wheel"
+do_install:append_harden () {
     if [ "${@bb.utils.contains('DISABLE_ROOT', 'True', 'yes', 'no', d)}" = "yes" ]; then
         sed -i -e 's:root ALL=(ALL) ALL:#root ALL=(ALL) ALL:' ${D}${sysconfdir}/sudoers
     fi
diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 8254b0d..eae1c57 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -6,7 +6,7 @@ The bbappend files for some recipes (e.g. linux-yocto) in this layer need
 to have 'integrity' in DISTRO_FEATURES to have effect.
 To enable them, add in configuration file the following line.
 
-  DISTRO_FEATURES_append = " integrity"
+  DISTRO_FEATURES:append = " integrity"
 
 If meta-integrity is included, but integrity is not enabled as a
 distro feature a warning is printed at parse time:
@@ -219,7 +219,7 @@ executing the file is no longer allowed:
 Enabling the audit kernel subsystem may help to debug appraisal
 issues. Enable it by adding the meta-security-framework layer and
 changing your local.conf:
-    SRC_URI_append_pn-linux-yocto = " file://audit.cfg"
+    SRC_URI:append:pn-linux-yocto = " file://audit.cfg"
     CORE_IMAGE_EXTRA_INSTALL += "auditd"
 
 Then boot with "ima_appraise=log ima_appraise_tcb".
diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 0acd6e7..57de2f6 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -29,7 +29,7 @@ IMA_EVM_ROOTFS_HASHED ?= ". -depth 0 -false"
 IMA_EVM_ROOTFS_IVERSION ?= ""
 
 # Avoid re-generating fstab when ima is enabled.
-WIC_CREATE_EXTRA_ARGS_append = "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' --no-fstab-update', '', d)}"
+WIC_CREATE_EXTRA_ARGS:append = "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' --no-fstab-update', '', d)}"
 
 ima_evm_sign_rootfs () {
     cd ${IMAGE_ROOTFS}
diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
index 09025ba..cf5d3eb 100644
--- a/meta-integrity/classes/kernel-modsign.bbclass
+++ b/meta-integrity/classes/kernel-modsign.bbclass
@@ -15,7 +15,7 @@ MODSIGN_X509 ?= "${MODSIGN_KEY_DIR}/x509_modsign.crt"
 # If this class is enabled, disable stripping signatures from modules
 INHIBIT_PACKAGE_STRIP = "1"
 
-kernel_do_configure_prepend() {
+kernel_do_configure:prepend() {
     if [ -f "${MODSIGN_PRIVKEY}" -a -f "${MODSIGN_X509}" ]; then
         cat "${MODSIGN_PRIVKEY}" "${MODSIGN_X509}" \
             > "${B}/modsign_key.pem"
@@ -24,6 +24,6 @@ kernel_do_configure_prepend() {
     fi
 }
 
-do_shared_workdir_append() {
+do_shared_workdir:append() {
     cp modsign_key.pem $kerneldir/
 }
diff --git a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
index a45182e..807075c 100644
--- a/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
+++ b/meta-integrity/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-ima.inc
@@ -1,8 +1,8 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 DEPENDS = "libtspi"
 
-SRC_URI_append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
+SRC_URI:append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
 
 PACKAGECONFIG += " \
     aikgen \
diff --git a/meta-integrity/recipes-core/base-files/base-files-ima.inc b/meta-integrity/recipes-core/base-files/base-files-ima.inc
index 7e9e210..cfa65a2 100644
--- a/meta-integrity/recipes-core/base-files/base-files-ima.inc
+++ b/meta-integrity/recipes-core/base-files/base-files-ima.inc
@@ -1,5 +1,5 @@
 # Append iversion option for auto types
-do_install_append() {
+do_install:append() {
     sed -i 's/\s*auto\s*defaults/&,iversion/' "${D}${sysconfdir}/fstab"
     echo 'securityfs  /sys/kernel/security  securityfs  defaults  0  0' >> "${D}${sysconfdir}/fstab"
 }
diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index 1a3a30a..f40e867 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -18,4 +18,4 @@ export IMAGE_BASENAME = "integrity-image-minimal"
 
 INHERIT += "ima-evm-rootfs"
 
-QB_KERNEL_CMDLINE_APPEND_append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
+QB_KERNEL_CMDLINE_APPEND:append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
index 6471c53..58cbe6e 100644
--- a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
@@ -30,7 +30,7 @@ do_install () {
     sed -i "s/@@FORCE_IMA@@/${IMA_FORCE}/g" ${D}/init.d/20-ima
 }
 
-FILES_${PN} = "/init.d ${sysconfdir}"
+FILES:${PN} = "/init.d ${sysconfdir}"
 
-RDEPENDS_${PN} = "keyutils ima-evm-keys ${IMA_POLICY}"
-RDEPENDS_${PN} += "initramfs-framework-base"
+RDEPENDS:${PN} = "keyutils ima-evm-keys ${IMA_POLICY}"
+RDEPENDS:${PN} += "initramfs-framework-base"
diff --git a/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
index 8196edb..484859f 100644
--- a/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
+++ b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
@@ -6,6 +6,6 @@ inherit packagegroup features_check
 REQUIRED_DISTRO_FEATURES = "ima"
 
 # Only one at the moment, but perhaps more will come in the future.
-RDEPENDS_${PN} = " \
+RDEPENDS:${PN} = " \
     ima-evm-utils \
 "
diff --git a/meta-integrity/recipes-core/systemd/systemd_%.bbappend b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
index 3b45541..57b3684 100644
--- a/meta-integrity/recipes-core/systemd/systemd_%.bbappend
+++ b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
@@ -1,11 +1,11 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 SRC_URI += " \
     file://machine-id-commit-sync.conf \
     file://random-seed-sync.conf \
 "
 
-do_install_append () {
+do_install:append () {
     for i in machine-id-commit random-seed; do
         install -d ${D}/${systemd_system_unitdir}/systemd-$i.service.d
         install -m 0644 ${WORKDIR}/$i-sync.conf ${D}/${systemd_system_unitdir}/systemd-$i.service.d
diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc
index f9a48cd..3ab53e5 100644
--- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
+++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
@@ -1,5 +1,5 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
+KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
 
-KERNEL_FEATURES_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
+KERNEL_FEATURES:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
 
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
diff --git a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
index 7708aef..dd32397 100644
--- a/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
+++ b/meta-integrity/recipes-security/ima-evm-keys/ima-evm-keys_1.0.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384
 inherit features_check
 REQUIRED_DISTRO_FEATURES = "ima"
 
-ALLOW_EMPTY_${PN} = "1"
+ALLOW_EMPTY:${PN} = "1"
 
 do_install () {
     if [ -e "${IMA_EVM_X509}" ]; then
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index bd85583..fc7a2d6 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 DEPENDS += "openssl attr keyutils"
 
-DEPENDS_class-native += "openssl-native keyutils-native"
+DEPENDS:class-native += "openssl-native keyutils-native"
 
 PV = "1.2.1+git${SRCPV}"
 SRCREV = "3eab1f93b634249c1720f65fcb495b1996f0256e"
@@ -26,13 +26,13 @@ S = "${WORKDIR}/git"
 inherit pkgconfig autotools features_check
 
 REQUIRED_DISTRO_FEATURES = "ima"
-REQUIRED_DISTRO_FEATURES_class-native = ""
+REQUIRED_DISTRO_FEATURES:class-native = ""
 
-EXTRA_OECONF_append_class-target = " --with-kernel-headers=${STAGING_KERNEL_BUILDDIR}"
+EXTRA_OECONF:append:class-target = " --with-kernel-headers=${STAGING_KERNEL_BUILDDIR}"
 
 # blkid is called by evmctl when creating evm checksums.
 # This is less useful when signing files on the build host,
 # so disable it when compiling on the host.
-RDEPENDS_${PN}_append_class-target = " util-linux-blkid libcrypto attr libattr keyutils"
+RDEPENDS:${PN}:append:class-target = " util-linux-blkid libcrypto attr libattr keyutils"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
index 84ea161..5f2244e 100644
--- a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
@@ -12,5 +12,5 @@ do_install () {
     install ${WORKDIR}/ima_policy_appraise_all ${D}/${sysconfdir}/ima/ima-policy
 }
 
-FILES_${PN} = "${sysconfdir}/ima"
-RDEPENDS_${PN} = "ima-evm-utils"
+FILES:${PN} = "${sysconfdir}/ima"
+RDEPENDS:${PN} = "ima-evm-utils"
diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
index ff7169e..57c0640 100644
--- a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
@@ -14,5 +14,5 @@ do_install () {
     install ${WORKDIR}/ima_policy_hashed ${D}/${sysconfdir}/ima/ima-policy
 }
 
-FILES_${PN} = "${sysconfdir}/ima"
-RDEPENDS_${PN} = "ima-evm-utils"
+FILES:${PN} = "${sysconfdir}/ima"
+RDEPENDS:${PN} = "ima-evm-utils"
diff --git a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
index 0e56aec..8fed410 100644
--- a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
@@ -12,5 +12,5 @@ do_install () {
     install ${WORKDIR}/ima_policy_simple ${D}/${sysconfdir}/ima/ima-policy
 }
 
-FILES_${PN} = "${sysconfdir}/ima"
-RDEPENDS_${PN} = "ima-evm-utils"
+FILES:${PN} = "${sysconfdir}/ima"
+RDEPENDS:${PN} = "ima-evm-utils"
diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index a2736b6..24958ac 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -53,7 +53,7 @@ other layers needed. e.g.:
 To include the Parsec service into your image add following into the
 local.conf:
 
-    IMAGE_INSTALL_append = " parsec-service"
+    IMAGE_INSTALL:append = " parsec-service"
 
   The Parsec service will be deployed into the image built with all the supported
 providers and with the default config file from the Parsec repository:
@@ -86,7 +86,7 @@ Manual testing with runqemu
   This layer also contains a recipe for pasec-tool which can be used for
 manual testing of the Parsec service:
 
-    IMAGE_INSTALL_append += " parsec-tools"
+    IMAGE_INSTALL:append += " parsec-tools"
 
   There are a series of Parsec Demo videos showing how to use parsec-tool
 to test the Parsec service base functionality:
@@ -103,7 +103,7 @@ enabled. No changes required for manual testing.
   The Software HSM can be used for manual testing of the provider by
 including it into your test image:
 
-    IMAGE_INSTALL_append += " softhsm"
+    IMAGE_INSTALL:append += " softhsm"
 
 Inside the running VM:
 - Stop Parsec
@@ -134,7 +134,7 @@ systemctl start parsec
   The IBM Software TPM service can be used for manual testing of the provider by
 including it into your test image:
 
-    IMAGE_INSTALL_append += " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
+    IMAGE_INSTALL:append += " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
 
 Inside the running VM:
 - Stop Parsec
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
index d57a43a..5f7a99b 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_0.7.0.bb
@@ -15,7 +15,7 @@ DEPENDS = "tpm2-tss clang-native"
 CARGO_BUILD_FLAGS += " --features all-providers,cryptoki/generate-bindings,tss-esapi/generate-bindings"
 
 inherit systemd
-SYSTEMD_SERVICE_${PN} = "parsec.service"
+SYSTEMD_SERVICE:${PN} = "parsec.service"
 
 inherit update-rc.d
 INITSCRIPT_NAME = "parsec"
@@ -24,7 +24,7 @@ INITSCRIPT_NAME = "parsec"
 # The file should also be included into SRC_URI then
 PARSEC_CONFIG ?= "${S}/config.toml"
 
-do_install_append () {
+do_install:append () {
     # Binaries
     install -d -m 700 -o parsec -g parsec "${D}${libexecdir}/parsec"
     install -m 700 -o parsec -g parsec "${WORKDIR}/build/target/${CARGO_TARGET_SUBDIR}/parsec" ${D}${libexecdir}/parsec/parsec
@@ -52,10 +52,10 @@ do_install_append () {
 
 inherit useradd
 USERADD_PACKAGES = "${PN}"
-USERADD_PARAM_${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
-GROUPADD_PARAM_${PN} = "-r parsec"
+USERADD_PARAM:${PN} = "-r -g parsec -s /bin/false -d ${localstatedir}/lib/parsec parsec"
+GROUPADD_PARAM:${PN} = "-r parsec"
 
-FILES_${PN} += " \
+FILES:${PN} += " \
     ${sysconfdir}/parsec/config.toml \
     ${libexecdir}/parsec/parsec \
     ${systemd_unitdir}/system/parsec.service \
diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
index 2d59623..947c27e 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
@@ -34,7 +34,7 @@ do_install () {
         cp ${S}/*.prf ${D}/${sysconfdir}/lynis
 }
 
-FILES_${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
-FILES_${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md" 
+FILES:${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
+FILES:${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md" 
 
-RDEPENDS_${PN} += "procps findutils"
+RDEPENDS:${PN} += "procps findutils"
diff --git a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
index fd53fcb..0fef233 100644
--- a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
+++ b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
@@ -28,6 +28,6 @@ do_install () {
 	cp ${S}/* ${D}/${datadir}/oe-scap/.
 }
 
-FILES_${PN} += "${datadir}/oe-scap"
+FILES:${PN} += "${datadir}/oe-scap"
 
-RDEPENDS_${PN} = "openscap bash"
+RDEPENDS:${PN} = "openscap bash"
diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
index a775021..f109566 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.10.bb
@@ -17,7 +17,7 @@ inherit setuptools3
 
 S = "${WORKDIR}/git"
 
-RDEPENDS_${PN} = "openscap scap-security-guide \
+RDEPENDS:${PN} = "openscap scap-security-guide \
                   python3-core python3-dbus \
                   python3-pygobject \
                  "
diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index 812ea9f..c236641 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
 LICENSE = "LGPL-2.1"
 
 DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig"
-DEPENDS_class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native"
+DEPENDS:class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native"
 
 S = "${WORKDIR}/git"
 
@@ -34,22 +34,22 @@ EXTRA_OECMAKE += "-DENABLE_PROBES_LINUX=ON -DENABLE_PROBES_UNIX=ON \
 STAGING_OSCAP_DIR = "${TMPDIR}/work-shared/${MACHINE}/oscap-source"
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
 
-do_configure_append_class-native () {
+do_configure:append:class-native () {
     sed -i 's:OSCAP_DEFAULT_CPE_PATH.*$:OSCAP_DEFAULT_CPE_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/cpe":' ${B}/config.h
     sed -i 's:OSCAP_DEFAULT_SCHEMA_PATH.*$:OSCAP_DEFAULT_SCHEMA_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/schemas":' ${B}/config.h
     sed -i 's:OSCAP_DEFAULT_XSLT_PATH.*$:OSCAP_DEFAULT_XSLT_PATH "${STAGING_OSCAP_BUILDDIR}${datadir_native}/openscap/xsl":' ${B}/config.h
 }
 
-do_install_class-native[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
-do_install_append_class-native () {
+do_install:class-native[cleandirs] += " ${STAGING_OSCAP_BUILDDIR}"
+do_install:append:class-native () {
     oscapdir=${STAGING_OSCAP_BUILDDIR}/${datadir_native}
     install -d $oscapdir
     cp -a ${D}/${STAGING_DATADIR_NATIVE}/openscap $oscapdir
 }
 
 
-FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
+FILES:${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
-RDEPENDS_${PN} += "libxml2 python3-core libgcc bash"
+RDEPENDS:${PN} += "libxml2 python3-core libgcc bash"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
index d1a9511..0c651f1 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide.inc
@@ -25,11 +25,11 @@ B = "${S}/build"
 
 do_configure[depends] += "openscap-native:do_install"
 
-do_configure_prepend () {
+do_configure:prepend () {
     sed -i -e 's:NAMES\ sed:NAMES\ ${HOSTTOOLS_DIR}/sed:g' ${S}/CMakeLists.txt
     sed -i -e 's:NAMES\ grep:NAMES\ ${HOSTTOOLS_DIR}/grep:g' ${S}/CMakeLists.txt
 }
 
-FILES_${PN} += "${datadir}/xml"
+FILES:${PN} += "${datadir}/xml"
 
-RDEPENDS_${PN} = "openscap"
+RDEPENDS:${PN} = "openscap"
diff --git a/meta-security-isafw/classes/isafw.bbclass b/meta-security-isafw/classes/isafw.bbclass
index 146acdf..da6bf76 100644
--- a/meta-security-isafw/classes/isafw.bbclass
+++ b/meta-security-isafw/classes/isafw.bbclass
@@ -41,7 +41,7 @@ python do_analysesource() {
     recipe.version = recipe.version.split('+git', 1)[0]
 
     for p in d.getVar('PACKAGES', True).split():
-        license = str(d.getVar('LICENSE_' + p, True))
+        license = str(d.getVar('LICENSE:' + p, True))
         if license == "None":
             license = d.getVar('LICENSE', True)
         license = license.replace("(", "")
diff --git a/meta-security-isafw/recipes-devtools/checksec/checksec_1.5-1.bb b/meta-security-isafw/recipes-devtools/checksec/checksec_1.5-1.bb
index 247ec76..74f5d39 100644
--- a/meta-security-isafw/recipes-devtools/checksec/checksec_1.5-1.bb
+++ b/meta-security-isafw/recipes-devtools/checksec/checksec_1.5-1.bb
@@ -20,6 +20,6 @@ do_install() {
     sed -i 's/\r//' ${D}${bindir}/checksec.sh
 }
 
-RDEPENDS_${PN} = "bash binutils"
+RDEPENDS:${PN} = "bash binutils"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-tpm/README b/meta-tpm/README
index 59d2ee3..4441dd2 100644
--- a/meta-tpm/README
+++ b/meta-tpm/README
@@ -5,7 +5,7 @@ The bbappend files for some recipes (e.g. linux-yocto) in this layer need
 to have 'tpm' in DISTRO_FEATURES to have effect.
 To enable them, add in configuration file the following line.
 
-  DISTRO_FEATURES_append = " tmp"
+  DISTRO_FEATURES:append = " tmp"
 
 If meta-tpm is included, but tpm is not enabled as a
 distro feature a warning is printed at parse time:
diff --git a/meta-tpm/conf/distro/include/maintainers.inc b/meta-tpm/conf/distro/include/maintainers.inc
index dcf53d0..e7b216d 100644
--- a/meta-tpm/conf/distro/include/maintainers.inc
+++ b/meta-tpm/conf/distro/include/maintainers.inc
@@ -16,23 +16,23 @@
 #
 # The format is as a bitbake variable override for each recipe
 #
-#	RECIPE_MAINTAINER_pn-<recipe name> = "Full Name <address@domain>"
+#	RECIPE_MAINTAINER:pn-<recipe name> = "Full Name <address@domain>"
 #
 # Please keep this list in alphabetical order.
-RECIPE_MAINTAINER_pn-aircrack-ng = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-pcr-extend = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm-quote-tools = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-libtpm = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-trousers = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-swtpm = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-openssl-tpm-engine = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm-tools = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-abrmd = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-totp = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-tcti-uefi = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-tss-engine = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-pkcs11 = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-tss = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-tpm2-tools = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-ibmswtpm2 = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-aircrack-ng = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-pcr-extend = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm-quote-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-libtpm = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-trousers = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-swtpm = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-openssl-tpm-engine = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-abrmd = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-totp = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-tcti-uefi = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-tss-engine = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-pkcs11 = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-tss = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-tpm2-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER:pn-ibmswtpm2 = "Armin Kuster <akuster808@gmail.com>"
 
diff --git a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
index d8604e1..497474f 100644
--- a/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
+++ b/meta-tpm/dynamic-layers/meta-networking/recipes-support/strongswan/strongswan-tpm.inc
@@ -1,8 +1,8 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 DEPENDS = "libtspi"
 
-SRC_URI_append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
+SRC_URI:append = " file://0001-xfrmi-Only-build-if-libcharon-is-built.patch"
 
 PACKAGECONFIG += "aikgen tpm"
 
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
index 3b9d271..e3de797 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
@@ -7,8 +7,8 @@ inherit packagegroup
 
 PACKAGES = "packagegroup-security-tpm-i2c"
 
-SUMMARY_packagegroup-security-tpm-i2c = "Security TPM i2c support"
-RDEPENDS_packagegroup-security-tpm-i2c = " \
+SUMMARY:packagegroup-security-tpm-i2c = "Security TPM i2c support"
+RDEPENDS:packagegroup-security-tpm-i2c = " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'packagegroup-security-tpm', '', d)} \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2', '', d)} \
     kernel-module-tpm-i2c-atmel \
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index 3844c7f..bfe6e3a 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -7,8 +7,8 @@ inherit packagegroup
 
 PACKAGES = "packagegroup-security-tpm"
 
-SUMMARY_packagegroup-security-tpm = "Security TPM support"
-RDEPENDS_packagegroup-security-tpm = " \
+SUMMARY:packagegroup-security-tpm = "Security TPM support"
+RDEPENDS:packagegroup-security-tpm = " \
     tpm-tools \
     trousers \
     pcr-extend \
@@ -21,13 +21,13 @@ RDEPENDS_packagegroup-security-tpm = " \
 
 X86_TPM_MODULES ?= ""
 
-X86_TPM_MODULES_x86 = " \
+X86_TPM_MODULES:x86 = " \
     kernel-module-tpm-atmel \
     kernel-module-tpm-infineon \
     kernel-module-tpm-nsc \
     "
 
-X86_TPM_MODULES_x86-64 = " \
+X86_TPM_MODULES:x86-64 = " \
     kernel-module-tpm-atmel \
     kernel-module-tpm-infineon \
     kernel-module-tpm-nsc \
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 8b6f030..764b2e5 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -7,8 +7,8 @@ inherit packagegroup
 
 PACKAGES = "${PN}"
 
-SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
-RDEPENDS_packagegroup-security-tpm2 = " \
+SUMMARY:packagegroup-security-tpm2 = "Security TPM 2.0 support"
+RDEPENDS:packagegroup-security-tpm2 = " \
     tpm2-tools \
     trousers \
     tpm2-tss \
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
index 2e9394f..3a8f2fa 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
@@ -7,8 +7,8 @@ inherit packagegroup
 
 PACKAGES = "packagegroup-security-vtpm"
 
-SUMMARY_packagegroup-security-vtpm = "Security Software vTPM support"
-RDEPENDS_packagegroup-security-vtpm = " \
+SUMMARY:packagegroup-security-vtpm = "Security Software vTPM support"
+RDEPENDS:packagegroup-security-vtpm = " \
     libtpm \
     swtpm \
     "		
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc b/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
index cea8b1b..909c42d 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
@@ -1,12 +1,12 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/linux-yocto:"
 
 # Enable tpm in kernel 
-SRC_URI_append_x86 = " \
+SRC_URI:append:x86 = " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
     "
 
-SRC_URI_append_x86-64 = " \
+SRC_URI:append:x86-64 = " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
     "
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
index 0f98b79..9ad8967 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
@@ -35,31 +35,31 @@ inherit autotools-brokensep pkgconfig
 srk_dec_pw ?= "\\"\\\x1\\"\\"nc\\"\\"\\\x3\\"\\"nd\\"\\"\\\x1\\"\\"a\\""
 srk_dec_salt ?= "\\"r\\"\\"\\\x00\\\x00\\"\\"t\\""
 
-CFLAGS_append += "-DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
+CFLAGS:append += "-DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
 
 # Uncomment below line if using the plain srk password for development
 #CFLAGS_append += "-DTPM_SRK_PLAIN_PW"
 
-do_configure_prepend() {
+do_configure:prepend() {
     cd ${B}
     cp LICENSE COPYING
     touch NEWS AUTHORS ChangeLog README
 }
 
-FILES_${PN}-staticdev += "${libdir}/ssl/engines-1.1/tpm.la"
-FILES_${PN}-dbg += "\
+FILES:${PN}-staticdev += "${libdir}/ssl/engines-1.1/tpm.la"
+FILES:${PN}-dbg += "\
     ${libdir}/ssl/engines-1.1/.debug \
     ${libdir}/engines-1.1/.debug \
     ${prefix}/local/ssl/lib/engines-1.1/.debug \
 "
-FILES_${PN} += "\
+FILES:${PN} += "\
     ${libdir}/ssl/engines-1.1/tpm.so* \
     ${libdir}/engines-1.1/tpm.so* \
     ${libdir}/libtpm.so* \
     ${prefix}/local/ssl/lib/engines-1.1/tpm.so* \
 "
 
-RDEPENDS_${PN} += "libcrypto libtspi"
+RDEPENDS:${PN} += "libcrypto libtspi"
 
-INSANE_SKIP_${PN} = "libdir"
-INSANE_SKIP_${PN}-dbg = "libdir"
+INSANE_SKIP:${PN} = "libdir"
+INSANE_SKIP:${PN}-dbg = "libdir"
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
index caf99e8..912e939 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
@@ -7,7 +7,7 @@ DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libt
 
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
-DEPENDS_append = " tpm-tools-native expect-native socat-native python3-pip-native python3-cryptography-native"
+DEPENDS:append = " tpm-tools-native expect-native socat-native python3-pip-native python3-cryptography-native"
 
 SRCREV = "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.5 \
@@ -36,19 +36,19 @@ PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system ${TSS_USER}"
-USERADD_PARAM_${PN} = "--system -g ${TSS_GROUP} --home-dir  \
+GROUPADD_PARAM:${PN} = "--system ${TSS_USER}"
+USERADD_PARAM:${PN} = "--system -g ${TSS_GROUP} --home-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
 
 
 PACKAGES =+ "${PN}-python"
-FILES_${PN}-python = "${PYTHON_SITEPACKAGES_DIR}"
+FILES:${PN}-python = "${PYTHON_SITEPACKAGES_DIR}"
 
 PACKAGE_BEFORE_PN = "${PN}-cuse"
-FILES_${PN}-cuse = "${bindir}/swtpm_cuse"
+FILES:${PN}-cuse = "${bindir}/swtpm_cuse"
 
-INSANE_SKIP_${PN}   += "dev-so"
+INSANE_SKIP:${PN}   += "dev-so"
 
-RDEPENDS_${PN} = "libtpm expect socat bash tpm-tools python3 python3-cryptography python3-twisted"
+RDEPENDS:${PN} = "libtpm expect socat bash tpm-tools python3 python3-cryptography python3-twisted"
 
 BBCLASSEXTEND = "native nativesdk"
diff --git a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
index 9e0a686..dbe1647 100644
--- a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
+++ b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
@@ -10,7 +10,7 @@ LICENSE = "CPL-1.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 
 DEPENDS = "libtspi openssl perl"
-DEPENDS_class-native = "trousers-native"
+DEPENDS:class-native = "trousers-native"
 
 SRCREV = "bf43837575c5f7d31865562dce7778eae970052e"
 SRC_URI = " \
@@ -24,7 +24,7 @@ inherit autotools-brokensep gettext
 
 S = "${WORKDIR}/git"
 
-do_configure_prepend () {
+do_configure:prepend () {
 	mkdir -p po
 	mkdir -p m4
 	cp -R po_/* po/
diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index 32c9a49..a746103 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -30,7 +30,7 @@ do_install () {
     oe_runmake DESTDIR=${D} install
 }
 
-do_install_append() {
+do_install:append() {
     install -d ${D}${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/trousers.init.sh ${D}${sysconfdir}/init.d/trousers
     install -d ${D}${sysconfdir}/udev/rules.d
@@ -43,7 +43,7 @@ do_install_append() {
     fi        
 }
 
-CONFFILES_${PN} += "${sysconfig}/tcsd.conf"
+CONFFILES:${PN} += "${sysconfig}/tcsd.conf"
 
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
@@ -59,39 +59,39 @@ PACKAGES = " \
 
 # libtspi needs tcsd for most (all?) operations, so suggest to
 # install that.
-RRECOMMENDS_libtspi = "${PN}"
+RRECOMMENDS:libtspi = "${PN}"
 
-FILES_libtspi = " \
+FILES:libtspi = " \
 	${libdir}/*.so.1 \
 	${libdir}/*.so.1.2.0 \
 	"
-FILES_libtspi-dbg = " \
+FILES:libtspi-dbg = " \
 	${libdir}/.debug \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tspi \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/trspi \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/include/*.h \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/include/tss \
 	"
-FILES_libtspi-dev = " \
+FILES:libtspi-dev = " \
 	${includedir} \
 	${libdir}/*.so \
 	"
-FILES_libtspi-doc = " \
+FILES:libtspi-doc = " \
 	${mandir}/man3 \
 	"
-FILES_libtspi-staticdev = " \
+FILES:libtspi-staticdev = " \
 	${libdir}/*.la \
 	${libdir}/*.a \
 	"
-FILES_${PN} = " \
+FILES:${PN} = " \
 	${sbindir}/tcsd \
 	${sysconfdir} \
 	${localstatedir} \
 	"
 
-FILES_${PN}-dev += "${libdir}/trousers"
+FILES:${PN}-dev += "${libdir}/trousers"
 
-FILES_${PN}-dbg = " \
+FILES:${PN}-dbg = " \
 	${sbindir}/.debug \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tcs \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tcsd \
@@ -99,22 +99,22 @@ FILES_${PN}-dbg = " \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/trousers \
 	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/include/trousers \
 	"
-FILES_${PN}-doc = " \
+FILES:${PN}-doc = " \
 	${mandir}/man5 \
 	${mandir}/man8 \
 	"
 
-FILES_${PN} += "${systemd_unitdir}/*" 
+FILES:${PN} += "${systemd_unitdir}/*" 
 
 INITSCRIPT_NAME = "trousers"
 INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system tss"
-USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
+GROUPADD_PARAM:${PN} = "--system tss"
+USERADD_PARAM:${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
 SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE_${PN} = "tcsd.service"
+SYSTEMD_SERVICE:${PN} = "tcsd.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb
index edfcce9..b80ef79 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb
@@ -25,20 +25,20 @@ S = "${WORKDIR}/git"
 inherit autotools pkgconfig systemd update-rc.d useradd
 
 SYSTEMD_PACKAGES += "${PN}"
-SYSTEMD_SERVICE_${PN} = "tpm2-abrmd.service"
-SYSTEMD_AUTO_ENABLE_${PN} = "disable"
+SYSTEMD_SERVICE:${PN} = "tpm2-abrmd.service"
+SYSTEMD_AUTO_ENABLE:${PN} = "disable"
 
 INITSCRIPT_NAME = "${PN}"
 INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "tss"
-USERADD_PARAM_${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
+GROUPADD_PARAM:${PN} = "tss"
+USERADD_PARAM:${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
 PACKAGECONFIG ?="${@bb.utils.contains('DISTRO_FEATURES','systemd','systemd', '', d)}"
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --with-systemdsystemunitdir=no"
 
-do_install_append() {
+do_install:append() {
     install -d "${D}${sysconfdir}/init.d"
     install -m 0755 "${WORKDIR}/tpm2-abrmd-init.sh" "${D}${sysconfdir}/init.d/tpm2-abrmd"
 
@@ -46,9 +46,9 @@ do_install_append() {
     install -m 0644 "${WORKDIR}/tpm2-abrmd.default" "${D}${sysconfdir}/default/tpm2-abrmd"
 }
 
-FILES_${PN} += "${libdir}/systemd/system-preset \
+FILES:${PN} += "${libdir}/systemd/system-preset \
 		${datadir}/dbus-1"
 
-RDEPENDS_${PN} += "tpm2-tss"
+RDEPENDS:${PN} += "tpm2-tss"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb
index 63ec18d..fdeda26 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.6.0.bb
@@ -18,16 +18,16 @@ S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig python3native
 
-do_configure_prepend () {
+do_configure:prepend () {
     ${S}/bootstrap
 }
 
-do_compile_append() {
+do_compile:append() {
     cd ${S}/tools
     python3 setup.py build
 }
 
-do_install_append() {
+do_install:append() {
     install -d ${D}${libdir}/pkcs11
     install -d ${D}${datadir}/p11-kit
     rm -f ${D}${libdir}/pkcs11/libtpm2_pkcs11.so
@@ -41,15 +41,15 @@ do_install_append() {
 
 PACKAGES =+ "${PN}-tools"
 
-FILES_${PN}-tools = "\
+FILES:${PN}-tools = "\
     ${bindir}/tpm2_ptool \
     ${libdir}/${PYTHON_DIR}/* \
     "
 
-FILES_${PN} += "\
+FILES:${PN} += "\
     ${libdir}/pkcs11/* \
     ${datadir}/p11-kit/* \
     "
 
 RDEPNDS_${PN} = "tpm2-tools"
-RDEPENDS_${PN}-tools += "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
+RDEPENDS:${PN}-tools += "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml ${PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index a67e3c3..47113d2 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -18,28 +18,28 @@ inherit autotools pkgconfig
 
 EFIDIR ?= "/EFI/BOOT"
 
-EFI_ARCH_x86 = "ia32"
-EFI_ARCH_x86-64 = "x86_64"
+EFI_ARCH:x86 = "ia32"
+EFI_ARCH:x86-64 = "x86_64"
 
-CFLAGS_append = " -I${STAGING_INCDIR}/efi -I${STAGING_INCDIR}/efi/${EFI_ARCH}"
+CFLAGS:append = " -I${STAGING_INCDIR}/efi -I${STAGING_INCDIR}/efi/${EFI_ARCH}"
 
-EXTRA_OECONF_append = " \
+EXTRA_OECONF:append = " \
     --with-efi-includedir=${STAGING_INCDIR} \
     --with-efi-crt0=${STAGING_LIBDIR}/crt0-efi-${EFI_ARCH}.o \
     --with-efi-lds=${STAGING_LIBDIR}/elf_${EFI_ARCH}_efi.lds \
 "
 
-do_compile_append() {
+do_compile:append() {
 	oe_runmake example
 }
 
-do_install_append() {
+do_install:append() {
 	install -d "${D}${EFIDIR}"
 	install -m 0755 "${B}"/example/*.efi "${D}${EFIDIR}"
 }
 
 COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
 
-FILES_${PN} += "${EFIDIR}"
+FILES:${PN} += "${EFIDIR}"
 
-RDEPENDS_${PN} = "gnu-efi libtss2-mu"
+RDEPENDS:${PN} = "gnu-efi libtss2-mu"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
index 5395695..3069b1f 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss-engine/tpm2-tss-engine_1.1.0.bb
@@ -17,7 +17,7 @@ S = "${WORKDIR}/git"
 
 PACKAGES += "${PN}-engines ${PN}-engines-staticdev ${PN}-bash-completion"
 
-FILES_${PN}-dev = "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
-FILES_${PN}-engines = "${libdir}/engines-1.1/lib*.so*"
-FILES_${PN}-engines-staticdev = "${libdir}/engines-1.1/libtpm2tss.a"
-FILES_${PN}-bash-completion += "${datadir}/bash-completion/completions"
+FILES:${PN}-dev = "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
+FILES:${PN}-engines = "${libdir}/engines-1.1/lib*.so*"
+FILES:${PN}-engines-staticdev = "${libdir}/engines-1.1/libtpm2tss.a"
+FILES:${PN}-bash-completion += "${datadir}/bash-completion/completions"
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
index cc4f191..6470879 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
@@ -18,7 +18,7 @@ PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
 PACKAGECONFIG[fapi] = "--enable-fapi,--disable-fapi,json-c "
 
 EXTRA_OECONF += "--enable-static --with-udevrulesdir=${nonarch_base_libdir}/udev/rules.d/"
-EXTRA_OECONF_remove = " --disable-static"
+EXTRA_OECONF:remove = " --disable-static"
 
 
 EXTRA_USERS_PARAMS = "\
@@ -45,34 +45,34 @@ PACKAGES = " \
     libtss2-staticdev \
 "
 
-FILES_libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
-FILES_libtss2-tcti-device-dev = " \
+FILES:libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
+FILES:libtss2-tcti-device-dev = " \
     ${includedir}/tss2/tss2_tcti_device.h \
     ${libdir}/pkgconfig/tss2-tcti-device.pc \
     ${libdir}/libtss2-tcti-device.so"
-FILES_libtss2-tcti-device-staticdev = "${libdir}/libtss2-tcti-device.*a"
+FILES:libtss2-tcti-device-staticdev = "${libdir}/libtss2-tcti-device.*a"
 
-FILES_libtss2-tcti-mssim = "${libdir}/libtss2-tcti-mssim.so.*"
-FILES_libtss2-tcti-mssim-dev = " \
+FILES:libtss2-tcti-mssim = "${libdir}/libtss2-tcti-mssim.so.*"
+FILES:libtss2-tcti-mssim-dev = " \
     ${includedir}/tss2/tss2_tcti_mssim.h \
     ${libdir}/pkgconfig/tss2-tcti-mssim.pc \
     ${libdir}/libtss2-tcti-mssim.so"
-FILES_libtss2-tcti-mssim-staticdev = "${libdir}/libtss2-tcti-mssim.*a"
+FILES:libtss2-tcti-mssim-staticdev = "${libdir}/libtss2-tcti-mssim.*a"
 
-FILES_libtss2-mu = "${libdir}/libtss2-mu.so.*"
-FILES_libtss2-mu-dev = " \
+FILES:libtss2-mu = "${libdir}/libtss2-mu.so.*"
+FILES:libtss2-mu-dev = " \
     ${includedir}/tss2/tss2_mu.h \
     ${libdir}/pkgconfig/tss2-mu.pc \
     ${libdir}/libtss2-mu.so"
-FILES_libtss2-mu-staticdev = "${libdir}/libtss2-mu.*a"
+FILES:libtss2-mu-staticdev = "${libdir}/libtss2-mu.*a"
 
-FILES_libtss2 = "${libdir}/libtss2*so.*"
-FILES_libtss2-dev = " \
+FILES:libtss2 = "${libdir}/libtss2*so.*"
+FILES:libtss2-dev = " \
     ${includedir} \
     ${libdir}/pkgconfig \
     ${libdir}/libtss2*so"
-FILES_libtss2-staticdev = "${libdir}/libtss*a"
+FILES:libtss2-staticdev = "${libdir}/libtss*a"
 
-FILES_${PN} = "${libdir}/udev ${nonarch_base_libdir}/udev"
+FILES:${PN} = "${libdir}/udev ${nonarch_base_libdir}/udev"
 
-RDEPENDS_libtss2 = "libgcrypt"
+RDEPENDS:libtss2 = "libgcrypt"
diff --git a/recipes-core/initrdscripts/initramfs-framework.inc b/recipes-core/initrdscripts/initramfs-framework.inc
index 12010bf..1a724d6 100644
--- a/recipes-core/initrdscripts/initramfs-framework.inc
+++ b/recipes-core/initrdscripts/initramfs-framework.inc
@@ -1,16 +1,16 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/initramfs-framework-dm:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/initramfs-framework-dm:"
 
-SRC_URI_append = "\
+SRC_URI:append = "\
     file://dmverity \
 "
 
-do_install_append() {
+do_install:append() {
     # dm-verity
     install ${WORKDIR}/dmverity ${D}/init.d/80-dmverity
 }
 
-PACKAGES_append = " initramfs-module-dmverity"
+PACKAGES:append = " initramfs-module-dmverity"
 
-SUMMARY_initramfs-module-dmverity = "initramfs dm-verity rootfs support"
-RDEPENDS_initramfs-module-dmverity = "${PN}-base"
-FILES_initramfs-module-dmverity = "/init.d/80-dmverity"
+SUMMARY:initramfs-module-dmverity = "initramfs dm-verity rootfs support"
+RDEPENDS:initramfs-module-dmverity = "${PN}-base"
+FILES:initramfs-module-dmverity = "/init.d/80-dmverity"
diff --git a/recipes-core/packagegroup/packagegroup-core-security.bb b/recipes-core/packagegroup/packagegroup-core-security.bb
index 37473d1..c76b3de 100644
--- a/recipes-core/packagegroup/packagegroup-core-security.bb
+++ b/recipes-core/packagegroup/packagegroup-core-security.bb
@@ -16,7 +16,7 @@ PACKAGES = "\
     ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
     "
 
-RDEPENDS_packagegroup-core-security = "\
+RDEPENDS:packagegroup-core-security = "\
     packagegroup-security-utils \
     packagegroup-security-scanners \
     packagegroup-security-audit \
@@ -26,8 +26,8 @@ RDEPENDS_packagegroup-core-security = "\
     ${@bb.utils.contains("DISTRO_FEATURES", "ptest", "packagegroup-meta-security-ptest-packages", "", d)} \
     "
 
-SUMMARY_packagegroup-security-utils = "Security utilities"
-RDEPENDS_packagegroup-security-utils = "\
+SUMMARY:packagegroup-security-utils = "Security utilities"
+RDEPENDS:packagegroup-security-utils = "\
     checksec \
     ding-libs \
     ecryptfs-utils \
@@ -46,46 +46,46 @@ RDEPENDS_packagegroup-security-utils = "\
     ${@bb.utils.contains("DISTRO_FEATURES", "pax", "pax-utils packctl", "",d)} \
     "
 
-SUMMARY_packagegroup-security-scanners = "Security scanners"
-RDEPENDS_packagegroup-security-scanners = "\
+SUMMARY:packagegroup-security-scanners = "Security scanners"
+RDEPENDS:packagegroup-security-scanners = "\
     isic \
     nikto \
     checksecurity \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-daemon clamav-freshclam",d)} \
     "
-RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-daemon clamav-freshclam"
+RDEPENDS:packagegroup-security-scanners:remove:libc-musl = "clamav clamav-daemon clamav-freshclam"
 
-SUMMARY_packagegroup-security-audit = "Security Audit tools "
-RDEPENDS_packagegroup-security-audit = " \
+SUMMARY:packagegroup-security-audit = "Security Audit tools "
+RDEPENDS:packagegroup-security-audit = " \
     buck-security \
     redhat-security \
     "
 
-SUMMARY_packagegroup-security-hardening = "Security Hardening tools"
-RDEPENDS_packagegroup-security-hardening = " \
+SUMMARY:packagegroup-security-hardening = "Security Hardening tools"
+RDEPENDS:packagegroup-security-hardening = " \
     bastille \
     "
 
-SUMMARY_packagegroup-security-ids = "Security Intrusion Detection systems"
-RDEPENDS_packagegroup-security-ids = " \
+SUMMARY:packagegroup-security-ids = "Security Intrusion Detection systems"
+RDEPENDS:packagegroup-security-ids = " \
     samhain-standalone \
     ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata",d)} \
     ossec-hids \
     aide \
     "
 
-RDEPENDS_packagegroup-security-ids_remove_libc-musl = "ossec-hids"
+RDEPENDS:packagegroup-security-ids:remove:libc-musl = "ossec-hids"
 
-SUMMARY_packagegroup-security-mac = "Security Mandatory Access Control systems"
-RDEPENDS_packagegroup-security-mac = " \
+SUMMARY:packagegroup-security-mac = "Security Mandatory Access Control systems"
+RDEPENDS:packagegroup-security-mac = " \
     ${@bb.utils.contains("DISTRO_FEATURES", "tomoyo", "ccs-tools", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack", "",d)} \
     "
 
-RDEPENDS_packagegroup-security-mac_remove_mipsarch = "apparmor"
+RDEPENDS:packagegroup-security-mac:remove:mipsarch = "apparmor"
 
-RDEPENDS_packagegroup-meta-security-ptest-packages = "\
+RDEPENDS:packagegroup-meta-security-ptest-packages = "\
     ptest-runner \
     samhain-standalone-ptest \
     ${@bb.utils.contains_any("TUNE_FEATURES", "ppc7400 riscv32 riscv64", "", " suricata-ptest",d)} \
diff --git a/recipes-ids/aide/aide_0.17.3.bb b/recipes-ids/aide/aide_0.17.3.bb
index 522cd85..fbfa8a7 100644
--- a/recipes-ids/aide/aide_0.17.3.bb
+++ b/recipes-ids/aide/aide_0.17.3.bb
@@ -25,7 +25,7 @@ PACKAGECONFIG[gcrypt] = "--with-gcrypt, --without-gcrypt, libgcrypt, libgcrypt"
 PACKAGECONFIG[mhash] = "--with-mhash, --without-mhash, libmhash, libmhash"
 PACKAGECONFIG[e2fsattrs] = "--with-e2fsattrs, --without-e2fsattrs, e2fsprogs, e2fsprogs"
 
-do_install_append () {
+do_install:append () {
     install -d ${D}${libdir}/${PN}/logs   
     install -d ${D}${sysconfdir}   
     install ${WORKDIR}/aide.conf ${D}${sysconfdir}/
@@ -33,9 +33,9 @@ do_install_append () {
 
 CONF_FILE = "${sysconfdir}/aide.conf"
 
-FILES_${PN} += "${libdir}/${PN} ${sysconfdir}/aide.conf"
+FILES:${PN} += "${libdir}/${PN} ${sysconfdir}/aide.conf"
 
-pkg_postinst_ontarget_${PN} () {
+pkg_postinst_ontarget:${PN} () {
     /usr/bin/aide -i
 }
 RDPENDS_${PN} = "bison, libpcre"
diff --git a/recipes-ids/crowdsec/crowdsec_1.1.1.bb b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
index 1243a3c..887c75d 100644
--- a/recipes-ids/crowdsec/crowdsec_1.1.1.bb
+++ b/recipes-ids/crowdsec/crowdsec_1.1.1.bb
@@ -35,8 +35,8 @@ do_install_ () {
 }
 
 
-INSANE_SKIP_${PN} = "already-stripped"
-INSANE_SKIP_${PN}-dev = "ldflags"
+INSANE_SKIP:${PN} = "already-stripped"
+INSANE_SKIP:${PN}-dev = "ldflags"
 
-RDEPENDS_${PN} = "go"
-RDEPENDS_${PN}-dev = "bash"
+RDEPENDS:${PN} = "go"
+RDEPENDS:${PN}-dev = "bash"
diff --git a/recipes-ids/ossec/ossec-hids_3.6.0.bb b/recipes-ids/ossec/ossec-hids_3.6.0.bb
index 778278b..309ca52 100644
--- a/recipes-ids/ossec/ossec-hids_3.6.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.6.0.bb
@@ -44,7 +44,7 @@ do_install(){
   install -m 640 ${D}/${sysconfdir}/ossec-init.conf ${D}/var/ossec/${sysconfdir}/ossec-init.conf
 }
 
-pkg_postinst_ontarget_${PN} () {
+pkg_postinst_ontarget:${PN} () {
     DIR="/var/ossec"
 
     usermod -g ossec -G ossec -a root
@@ -157,9 +157,9 @@ pkg_postinst_ontarget_${PN} () {
 }
 
 USERADD_PACKAGES = "${PN}"
-USERADD_PARAM_${PN} = "--system --home-dir /var/ossec -g ossec --shell /bin/false ossec"
-GROUPADD_PARAM_${PN} = "--system ossec"
+USERADD_PARAM:${PN} = "--system --home-dir /var/ossec -g ossec --shell /bin/false ossec"
+GROUPADD_PARAM:${PN} = "--system ossec"
 
-RDEPENDS_${PN} = "openssl bash"
+RDEPENDS:${PN} = "openssl bash"
 
-COMPATIBLE_HOST_libc-musl = "null"
+COMPATIBLE_HOST:libc-musl = "null"
diff --git a/recipes-ids/samhain/samhain-client.bb b/recipes-ids/samhain/samhain-client.bb
index 0f53a8c..2b99e20 100644
--- a/recipes-ids/samhain/samhain-client.bb
+++ b/recipes-ids/samhain/samhain-client.bb
@@ -8,5 +8,5 @@ EXTRA_OECONF += " \
         --with-port=${SAMHAIN_PORT} \
         "
 
-RDEPENDS_${PN} = "acl zlib attr bash"
-RCONFLICTS_${PN} = "samhain-standalone"
+RDEPENDS:${PN} = "acl zlib attr bash"
+RCONFLICTS:${PN} = "samhain-standalone"
diff --git a/recipes-ids/samhain/samhain-server.bb b/recipes-ids/samhain/samhain-server.bb
index e7a3aa6..51bce07 100644
--- a/recipes-ids/samhain/samhain-server.bb
+++ b/recipes-ids/samhain/samhain-server.bb
@@ -10,7 +10,7 @@ SRC_URI += "file://samhain-server-volatiles \
 
 TARGET_CC_ARCH += "${LDFLAGS}"
 
-do_install_append() {
+do_install:append() {
     if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
         install -d ${D}${sysconfdir}/tmpfiles.d
         install -m 0644 ${WORKDIR}/samhain-server-volatiles.conf \
@@ -25,5 +25,5 @@ do_install_append() {
         init/samhain.startLSB ${D}/var/lib/samhain
 }
 
-RDEPENDS_${PN} += "gmp bash perl"
-RCONFLICTS_${PN} = "samhain-standalone"
+RDEPENDS:${PN} += "gmp bash perl"
+RCONFLICTS:${PN} = "samhain-standalone"
diff --git a/recipes-ids/samhain/samhain-standalone.bb b/recipes-ids/samhain/samhain-standalone.bb
index 4fed9e9..445cb99 100644
--- a/recipes-ids/samhain/samhain-standalone.bb
+++ b/recipes-ids/samhain/samhain-standalone.bb
@@ -6,7 +6,7 @@ SRC_URI += "file://samhain-not-run-ptest-on-host.patch \
 
 PROVIDES += "samhain"
 
-SYSTEMD_SERVICE_${PN} = "samhain.service"
+SYSTEMD_SERVICE:${PN} = "samhain.service"
 
 inherit ptest
 
@@ -18,7 +18,7 @@ do_compile() {
 	oe_runmake "$@"
 }
 
-do_install_append() {
+do_install:append() {
     ln -sf ${INITSCRIPT_NAME} ${D}${sysconfdir}/init.d/samhain
 }
 
@@ -27,5 +27,5 @@ do_install_ptest() {
 	install ${S}/cutest ${D}${PTEST_PATH}
 }
 
-RPROVIDES_${PN} += "samhain"
-RCONFLICTS_${PN} = "samhain-client samhain-server"
+RPROVIDES:${PN} += "samhain"
+RCONFLICTS:${PN} = "samhain-client samhain-server"
diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 0148e46..97f5f2d 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -37,7 +37,7 @@ INITSCRIPT_NAME = "${BPN}"
 INITSCRIPT_PARAMS ?= "defaults"
 
 SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE_${PN} = "${INITSCRIPT_NAME}.service"
+SYSTEMD_SERVICE:${PN} = "${INITSCRIPT_NAME}.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
 # mode mapping:
@@ -67,23 +67,23 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
 PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
 
-EXTRA_OEMAKE_append_aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
-EXTRA_OEMAKE_append_mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
+EXTRA_OEMAKE:append:aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
+EXTRA_OEMAKE:append:mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
 
 do_unpack_samhain() {
     cd ${WORKDIR}
     tar -xzvf samhain-${PV}.tar.gz
 }
 
-python do_unpack_append() {
+python do_unpack:append() {
     bb.build.exec_func('do_unpack_samhain', d)
 }
 
-do_configure_prepend_arm() {
+do_configure:prepend:arm() {
     export sh_cv___va_copy=yes
 }
 
-do_configure_prepend_aarch64() {
+do_configure:prepend:aarch64() {
     export sh_cv___va_copy=yes
 }
 
@@ -91,7 +91,7 @@ do_configure_prepend_aarch64() {
 # use the prefix --oldincludedir=/usr/include which is not
 # recognized by Samhain's configure script and would invariably
 # throw back the error "unrecognized option: --oldincludedir=/usr/include"
-do_configure_prepend () {
+do_configure:prepend () {
     cat << EOF > ${S}/config-site.${BP}
 ssp_cv_lib=no
 sh_cv_va_copy=yes
@@ -124,13 +124,13 @@ do_configure () {
 	${EXTRA_OECONF}
 }
 
-do_compile_prepend_libc-musl () {
+do_compile:prepend:libc-musl () {
 	sed -i 's/^#define HAVE_MALLOC_H.*//' ${B}/config.h
 }
 
 # Install the init script, it's default file, and the extraneous
 # documentation.
-do_install_append () {
+do_install:append () {
 	oe_runmake install DESTDIR='${D}' INSTALL=install-boot
 
 	install -D -m 755 ${WORKDIR}/${INITSCRIPT_NAME}.init \
@@ -165,4 +165,4 @@ do_install_append () {
 	rm -rf ${D}${localstatedir}/log
 }
 
-FILES_${PN} += "${systemd_system_unitdir}"
+FILES:${PN} += "${systemd_system_unitdir}"
diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index 36e5d00..3a9bc1d 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -60,18 +60,18 @@ do_install () {
     install -m 0644 ${WORKDIR}/tripwire.txt ${D}${docdir}/${BPN}
 }
 
-do_install_ptest_append () {
+do_install_ptest:append () {
 	install -d ${D}${PTEST_PATH}/tests
 	cp -a ${S}/src/test-harness/* ${D}${PTEST_PATH}
 	sed -i -e 's@../../../../bin@${sbindir}@'  ${D}${PTEST_PATH}/twtools.pm
 }
 
-FILES_${PN} += "${libdir} ${docdir}/${PN}/*"
-FILES_${PN}-dbg += "${sysconfdir}/${PN}/.debug"
-FILES_${PN}-staticdev += "${localstatedir}/lib/${PN}/lib*.a"
-FILES_${PN}-ptest += "${PTEST_PATH}/tests "
+FILES:${PN} += "${libdir} ${docdir}/${PN}/*"
+FILES:${PN}-dbg += "${sysconfdir}/${PN}/.debug"
+FILES:${PN}-staticdev += "${localstatedir}/lib/${PN}/lib*.a"
+FILES:${PN}-ptest += "${PTEST_PATH}/tests "
 
-RDEPENDS_${PN} += " perl nano msmtp cronie"
-RDEPENDS_${PN}-ptest = " perl lib-perl perl-modules "
+RDEPENDS:${PN} += " perl nano msmtp cronie"
+RDEPENDS:${PN}-ptest = " perl lib-perl perl-modules "
 
 PNBLACKLIST[tripwire] ?= "Upsteram project appears to be abondoned, fails to build with gcc11"
diff --git a/recipes-kernel/linux/linux-yocto_security.inc b/recipes-kernel/linux/linux-yocto_security.inc
index fa536d0..defca57 100644
--- a/recipes-kernel/linux/linux-yocto_security.inc
+++ b/recipes-kernel/linux/linux-yocto_security.inc
@@ -1,3 +1,3 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
+KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
+KERNEL_FEATURES:append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES:append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
diff --git a/recipes-kernel/lkrg/lkrg-module_0.9.1.bb b/recipes-kernel/lkrg/lkrg-module_0.9.1.bb
index 287b4e8..782c6e3 100644
--- a/recipes-kernel/lkrg/lkrg-module_0.9.1.bb
+++ b/recipes-kernel/lkrg/lkrg-module_0.9.1.bb
@@ -28,6 +28,6 @@ module_do_install() {
     ${D}${nonarch_base_libdir}/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko
 }
 
-RPROVIDES_${PN} += "kernel-module-lkrg"
+RPROVIDES:${PN} += "kernel-module-lkrg"
 
 COMPATIBLE_HOST = "(i.86|x86_64|arm|aarch64).*-linux"
diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
index ff5b39b..dca53a3 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
@@ -29,7 +29,7 @@ S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
 
-COMPATIBLE_MACHINE_mips64 = "(!.*mips64).*"
+COMPATIBLE_MACHINE:mips64 = "(!.*mips64).*"
 
 inherit pkgconfig autotools-brokensep update-rc.d python3native python3targetconfig perlnative cpan systemd features_check bash-completion
 
@@ -106,11 +106,11 @@ do_install () {
 }
 
 #Building ptest on arm fails.
-do_compile_ptest_aarch64 () {
+do_compile_ptest:aarch64 () {
   :
 }
 
-do_compile_ptest_arm () {
+do_compile_ptest:arm () {
   :
 }
 
@@ -140,11 +140,11 @@ do_install_ptest () {
 }
 
 #Building ptest on arm fails.
-do_install_ptest_aarch64 () {
+do_install_ptest:aarch64 () {
   :
 }
 
-do_install_ptest_arm() {
+do_install_ptest:arm() {
   :
 }
 
@@ -153,23 +153,23 @@ INITSCRIPT_NAME = "apparmor"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
 
 SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE_${PN} = "apparmor.service"
+SYSTEMD_SERVICE:${PN} = "apparmor.service"
 SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "${nonarch_base_libdir}/apparmor/ ${base_libdir}/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
-FILES_mod-${PN} = "${libdir}/apache2/modules/*"
-FILES_${PN}-dbg += "${base_libdir}/security/.debug"
+FILES:${PN} += "${nonarch_base_libdir}/apparmor/ ${base_libdir}/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
+FILES:mod-${PN} = "${libdir}/apache2/modules/*"
+FILES:${PN}-dbg += "${base_libdir}/security/.debug"
 
-DEPENDS_append_libc-musl = " fts "
-RDEPENDS_${PN}_libc-musl +=  "musl-utils"
-RDEPENDS_${PN}_libc-glibc +=  "glibc-utils"
+DEPENDS:append:libc-musl = " fts "
+RDEPENDS:${PN}:libc-musl +=  "musl-utils"
+RDEPENDS:${PN}:libc-glibc +=  "glibc-utils"
 
 # Add coreutils and findutils only if sysvinit scripts are in use
-RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
-RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
-RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
+RDEPENDS:${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+RDEPENDS:${PN}:remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
+RDEPENDS:${PN}-ptest += "perl coreutils dbus-lib bash"
 
-INSANE_SKIP_${PN} = "ldflags"
-PRIVATE_LIBS_${PN}-ptest = "libapparmor.so*"
+INSANE_SKIP:${PN} = "ldflags"
+PRIVATE_LIBS:${PN}-ptest = "libapparmor.so*"
diff --git a/recipes-mac/ccs-tools/README b/recipes-mac/ccs-tools/README
index 4a4faa7..0381814 100644
--- a/recipes-mac/ccs-tools/README
+++ b/recipes-mac/ccs-tools/README
@@ -9,4 +9,4 @@ To start via command line add:
 To initialize:
 /usr/lib/ccs/init_policy
 
-DISTRO_FEATURES_append = " tomoyo"
+DISTRO_FEATURES:append = " tomoyo"
diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
index 79af6a5..08da24a 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
@@ -29,17 +29,17 @@ do_install(){
 
 PACKAGE="${PN} ${PN}-dbg ${PN}-doc"
 
-FILES_${PN} = "\
+FILES:${PN} = "\
     ${sbindir}/* \
     ${base_sbindir}/* \
     ${libdir}/* \
 "
 
-FILES_${PN}-doc = "\
+FILES:${PN}-doc = "\
     ${mandir}/man8/* \
 "
 
-FILES_${PN}-dbg = "\
+FILES:${PN}-dbg = "\
     ${base_sbindir}/.debug/* \
     ${sbindir}/.debug/* \
     ${libdir}/.debug/* \
diff --git a/recipes-mac/smack/smack-test_1.0.bb b/recipes-mac/smack/smack-test_1.0.bb
index d5de607..d7824ae 100644
--- a/recipes-mac/smack/smack-test_1.0.bb
+++ b/recipes-mac/smack/smack-test_1.0.bb
@@ -22,4 +22,4 @@ do_install() {
     install -m 0755 *.sh ${D}${sbindir}
 }
 
-RDEPENDS_${PN} = "smack python mmap-smack-test tcp-smack-test udp-smack-test"
+RDEPENDS:${PN} = "smack python mmap-smack-test tcp-smack-test udp-smack-test"
diff --git a/recipes-mac/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
index 88ae56c..6c2f041 100644
--- a/recipes-mac/smack/smack_1.3.1.bb
+++ b/recipes-mac/smack/smack_1.3.1.bb
@@ -28,15 +28,15 @@ REQUIRED_DISTRO_FEATURES = "smack"
 S = "${WORKDIR}/git"
 
 PACKAGECONFIG ??= ""
-PACKAGECONFIG_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+PACKAGECONFIG:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --without-systemdsystemunitdir, systemd"
 
-do_compile_append () {
+do_compile:append () {
 	oe_runmake -C ${S}/tests generator
 }
 
-do_install_append () {
+do_install:append () {
 	install -d ${D}${sysconfdir}/init.d
 	install -d ${D}${sysconfdir}/smack
 	install -d ${D}${sysconfdir}/smack/accesses.d
@@ -55,10 +55,10 @@ INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "smack"
 INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
 
-FILES_${PN} += "${sysconfdir}/init.d/smack"
-FILES_${PN}-ptest += "generator"
+FILES:${PN} += "${sysconfdir}/init.d/smack"
+FILES:${PN}-ptest += "generator"
 
-RDEPENDS_${PN} += "coreutils python3-core"
-RDEPENDS_${PN}-ptest += "make bash bc"
+RDEPENDS:${PN} += "coreutils python3-core"
+RDEPENDS:${PN}-ptest += "make bash bc"
 
 BBCLASSEXTEND = "native"
diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
index 71857ab..5889a05 100644
--- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
+++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
@@ -24,6 +24,6 @@ do_install() {
     oe_runmake install DESTDIR=${D} INSTALLDIR=${PERLLIBDIRS}/vendor_perl/${PERLVERSION} MANDIR=${datadir}/perl/${PERLVERSION}
 }
 
-FILES_${PN} += "${datadir}/perl"
+FILES:${PN} += "${datadir}/perl"
 
 BBCLASSEXTEND = "native"
diff --git a/recipes-python/python/python3-oauth2client_4.1.3.bb b/recipes-python/python/python3-oauth2client_4.1.3.bb
index ca25d14..3a07461 100644
--- a/recipes-python/python/python3-oauth2client_4.1.3.bb
+++ b/recipes-python/python/python3-oauth2client_4.1.3.bb
@@ -8,4 +8,4 @@ SRC_URI[sha256sum] = "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b420989
 
 inherit pypi setuptools3
 
-RDEPENDS_${PN} = "python3-six python3-rsa python3-httplib2 python3-pyasn1 python3-pyasn1-modules"
+RDEPENDS:${PN} = "python3-six python3-rsa python3-httplib2 python3-pyasn1 python3-pyasn1-modules"
diff --git a/recipes-scanners/arpwatch/arpwatch_3.1.bb b/recipes-scanners/arpwatch/arpwatch_3.1.bb
index 44aeca0..c152b8c 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.1.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.1.bb
@@ -66,14 +66,14 @@ INITSCRIPT_NAME = "arpwatch"
 INITSCRIPT_PARAMS = "start 02 2 3 4 5 . stop 20 0 1 6 ."
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system ${ARPWATCH_UID}"
-USERADD_PARAM_${PN} = "--system -g ${ARPWATCH_GID} --home-dir  \
+GROUPADD_PARAM:${PN} = "--system ${ARPWATCH_UID}"
+USERADD_PARAM:${PN} = "--system -g ${ARPWATCH_GID} --home-dir  \
     ${localstatedir}/spool/${BPN} \
     --no-create-home  --shell /bin/false ${BPN}"
 
 CONFFILE_FILES = "${sysconfdir}/${PN}.conf"
 
-FILES_${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
+FILES:${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
                ${sysconfdir} /var/lib/arpwatch"
 
-RDEPENDS_${PN} = "libpcap postfix postfix-cfg"
+RDEPENDS:${PN} = "libpcap postfix postfix-cfg"
diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipes-scanners/buck-security/buck-security_0.7.bb
index 20a1fb0..63e4d7a 100644
--- a/recipes-scanners/buck-security/buck-security_0.7.bb
+++ b/recipes-scanners/buck-security/buck-security_0.7.bb
@@ -26,16 +26,16 @@ do_install() {
 
 }
 
-FILES_${PN} = "${bindir}/*"
+FILES:${PN} = "${bindir}/*"
 
-RDEPENDS_${PN} = "coreutils gnupg net-tools perl perl-module-data-dumper \
+RDEPENDS:${PN} = "coreutils gnupg net-tools perl perl-module-data-dumper \
                   perl-module-file-basename perl-module-file-spec perl-module-getopt-long \
                   perl-module-lib perl-module-posix perl-module-term-ansicolor \
                   perl-module-time-localtime pinentry perl-module-pod-usage \
                   perl-module-pod-text perl-module-file-glob \
                  "
 
-RDEPENDS_${PN}_class-native = "coreutils net-tools perl perl-module-data-dumper \
+RDEPENDS:${PN}:class-native = "coreutils net-tools perl perl-module-data-dumper \
                                perl-module-file-basename perl-module-file-spec perl-module-getopt-long \
                                perl-module-lib perl-module-posix perl-module-term-ansicolor \
                                perl-module-time-localtime perl-module-file-glob\
diff --git a/recipes-scanners/checksec/checksec_2.4.0.bb b/recipes-scanners/checksec/checksec_2.4.0.bb
index 52bcf7c..000e3bb 100644
--- a/recipes-scanners/checksec/checksec_2.4.0.bb
+++ b/recipes-scanners/checksec/checksec_2.4.0.bb
@@ -16,4 +16,4 @@ do_install() {
     install -m 0755 ${S}/checksec ${D}${bindir}
 }
 
-RDEPENDS_${PN} = "bash openssl-bin binutils"
+RDEPENDS:${PN} = "bash openssl-bin binutils"
diff --git a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb b/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
index 0161b4c..9a1d77a 100644
--- a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
@@ -18,4 +18,4 @@ do_install() {
     oe_runmake PREFIX=${D}
 }
 
-RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob perl-module-carp perl-module-env perl-module-tap-parser-iterator-array util-linux findutils coreutils"
+RDEPENDS:${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob perl-module-carp perl-module-env perl-module-tap-parser-iterator-array util-linux findutils coreutils"
diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index 5759ddd..0d3a678 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -52,7 +52,7 @@ PACKAGECONFIG[systemd] = "-DENABLE_SYSTEMD=ON -DSYSTEMD_UNIT_DIR=${systemd_syste
 
 export OECMAKE_C_FLAGS += " -I${STAGING_INCDIR} -L ${RECIPE_SYSROOT}${nonarch_libdir} -L${STAGING_LIBDIR} -lpthread" 
 
-do_install_append () {
+do_install:append () {
     install -d ${D}/${sysconfdir}
     install -d ${D}/${localstatedir}/lib/clamav
     install -d ${D}${sysconfdir}/clamav ${D}${sysconfdir}/default/volatiles
@@ -76,7 +76,7 @@ do_install_append () {
     oe_multilib_header clamav-types.h
 }
 
-pkg_postinst_${PN} () {
+pkg_postinst:${PN} () {
     if [ -z "$D" ]; then
         if command -v systemd-tmpfiles >/dev/null; then
             systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/clamav.conf
@@ -89,17 +89,17 @@ pkg_postinst_${PN} () {
 
 PACKAGES += "${PN}-daemon ${PN}-clamdscan ${PN}-freshclam ${PN}-libclamav"
 
-FILES_${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit ${sbindir}/clamonacc \
+FILES:${PN} = "${bindir}/clambc ${bindir}/clamscan ${bindir}/clamsubmit ${sbindir}/clamonacc \
                 ${bindir}/*sigtool ${mandir}/man1/clambc* ${mandir}/man1/clamscan* \
                 ${mandir}/man1/sigtool* ${mandir}/man1/clambsubmit*  \
                 ${docdir}/clamav/*"
 
-FILES_${PN}-clamdscan = " ${bindir}/clamdscan \
+FILES:${PN}-clamdscan = " ${bindir}/clamdscan \
                         ${docdir}/clamdscan/* \
                         ${mandir}/man1/clamdscan* \
                         "
 
-FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
+FILES:${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
                         ${mandir}/man1/clamconf* ${mandir}/man1/clamdtop* \
                         ${mandir}/man5/clamd*  ${mandir}/man8/clamd* \
                         ${sysconfdir}/clamd.conf* \
@@ -111,7 +111,7 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
                         ${systemd_system_unitdir}/clamav-clamonacc.service \
                         "
 
-FILES_${PN}-freshclam = "${bindir}/freshclam \
+FILES:${PN}-freshclam = "${bindir}/freshclam \
                         ${sysconfdir}/freshclam.conf*  \
                         /usr/etc/freshclam.conf*  \
                         ${sysconfdir}/clamav ${sysconfdir}/default/volatiles \
@@ -121,33 +121,33 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${mandir}/man5/freshclam.conf.* \
                         ${systemd_system_unitdir}/clamav-freshclam.service"
 
-FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
+FILES:${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
                     ${libdir}/pkgconfig/*.pc \
                     ${mandir}/man1/clamav-config.* \
                     ${includedir}/*.h ${docdir}/libclamav* "
 
-FILES_${PN}-staticdev = "${libdir}/*.a"
+FILES:${PN}-staticdev = "${libdir}/*.a"
 
-FILES_${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so* \
+FILES:${PN}-libclamav = "${libdir}/libclamav.so* ${libdir}/libclammspack.so* \
                          ${libdir}/libfreshclam.so* ${docdir}/libclamav/* \
                          ${libdir}/libmspack* "
 
-FILES_${PN}-doc = "${mandir}/man/* \
+FILES:${PN}-doc = "${mandir}/man/* \
                    ${datadir}/man/* \
                    ${docdir}/* "
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system ${CLAMAV_UID}"
-USERADD_PARAM_${PN} = "--system -g ${CLAMAV_GID} --home-dir  \
+GROUPADD_PARAM:${PN} = "--system ${CLAMAV_UID}"
+USERADD_PARAM:${PN} = "--system -g ${CLAMAV_GID} --home-dir  \
     ${localstatedir}/lib/${BPN} \
     --no-create-home  --shell /sbin/nologin ${BPN}"
 
-RPROVIDES_${PN} += "${PN}-systemd"
-RREPLACES_${PN} += "${PN}-systemd"
-RCONFLICTS_${PN} += "${PN}-systemd"
+RPROVIDES:${PN} += "${PN}-systemd"
+RREPLACES:${PN} += "${PN}-systemd"
+RCONFLICTS:${PN} += "${PN}-systemd"
 SYSTEMD_PACKAGES  = "${PN}-daemon ${PN}-freshclam"
-SYSTEMD_SERVICE_${PN}-daemon = "clamav-daemon.service"
-SYSTEMD_SERVICE_${PN}-freshclam = "clamav-freshclam.service"
+SYSTEMD_SERVICE:${PN}-daemon = "clamav-daemon.service"
+SYSTEMD_SERVICE:${PN}-freshclam = "clamav-freshclam.service"
 
-RDEPENDS_${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-freshclam clamav-libclamav"
-RDEPENDS_${PN}-daemon = "clamav"
+RDEPENDS:${PN} = "openssl ncurses-libncurses libxml2 libbz2 ncurses-libtinfo curl libpcre2 clamav-freshclam clamav-libclamav"
+RDEPENDS:${PN}-daemon = "clamav"
diff --git a/recipes-security/aircrack-ng/aircrack-ng_1.6.bb b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
index 8d3b531..f76f1df 100644
--- a/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
+++ b/recipes-security/aircrack-ng/aircrack-ng_1.6.bb
@@ -29,8 +29,8 @@ do_install () {
     make DESTDIR=${D} ${OEMAKE_EXTRA} ext_scripts=true install
 }
 
-FILES_${PN} += "${libdir}/*.so"
+FILES:${PN} += "${libdir}/*.so"
 FILES_SOLIBSDEV = ""
-INSANE_SKIP_${PN} += "dev-so"
+INSANE_SKIP:${PN} += "dev-so"
 
-RDEPENDS_${PN} = "libpcap"
+RDEPENDS:${PN} = "libpcap"
diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 0290cae..72281c5 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -6,8 +6,8 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 # Bash is needed for set +o privileged (check busybox), might also need ncurses
 DEPENDS = "virtual/kernel"
-RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
-FILES_${PN} += "/run/lock/subsys/bastille"
+RDEPENDS:${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
+FILES:${PN} += "/run/lock/subsys/bastille"
 
 SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3.2.1/Bastille-3.2.1.tar.bz2 \
            file://AccountPermission.pm \
@@ -150,4 +150,4 @@ do_install () {
 	ln -s RevertBastille ${D}${sbindir}/UndoBastille
 }
 
-FILES_${PN} += "${datadir}/Bastille ${libdir}/Bastille ${libdir}/perl* ${sysconfdir}/*"
+FILES:${PN} += "${datadir}/Bastille ${libdir}/Bastille ${libdir}/perl* ${sysconfdir}/*"
diff --git a/recipes-security/bastille/files/AccountPermission.pm b/recipes-security/bastille/files/AccountPermission.pm
index cfbaab1..132b30c 100644
--- a/recipes-security/bastille/files/AccountPermission.pm
+++ b/recipes-security/bastille/files/AccountPermission.pm
@@ -16,7 +16,7 @@ B_chgrp
 B_chgrp_link
 B_userdel
 B_groupdel
-B_remove_user_from_group
+B:remove_user_from_group
 B_check_owner_group
 B_is_unowned_file
 B_is_ungrouped_file
@@ -28,7 +28,7 @@ B_is_suid
 B_is_sgid
 B_get_user_list
 B_get_group_list
-B_remove_suid
+B:remove_suid
 );
 our @EXPORT = @EXPORT_OK;
 
@@ -74,7 +74,7 @@ sub B_chmod($$) {
    if ($new_perm =~ /([ugo]+)([+-]{1})([rwxst]+)/) {
        $symbolic = 1;
        $chmod_noun = $1;
-       $add_remove = $2;
+       $add:remove = $2;
        $capability = $3;
    }
 
@@ -466,7 +466,7 @@ sub B_chgrp_link($$) {
 #
 # In the future, we may also choose to make a B_lock_account routine.
 #
-# This routine depends on B_remove_user_from_group.
+# This routine depends on B:remove_user_from_group.
 ###########################################################################
 
 sub B_userdel($) {
@@ -506,7 +506,7 @@ sub B_userdel($) {
 
     #
     # Next find out what groups the user is in, so we can call
-    # B_remove_user_from_group($user,$group)
+    # B:remove_user_from_group($user,$group)
     #
     # TODO: add this to the helper functions for the test suite.
     #
@@ -586,7 +586,7 @@ sub B_groupdel($) {
 
 
 ###########################################################################
-# B_remove_user_from_group($user,$group) removes $user from $group,
+# B:remove_user_from_group($user,$group) removes $user from $group,
 # by modifying $group's /etc/group line, pulling the user out.  This
 # uses B_chunk_replace thrice to replace these patterns:
 #
@@ -595,7 +595,7 @@ sub B_groupdel($) {
 #
 ###########################################################################
 
-sub B_remove_user_from_group($$) {
+sub B:remove_user_from_group($$) {
 
     my ($user_to_remove,$group) = @_;
 
@@ -1022,7 +1022,7 @@ sub B_get_group_list()
 #
 ###########################################################################
 
-sub B_remove_suid($) {
+sub B:remove_suid($) {
    my $file_expr = $_[0];
 
    &B_log("ACTION","Removing SUID bit from \"$file_expr\".");
diff --git a/recipes-security/bastille/files/FileContent.pm b/recipes-security/bastille/files/FileContent.pm
index 0a5d609..1ef89dd 100644
--- a/recipes-security/bastille/files/FileContent.pm
+++ b/recipes-security/bastille/files/FileContent.pm
@@ -10,8 +10,8 @@ B_blank_file
 B_insert_line_after
 B_insert_line_before
 B_insert_line
-B_append_line
-B_prepend_line
+B:append_line
+B:prepend_line
 B_replace_line
 B_replace_lines
 B_replace_pattern
@@ -262,7 +262,7 @@ sub B_insert_line($$$$) {
 #
 # Additionally, if $pattern is set equal to "", the line is always appended.
 #
-# B_append_line uses B_open_plus and B_close_plus, so that the file
+# B:append_line uses B_open_plus and B_close_plus, so that the file
 # modified is backed up...
 #
 # Here's examples of where you might use this:
@@ -273,7 +273,7 @@ sub B_insert_line($$$$) {
 #
 ###########################################################################
 
-sub B_append_line($$$) {
+sub B:append_line($$$) {
 
     my ($filename,$pattern,$line_to_append) = @_;
 
@@ -308,11 +308,11 @@ sub B_append_line($$$) {
 
 ###########################################################################
 # &B_prepend_line ($filename,$pattern,$line_to_prepend)  modifies $filename,
-# pre-pending $line_to_prepend unless one or more lines in the file matches
+# pre-pending $line_to:prepend unless one or more lines in the file matches
 # $pattern.  This is an enhancement to the prepend_line_if_no_such_line_exists
 # idea.
 #
-# B_prepend_line uses B_open_plus and B_close_plus, so that the file
+# B:prepend_line uses B_open_plus and B_close_plus, so that the file
 # modified is backed up...
 #
 # Here's examples of where you might use this:
@@ -322,7 +322,7 @@ sub B_append_line($$$) {
 #
 ###########################################################################
 
-sub B_prepend_line($$$) {
+sub B:prepend_line($$$) {
 
     my ($filename,$pattern,$line_to_prepend) = @_;
 
@@ -348,7 +348,7 @@ sub B_prepend_line($$$) {
 
         # Log the action
         &B_log("ACTION","Pre-pended the following line to $filename:\n");
-        &B_log("ACTION","$line_to_prepend");
+        &B_log("ACTION","$line_to:prepend");
     }
     else {
         $retval=0;
diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 4a99b5a..9aefc32 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -25,7 +25,7 @@ SRC_URI[sha256sum] = "112cb3e37e81a1ecd8e39516725dec0ce55c5f3df6284e0f4cc0f11875
 inherit autotools pkgconfig systemd
 
 SYSTEMD_PACKAGES = "${PN}"
-SYSTEMD_SERVICE_${PN} = "ecryptfs.service"
+SYSTEMD_SERVICE:${PN} = "ecryptfs.service"
 
 EXTRA_OECONF = "\
     --libdir=${base_libdir} \
@@ -41,7 +41,7 @@ PACKAGECONFIG ??= "nss \
 PACKAGECONFIG[nss] = "--enable-nss,--disable-nss,nss,"
 PACKAGECONFIG[pam] = "--enable-pam,--disable-pam,libpam,"
 
-do_configure_prepend() {
+do_configure:prepend() {
     export NSS_CFLAGS="-I${STAGING_INCDIR}/nspr -I${STAGING_INCDIR}/nss3"
     export NSS_LIBS="-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 -lsoftokn3 -lnssutil3"
     export KEYUTILS_CFLAGS="-I${STAGING_INCDIR}"
@@ -49,7 +49,7 @@ do_configure_prepend() {
     sed -i -e "s;rootsbindir=\"/sbin\";rootsbindir=\"\${base_sbindir}\";g" ${S}/configure.ac
 }
 
-do_install_append() {
+do_install:append() {
     chmod 4755 ${D}${base_sbindir}/mount.ecryptfs_private
     # ${base_libdir} is identical to ${libdir} when usrmerge enabled
     if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
@@ -64,7 +64,7 @@ do_install_append() {
     fi
 }
 
-FILES_${PN} += "${base_libdir}/security/* ${base_libdir}/ecryptfs/*"
+FILES:${PN} += "${base_libdir}/security/* ${base_libdir}/ecryptfs/*"
 
-RDEPENDS_${PN} += "cryptsetup"
-RRECOMMENDS_${PN} = "gettext-runtime"
+RDEPENDS:${PN} += "cryptsetup"
+RRECOMMENDS:${PN} = "gettext-runtime"
diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index b480c76..ed75a0e 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -20,34 +20,34 @@ inherit update-rc.d ptest setuptools3
 
 S = "${WORKDIR}/git"
 
-do_compile_prepend () {
+do_compile:prepend () {
     cp ${WORKDIR}/fail2ban_setup.py ${S}/setup.py
     cd ${S}
     ./fail2ban-2to3
 }
 
-do_install_append () {
+do_install:append () {
     install -d ${D}/${sysconfdir}/fail2ban
     install -d ${D}/${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
     chown -R root:root ${D}/${bindir}
 }
 
-do_install_ptest_append () {
+do_install_ptest:append () {
     install -d ${D}${PTEST_PATH}
     install -d ${D}${PTEST_PATH}/bin
     sed -i -e 's/##PYTHON##/${PYTHON_PN}/g' ${D}${PTEST_PATH}/run-ptest
     install -D ${S}/bin/* ${D}${PTEST_PATH}/bin
 }
 
-FILES_${PN} += "/run"
+FILES:${PN} += "/run"
 
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "fail2ban-server"
 INITSCRIPT_PARAMS = "defaults 25"
 
-INSANE_SKIP_${PN}_append = "already-stripped"
+INSANE_SKIP:${PN}:append = "already-stripped"
 
-RDEPENDS_${PN} = "${VIRTUAL-RUNTIME_base-utils-syslog} iptables sqlite3 python3-core python3-pyinotify"
-RDEPENDS_${PN} += " python3-logging python3-fcntl python3-json"
-RDEPENDS_${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
+RDEPENDS:${PN} = "${VIRTUAL-RUNTIME_base-utils-syslog} iptables sqlite3 python3-core python3-pyinotify"
+RDEPENDS:${PN} += " python3-logging python3-fcntl python3-json"
+RDEPENDS:${PN}-ptest = "python3-core python3-io python3-modules python3-fail2ban"
diff --git a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
index df76a3d..26f549b 100644
--- a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
+++ b/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
@@ -18,7 +18,7 @@ do_install() {
     oe_runmake DESTDIR=${D} PREFIX=/usr install
 }
 
-RRECOMMENDS_${PN} += "\
+RRECOMMENDS:${PN} += "\
     keyutils \
     kernel-module-cbc \
     kernel-module-cts \
diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
index f9ca092..4ab8374 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.08.bb
@@ -18,6 +18,6 @@ REQUIRED_DISTRO_FEATURES = "pam"
 EXTRA_OECONF = "--libdir=${base_libdir}" 
 
 PACKAGES += "pam-google-authenticator"
-FILES_pam-google-authenticator = "${base_libdir}/security/pam_google_authenticator.so"
+FILES:pam-google-authenticator = "${base_libdir}/security/pam_google_authenticator.so"
 
 RDEPNEDS_pam-google-authenticator  = "libpam"
diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index 5b6dc99..fda2df4 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -11,17 +11,17 @@ SRC_URI = "git://github.com/cisco/libest;branch=main"
 DEPENDS = "openssl"
 
 #fatal error: execinfo.h: No such file or directory
-DEPENDS_append_libc-musl = " libexecinfo"
+DEPENDS:append:libc-musl = " libexecinfo"
 
 inherit autotools-brokensep
 
 EXTRA_OECONF = "--disable-pthreads --with-ssl-dir=${STAGING_LIBDIR}"
 
 CFLAGS += "-fcommon"
-LDFLAGS_append_libc-musl = " -lexecinfo"
+LDFLAGS:append:libc-musl = " -lexecinfo"
 
 S = "${WORKDIR}/git"
 
 PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
 
-FILES_${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
+FILES:${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
diff --git a/recipes-security/libgssglue/libgssglue_0.4.bb b/recipes-security/libgssglue/libgssglue_0.4.bb
index 88c58ed..3085ee6 100644
--- a/recipes-security/libgssglue/libgssglue_0.4.bb
+++ b/recipes-security/libgssglue/libgssglue_0.4.bb
@@ -33,11 +33,11 @@ SRC_URI[md5sum] = "5ce81940965fa68c7635c42dcafcddfe"
 SRC_URI[sha256sum] = "bb47b2de78409f461811d0db8595c66e6631a9879c3621a35e4434b104ee52f5"
 
 # gssglue can use krb5, spkm3... as gssapi library, configurable
-RRECOMMENDS_${PN} += "krb5"
+RRECOMMENDS:${PN} += "krb5"
 
 inherit autotools
 
-do_install_append() {
+do_install:append() {
     # install some docs
     install -d -m 0755 ${D}${docdir}/${BPN}
     install -m 0644 ${S}/AUTHORS ${S}/ChangeLog ${S}/NEWS ${S}/README ${D}${docdir}/${BPN}
diff --git a/recipes-security/mfa/python3-privacyidea_3.5.2.bb b/recipes-security/mfa/python3-privacyidea_3.5.2.bb
index cd0acf8..a4ab59d 100644
--- a/recipes-security/mfa/python3-privacyidea_3.5.2.bb
+++ b/recipes-security/mfa/python3-privacyidea_3.5.2.bb
@@ -10,31 +10,31 @@ SRC_URI[sha256sum] = "26aeb0d353af1f212c4df476202516953c20f7f31566cfe0b67cbb553d
 
 inherit pypi setuptools3
 
-do_install_append () {
+do_install:append () {
     #install ${D}/var/log/privacyidea
 
     rm -fr ${D}${libdir}/${PYTHON_DIR}/site-packages/tests
 }
 
 USERADD_PACKAGES = "${PN}"
-GROUPADD_PARAM_${PN} = "--system privacyidea"
-USERADD_PARAM_${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
+GROUPADD_PARAM:${PN} = "--system privacyidea"
+USERADD_PARAM:${PN} = "--system -g privacyidea -o -r -d /opt/${BPN}  \
     --shell /bin/false privacyidea"
 
-FILES_${PN} += " ${datadir}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
-
-RDEPENDS_${PN} += " bash perl freeradius-mysql freeradius-utils"
-
-RDEPENDS_${PN} += "python3 python3-alembic python3-babel python3-backports-functools-lru-cache python3-bcrypt"
-RDEPENDS_${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
-RDEPENDS_${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
-RDEPENDS_${PN} += "python3-ecdsa  python3-flask python3-flask-babel python3-flask-migrate"
-RDEPENDS_${PN} += "python3-flask-script python3-flask-sqlalchemy python3-flask-versioned"
-RDEPENDS_${PN} += "python3-future python3-httplib2 python3-huey python3-idna python3-ipaddress"
-RDEPENDS_${PN} += "python3-itsdangerous python3-jinja2 python3-ldap python3-lxml python3-mako"
-RDEPENDS_${PN} += "python3-markupsafe python3-netaddr python3-oauth2client python3-passlib python3-pillow"
-RDEPENDS_${PN} += "python3-pyasn1 python3-pyasn1-modules python3-pycparser python3-pyjwt python3-pymysql"
-RDEPENDS_${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor python3-gnupg"
-RDEPENDS_${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
-RDEPENDS_${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
-RDEPENDS_${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"
+FILES:${PN} += " ${datadir}/etc/privacyidea/* ${datadir}/lib/privacyidea/*"
+
+RDEPENDS:${PN} += " bash perl freeradius-mysql freeradius-utils"
+
+RDEPENDS:${PN} += "python3 python3-alembic python3-babel python3-backports-functools-lru-cache python3-bcrypt"
+RDEPENDS:${PN} += "python3-beautifulsoup4 python3-cbor2 python3-certifi python3-cffi python3-chardet"
+RDEPENDS:${PN} += "python3-click python3-configobj python3-croniter python3-cryptography python3-defusedxml"
+RDEPENDS:${PN} += "python3-ecdsa  python3-flask python3-flask-babel python3-flask-migrate"
+RDEPENDS:${PN} += "python3-flask-script python3-flask-sqlalchemy python3-flask-versioned"
+RDEPENDS:${PN} += "python3-future python3-httplib2 python3-huey python3-idna python3-ipaddress"
+RDEPENDS:${PN} += "python3-itsdangerous python3-jinja2 python3-ldap python3-lxml python3-mako"
+RDEPENDS:${PN} += "python3-markupsafe python3-netaddr python3-oauth2client python3-passlib python3-pillow"
+RDEPENDS:${PN} += "python3-pyasn1 python3-pyasn1-modules python3-pycparser python3-pyjwt python3-pymysql"
+RDEPENDS:${PN} += "python3-pyopenssl python3-pyrad python3-dateutil python3-editor python3-gnupg"
+RDEPENDS:${PN} += "python3-pytz python3-pyyaml python3-qrcode python3-redis python3-requests python3-rsa"
+RDEPENDS:${PN} += "python3-six python3-smpplib python3-soupsieve python3-soupsieve "
+RDEPENDS:${PN} += "python3-sqlalchemy python3-sqlsoup python3-urllib3 python3-werkzeug"
diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncrack/ncrack_0.7.bb
index ba26965..8b221e5 100644
--- a/recipes-security/ncrack/ncrack_0.7.bb
+++ b/recipes-security/ncrack/ncrack_0.7.bb
@@ -15,4 +15,4 @@ inherit autotools-brokensep
 
 S = "${WORKDIR}/git"
 
-INSANE_SKIP_${PN} = "already-stripped"
+INSANE_SKIP:${PN} = "already-stripped"
diff --git a/recipes-security/nikto/nikto_2.1.6.bb b/recipes-security/nikto/nikto_2.1.6.bb
index 615cc30..242f3ac 100644
--- a/recipes-security/nikto/nikto_2.1.6.bb
+++ b/recipes-security/nikto/nikto_2.1.6.bb
@@ -111,7 +111,7 @@ do_install() {
     install -m 0644 docs/nikto_manual.html    ${D}${datadir}/doc/nikto
 }
 
-RDEPENDS_${PN} = "perl libnet-ssleay-perl libwhisker2-perl \
+RDEPENDS:${PN} = "perl libnet-ssleay-perl libwhisker2-perl \
     perl-module-getopt-long perl-module-time-local \
     perl-module-io-socket perl-module-overloading \
     perl-module-base perl-module-b perl-module-bytes"
diff --git a/recipes-security/opendnssec/opendnssec_2.1.9.bb b/recipes-security/opendnssec/opendnssec_2.1.9.bb
index 2b79609..8e36812 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.9.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.9.bb
@@ -27,8 +27,8 @@ PACKAGECONFIG[mysql] = "--with-mysql=yes, , mariadb, mariadb"
 PACKAGECONFIG[readline]  = "--with-readline, --without-readline, readline"
 PACKAGECONFIG[unwind] = "--with-libunwind, --without-libunwind"
 
-do_install_append () {
+do_install:append () {
     rm -rf ${D}${localstatedir}/run
 }
 
-RDEPENDS_${PN} = "softhsm"
+RDEPENDS:${PN} = "softhsm"
diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index 3c04141..55a0dca 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -24,7 +24,7 @@ do_install() {
 #   install: cannot change ownership of '.../sbin/paxctl': \
 #   Operation not permitted
 # Drop '--owner 0 --group 0' to fix the issue.
-do_install_class-native() {
+do_install:class-native() {
 	local PROG=paxctl
 	install -d ${D}${base_sbindir}
 	install -d ${D}${mandir}/man1
@@ -33,6 +33,6 @@ do_install_class-native() {
 }
 
 # Avoid QA Issue: No GNU_HASH in the elf binary
-INSANE_SKIP_${PN} = "ldflags" 
+INSANE_SKIP:${PN} = "ldflags" 
 
 BBCLASSEXTEND = "native"
diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/recipes-security/redhat-security/redhat-security_1.0.bb
index 0d70dc6..d6d4cea 100644
--- a/recipes-security/redhat-security/redhat-security_1.0.bb
+++ b/recipes-security/redhat-security/redhat-security_1.0.bb
@@ -37,4 +37,4 @@ do_install() {
 	install -m 0755 ${WORKDIR}/selinux-ls-unconfined.sh    ${D}${bindir}
 }
 
-RDEPENDS_${PN} = "file libcap-ng procps findutils"
+RDEPENDS:${PN} = "file libcap-ng procps findutils"
diff --git a/recipes-security/sssd/sssd_2.5.1.bb b/recipes-security/sssd/sssd_2.5.1.bb
index 9205843..1c77480 100644
--- a/recipes-security/sssd/sssd_2.5.1.bb
+++ b/recipes-security/sssd/sssd_2.5.1.bb
@@ -6,9 +6,9 @@ LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 DEPENDS = "acl attr openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
-DEPENDS_append = " libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent bind p11-kit"
+DEPENDS:append = " libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent bind p11-kit"
 
-DEPENDS_append_libc-musl = " musl-nscd"
+DEPENDS:append:libc-musl = " musl-nscd"
 
 # If no crypto has been selected, default to DEPEND on nss, since that's what
 # sssd will pick if no active choice is made during configure
@@ -69,7 +69,7 @@ EXTRA_OECONF += " \
     --with-pid-path=/run \
 "
 
-do_configure_prepend() {
+do_configure:prepend() {
     mkdir -p ${AUTOTOOLS_AUXDIR}/build
     cp ${STAGING_DATADIR_NATIVE}/gettext/config.rpath ${AUTOTOOLS_AUXDIR}/build/
 
@@ -77,7 +77,7 @@ do_configure_prepend() {
     sed -i -e "s#\$sss_extra_libdir##" ${S}/src/external/libresolv.m4
 }
 
-do_compile_prepend () {
+do_compile:prepend () {
      echo '#define NSUPDATE_PATH "${bindir}"' >> ${B}/config.h
 }
 do_install () {
@@ -98,18 +98,18 @@ do_install () {
     rm -f ${D}${systemd_system_unitdir}/sssd-secrets.*
 }
 
-pkg_postinst_ontarget_${PN} () {
+pkg_postinst_ontarget:${PN} () {
 if [ -e /etc/init.d/populate-volatile.sh ] ; then
     ${sysconfdir}/init.d/populate-volatile.sh update
 fi
     chown ${SSSD_UID}:${SSSD_GID} ${sysconfdir}/${BPN}/${BPN}.conf
 }
 
-CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
+CONFFILES:${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
 
 INITSCRIPT_NAME = "sssd"
 INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
-SYSTEMD_SERVICE_${PN} = " \
+SYSTEMD_SERVICE:${PN} = " \
     ${@bb.utils.contains('PACKAGECONFIG', 'autofs', 'sssd-autofs.service sssd-autofs.socket', '', d)} \
     ${@bb.utils.contains('PACKAGECONFIG', 'curl', 'sssd-kcm.service sssd-kcm.socket', '', d)} \
     ${@bb.utils.contains('PACKAGECONFIG', 'infopipe', 'sssd-ifp.service ', '', d)} \
@@ -124,10 +124,10 @@ SYSTEMD_SERVICE_${PN} = " \
 "
 SYSTEMD_AUTO_ENABLE = "disable"
 
-FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
-FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
+FILES:${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
+FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 
 # The package contains symlinks that trip up insane
-INSANE_SKIP_${PN} = "dev-so"
+INSANE_SKIP:${PN} = "dev-so"
 
-RDEPENDS_${PN} = "bind bind-utils dbus libldb libpam"
+RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
-- 
2.30.2

