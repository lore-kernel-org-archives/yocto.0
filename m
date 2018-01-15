Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23749E00D17; Mon, 15 Jan 2018 00:21:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f49.google.com (mail-pl0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0B04E00AF2
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 00:21:30 -0800 (PST)
Received: by mail-pl0-f49.google.com with SMTP id t4so360834plo.0
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 00:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4OiazBRfQRlas1P0JSNniYlib4fVc7wUMnRu9Wd55uo=;
	b=nUbmUUcFp0z9noLCKr1B8GkcO8YF1sVKUrwL+Yf5y8pufe2yfDu/nErzzeTKaNslaU
	8XeQY9/wL/oQl1duPFTW34erTB0AuTZ9jhwRSc67FNFw83hen6fd+Sn7+oqPLdlqFXrt
	beVbWvjF6pwtwBxF/6ilfNmFnJfKmHdHS5ZP+B/unzpTUOpXnmSQVfwLgtY2ZH4iLsF4
	yTxpNNVHg94mhXyBGqykcxLODNcSPrgC1s2VgZCHJBj0yodqdoc83QBLQeKdBQCcvKsz
	ydPQVM2Yv7GN/1I/v9iqHBiND5UBeA/uz8Ni8TwVf5H2LlHutdjyNUxDNk6ojTDVBR6i
	njpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4OiazBRfQRlas1P0JSNniYlib4fVc7wUMnRu9Wd55uo=;
	b=k2BaMuvfNtONgfDCSgIguv36OH1YlL02pFAv/Ys0KdiX6ow0PXdxPio2Byr1NKPIDn
	w8wIPakwfuuW/WymQOrHtjxMJpoIiYF0FOpTGkOfuU4r3AtGv26fEeqcehEa2XmGVgVY
	em6mqymZ6b3BvmgHY9SXsaVEac9VwbptEhB6sz4WHrNymonlahzLIJlybWrevYrPnMwo
	qoHVzlbK0PSLKOzIs1d1JkMlHxDNM3+NeGhq2f099bj2jFYWDdbirtOyx2ockNdmUBsN
	05iuV86K5WCrMFnztOAT/W+Mm5+FbeGI74g4TyN8I8Dz64Rcrj1dCVlILF2WKhNxj9wB
	vYYw==
X-Gm-Message-State: AKGB3mL8l1bE/9IAsRtkKYPnwCpgEgptEpVU8TkxYNV9OFDSMaBxNOcS
	+ogO5w/C4wNf1wOCWMyQ/VXF+5pMAVLOJ9Fjgu2E2A==
X-Google-Smtp-Source: ACJfBot2nLbL5ZMXlTtRNvf6y6IBwXaAD5tKoUuXjA/vfXPR2NJEBCVJp8eAdqo3IQjzwNl6MYxWTjEfF7/WS3hIsC8=
X-Received: by 10.159.242.198 with SMTP id x6mr29222558plw.340.1516004489570; 
	Mon, 15 Jan 2018 00:21:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.243.69 with HTTP; Mon, 15 Jan 2018 00:21:29 -0800 (PST)
From: Satya Sampangi <satya.2891@gmail.com>
Date: Mon, 15 Jan 2018 13:51:29 +0530
Message-ID: <CAF1M0z6g24OyAwtWeZ+WL7Dz3J9KEN_6Xm1hBR4ZXFDA-4Tjig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-ti layer failed with Daisy
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
X-List-Received-Date: Mon, 15 Jan 2018 08:21:31 -0000
Content-Type: multipart/alternative; boundary="089e082c01b4142e220562cc4d63"

--089e082c01b4142e220562cc4d63
Content-Type: text/plain; charset="UTF-8"

Dear All,

I am building the core-image-minimal for Daisy with meta-ti layer included
in bblayers.conf file after removing meta-yocto-bsp layer. I am getting the
error shown below,

[Satya]~/Yocto-Daisy-Labs/poky/build
bitbake core-image-minimal
Loading cache: 100%
|#########################################################################################################################################|
ETA:  00:00:00
Loaded 1446 entries from dependency cache.
ERROR: No recipes available for:

/home/satya/Yocto-Daisy-Labs/poky/meta-ti/recipes-core/udev/eudev_%.bbappend
ERROR: Command execution failed: Exited with 1

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
[Satya]~/Yocto-Daisy-Labs/poky/build

Could anyone help me here, what to do?

Thanks in Advance,
satya

--089e082c01b4142e220562cc4d63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div>I am building the core-image-=
minimal for Daisy with meta-ti layer included in bblayers.conf file after r=
emoving meta-yocto-bsp layer. I am getting the error shown below,</div><div=
><br></div><div><div>[Satya]~/Yocto-Daisy-Labs/poky/build</div><div>bitbake=
 core-image-minimal</div><div>Loading cache: 100% |########################=
###########################################################################=
######################################| ETA: =C2=A000:00:00</div><div>Loade=
d 1446 entries from dependency cache.</div><div>ERROR: No recipes available=
 for:</div><div>=C2=A0 /home/satya/Yocto-Daisy-Labs/poky/meta-ti/recipes-co=
re/udev/eudev_%.bbappend</div><div>ERROR: Command execution failed: Exited =
with 1</div><div><br></div><div>Summary: There were 2 ERROR messages shown,=
 returning a non-zero exit code.</div><div>[Satya]~/Yocto-Daisy-Labs/poky/b=
uild</div></div><div><br></div><div>Could anyone help me here, what to do?<=
/div><div><br></div><div>Thanks in Advance,</div><div>satya</div></div>

--089e082c01b4142e220562cc4d63--
