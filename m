Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19D8FE00D8F; Fri,  5 Jul 2019 16:11:01 -0700 (PDT)
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
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB40AE00A7D
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 16:10:58 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id z3so7329746iog.0
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2019 16:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1vtwE9Yc53g+8n7hjiDHR3AstGqHrZZlYJMDk5eTeTo=;
	b=fAoUMs+nw71K7AqQjT7vbGcxeTKkfgnFU6NEE3/cdrpQDx5nDOw3UQxULpONuu+XFf
	xJZOwbMujO+4UpCiQNaOGd193TCpMQ6CwDFxN8pyfMoAXcqqns/dljWtjBhfBHQ+5kIJ
	/eAZToN/vbWx4XUJhtrYkqD5ecqaoLriG+y0YVhnV8Tl3Wg3W2pBWQwPIkrvfMAtxTdU
	OgO2c5iX1UI3R7wIiie2kmyV/wRo10n5OfFqp/2Qq8kakcxzIqt3OoRz0ENKz0Xm74VX
	1BDoTQSdT2RQR25MSk38mNQVf+VjdgVsFDv/NOvtS9FmNL+JqmhLiv4KoeBikWKhQg+N
	gt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1vtwE9Yc53g+8n7hjiDHR3AstGqHrZZlYJMDk5eTeTo=;
	b=rPEW6UOUt+lqcF5gXD8hWb8pR5fKTj2yBSwLO5B2S+dydI5ClBWEqp6/MPr1xDdSlj
	W6OU2u8tlOcsEirTyn86lfplqPJMYtKSbjOjrU3qwXeNA0bUHSgy9fiiCV05dRvrzvU3
	K3Qpk38dM3MHAAW9wAGNMThSyBZDIzboYnFnRwY7A9t2lKd2eacwHMi+RSPVAOyRl/aL
	CZQOa75XdBkhO7SbhlR2QNjrNXWQzPP1eDTO2BKwmbkKw+9uQrRZlMvb4ANOPpQ5ZhLI
	F6hecqtKP23ucPTugBZWRUQq1FgMKbjtktaMa9Z6laynnbn0iA9jHI7MF/yI9RQOU/1H
	jtnw==
X-Gm-Message-State: APjAAAVDoOf4IOsTEd7KUbR4mMmM5BMCe0RDFJ6Rbg7FStvGLr9dlcHX
	3Gx/ZIy2e1N3aD8e4RHQgxXbvl4eDFTFP2y3bJg=
X-Google-Smtp-Source: APXvYqxyK7FDVIt1A3BNm6ZlFWWpsL7rlggmuG/kA34dD7KaQ/TX9y0FJwNhFYKXVE3VrvffnjahPk4WPZmSSofz7F0=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr779232iop.306.1562368258239;
	Fri, 05 Jul 2019 16:10:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Fri, 5 Jul 2019 16:10:57 -0700 (PDT)
In-Reply-To: <CAAx3WaDPHT=dcqjChDw-Cf72-rLirbAOPKMZmOHF1YJmia9quQ@mail.gmail.com>
References: <CAA=hcWRnntFMMmipmOBSw-BrG0p+Fix3u8rGONvh6NUEoi4TSA@mail.gmail.com>
	<CAAx3WaDPHT=dcqjChDw-Cf72-rLirbAOPKMZmOHF1YJmia9quQ@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 6 Jul 2019 09:10:57 +1000
Message-ID: <CAA=hcWR=V=Ha_Gi69r2Vu4seseFqDV59Fj9sqBrd55WaFCiNrg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to extrac rootfs.wic in Ubuntu?
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
X-List-Received-Date: Fri, 05 Jul 2019 23:11:01 -0000
Content-Type: text/plain; charset="UTF-8"

Good tips, Thanks Gabriele and Onur.

On 7/5/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Hi,
>
> in your machine conf add: (or just overload it, if you need only tar.gz
> images, this will speedup the image generation process)
> IMAGE_FSTYPES += " tar.gz"
>
> The list of (standard) available image types can be found here:
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-IMAGE_TYPES
>
> Gabriele
>
> Il giorno ven 5 lug 2019 alle ore 14:23 JH <jupiter.hce@gmail.com> ha
> scritto:
>
>> Hi,
>>
>> I know I can use dd to write wic to a device such as a SD card, but I
>> need to extract rootfs.wic then repack it by tar.gz in Ubuntu machine.
>> Is it possible? How can I do it.
>>
>> Thank you.
>>
>> - jupiter
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

