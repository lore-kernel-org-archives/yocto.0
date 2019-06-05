Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93AB8E00D64; Wed,  5 Jun 2019 02:06:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DD5E00D5D
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 02:06:17 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id r15so18494146lfm.11
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 02:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=jXYhGtCoknq5ZrOtiAxZW68/rn7WuCZeGbdYyaZlo30=;
	b=tdYhxuKDde/TskyOKk9qxPzo6TV1Zh9waiOfN7OgOcXqaFCIgGbK1oU/qzACjx7PkZ
	yln6PNSxfhuu+MbANZslK76BtmMgyh3+6bR9XIM2NxLAds4OHY6xGXRckYe5FBO4GuGR
	Uyu39Qgu7wRtaH4TXyXGQXViBT2Epg+egsuETrj+pxqybYL+DsbOqX9UE5XFx+31CiVG
	DPBIrra2340GfCCVAJU+WuWYLnyV1+4KeXnrJFm/UMYTWf+jyUd4vZvGAN49qHZj/9Fc
	q9CFELV/hu5vsb4jtFHGKhxYnVFUA2QAGgupHb9i3t4KZ2rYS0dw4HoTiB8k6bGDqkNt
	o2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=jXYhGtCoknq5ZrOtiAxZW68/rn7WuCZeGbdYyaZlo30=;
	b=UhU/hPucsDpzklzEHsEkK1xgVsaMa0gH2O9+cvbDNeHcNEDWObEwvc2A8sU5ePDqP/
	k43yRucMg1EpkYE5Vflu+5j/mO6X9GGwczthjqKtDStZV19/krUvNmO2RWHSNVy+2P0A
	S8WeaHcwGWsvcXPLsBgL7C4dctsCD3yjga/gyAFhb8/b0mqJAKcEdEJyHf30cPtr9EJw
	CC+B3u/bqqajHW+SXKe6W33ah2UVATXbBUDhlhg2u+4rbmGXAYj0rOHxR1q+CATwt7WG
	8GVpdx3J2AWGSYfA7Rr+rs4LcVdYBJbIyRynWYG+VJcDuzH6ziVO3z9bhxvG83owMGa/
	R5OQ==
X-Gm-Message-State: APjAAAVjM7WmuI2Brxu0AqzJ1DAQBymoEoHGAkPP7I3s4gyxRaa7fDeR
	TL8pkzSEw40eZd6FeZoFDoXDnnPLH+ljUg+dx4Ws7NY4STM=
X-Google-Smtp-Source: APXvYqwDeHhQA/fapCJsyD9dBIsjVZUVe/le5dnfi+BAHNlnHnn0QEHA1lhq0QmP0XvbaaEDzQdb5xOh+gzvOhrMGPQ=
X-Received: by 2002:ac2:4904:: with SMTP id n4mr4249449lfi.53.1559725576391;
	Wed, 05 Jun 2019 02:06:16 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 5 Jun 2019 11:06:05 +0200
Message-ID: <CAEhQi8=9_SmqLtsUnb8fWan+3Z2SF0gQvovts=e+GCFg88PaRg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [multilib] No Manifest file generated from: lib32-alsa-lib
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
X-List-Received-Date: Wed, 05 Jun 2019 09:06:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build an SDK where I have multilib enabled in my
local.conf but I am encountering this error message

WARNING: strix-sdk-1.0-r0 do_populate_sdk: Manifest
/workdir/builds/imx8mm/tmp/sstate-control/manifest-x86_64_x86_64-nativesdk-=
lib32-alsa-lib.package_write_rpm
not found in mimx8mm aarch64-mx8mm armv7at2hf-neon armv7ahf-neon
armv7at2hf-vfp armv7ahf-vfp armv6thf-vfp armv6hf-vfp armv5tehf-vfp
armv5ehf-vfp armv5thf-vfp armv5hf-vfp allarch x86_64_x86_64-nativesdk
(variant 'lib32')?
ERROR: strix-sdk-1.0-r0 do_populate_sdk: No manifest generated from:
lib32-alsa-lib in
virtual:multilib:lib32:/workdir/layers/poky/meta/recipes-multimedia/alsa/al=
sa-lib_1.1.5.bb
ERROR: strix-sdk-1.0-r0 do_populate_sdk: Function failed: do_populate_sdk

I am currently using poky sumo could not see that anything have
changed in alsa-lib except bumping it to 1.1.6 in thud. I have tried
go through the code in both

./poky/meta/lib/oe/package_manager.py

and

./poky/meta/lib/oe/sstatesig.py

to see if I could understand why there is no manifest file created for
lib32-alsa-lib but without any luck. What task should I run to create
the Manifest file? Any other pointers to where I should look to
understand this issue is appreciated.

BR
M=C3=A5ns Zigher

