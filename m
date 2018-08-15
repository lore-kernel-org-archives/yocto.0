Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71473E0049F; Wed, 15 Aug 2018 14:50:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C59AE003D7
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 14:50:45 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id 13-v6so1913249qkl.9
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 14:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=agd5hwA48Tny9H6VxolAlU0/9vDGAXTjk+jEgeCmWZ4=;
	b=p3ndSnvmjt68GQsuJUfGsKY4oWaIPaRSsTfE8cGGvEqerb6rKaUe/1oTlRvdbtd2E4
	R9MfAT395KTrF09ddftha9Ojta13RhRgvqEhFbR4QGkybXAP2uBHJqCPP0T2Nt91+i16
	fnNAXxl5qvnIizlAQuDtywjPzH0+hrWIWqYfmgDPd8M7TO3vbZ9/JTbkqbuMa5Oxw27P
	xSctajgxmh/6ybQkH+B8/eiF3N+brhdoH/fFj8GYhIYx6jL66zuOmweRaEmpF7mj0n+l
	fRI9LX8V9RWMC7AquacMk7ipF3pzW16Qtf68ozZ4xtU/1LhJLdIviv4KyqRPzohiT6DT
	qIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=agd5hwA48Tny9H6VxolAlU0/9vDGAXTjk+jEgeCmWZ4=;
	b=h1rvLn/E7Exp1JSkmtt7awbRP7A83x1nyEkVFkGy9ce3rO+9IJwtHdujJsv74m7lNG
	UtRiVDZmr5TrCCU0Yf3VmF/l8Pyqjklz1pXNNewPva8o3ZwqLna8IqUUpLqXT6bkKatp
	aCL2f88thiBGRiB6f1UlN7M3bOoAqrV7NumoYSvTtAiZr69niQWu+ID2FkRXFOmPuUmr
	qhsLfein5av2/c312gJ1i1VCPF0AXosv7YX+ekcGxGW14I1K83MDYmBfO6qb6gNITitc
	VZigrmXMF8tM+BTxiFByiyie4NlvAupmKHbdjqsDP6AwjP3wKOHkpvXzxIOyZPmLwqu9
	orMw==
X-Gm-Message-State: AOUpUlHiq3WMo8+hCtzO9Ak2KleK9FNoSE58/+9jKl++E7qWaPMc1viZ
	FyQd86o+gr90/w1tatZDBvxr36UhR4bUqeKVTJs=
X-Google-Smtp-Source: AA+uWPysxTjeF07hW9Zcr8B/yx2SmoS5/PaTi/xzWTfswAJaAob1Z9tC4JTCBwv+W0CLOVA4p3eYWgv29mozWT112tk=
X-Received: by 2002:a37:a24f:: with SMTP id
	l76-v6mr24507557qke.406.1534369845206; 
	Wed, 15 Aug 2018 14:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
	<CAMKF1srjCWwcAKziq=yKRF1tZmmUBBT8reAqpTF5SMyMb2giQg@mail.gmail.com>
	<96C9E43C-BDF8-4095-BDC8-09B4F59F6AF4@korgrd.com>
	<CAMKF1srSZ4wkvdXfyKHo27aBLBx8vYWz3Ba2OP+aanr6BMZZOA@mail.gmail.com>
	<FFE3E10D-0186-4906-81F6-E0E3A699F40B@korgrd.com>
In-Reply-To: <FFE3E10D-0186-4906-81F6-E0E3A699F40B@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Aug 2018 14:50:19 -0700
Message-ID: <CAMKF1srTyUpnqc2nSP6tscVGJpEEk0bcKvXhMuK40s9oES65NQ@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 21:50:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 15, 2018 at 1:42 PM Steve Pavao <stevep@korgrd.com> wrote:
>
> Hello,
>
> > On Aug 15, 2018, at 4:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Wed, Aug 15, 2018 at 1:25 PM Steve Pavao <stevep@korgrd.com> wrote:
>
> >> I would like to state my opinion though that to unconditionally warn t=
he user to use core-image-minimal instead of rpi-hwup-image  (which definit=
ely packages kernel modules if they are there) is not often the best advice=
 to give.
> >
> > This should be fixed in meta-raspberrypi, care to submit a patch
> > to use core-image-base instead ?
>
> Sure, I=E2=80=99ll submit a patch.  Should it unconditionally recommend c=
ore-image-base, or should it still recommend core-image-minimal if the kern=
el modules list is empty? (Could that condition possibly happen if the user=
 cleared it in local.conf?)
>

fact that we added modules to original image. its better to recommend
core-image-base

> Steve Pavao
> Korg R&D
>

