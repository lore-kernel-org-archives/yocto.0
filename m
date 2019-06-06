Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B3A0E00D84; Thu,  6 Jun 2019 04:15:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F8AE00D7E
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 04:15:47 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id e3so1452028ioc.12
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 04:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=sjbKdmPFbH6D4YKvk4s18uES58pRubCAUxfypbzgcQk=;
	b=c+lcl9BXj02CoZYAJZFRIXnn9h6Pdsxxq2LPEX+td/KjHTIUdWuvOkEM3B/9rl6MMp
	zIuzBokqGygAFT6u2JNratvUxkMp4Amcv1V7oHvzGsmuykwFFIBvGSfKjVfeNx+vcf8g
	pNQn3zjwUbbw9CIvZrELH5zQqYfXNJpcaFz+ZwcSddoqJr/W8B34FhCJIYt2r5/G3I0D
	oBk/lTfbbbc5GydCsCm7Hv8W+Nv+xQ9Oy+XsM5Xv5i8J8nSGXU9AvGnMOyb1J5HQzR4I
	IDHcZBLtSHQU4K/swoqUT5IjYYRNVM2lgrLegFjuISbBE/lAQP8soiHuYIHjjHFVqoVb
	r7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=sjbKdmPFbH6D4YKvk4s18uES58pRubCAUxfypbzgcQk=;
	b=Z1eILRKJP+Y/6RDfGphuT4KxakXrMtMjgdKguuGlNCcyMM2T7mgZ9AzUE7cyabIgRn
	+2z53+S7oSZzBaJOso6LfCYZG5KkgdCW2RFVWUiLKZrLVn71pEKbn5H9+O1iSWlVtdQT
	V4QvGnbW1Bpn5bwWc6xmPj9iI8femdASh6ehMGdVVPgudbUiuTc0S/NP+IOPq7kkpYNW
	xLSk/eMTt82XBnAX9KqJB7kLGeiMglgrzeFUquD8vBPbs+27oKIcsKLhthBt6yCqGXW2
	lMB/uM/6gh5vxxoAathhAfla0Nom/7T3Ywa1eq9Qmau7thFfeyiQSj1jqbnwYuRbVx6v
	0NYw==
X-Gm-Message-State: APjAAAVsRbNYXZuSU6jVXLy/1aygjzItfcJPUMK/iFf+2JY0wVxTqucd
	CoubII2UH5CS0M1VEDOE3CBI405ew//nHngCjChELIwh
X-Google-Smtp-Source: APXvYqxZVpeuaeov9Y+YpjG6ECCQkY4xQ4rR9O2Z7AAtdJVvLNuHhGUcgBKGYRIOAOFni7rsUMbmTUgbZWrzIJ0L+/g=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr7752518iop.306.1559819747327; 
	Thu, 06 Jun 2019 04:15:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP;
	Thu, 6 Jun 2019 04:15:46 -0700 (PDT)
In-Reply-To: <CAA=hcWSh9-DaYwFED5UpT_h1C0H22HG76LVd3d+aL4V+LBQQBA@mail.gmail.com>
References: <CAA=hcWSh9-DaYwFED5UpT_h1C0H22HG76LVd3d+aL4V+LBQQBA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 6 Jun 2019 21:15:46 +1000
Message-ID: <CAA=hcWSmDyqJ2_4zw7-gXZ8KeB-wUk9G7iNieCsMQDGL3V2+Dg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Support NAND flash
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
X-List-Received-Date: Thu, 06 Jun 2019 11:15:48 -0000
Content-Type: text/plain; charset="UTF-8"

More specific, looks to me that the drivers are OS based, the eCos has
NAND I/O, the OpenWRT has some support NAND I/O as well, how does the
Yocto support?

Thank you.

Kind regards,

- JH

On 6/6/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> Has anyone used NAND? Does the MTD already support the NAND driver or
> do you have to work our the detailed driver yourself? Could you share
> your experiences how to build the image and to hand and access the
> NAND if it is required?
>
> Thank you.
>
> Kind regards,
>
> - JH
>

