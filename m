Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56363C433EF
	for <webhook@archiver.kernel.org>; Sun, 29 May 2022 02:34:30 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
 [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web11.21485.1653791668241226630
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 May 2022 19:34:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eln1jyHC;
 spf=pass (domain: gmail.com, ip: 209.85.208.43,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id n28so798512edb.9
        for <yocto@lists.yoctoproject.org>;
 Sat, 28 May 2022 19:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kHqfFEsqcDR1EKqhY2vOXcYOv/BbfVssVUmUm4YEl6Y=;
        b=eln1jyHCTL1n2ziLhUjAobjlnWoIATb/jNAzlM9FWAEAoV0H7Gpgumh74H34ofmvky
         fEyZUfR2iQuBxMdos+CX6YtVZx5q40my5fS52Z5D/v7utysz3e0jciWmWqwLCiuN7RaF
         7DZRx7hCqVk4cWO67qE0CRvdYgcLL0CVPDGyz4a0EkkxwdhG5h1QnHHXSqy1Oc3fKS8J
         MfcSQYxGrWSBjCFY227Vl88555EGEXvUhDn/bC5VxHtu2RDQQMeMG467uyR1Ht/LFLMv
         xL0QxzQNuoERuD+3KzX8xiG3/blOZ2/InRY6AWXQAUs9IOZyCIZZmJ5ZL1goe78hvBfk
         HS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kHqfFEsqcDR1EKqhY2vOXcYOv/BbfVssVUmUm4YEl6Y=;
        b=yhWqYQWDoGsibyXZLCoIUMqtH8DDsSQHiGi9XeYLDRYzAD0PRW0TaKBzqNLWARgUTW
         ZZJjphX7KNETuH8Yf0isf0qENnLmvnU1YF6y6MNWK3VUKqwhldIM0fqwsh+u4MD2LZtE
         FWRtpnMq9nppextQhFAOpjONhGJ8esFmwUQlv3Ns9ygkROOLp2+nOpOW1JXjIVttj9Oj
         jn9shz9hQ6HunKFe3/mRUi1WM38Lz6fn8axNCvGnEGotWsuywdlOp8Z1tj+5uLFl+AlR
         9TdgJPQN+JuJ2PXKoQq15gNW36Izq+Q28WUXidXzlto4TwxkYRj6100xnJR0sFMnJFlk
         l5MQ==
X-Gm-Message-State: AOAM533kLAIAbeyIZ25Ze1W1m6eHWhU3lRR+pA/zyxT49Oh4znZX+gsN
	EE41olmRnsjeSbYvvtUxjJs=
X-Google-Smtp-Source: 
 ABdhPJx9271e9Q8HrJfQ5x5/pRfWzfEFd8jYsfpTVMRcz1gajXmJHH+5iTmJuSBuveSyArXGNM50zw==
X-Received: by 2002:a05:6402:b09:b0:42d:bd80:11ac with SMTP id
 bm9-20020a0564020b0900b0042dbd8011acmr4247212edb.244.1653791666720;
        Sat, 28 May 2022 19:34:26 -0700 (PDT)
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id
 k19-20020a50ce53000000b0042dc8dd59c7sm857201edj.51.2022.05.28.19.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 May 2022 19:34:26 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: openembedded-core@lists.openembedded.org
Cc: yocto@lists.yoctoproject.org,
	Martin Jansa <Martin.Jansa@gmail.com>
Subject: [PATCH] patch.py: make sure that patches/series file exists before
 quilt pop
Date: Sun, 29 May 2022 04:34:05 +0200
Message-Id: <20220529023405.1559372-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <16F2A60FF83FD211.22671@lists.openembedded.org>
References: <16F2A60FF83FD211.22671@lists.openembedded.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 29 May 2022 02:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57208

* Since quilt upgrade to 0.67 some recipes sometimes fail in do_patch with
  errors like:

  ERROR: Applying patch 'GPLv2.patch' on target directory '/OE/build/oe-core/tmp-glibc/work/qemux86_64-oe-linux/keymaps/1.0-r31'
  CmdError('quilt --quiltrc /OE/build/oe-core/tmp-glibc/work/qemux86_64-oe-linux/keymaps/1.0-r31/recipe-sysroot-native/etc/quiltrc push', 0, 'stdout:
  stderr: File series fully applied, ends at patch GPLv2.patch
  ')

* It affects only recipes with S = "${WORKDIR}", which wipe only
  ${S}/patches, because in other cases whole ${S} is wiped when
  do_unpack is re-executed.

* It was originally added in:
  https://git.openembedded.org/openembedded-core/commit/?id=5fe5e6a15f26f23f0c5b863fafad7a0d382a55e2

  since then it was extended to wipe whole ${S} when ${S} != ${WORKDIR} in:
  https://git.openembedded.org/openembedded-core/commit/?id=5fe5e6a15f26f23f0c5b863fafad7a0d382a55e2
  https://git.openembedded.org/openembedded-core/commit/?id=eccae514b71394ffaed8fc45dea7942152a334a1

  this is now causing issues to quilt-0.67 because it checks that
  ${S}/patches/series exists during 'quilt pop -a -f' which we call
  from QuiltTree.Clean to undo patches possibly already applied
  in ${S} in previous do_patch execution.

* There are couple recipes affected by this e.g. keymaps (.patch already
  removed in oe-core), makedevs (.patch removal sent to ML yesterday
  https://lists.openembedded.org/g/openembedded-core/message/166172),
  devmem2
  (https://lists.openembedded.org/g/openembedded-devel/message/97270), but
  there are other recipes with S = "${WORKDIR}" where you can trigger this
  e.g. by having a .patch file in DISTRO layer .bbappend (e.g. tzdata with
  webOS
  https://github.com/webosose/meta-webosose/blob/06e5298d9f5c47679b679081d9930f8d1c776142/meta-webos/recipes-extended/tzdata/tzdata.bbappend#L10)

  This do_patch issue is caused by:
  https://git.savannah.nongnu.org/cgit/quilt.git/commit/?id=8b39a960afcf45cd4f5804ae62b6b0656bdb191d
  introduced in kirkstone with:
  https://git.openembedded.org/openembedded-core/commit/?h=kirkstone&id=fa71afcee9ab42198c619333b77a15bd2ae02b20

  The shortest sequence to reproduce this is just
  bitbake keymaps -c patch
  bitbake keymaps -c unpack -f
  bitbake keymaps -c patch
  with
  https://git.openembedded.org/openembedded-core/commit/?id=17d981005a0c0c97702ad88602b7181b69bcc9eb
  reverted.

  And the change in quilt behavior is causing QuiltTree.Clean (quilt pop -a -f) in:
  https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/patch.py?id=17d981005a0c0c97702ad88602b7181b69bcc9eb#n601

  to silently fail with "No series file found" before undoing the
  patches in ${S} and then quilt push failing, because all the
  patches are _still_ applied in ${S}.

  Removing ".pc" doesn't help, because we really
  need quilt's help to undo the patches (in this case to delete COPYING
  file from WORKDIR before applying the .patch which tries to add it
  again), because do_unpack cannot just wipe S and start over (because S
  == WORKDIR) - nor selectively removing the files listed in SRC_URI,
  because COPYING file isn't listed there.

  Using skip_series_check in 'quilt pop' (partially reverting the change
  from upstream) does fix this as well and it's simple one line patch
  (just adding skip_series_check=1 in pop.in), but might be difficult
  to upstream, because it's this strange OE specific behavior that we
  remove 'patches' directory and then still need quilt pop to work.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta/lib/oe/patch.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/lib/oe/patch.py b/meta/lib/oe/patch.py
index 9034fcae03..95b915a6ab 100644
--- a/meta/lib/oe/patch.py
+++ b/meta/lib/oe/patch.py
@@ -598,6 +598,8 @@ class QuiltTree(PatchSet):
 
     def Clean(self):
         try:
+            # make sure that patches/series file exists before quilt pop to keep quilt-0.67 happy
+            open(os.path.join(self.dir, "patches","series"), 'a').close()
             self._runcmd(["pop", "-a", "-f"])
             oe.path.remove(os.path.join(self.dir, "patches","series"))
         except Exception:
-- 
2.35.1


