Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB725E00D3F; Wed, 27 Feb 2019 10:48:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E16BE00D13
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:48:29 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id p27so14808948edc.6
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=j1ui36eCH5xZDnpsXDAP/i8kNtFFERPD1aIA9S4i7j4=;
	b=XQfbS2Vadkz9EUFSihwfS6WXdmdKz/YnxeJNeCx0/D1MbWuXZR8/qAvxGQrZc3tpvE
	CW5D9zO0/kIbb8jSIyJReb4Pf8AyenArC/nWq1m89wbuF7SJPzEmXYMhT0i2ZoI+2anQ
	/5rWm34XtF79d6izd/aL7vOdmjO374SG5eJyErb42V44LWTkKARm+HqIG0jCfoHObLT9
	vkjBT8r2lp5k9hCl9tYRQCUcT2JkY/i9c1UAE83oZnvuidbVymk9dlbMO+ukCkXwqcE5
	oaP+Djb1U8TJgXu7dtJZWT+uyNKGPWzq6ExG6He691vUC0R0aONcG14TB4bFMo+dx/35
	3HAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=j1ui36eCH5xZDnpsXDAP/i8kNtFFERPD1aIA9S4i7j4=;
	b=aXNBpg+sARStUBl/Kuy5lbxuZGvzbwzqCoIBvia1envugRnoUPSLgOq2w3eairrzC4
	zNrg3tNgnmoY7zd3kUN+G06DOKm1BAsxbbqRi78oAnLyOR2shkbOOt1Kk3BHs1qsIfR9
	c7HgunDdGUHdm4ZCfv0/X1GCugJGE4Jj/cwl5zJYlda+fhyq93Xx4qbGXp5+bETJiVAb
	x7LJvn7PKGfcrjAe40QKNjgqUtUpwAPdK7MOTZOgikdHnAvrRpUq5YZ9NzBSQqd1Lgqu
	5VV81fpKH0p3IkXgZAl8RIg4ntgtEsSM0UoY4H9U9GRL6vI/OLdjFUfC9+8TDRLalSyN
	ktzw==
X-Gm-Message-State: AHQUAubf+xBrc1JD3xIchsExnxjyIuWOJeVSXi/YIhoC60zNE+/JKhCi
	kcufqn+TX8D5GK5gp6VPT6EUmCSUSB0otIbZ/IRxvw==
X-Google-Smtp-Source: AHgI3IYZxSnEYPVLOgpyeRRttBgyR3AghEstggvJl33vNPAy33UIK2yAGFutklKfoceMDauX3s3BhCdIMtUDmvNtA1w=
X-Received: by 2002:a50:978e:: with SMTP id e14mr3346445edb.234.1551293308512; 
	Wed, 27 Feb 2019 10:48:28 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
	<CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
	<20190227175814.GW12046@bill-the-cat>
	<CAJTo0Lboemkg2+rxxBqgj7K1LLQGEioDqsJUQx1AtCzMgrGHrg@mail.gmail.com>
	<20190227184542.GB12046@bill-the-cat>
In-Reply-To: <20190227184542.GB12046@bill-the-cat>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 27 Feb 2019 10:48:16 -0800
Message-ID: <CAFNP8Otj9xXkUw5yWa7voGhWe9WB1Wwayj71Ti=PSFH9bMPhTw@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 18:48:34 -0000
Content-Type: multipart/alternative; boundary="00000000000098aca60582e49e08"

--00000000000098aca60582e49e08
Content-Type: text/plain; charset="UTF-8"

Hi,

Sounds like this issue might have some documentation ripples when it
settles out.

Scott

On Wed, Feb 27, 2019 at 10:46 AM Tom Rini <trini@konsulko.com> wrote:

> On Wed, Feb 27, 2019 at 06:35:10PM +0000, Burton, Ross wrote:
> > On Wed, 27 Feb 2019 at 17:58, Tom Rini <trini@konsulko.com> wrote:
> > > I'm not sure we can blacklist busybox from the build at this time
> > > (hddimg requires initramfs that requires busybox) but instead only
> force
> > > remove it from the image and ensure it still builds.
> >
> > Don't build an image with a initramfs?
>
> OK, so I've kicked things a bit harder again, and here's what I see as
> the (small) rub.
> $ git grep hddimg meta/conf/
> meta/conf/machine/include/x86-base.inc:IMAGE_FSTYPES ?= "hddimg"
>
> So yes, we can do a test with qemux86/qemux86-64 and documenting this in
> local.conf.sample is good (and a packagegroup that gives more 1:1
> functionality is on my TODO list somewhere).  But it's also true that
> we'll get people with "I can't remove busybox and I tried what it says"
> posts since blindly pulling in hddimg gives at least:
> ERROR: Nothing RPROVIDES 'busybox-mdev' (but
> /home/trini/work/OE/oe-core/meta/recipes-core/initrdscripts/
> initramfs-framework_1.0.bb
> RDEPENDS on or otherwise requires it)
>
> That's the point I want to make, after throwing out a quick test build
> dir.
>
> --
> Tom
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000098aca60582e49e08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>Sounds like this is=
sue might have some documentation ripples when it settles out.=C2=A0 <br></=
div><div><br></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 27, 2019 at 10:46 AM Tom=
 Rini &lt;<a href=3D"mailto:trini@konsulko.com">trini@konsulko.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, F=
eb 27, 2019 at 06:35:10PM +0000, Burton, Ross wrote:<br>
&gt; On Wed, 27 Feb 2019 at 17:58, Tom Rini &lt;<a href=3D"mailto:trini@kon=
sulko.com" target=3D"_blank">trini@konsulko.com</a>&gt; wrote:<br>
&gt; &gt; I&#39;m not sure we can blacklist busybox from the build at this =
time<br>
&gt; &gt; (hddimg requires initramfs that requires busybox) but instead onl=
y force<br>
&gt; &gt; remove it from the image and ensure it still builds.<br>
&gt; <br>
&gt; Don&#39;t build an image with a initramfs?<br>
<br>
OK, so I&#39;ve kicked things a bit harder again, and here&#39;s what I see=
 as<br>
the (small) rub.<br>
$ git grep hddimg meta/conf/<br>
meta/conf/machine/include/x86-base.inc:IMAGE_FSTYPES ?=3D &quot;hddimg&quot=
;<br>
<br>
So yes, we can do a test with qemux86/qemux86-64 and documenting this in<br=
>
local.conf.sample is good (and a packagegroup that gives more 1:1<br>
functionality is on my TODO list somewhere).=C2=A0 But it&#39;s also true t=
hat<br>
we&#39;ll get people with &quot;I can&#39;t remove busybox and I tried what=
 it says&quot;<br>
posts since blindly pulling in hddimg gives at least:<br>
ERROR: Nothing RPROVIDES &#39;busybox-mdev&#39; (but<br>
/home/trini/work/OE/oe-core/meta/recipes-core/initrdscripts/<a href=3D"http=
://initramfs-framework_1.0.bb" rel=3D"noreferrer" target=3D"_blank">initram=
fs-framework_1.0.bb</a><br>
RDEPENDS on or otherwise requires it)<br>
<br>
That&#39;s the point I want to make, after throwing out a quick test build<=
br>
dir.<br>
<br>
-- <br>
Tom<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000098aca60582e49e08--
