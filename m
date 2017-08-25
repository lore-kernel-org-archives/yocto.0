Return-Path: <garbados@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 144BAE00C01; Thu, 24 Aug 2017 22:50:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (garbados[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F3CE00B3D
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 22:50:05 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id 63so9455398pgc.2
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 22:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=mN8f7SEH7VoGAmoefKUw4zLV3VEfSNIMzRzDlcTohjc=;
	b=H4zToJeNupJrU811I+p000GxylTEGtH3Idvdwn7bcRAAVvtneyEf607Jtij1kHf9vs
	3p4hY8npVQn1IvxpRP5TMsMGP5qAjK18mbmFa1SCXvWU71rwqBuWb8fHbkgVS/asGZdm
	T50aaAluM3o3qWnAG5/axsWv6HtU/sJ2auqXRPyTbdmctNvaTrt6Buw++vf/MVaFVSVG
	TKZgdI9ioeVbcbUJUGCsIsAU+n4wvjKwEqL/r9p5rIRfm/IVrL+7V5mQ0UMRqxmW2Y/v
	XwzFtrigytCDyYKDrJDJZm5SO8lmXHQrkb8UwKIFGbXNB+nXiiVEeOtkt1U4mu7m3daW
	X7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mN8f7SEH7VoGAmoefKUw4zLV3VEfSNIMzRzDlcTohjc=;
	b=pih4Oq9/fYdK7Fxp7sxEUHKtXHkv4OYeEy0XCRbxKx5qHMWo1auA6bir++vICCvK/J
	dsxKohFbs8iiHSeMMgUL+Pzr61AoHPLoqkTJn08YvJNr2NK0jep8XksOYuMEV2TtwlCs
	aFCo0G+iXdhv7i94PRj9Jnd0htumL/L+RugRiXkwe6+51JpiamVHps9qKhfo6wesW9E9
	T3iV2kNScjv+cVB2gCSYLGfUharmQR0paYH7W+sV1diT9H4cChMsm3wVf6rG1sTJOBCz
	r2Ag+9WIQiotCcCQPbjBK5H9uVD8LZkQHQQrjHrouyjWdScCAeVcawSQHz0lFi+ZOJ8u
	ee4A==
X-Gm-Message-State: AHYfb5gW+06oyCIIeZ/MHnrsgo5+IU6YyIex7GmLg30ZNHJ0y5rVCLC7
	z+5SeeTMCWFGb8be
X-Received: by 10.98.14.91 with SMTP id w88mr8920742pfi.306.1503640204920;
	Thu, 24 Aug 2017 22:50:04 -0700 (PDT)
Received: from deus.apple.sh.pie ([2601:1c2:303:6b0:48e3:269e:1213:4ae9])
	by smtp.gmail.com with ESMTPSA id
	v187sm8847791pgv.67.2017.08.24.22.50.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 24 Aug 2017 22:50:03 -0700 (PDT)
From: Diana Thayer <garbados@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Aug 2017 22:49:36 -0700
Message-Id: <1503640176-12409-1-git-send-email-garbados@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [layerindex-web][PATCH] views : add check for superusers in layer update notifications
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
X-List-Received-Date: Fri, 25 Aug 2017 05:50:06 -0000

When a user submits a layer, notification emails are sent to users
with a certain permission. Superusers technically have all
permissions, but Q ignores them currently so that such emails
are not sent to superusers. This patch expands the check to
include superusers.

A few folks have discussed including this so I put this patch
up for consideration.
---
 layerindex/views.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 1661cb3..c1a624c 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -163,7 +163,7 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                     # Send email
                     plaintext = get_template('layerindex/submitemail.txt')
                     perm = Permission.objects.get(codename='publish_layer')
-                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) ).distinct()
+                    users = User.objects.filter(Q(groups__permissions=perm) | Q(user_permissions=perm) | Q(is_superuser=True) ).distinct()
                     for user in users:
                         if user.first_name:
                             user_name = user.first_name
-- 
2.7.4


