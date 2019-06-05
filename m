Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25DA8E00D63; Tue,  4 Jun 2019 19:32:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE04E00D5C
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2019 19:32:36 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id u19so3145033ior.9
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2019 19:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AVHgVcaK7UbIVHR2WqSaLsbtVAqjclz4XbB/E8yGfJU=;
	b=CXDjcXNuuImIdTadoOC0Ctei8Fj2hW/VdLnvG+BxkYNjDKIiuaf7TQn7PJQSG8E5xP
	d78iyAaxjZFgw/NCBhlBVS3jH9hILaaeuTZv8sPo/D37izaLKwY1G6o5bqn3AIDx6H4Y
	VeQnOuJ5ijkqu37W8ifsk5QFqiDRGvdyjY4nM75Y31D/w55YSh3zPBgZlQvAaRilmCTD
	JLhZq9Z126TIpnmwe7fwjQHMyUo97hGg8gRiOro82jUvGQF9IrJPEmcTPeR5bK174UkX
	aX2Gr5Us3s13Vsvrj9p8tLm67l4G2ZYHuGWCGt+7EvT9DI/mR9STtoEHlH9L81aJk8D9
	l9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AVHgVcaK7UbIVHR2WqSaLsbtVAqjclz4XbB/E8yGfJU=;
	b=WMarnAYNOmaAW2kbcJu7vTfKVNVec0XVeW+4UktgofAQoVEj71CtGqjJ4d2hcedd07
	z/Tk43HGZwzXTdRshV6vQONbcQ2XqI/gRzE5zMqNTF4AQEjiO5GHF9QLHueZcvCd99+E
	jy4AuN/HNwVQO8g9bjj1mzXSsqtWvQrvI94UM+Oa3Zos+mqDWxJMlWiRnlqf45r/Mbkm
	Rj7l2P5sqB2639UxZJt/ySPuUgNGyeI8vpB8n2K3b/x3RZoxSr8GSUsiAvqvIkIlANwZ
	Q0YWv48T6IZg8aaOkPXi8Vwq8Cn7G+S42rYMH0C5IobcIFK1SX+5uOabQ3bZ5wMZKMzT
	LzEA==
X-Gm-Message-State: APjAAAWuaU3F1yT08M+40oT/6kphR7Lk5y9yk/88pJAeFRxvMjDCwSkQ
	+TsGXaCb8NSiIuUHuqSssPjngMkKNOS/e1+uLrGlVdVD
X-Google-Smtp-Source: APXvYqzkNwPadZMkHSzoS5mLEYGSTr6bbEOzhag12k41+CjfyVv6FcxXRlq0tZXN/PwDveXsF1nIieK72bu0Yu8PVIs=
X-Received: by 2002:a6b:8b51:: with SMTP id n78mr24666450iod.192.1559701956015;
	Tue, 04 Jun 2019 19:32:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP;
	Tue, 4 Jun 2019 19:32:35 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Wed, 5 Jun 2019 12:32:35 +1000
Message-ID: <CAA=hcWRLVZXTeubkZwJtCRCBTGysUvkoPOoC3BPESOEUNoRpoA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto image types
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
X-List-Received-Date: Wed, 05 Jun 2019 02:32:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I built Yocto image, Could anyone explain what are files in
deploy/images directories?


modules--*.tgz

dev-image*rootfs.wic.gz

zImage*.bin

I guess modules--*.tgz is compressed file for all modules,
dev-image*rootfs.wic.gz is the rootfs image can be downloaded to SD
card, zImage*.bin is the compressed initramfs can be used by mfgtool
uuu for download to NAND flash, is it correct?

I currently has an error of for downloading zImage*.bin Wrong Ramdisk
Image Format. how can following recipes be used to add ramdisk format
to zImage?

meta-freescale/recipes-fsl/images/fsl-image-mfgtool-initramfs.bb
oe-core/meta/recipes-core/images/core-image-minimal-initramfs.bb

Thank you.

- JH

