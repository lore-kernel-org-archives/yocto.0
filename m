Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66E55E00E10; Mon, 11 Apr 2016 14:54:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7CB5E00DF1
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 14:54:49 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id g185so4153736ioa.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 14:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=byDbwel/x2IMsw1twVbpv3dx/E/w0w/iF1uF05Gja84=;
	b=op/F4e6G7mco35yHl4USiiJd4TEKA/wa59E4OpHgPlPDkyk6pyRvzr6ZssTKPTd+d4
	YJu9Y67XQ8vtoK49fd+tAWoYe94HIloIJz9ErM7ae5W7DdLpbT+zYbeO2sn8nDuu8pXk
	oSVUlS8Mi5peARLnBQj63eSLqeemQZIAuNrUPWC68szklM+efppOguZ16zfYixmAATA2
	+f/NLuE+gOnYh0yd1206rw9g1HbeczeQaii+uTRziFxampBysTPC9GGBsaRX+byyuHMg
	WbFHYaoXRU2/793ATARR8el2kVSmh/hJnYpWTgafosHYWtyi+cQ7UUEZMA3dlolKp7D5
	CSbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=byDbwel/x2IMsw1twVbpv3dx/E/w0w/iF1uF05Gja84=;
	b=coufbmtKrexMRDrZOsaBlZSeBKdGNJap1UkHYXMmdoUoSxMSuXZsiSoijCPxYa+Zrm
	DMCBBbACRkp9bIPN/7uXmMuUxhfXouccMVw5TIgPI6d724ukuc/jca+BokEVhuyFOzIR
	NRP1o2PG1ZxQHF5UTmGtuMeWRp4u48FsNKoMh0ujWYhrpaWVxSg7NBMIMCySJ1xf5Nmg
	T+s0V6iQpI6z0kiE5yYnf8PrzJJS5OrkL37IWCJ+52TKAERTkpxMOqSeYVGNYEzj+yGs
	xgoGNOgX7Knw3fnDaTO5BnovU/Cq58EvFHy0l1wQZAIGQDNzAgIQaJA24/CbShuq28U6
	6rdA==
X-Gm-Message-State: AOPr4FXmt3LUEubudWpWYNtvTApEIqC21qsN+h5gpwl3qgpnV2M6vVrENCStALSYuLIR1Q==
X-Received: by 10.107.31.129 with SMTP id f123mr353726iof.180.1460411689257;
	Mon, 11 Apr 2016 14:54:49 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	j72sm9393607ioj.30.2016.04.11.14.54.48 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Apr 2016 14:54:48 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 17:54:45 -0400
Message-Id: <1460411685-12573-2-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
References: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
Subject: [meta-raspberrypi][PATCH v2 2/2] raspberrypi3: set core frequency
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
X-List-Received-Date: Mon, 11 Apr 2016 21:54:51 -0000

Pegging the core frequency at 250 avoids any fluctuations of the baud rate on
the console.

See:
	https://www.raspberrypi.org/forums/viewtopic.php?f=107&t=138223

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/raspberrypi3.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index cb6056e..81301c3 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -9,3 +9,4 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 include conf/machine/raspberrypi2.conf
 
 SERIAL_CONSOLE = "115200 ttyS0"
+CORE_FREQ = "250"
-- 
2.7.0.rc3


