Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2E61E0090A; Mon, 27 Oct 2014 02:55:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 671D4E008FB
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 02:55:44 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id u7so1155498qaz.25
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 02:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=w1QblD23hn03QTvM4K67iVwEH7ZRxJshHoXX12vL7wE=;
	b=bR4vU5VCKoPJ4cLLwC2v29jqDTorcJR0ElGDKm/LIzjVi284OM4H5JBr2Igf7dERsS
	GPMghr5QX6Uy2/S7fIvj3HKEHOEEPBGHE9jy093vK6DJA8y2aKP/vlR31ycGWqBI1p8g
	2RaGvoEuT2+I1HWwktfbIzEc/JKdko32lvDXHBIpNzo9sPBdLy8WicKMKG5Jz3C/DJB0
	j7xd+aM+QCbLbo0Fz6nXgC5mqjW4U7gbBPfzsOpOAdVcpRnP0wYO068p/mZy5ngVlOYy
	yyviyywhXqIwvPPsZxRZbxhrNAN/9o3X5d7YfFAvMzCB2M/hGeJewtPB4ivf2nyTxOdf
	NU+w==
X-Received: by 10.140.34.102 with SMTP id k93mr28890743qgk.21.1414403744155;
	Mon, 27 Oct 2014 02:55:44 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.142.78 with HTTP; Mon, 27 Oct 2014 02:55:03 -0700 (PDT)
In-Reply-To: <CANyK_8eHtCb+a_a1fx16R3Nw0WVBU5mh6TFxSOwx06mRWdjuGA@mail.gmail.com>
References: <544E11CF.6010701@windriver.com>
	<CANyK_8eHtCb+a_a1fx16R3Nw0WVBU5mh6TFxSOwx06mRWdjuGA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 27 Oct 2014 09:55:03 +0000
X-Google-Sender-Auth: t0_rusC9SDUN6f1M0yWnC9ZJ6Fs
Message-ID: <CANyK_8e8u5V3m33GQ8yFjcBFrWMHu05Yup_qJjg8tu-qDW584g@mail.gmail.com>
To: Liu Jian <jian.liu@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	opkg-devel <opkg-devel@googlegroups.com>
Subject: Re: [OE-core] [PATCH] opkg-utils: update-alternatives fails for "[" and "[[" in busybox
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
X-List-Received-Date: Mon, 27 Oct 2014 09:55:45 -0000
Content-Type: text/plain; charset=UTF-8

On 27 October 2014 09:52, Paul Barker <paul@paulbarker.me.uk> wrote:
>
> Sorry, you've sent a patch for oe-core to the wrong mailing lists here.
>
> Also, this patch doesn't apply against oe-core anyway, it looks like
> your email program has corrupted it by wrapping lines. Please use 'git
> send-email' if you can.
>
> To make this change, please submit a patch for opkg-utils itself
> rather than for oe-core. In oe-core, we can then simply change SRCREV
> rather than holding additional patches.
>
> Thanks,
>

Actually, that's a bit short worded. Hope it doesn't sound harsh,
getting patches in the right format to the right list can be a pain if
you're new to the project.

If you've got any questions just ask, either on the mailing list or on
IRC. I or someone else should be able to help you out.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

