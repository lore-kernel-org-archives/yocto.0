Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18050CD37A7
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:03 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3986.1778203557693449426
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:25:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Ne6M0cqY;
 spf=pass (domain: konsulko.com, ip: 209.85.210.169, mailfrom: tim.orling@konsulko.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-834f1075805so978799b3a.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203557; x=1778808357; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=QB33nWSanFCH1RfOliGmxlzvL6XDwsqtCBwGNRJohDo=;
        b=Ne6M0cqYtBgDVsMCViA84jcvXcL/RaAlzvVtOs9Nd0i3h+WfsXesqPlJBzO6Vb7uk1
         NQJEc5FAnAdEI9BHzt/1CS1W3LcZg44reKm05RhFyxqooRxi68YXsLY14Ub17fdU2jPv
         l+7czFg0CtN1VPwgDrrYg5H2OtLfsr458rAls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203557; x=1778808357;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QB33nWSanFCH1RfOliGmxlzvL6XDwsqtCBwGNRJohDo=;
        b=rxi3pjFOwBqo57NDJ9ujQQZhRqNnxeHwXt923t/WQuRyWpuGZxyUKrfQIf/A+AO2QH
         s0vlWHXId1CvHWZXvvmf8rb2uSyK3TtUyjmNUnt3wZrmfoVcOQydLRD0OdHVFOYFyyi8
         QUPHRIPLKeHZ5RC3LCAIjTF+BX2y2GnvyU+XNyqhZR7Ikdxx3PV/RxqSln0zw28GRfsG
         OhH4zpH9gY9p/chB2cYkle644g3bcrwB6+39eZyoxB3YpA5xylAMgjRxFT8Jjlf76d5n
         nOspFl5ZpAKuT2EMUKTKBgReKBPOi2HNlVaJ40JlJ3uBlp7QdAHpJjeiHl7wmB12q7ou
         ciUw==
X-Forwarded-Encrypted: i=1; AFNElJ+wfVA5YJg/Uco+MD8piPOS5SQ4vSG8vxVh6B8jZDcyfYLV+R27VemPI9/ie8j/EGFJZXw3VQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy3aAtZwX4jHwOITVnlug7SjY+PRFeYXl5RdMafZny9RqkzmuIB
	4nhhPtEKOo9X93hVLLMqd89960xv7OtKMtRRF5J7+RNZ29PEMfsyAWCxmyhTFdRHYHa79YNq594
	evUXJ
X-Gm-Gg: AeBDietGzj9V2u7LvuTpKcP0/4OP18juLovm61WxZndnPRNKimLZ4PNPkzCV+aZPjuJ
	+xdRscDodpq+g1Ui7eO8G/ir+q6yh4Pu6c9R8SZGJ2nyyLSPNUdBdIhT5M/dpDylvXgu2C7smx+
	aCDXTAvZwbE6eeq+OmcKt8/CLJjugKooWpCrLqCdc7/UlaHYuPfa1CtmflZnqCVTplsgjVtsbnM
	Yac8aC5d4Jnzk3GUbjwYitgAzmghVS6ecnnnRomtvMI7VwLBOcQILx0fF2QYTbP03jHFJVk+65F
	aGfhDeB2p9m7L/uczYdA9u+Hd8B0ah4sJMAYxgRUX2eRAhP0oOy96Win2CXXsa9z9bbwFecxC/7
	5rtA7hCJQOhkISPWtfXI32k+hYhNgZbom4E19zziphBcPVK61XfxlldOCRHqDjCWiH69YlEmOgV
	D8bxwBtHglkqLiBTA1d+LURmj+OCYKdma7OxAanhky8oO25kEnTK2ekhvaXTLwRNVqTdDcyvo/w
	w==
X-Received: by 2002:a05:6a00:4214:b0:832:e65:ddcd with SMTP id d2e1a72fcca58-83a5e350145mr10365061b3a.45.1778203557046;
        Thu, 07 May 2026 18:25:57 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-83965945c1bsm10636261b3a.15.2026.05.07.18.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:56 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 00/11] Implement 'containers' jobs
Date: Thu,  7 May 2026 18:25:29 -0700
Message-ID: <cover.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66501

From: Tim Orling <tim.orling@konsulko.com>

This series contains the 'yocto-autobuilder-helper' patches to enable:
* building, testing and publishing of 'vcontainer-tarball'
  - the tarball is checked to see if a newer version exists and if so
    extracts the new version before testing
  - vcontainer-tests, vdkr-tests and vpdmn-tests are run as individual
    jobs
* building and pushing containers from:
  - meta-virtualization
  - meta-yocto-containers-demo
* containers are pushed when the push_containers boolean is set in the
  AutoBuilder UI
  - regstries are set with CONTAINER_REGISTRIES variable
* added getconfigdict() to scripts/utils to allow container names to mapped
  from recipe name to a more commonly used upstream container name (e.g.
  app-container-python -> python)
* authentication uses local user credentials (e.g. ~/.docker/config.json
  or .../auth.json for podman)
* containers are tagged with PV_MAJOR, PV_MAJOR.PV_MINOR, DISTRO_CODENAME
  and yocto-x.y release (yocto-x.y.z for release builds).

Additional features, such as container signing and attaching SLSA provenance
attestations will come in a future series, once this initial functionality
is agreed upon an stable.

This series depends on a related series for 'yocto-autobuilder2'.

The following changes since commit bfc6a42aa4df89878a1b0d950c7d0146ce20672c:

  publish-artefacts: Update to include newer machines (2026-05-06 17:33:36 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/yocto-autobuilder-helper contrib/timo/containers-upstream
  https://git.yoctoproject.org/yocto-autobuilder-helper/log/?h=contrib/timo/containers-upstream

for you to fetch changes up to 601c281165450b2be14de46bb9601e82229ca5f6:

  config.json: containers-library: add mosquitto and valkey demos (2026-05-07 12:53:00 -0700)

----------------------------------------------------------------

Tim Orling (11):
  scripts/utils: fix stale extraction dir when tarball is updated
  scripts/utils: warn and force re-download for HTTPS sources without
    SHA256
  config.json: add sha256sum for BUILDTOOLS URLs
  scripts/utils: add getconfigdict() for dict-type config values
  scripts: add vcontainer-tarball setup, integration, and publishing
  config.json: add vcontainer-tarball build target
  config.json: add 'containers-' build jobs
  scripts: add run-vcontainer-tests for meta-virtualization
  config.json: add vcontainer-tests, vdkr-tests, vpdmn-tests jobs
  scripts: add container registry push, auth, tagging, runtime selection
  config.json: containers-library: add mosquitto and valkey demos

 config.json                  | 151 ++++++++++++++++++++++++++++++--
 scripts/publish-artefacts    |   5 ++
 scripts/run-config           | 147 +++++++++++++++++++++++++++++++
 scripts/run-vcontainer-tests | 164 +++++++++++++++++++++++++++++++++++
 scripts/shared-repo-unpack   |   1 +
 scripts/utils.py             | 109 +++++++++++++++++------
 6 files changed, 545 insertions(+), 32 deletions(-)
 create mode 100755 scripts/run-vcontainer-tests

-- 
2.43.0


