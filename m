Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58C5BE00AAF; Wed,  1 Nov 2017 08:58:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19ABE00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 08:58:17 -0700 (PDT)
Received: by mail-yw0-f195.google.com with SMTP id i198so2221031ywe.7
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 08:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mCsKavdh7xbGo/cQWj/9hwnrKIVShYjez+W7XLvz4ZQ=;
	b=QuaOlLnbhFIjgKYXQrOfzOX5jjZ4v23n8RJzJTqG0Yb1ZELHeFwrDRE5XyZTULtH9o
	0xiKH3MHKdZ0bJ0qM/zjOUWMP4sWSFFE+/QZaeEUiy+oijVdn0rnEW79wqxgRqMofKoZ
	LuR8BWXWI0o8OZ13a0uvilWVqXUNe1IFfMhWR1urBOHdPFkC622fVMx42Jz03QCTZjw7
	i4w4g88SB+MKUKBt3EMdb7t7JKT8Z1pw4YihbMcdW7hXlsvWuUfV4D3K8VV+RHM83yiF
	eIbvvHgTwB3oUgdrjFnl+xDw4Km8XIWUdjp5vOhJIVHxAoGfgpm2mR7kCV8rNXO3trSN
	RqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mCsKavdh7xbGo/cQWj/9hwnrKIVShYjez+W7XLvz4ZQ=;
	b=RHS856PCiYQM7ctE/jhV2udE1S00cawMhFKTwNPRj88AgxkVoFnF0EYS4UeiZN1hTJ
	xuN2K2uNJIHaQHinEtxnm9YVcw6zyzOSBbl0717Gy+28pM1ToXyG3CXLv62vwOO8WGDP
	5cvntmpE9l5/h1wmdm3/o5Er4bTz6k0rRUMx2EZFgD4D5Vs52skANHbpP0lWctIPkAFq
	3dy3dnIVIcUs13kz+J+gH3/PA+NLSAwTlf0zPOCn20sTILLhwcm9IP6CshoYrxM1oYUe
	6o+mFs9sNAfzZDIM2HRPyh9uHrgtHbOJhLT6cScY9Z7Vy0oKCC6+H8aS8zHd+iIgDkKZ
	/oyQ==
X-Gm-Message-State: AMCzsaWNAtf0BdZNApmtQJJgDYzQ65uJBP18kt/IwvOzRMLO5ilMlpEb
	BfIRsMYsg56N82+bkKJAGmWwGOsH4B7T2hoq0+o=
X-Google-Smtp-Source: ABhQp+TDmf0lDYtoyzEesiet3XSCSdtH3OZtC6ZcwKLi6Td3OZVRN4kJJjkEcD0ZuxFYc1IabBfja8CcNX0TfWOuMfw=
X-Received: by 10.13.229.131 with SMTP id o125mr194526ywe.377.1509551896715;
	Wed, 01 Nov 2017 08:58:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
In-Reply-To: <1509546479.13007.35.camel@collabora.co.uk>
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 01 Nov 2017 15:58:06 +0000
Message-ID: <CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 15:58:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c08130a92eabe055cedf017"

--94eb2c08130a92eabe055cedf017
Content-Type: text/plain; charset="UTF-8"

Thanks Fabien, I definitely don't have Xwayland in my rootfs. My manifest
is missing xserver-xorg-xwayland as well.

Which image are you using? I thought including of  "x11 wayland" was
sufficient. Perhaps not..?

Adam

On Wed, Nov 1, 2017 at 10:28 AM Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> On Wed, 2017-11-01 at 14:10 +0000, Adam Lee wrote:
> > Hello, how do I tell if I successfully built xwayland into my image?
> >
> > I looked for "xwayland" binary but to no avail.
>
> I have this /usr/bin/Xwayland in my rootfs.
>
> Check you manifest. It should contain xserver-xorg-xwayland.
>
> >
> > Adam
> --
> Fabien
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c08130a92eabe055cedf017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Fabien, I definitely don&#39;t have Xwayland in my =
rootfs. My manifest is missing xserver-xorg-xwayland as well.<div><br></div=
><div>Which image are you using? I thought including of=C2=A0 &quot;x11 way=
land&quot; was sufficient. Perhaps not..?</div><div><br></div><div>Adam</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 1, 2017=
 at 10:28 AM Fabien Lahoudere &lt;<a href=3D"mailto:fabien.lahoudere@collab=
ora.co.uk">fabien.lahoudere@collabora.co.uk</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">On Wed, 2017-11-01 at 14:10 +0000, Adam Lee wrote:<=
br>
&gt; Hello, how do I tell if I successfully built xwayland into my image?<b=
r>
&gt;<br>
&gt; I looked for &quot;xwayland&quot; binary but to no avail.<br>
<br>
I have this /usr/bin/Xwayland in my rootfs.<br>
<br>
Check you manifest. It should contain xserver-xorg-xwayland.<br>
<br>
&gt;<br>
&gt; Adam<br>
--<br>
Fabien<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--94eb2c08130a92eabe055cedf017--
