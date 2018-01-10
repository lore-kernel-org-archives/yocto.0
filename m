Return-Path: <ngthanh.vu94@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0F5CE00DE3; Wed, 10 Jan 2018 07:49:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ngthanh.vu94[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9B9E00D97
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 07:49:17 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id x42so12721233ita.4
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 07:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DRPwyzmRpab1xLgms1M6m8LsnayTLLMAqhVDedE/41I=;
	b=FrdjKY+IShFx23emhwOytBfb6JeL6Sm6gZbbTnSsuAM0dM6CYZAGMb9OK7cU8g2kX3
	ldCSn0Qvo12W2ZvqYJi56MOJq9/q3oxlZ159rtHGARbwGnlpBuvSHqwKlNuPqkBqBjYb
	t6Szc3iAya0T4uQehx6f3BggK8yVgR/6E39rRNwTfAPrkaPNnuCk9T0XRFkhVn1afDs3
	1ctbOiiYvTA+h1dPArtSxWVoGgjsk1ECUDAGnzOCVxZAw8CSD4AtwQeH4H9HQyAH/IJB
	pqLqx1eiUDE/ZMUb1w4TZFzDRPC5FDo/LQ+7OlZHFxKS0tmzN43aujoKhdd5aUDD3Rxa
	TVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DRPwyzmRpab1xLgms1M6m8LsnayTLLMAqhVDedE/41I=;
	b=rx7iPq1FNUUG257cHXRI0eNfz8lzjyvW66dOfZCVJHwjs90Gj5VbZ/i04ru4VpKwhs
	Gsi86TKwyOg/L2c5ZfCPURV5n2EEFL+CntlCdggMYiUt+9RE+FRTCsLm0Ui19i0D8frd
	ov0R5uEm932hT7+m3cxDrfQ1YpKO/o30FSVQKhdhT3cjMx7y/DcuBCKVz6xBzdm2yyVu
	dbWfEmceRglIisGlyi9lHW2qKFn1f9NDiw1AwIlUM01957Qw4kEcRSiH01r5pQIx+FvH
	Y5UJtOUNmpnq/9+kv5r9yQaTeov4OP6vNTLzDGhq+3RBCKdfhB0y86U3vmpBmJySLgh9
	kayg==
X-Gm-Message-State: AKGB3mJLTIDcgrJbM/HWRINlm9Pw70TUcUgwFxVu/w6gyqb80xtKxWcq
	WSV/YiYiu4K+Ikq7W+OWSt0jtK0+6fuZKWuYC2KIew==
X-Google-Smtp-Source: ACJfBouDdYem+LPpZgmyteWLRMZVxfujaoMflTZ+RBmeuHmRTSRIxRgZo3tm4GMH/FOul6bTnyCY+cd35BH57R3G6SE=
X-Received: by 10.36.173.26 with SMTP id c26mr19250788itf.15.1515599356464;
	Wed, 10 Jan 2018 07:49:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.44.21 with HTTP; Wed, 10 Jan 2018 07:49:15 -0800 (PST)
From: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWpIA==?= <ngthanh.vu94@gmail.com>
Date: Wed, 10 Jan 2018 16:49:15 +0100
Message-ID: <CAGJSYq=RcTxi900fO7hnV83jwOZnTDE1KnGwB7efTMtT_+Mxow@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Where to further modify or remove some elements in the zImage and rootfs of the core-image-minimal build?
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
X-List-Received-Date: Wed, 10 Jan 2018 15:49:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c1fc05043950105626df96f"

--94eb2c1fc05043950105626df96f
Content-Type: text/plain; charset="UTF-8"

I'm currently trying to build a very small image for my imx freescale board
by further reducing the size of core-image-minimal build to make it boot
faster. However, I do not know where the recipes for building the zImage
(and rootfs) locate inside the yocto directory (fsl-release-bsp) to start
modifying. For example, the networking/drivers/sound part in the kernel
(net/built-in.o , sound/built-in.o ....). Can anyone give me some hints?

--94eb2c1fc05043950105626df96f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m currently trying to build a very small image for m=
y imx freescale board by further reducing the size of core-image-minimal bu=
ild to make it boot faster. However, I do not know where the recipes for bu=
ilding the zImage (and rootfs) locate inside the yocto directory (fsl-relea=
se-bsp) to start modifying. For example, the networking/drivers/sound part =
in the kernel (net/built-in.o , sound/built-in.o ....). Can anyone give me =
some hints?<br></div>

--94eb2c1fc05043950105626df96f--
