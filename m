Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3B87E00B9E; Tue, 10 Apr 2018 09:09:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADEA4E009E2
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 09:09:12 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id n139so13936018qke.11
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 09:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Q+qz/N5RmBdguvUAFtWYaUnL/CFdx7t/bZY/JnirTVM=;
	b=NzqzFtYz1xSBdvrJVA9+1DV1t4WUzm/TlvdNZMb0TvHjQWs6w7CbciPvRoWJ3dimzt
	fLI4QL7y9rAbkSFwptu4GVtClS/TFlyy6Q6Mo9VgHeUL3kAqNsZEF7ojYdvsAmeMnTZa
	hHudmeZ2E+ROxy8PCNXWYKvF79r1iMFqWvZdAc4jOZnW0eYz8QkJidINawwNyZmvptM1
	Qdh+IPhM4Ro7eNg6UIDsOztUxFhQlWaKlcLNT+cO/f9dsByDirRh6u7wxM3fnffWrKM1
	xZ4Fhrw2XutF4rqaOdSEuRsIFvCEjcssAmxXjvVTfKwvlNp6J5F6dH+xrKcXuDOE0ifx
	Pkdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Q+qz/N5RmBdguvUAFtWYaUnL/CFdx7t/bZY/JnirTVM=;
	b=LR4G73mjJvNNBLW/92OV0K8rHq8/QaqRmC84ghyOIlk7GD4c42Uj5+4Jjuv4hIcYWo
	P7Xrixw+2hJSDpm3GDb+5JrWZdtQaqwRnDkVKWWcy/wvH7anbzf/0MvWi6d8E28ybMsn
	9Zlh26EyrYXO286xIzUTShm7En7DFUYcNYPr8SPIXIZ8Y38iDFhrhDZxuXpem/SoGTzU
	x4B64TKrCBqLEHCxLqTEhDHwbASmI6iK+CDj/mtYN77+aHvmVHa+TdYnCsIkXCssD3Lw
	1cy8cgILbIw/jL63dc2MnlB4MW6k3vIFCjEwedgQ7yUFSKCwLsNXmxwCWM5jcMGbQwR2
	12mQ==
X-Gm-Message-State: ALQs6tArQHUxjOuMf7e/BWsNu4IOPX/iOj6VC2lDJdaZSoaKsTC95Npv
	g83Rq5fKt1Zi+EDRU3kmAl5H1uQXjhy/O31Kq74=
X-Google-Smtp-Source: AIpwx4/SqWMW8Hn8kGk+R+ffn2q7eizOLe5AQlrIsVnuUVBqlVVd1q2cC2tM5+UddP+xoj9N2X+C8GHQR2CsqTQmimI=
X-Received: by 10.55.33.226 with SMTP id f95mr1459935qki.320.1523376551782;
	Tue, 10 Apr 2018 09:09:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Tue, 10 Apr 2018 09:09:11 -0700 (PDT)
In-Reply-To: <E3DACD6AA0B26143AF16244886B5278E1FE91C49@MBCHN01.chn.nestgroup.net>
References: <E3DACD6AA0B26143AF16244886B5278E1FE91C49@MBCHN01.chn.nestgroup.net>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 10 Apr 2018 18:09:11 +0200
Message-ID: <CAGAf8Lz4EiOHJ+o5PmJbfgiyNyBAd44S+iSDTLOSKHqex=GTAg@mail.gmail.com>
To: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to update OpenCV to 3.3 in Krogoth branch of Yocto in i.MX6
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
X-List-Received-Date: Tue, 10 Apr 2018 16:09:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Nishina,

Are you referring to: https://opencv.org (Open Source Computer Vision Library)?

As I understand, Krogoth branch development is abandoned/done for the
time being (only last three YOCTO releases are maintained).

So, my best guess is that OpenCV 3.1 is the latest maintained release
for Krogoth.

But you can always try to update the OpenCV recipe to version 3.3, and
see if APIs still fit?!

(please, let us know the experiment outcome)

Thank you,
Zoran
_______

On Tue, Apr 10, 2018 at 8:47 AM, Nishina A. Pervin
<Nishina.Pervin@nestgroup.net> wrote:
> Hi,
>
>
>
> How can we update OpenCV to 3.3 from 3.1 in Krogoth branch of Yocto for
> i.MX6 board
>
>
>
> Regards,
>
> Nishina
>
> ________________________________
>
> Confidentiality Statement / Disclaimer : This message and any attachments is
> intended for the sole use of the intended recipient. It may contain
> confidential information. Any unauthorized use, dissemination or
> modification is strictly prohibited. If you are not the intended recipient,
> please notify the sender immediately then delete it from all your systems,
> and do not copy, use or print. Internet communications are not secure and it
> is the responsibility of the recipient to make sure that it is
> virus/malicious code exempt.
>
> The company/sender cannot be responsible for any unauthorized alterations or
> modifications made to the contents. If you require any form of confirmation
> of the contents, please contact the company/sender. The company/sender is
> not liable for any errors or omissions in the content of this message.
>
> ________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

