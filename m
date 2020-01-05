Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web12.4158.1578266054994402153
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:14:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RRZPAkuM;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id 2so26078074pfg.12
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+Eva4i3yTXGsRHncQqeJmBZ2EP1rRSWFpU4QeQ2tuxs=;
        b=RRZPAkuM+s1brP4eA3Wqa0UTKlRRghEQMWjjgivXQ4tmvovi9dIiniUeoFMnW8FLeM
         x5GGlVFGpAYiOUg4ZHwkIHLT9xq7nGMBMk2YWGsgbmYCq26M8Sydsjhpg4oPJNsJVmyD
         lJa2luKCl97Pg/ZQtTEu5NPa8D6FSdRh2mmrHwuzGSzXLwnAhcf4XrKVOyT5ZIgnISDO
         JWTwcPwI8B6fHdPdMvlrfTMU76rgNu8rYrK66FB0bv4boDcFUIpOzP+LuB0++lEzJp0D
         WtjSwdrxFbPQKtIYb9l3Xkn2AcLtl+cLFkETGz92YM56DSDrgAES+8uvPAiUxAf7SDzp
         eM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+Eva4i3yTXGsRHncQqeJmBZ2EP1rRSWFpU4QeQ2tuxs=;
        b=TGgLhw/INBF5vn/8AFPz1ly0osG5MVgeOaKsviG6PnYw0s0+rYcKJhxz598XRDaAVM
         tdmz/VDukPVYO34z7C6XmGpOJQhvHGdFlvX+3qvoXijkCO+9HreYnKKDb60elEQHOCEF
         Pi2euSV/sKc3Y84KnaPyv53e56ev4+UXDURKCinFTKNjQCAQsYOoGoG4CrKgZCVcyhmo
         NvqPC7mIH1j3q2jqjeNgrTGtARQOkORJyTu1zapaOXL6Z37+Dl93V49nHYECoIYxImwY
         R3w/6gdob5uduJMUQbPWBnUAyipqP1o0wvS746qJyfXgDJfrsAbOwt6fDqIUJw2/uRIL
         DILQ==
X-Gm-Message-State: APjAAAWHVFzuj46KwaSrMnxiVZ6milKnlwe0d23TdsskOOHDnEs3+xPw
	ZkCWamT8IZ4WfEYj737a74Gr8CwJ
X-Google-Smtp-Source: APXvYqzJztGTYsOCnb4a6w/zHlzIcIXowKZAmNS4uOcRaGUwJ2zlBueim8mBMkQUxqJg5BhM+H6hgg==
X-Received: by 2002:aa7:9354:: with SMTP id 20mr81927043pfn.40.1578266054270;
        Sun, 05 Jan 2020 15:14:14 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id a4sm390636pjh.32.2020.01.05.15.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:14:13 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
Subject: [meta-security][zeus][PATCH 1/9] cryptsetup tpm incubator: fix installed vs shipped
Date: Sun,  5 Jan 2020 15:14:04 -0800
Message-Id: <20200105231412.4995-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Christophe PRIOUZEAU <christophe.priouzeau@st.com>

Fix [installed-vs-shipped] by adding /usr/lib/tmpfiles.d
on FILES.

Signed-off-by: Christophe Priouzeau <christophe.priouzeau@st.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
index 8385c94..b706d15 100644
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -32,6 +32,7 @@ RRECOMMENDS_${PN} = "kernel-module-aes-generic \
                      kernel-module-xts \
                     "
 
+FILES_${PN} += "${libdir}/tmpfiles.d"
 RDEPENDS_${PN} += "lvm2 libdevmapper"
 RRECOMMENDS_${PN} += "lvm2-udevrules"
 
-- 
2.17.1

