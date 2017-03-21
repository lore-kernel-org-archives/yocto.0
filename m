Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABE77E00A0A; Tue, 21 Mar 2017 09:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50063E00992
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:18:14 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id g10so23181887wrg.0
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=ovOlcBuXdajBqcRcm9HRt87CV9f/n0MfYpm5Dll54Js=;
	b=wOZ+/uAD/4AWL++qwJbQy9B55H0XPJm166IYO1ABX/6zqwm/7cPX58yb3fMLuGMZ18
	Ey7AcxRyuZyOvPq52mwJsYt2cSHvejQAZgHBFtN9DLKgCQ0HrBsABUlN7GmtMmNMJuC2
	2Y12c1iEl1tedvFoQWpJYBK0DbGaBDThQkDsKOcB+f172ohCnkDX9QDZGMjyWaecF3g9
	VUDudMNtkHExpXPHf5k+Tpx4nHskSPUVwWOsVYYL7vektSvG/JY8mNJh+w80Kqfy5MDR
	H+Thj5zOkIuLNfbW4sLRZtqBzkVKieXghliMup8teLmdTVIzLx8Q2hDltRmIPVuFyvUD
	0wVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ovOlcBuXdajBqcRcm9HRt87CV9f/n0MfYpm5Dll54Js=;
	b=JgqYPovUzri1fII7PqOEeQfIZkmjNr2uW0t9HHqEjAApAkgX3V/2twiKciXSYRMntU
	zvBKBNFhTp//Hs9GUvwKZhOqsG+9JoDhx2QIxOCTzYapVXhn/UKa30QzOxjj+fP4zMSQ
	+FLfcrJF1bkU2TWnj6w0SKc7LFVaub4qZtZIoEvE6iltcf5bigoioTBjjjyr/frZhdEW
	B2i5gGqx93CQy4SgJNaHS4gZy7/YxcbK5NkWBEheRJN/TVFbUK6e9QVREnc7PqZtzgqw
	t8c4Q0+Smbz6QkeFCkti7NEki/33ledMPcToDl7pooY6ANoKn9OR+BeJEo2TUKh2kO+q
	+0Wg==
X-Gm-Message-State: AFeK/H0H7nntuW3SY9Om0bhEBeGAorkCc5mQrST46yC8SOFNQ60tHU8q2VVT1259frd7cQ==
X-Received: by 10.223.128.202 with SMTP id 68mr32068214wrl.108.1490113093348; 
	Tue, 21 Mar 2017 09:18:13 -0700 (PDT)
Received: from localhost.localdomain
	(cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net. [82.22.166.118])
	by smtp.gmail.com with ESMTPSA id
	w10sm2251477wmw.14.2017.03.21.09.18.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:18:12 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 21 Mar 2017 16:18:04 +0000
Message-Id: <20170321161804.21347-1-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.0
Subject: [meta-raspberrypi][PATCH 1/1] omxplayer: Add dependency on coreutils-native
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
X-List-Received-Date: Tue, 21 Mar 2017 16:18:18 -0000

Internal ffmpeg configure uses pr which is provided by coreutils-native:
| ./configure: line 471: pr: command not found

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index c196fbf..72297d0 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,7 +7,7 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native"
 PR = "r4"
 
 SRCREV = "62fb580260adb9b01e5694bb4374fb9a5f6f1021"
-- 
2.12.0


