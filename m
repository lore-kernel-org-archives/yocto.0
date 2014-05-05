Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26C27E00B3A; Sun,  4 May 2014 20:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D502E00B21
	for <yocto@yoctoproject.org>; Sun,  4 May 2014 20:43:08 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id lx4so7286595iec.24
	for <yocto@yoctoproject.org>; Sun, 04 May 2014 20:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Y2Sj5VNc6P8y1b8blrFjF+DZaZeV78br1ANogIr/8XA=;
	b=S/YCqHb6BQBjRlP6i0Cs5rE7LNoYEgzLgJhDtsTCLVQQ/qXgNFMK6UHlR6MmC2tDSp
	Ndu9zxNnMT+Se/ScsSFOm9LyglDMl0ChvKu3wfnELuAqftIf+DVYETRUGZisvdhwwT1i
	Z+rpMLK+rxR+UXzEOFmHkaCWxATrj5m+9M5bijTzKA7dlt/RshQ5MLdyik4jIeEs6W90
	lS0QLCB3gUrEJWOCm7JyQ/alOJk1JbXIUHzysP3RmO6VreUw66f/dmpsiecHEyO0hFhD
	d9sEmwGcqMLmD/jgtLt9WU2+Dsk8dfTvgTx9pnChx8ovr9BxwV8tt+BpsxuXY5b8FzQG
	Odhg==
X-Received: by 10.50.49.109 with SMTP id t13mr20539475ign.2.1399261388122;
	Sun, 04 May 2014 20:43:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Sun, 4 May 2014 20:42:37 -0700 (PDT)
In-Reply-To: <145ca73098b.5534308473124236891.9167672736563181401@bertux.com>
References: <145c7800870.-1835694984789055059.-6439308093863957623@bertux.com>
	<CAMKF1sozckAboRv3sxuCbuYv1G5EYNk_O8wcbmSFMXphY6H8Ww@mail.gmail.com>
	<145c9eda0c3.-6257502610317357460.4904635757040864643@bertux.com>
	<CAMKF1sp7WC7Q7xwkY3k0Pkwcpv_3VYDmO=fKV+oRFJCBHZyyHw@mail.gmail.com>
	<145ca595d1b.-5475895297793030920.-4677149822827285423@bertux.com>
	<CAMKF1sqN182n5GNr+n6ypeu42EOmmeqEZDpvU0PM1stiJ0ap-w@mail.gmail.com>
	<145ca73098b.5534308473124236891.9167672736563181401@bertux.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 4 May 2014 20:42:37 -0700
Message-ID: <CAMKF1so+oyPLffgiT88p9KNOdBvf64opUzpjmYYXmf8R0_QpNw@mail.gmail.com>
To: Fabio Berton <fabio@bertux.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PySide
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
X-List-Received-Date: Mon, 05 May 2014 03:43:11 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 4, 2014 at 8:35 PM, Fabio Berton <fabio@bertux.com> wrote:
> My image is a qt4e, so I inherit qt4e and other error appears,
> http://pastebin.com/aes6EakH


make[2]: *** No rule to make target 'tests/minimalbinding/shiboken',
needed by 'tests/minimalbinding/minimal/minimal_module_wrapper.cpp'.
Stop.

you need to investigate.

>
> ---- On Mon, 05 May 2014 00:19:24 -0300 Khem Raj<raj.khem@gmail.com> wrote
> ----
>
> On Sun, May 4, 2014 at 8:12 PM, Fabio Berton <fabio@bertux.com> wrote:
>> Installing shiboken on my machine the fix the error,
>
> I know it will but this is a wrong fix. You should really create
> native recipe or at least report it as a bug to the relevant layer.
>
> but I get this
>> http://pastebin.com/J5GrFvdp.
>> On line 169 the system didn't recognize a .so file.
>
> /mnt/workspace/yocto/tmp/sysroots/x86_64-linux/usr/lib/libQtTest.so:
> file not recognized: File format not recognized
>
> this is trying to link native/x86 library into your cross build you
> need to check if you are missing some dependencies.
> may be you should inherit one of qt4e or qt4x11 whichever is
> applicable to your image type.
>
>

