Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 622D7E009E2; Wed, 18 Jan 2017 16:21:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F467E009DB
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 16:21:34 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id c7so129884068itd.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 16:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3YbLT6YIr3QlkcQ325DyI273lv44LbpyMxSp6RZKhj8=;
	b=r36DtdUbDyU6Wp/AeA/TPcwlmzyyy6Nc3pzv9FLDOwb+8Ey0knMjSco+jd17Yhh03d
	+JzZQDkNUN1bV0OWHQixf6bBU8jr71ENqcQRYcSLYCbhJuT5E5FS9NuvqewBD0HGxOex
	Jcmx5Gw7fSz522sb3GBHPKDqAsHQTJHKlJqBzU8h5aRfkWjVk3GNBTi5kET+ZSoixDeC
	D+DzdiAhd8OBBFkeWg1DDSuN24P+lRmo+g9o0R4UTWcAWGZKQ55B9LaAsw08TAhneXgc
	zc85s7D8dXYcxlIqFTcF3dHWDvdffnI2IkvuvC4flgk38AgYxie7FKiJt9AjGoWnlTlh
	zWXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3YbLT6YIr3QlkcQ325DyI273lv44LbpyMxSp6RZKhj8=;
	b=rdGGoU+vCcJRwPmhW5k5ZjAlZiYY0bLJEeSjZrcyMmXZva3CR4Jhw3uY/pNmMweaIm
	2WuuEcWkcdrnSWdZ8JIfd0/7E9+nTRgUdV5mDArxe7eOyNuDtDoLnvZiDfhYuKuEULUR
	yvoyeVbu603+pQjrBhcWItqiFLAoTQaa2yMyHZGK85O+k81/LW0d25/lcq6ix87Sy/dj
	jLF8BLK3uqhJhwcpsZtfFYyLMdAyLgvZ+ushQ4VrpOYe5GKzw/xnmIf/ZU8A2LFZ9UwB
	6k0VWO+bmaMsX74znIfm8LMvIVapuatjIowZwy2CL8/xWsP1np+97Zuum4tbqb0a9hNG
	OWvA==
X-Gm-Message-State: AIkVDXKTZHFN43qS+HDIt7+LV3GjfzTXijAghENczyXADvsRJG5vrSYRdIAh593UzxvttZjbPFLkUOJJY3lOMfyX
X-Received: by 10.36.133.133 with SMTP id r127mr26916320itd.37.1484785293169; 
	Wed, 18 Jan 2017 16:21:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.106 with HTTP; Wed, 18 Jan 2017 16:21:32 -0800 (PST)
In-Reply-To: <CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
From: Rick Altherr <raltherr@google.com>
Date: Wed, 18 Jan 2017 16:21:32 -0800
Message-ID: <CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Thu, 19 Jan 2017 00:21:38 -0000
Content-Type: multipart/alternative; boundary=94eb2c05bbf4f810b3054667833a

--94eb2c05bbf4f810b3054667833a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I was wondering about this recently.  Why are these snippets put in
local.conf.sample.extended instead of separate, well-named .inc files that
can be shared by multiple distros?  The current model seems to encourage
putting lots of configuration in local.conf that probably should be in the
distro or machine conf.

Rick

On Wed, Jan 18, 2017 at 1:35 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Wed, Jan 18, 2017 at 7:10 AM,  <colin.helliwell@ln-systems.com> wrote:
> > We have a configuration for our embedded system which is working via
> SysV,
> > but we=E2=80=99re investigating moving over to systemd.
> >
> > Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has tech=
nological arguments
> > for/against then I=E2=80=99d be interested =E2=80=93 but I wanted to in=
vestigate it
> anyway.
> >
> > I=E2=80=99ve modified local.conf (right or wrong) with
> >
> >   DISTRO_FEATURES_append =3D " systemd"
> >   VIRTUAL-RUNTIME_init_manager =3D "systemd"
> >   DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> >   VIRTUAL-RUNTIME_initscripts =3D ""
> >   KERNEL_ENABLE_CGROUPS =3D "1"
> >
> > I also found a readme
> > (https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about th=
e
> > kernel requirements for systemd, and it does at least now boot.
> >
> > However although eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), t=
here doesn=E2=80=99t seem
> to
> > be any dhcp happening =E2=80=93 no IP etc.
> >
> > Previously (under SysV) I had the busybox dhcp client; now it seems tha=
t
> is
> > missing. There=E2=80=99s a symlink /etc/systemd/system/busybox-udhcpc.s=
ervice to
> > /dev/null
> >
> > I=E2=80=99m using
> >
> >   Poky Jethro
> >   Kernel 4.4.0
> >   Busybox 1.23.2 (with =E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)
> >
> > I wondered if this is just a simple switch I=E2=80=99m missing somewher=
e, or is
> > there a whole load more modifications I need to dig into and hand-craft=
?
> > (Was hoping for something =E2=80=98out of the box=E2=80=99=E2=80=A6.)
>
> Try:
>
>   VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
>
> Enabling systemd is somewhat documented by the example in
> {meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,
> which is:
>
> #
> # Use systemd for system initialization
> #
> # DISTRO_FEATURES_append =3D " systemd"
> # DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
> # VIRTUAL-RUNTIME_init_manager =3D "systemd"
> # VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c05bbf4f810b3054667833a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was wondering about this recently.=C2=A0 Why are these s=
nippets put in local.conf.sample.extended instead of separate, well-named .=
inc files that can be shared by multiple distros?=C2=A0 The current model s=
eems to encourage putting lots of configuration in local.conf that probably=
 should be in the distro or machine conf.<div><br></div><div>Rick</div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Jan 18,=
 2017 at 1:35 PM, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:arm=
ccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, Jan 18, 2017 =
at 7:10 AM,=C2=A0 &lt;<a href=3D"mailto:colin.helliwell@ln-systems.com">col=
in.helliwell@ln-systems.<wbr>com</a>&gt; wrote:<br>
</span><div><div class=3D"h5">&gt; We have a configuration for our embedded=
 system which is working via SysV,<br>
&gt; but we=E2=80=99re investigating moving over to systemd.<br>
&gt;<br>
&gt; Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has tec=
hnological arguments<br>
&gt; for/against then I=E2=80=99d be interested =E2=80=93 but I wanted to i=
nvestigate it anyway.<br>
&gt;<br>
&gt; I=E2=80=99ve modified local.conf (right or wrong) with<br>
&gt;<br>
&gt;=C2=A0 =C2=A0DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>
&gt;=C2=A0 =C2=A0VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
&gt;=C2=A0 =C2=A0DISTRO_FEATURES_BACKFILL_<wbr>CONSIDERED =3D &quot;sysvini=
t&quot;<br>
&gt;=C2=A0 =C2=A0VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<br>
&gt;=C2=A0 =C2=A0KERNEL_ENABLE_CGROUPS =3D &quot;1&quot;<br>
&gt;<br>
&gt; I also found a readme<br>
&gt; (<a href=3D"https://cgit.freedesktop.org/systemd/systemd/tree/README#n=
37" rel=3D"noreferrer" target=3D"_blank">https://cgit.freedesktop.org/<wbr>=
systemd/systemd/tree/README#<wbr>n37</a>) about the<br>
&gt; kernel requirements for systemd, and it does at least now boot.<br>
&gt;<br>
&gt; However although eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), =
there doesn=E2=80=99t seem to<br>
&gt; be any dhcp happening =E2=80=93 no IP etc.<br>
&gt;<br>
&gt; Previously (under SysV) I had the busybox dhcp client; now it seems th=
at is<br>
&gt; missing. There=E2=80=99s a symlink /etc/systemd/system/busybox-<wbr>ud=
hcpc.service to<br>
&gt; /dev/null<br>
&gt;<br>
&gt; I=E2=80=99m using<br>
&gt;<br>
&gt;=C2=A0 =C2=A0Poky Jethro<br>
&gt;=C2=A0 =C2=A0Kernel 4.4.0<br>
&gt;=C2=A0 =C2=A0Busybox 1.23.2 (with =E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=
=E2=80=99)<br>
&gt;<br>
&gt; I wondered if this is just a simple switch I=E2=80=99m missing somewhe=
re, or is<br>
&gt; there a whole load more modifications I need to dig into and hand-craf=
t?<br>
&gt; (Was hoping for something =E2=80=98out of the box=E2=80=99=E2=80=A6.)<=
br>
<br>
</div></div>Try:<br>
<br>
=C2=A0 VIRTUAL-RUNTIME_initscripts =3D &quot;systemd-compat-units&quot;<br>
<br>
Enabling systemd is somewhat documented by the example in<br>
{meta-poky,openembedded-core/<wbr>meta}/conf/local.conf.sample.<wbr>extende=
d,<br>
which is:<br>
<br>
#<br>
# Use systemd for system initialization<br>
#<br>
# DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>
# DISTRO_FEATURES_BACKFILL_<wbr>CONSIDERED +=3D &quot;sysvinit&quot;<br>
# VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
# VIRTUAL-RUNTIME_initscripts =3D &quot;systemd-compat-units&quot;<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--94eb2c05bbf4f810b3054667833a--
