Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A657E00B65; Sat, 13 Jul 2019 04:53:36 -0700 (PDT)
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
	*      [209.85.166.41 listed in list.dnswl.org]
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E185E00A93
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2019 04:53:35 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id m24so26177830ioo.2
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2019 04:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cAOYWVfot+tnRaD5kiUpix0DepywLmITIwqGiYgltXM=;
	b=EIIbqGyLFFlUslbDg9QbnHxkW/2JKk2zP8prlHlm2RsfQdk/PhwAg2WINLd+D7rZro
	evRn1bax2NXeSP3auR1aLhuYoqVWd3WJhEkfeQ33xW1DgHrj9KbhHUGJJ8w3s5Gd98LZ
	z447HpL8f6V3qC7nNZOD/zFhaEC7i0ATkfDQ3pPqzAh9GsjaMiBME+olOM1X/hNEaS4A
	SNq8bPPbbITCVmp9jbaZe0cg2530/O8ZO94ogLgP9Z0oNbbYcROhbXEjVe4xq2Dczlew
	pWs/YO6E07/Uv0VetJr++nVb2Bl+K9dC+o4GyRYFoa8oVcFUaCf6JTthNhrlFaRsLR1w
	8fyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cAOYWVfot+tnRaD5kiUpix0DepywLmITIwqGiYgltXM=;
	b=gfJ7K75deZMSJcNh2Wiq8crfvT2pWhESWXKAwRBgG48GpCRgaFM1cg9w8sIG4VcGqc
	/jDVaSvTL61UrAT5Ao9PvFc5bMoTjFDNUNDEpVQuve+1i2btBvZEJilQKZrBqDDmJI4z
	zztvuCFiPMXxSIj0St0TyKbVidgCsT83xoILJrL+vaEPPUXEcHGjIcLsXHCIdRWw/sxX
	uaWN7pTIIs6Z5oVYmJz9i+VUJdkd/K+boN4E3ibwRy+yPTCg3Pqvh/mkBHaPtCuxguzm
	8xrAmPmcix2YXcNRFOscBxF+YV7VQRGuav/XIu1Ht0jit0iKt6J//GCevgYRNiGuMAeA
	XD+Q==
X-Gm-Message-State: APjAAAV+86RUqc+DehpWOFYnjvUVPZFCJzdyZW3/rHpLCs8LD9S1ZZWk
	NwZwYj3/uHv5x9qhXcOefbg7qJXqlNweVLBuY/Y=
X-Google-Smtp-Source: APXvYqzi0yRn+4j+qVH7mQYDTVtMOZ+3jMPol2XcDNj9Q+RmgwdEmog+WkygXe9J/0cFpNK7BD+Pd87p3WmGN6SQUvA=
X-Received: by 2002:a6b:3b03:: with SMTP id i3mr15504702ioa.302.1563018814563; 
	Sat, 13 Jul 2019 04:53:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Sat, 13 Jul 2019 04:53:33
	-0700 (PDT)
In-Reply-To: <de0b47f2-772e-886a-a2ca-68ece24551ff@gmx.de>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
	<bc2d0dac-da76-9e29-cbb0-d597e264ad53@gmx.de>
	<9228f0cd-69ce-e99f-9b1c-271a39e74a45@gmx.de>
	<CAA=hcWQ1pAwNi=aSmLjiig+Rti_=rjr14W6G-ZE7W_NTdENbgA@mail.gmail.com>
	<CAA=hcWTRAtkC_5SmHArwtQqDnc_tG4Q9JD6O4rokd_dS_A+ofA@mail.gmail.com>
	<6c83cc85-0817-64f8-5472-51e4b484be65@gmx.de>
	<CAA=hcWQtiyFd4ezM+bTKRFN-vzF8kL0DPiqFRbAi_4MeHJnRLQ@mail.gmail.com>
	<de0b47f2-772e-886a-a2ca-68ece24551ff@gmx.de>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 13 Jul 2019 21:53:33 +1000
Message-ID: <CAA=hcWQqqJjEqCqnJr9K7LhqkwQhzKO4f8t0NwCLfPHi30S49w@mail.gmail.com>
To: Moritz Porst <moritz.porst@gmx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Sat, 13 Jul 2019 11:53:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Moritz,

Thanks for your explanation, I know the copy from your script is for
an example, Did you get the zImage-initramfs? I'll double check to
follow your and Zoran documents.

Thank you.

- jupiter

