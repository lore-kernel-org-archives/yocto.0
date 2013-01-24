Return-Path: <jmehaffey@mvista.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1135E01458
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:58:56 -0800 (PST)
Received: by mail-wg0-f45.google.com with SMTP id dq12so1703019wgb.12
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:58:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=5n66RPjFoIJaRxVEdeFxFUDQeMEP0gVxxWI2kXymeUA=;
	b=Vfxzecq3MvoGgYruvYUvN4T0ABj92JvCA+SWeoy87Q/2sSRSck7WlwvjWnb9Jkp2ud
	EHwAD05V/1lXuCFfVZMwlX15ihw1Kaxrul8yiRRdBdh9ujm77o2fR3jX/0FPV2L3EK7d
	d5bpbP3BNRUMy36Tk8/c4qO5tYbGLR2eTsZ7VvJZ3TePkVSCNXmm72SyaLY7dQwTxa4c
	tvSezWPcX03TTDumQoWXi2XDe+VsbRYrUnrEBDKDwGaGxoVtlzwx0gORxD9km0W7D1RP
	lYJMlw+g6684r5J4YkjJ8c4m36RNoartb0T/7gNWbdUpPDcwIQ2EaaQZttq21Lw30+oM
	Nr4A==
MIME-Version: 1.0
X-Received: by 10.180.72.232 with SMTP id g8mr5354799wiv.0.1359057535988; Thu,
	24 Jan 2013 11:58:55 -0800 (PST)
Received: by 10.227.19.146 with HTTP; Thu, 24 Jan 2013 11:58:55 -0800 (PST)
In-Reply-To: <5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
	<50F5992C.9070705@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C35D97A@GV1HQPEX03.babgsetc.pvt>
	<50F5A221.2070209@windriver.com> <50F6DF54.2020005@linux.intel.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370295@GV1HQPEX03.babgsetc.pvt>
	<50FEF7EC.6030601@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370A99@GV1HQPEX03.babgsetc.pvt>
	<50FF6A82.9090201@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F09@GV1HQPEX03.babgsetc.pvt>
	<50FF7254.2050903@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C370F97@GV1HQPEX03.babgsetc.pvt>
	<50FFEA46.5050303@windriver.com>
	<5BEFD653CA8A8D47AA194ED30AB5968C3710B3@GV1HQPEX03.babgsetc.pvt>
Date: Thu, 24 Jan 2013 11:58:55 -0800
Message-ID: <CAGOhT_cSVJOkB0=EutkGojn8SFQSR6PyzxbDc_QLNB4a9M=wLQ@mail.gmail.com>
From: John Mehaffey <mehaf@mvista.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Gm-Message-State: ALoCoQno97u4X4ckG+msyItdSqiwMke7kxKLplcQmaXGKT5Ykpser/k9wFxUup8ndRBs0WOBCcBd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Thu, 24 Jan 2013 19:58:57 -0000
Content-Type: multipart/alternative; boundary=f46d043c8194a974b204d40e3dd1

--f46d043c8194a974b204d40e3dd1
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 23, 2013 at 7:17 AM, Patrick Turley
<PatrickTurley@gamestop.com>wrote:

>
> On Jan 23, 2013, at 7:48 AM, Bruce Ashfield <bruce.ashfield@windriver.com>
>  wrote:
> > On 13-01-23 12:34 AM, Patrick Turley wrote:
> >>
> >> On Jan 22, 2013, at 11:17 PM, Bruce Ashfield <
> bruce.ashfield@windriver.com> wrote:
> >>
> >>> On 13-01-23 12:14 AM, Patrick Turley wrote:
> >>>> On Jan 22, 2013, at 10:43 PM, Bruce Ashfield<
> bruce.ashfield@windriver.com>  wrote:
> >>>>> On 13-01-22 9:26 PM, Patrick Turley wrote:
> >
> > Argh. I'll have to just run the commands myself and stop spamming the
> > list with ideas :) It's just a matter of making lkc accept the defaults
> > (i.e. you could also use allyesconfig, or allnoconfig) or even better
> > not trigger that config check at all.
>
> You're very kind to have spent so much time on my problem already. I look
> forward to hearing back.
>

It sounds like you are building for a board with an ARCH other than i386
(the default).

You need to either run it in a devshell or use "make ARCH=<arch> oldconfig".

-mehaf


>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d043c8194a974b204d40e3dd1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Wed, Jan 23, 2013 at 7:17 AM, Patrick Turley =
<span dir=3D"ltr">&lt;<a href=3D"mailto:PatrickTurley@gamestop.com" target=
=3D"_blank">PatrickTurley@gamestop.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
<br>
On Jan 23, 2013, at 7:48 AM, Bruce Ashfield &lt;<a href=3D"mailto:bruce.ash=
field@windriver.com">bruce.ashfield@windriver.com</a>&gt;<br>
<div class=3D"im">=A0wrote:<br>
&gt; On 13-01-23 12:34 AM, Patrick Turley wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Jan 22, 2013, at 11:17 PM, Bruce Ashfield &lt;<a href=3D"mailto=
:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt;&gt; On 13-01-23 12:14 AM, Patrick Turley wrote:<br>
&gt;&gt;&gt;&gt; On Jan 22, 2013, at 10:43 PM, Bruce Ashfield&lt;<a href=3D=
"mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt; =
=A0wrote:<br>
&gt;&gt;&gt;&gt;&gt; On 13-01-22 9:26 PM, Patrick Turley wrote:<br>
&gt;<br>
</div><div class=3D"im">&gt; Argh. I&#39;ll have to just run the commands m=
yself and stop spamming the<br>
&gt; list with ideas :) It&#39;s just a matter of making lkc accept the def=
aults<br>
&gt; (i.e. you could also use allyesconfig, or allnoconfig) or even better<=
br>
&gt; not trigger that config check at all.<br>
<br>
</div>You&#39;re very kind to have spent so much time on my problem already=
. I look forward to hearing back.<br></blockquote><div><br>It sounds like y=
ou are building for a board with an ARCH other than i386 (the default).<br>
<br>You need to either run it in a devshell or use &quot;make ARCH=3D&lt;ar=
ch&gt; oldconfig&quot;.<br><br>-mehaf<br>=A0<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5"><br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--f46d043c8194a974b204d40e3dd1--
