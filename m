Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05461E009CF; Mon, 27 Feb 2017 03:46:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64D6BE00970
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 03:46:29 -0800 (PST)
Received: by mail-lf0-f52.google.com with SMTP id y193so3981712lfd.3
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 03:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=O9EJZTTs4/RSrMCVXLZFtUiQBBdYngEcjtRrVwabBag=;
	b=aR2BtrgLbzd4UrZrvMwOlbworK3aB3nVf/bnZsIf13qarY+SYwuBztbEvpSHa0b7iN
	JqQREsDNnJWGV68MlrF15W0kfkIYMql5IemvsIv886U9/9kDe+W+UDM+6fRbdjjyALs4
	m8syz5XSpPQA5YWzPepjZXN/Fs74dVw71BxnVpBcsk8UbYR7RPg+5gY6Ejr6vxOHXG/h
	ZroIq8D7UxDka/8zewjxAPTyw1ojEM8wvgBU++mX/gQ/b/jQSk5OfHxB7M4JWT7IKT/H
	bjW9dVSkpcYBNOpSfZEifTraKKXoJczeFsBptyal6NwM7KhPzbu3vfxDg6V7BGUHwhlX
	lFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=O9EJZTTs4/RSrMCVXLZFtUiQBBdYngEcjtRrVwabBag=;
	b=EtAmucCgOaSj1Qh9dWcajExXq3V340yKfX29PO9T8R3Q3C9ohUnsV/h93zCLsvMaOC
	5BF1aLQGCFTamQTO1ypPaPsrNIzdt6gg8fMyB+dm+uk4anMkxtt0sZQwebg/jqop1WFf
	zIGtmnT5c9IAHW2lhUflCNAsr8eWbqfCUrSYrV8aTmakXoKf1IRIHSaXnj2c+iuOEoCA
	FtX70UOI1u1IKxDl4KKeTztqRTKnWU82Xfd51kkNbsRgsgJpXho8lvigrzXdOzfTddu/
	60c8qqQzxH2H+whIq33xwvRYCB8lJd1GHvLc4uGWCEoXCFlrbhsgZu6hcOgABjakY/r/
	MwnQ==
X-Gm-Message-State: AMke39lcTTA7xTmSOWvKT8cPHuR+pFGgG8wNoddKaeZNx9+sbiCEmQKRBQ1VypjcASJ61Q==
X-Received: by 10.25.21.37 with SMTP id l37mr4561023lfi.146.1488195988279;
	Mon, 27 Feb 2017 03:46:28 -0800 (PST)
Received: from comp_016_pc_buildenv.localdomain
	(staticline-31-182-60-238.toya.net.pl. [31.182.60.238])
	by smtp.gmail.com with ESMTPSA id q71sm471758lfe.40.2017.02.27.03.46.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Feb 2017 03:46:27 -0800 (PST)
From: Maciej Borzecki <maciej.borzecki@rndity.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 12:46:04 +0100
Message-Id: <cover.1488191415.git.maciej.borzecki@rndity.com>
X-Mailer: git-send-email 2.5.5
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi] [PATCH 0/2] wic: fixes for wic support
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
X-List-Received-Date: Mon, 27 Feb 2017 11:46:38 -0000

A small series with 2 patches that enable using wic (once again).

The first patch moves sdimage-wks to ${LAYERDIR}/wic. This is already
implemented in meta-yocto-bsp. The goal is to make wks files easier to
find. Since Yocto is in general dumping custom image building methods in
favor of wic, one would expect that wic is also usable with
meta-raspberrypi.

The second patch adds support for KERNEL_DEVICETREE to IMAGE_BOOT_FILES.
Currently, DTs will be copied over to boot partition when building
rpi-sdimg. However, when building a wic image, none of this happens and
once the process comlpetes, one will get an unbootable image. The patch
adds proper entries to IMAGE_BOOT_FILES also taking care of proper file
name transformation.

With these 2 patches, a wic image can be built by adding the following
settings to conf/local.conf:

   IMAGE_FSTYPES_append = " wic"
   # or with your favourite compression, eg. wic.xz
   WKS_FILES = "sdimage-raspberrypi.wks"


Maciej Borzecki (2):
  wic: move sdimage-raspberrypi to toplevel wic location
  rpi-base: wic: generate entries for device tree files

 conf/machine/include/rpi-base.inc                  | 32 +++++++++++++++++++++-
 .../canned-wks => wic}/sdimage-raspberrypi.wks     |  0
 2 files changed, 31 insertions(+), 1 deletion(-)
 rename {scripts/lib/image/canned-wks => wic}/sdimage-raspberrypi.wks (100%)

-- 
2.5.5


