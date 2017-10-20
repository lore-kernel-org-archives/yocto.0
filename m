Return-Path: <xavinux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4496DE00B67; Fri, 20 Oct 2017 16:38:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xavinux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.176 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B10E8E00A62
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 16:38:00 -0700 (PDT)
Received: by mail-qk0-f176.google.com with SMTP id 17so16188247qkq.8
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 16:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OvWcUXZbTWpRXbG5nCZkV6hN+tkvfqaVH+nmJu9l2eg=;
	b=LUgIA7y3J0S71x3BO1rTFwSGBKwSG9yNKzz0oZ1zEouOBzRG/DzkpYdkRKprKD6U2F
	Gu5ZSKIx5SC4YJlgYWBTsTgaflyHZY0TH6JkaK/VxMONnXHopW4YVcEvqVhsw3KTqdmt
	F66CNfCX+9hJsadRW6vY8KzCuZNs+JaGTAEUWdT1M8h45nnj71k8BW+jIN9pd9jJeeqL
	+FLsCyvV/8XL+XpEadygqpxeeRTxQYeZH4mJqk1pCfUhFtnR3FYf2TV2ylTPBQT9dT02
	1edprQAwrZ2xG0EwS9sj1a3ZCmTKZRCSSMQDxzAbb4AjLxCw8UEkCiamXdaqGPMSWJ5o
	L6AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OvWcUXZbTWpRXbG5nCZkV6hN+tkvfqaVH+nmJu9l2eg=;
	b=AVX1FJ+iQDhwGG8BW2BktxemstUnhuXAi41dJf6ASLYGkcyU/IaYXA+4nK9NA/hjzZ
	ioSbibLxJT/HIv3KSWn/ASnSl2727o8r/GmUV+UI7Ekg/gsEUodoUhY8tO7hJKqznDpC
	5gcWqAU5UxU6qEpHQQZYlDAnJBsRWmUAE4GxpgSKKzgfWpCpIaM1McAtuVAojxlWcirn
	3QfpqPOshjv9DluwoWrGSu4FyzHR2hKjB38CFMOOflvOk4UVTBFuR+8faKw56igU0z1x
	AzVpeumn4X7s9bEhWh3rB/D+P5DbYESSlInP8K7ueVQHr/sQsKANSb8Rocu8CPFKmnS+
	u1Ww==
X-Gm-Message-State: AMCzsaUdUVLTLYU2ux6a7r542MlitRDJjV5sna108YIJZI7jujaUklYq
	RFHT2QZ/ypPajGaPRyUl3wDHzaHth/sOitUBZi0=
X-Google-Smtp-Source: ABhQp+TC/o3WTb/ETOEDj47WIT93Q8QY49RNYIQZe5qXEuDCjScUIKxl8H1HIRMfS4AZ/jPo+AttibmvLKZWYHMOXtA=
X-Received: by 10.55.49.143 with SMTP id x137mr9046170qkx.138.1508542679440;
	Fri, 20 Oct 2017 16:37:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.153.200 with HTTP; Fri, 20 Oct 2017 16:37:59 -0700 (PDT)
In-Reply-To: <CAMKF1sqqq=g2LTNseV02f_nENtce5CkfCo=mrt-s8K3aKT2eFA@mail.gmail.com>
References: <CAEX+82LrShupg3kUd+nE3yW0OYcE13HAYA0fSc+iHu-SgQ-gTA@mail.gmail.com>
	<CAMKF1sqqq=g2LTNseV02f_nENtce5CkfCo=mrt-s8K3aKT2eFA@mail.gmail.com>
From: Javier Romero <xavinux@gmail.com>
Date: Fri, 20 Oct 2017 20:37:59 -0300
Message-ID: <CAEX+82KkuqN+6HtpG=FQukdJi_+wPA30=C5=fTNRj3Rr_aeF9A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Contribution to Yocto Linux.
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
X-List-Received-Date: Fri, 20 Oct 2017 23:38:01 -0000
Content-Type: text/plain; charset="UTF-8"

Ok, thank you for your answer.

Regards,
Javier Romero
E-mail: xavinux@gmail.com
Skype: xavinux



2017-10-20 20:33 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
> On Fri, Oct 20, 2017 at 10:22 AM, Javier Romero <xavinux@gmail.com> wrote:
>> Hi,
>>
>> My name is Javier and live in Argentina.
>>
>> Would like to know if it can be useful to test Yocto Linux's Kernel on
>> my Raspberry PI 3, and report bugs that maybe found.
>>
>
> If you want to try something diffrerent than rpi kernel fork. I would suggest
> to try upstream kernel directly and see whats missing, usually it should work
>
>> Thanks for your attention.
>>
>> Regards,
>>
>>
>> Javier Romero
>> E-mail: xavinux@gmail.com
>> Skype: xavinux
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

