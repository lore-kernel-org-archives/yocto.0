Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE146E00CCC; Fri,  5 Feb 2016 01:03:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1895FE00B5A
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 01:03:01 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id mw1so9626153igb.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 01:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nVkJjOGpHPIaOqevr21AI5bHOn0varvk+ABJIDD7WWU=;
	b=i6ZIbvi4zTAeGCt7DcTCIzLxtLwuH+abGgoYUh7E128PwpQL73S3s8uCBDQPYmAjKB
	TMpicHuDMZMGoI7ovG0PZubF+Ygj0IAOSyCQ9ATE23J/olnSfEnTPWDdL4DmsP2HTdP1
	+5mw0bZs+ve8CGRAjmrdsk7e7wVGLshcG+guMBwcrWf2EzVzAT7fO3pxbiLRLQbKedt1
	1foH6JxRf1+B88Sotkw00zr1gMls11gH/JZETodQ/dyM0/qR9b+9gYEHM3WYyU/pq3Fb
	hpqvwz6CUrZN9L5yr6x4s9fKrhHEEpGezz7/OOHvU2nqZF84dVX8RuE4Nk7wQCdaO8g6
	8xhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nVkJjOGpHPIaOqevr21AI5bHOn0varvk+ABJIDD7WWU=;
	b=dzzdKl/4mfkoSii41XzTI3eeB5C+bfzj0jmLQ7o41AeTWuCTwetCkdz5eRWERhWMCd
	E27GdhSIDcHzjv+9NjNy9kPZWFnAXMCU77ScO/NrlR2wEFL5miHCBoeeWzx0yU7qhkPx
	k9gwA61yxRs0MzEgLRUtisWpUC8T8RwvFlP5tZLY30wyZ0VXq55qsmIUxzV5f2FBkQjq
	VE8YTPVfkbmqpJiA/DzBruJXP7gJr+RxxWUBwzGymXTCxCJfs5yOKFkPx8H6jwvupmGS
	oGPZL47QrRCiSxA241cijyTqJFKzUBC61MjctHoqAgNmLOImgvrex/qkZZ1ROwGUViSa
	5PeQ==
X-Gm-Message-State: AG10YOQw4OsUFxVhu8GaMsrI/TAGu6lpLquGGqJknzSoVgM+T2UMnMTo1lQ4DuoWPXFXUszLl4BpcZlMP/FltF3r
X-Received: by 10.50.160.7 with SMTP id xg7mr5252726igb.64.1454662980798; Fri,
	05 Feb 2016 01:03:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 01:02:41 -0800 (PST)
In-Reply-To: <A2879B89-41D4-42C2-8C86-A0ABD2F149B5@gmail.com>
References: <1454624831-25414-1-git-send-email-ross.burton@intel.com>
	<A2879B89-41D4-42C2-8C86-A0ABD2F149B5@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 09:02:41 +0000
Message-ID: <CAJTo0LZYuGLd=emba4YW1f-rQ6o9+xVpgV-ZJZHvzq0cKNX82w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] nightly-musl: also build core-image-weston
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
X-List-Received-Date: Fri, 05 Feb 2016 09:03:02 -0000
Content-Type: multipart/alternative; boundary=001a11339de83d25c1052b021e47

--001a11339de83d25c1052b021e47
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5 February 2016 at 02:08, Khem Raj <raj.khem@gmail.com> wrote:

> > diff --git a/buildset-config.controller/nightly-musl.conf
> b/buildset-config.controller/nightly-musl.conf
> > index 9a82e6b..5da90c3 100644
> > --- a/buildset-config.controller/nightly-musl.conf
> > +++ b/buildset-config.controller/nightly-musl.conf
> > @@ -12,7 +12,7 @@ steps: [{'SetDest':{}},
> >                             'buildhistory' : False, 'distro': 'poky=E2=
=80=99,
>
> one generic problem I see is that poky packages rpm and rpm does not work
> with musl.
> when I build core-image-sato with OE-Core it works out fine.
>
> fixing rpm with musl will need some some patching. I was wondering we
> could use poky-tiny + opkg combo
> for musl.


We can switch nightly-musl over to just opkg whilst rpm is known to be
broken.  We already have a separate tiny buildset.

Ross

--001a11339de83d25c1052b021e47
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 02:08, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt; diff --git a=
/buildset-config.controller/nightly-musl.conf b/buildset-config.controller/=
nightly-musl.conf<br>
&gt; index 9a82e6b..5da90c3 100644<br>
&gt; --- a/buildset-config.controller/nightly-musl.conf<br>
&gt; +++ b/buildset-config.controller/nightly-musl.conf<br>
&gt; @@ -12,7 +12,7 @@ steps: [{&#39;SetDest&#39;:{}},<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;buildhistory&#39; : False, &#39;dist=
ro&#39;: &#39;poky=E2=80=99,<br>
<br>
</span>one generic problem I see is that poky packages rpm and rpm does not=
 work with musl.<br>
when I build core-image-sato with OE-Core it works out fine.<br>
<br>
fixing rpm with musl will need some some patching. I was wondering we could=
 use poky-tiny + opkg combo<br>
for musl.</blockquote></div><br>We can switch nightly-musl over to just opk=
g whilst rpm is known to be broken.=C2=A0 We already have a separate tiny b=
uildset.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Ross</div></div>

--001a11339de83d25c1052b021e47--
