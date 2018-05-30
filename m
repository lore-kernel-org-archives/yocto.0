Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 624F6E00C75; Wed, 30 May 2018 13:21:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAD_ENC_HEADER,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 BAD_ENC_HEADER Message has bad MIME encoding in the
	header
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7431E00C6B
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 13:21:12 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id x34-v6so11702586qtk.5
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 13:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Jb/x8h5YocU6UymKLMaT/iwcMX9yEvgkCnC2cVRCx3E=;
	b=dlDjkFWCfqZ6H06Q16ZAoA0hPOyXNLx1kZVBFd/c3/IZ3zKdq0JFYcmWiYFFUydav9
	lu93YhnTbPK2auL6Gt0XdOwtnlzgC1kQnmdz47QSsblASQ7hiQOu+RN9bBjP3VOK0KP4
	QrNfq0fbv2Lx9oEI2iZP/tAXPKk3pBqSpsNvipLGVMZU/AoqEH0NUG1hIh0MotUKUEVo
	d+m9fqjd4CRqBbFl+lc6ywFwStm4tGeoO9gpEqIkHfTyeyZoPeG5VJLHuINJd6huQWS0
	7orZF2tgcHfJTpdhG2lI2ibAUK2fw00sgOY9WqT02luic/cx0QOeYTSli55T/neQxIMH
	bJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Jb/x8h5YocU6UymKLMaT/iwcMX9yEvgkCnC2cVRCx3E=;
	b=IATAz8V+VV7asLYa8gU2PfEkHbpSHjdqHJRvZLveB4AYxoSFWFBj16P7gRaBKAe1UP
	SIxqXnDK2QoDGeKDDFk35mmvgc804UWfoCzbNm9MvCNqBGXL2hXYG1cyNQrgh7lpIZNQ
	BWW6R/aWPzfd1BGd5GohISi8MT+2eOIeiYYEC+c+ZISHkfg7mnih/h9KMzeMqXzgfD/l
	kNHeHZErrM36s5bdGs5M/A6VDU/k31IsfL1sDR/nDphC44HzJadkjQM5coOZEzJLFlJ+
	Z1+eyUyscegRLrfTgOe8xeR0HrclVkITCNXB6XQ8nSUVk5N+CIhaSlNV6ifzVz6FLMIE
	M9rw==
X-Gm-Message-State: APt69E3Nl4pxigPvKZ3fSdFtKb6VSYOAUJnE0LjhXG95YZqius43Iwal
	iRigvf8WGgi6tj1+3jR98XFA9vks0P8sLVlKfws=
X-Google-Smtp-Source: ADUXVKI8fyslUZy3JoAoBPXvsAIoXRwzLzYFu1HwLcTiF1Ar+eGd78HeOp9M2pWib4XTHEWJvGEpStQaRypH2MPvE2A=
X-Received: by 2002:aed:23d0:: with SMTP id
	k16-v6mr4295697qtc.20.1527711671906; 
	Wed, 30 May 2018 13:21:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e486:0:0:0:0:0 with HTTP; Wed, 30 May 2018 13:20:41
	-0700 (PDT)
In-Reply-To: <7a34-5b0ebe80-7-7f4f7580@144013358>
References: <7a34-5b0ebe80-7-7f4f7580@144013358>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 May 2018 13:20:41 -0700
Message-ID: <CAMKF1sr-uvuyonN_+VvirmnOvA38gHOPOdWmRdSetHrtu0894Q@mail.gmail.com>
To: "david@lapinbilly.eu" <david@lapinbilly.eu>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ?==?utf-8?q? [Rocko] linux kernel built with icc
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
X-List-Received-Date: Wed, 30 May 2018 20:21:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 30, 2018 at 8:08 AM, david@lapinbilly.eu
<david@lapinbilly.eu> wrote:
> Hi there,
>
> I am using icc from intel as a secondary toolchain.
> In order to build the linux kernel (the one from meta-intel) against icc, I did patched the line:
>
> KERNEL_CC = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_KERNEL_ARCH} -fuse-ld=bfd"
>
> within the class "kernel-arch".
>
> I wonder if there is another way to call another compiler than "gcc" to build the kernel ?
>

you could override KERNEL_CC settings in a kernel bbappend

>
> --
> David Marec
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

