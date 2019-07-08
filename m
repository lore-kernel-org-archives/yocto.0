Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D9EE0097C; Mon,  8 Jul 2019 05:20:17 -0700 (PDT)
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
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B78FE00951
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 05:20:15 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id 44so13887675qtg.11
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 05:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wHxaWxYaca7/fiKsWiShipNo+OZKh9OK1/6KfCCoHiQ=;
	b=snn8RH2kp69e+B2iEERGR/dSgE8M2yjEPx3MmKxNzovAidxYYE4HMIEF01n+Ewh1RI
	BhE84Pb6hP79cOMf1rGdVit2R+JcNk/f/KKLOyf5UqvhbKhg19I3aOmr0xxLcAHKEVaW
	n7O0BXVmenx8ovl7FwB9fOKFkjXYe/dZoTTC74LWUL+xFliLfLrS2Q5iRCBHHU0cDlmM
	Km0LemjqdRl6UerZWDc9e+JrrV6db3CSPBuE9naFZWXRzBb8D76oL98SgkCe9AveuTcG
	Izf6U18hlIPHCOI38hOj9CLQ18o/Qh0Hw9cLUX7MfNV+ATUiJ2FpYfjU9IExUu2mKuHE
	8NMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wHxaWxYaca7/fiKsWiShipNo+OZKh9OK1/6KfCCoHiQ=;
	b=AqyYZTmHmL1Qy1j5uPrGYxNAACrDEBKe2ccnbmBwmHU3+Mogx/LCI6DE8rfxgd1Cc6
	N/PbqPXonHg9qn8jcJEOv+r/QzBx7+MjpBQk6ZXInO5spuMN91kCXR6sxX9CRB9yIrr9
	NlcJ7kBRwioHW2/rUXbUYg86lBPa+wxzo6x3cAS9NeD8f6hkxLLpzr94VB3MolUgL0yA
	MK2zmG0sLSKJNBGL3vuYePX+MOyOxxSqObwQrz+HvGu3vaVKj+PYexXSC7H1SX2aQfgr
	EOM32MwTWR44jJFHWP1cHTSBJZtPXTHZnJ6LD+1EcBsC7T6Y8xXwfnoSGPwXswFRms/D
	ESOA==
X-Gm-Message-State: APjAAAVPpbAHQnz/62Jpv/UVUI67c1JWOklmqM+uSRv8Jdi+Qc+Bt3FT
	U1hkzMj5ioHczMEoYTTZpM1mdBY/knMSgSAAGYs=
X-Google-Smtp-Source: APXvYqwsPrpx+Bm1QlgSDyaF3saVlySqFRWdGLIDGbrb6fpG7H39aDiYNL+WEmhxxPd5IMIr1elzlQqzlqYg0MDU+58=
X-Received: by 2002:ad4:4466:: with SMTP id s6mr14717435qvt.237.1562588415502; 
	Mon, 08 Jul 2019 05:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
	<a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
In-Reply-To: <a0462c99-a785-1e25-7bec-3fa922e99de1@3mdeb.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 8 Jul 2019 14:20:04 +0200
Message-ID: <CAGAf8LwyrExLqOPUAh-xwZBi0WYm6RG5jn7evexPhAU9EtJk9Q@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	=?UTF-8?Q?Piotr_Kr=C3=B3l?= <piotr.krol@3mdeb.com>,
	devendradevadiga01@gmail.com
Subject: Re: Ddcutil
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
X-List-Received-Date: Mon, 08 Jul 2019 12:20:17 -0000
Content-Type: text/plain; charset="UTF-8"

>> It was never polished for upstream...

Why? Any viable reason(s)?

>>... and it likely have some issues with the latest ddcutil releases.

Which issues? Could you, Maciej, please, explain/elaborate
theme/problems observed by you in more details?

Thank you,
Zoran
_______

On Mon, Jul 8, 2019 at 1:12 PM Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
>
>
> On 04.07.2019 19:02, Devendra Devadiga wrote:
>
> Hi,
>
> Hi
>
>
> I am working on i.MX6 platform.
> I got the BSP by yocto build.
> I need the "ddcutil" package.
> By yocto how I can get this package?
> In openembedded, layers list I checked for ddcutil, but I didn't get that.
> If source code for "ddcutil" is available can you share it with me?
> If you share the source then it will be more helpful for me.
>
> I have an old recipe for this tool somewhere.
> It was never polished for upstream, and it likely have some issues
> with the latest ddcutil releases. How about I push the patch and
> you will help me with testing / improving that?
>
> Thanks,
>
>
> In the below mailing list, I came to know that someone built the recipes for "ddcutil".
> https://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.html
>
> But I can't able to get that.
> Please can you share the source code of "ddcutil"?
>
> Thanks and regards,
> Devendra
>
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

