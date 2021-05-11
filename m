Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1210.1620749448141762985
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=L76qQXaX;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0971738C083A
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:48 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so1546355wmh.4
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hYhtN1Ry5a9b8zusDlOdcOAnGl9u5DdgpaYeKy0hdTM=;
        b=L76qQXaXtrshz+WVuXjJaKzMkCWSNyu0yAwMGPCBw3HO1T5S68XVSmWBOTOGfLq8Y3
         +5UR+v24geRUQP6p+xOykbf4uUErBrSXEPl9vQ9tpb/fzPvNH7Q9DPO75H/f670v51uT
         OnPwrFBMXKyRwzLg8W4QLwa0dfJKQQd9RNBkv+vyAcXRD1t+cURESj4dI7dad9OrKt07
         KL5U5L8fQoFVkZNqr9kxuUpu2Wq2HwdvDL+ue44QHH5QmbD3erTUxZbb+a2aROE6GoFo
         oocqPJk1YPCpXAqDQZvEPAGnhYRGciJh5o53IH1FdLSygZ7AcKHvsNncrdg32LDufsFF
         BWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hYhtN1Ry5a9b8zusDlOdcOAnGl9u5DdgpaYeKy0hdTM=;
        b=MEW30Nd9hWXewyYv8mCFAgGRFCP6u6OAbvn6aXJubI4f3CiwzwQlRgc1aveXmjYb1C
         OLp0byQSZlvbPY/HADDqz3vu4ehLMTjGF2xKpcn//SRhfwTF/CwYfZ5vysOGzLzVF10N
         9KNwPNLmhqk6nMoaVG7apW4yi6vBw1gawlgG1oPsEgofdl4D5Z0rvBThaerDZ2pue6VU
         O+jsnK1dGY9yvyPw8zqpQTT/pOhsT21PHvt1SrqIHhXvWOU+BMAhqog5334XO/AGwDe7
         fNuEi9s1YyWuZwMvE9l/g+lHkT4ENxVLPadMaRR2uIBkhlia8GgU+mA0fPgTHEP6if/9
         HYUw==
X-Gm-Message-State: AOAM530rdU2gkugw3ezpCJ1Nwjn1Vv0AwljGoLxKlJFizG0KU9/gkKqA
	Hl5CfR8qlqaun8e/24n0cVn+RVrWLaDwBA==
X-Google-Smtp-Source: ABdhPJxMY89nmdn7U39yT0ZUYmXrIgEt0nX6snnhonRBNVu1JDRj0/f30/kfJrECNEyDk26EZ1VR+w==
X-Received: by 2002:a05:600c:4fd6:: with SMTP id o22mr11622764wmq.83.1620749446778;
        Tue, 11 May 2021 09:10:46 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:46 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 3/6] linux-firmware: import variables file for ap4356s firmware from armbian
Date: Tue, 11 May 2021 18:10:15 +0200
Message-Id: <20210511161018.168172-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511161018.168172-1-yann@blade-group.com>
References: <20210511161018.168172-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This is required for wifi support on nanopi-m4 with kernel 5.10.

This is dependant on poky commit commit 698fd81c551b52ff7f4a26e42d9acf9ad=
4ce5639,
"linux-firmware: include all relevant files in -bcm4356".

This file was fetched from
https://github.com/armbian/firmware/commit/9c800d7e16616dd30cfd854f26e563=
fb675e3f8a

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 .../files/brcmfmac4356-sdio.txt               | 126 ++++++++++++++++++
 .../linux-firmware/linux-firmware_%.bbappend  |  13 ++
 2 files changed, 139 insertions(+)
 create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac4356-sdio=
.txt
 create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbappe=
nd

diff --git a/recipes-kernel/linux-firmware/files/brcmfmac4356-sdio.txt b/=
recipes-kernel/linux-firmware/files/brcmfmac4356-sdio.txt
new file mode 100644
index 0000000..a8c1ff8
--- /dev/null
+++ b/recipes-kernel/linux-firmware/files/brcmfmac4356-sdio.txt
@@ -0,0 +1,126 @@
+# Sample variables file for BCM94356Z NGFF 22x30mm iPA, iLNA board with =
PCIe for production package
+NVRAMRev=3D$Rev: 492104 $
+#4356 chip =3D 4354 A2 chip
+sromrev=3D11
+boardrev=3D0x1102
+boardtype=3D0x073e
+boardflags=3D0x02400201
+#0x2000 enable 2G spur WAR
+boardflags2=3D0x00802000
+boardflags3=3D0x0000000a
+#boardflags3 0x00000100 /* to read swctrlmap from nvram*/
+#define BFL3_5G_SPUR_WAR   0x00080000   /* enable spur WAR in 5G band */
+#define BFL3_AvVim   0x40000000   /* load AvVim from nvram */
+macaddr=3D00:90:4c:1a:10:01
+ccode=3DX2
+regrev=3D205
+antswitch=3D0
+pdgain5g=3D4
+pdgain2g=3D4
+tworangetssi2g=3D0
+tworangetssi5g=3D0
+paprdis=3D0
+femctrl=3D10
+vendid=3D0x14e4
+devid=3D0x43ec
+manfid=3D0x2d0
+#prodid=3D0x052e
+nocrc=3D1
+otpimagesize=3D502
+xtalfreq=3D37400
+rxgains2gelnagaina0=3D0
+rxgains2gtrisoa0=3D7
+rxgains2gtrelnabypa0=3D0
+rxgains5gelnagaina0=3D0
+rxgains5gtrisoa0=3D11
+rxgains5gtrelnabypa0=3D0
+rxgains5gmelnagaina0=3D0
+rxgains5gmtrisoa0=3D13
+rxgains5gmtrelnabypa0=3D0
+rxgains5ghelnagaina0=3D0
+rxgains5ghtrisoa0=3D12
+rxgains5ghtrelnabypa0=3D0
+rxgains2gelnagaina1=3D0
+rxgains2gtrisoa1=3D7
+rxgains2gtrelnabypa1=3D0
+rxgains5gelnagaina1=3D0
+rxgains5gtrisoa1=3D10
+rxgains5gtrelnabypa1=3D0
+rxgains5gmelnagaina1=3D0
+rxgains5gmtrisoa1=3D11
+rxgains5gmtrelnabypa1=3D0
+rxgains5ghelnagaina1=3D0
+rxgains5ghtrisoa1=3D11
+rxgains5ghtrelnabypa1=3D0
+rxchain=3D3
+txchain=3D3
+aa2g=3D3
+aa5g=3D3
+agbg0=3D2
+agbg1=3D2
+aga0=3D2
+aga1=3D2
+tssipos2g=3D1
+extpagain2g=3D2
+tssipos5g=3D1
+extpagain5g=3D2
+tempthresh=3D255
+tempoffset=3D255
+rawtempsense=3D0x1ff
+pa2ga0=3D-147,6192,-705
+pa2ga1=3D-161,6041,-701
+pa5ga0=3D-194,6069,-739,-188,6137,-743,-185,5931,-725,-171,5898,-715
+pa5ga1=3D-190,6248,-757,-190,6275,-759,-190,6225,-757,-184,6131,-746
+subband5gver=3D0x4
+pdoffsetcckma0=3D0x4
+pdoffsetcckma1=3D0x4
+pdoffset40ma0=3D0x0000
+pdoffset80ma0=3D0x0000
+pdoffset40ma1=3D0x0000
+pdoffset80ma1=3D0x0000
+maxp2ga0=3D76
+maxp5ga0=3D74,74,74,74
+maxp2ga1=3D76
+maxp5ga1=3D74,74,74,74
+cckbw202gpo=3D0x0000
+cckbw20ul2gpo=3D0x0000
+mcsbw202gpo=3D0x99644422
+mcsbw402gpo=3D0x99644422
+dot11agofdmhrbw202gpo=3D0x6666
+ofdmlrbw202gpo=3D0x0022
+mcsbw205glpo=3D0x88766663
+mcsbw405glpo=3D0x88666663
+mcsbw805glpo=3D0xbb666665
+mcsbw205gmpo=3D0xd8666663
+mcsbw405gmpo=3D0x88666663
+mcsbw805gmpo=3D0xcc666665
+mcsbw205ghpo=3D0xdc666663
+mcsbw405ghpo=3D0xaa666663
+mcsbw805ghpo=3D0xdd666665
+mcslr5glpo=3D0x0000
+mcslr5gmpo=3D0x0000
+mcslr5ghpo=3D0x0000
+sb20in40hrpo=3D0x0
+sb20in80and160hr5glpo=3D0x0
+sb40and80hr5glpo=3D0x0
+sb20in80and160hr5gmpo=3D0x0
+sb40and80hr5gmpo=3D0x0
+sb20in80and160hr5ghpo=3D0x0
+sb40and80hr5ghpo=3D0x0
+sb20in40lrpo=3D0x0
+sb20in80and160lr5glpo=3D0x0
+sb40and80lr5glpo=3D0x0
+sb20in80and160lr5gmpo=3D0x0
+sb40and80lr5gmpo=3D0x0
+sb20in80and160lr5ghpo=3D0x0
+sb40and80lr5ghpo=3D0x0
+dot11agduphrpo=3D0x0
+dot11agduplrpo=3D0x0
+phycal_tempdelta=3D255
+temps_period=3D15
+temps_hysteresis=3D15
+rssicorrnorm_c0=3D4,4
+rssicorrnorm_c1=3D4,4
+rssicorrnorm5g_c0=3D1,2,3,1,2,3,6,6,8,6,6,8
+rssicorrnorm5g_c1=3D1,2,3,2,2,2,7,7,8,7,7,8
+
diff --git a/recipes-kernel/linux-firmware/linux-firmware_%.bbappend b/re=
cipes-kernel/linux-firmware/linux-firmware_%.bbappend
new file mode 100644
index 0000000..45ab311
--- /dev/null
+++ b/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
@@ -0,0 +1,13 @@
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+
+SRC_URI +=3D "\
+ file://brcmfmac4356-sdio.txt \
+"
+
+BRCMDIR =3D "${nonarch_base_libdir}/firmware/brcm"
+
+do_install_append() {
+ install -m644 ${WORKDIR}/brcmfmac4356-sdio.txt ${D}${BRCMDIR}/
+}
+
+FILES_${PN}-bcm4356 +=3D "${BRCMDIR}/brcmfmac4356-sdio.*"
--=20
2.30.2

