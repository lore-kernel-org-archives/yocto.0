Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4E5FE00D2E; Fri,  5 Feb 2016 09:56:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D4B9E00D25
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 09:56:35 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id mw1so18911289igb.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 09:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=psdaKtD8lurN1ocoNXVR30vGRn6iZcJI1ahL3SYIVn8=;
	b=FlibceKk9kBS98WN/tgTW4lwYWeZHG2P0tRMkeBVU39GFXdaZdICLIxUhwum8/+p7W
	UHxQt+tJp2F8NGG5/raFezY2U2HYkchVvSnwYZLvslFpB8aDV5lHQKG5q/LooWKfGvgA
	5IJo9FfeSC439TR2R6N7dgdNzMIeWO/RdDZ4pS8l/J6P5p9OIT1NMNe3OJoZxn20MKER
	kXaKnJh58hpIdQrp1UdeHDmt6OSmN8hu5lG24ia7amVt62ZsXQjM6i3nZrgCVKuwqttv
	XfT82xQfAg8kV/0LZkwDhCaipBiwPMAmHN78IcYUPh/+B6lD+LgyXAhxmsKhVyEP6wIM
	MvlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=psdaKtD8lurN1ocoNXVR30vGRn6iZcJI1ahL3SYIVn8=;
	b=Mz3yhoR0knMSnrf75FszFFCKanXNOhJPCrL+dYlSaY5zaeElmegDMcvd9sjFUKXbVZ
	tDEGvIfXscdMQ5aT2+SkUznHcKGrQ7lGfL+qJIj+A/a3BYsb5xQCBcGHW/YCAt0Aq2ga
	UK9r0FwMfKJrfOzqI2d4TIdt+PO9CgZ6BBDwv2/hEZBiuf2h09D+7hvUWFMXKMlov/m+
	wm+FgCci6kLiupJqKO0mDJADDpDgk/GXS02r3Aaora6Dp506FLAb/kuXnwI+71a9I30P
	5RxI8pjCRR1igKwa0i0ZzBWzr5wTJalQnAmRZ/gdR0wozK5d0tdFNfo6aLmSRP0//FwM
	iAkQ==
X-Gm-Message-State: AG10YOTTgOxFInbKaQzpzfW3fpAPWt7RsyoW4qWH80boY9uuJqs9D4QWxSzAf8q3P2Wd/DciYLhUwdD2LJG+uAWO
X-Received: by 10.50.23.108 with SMTP id l12mr17437685igf.78.1454694995326;
	Fri, 05 Feb 2016 09:56:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 09:56:15 -0800 (PST)
In-Reply-To: <30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 17:56:15 +0000
Message-ID: <CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 17:56:38 -0000
Content-Type: multipart/alternative; boundary=089e0149cbe874359e052b099206

--089e0149cbe874359e052b099206
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 February 2016 at 17:47, Nathan Sowatskey <nathan@nathan.to> wrote:

> find /usr/lib -name libgcc_s.so.1
> root@qemux86-64:~#
>
> I don=E2=80=99t have that lib.
>

As I said, libgcc_s.so.1 is in /lib, not /usr/lib.


> With ldd I get:
>
> ldd /usr/bin/testprog
> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory
>

Well ldd appears to be having a bit of a panic.  Try objdump -p
/usr/bin/testprog instead.

Ross

--089e0149cbe874359e052b099206
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 17:47, Nathan Sowatskey <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nathan@nathan.to" target=3D"_blank">nathan@nathan.to</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":hx5" class=3D"a3s"=
 style=3D"overflow:hidden">find /usr/lib -name libgcc_s.so.1<br>
root@qemux86-64:~#<br>
<br>
I don=E2=80=99t have that lib.<br></div></blockquote><div><br></div><div>As=
 I said, libgcc_s.so.1 is in /lib, not /usr/lib.</div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div id=3D":hx5" class=3D"a3s" style=3D"overflow=
:hidden">
With ldd I get:<br>
<br>
ldd /usr/bin/testprog<br>
/usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory</div><=
/blockquote></div><div class=3D"gmail_extra"><br></div>Well ldd appears to =
be having a bit of a panic.=C2=A0 Try objdump -p /usr/bin/testprog instead.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--089e0149cbe874359e052b099206--
