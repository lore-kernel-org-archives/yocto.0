Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11889E0154E
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 20:10:03 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hm11so715835wib.5
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 20:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=4oBVDPYfY8q4I8itEA9u+Mc6hleksDbH/TSXufplYKM=;
	b=YWEDhyQtKbztDI0n0w+R99ehHRpbo68h/pZWDySceG+4HjQ4msg7ME3ktcuh/aiano
	ta3xtNN7Bc88YQvFesb5qKAcaUnAD/5BhsrhJQFI5x6swuIx/Aqe4/Cs7u5vSrlVtn3S
	UVDzgyPAWfL8Co7HZfGphkQyWtw39vobxZqyVmsy/v1gS/Owbwnd0sf5CmouneH1by3O
	KPVIAugEPAoKyBS8iQKj5g391PkrUVGN9hA7WQl0KcTU+yqd1UYppopEofVcKY9TOj9P
	cZ562Us/bGjh5iItFwrbCOwiSktkqWXej6PlsEa7Fw0cxGztjLYixvgktSq1r7JDvAP4
	IsVA==
X-Received: by 10.194.76.37 with SMTP id h5mr16292962wjw.21.1362971402729;
	Sun, 10 Mar 2013 20:10:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sun, 10 Mar 2013 20:09:41 -0700 (PDT)
In-Reply-To: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Sun, 10 Mar 2013 20:09:41 -0700
Message-ID: <CACzyEJ9yOdiz6f_1nK_JP1a7K4tSFYdNq4_18xpjBC28Cbp=7Q@mail.gmail.com>
To: yocto@yoctoproject.org, scott.a.garman@intel.com
Subject: Re: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Mon, 11 Mar 2013 03:10:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Adding Scott, as I've followed the same procedure as described in
"Hands-on Intro Lab on Barcelona 2012" by Scott.



On Sun, Mar 10, 2013 at 4:16 AM, Insop Song <insop.song@gmail.com> wrote:
> Hi,
>
> I have a question on loading a new yocto image to Intel Fri2 board.
>
> 1. Board: Intel Fri2
> --------------------------
>
> 2. Image: self built sato image with meta-fri2
> --------------------------
> I've followed an instruction from
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-fri2/README
> so do dd image of my sato image to usb as described
> - "dd if=core-image-sato-fri2-20101207053738.hddimg of=/dev/sdf"
>
> 3. Sympton: stuck during boot and no ttyusb access
> --------------------------
> And connect it to the host USB port.
> Then I can see the new grub menu that has "boot" and "install", so
> selected "boot"
>
> However, booting was stuck at around this line,
> - "0000:03:0a.2: ttyPCH1 at I/O 0x2050 (irq = 41) is a pch_uart"
>
> And I am not able to get the ttyUSB console working either.
>
> 4. Others: official sato image for Fri2 is not working either
> --------------------------
> Also just to make sure I "dd" the image from the official hdd img, but
> the result is the same as my own image.
>
> Anyone has tried the same? please let me know.
>
> Thank you very much,
>
> Insop

