Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677EEC282C5
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 01:15:14 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.1187.1740791709341211758
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Feb 2025 17:15:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=WoJGjYas;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4399a1eada3so24723805e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 17:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1740791707; x=1741396507; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ECG3vPHRki6x8L7QcrWmYeHoYnPGaOQ64E14FVogAdo=;
        b=WoJGjYasSc0kJUx9n86FHV4JNbagbPzyaA7UDqXHucLOimHuYHUaWaZ/L290CXK2dd
         s4Prx12e2rGAUOuvxuzO/ujY/IGKVnzza5oarGQDkqbikkJs0XrpYuqeO6YNjTNl+lXQ
         LCJi6I0FCQLeXNy+uc1Gs+TkzbvZEP+VX1NOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740791707; x=1741396507;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ECG3vPHRki6x8L7QcrWmYeHoYnPGaOQ64E14FVogAdo=;
        b=h/4DdfiEeKQn01t081g72Guhc4PnAhVok8a/ihntbiTnB7GwY209yzG6GwZajuIVoM
         xcYkqssFLgBW4wSdKPQ4HBtwS7OZPLT86dRSDKbri2+opbYwbn3MuvCKuoMZyQS4XUhw
         UWhHbw2mgyjPJ2kKhG+Jdl0mXKAG41NLvBRjEitYCgcos9/cHnlj70ExdDDtq4ALLX8e
         F+g/u9qeh+0GnKtSa/gDZUX+k4uU3oBpip+963mYDj5CbvNrl/wYVYGYylJGfpOW9VSX
         xX7MUl2ZiNnuix+Xw8CaLAXU9TT8pXIpCatzfQ14wYV5ip9CCW+Gge+D+iWyxdgFbzGO
         gsAQ==
X-Gm-Message-State: AOJu0Yx1SuwWLm99JULX8JTGD0BC1Ed7gMgm25uzni73f56n/aH/nDM9
	ZPPUQgaheANxkKrQhzDfgY7Sr9Pa5VwXpj25HhYv38q/V9OoJjlxSOtCnv4Dg4du/90gsFh5iQJ
	Py0yjCFWnVIh+tyWbuKw2LzhpREqVmI1F90bYGAC2Oqdp1AR1HME=
X-Gm-Gg: ASbGncsf5E5PMkprWZ6CcwG9GyyjLv3QvWL/BqWQmUHFOym2lPx8xWma9+rfnHTHnpb
	es9dukdWBfJryq9z0uO3RSZG1EBQ0OKxbp1FQdz2Q8aFArWpe/r0kTmeEaSvcZ8+s1UzPhyJsqI
	IZ7Yw9z5SMtciMg2EyxQzMCGfYnIbk7jV8CgMtPVD03HTZyj5rSnUsdLa0NSc=
X-Google-Smtp-Source: AGHT+IElH515yVVXGbQQdP2wCqidK5JE16Y6XARfTD7WUsltdM/XanTWbHxpPZo8o3HMNy6eCqJLLLCij8M+Tzu75ws=
X-Received: by 2002:a05:6000:178c:b0:390:eae5:5196 with SMTP id
 ffacd0b85a97d-390eca53168mr5533245f8f.38.1740791706939; Fri, 28 Feb 2025
 17:15:06 -0800 (PST)
MIME-Version: 1.0
References: <Lv3T.1740779791779161515.ZO6F@lists.yoctoproject.org>
In-Reply-To: <Lv3T.1740779791779161515.ZO6F@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Sat, 1 Mar 2025 02:14:41 +0100
X-Gm-Features: AQ5f1Jr6OjTlJIfBF_05ejb5uwLuHg8mgYqyHzbUjAgm4-lpjKsSw1XuECqryUc
Message-ID: <CAMSfU+7Ret6jgpFneAmj+Kaxp7UDkxQ1RY4a10wzzCZRPcqa=Q@mail.gmail.com>
Subject: Re: [yocto] linux-intel-rt: TUN/TAP Driver Config Not Being Applied
 #kernel #kernelmodule #linux
To: yocto@lists.yoctoproject.org, ryan.a.lovelett@saic.com
Content-Type: multipart/alternative; boundary="000000000000521204062f3da72a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 01:15:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64899

--000000000000521204062f3da72a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 28 f=C3=A9vr. 2025 =C3=A0 22:56, Ryan Lovelett via lists.yoctoproje=
ct.org
<ryan.a.lovelett=3Dsaic.com@lists.yoctoproject.org> a =C3=A9crit :

> I'm having trouble getting the linux-intel-rt kernel to compile the
> TUN/TAP device driver support directly into the kernel.
>
> What I've tried...
>
>    1. Ran bitbake -c kernel_configme -f virtual/kernel to generate the
>    base config.
>    2. Manually enabled the Universal TUN/TAP device driver support:bitbak=
e
>    -c menuconfig virtual/kernel
>       - -> Device Drivers
>          - -> Network device support (NETDEVICES [=3Dy])
>             - -> Network core driver support (NET_CORE [=3Dy])
>                - -> Universal TUN/TAP device driver support (TUN [=3Dy])
>             3. Ran bitbake -c diffconfig virtual/kernel, which generated
>    fragment.cfg containing: CONFIG_TUN=3Dy
>    4. Copied this into enable-tap-tun.cfg and added it to
>    linux-intel-rt_%.bbappend:
>
>    FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>
>    SRC_URI:prepend =3D " \
>      file://enable-can.cfg \
>      file://enable-tap-tun.cfg \
>    "
>
>
>
> After building when I try to do modprobe tun the module is not found. I
> believe my config fragments are being processed because it seems
> enable-can.cfg is being applied correctly. Is there some kind of
> conflict, precedence issue, or override preventing my TUN/TAP configurati=
on
> from being applied?
>

With CONFIG_TUN=3D*y*, TUN should be a built-in driver, not a module you ca=
n
modprobe (you would have to use CONFIG_TUN=3Dm for that).

Can you check that the TUN driver is not already running? Do you have a
/dev/net/tun device by any chance?


>  Would appreciate any insight.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64895):
> https://lists.yoctoproject.org/g/yocto/message/64895
> Mute This Topic: https://lists.yoctoproject.org/mt/111443099/4316185
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #kernelmodule:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kernelmodule
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS - Tech expert

--000000000000521204062f3da72a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 28=
 f=C3=A9vr. 2025 =C3=A0=C2=A022:56, Ryan Lovelett via <a href=3D"http://lis=
ts.yoctoproject.org">lists.yoctoproject.org</a> &lt;ryan.a.lovelett=3D<a hr=
ef=3D"mailto:saic.com@lists.yoctoproject.org">saic.com@lists.yoctoproject.o=
rg</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>I&#39;m having trouble getting the <code>linux-intel-rt</=
code> kernel to compile the TUN/TAP device driver support directly into the=
 kernel.</p>
<p>What I&#39;ve tried...</p>
<ol>
<li>Ran <code>bitbake -c kernel_configme -f virtual/kernel</code> to genera=
te the base config.</li>
<li>Manually enabled the Universal TUN/TAP device driver support:<code>bitb=
ake -c menuconfig virtual/kernel =20
</code>
<ul>
<li><code>-&gt; Device Drivers</code>
<ul>
<li><code>-&gt; Network device support (NETDEVICES [=3Dy])</code>
<ul>
<li><code>-&gt; Network core driver support (NET_CORE [=3Dy])</code>
<ul>
<li><code>-&gt; Universal TUN/TAP device driver support (TUN [=3Dy])</code>=
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
<li>Ran <code>bitbake -c diffconfig virtual/kernel</code>, which generated =
<code>fragment.cfg</code> containing: <code>CONFIG_TUN=3Dy =20
</code></li>
<li>Copied this into <code>enable-tap-tun.cfg</code> and added it to <code>=
linux-intel-rt_%.bbappend</code>:
<pre><code>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot; =20

SRC_URI:prepend =3D &quot; \ =20
  file://enable-can.cfg \ =20
  file://enable-tap-tun.cfg \ =20
&quot; =20
</code></pre>
</li>
</ol>
<h3>=C2=A0</h3>
<div>After building when I try to do <code>modprobe tun</code> the module i=
s not found. I believe my config fragments are being processed because it s=
eems <code>enable-can.cfg</code> is being applied correctly. Is there some =
kind of conflict, precedence issue, or override preventing my TUN/TAP confi=
guration from being applied?</div></blockquote><div><br></div><div>With CON=
FIG_TUN=3D*y*, TUN should be a built-in driver, not a module you can modpro=
be (you would have to use CONFIG_TUN=3Dm for that).</div><div><br></div><di=
v>Can you check that the TUN driver is not already running? Do you have a /=
dev/net/tun device by any chance?</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<div>=C2=A0Would appreciate any insight.</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64895): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64895" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64895</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111443099/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111443099/4316185</a><br>
Mute #linux:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/l=
inux" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/linux</a><br>
Mute #kernel:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
kernel" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/kernel</a><br>
Mute #kernelmodule:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteha=
shtag/kernelmodule" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/g/yocto/mutehashtag/kernelmodule</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS - Tech expert<br></font></div></div><=
/div></div>

--000000000000521204062f3da72a--

