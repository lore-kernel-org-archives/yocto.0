Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.8638.1605291623268114758
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 10:20:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=REMVkrAV;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 198.145.29.25, mailfrom: jpuhlman@mvista.com)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 81DAB38C1314
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2020 18:20:22 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id q206so11323933oif.13
        for <yocto@yoctoproject.org>; Fri, 13 Nov 2020 10:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Igm379vOwkftgLLY1qxyVrscafD7wbDq7KSjE+WmFxw=;
        b=REMVkrAV6voC5jp4NWtkfka0nPmT+Aiarn+JwuS8TITw3U83+5dEwbqGScU1ioseyv
         LsTmn74ex3YHIRRPuY5b56SGUMQeYZ/XLyL6WvCrydAi+QBv/uYSReWKW5egrp8ppTKD
         BU+RKf6uQ1tczWGJxGdW7NjxraBSGW2BV/aytFnc0oqWyl0bLuDLW87RvLGynecbtiMu
         0Bfeo5v4sAePDJ0xWrSkpMoPpKQhq9y9C49kd8rX51BGE9xQ5fHb3ro4JjfL6FLwyWVz
         zJOcP/L11lSz0LBilJJhkCIov9Xv9Y+4q4R1wcVFNGCHZN6oOp4E2loQQBGSUdUFFFOb
         48Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Igm379vOwkftgLLY1qxyVrscafD7wbDq7KSjE+WmFxw=;
        b=LREn/FT/B3mARcdbPpDyFsgR5MfdhAMtbnIN+Az2Mk2wvpCVzwPiKpMYUG470lPGib
         AMxgGckW9GtbFHg1868DIKpd6TMA5OcT203irxvQ6KaE2yhAzIYMlsG0jlw/1+/ZJqrR
         klEvNrM3ozndEzD4kTo77ZpEuem+hqyS+HaFHHWihC88s2bAMgErT/yOOsiuraGOzDGn
         F0MwLqVSQQ//j85nM5enTtzr62AYiO2ApBzA5O+l1FpKVDvcVdkB5fynHJJUjdpwa8g+
         yWmLUec8Oakva9MhTF1izicRzBCkK7MXaICGd97rq4w3+PflVdA7vl6PX25QqYeNWzxy
         /Gsg==
X-Gm-Message-State: AOAM530BHvMcGArsay0ux2IdvzTT3v8+0Ws1A5AJvnbf/6RNYw0s1eMb
	eMZBwMpwwwo2oAItvk2xOK0nEg==
X-Google-Smtp-Source: ABdhPJwavaS7IkN4aU+ryaXX4gTkDZnVeMYSGE2e1IMyiy59TYvYl72A2RLJxKE2WBqgGr7B+WTGEA==
X-Received: by 2002:aca:4fc7:: with SMTP id d190mr2381510oib.13.1605291618308;
        Fri, 13 Nov 2020 10:20:18 -0800 (PST)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id r188sm2025704oia.13.2020.11.13.10.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 10:20:17 -0800 (PST)
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 643AC2A0B9E; Fri, 13 Nov 2020 10:20:16 -0800 (PST)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH] layer.conf: add gatesgarth
Date: Fri, 13 Nov 2020 10:20:09 -0800
Message-Id: <20201113182009.29013-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer=
.conf
index 6035b4b..8100e23 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common =3D "7"
=20
 LAYERDEPENDS_cgl-common =3D "core openembedded-layer networking-layer pe=
rl-layer filesystems-layer security selinux"
=20
-LAYERSERIES_COMPAT_cgl-common =3D "warrior zeus dunfell"
+LAYERSERIES_COMPAT_cgl-common =3D "warrior zeus dunfell gatesgarth"
=20
 require conf/distro/include/cgl_common_security_flags.inc
--=20
2.20.1

