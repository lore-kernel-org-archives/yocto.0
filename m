Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5EAFE00AD5; Tue, 11 Aug 2015 08:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F240DE00758
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 08:00:41 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so204692367ioe.3
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 08:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=ph8LN/iPi1sBhGldP1PF2pspZCghJuEwo7Rf3nQcuCY=;
	b=YgddtHGMiZNuocwkGS6KMWhShwfZ2H3DmEaGFfRQpQXRWwYHuSbLJjiJcSFJJtmWEh
	ZfgNNDCksKffauSj/E6De82DHVDY+mlsOFpDFJjKKWNhJHjsae3O374Bqrdg6PtJv6Jg
	EAupLCR34qeZuPVKNE/H0AmzYhzulGDyiU8/x1geeer2XK9hJnio+KYWcY1IrM7zC9y7
	yoKQBN599Nt1y7kTDr19jleYw1jbeMGKNN8LkmgYUdd9HeyK+SyjJLUGj1d/xvwXrKhu
	exzbPnJT88Msd1eYfDGqxazDSl48xanKey42nOtCGuSUnYDtJxRVJOacjmfoK0I9Ys7t
	9Bzg==
MIME-Version: 1.0
X-Received: by 10.107.150.68 with SMTP id y65mr3105772iod.133.1439305240600;
	Tue, 11 Aug 2015 08:00:40 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Tue, 11 Aug 2015 08:00:40 -0700 (PDT)
In-Reply-To: <3ad440473bcb6e0b15f98fb3abcb1cd9@technux.se>
References: <1439204904-8305-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<fc34ba0543c946b98d8d736ff5e66421@technux.se>
	<55C9B2EE.2090406@gmail.com>
	<af77dd672b17395613fdd2d09285aa46@technux.se>
	<CAJ8H0rJe3Nz+d32ksyZ3iP7w9rzV5AkvCKsZy=qpFAmSbHjPpg@mail.gmail.com>
	<034593ed817a9a220ef7074e598f9b2d@technux.se>
	<55C9F42D.2050909@dynamicdevices.co.uk>
	<3ad440473bcb6e0b15f98fb3abcb1cd9@technux.se>
Date: Tue, 11 Aug 2015 17:00:40 +0200
Message-ID: <CALbNGRTx2+HCJ7xpOFFRrABYmhukPOcBM4vt2fiGP0BikH9LUg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Tue, 11 Aug 2015 15:00:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 11, 2015 at 4:02 PM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:
>
> Sounds good. I agree we should try to get that issue integrated as soon a=
s possible.
I asked for the kernel updates as base for vc4 stuff. From what I've
learned so far vc4 is still a way to go and there is no need to hurry
with other patches: so guys take the time required for patches.

Andreas

