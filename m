Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2BF1E0050B; Mon,  9 Jan 2017 10:38:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEABCE00443
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 10:38:50 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id 96so44286810uaq.2
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 10:38:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ep+/rFiT23EO5FZdmDoD/mOwhy7yqD0MQscgH72ecbA=;
	b=gb+YY4JixWjUDIqeYOxR8pjzQz0J1xbdApRJHfyAPbhqvm1k6MgGIrYcIq0pDuOOyk
	AmQRoPX5RVwJ2OHQ428CAaoFzIkxbc4rHiZmEHkzSZL8q/l9Qql2LbxE6WB2s2b3LRIs
	Ls4AicX5dmX8NO0b0nFy4Ikw67LQYKlKT/NWKfWwgJYw7JlTNbARUJOX0xE7OR4dgOCR
	lll8jQtcF3jT68QW63CJQYyY3Nfa9C3C5eX8Rz3pqfTAJc2+d4r5iwJAfboDkXqHXfta
	xvkNby0q/Vvn/AQ7QnpFtmClYGCBdCJ/dprxEMpFEMWXN2K3BHDEdxnYKfQCXHC1uX6g
	eV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ep+/rFiT23EO5FZdmDoD/mOwhy7yqD0MQscgH72ecbA=;
	b=ALRFs3OyLy2jD5w/kM/1/GHwz2VjeC7oFbtdTGsFN6ysaqQFqKZnnodITqeALzOCGx
	Etw8FtjotU6rGYT6APg3BoCpsutwM8PikK6DGzhM5YW5d3lC6pmG6aaZgblGgBxzthC2
	a6fKVkcvYSSzBQh28WCYYz0FOpp0Im9bGZbGNKn1n/1YJJKHH6in1pMp5Kjg0OU8Pfy3
	TvPq1g9r/Fidj+kXrwnf0IaH7PqbFhsbe7KsHHjdJzavTElFdEGQgar7RglTEi0hG/0n
	fVGtXa0C41fN1Oo5Nb9bGfdKhXSXnqv0OzksB4yOgt1Cn7A1uKviBQfRmQ0omJTW+OwC
	yVAQ==
X-Gm-Message-State: AIkVDXJMa6MAUXKB5QgBeSjeexyRU5fnQ//B1q1z5bMV7C8I4TEBemiX5uBYZUO9jyfET3sYAJTXrul5JQzOSg==
X-Received: by 10.176.1.119 with SMTP id 110mr12178990uak.143.1483987129605;
	Mon, 09 Jan 2017 10:38:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Mon, 9 Jan 2017 10:38:19 -0800 (PST)
In-Reply-To: <5870F2F2.4060508@gmail.com>
References: <5870F2F2.4060508@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 9 Jan 2017 10:38:19 -0800
Message-ID: <CAMKF1spd7j18cswcpN1V=YQOoyOu7u8hT0=+23Q=pueFpDFNPw@mail.gmail.com>
To: John Rama <john.rama01@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Q on how to keep the debug information for kernel module
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
X-List-Received-Date: Mon, 09 Jan 2017 18:38:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 7, 2017 at 5:53 AM, John Rama <john.rama01@gmail.com> wrote:
> Dear Yocto specialists
>
> I have one question.
> When building the kernel module and install to rootfs with Yocto, I got t=
he kernel module without debug information.
> Investigating a little bit revealed that it seems do_package process remo=
ve the debug information from binary,
> as the file size indicates as shown below.
>
> -rw-r--r-- 1 atmark atmark    321 12=E6=9C=88 14 17:15 ./3.14.28-r0/git/d=
rivers/net/usb/.usbnet.ko.cmd
> -rw-r--r-- 1 atmark atmark 278101 12=E6=9C=88 14 17:15 ./3.14.28-r0/git/d=
rivers/net/usb/usbnet.ko
> -rw-r--r-- 1 atmark atmark 278101 12=E6=9C=88 14 20:08 ./3.14.28-r0/image=
/lib/modules/3.14.28-rt25-1.0.0_ga-avb_1_0_0+g91cf351/kernel/drivers/net/us=
b/usbnet.ko
> -rw-r--r-- 2 atmark atmark  45328 12=E6=9C=88 14 20:08 ./3.14.28-r0/packa=
ge/lib/modules/3.14.28-rt25-1.0.0_ga-avb_1_0_0+g91cf351/kernel/drivers/net/=
usb/usbnet.ko
> -rw-r--r-- 2 atmark atmark  45328 12=E6=9C=88 14 20:08 ./3.14.28-r0/packa=
ges-split/kernel-module-usbnet/lib/modules/3.14.28-rt25-1.0.0_ga-avb_1_0_0+=
g91cf351/kernel/drivers/net/usb/usbnet.ko
>
> I would like to kept debug information preserved.
> I've check the manual but could not find out how to control this behavior=
.
>
> Does anyone know how to do that ?

you can add

INHIBIT_PACKAGE_STRIP =3D "1" in the module recipe.

> Any information is highly appreciated.
>
> Kind Regars,
> John Rama
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

