Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C810E00D6B; Tue,  2 Jul 2019 03:04:28 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E35E0097C
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 03:04:27 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id u19so27115480ior.9
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 03:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9WAqeE+lm1oy+QLDz3m4LpHUZm55EpMXRFM4wzFDKEA=;
	b=EgE3XOPpSpqr63tYCJMQqobpynuBSiX2RnzpsZfpP+ZFYt4W0ikVDD3O8R7qQ+nL9V
	uQua/UFleCCQvcPNqmyRgzCuVP8Uf/aVawfJ1yNd6Y+WzdRM3pksvG1UhJd9sfCEXwtg
	atNVFRxGuOqwLxx1EUB7wsMwHXzCBkTP5+sqQK2Ln37IGz57ktR/RJ3oRvkuNgJWawcz
	BAaZM5BweVIVwFLLEli5oRb4BoIJqL0BEysyWVwnfzcjuXICarFBRfs2P3BZKZXEXg1M
	MzSQJU0Y94XRWZp6Ynw2tpNxBcKFGXmo4zs+ReHYbgORRIAwPcuKIFKIAnN6FhLnKNQM
	OhCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9WAqeE+lm1oy+QLDz3m4LpHUZm55EpMXRFM4wzFDKEA=;
	b=cQV4udqp0YZqoswfPx2Iw4mickeyXuIx0ISNRBmtA70I70Jvolz8xnF95yaQmVND6Q
	H8YcS9dnBeQ5bg0r7FpyTkQANbhJ5qNKBZ7nG7r1siScvvOGYr1UQCsXgTGNbQhA3IC5
	2e3jdXiXzWliBEkNKxw5zsrWdPUNCYzPu+EvexmSnqKMsIPdnh1lHw2ZPezi65Ugax8R
	j4A+24S0lWe3x63EC7ZpuEJinmBCkquRwJXxauGYUeckflYrwClC62F5zagdZ2zo2Fnq
	9HEcCm/fMJLLsPhV8e2wLHM03Q8X4Nk+vuzZUiutokiKS596stw2OOmQKnqo43wwJFW1
	Z1Mw==
X-Gm-Message-State: APjAAAVtm3BntCsTmYYz/ab2FGwZdsS561D0Tae8eO9VxsG9XUG67vEj
	e5f+60xHIdC47JVCsm3rU/vAO5iahsr9CM/6WQcsMhi7
X-Google-Smtp-Source: APXvYqwvc7s4JBfho3lL9pWTqjPrFuLHdB8qikPWSTVw/3JEQO9aLejKHgZKZeRa2+eoDuXycnooN8S4LKQ7i+f6lgk=
X-Received: by 2002:a02:6996:: with SMTP id e144mr35449261jac.47.1562061865951;
	Tue, 02 Jul 2019 03:04:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:8a3d:0:0:0:0:0 with HTTP;
	Tue, 2 Jul 2019 03:04:25 -0700 (PDT)
In-Reply-To: <CAAx3WaD_iMtz_J0HYf0NULAxVSSNppVo6gtUx530pvqvb5qzag@mail.gmail.com>
References: <CAA=hcWS547t=FCMVfxhvWuEtLD_sfp8RrEGwqQQ5de2XScxb2A@mail.gmail.com>
	<CAAx3WaCNkhNS38tsYaycsiNzeJYN_YjXoGak4Yd1QxSUWQmYPA@mail.gmail.com>
	<CAA=hcWSr42PPkOiUkz0sG3F7Nxp4eWEi4mGVn85Pgg4yt6Az-g@mail.gmail.com>
	<CAAx3WaD_iMtz_J0HYf0NULAxVSSNppVo6gtUx530pvqvb5qzag@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 2 Jul 2019 20:04:25 +1000
Message-ID: <CAA=hcWQR6KtwN69S1w2egbFEhGY1XesdMBUTtesUy7NTvh-JvA@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Allow choose of U-Boot config for machine
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
X-List-Received-Date: Tue, 02 Jul 2019 10:04:28 -0000
Content-Type: text/plain; charset="UTF-8"

Thank you very much Gabriele, appreciate it.

On 7/2/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Since UBOOT_CONFIG is a standard property, I suggest you to read the
> following links:
>
>    -
>
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-UBOOT_CONFIG
>    -
>
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-UBOOT_MACHINE
>
> Please not that the links I provided refers to the latest documentation,
> you should check the docs for your YP version.
>
> About testing, I have no idea about how to test uboot without the target
> board. If you are planning to use a commercial solution which is supported
> by Yocto, you should be safe enough for now.
>
> Gabriele
>
> Il giorno mar 2 lug 2019 alle ore 09:40 JH <jupiter.hce@gmail.com> ha
> scritto:
>
>> Thanks Gabriele, you are right, it did not work in command line but it
>> did not complain after UBOOT_CONFIG = "nand" to local.conf, how can I
>> am sure it is built to boot from nand? I don't have a board to try
>> yet.
>>
>> Thank you very much.
>>
>> Kind regards,
>>
>> - jh
>>
>>
>> On 7/2/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
>> > Hi,
>> >
>> > you must use double quotes around nand, so:
>> > UBOOT_CONFIG = "nand"
>> >
>> > However I cannot guarantee this line will be the solution, I usually
>> > use
>> a
>> > customized uboot.
>> >
>> > Gabriele
>> >
>> > Il giorno mar 2 lug 2019 alle ore 04:07 JH <jupiter.hce@gmail.com> ha
>> > scritto:
>> >
>> >> Hi,
>> >>
>> >> The imx6ullevk.conf defined sdcard for booting on imx6 EVK:
>> >>
>> >> imx6ullevk.conf
>> >>
>> >> UBOOT_CONFIG ??= "sd"
>> >> UBOOT_CONFIG[sd] = "mx6ull_14x14_evk_config,sdcard"
>> >> UBOOT_CONFIG[mfgtool] = "mx6ull_14x14_evk_config"
>> >>
>> >> I need to change it for a customized board referenced from imx6 EVK
>> >> but booting from NAND, there are some blogs said it can be done to add
>> >> UBOOT_CONFIG=nand either in local.conf or command line. I tried it did
>> >> not work:
>> >>
>> >> ERROR: Unable to start bitbake server (None)
>> >> --- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086 ---
>> >> ERROR: local.conf:34: unparsed line: 'UBOOT_CONFIG=nand'
>> >>
>> >> What should be a proper process to overwrite imx6ullevk.conf
>> >> UBOOT_CONFIG from sdcard to nand?
>> >>
>> >> Thank you.
>> >>
>> >> Kind regards,
>> >>
>> >> - JH
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >
>>
>

