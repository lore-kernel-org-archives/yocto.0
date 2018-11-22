Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5EF4E00C95; Wed, 21 Nov 2018 22:45:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 284DCE009AA
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 22:45:26 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id v11so6451346qtc.2
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 22:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YMT+qXF04lCR8OFgGcWCpzeOfEe3Jfe5V5vl2qXxPBM=;
	b=sPFoTgzwh7sIlQsDa7nXa2tnd727FV1wx2keCmeaB0lDGuMHzZDsenPSswffqUG7hK
	ESob+blF709KdD02EJFTmg7H02RdlrhXbUOzluCXXHk2U7tO11m+bX+o5yCCRm604IOa
	L23qXFF722lD0WomZec6QeAaM6dokWPlgPBr5Y3ixe33It5xt73IEhRCKdSZklFIEte8
	82aAJqTALFq7A8ZVnkOBP9MwywvU8CJyoObRJpi6APr7NW6kG+gc6glzketA/6YUrlsj
	C0M5tJ4CKuYz725F/jgA+Cl77Q1AMdV9vZXAalYKIJg/S4nVuWY/wJrOgoH/w3KejMIj
	+UxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YMT+qXF04lCR8OFgGcWCpzeOfEe3Jfe5V5vl2qXxPBM=;
	b=mowRCdSloIHJyJE53AMvaDqbKGjVxhnnZUEVpur248NHiOvUSjxzxoE83CFcuQSyVn
	R88LyNCzNFF5MTZzTU3Zn8c+b8MdBbAjJ3rOQ2yyQ7Y+8KeXrQ0lp+P0t7iXHs621G7c
	GRfHbgA1d5+/MlFCSE9mtsePbtZ/lxk2O8zYH9BzdXMSoVluECpfsfc2QHB8cB9V3xfG
	Aiq/cCXZ3Wid8YV6O0Qri1hwvrui0Sw6JcOQIifp2m1igJuU4OskMBp6m1VEF+/51CMH
	2xEV9X8RjwWMLUYW+6Uu5hClKoGLn6TSWAb4pOQ8WkHIz5EtAhZc3Dmcu49h2kSXIhLW
	e2SQ==
X-Gm-Message-State: AA+aEWZGfJ4pRVYxJQ8dT6163iAsxGZgGX2mk+GWVJuJ0IErRdLVWxRq
	c7rLS/Vr2CJNMtY63E2Jd2q9OvMo5ikWg6NknoqOMJQhK2I=
X-Google-Smtp-Source: AFSGD/WqstNAoh5wszIYk8GWMDQeHPS+qIi76OA3NTwoGmD5hgzTmWaccKnsSzGk+QIqFgXm0gRgbL9fGotVaWyjqmU=
X-Received: by 2002:a0c:93e2:: with SMTP id g31mr9045853qvg.194.1542869125272; 
	Wed, 21 Nov 2018 22:45:25 -0800 (PST)
MIME-Version: 1.0
References: <CAKfv=rdAwxX3JSBkf_Q78h_+Wt5qgW=c01AwFNdHHX7DcJAwyg@mail.gmail.com>
In-Reply-To: <CAKfv=rdAwxX3JSBkf_Q78h_+Wt5qgW=c01AwFNdHHX7DcJAwyg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Nov 2018 22:44:58 -0800
Message-ID: <CAMKF1spFPyfuyVjCKUTf-88Gyqymiqjm1FnjthyN6akxd0j3oQ@mail.gmail.com>
To: rzcharger@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto on Atmel SAME70?
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
X-List-Received-Date: Thu, 22 Nov 2018 06:45:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

atmel boards are supported through meta-atmel BSP layer

see

https://github.com/linux4sam/meta-atmel

sample images
https://github.com/linux4sam/meta-atmel/tree/sumo/recipes-atmel/images
On Wed, Nov 21, 2018 at 8:30 PM rz charger <rzcharger@gmail.com> wrote:
>
> Hi everyone,
>
> Good day.
>
> Currently our team is using Yocto on CM3 Raspberry Pi. We are planning to=
 port our current Yocto project into Atmel SAME70. However we are not sure =
whether it is possible or not. We have few questions hopefully someone has =
some experience with this can enlighten us.
>
> 1. Is it possible and recommended to implement Yocto into Atmel SAME70 fo=
r IoT application? (Single core CPU:300MHz, RAM: 384KB, Program Memory Size=
: 2048 KB)
> 2. Any example/past project of Yocto running on Atmel SAME70?
>
>  Appreciate your time.Thank you
>
> Regards,
> Rz Charger
> Malaysia
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

