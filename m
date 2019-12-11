Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2526.1576036614071328625
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 19:56:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=tJ4gP88h;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E94F5E01147; Tue, 10 Dec 2019 19:56:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A38CDE0049C
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 19:56:53 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id c13so864217pls.0
        for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 19:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssEitTkBdWJD3T2+AmBqnbwF+Pq+3mIuHUIKbBtL/K4=;
        b=tJ4gP88hLFL/GrNGb3Vf58WMUGInJ5Jp1qSN9OemWVR1Yzpu4W7NhuWuAsS639Ymq3
         i4ZgR7DhE0F2ZbbhLQb+0syM6sGWquc4aTrVd+ZypRuhnytr0GKmhXqA5inLwad2BlOF
         Rwqmp4QbiTwmkrg1VFgatUW/ZLDsA6iRu06VWIG0j4e36LC6f4wGUU7Qn8HRGhuDzo5Q
         irYoa//aC7YNNvvuXozl7GL+uyEHZUevjFqTbQPr0QIu8DY6nnqKzzRlxX17oo3zS/N1
         Tki6Yj2/ReyZmcfkbmEYAJqFIqpIbc+gV5RVypIyruGvM/JWP123n0OzFNXMHQ8pEucr
         ihTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssEitTkBdWJD3T2+AmBqnbwF+Pq+3mIuHUIKbBtL/K4=;
        b=hbB0AawB9dTWXNl/p6Fc0IMO5W4RA0GaAMIOP3NfpfMzin9ClFX4fOmovRGcDWZibI
         5AzVwoCGOXiPmDPRFpUJ1OX7y4kUw//FJuMsxhihSTM/M3aMskOYHwwuo4CUSCM5U+gq
         Tem5HDEluuRgdRqMWzOVXnUkfjtyGR1H+Mhdpq9SBOY3O1kzWwc78GTETywmiTA1I09u
         +V0FDdK5rZLEdcPimO0HXmQY6XmDd/prMJ4LEVvRla9y8C45UlnhKxBXN3H/3gRBUuzT
         TSsOh7c1NgwCdYDPkS8A6OlC6B8K0jLNG17jWNjSF1fI3tGNOORYje0uTKcPhHhhTA/4
         7wuw==
X-Gm-Message-State: APjAAAUX2qZtMKXTBF5UeW1cJy91jummnaBbw0Ec9qqXC5mcPY0sdu+k
	2aIjeA6V25z6F6wlnWgPPwtwVoxq28g=
X-Google-Smtp-Source: APXvYqzX4TlLPMDnH0xHqS/291eip4s4ZrC2ezh8r/aTTCInItc+1m031m2HrPnrMx+sBATQyBeB+g==
X-Received: by 2002:a17:90a:a881:: with SMTP id h1mr1154458pjq.50.1576036612543;
        Tue, 10 Dec 2019 19:56:52 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:4e0::3552])
        by smtp.gmail.com with ESMTPSA id p68sm572119pfp.149.2019.12.10.19.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2019 19:56:52 -0800 (PST)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>,
	Armin Kuster <akuster808@gmail.com>
Subject: [yocto-autobuilder-helper][PATCH] config.json: Add meta-multimedia to meta-oe job
Date: Tue, 10 Dec 2019 19:56:44 -0800
Message-Id: <20191211035644.770366-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

meta-oe recipes/packagegroups needs meta-multimedia packagegroups
Whitelist ffmpeg so packages depending on it can be tested

Fixes
ERROR: Nothing PROVIDES 'ffmpeg' (but /home/pokybuild/yocto-worker/meta-o=
e/build/meta-openembedded/meta-oe/recipes-graphics/libvncserver/libvncser=
ver_0.9.12.bb DEPENDS on or otherwise requires it)
ffmpeg was skipped: because it has a restricted license 'commercial'. Whi=
ch is not whitelisted in LICENSE_FLAGS_WHITELIST

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Armin Kuster <akuster808@gmail.com>
---
 config.json | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/config.json b/config.json
index b0856a0..a790d08 100644
--- a/config.json
+++ b/config.json
@@ -729,8 +729,12 @@
             "ADDLAYER" : [
                 "${BUILDDIR}/../meta-openembedded/meta-oe",
                 "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-multimedia",
                 "${BUILDDIR}/../meta-openembedded/meta-networking",
                 "${BUILDDIR}/../meta-openembedded/meta-filesystems"
+            ],
+            "extravars" : [
+                "LICENSE_FLAGS_WHITELIST_append =3D ' commercial_ffmpeg =
commercial_x264 '"
             ]
         },
         "meta-virt" : {
--=20
2.24.0

