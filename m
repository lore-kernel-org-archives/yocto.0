Return-Path: <gowtham.sureshkumar@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD1C76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 17:39:36 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.165160.1680802775417596725
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 10:39:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: gowtham.sureshkumar@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B279C169E;
	Thu,  6 Apr 2023 10:40:18 -0700 (PDT)
Received: from e126345.arm.com (unknown [10.57.21.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4E2B3F73F;
	Thu,  6 Apr 2023 10:39:33 -0700 (PDT)
From: gowtham.sureshkumar@arm.com
To: yocto@lists.yoctoproject.org
Cc: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
Subject: [PATCH 0/2] Update parsec and parsec-tool recipes
Date: Thu,  6 Apr 2023 18:39:01 +0100
Message-Id: <20230406173903.23459-1-gowtham.sureshkumar@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 17:39:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59633

From: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>

The patches update parsec service to 1.2.0 and the parsec tool
to 0.6.0 releases. The RSA OAEP OEQA tests for parsec pkcs11
backend is disabled.

Gowtham Suresh Kumar (2):
  meta-parsec: Disable RSA-OAEP OEQA tests for Parsec PKCS11 backend
  parsec-service: Update parsec recipes to 1.2.0 and parsec-tool to
    0.6.0

 meta-parsec/lib/oeqa/runtime/cases/parsec.py  |   8 +-
 .../parsec-service/parsec-service-crates.inc  | 460 ++++++++++++++++++
 .../parsec-service/parsec-service_1.1.0.inc   | 223 ---------
 ...rvice_1.1.0.bb => parsec-service_1.2.0.bb} |  14 +-
 .../parsec-tool/parsec-tool-crates.inc        | 346 +++++++++++++
 .../parsec-tool/parsec-tool_0.5.4.inc         | 176 -------
 ...sec-tool_0.5.4.bb => parsec-tool_0.6.0.bb} |  10 +-
 7 files changed, 826 insertions(+), 411 deletions(-)
 create mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
 delete mode 100644 meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
 rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.bb => parsec-service_1.2.0.bb} (92%)
 create mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool-crates.inc
 delete mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.inc
 rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.5.4.bb => parsec-tool_0.6.0.bb} (68%)

--
2.17.1


