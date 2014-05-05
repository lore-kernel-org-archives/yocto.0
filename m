Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 694C7E00B3A; Sun,  4 May 2014 19:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D5A5E00B21
	for <yocto@yoctoproject.org>; Sun,  4 May 2014 19:27:20 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id hl10so4157494igb.5
	for <yocto@yoctoproject.org>; Sun, 04 May 2014 19:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yTAzXwjJI7a3qDfv96/ESRK38tAHUIL7P18Bsypj7ag=;
	b=OJV2jX4Uv5PGmQWAg3RWocazEbZgxR/kfUZoM8u5IpY93vQUrNbFfWOsIZ/Iwi7lQk
	WlQWSZ01Xn0JQYk5TDSzpHVdu1fD9dihHP+bVg/i3IkUqD2KXaj1QJw1W6KQeVkcVPsg
	do0H/ZbFncICkjNaYBbnZP9ziKxkrca4jva6HIaPFctxJrNqrp66gfGyuyJvM3sC6s0W
	jJk+oa0PdIy/GZrqjSyT2Pl5oqg/0hTPBmGLDiCQBzAAyJ5rzCjOO+5J5L+oAOgwjxaj
	e3iKqdOx88jT6N48hrKIZhW7MYEcBkv94H+p+TN5J8OllUyPBz5au/l3Yuxkiz8z2Qc1
	RFGA==
X-Received: by 10.50.30.167 with SMTP id t7mr20058101igh.17.1399256840007;
	Sun, 04 May 2014 19:27:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Sun, 4 May 2014 19:26:49 -0700 (PDT)
In-Reply-To: <145c9eda0c3.-6257502610317357460.4904635757040864643@bertux.com>
References: <145c7800870.-1835694984789055059.-6439308093863957623@bertux.com>
	<CAMKF1sozckAboRv3sxuCbuYv1G5EYNk_O8wcbmSFMXphY6H8Ww@mail.gmail.com>
	<145c9eda0c3.-6257502610317357460.4904635757040864643@bertux.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 4 May 2014 19:26:49 -0700
Message-ID: <CAMKF1sp7WC7Q7xwkY3k0Pkwcpv_3VYDmO=fKV+oRFJCBHZyyHw@mail.gmail.com>
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
X-List-Received-Date: Mon, 05 May 2014 02:27:25 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 4, 2014 at 6:09 PM, Fabio Berton <fabio@bertux.com> wrote:
> I get this error http://pastebin.com/S5hyDvBd

/bin/sh: 1: shiboken: not found

so as you are cross compiling here this package seems to be needed on
build host. This seems to be provided by shiboken/pyside
so you need to add a native package may be just adding

BBCLASSEXTEND += "native" and adding DEPENDS += "pyside-native"  to
pysize recipe is enough but there might be more needed


>
> ---- On Sun, 04 May 2014 22:04:10 -0300 Khem Raj <raj.khem@gmail.com> wrote
> ----
>
> On Sun, May 4, 2014 at 6:53 AM, Fabio Berton <fabio@bertux.com> wrote:
>> I need to run PySide and I can't compile any version of PySide. I'm using
>> this meta-pyside https://github.com/svolpe/meta-pyside. Does anyone knows
>> how I get PySide work on Yocto?
>
> whats the error ?
>
>

