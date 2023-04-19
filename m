Return-Path: <peter.hoyes@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E97C77B73
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 16:01:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.41870.1681920054440694991
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 09:00:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: peter.hoyes@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6F8816F8;
	Wed, 19 Apr 2023 09:01:37 -0700 (PDT)
Received: from e125920.cambridge.arm.com (unknown [10.1.199.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A23B93F5A1;
	Wed, 19 Apr 2023 09:00:53 -0700 (PDT)
From: Peter Hoyes <peter.hoyes@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Hoyes <Peter.Hoyes@arm.com>
Subject: [meta-zephyr][PATCH 2/3] zephyr-core/scripts: Resolve West revisions to SHAs
Date: Wed, 19 Apr 2023 17:00:30 +0100
Message-Id: <20230419160031.457614-2-peter.hoyes@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230419160031.457614-1-peter.hoyes@arm.com>
References: <20230419160031.457614-1-peter.hoyes@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 16:01:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59734

From: Peter Hoyes <Peter.Hoyes@arm.com>

The West manifest in  Zephyr 3.3 contains a tag (instead of a SHA) for
zcbor [1]. OE standard practice is to always specifiy revisions using
SHAs, so in the Jinja template, use the new resolve_revision filter to
resolve any tags.

[1] https://github.com/zephyrproject-rtos/zephyr/pull/51219#discussion_r9=
98123145

Signed-off-by: Peter Hoyes <Peter.Hoyes@arm.com>
---
 meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja b/meta-=
zephyr-core/scripts/zephyr-kernel-src.inc.jinja
index e18fcf1..2a3faeb 100644
--- a/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
+++ b/meta-zephyr-core/scripts/zephyr-kernel-src.inc.jinja
@@ -5,7 +5,7 @@ SRCREV_FORMAT =3D "default"
=20
 SRCREV_default =3D "{{ ('v' ~ version) | resolve_revision(zephyr_url) }}=
"
 {% for project in projects -%}
-SRCREV_{{ project.name }} =3D "{{ project.revision }}"
+SRCREV_{{ project.name }} =3D "{{ project.revision | resolve_revision(pr=
oject.url) }}"
 {% endfor %}
 SRC_URI_ZEPHYR ?=3D "{{ zephyr_url | git_url_to_bitbake }}"
 {%- for project in projects %}
--=20
2.34.1


