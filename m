Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3084BE00CF4; Wed, 17 Apr 2019 08:26:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD9C1E0096F
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 08:26:42 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id g1so14575862qki.5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 08:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=16GIwkm2bQN00F5c36Ud3Ck6dzIrdeYuRpRTIFzaGT8=;
	b=DiDjZkN7TE8iODHTX1O1mG/m1zO5fqEy00i0qe44Py6oGRN156a2yMqyU8NxNewkj+
	uPaVbUDYcE1d0wt06Uk22vHbVM9aglQpuzlatVljbEIJ8x1rkNDawu9sPzZMeOiusGJv
	TvzGMf55JBxGBVMFKBOCr+wokXf7ooPgocwaxcsB4Q8cs3TXLdJ3Nm7W0jsDSyTBPgtR
	ybbgX3ka1web0tIdy/olp/+WBvBTZ7WtzTCbnKxDDxK9qIYmHE/IWc03XxGMj/NAlm4d
	NpAm9OA64QrRpFiD8QAuKydXWhy74o8Np/ECNo17EZNBAsh7lBllcXdRAavI1q01mOKy
	c+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=16GIwkm2bQN00F5c36Ud3Ck6dzIrdeYuRpRTIFzaGT8=;
	b=h5Df7mfaGwjy8/fHXLeyjNmyd0cWQq/4lkVHd9BhZcCb6XEX16IF/2+nrZBNG9YMfE
	Fe4O1GnT6QM2260LCB833NFkI/vVsA9RrrEQqJMPokS6dSpB2wfHqJE0niZDwz3apVys
	mICVQNON399MckE+l/UAs67n6zzTnFip7xmG6Il7jmsCpFJ8muYoHg/VRPNoN72cJNEP
	jiKRdfd+2SKnYTNDJKgVnICSNjv+8B0zoLRrlsHZGcyOvIYuGSsl/b9F9aF3/5VoNcpd
	MpWcy+frnYxXxiv5PmQTgzgtRHSBqdFzOX7xH1cYhdGiFd0lod8CYBrF/h5OBerrKGPy
	W2/A==
X-Gm-Message-State: APjAAAUeAIy/CicvzdurehwrOa052x+sJ7QR04n8dtMiyOo3cCbv4icy
	lUCaP90GswV/2D+1B3BGmdzoEXwkDv3fkDl/UVaqy9A0
X-Google-Smtp-Source: APXvYqzGT7MnxhdtUpO8czWNchSo0JPUxr7v9RkhgWdLp4QaFniLfKM4HuleJIsZOr1GKNYQECaIXmeErHYd2oWjiCM=
X-Received: by 2002:a37:6186:: with SMTP id
	v128mr45264825qkb.320.1555514801983; 
	Wed, 17 Apr 2019 08:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <e6fc119b-6216-9dc2-b0d4-8692e081ab29@bisdn.de>
In-Reply-To: <e6fc119b-6216-9dc2-b0d4-8692e081ab29@bisdn.de>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 17 Apr 2019 17:26:30 +0200
Message-ID: <CAGAf8Lw0jeS5En90TQfFQzYGAF5x6ZhVzLy4xvXu+GZHoq8-ww@mail.gmail.com>
To: Pierluigi Greto <pierluigi.greto@bisdn.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: fitImage: hangs at "Starting kernel ..."
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
X-List-Received-Date: Wed, 17 Apr 2019 15:26:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hello PierLuigi,

[1] Which arm platform (based upon which arm Open Sorce platform) you are using?
[2] Please, can we see your added proprietary ash script to U-Boot default env?

Thank you,
Zoran
_______

On Wed, Apr 17, 2019 at 5:13 PM Pierluigi Greto
<pierluigi.greto@bisdn.de> wrote:
>
> Hi all,
>
> I'm trying to build an image for an arm platform with uboot. After the
> installation, when the system is starting it hangs at "Starting kernel
> ...". In the log I can see that the kernel uncompressed image, the
> ramdisk subimage and  the Flat Device Tree are found. But the kernel
> doesn't start.
> Any hints on how to check what it's wrong with the image? For example if
> the kernel is correctly compiled, the FTD is the right one ecc.
> The loaded kernel is shown as "uncompressed", there is some way to
> define the compression type in yocto (I have an image that works and the
> kernel is shown as "gzip compressed")? Could the compression type be a
> problem?
>
> Any hint is very welcome.
>
> Thank you,
> Pierluigi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

