Return-Path: <andrei@gherzan.ro>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB814E0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:45:35 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so5716406ggn.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:45:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=nOz7LGHg/4XKC27/g9YkQ0qo3Og9TShJlbgAFodkqbc=;
	b=dyDoRTu4dZVimboN6Y9E/fTOqHfR9N0+9XjXch+HECtCbfV5LjqB4nlZWqjivZwbkk
	JtQdVpZOuuEosGi3DELD2mRlumReZDTh6e2DZCSJcCx8btKm4nZ+aK+v9jTOqFnxLduX
	j20nqrukTcioLSTmFZ3nOQYuqwrRiQoGiK+mjLQXVfdLlXoZj03tqqlcJ2DEgHbS3VPN
	PFqyuqhs5G/+xQZC/MeP1e6Hu4AhUWKUKChrWA5Pt98JZiw7Y9bsJFipI9fXkgMAt4Rw
	JL93icoXxMyYsWuK3/dxwKFQc0O+FIWoysnRnBQuiQW3B8WZq8vzrJUJWYyJL972CtgL
	FPqw==
Received: by 10.50.135.37 with SMTP id pp5mr7120786igb.33.1337615134907; Mon,
	21 May 2012 08:45:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.25.18 with HTTP; Mon, 21 May 2012 08:45:14 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <4FBA621F.6030200@mlbassoc.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<14387597.ECeojYX8cL@helios>
	<00b101cd3764$be9cd960$3bd68c20$@Distant-earth.com>
	<2402037.qbM01MX6gb@helios>
	<00b501cd3767$46f76530$d4e62f90$@Distant-earth.com>
	<4FBA621F.6030200@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 21 May 2012 18:45:14 +0300
Message-ID: <CAK18fxFuCsXtpnNphE9q-Lj2XB0c=RFsr-7FhkOJ9Jj_uZF1qw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkTA98Hk81QFyY5A+wVOP2TGOgr0mT6rCfteEpi3rLqC8oescUb4kWBjsLc6AV0kiNktCU5
Cc: yocto@yoctoproject.org
Subject: Re: [poky] RaspberryPi Layer
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
X-List-Received-Date: Mon, 21 May 2012 15:45:36 -0000
Content-Type: multipart/alternative; boundary=e89a8f83a12ff65ca804c08dca34

--e89a8f83a12ff65ca804c08dca34
Content-Type: text/plain; charset=ISO-8859-1

Or we can set up a distro file so that we can use it out of the box and in
case ppl want to use custom distros use BBMASK. A pull request was sent
with some other stuff as well.


On Mon, May 21, 2012 at 6:41 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2012-05-21 09:34, John Willis wrote:
>
>> Hi Paul,
>>
>>  That had been my plan but I got the impression that was frowned up in
>>>> the Yocto environment.
>>>>
>>>
>>> Well, IMHO it's suboptimal, but far less so than two separate competing
>>> layers that ultimately exist for the same purpose.
>>>
>>
>> Pushed a note in the README with suggestions on a suitable Yocto BBMASK.
>>
>
> However, this note has a typo.  BBMASK must be a proper Python regex.
>
> diff --git a/README b/README
> index 6558bdc..e9ff8e6 100644
> --- a/README
> +++ b/README
> @@ -22,7 +22,7 @@ mask few recipes requiring systemd or other recipes not
> included in your distrib
>
>  You can achieve this by adding something like the following to local.conf:
>
> -BBMASK = "meta-raspberrypi/recipes-**multimedia/libav
> meta-raspberrypi/recipes-core/**systemd"
> +BBMASK = "meta-raspberrypi/recipes-**multimedia/libav|meta-**
> raspberrypi/recipes-core/**systemd"
>
>  You can adjust the BBMASK for any .bbappends that your distribution does
> not contain recipes for.
>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--e89a8f83a12ff65ca804c08dca34
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Or we can set up a distro file so that we can use it out of the box and in =
case ppl want to use custom distros use BBMASK. A pull request was sent wit=
h some other stuff as well.<br>
<br><br><div class=3D"gmail_quote">On Mon, May 21, 2012 at 6:41 PM, Gary Th=
omas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">

<div class=3D"im">On 2012-05-21 09:34, John Willis wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Paul,<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
That had been my plan but I got the impression that was frowned up in<br>
the Yocto environment.<br>
</blockquote>
<br>
Well, IMHO it&#39;s suboptimal, but far less so than two separate competing=
<br>
layers that ultimately exist for the same purpose.<br>
</blockquote>
<br>
Pushed a note in the README with suggestions on a suitable Yocto BBMASK.<br=
>
</blockquote>
<br></div>
However, this note has a typo. =A0BBMASK must be a proper Python regex.<br>
<br>
diff --git a/README b/README<br>
index 6558bdc..e9ff8e6 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -22,7 +22,7 @@ mask few recipes requiring systemd or other recipes not i=
ncluded in your distrib<br>
<br>
=A0You can achieve this by adding something like the following to local.con=
f:<br>
<br>
-BBMASK =3D &quot;meta-raspberrypi/recipes-<u></u>multimedia/libav meta-ras=
pberrypi/recipes-core/<u></u>systemd&quot;<br>
+BBMASK =3D &quot;meta-raspberrypi/recipes-<u></u>multimedia/libav|meta-<u>=
</u>raspberrypi/recipes-core/<u></u>systemd&quot;<br>
<br>
=A0You can adjust the BBMASK for any .bbappends that your distribution does=
 not contain recipes for.<span class=3D"HOEnZb"><font color=3D"#888888"><br=
>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------</font><=
/span><div class=3D"HOEnZb"><div class=3D"h5"><br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--e89a8f83a12ff65ca804c08dca34--
