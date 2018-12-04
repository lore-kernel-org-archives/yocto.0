Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5B08E00C75; Tue,  4 Dec 2018 07:44:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F85FE00C5F
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 07:44:07 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id r9so6514912ioa.1
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2018 07:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wc4TIsYWMLYcW7QunY/PveLLilQxEn53pCyuuVK/OaQ=;
	b=FI+FvXoU1rcz89OKuNoflfK4v0N4HK6cpjdPR8y+Drx/gvKRkGYLxf1uZwmZhv4gda
	lDFkayOY2Vf8RTeONxVICLXaznuPeKfnMYqRkFnkiRleOYBq5WW2t99gtgQsl2quhtxO
	jABhkxpagn9QYiYyaE+3n1jzXKm6fz4iKQFf5AxvrrAV6rsEn6aVP5Fbw7X6oDByZl++
	rwkJSNHJSbMKjvmjDAZtfYQEOKLyEJXGY+0OGRS7etz8N7EJrqKjw/vOZ6nnxxtt6GW1
	omYY0KmW0S0H3eEm/+8RzJy2SRUfzDUz7hdU9E+li8p2oXzcJTQGFuGdao42jOXNdPU3
	KsMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wc4TIsYWMLYcW7QunY/PveLLilQxEn53pCyuuVK/OaQ=;
	b=QUbok/MkeqNBUpHEfH6XihFY3y59KqrJktPxRXPFAiLobEyo5N3kclWduRy95vc56n
	eY4tGQ8HzGJD1/jktX+UkEQn4wlxXjH+uCqcpmXB77W+JCK7Z1aF6P+qCOtn93f91JUu
	N8zae59f2R03rN8FKxQyKr/yJtqDewq878gmvBRR/Nf9rvmHak/xP/WNmPHMEyVu28eM
	gZhbfxAp8fgsYYzdaU0GtUrhdiJLdu9fpr5ftWjLvJnYYLSdbDxPDxag7WmTyBGm2aiT
	FHNqbN/r+mH0vMqEuX0UlsSDxek1VIWj/+9QfwU54Rlnja9ofjTkErf6GbMHMIdOHHrT
	Fwhw==
X-Gm-Message-State: AA+aEWahHhUU5jiTEiF/n0+pnXD/+LKL87dV2LMmOR7AKoaKqj4NjVe5
	QdXhk0KbSvu9lLIdLKcwISvKhlna+wdPhZYK8j7IKQ==
X-Google-Smtp-Source: AFSGD/WL9ff1xcCy2lD1ng3xPNsoJAXS5b/tLBYWt4YdJOUGFcqEP+uYGeniLOAm1RK+9JlR8DiVps0h0DSjVln68o0=
X-Received: by 2002:a5d:9697:: with SMTP id m23mr7996120ion.201.1543938246753; 
	Tue, 04 Dec 2018 07:44:06 -0800 (PST)
MIME-Version: 1.0
References: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
	<CAJTo0LagP7=zjiXYSU=eXpm6dfH049HDhpF2N8frrB1oha3PZw@mail.gmail.com>
	<B4ED84A4DCF0D84FB25CE972E5CF346A5D185E24E6@KEMPMAIL2.woodward.com>
	<CAJTo0LbYmsR-khDHYfkG=D3nng7n4eLtPk+W1_hhoTPgCyOWTg@mail.gmail.com>
	<B4ED84A4DCF0D84FB25CE972E5CF346A5D185E2557@KEMPMAIL2.woodward.com>
In-Reply-To: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E2557@KEMPMAIL2.woodward.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Dec 2018 15:43:55 +0000
Message-ID: <CAJTo0LZpJoNF80ExG1EqK5W_gsUEXAVZipJcRrHp6hZ1c_hK9A@mail.gmail.com>
To: Georgi.Georgiev@woodward.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Missing dependencies in recipe-sysroot
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
X-List-Received-Date: Tue, 04 Dec 2018 15:44:08 -0000
Content-Type: text/plain; charset="UTF-8"

No, you just need to write your makefile correctly.  libgpiod has a
pkg-config file, so instead of hard-coding paths like /usr/lib
(because you don't know that's where it is installed) just use
pkg-config to get the flag:

gcc $(pkg-config --cflags --libs libgpiod) ...

Ross
On Tue, 4 Dec 2018 at 15:14, Georgi Georgiev
<Georgi.Georgiev@woodward.com> wrote:
>
> OK but. I can use SDKTARGETSYSROOT in my makefile but then it will fail in yocto...So I can't have one makefile for yocto and command line build...I found one tread for similar issue and I will take a look in poky/meta/conf/bitbake.conf tomorrow.
>
> Georgi
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Tuesday, December 04, 2018 4:13 PM
> To: Georgi Georgiev <Georgi.Georgiev@woodward.com>
> Cc: Yocto-mailing-list <yocto@yoctoproject.org>
> Subject: Re: [EXTERNAL] Re: [yocto] Missing dependencies in recipe-sysroot
>
> On Tue, 4 Dec 2018 at 14:02, Georgi Georgiev <Georgi.Georgiev@woodward.com> wrote:
> > LIB := -L/usr/lib
>
> ^ don't do that.  That's not where the libraries are.
>
> Ross

