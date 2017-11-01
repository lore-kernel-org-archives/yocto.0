Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E050E00DE6; Wed,  1 Nov 2017 09:11:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 823D5E00DE4
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 09:11:16 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id w5so2248627ywg.11
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 09:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=npPrDex7qel+uU8nusUT0Tb4XCnGPdguJ45bAuSdjX8=;
	b=uKRiPMBXmHAW0WjOiTevrVXyyxf3TQ9Ze2vS//M6zX93aa5wwFBqBtxQ9BqrL6oq6E
	WVxVpwNB0HBnBSgrpTZzyiIjAYNHEGAYKFvX0EjcVM+/j6MBCnn/xVmOaOgSTkzigjju
	NjQFeYnbL+MU+TGHQNssn3qyXzlgIbO8otTntNafHFCuV2jsgEjVu5F/Ltnxh0gbqb20
	ZjH/GSCdaP0ED2KtuE1SJU+aNMV7SPl7Nq3/DrgH2QK+Sq9mTKMCS8qFkW3PanNPE3f8
	aaiKPnm5pDJzraClwA42p9WOKFV0RGGdYXkeP5tJrRnrXQy33cWx7JRoFIEShC2Q09Zi
	lf5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=npPrDex7qel+uU8nusUT0Tb4XCnGPdguJ45bAuSdjX8=;
	b=AgJGAFymX1z3COeo79A5b6Pe2sRgEMjRU1eYTQFDZcP5AiyhusebrvxD4M40SwqX2J
	Q35Er62HmqGI1sjWJ/JjlVFo/UetSeYyDDkHpu1vxU/gLtz3V2U2l8NH5P4/WoMPF4k0
	hDRhI/Gs6ZN+WtvGxON+B6BU54VjpilMnCByK9S/BpEnSXYBx0l11/2HCkHEPOkmfryz
	M9NeYivlM6SdJHowAkw9LerLOtsNrcDKscrIK2kx+ltuwKdjJ8HpPuZq95/21B+zV//W
	/qQlXIxgh0NjjPx9j/9W6Tk7/xhw9y4TXlPj1X4bY8W4UpbT24KhpmccwEZ2NpjIQzZ1
	72yA==
X-Gm-Message-State: AMCzsaWtAlr5S3Y6C+Sg4Fwraq7MywQmXAAyyv6r2q5kGwq1J2CmeSIl
	wQdb58fX70HEoxPA7qE6zluoGqTUwXMAT9XplO0=
X-Google-Smtp-Source: ABhQp+SB9z8CR7FUuXVqXUgtqHkSVE9p62h/8VkpHqnOE3tiHo52vz7P1uJfhrWevvKUe4T16hgmbtTy9IO7GEkYLgw=
X-Received: by 10.13.201.66 with SMTP id l63mr259302ywd.83.1509552676287; Wed,
	01 Nov 2017 09:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
	<CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
	<1509552091.13007.37.camel@collabora.co.uk>
In-Reply-To: <1509552091.13007.37.camel@collabora.co.uk>
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 01 Nov 2017 16:11:05 +0000
Message-ID: <CAFeBWL7=2nSeGBm10H0AvT6jGpnm2zvVx6iL6CWOshf-DCr6bQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 01 Nov 2017 16:11:18 -0000
Content-Type: multipart/alternative; boundary="001a114e67b40a3a63055cee1f45"

--001a114e67b40a3a63055cee1f45
Content-Type: text/plain; charset="UTF-8"

Thank you I will check out core-image-weston.

On Wed, Nov 1, 2017 at 12:01 PM Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> On Wed, 2017-11-01 at 15:58 +0000, Adam Lee wrote:
> > Thanks Fabien, I definitely don't have Xwayland in my rootfs. My
> manifest is missing xserver-xorg-
> > xwayland as well.
> >
> > Which image are you using? I thought including of  "x11 wayland" was
> sufficient. Perhaps not..?
> >
>
> The image I built is a custom one but I tried core-image-weston on imx6
> and rpi3 and it does the
> job.
>
> > Adam
> >
> > On Wed, Nov 1, 2017 at 10:28 AM Fabien Lahoudere <
> fabien.lahoudere@collabora.co.uk> wrote:
> > > On Wed, 2017-11-01 at 14:10 +0000, Adam Lee wrote:
> > > > Hello, how do I tell if I successfully built xwayland into my image?
> > > >
> > > > I looked for "xwayland" binary but to no avail.
> > >
> > > I have this /usr/bin/Xwayland in my rootfs.
> > >
> > > Check you manifest. It should contain xserver-xorg-xwayland.
> > >
> > > >
> > > > Adam
> > > --
> > > Fabien
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> --
> Fabien
>

--001a114e67b40a3a63055cee1f45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you I will check out core-image-weston.</div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 1, 2017 at 12:01 PM Fa=
bien Lahoudere &lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk">fabi=
en.lahoudere@collabora.co.uk</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">On Wed, 2017-11-01 at 15:58 +0000, Adam Lee wrote:<br>
&gt; Thanks Fabien, I definitely don&#39;t have Xwayland in my rootfs. My m=
anifest is missing xserver-xorg-<br>
&gt; xwayland as well.<br>
&gt;<br>
&gt; Which image are you using? I thought including of=C2=A0 &quot;x11 wayl=
and&quot; was sufficient. Perhaps not..?<br>
&gt;<br>
<br>
The image I built is a custom one but I tried core-image-weston on imx6 and=
 rpi3 and it does the<br>
job.<br>
<br>
&gt; Adam<br>
&gt;<br>
&gt; On Wed, Nov 1, 2017 at 10:28 AM Fabien Lahoudere &lt;<a href=3D"mailto=
:fabien.lahoudere@collabora.co.uk" target=3D"_blank">fabien.lahoudere@colla=
bora.co.uk</a>&gt; wrote:<br>
&gt; &gt; On Wed, 2017-11-01 at 14:10 +0000, Adam Lee wrote:<br>
&gt; &gt; &gt; Hello, how do I tell if I successfully built xwayland into m=
y image?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I looked for &quot;xwayland&quot; binary but to no avail.<br=
>
&gt; &gt;<br>
&gt; &gt; I have this /usr/bin/Xwayland in my rootfs.<br>
&gt; &gt;<br>
&gt; &gt; Check you manifest. It should contain xserver-xorg-xwayland.<br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Adam<br>
&gt; &gt; --<br>
&gt; &gt; Fabien<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
&gt; &gt;<br>
--<br>
Fabien<br>
</blockquote></div>

--001a114e67b40a3a63055cee1f45--
