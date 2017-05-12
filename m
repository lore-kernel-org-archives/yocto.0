Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B37AE00852; Fri, 12 May 2017 14:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F826E00812
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 14:00:39 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id x71so24305828vkd.0
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 14:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=N1F+/scXgKjq3eqw840K9tVTwBUOsExr6sUnMppXgWg=;
	b=aPTvlzPC1A/hgmdG6aXzvAQYO6rqGqjBn432gDgd7gFJC5KNx38EUbXUdWfl5YN3aV
	iSktvb+p1qx2cKaa+RIabJV82E4YlPYDtPdphLl2QaHjfQhdNoMWJTR9+nPorfHxVvSn
	VL0ISvXJZxA6z22FGybQAaflnLAMtQzQqa8pBjouOd94VNzS19YL0PAcgAADwSI5LeYA
	NRG4OwGernMQL9BENY6rrjFkfMn7aOIOXgOyj0Psa+1ICZ1c2ZL1QA0v/LVe0KlkUlz3
	ZjE2aqt+LGf6/LSABvUIrPWC8RI5Qu35osWgtMCKirevCLEqEAzLCJSxD8T8nDlJa/ZX
	g0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=N1F+/scXgKjq3eqw840K9tVTwBUOsExr6sUnMppXgWg=;
	b=aJSSJrNuS6Fv8g3K/QXkzzXCcr0dltoGMdV27IBCriZ8Vwq/zBBchVWJ8p740YJcbw
	KGUjkFlcbly07vfv/xIxGZOgSpDeSXa9IccO8jxY0ueY+Z6lKYV1vBt9yVGQNiRylRZ0
	DENrCwQCynC5G2ypJlOaz3PXiTepi9XaRz7M7f1QLDwO+Fi2Iy46NQTdRXzaq1Lu3ipq
	lE1X40E0qxu3n9Pa7G1kjaaZZwcai2YRZV2Lnjft86R9Vdzke3ICy34JaaB+iMYEwqRg
	u2nb22oVFoTsmI4YXax1hdXp19QKrFiPXDZCt8E3bz/8ur3UxCmHOy3xIrunVK0gfCRu
	Ugzg==
X-Gm-Message-State: AODbwcAbTBjQAorTQr2IflleKT9unm/PmjtBWjYGemsEzzUBN+4MWn6q
	z6sRuujeQlC7efgSpC5VxnT1GQppoA==
X-Received: by 10.31.50.80 with SMTP id y77mr2537169vky.137.1494622838788;
	Fri, 12 May 2017 14:00:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Fri, 12 May 2017 14:00:38 -0700 (PDT)
In-Reply-To: <SINPR03MB227019BABCDFF61CF3539FFAD1EC0@SINPR03MB2270.apcprd03.prod.outlook.com>
References: <SINPR03MB227019BABCDFF61CF3539FFAD1EC0@SINPR03MB2270.apcprd03.prod.outlook.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 12 May 2017 17:00:38 -0400
Message-ID: <CAHUNapSTVu=hAuSz+hhDd+dbdFHSaN8Oy90OWz-yq6zkck3LCA@mail.gmail.com>
To: Steve Plant <steove@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry pi build with QT5 creator...... failing to compile.
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
X-List-Received-Date: Fri, 12 May 2017 21:00:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

It seems like there's a lot of stuff going on at the same time. So to
start I'd like to just focus on one thing at a time.

On Wed, May 10, 2017 at 9:40 AM, Steve Plant <steove@hotmail.com> wrote:
> I'm currently attempting to build a raspberry pi image, which I can use to
> develop QT5 code for a beaglebone black.

This statement is very confusing to me.

It sounds like you want to build an image for the raspi, boot that
image on a pi, hookup a keyboard, mouse, monitor to the pi, write qt5
code on the pi, and compile that code on the pi to run on a
beaglebone. Is that your goal?

Best regards,
    Trevor

