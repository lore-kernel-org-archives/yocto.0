Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AA1C77B7F
	for <webhook@archiver.kernel.org>; Mon,  8 May 2023 13:21:59 +0000 (UTC)
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
 by mx.groups.io with SMTP id smtpd.web11.107186.1683552112053102531
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 06:21:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm1 header.b=LeKKnAQC;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.225, mailfrom: fm-256628-20230508132149f9451ef68bbb530890-5psmuj@rts-flowmailer.siemens.com)
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20230508132149f9451ef68bbb530890
        for <yocto@lists.yoctoproject.org>;
        Mon, 08 May 2023 15:21:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=ssOiG5IDIiEZrxHgNqvQfo2ng97BD8MrGIhLQckQuFI=;
 b=LeKKnAQChQmSHS2o9Kj2woxE/XIggjCSgPMV3u/PnGbPyVAsox6XBwBtSfadWY1yySeeld
 HGAvuA19zwD2Uwkx+vPfl7gufDvkLRRJ67b4AytsX1V0Lj03CyqUMRbwD+H5Ik7SoFCvV7PN
 y9G1+svQuf6NuzWeQikY8dgY3vhjg=;
From: Peter Marko <peter.marko@siemens.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>
Subject: [meta-security][PATCH] tpm2-tss: upgrade to 3.2.2 to fix CVE-2023-22745
Date: Mon,  8 May 2023 15:20:54 +0200
Message-Id: <20230508132054.427401-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 13:21:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59901

Changelog:
  3.2.2
    A buffer overflow in tss2-rc as CVE-2023-22745.
    The drv layer in tss2-rc should have been the policy layer.
    Spec deviation in Fapi_GetDescription caused description to be NULL when it should be empty string.
    This is API breaking but considered a bug since it deviated from the FAPI spec.
    FAPI: undefined reference to curl_url_strerror when using curl less than 7.80.0.
  3.2.1
    Makefile.am: make all EXTRA_DIST includes unconditional to fix pristine tars
    Fix usage of NULL pointer if Esys_TR_SetAuth is calles with ESYS_TR_NONE.
    Store VERSION into the release tarball.
    fapi: fix usage of policy_nv with a TPM nv index.
    Tss2_Sys_Flushcontext: flushHandle was encoded as a handleArea handle and not as parameter one, this affected the contents of cpHash.
    linking tcti for libtpms against tss2-tctildr. It should be linked against tss2-mu.
    build: Remove erroneous trailing comma in linker option. Bug #2391.
    esys: fix allow usage of HMAC sessions for Esys_TR_FromTPMPublic.
    test: build with opaque FILE structure like in musl libc.
    Usage of a second profile in a path was not possible because the default profile was always used.
    FAPI: Fix provisioning if auth value for storage hierarchy was set.
    FAPI: Fix recreation of EK.
    FAPI: Fix usage of lockout auth value in Fapi_Provison.
    FAPI: Fix loading of key in policy execution.
    FAPI: Fix Fapi_ChangeAuth updates on hierarchy objects not being reflected across profiles.
    Esys_PCR_SetAuthValue: remembers the auth like other SetAutg ESAPI functions.
    tests: esys-pcr-auth-value.int moved to destructive tests.
    FAPI: Fix double free if keystore is corrupted.
    Spec deviation in Fapi_GetDescription caused description to be NULL when it should be empty string.
        This is API breaking but considered a bug since it deviated from the FAPI spec.

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 .../tpm2-tss/{tpm2-tss_3.2.0.bb => tpm2-tss_3.2.2.bb}      | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_3.2.0.bb => tpm2-tss_3.2.2.bb} (91%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
similarity index 91%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
index 8440bb9..9b76c2f 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
            file://fixup_hosttools.patch \
            "
 
-SRC_URI[sha256sum] = "48305e4144dcf6d10f3b25b7bccf0189fd2d1186feafd8cd68c6b17ecf0d7912"
+SRC_URI[sha256sum] = "ba9e52117f254f357ff502e7d60fce652b3bfb26327d236bbf5ab634235e40f1"
 
 inherit autotools pkgconfig systemd useradd
 
@@ -26,11 +26,6 @@ USERADD_PACKAGES = "${PN}"
 GROUPADD_PARAM:${PN} = "--system tss"
 USERADD_PARAM:${PN} = "--system -M -d /var/lib/tpm -s /bin/false -g tss tss"
 
-do_configure:prepend() {
-    # do not extract the version number from git
-    sed -i -e 's/m4_esyscmd_s(\[git describe --tags --always --dirty\])/${PV}/' ${S}/configure.ac
-}
-
 do_install:append() {
     # Remove /run as it is created on startup
     rm -rf ${D}/run
-- 
2.30.2


