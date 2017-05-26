Return-Path: <gvandenbosch@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ED73E00C89; Fri, 26 May 2017 06:53:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gvandenbosch[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48B6BE00B2F
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:53:01 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id 7so128346767wmo.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1wYUA23w4t91a/uHVt0Y4W5kScU++yMCaSKKDwKJQkU=;
	b=HwAtirccrhKE0Ptca8oHLp5gG7jlWhkS0yQFNH0URjq42XNwIXSYVaVVgOFYnrSryq
	7KwiRJeI4tNlU9rRGKZg2tD8S1rEDMey/2b0nU2fWk0nqZUy86EZV43GOgmEu4YBVqqq
	f6BwyaU1yq7E8XuPg0KX61k+fnxG9ZwXiJ/AHb6oPgg7yNUQ8Lba+3lC92B46jr9z3UP
	P2DFUuTn35OJ6mpEBBeXoxlfHC+dyDcjO2RSWAvY10krJVYJktliH1P3E1RrLh869yQn
	3Aed4x8llbuIiCNMoXSw4JVMGW9UGCuv1/oYoi+VEN7p6xWc0GKQwQwRoKatR+CC2RWb
	teKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1wYUA23w4t91a/uHVt0Y4W5kScU++yMCaSKKDwKJQkU=;
	b=dGcv9ae275ztsxlg8jTtJ8T6kPyCR7jqpl3uKAOzaCacdXuxuXoXi+oToXWfx493GY
	ao2cLiq9fKnn/KcJWgb9pRTomR/NQY9m1rauPE9kCAWHfJR5dttuZps/z3NZybGYz1EJ
	mFDtaBc+M5cGHdqGCRrTXvHGn/6OHOp3ZQR8FTz7ArZ+bw5IDUtM6Z6tQbchFP4ojus9
	cVCzzRzk4795v/ISYMiS3G6UjbsLCinc0EQr8hd8SUBG1yFhtobV6J9rOniNQeeuoXXp
	fRG7nfJ5W1nGUDawU32V/4zbwnYbp9NnBKt4/SGI7xoNRQYZ+o6H8NVotoDtoTFv9KAM
	czbw==
X-Gm-Message-State: AODbwcA6yAftXtFz2/ZuQ3XrMaKEhQHsVdFxs47xCjEb+3YQaPU2WrZ8
	eOiHfWH2KTE5RxBNdnrI8WiQYVQG56on
X-Received: by 10.28.181.3 with SMTP id e3mr2059960wmf.41.1495806780985; Fri,
	26 May 2017 06:53:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.73.139 with HTTP; Fri, 26 May 2017 06:52:40 -0700 (PDT)
In-Reply-To: <CAAQYJAsD1B=Z1pFfVS8VhW4aKXcVShye2sLYqf0gsLFta+uifg@mail.gmail.com>
References: <CADqNDzo_i22kiy7upOZfD2FoRsFAdJ6_+F7pDATSTonooN1fQQ@mail.gmail.com>
	<CAAQYJAsD1B=Z1pFfVS8VhW4aKXcVShye2sLYqf0gsLFta+uifg@mail.gmail.com>
From: Gerard van den Bosch <gvandenbosch@gmail.com>
Date: Fri, 26 May 2017 21:52:40 +0800
Message-ID: <CADqNDzqOGHU43Eaz+RuaQAxSeRGPPd2AEKhWj9T7Hsj8L--Kgg@mail.gmail.com>
To: Andrea Adami <andrea.adami@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Warning: unable to open an initial console
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
X-List-Received-Date: Fri, 26 May 2017 13:53:12 -0000
Content-Type: multipart/alternative; boundary="001a1148e27ad55b7d05506da776"

--001a1148e27ad55b7d05506da776
Content-Type: text/plain; charset="UTF-8"

Hello Andrea,

I have tried to add the line to my machine config:
IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"

But this didn't help, then I looked a bit further and also tried to set the
following:

USE_DEVFS="0"
VIRTUAL_RUNTIME_dev_manager = "mdev"

Unfortunately this doesn't seem to change anything.

Cheers,
Gerard

On Fri, May 26, 2017 at 7:27 PM, Andrea Adami <andrea.adami@gmail.com>
wrote:

> On Fri, May 26, 2017 at 1:05 PM, Gerard van den Bosch
> <gvandenbosch@gmail.com> wrote:
> > Hello,
> >
> > I have build my vendor custom kernel 2.6.20 with yocto daisy.
> > Daisy is used because seems to be last release supporting this old
> kernel.
> >
> > I tried building core-image-minimal and core-image-base.
> >
> > The kernel boots and the rootfs is mounted but then I get:
> >
> > "Warning: unable to open an initial console."
> >
> >
> > I found on the internet this is because "/dev/console" doesn't exists.
> > The dev folder in my generated rootfs is empty.
> >
> > On internet found can do the following commands:
> > "mknod -m 600 /dev/console c 5 1 "
> > "mknod -m 666 /dev/null c 1 3"
> >
> > But if this is the problem how do I add this to my recipe?
> > Or is there a proper way to populate this devices?
> >
> > Cheers,
> > Gerard
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
> Hello Gerard,
>
> if your old kernel lacks devtmpfs you need a "device table".
> You need to set at least
> IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt"
>
> This is a default set in image.bbclass before and after daisy...dunno
> what's happened with this release.
>
> Cheers
> Andrea
>

--001a1148e27ad55b7d05506da776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Andrea,<div><br></div><div>I have tried to add the l=
ine to my machine config:</div><div><div>IMAGE_DEVICE_TABLES =3D &quot;file=
s/device_table-minimal.txt&quot;</div></div><div><br></div><div>But this di=
dn&#39;t help, then I looked a bit further and also tried to set the follow=
ing:</div><div><br></div><div><div>USE_DEVFS=3D&quot;0&quot;</div><div>VIRT=
UAL_RUNTIME_dev_manager =3D &quot;mdev&quot;<br></div></div><div><br></div>=
<div>Unfortunately this doesn&#39;t seem to change anything.</div><div><br>=
</div><div>Cheers,</div><div>Gerard</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Fri, May 26, 2017 at 7:27 PM, Andrea Adami=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:andrea.adami@gmail.com" target=3D"=
_blank">andrea.adami@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Fri, May 26, 2017 =
at 1:05 PM, Gerard van den Bosch<br>
&lt;<a href=3D"mailto:gvandenbosch@gmail.com">gvandenbosch@gmail.com</a>&gt=
; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have build my vendor custom kernel 2.6.20 with yocto daisy.<br>
&gt; Daisy is used because seems to be last release supporting this old ker=
nel.<br>
&gt;<br>
&gt; I tried building core-image-minimal and core-image-base.<br>
&gt;<br>
&gt; The kernel boots and the rootfs is mounted but then I get:<br>
&gt;<br>
&gt; &quot;Warning: unable to open an initial console.&quot;<br>
&gt;<br>
&gt;<br>
&gt; I found on the internet this is because &quot;/dev/console&quot; doesn=
&#39;t exists.<br>
&gt; The dev folder in my generated rootfs is empty.<br>
&gt;<br>
&gt; On internet found can do the following commands:<br>
&gt; &quot;mknod -m 600 /dev/console c 5 1 &quot;<br>
&gt; &quot;mknod -m 666 /dev/null c 1 3&quot;<br>
&gt;<br>
&gt; But if this is the problem how do I add this to my recipe?<br>
&gt; Or is there a proper way to populate this devices?<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Gerard<br>
&gt;<br>
</div></div>&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
<br>
Hello Gerard,<br>
<br>
if your old kernel lacks devtmpfs you need a &quot;device table&quot;.<br>
You need to set at least<br>
IMAGE_DEVICE_TABLES =3D &quot;files/device_table-minimal.<wbr>txt&quot;<br>
<br>
This is a default set in image.bbclass before and after daisy...dunno<br>
what&#39;s happened with this release.<br>
<br>
Cheers<br>
<span class=3D"HOEnZb"><font color=3D"#888888">Andrea<br>
</font></span></blockquote></div><br></div>

--001a1148e27ad55b7d05506da776--
