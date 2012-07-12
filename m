Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 445B3E00280
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 21:04:01 -0700 (PDT)
Received: by bkty5 with SMTP id y5so1780613bkt.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 21:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+C/M6fkqbpKi5WFNyJrXJFxHCq+TM5tevLnGvQfYFrA=;
	b=uSqaT5GQsGFf1WGeoiIcJprucR3VO0RP968eLr0nLV+fKN0dKqJDE0/8bcTuXhxfuQ
	e1WKVq2XHjlziAQE2dZLRPfIoWHrVabauX6I7aJY6KanhySWutv8BsyuSjP4gebNPMQn
	WW47VogvMqJOxRx7BddxmL8FhG2G+6uUAlxZjo1GtvVIYvydDrPKQfZ+KjbzU6EJ45gE
	KLyH/uK2WqHKwSCxOAup/TSb3Lt/jRK5vortKn2J9FVsa9oRpCG6qZpbreTg6OSoJjLQ
	sXpKhbZDN+/gSCUXeMZfjH9t36fVi6Gz7IvreNYxdWq2E5OQyuJPM6N7B5yi7Tz8X0fn
	AQTw==
Received: by 10.204.154.131 with SMTP id o3mr8960142bkw.87.1342065840684; Wed,
	11 Jul 2012 21:04:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.205.34.4 with HTTP; Wed, 11 Jul 2012 21:03:40 -0700 (PDT)
In-Reply-To: <CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
References: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
	<CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 12 Jul 2012 09:33:40 +0530
Message-ID: <CA+Z6RkUFyCqtFWpqzUTN5_cR423L8OF=-cz+edGo=kKR0dW8pw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Error while adding a new recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jul 2012 04:04:02 -0000
Content-Type: multipart/alternative; boundary=0015175cae66b3006704c49a0d9e

--0015175cae66b3006704c49a0d9e
Content-Type: text/plain; charset=ISO-8859-1

Thanks for your reply..
It is a pre-built-binary which I am trying to put in a specific path of
rootfs.
I didn't get what does it mean by "packaging it seperately"..

On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava
> <navani.srivastava@gmail.com> wrote:
> > ERROR: QA Issue: Architecture did not match (40 to 3) on
> >
> /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk
>
> what is this file ?
> is it some precompiled binary or some firmware blob ?
> you need to package is separately and then may be skip stripping just
> that one package
>

--0015175cae66b3006704c49a0d9e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks for your reply..<br>It is a pre-built-binary which I am trying to pu=
t in a specific path of rootfs.<br>I didn&#39;t get what does it mean by &q=
uot;packaging it seperately&quot;.. <br><br><div class=3D"gmail_quote">On W=
ed, Jul 11, 2012 at 8:04 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wed, Jul 11, 2012 at 5:=
28 AM, Navani Srivastava<br>
&lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.=
com</a>&gt; wrote:<br>
&gt; ERROR: QA Issue: Architecture did not match (40 to 3) on<br>
&gt; /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colo=
rado/home/Leica/Bin/colorado_gui_bk<br>
<br>
</div>what is this file ?<br>
is it some precompiled binary or some firmware blob ?<br>
you need to package is separately and then may be skip stripping just<br>
that one package<br>
</blockquote></div><br>

--0015175cae66b3006704c49a0d9e--
