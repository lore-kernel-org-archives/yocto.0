Return-Path: <denisova.olga.k@yandex.ru>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9863C369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 16:58:47 +0000 (UTC)
Received: from forward101a.mail.yandex.net (forward101a.mail.yandex.net [178.154.239.84])
 by mx.groups.io with SMTP id smtpd.web10.45465.1745341123756285809
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 09:58:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@yandex.ru header.s=mail header.b=lz0ww6Y/;
 spf=pass (domain: yandex.ru, ip: 178.154.239.84, mailfrom: denisova.olga.k@yandex.ru)
Received: from mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net [IPv6:2a02:6b8:c15:2ea0:0:640:5268:0])
	by forward101a.mail.yandex.net (Yandex) with ESMTPS id C7AB7608F5;
	Tue, 22 Apr 2025 19:58:40 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id VwRdYq5LjCg0-HrnZE60e;
	Tue, 22 Apr 2025 19:58:40 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
	t=1745341120; bh=VY3CwHIfRm1BicUmgaN84Xky2vlDJkkJjEG+jliok88=;
	h=Message-Id:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=lz0ww6Y/V5dTi+EuyaqxGfgv4+31uVohTwCZealn07/pzHB5Qs0x1DMDOXqQx9t/Z
	 jts6lwi8u5VewzXRtViLpPKciV/ThFesI8sIN8+OaOpzgcuCzuHkXx5fqVEgDoC/cZ
	 QyuBbHqiubMySaMym+h0IVu9shfDFT3wVjoNYCMg=
Authentication-Results: mail-nwsmtp-smtp-production-main-92.vla.yp-c.yandex.net; dkim=pass header.i=@yandex.ru
From: denisova-ok <denisova.olga.k@yandex.ru>
To: yocto@lists.yoctoproject.org
Cc: gavrilov.andrew1999@yandex.ru,
	tinyakovx@gmail.com,
	sider123456789101112131415@gmail.com,
	Olga Denisova <denisova.olga.k@yandex.ru>
Subject: [bitbake][PATCH 1/3] bitbake-worker: support file_mirror_map transfer from runqueue for optimized cache fetch
Date: Tue, 22 Apr 2025 19:58:20 +0300
Message-Id: <20250422165822.92784-2-denisova.olga.k@yandex.ru>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
References: <20250422165822.92784-1-denisova.olga.k@yandex.ru>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 16:58:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65227

From: Olga Denisova <denisova.olga.k@yandex.ru>

This change is part of the patchset that introduces index file support fo=
r SSTATE_MIRRORS. In this specific part, bitbake-worker is modified to re=
ceive and forward the file_mirror_map structure provided by the runqueue.

The file_mirror_map contains information about which cache files are avai=
lable
on which SSTATE_MIRRORS, allowing downstream fetch logic to make informed=
 decisions when retrieving sstate artifacts.

Signed-off-by: denisova-ok <denisova.olga.k@yandex.ru>
---
 bin/bitbake-worker | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/bin/bitbake-worker b/bin/bitbake-worker
index 35fa1ab62b..15bbf2e30e 100755
--- a/bin/bitbake-worker
+++ b/bin/bitbake-worker
@@ -165,6 +165,8 @@ def fork_off_task(cfg, data, databuilder, workerdata,=
 extraconfigdata, runtask):
     layername =3D runtask['layername']
     taskdepdata =3D runtask['taskdepdata']
     quieterrors =3D runtask['quieterrors']
+    filemirror =3D runtask.get('filemirror', {})
+
     # We need to setup the environment BEFORE the fork, since
     # a fork() or exec*() activates PSEUDO...
=20
@@ -279,6 +281,8 @@ def fork_off_task(cfg, data, databuilder, workerdata,=
 extraconfigdata, runtask):
                 the_data =3D databuilder.parseRecipe(fn, appends, layern=
ame)
                 the_data.setVar('BB_TASKHASH', taskhash)
                 the_data.setVar('BB_UNIHASH', unihash)
+                the_data.setVar('FILE_MIRROR_MAP', filemirror)
+
                 bb.parse.siggen.setup_datacache_from_datastore(fn, the_d=
ata)
=20
                 bb.utils.set_process_name("%s:%s" % (the_data.getVar("PN=
"), taskname.replace("do_", "")))
--=20
2.34.1


