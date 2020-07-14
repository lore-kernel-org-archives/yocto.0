Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web12.13047.1594699211206631968
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 21:00:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=IkZgvdkU;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.222.178, mailfrom: jpuhlman@mvista.com)
Received: by mail-qk1-f178.google.com with SMTP id e11so14461088qkm.3
        for <yocto@lists.yoctoproject.org>; Mon, 13 Jul 2020 21:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=86NZ3yGFlntx0TEd/tRxOWfdl5Q/WjweJ6abW6x+icc=;
        b=IkZgvdkU01FfL9UwV4DDzYIE92BTEyUf1eBYgJm+7X+0lrH/0vRh5617CMWOcfFy7f
         E8xFzZT/F4Z21HPdcEGIOtWIkRtdWdv65BFoeGQ2yUh7CI98A4uiQaDusIj59XSN3Bt1
         Ejo2LeZ1qM7yEZXP19x6wUzrjqP2Hm1uG8CODIy95Ij/PsNvkiGSN8+I48IFyNwOl6XB
         XhvbbFbLgZOImJPZiUIsn5Y7iGDZLEh8d5fMi+wG1pw/b21Fhoqk8m67eEpDZJ/I9vgR
         L5l1bAbvwKoT8GEBJoe9yHO121NHxSiLzlmYq3P8koFQZiHCE5RCQUA0qPQ2jkGYAGB+
         aklw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=86NZ3yGFlntx0TEd/tRxOWfdl5Q/WjweJ6abW6x+icc=;
        b=FM7NUzsdMmpFcucHrpvu8R6kPM836CKZdR68EH1+Zt+77oIQgFdShs39gdPn1DYh6q
         5Vq9GnSbqawOqZ/XAJCQ/HAmginxJ/EGCYoNuyUkZOm4RkXbLP3kvyoWmt0eSK5ssFWn
         GeG/Msdk4DDMTkBsjKDgiG9DWHgv/eZo48HJ1qSLhfPCpFKM0eMpDll+vTpaEOPXcGYW
         slSNHrRPxHooTyyqebuLIsPthit9rgJRY4Iu4p5Jsk9kPsOt8OiTNOlhflWtF6l4CGmr
         sa2VI7/RpV2PdeDClvL+HUdf73JzlJ5BpDPYY4yvLss9yGY5yQb0yEYuvh8ViZyEG8Tg
         H36w==
X-Gm-Message-State: AOAM533hVyp1CdQY6ZjDMf0PgJNJa4wFj5PEERYpH+IGDGg0SrZLALES
	UZuluVJjjGjRwsHbvltwIOMnVW1wqLA=
X-Google-Smtp-Source: ABdhPJzszX7jPRt13AEk9UwY52GFseutgHOCj47NYS2x7vTgVBKau10vRm+eDMBzzUvcXeo091jcJw==
X-Received: by 2002:a05:620a:10a4:: with SMTP id h4mr2694575qkk.320.1594699210015;
        Mon, 13 Jul 2020 21:00:10 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id m14sm21917098qke.99.2020.07.13.21.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 21:00:09 -0700 (PDT)
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 83C6F2A099A; Mon, 13 Jul 2020 21:00:07 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-security][master|dunfell][PATCH 1/2] cryptsetup-tpm-incubator: RPROVIDES cryptsetup and cryptsetup-dev
Date: Mon, 13 Jul 2020 21:00:00 -0700
Message-Id: <1594699201-14545-1-git-send-email-jpuhlman@mvista.com>
X-Mailer: git-send-email 1.8.2.3

From: Jeremy Puhlman <jpuhlman@mvista.com>

Without this we get weird conflict when you include dev packages:
rror: Transaction check error:
  file /usr/include/libcryptsetup.h conflicts between attempted installs of
cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
lib32-cryptsetup-dev-2.3.2-r0.1.i586
  file /usr/lib64/libcryptsetup.so conflicts between attempted installs of
cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
cryptsetup-dev-2.3.2-r0.1.corei7_64
  file /usr/lib64/pkgconfig/libcryptsetup.pc conflicts between attempted
installs of cryptsetup-tpm-incubator-dev-0.9.9-r0.corei7_64 and
cryptsetup-dev-2.3.2-r0.1.corei7_64
  file /usr/lib/libcryptsetup.so conflicts between attempted installs of
lib32-cryptsetup-tpm-incubator-dev-0.9.9-r0.i586 and
lib32-cryptsetup-dev-2.3.2-r0.1.i586
  file /usr/lib/pkgconfig/libcryptsetup.pc conflicts between attempted installs
of lib32-cryptsetup-tpm-incubator-dev-0.9.9-r0.i586 and
lib32-cryptsetup-dev-2.3.2-r0.1.i586

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
index b706d15..2617162 100644
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -36,7 +36,12 @@ FILES_${PN} += "${libdir}/tmpfiles.d"
 RDEPENDS_${PN} += "lvm2 libdevmapper"
 RRECOMMENDS_${PN} += "lvm2-udevrules"
 
+RPROVIDES_${PN} = "cryptsetup"
 RREPLACES_${PN} = "cryptsetup"
 RCONFLICTS_${PN}  ="cryptsetup"
 
+RPROVIDES_${PN}-dev = "cryptsetup-dev"
+RREPLACES_${PN}-dev = "cryptsetup-dev"
+RCONFLICTS_${PN}-dev  ="cryptsetup-dev"
+
 BBCLASSEXTEND = "native nativesdk"
-- 
1.8.2.3

