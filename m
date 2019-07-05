Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ED0AE00D90; Fri,  5 Jul 2019 05:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501F3E00D90
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 05:38:20 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id r15so6228020lfm.11
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2019 05:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MYSMZQwJDjg93FFvrVytXJUGfK2DSGBm7a5olPnxxok=;
	b=W7VJkNqSwyHPpy8aXdWPYQpkMBNbJhvAqBvBUNDU+TrAvK5Lv8UiND7hMt49UykIhZ
	8vjF7VB7u1cEoM54jFRdAeGfWqoSTR3Pkkelgivheww4IIDQK9PyEuwYROLxPkLHYX8S
	Km+B4ZX8y2ShST52bQEmMHEZ2Fpvj6Q7+704IZlxVApDPxqOUXsL22A14ijpoYBfNiNy
	xV6Eg5/bQO8GiPI0d6tqBVuC7rjwgq+aLQbLrUBdoGpogdCJxdCMuzYV0yOvrQSPb3MI
	MGYAytwtQ8OFBVMwQFjUE9gkUeSvhQNRQU7siWc3lXhySQhREHZeWQeMwECFWH3z77ds
	cDAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MYSMZQwJDjg93FFvrVytXJUGfK2DSGBm7a5olPnxxok=;
	b=pPIHbomTsPG9LCrbSl/z3QTFAjOAbGMnfynJu61cvJ67ARWKaeesf1So3aXPzthTBr
	zHHDA+hSohqywjH+wZrvFLpu5j7kypx3P0bkAKry0zcpHgl6CETK/bwdF/DLfNtnmB4l
	1UXunOFQQiQztwUL7kbWWzwCzA6UyvbT3g1ea/C9c2Qdx6v3iANnC/EmUd0cNNFl/XQ8
	jqTewGa3XINrMxWCFGll1vqbqixgpwmUJlFu45MpSREOACrBYEWY2V+hRvgfsyzklo3p
	lD92yOPdYG9wncvtiz5+y07iAxa0rdcj328dovL2EdQTg1U9mtpmiGUU6LFFDkPJ1jHf
	niVg==
X-Gm-Message-State: APjAAAU7no8t5Jy3qXEspB1VU0VX5/i7UoLK2VT8Vf5Epx2h+a7BxnAe
	xt/tv7l3SDLzThdCXQ5yd8a9FDtj0X3jKr90Uu4=
X-Google-Smtp-Source: APXvYqwKerIfrcoixeX4Eo3LP5TA561mrwcDLbM3qdsKwmYpLqgNVmnSrgHtef44kbjQL+vg0Vbzxu3WuCJViOsJXvQ=
X-Received: by 2002:ac2:5dc3:: with SMTP id x3mr1890088lfq.168.1562330299459; 
	Fri, 05 Jul 2019 05:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWRnntFMMmipmOBSw-BrG0p+Fix3u8rGONvh6NUEoi4TSA@mail.gmail.com>
In-Reply-To: <CAA=hcWRnntFMMmipmOBSw-BrG0p+Fix3u8rGONvh6NUEoi4TSA@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Fri, 5 Jul 2019 14:38:08 +0200
Message-ID: <CAAx3WaDPHT=dcqjChDw-Cf72-rLirbAOPKMZmOHF1YJmia9quQ@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
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
X-List-Received-Date: Fri, 05 Jul 2019 12:38:26 -0000
Content-Type: multipart/alternative; boundary="000000000000856f1e058cee5e5d"

--000000000000856f1e058cee5e5d
Content-Type: text/plain; charset="UTF-8"

Hi,

in your machine conf add: (or just overload it, if you need only tar.gz
images, this will speedup the image generation process)
IMAGE_FSTYPES += " tar.gz"

The list of (standard) available image types can be found here:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-IMAGE_TYPES

Gabriele

Il giorno ven 5 lug 2019 alle ore 14:23 JH <jupiter.hce@gmail.com> ha
scritto:

> Hi,
>
> I know I can use dd to write wic to a device such as a SD card, but I
> need to extract rootfs.wic then repack it by tar.gz in Ubuntu machine.
> Is it possible? How can I do it.
>
> Thank you.
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000856f1e058cee5e5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>in your machine con=
f add: (or just overload it, if you need only tar.gz images, this will spee=
dup the image generation process)<br></div><div style=3D"margin-left:40px">=
IMAGE_FSTYPES +=3D &quot; tar.gz&quot;</div><div><br></div><div>The list of=
 (standard) available image types can be found here: <a href=3D"https://www=
.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-IMAGE_TYPES"=
>https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-=
IMAGE_TYPES</a></div><div><br></div><div>Gabriele<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 5 =
lug 2019 alle ore 14:23 JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jup=
iter.hce@gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Hi,<br>
<br>
I know I can use dd to write wic to a device such as a SD card, but I<br>
need to extract rootfs.wic then repack it by tar.gz in Ubuntu machine.<br>
Is it possible? How can I do it.<br>
<br>
Thank you.<br>
<br>
- jupiter<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000856f1e058cee5e5d--
