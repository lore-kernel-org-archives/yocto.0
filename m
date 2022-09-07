Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DD3CC38145
	for <webhook@archiver.kernel.org>; Wed,  7 Sep 2022 21:40:15 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web10.1437.1662586813371605672
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 14:40:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gherzan.com header.s=fm3
 header.b=e906XmXl;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id BA9D95C0192;
	Wed,  7 Sep 2022 17:40:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 07 Sep 2022 17:40:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1662586812; x=1662673212; bh=Wd
	koVoceNQRFVfq4C+peakdOxsshK6Ixd1+cjLmEYls=; b=e906XmXly9QTvgG1Om
	X73gNXdtsFL6r+O0L/sD8hFvC4+OlfdRzzUfvmH/p8vkiK47Ry0jgG0Cs+Mm9l3e
	pf9spBD9KgYUq8jCk+GYOD3onsaidsi9m7Rw8/eqqpETbwLuIcWn/b1jJP8Kb6KK
	HBSjNbYSUmt5dTJnfN2JrQy6xgnGnNZDeSzrTY8ao+KHhk9pNf1olYJLn4glzXA+
	mnwa2TMSTnj95NJ91pBGV6wQnhWGIk/x7ukAAn0oLDdSY8AKOsUIT7luc80OnK86
	eCxIln0uqL5DuTRone+BijLr8m8oIU29EYfXM3s5tgqaJ+AiD8ipeYb+g6ICXOyb
	KN5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1662586812; x=1662673212; bh=WdkoVoceNQRFV
	fq4C+peakdOxsshK6Ixd1+cjLmEYls=; b=KU5UKpzHcNWJQDTSLa1w8FtuSPOEZ
	ZIHAOxS8yGYQP3jIX74X5iIvOjlPh7bk/0IVpKB2YvJ+6V2tPMv+yeVamfPBF+HE
	2mwRuEv4k4X4zZafu3OS4552DqEAlAhRTlDEcqF/gHQB1CcuSxFcXP/OK6D6phvx
	7f7nX7X+bPNyn9DBm8A94lsybovWaJF2spzWiNjHlFauAXUYRxeZtsDtt1AI4VkY
	fUYQFrfb015gBPIKRXQ2dFaNPnc/qGMZtc0r7sIAaXqsFzyFBFzD/oyG1Sj7QKfX
	Z7+lMuFAmOGRF/tPkagHgO2RrbUiK9zHeHFf5bqHJI9sqyPqxezEI3D8g==
X-ME-Sender: <xms:vA8ZYw3W40ASULo4kj1vG73-upKT7EJW7CVIeAC4HjtgE67tuxuh9A>
    <xme:vA8ZY7HtQzVSdKBhCPhqdLEyo1t1DlYviz560lwhMKCVrLRwVDj2lrKTBPxm5Q7F4
    ClRaxV9liql8EiZbFQ>
X-ME-Received: 
 <xmr:vA8ZY46SBUrmtPhy0IU6mqJaY_blzN0nF7PjEA-YS9UQoYQXg2_7KMYy0f77aZtUL0AydNW_hM-cg0xwLOCIC7tWpafJg65z6U7I6mIHo1ckZVvoa4G7AqVi>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfedtuddgtdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeetnhgurhgvihcuifhhvghriigrnhcuoegrnhgurhgvihes
    ghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepjefhvefhgefgffejgeelke
    ejleeiffejgffgkeeggfffgfffieeffeeghefhtdffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvghisehghhgvrhiirghnrdgtoh
    hm
X-ME-Proxy: <xmx:vA8ZY51m1gliz78DXK18K_Q9PN6qhvX_EL_rqfUAI17OphkMO1uKkw>
    <xmx:vA8ZYzGDesub-xNYEdk9hWhaLlLp5lmjO-k2KJtGlEDMZRhTQ0NtDQ>
    <xmx:vA8ZYy9-GqXlXudGOjQnR9p4wy-7G81i-YdJzUBq_2SJtT_KeMFPxQ>
    <xmx:vA8ZY5PIZuEN2dSb4exmqIFEtkPluoRA8Tg6ixPcy-sgt7vGCMEHdA>
Feedback-ID: i68994715:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Sep 2022 17:40:12 -0400 (EDT)
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Cc: andrei@gherzan.com,
	Andrei Gherzan <andrei.gherzan@huawei.com>
Subject: [meta-raspberrypi][PATCH 3/4] ci: Add jobs for multiconfig builds
Date: Wed,  7 Sep 2022 23:39:58 +0200
Message-Id: <20220907213959.1115886-3-andrei@gherzan.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907213959.1115886-1-andrei@gherzan.com>
References: <20220907213959.1115886-1-andrei@gherzan.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Sep 2022 21:40:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58004

From: Andrei Gherzan <andrei.gherzan@huawei.com>

This also fixes a small typo in the normal build matrix.

Signed-off-by: Andrei Gherzan <andrei.gherzan@huawei.com>
---
 .github/workflows/yocto-builds.yml | 68 +++++++++++++++++++++++++++++-
 1 file changed, 67 insertions(+), 1 deletion(-)

diff --git a/.github/workflows/yocto-builds.yml b/.github/workflows/yocto-builds.yml
index 824745c..0f2dcf5 100644
--- a/.github/workflows/yocto-builds.yml
+++ b/.github/workflows/yocto-builds.yml
@@ -48,7 +48,7 @@ jobs:
             .github/workflows/docker-images/yocto-builder/**
             .github/workflows/docker-images/*.sh
             .github/workflows/yocto-builds.yml
-            classes/**'
+            classes/**
             conf/**
             dynamic-layers/**
             files/**
@@ -84,3 +84,69 @@ jobs:
       - name: Cleanup dangling docker images
         uses: ./.github/actions/docker-clean-dangling
         if: always()
+
+  build-multiconfig:
+    strategy:
+      fail-fast: true
+      matrix:
+        machine:
+          - raspberrypi4
+        image: ['mc:raspberrypi:rpi-test-image']
+        distro: [poky]
+    runs-on: [self-hosted, Linux]
+    name: ${{ matrix.machine }}/${{ matrix.image }}/poky/systemd
+    env:
+      DL_DIR: /var/lib/ci/yocto/downloads
+      SSTATE_DIR: /var/lib/ci/yocto/sstate
+    steps:
+      - name: Checkout the code
+        uses: actions/checkout@v2
+        with:
+          fetch-depth: 0
+      - name: Define Yocto build files
+        id: changed-files-specific
+        uses: tj-actions/changed-files@v24
+        with:
+          files: |
+            .github/actions/**
+            .github/workflows/docker-images/yocto-builder/**
+            .github/workflows/docker-images/*.sh
+            .github/workflows/yocto-builds.yml
+            classes/**
+            conf/**
+            dynamic-layers/**
+            files/**
+            lib/**
+            recipes-**
+            wic/**
+      - name: Build a temporary yocto-builder image
+        uses: ./.github/actions/docker-build
+        with:
+          docker_image: yocto-builder
+          id: ${{ github.event.number }}
+        if: steps.changed-files-specific.outputs.any_changed == 'true'
+      - name: Build the image
+        run: |
+          docker run --rm \
+            -v "$GITHUB_WORKSPACE:/work:ro" \
+            -v "$DL_DIR:$DL_DIR:rw" \
+            -v "$SSTATE_DIR:$SSTATE_DIR:rw" \
+            --env "BASE_REF=$GITHUB_BASE_REF" \
+            --env "MACHINE=${{ matrix.machine }}" \
+            --env "DISTRO=${{ matrix.distro }}" \
+            --env "IMAGE=${{ matrix.image }}" \
+            --env "DL_DIR=$DL_DIR" \
+            --env "SSTATE_DIR=$SSTATE_DIR" \
+            --env "BBMULTICONFIG=raspberrypi\ raspberrypi3" \
+            --env "BB_ENV_PASSTHROUGH_ADDITIONS=BBMULTICONFIG" \
+            "yocto-builder-${{ github.event.number }}" \
+            /entrypoint-build.sh
+        if: steps.changed-files-specific.outputs.any_changed == 'true'
+      - name: Cleanup temporary docker image
+        uses: ./.github/actions/docker-clean-image
+        with:
+          docker_image: yocto-builder-${{ github.event.number }}
+        if: always()
+      - name: Cleanup dangling docker images
+        uses: ./.github/actions/docker-clean-dangling
+        if: always()
-- 
2.25.1


