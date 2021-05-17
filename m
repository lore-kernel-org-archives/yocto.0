Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.18025.1621254001029581984
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 05:20:01 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=QTHOTb78;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E13EF38C0579
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 12:20:00 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id h4so6139335wrt.12
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 05:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hYhtN1Ry5a9b8zusDlOdcOAnGl9u5DdgpaYeKy0hdTM=;
        b=QTHOTb78D/TpGpHZ7FghNeefIKuJXIwuealf2wE9SMnESLSBVFqEHb01nn4tYzIZOt
         QxazmStg6ntdjJevzX3EUlGkOykROGrXhqJj4dQwJy3X/wu0jCA1Gv/69T+QGGjWFyec
         FjtItr+0es1dbNkO6/xUqCc5yAmF6c7LF4ZHo9Jp6Vo1mkoX/tRylJ59rZwnUzEZZyyz
         uBfCxI87SdSaM8SkudOGVGkZCc1OsZgETv90a5hDrOLJpn65Ca6FW9aVbg2Dzf68ezFy
         0MvPjI5yvzJpiTHaYbYirP0+Ftyk/weLs8ZCIOPThz4xMQFF+ZacxqoeM8USO5wPkID8
         f01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hYhtN1Ry5a9b8zusDlOdcOAnGl9u5DdgpaYeKy0hdTM=;
        b=Zi2uo0Lwv8oU6PqDtpbtlyR4gKVTQzcOkXoAG09aS21U+tQ3vZ4Jb+J4micGuAOioK
         l3xnlCL41rZNpw1aFxMQyeuquxICbT5z3mfWwhKbqXaDYtcV4pFuFgEiRQ2F9Swr05Gr
         WUaS0EaVmhQo+L6nTrXnXp84LTwXLJsTqFppG8cbgx2VkdqoypYWFdBDqP7PmvbjaJjW
         J+dKOWEvoRk7zHkSOgVCvslNxgtoMx9JkO38vPNH1dY/9+cSFIdK0my70OtWzO9hDXDq
         gV+0/n3xsmcOK3S1DJ7JIaUnUUbLJyd/zn2b+OKG5DWUUpoeg999S1yiCkk4jRp6YnrK
         oW2w==
X-Gm-Message-State: AOAM532EDJSBzGBbnY+5pW+8tuz7udjEwXufs2SKcNRbq49hsidetFT3
	PCvF8X/lV8ZqUp+X6KohOd24DWgBuqODdw==
X-Google-Smtp-Source: ABdhPJz2sY3BTfsp5va/8zCTqALwvZ844ufHiYb18muNp3LtmUsLBo9duDZ5adiqk/ycBn8SHChwpA==
X-Received: by 2002:a5d:6085:: with SMTP id w5mr76280934wrt.14.1621253999572;
        Mon, 17 May 2021 05:19:59 -0700 (PDT)
Received: from blanquette.saintdenis.blade-group.net ([185.123.26.202])
        by smtp.gmail.com with ESMTPSA id y2sm23702270wmq.45.2021.05.17.05.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 05:19:59 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v7 3/6] linux-firmware: import variables file for ap4356s firmware from armbian
Date: Mon, 17 May 2021 14:19:35 +0200
Message-Id: <20210517121938.207004-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210517121938.207004-1-yann@blade-group.com>
References: <20210517121938.207004-1-yann@blade-group.com>
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

