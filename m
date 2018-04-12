Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21844E00938; Thu, 12 Apr 2018 05:54:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E979FE00708
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:54:16 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id g8so11343117wmd.2
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 05:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZwTGHYzbbwIBPt+3AQ9kcTbSvxMCJwKBIptgSvPSbtE=;
	b=NPoXO4htQr5oZdIZYWqIs+XzCwxxF0OSG2Iy+nNndWB/Ke+gk0GOGJRItfU6OH653o
	zbsWnsr7rCjFTCWLtgW4AEVUEkI0SRiNhPUwQxx8BuACpu3oNeoN80aKhDZ2BQIsqzqo
	ni5CCHokeT01Kdc3u1WxiGdgHGX+mZxnWBW21L18IEeRWxNYhGa2ejS5KVRB7HBrQ+Fw
	QroIJOypU2jWkbRcANFETsso/SOc0B0ypA3MgDQtbwPNqfspurT+rmSVOShO4YH1VLwM
	wvSIE8zWmqP7rqmVoVGhOinvdmYh7C9D4GR3BcoykIZyrA/Hg5pcobIFJHqfUd4PE/1k
	C0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZwTGHYzbbwIBPt+3AQ9kcTbSvxMCJwKBIptgSvPSbtE=;
	b=OBgWiFHG5oUqPyJdSkqpAGUm54T1xW8UFFhIU+DqRzvzzD8Hh41iHfoJHBa1eOI6Hf
	b5NzTy0CTZL3R5zrCBsn9v+OBHL44qlRTfSRHJg/n+P05Ag+99JFOFtPWL6kAv4g6YFO
	NU4wQfmf72vi3TCXcECoZSzSUHIcMmhMrIxHO3BI1FYZfhowQoJjcaJghBszjxaR7ayC
	du/eyQgExr/YQUmq9wtiPfEv02oFnt5Bb+xCDCEyr/Y60nE4dm0Wph/H4vlSR8hMA4Eo
	rkrjPruXAUDjEb4ofXVGGTXn872BOkcTXOpLxupuzgYG7dzV8nYH89YpgKV68Zbo7K3y
	SqHQ==
X-Gm-Message-State: ALQs6tCN4IQwTGGdxh50VxbV7rNl9UQggN5FqdFdg881rNEzxylFu+rb
	gNKklI5jqqnGoLUl0ZtY9ez+BpISOxfaKOT50hI=
X-Google-Smtp-Source: AIpwx48zMaTum0sR5Iopn6smwtSE9l5FH7E3GBOpqTQ8PM38GVP86HvXQbV2yqqhnc7lisvj7sH/tliZ3HVRDT3bdVQ=
X-Received: by 10.28.156.4 with SMTP id f4mr670616wme.79.1523537655799; Thu,
	12 Apr 2018 05:54:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.126.12 with HTTP; Thu, 12 Apr 2018 05:54:15 -0700 (PDT)
In-Reply-To: <CAJTo0LZhxZNxHwOLzkWBXixKqU6i=pUQB+ZncMsCaXEwuCEJog@mail.gmail.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
	<CAJTo0LZhxZNxHwOLzkWBXixKqU6i=pUQB+ZncMsCaXEwuCEJog@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 12 Apr 2018 14:54:15 +0200
Message-ID: <CA+chaQfAWs4J1gPVwZ+AdCrHMAXUhUzPmP4hUFTzLJGz1=0jug@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 12:54:18 -0000
Content-Type: multipart/alternative; boundary="001a114b2de6c6a5200569a6405d"

--001a114b2de6c6a5200569a6405d
Content-Type: text/plain; charset="UTF-8"

Cannot LAYERSERIES_CORENAMES added in rocko be used for that?

On Thu, Apr 12, 2018 at 2:47 PM, Burton, Ross <ross.burton@intel.com> wrote:

> I think the message here is that we need to embed the oe-core version
> in the metadata somewhere...
>
> On 12 April 2018 at 13:11, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
> > I get the following for DISTRO.
> >
> > DISTRO            = "yogurt"
> > DISTRO_VERSION    = "BSP-Yocto-RK3288-PD17.1.1"
> >
> > Can't find any reference to yogurt so I assume this is something the
> > supplier of our SOM's has done. Looking on their Wiki it seems to be
> based
> > on 2.1.2 (Krogoth)
> >
> >
> > Thanks for the help. :)
> >
> > On 12 April 2018 at 11:21, Alexander Kanavin
> > <alexander.kanavin@linux.intel.com> wrote:
> >>
> >> On 04/12/2018 12:44 PM, Richard Collins wrote:
> >>>
> >>> I've inherited a Yocto project that I know to be an old version. So one
> >>> of my tasks is to update to the latest version. Before I do this I
> would
> >>> like to know what version I have. The only information I can find is
> the
> >>> bitbake version, BB_VERSION        = "1.32.0".
> >>
> >>
> >> When you run bitbake, it should also print the values of DISTRO and
> >> DISTRO_VERSION. Those should give a clue where you are at.
> >>
> >> Alex
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b2de6c6a5200569a6405d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Cannot LAYERSERIES_CORENAMES added in rocko be used for th=
at?<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On T=
hu, Apr 12, 2018 at 2:47 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">I think the message here=
 is that we need to embed the oe-core version<br>
in the metadata somewhere...<br>
<br>
On 12 April 2018 at 13:11, Richard Collins<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:richard.colli=
ns@guidedknowledge.com">richard.collins@<wbr>guidedknowledge.com</a>&gt; wr=
ote:<br>
&gt; I get the following for DISTRO.<br>
&gt;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;yogurt&quot;=
<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;BSP-Yocto-RK3288-PD17.1.1&quot;<=
br>
&gt;<br>
&gt; Can&#39;t find any reference to yogurt so I assume this is something t=
he<br>
&gt; supplier of our SOM&#39;s has done. Looking on their Wiki it seems to =
be based<br>
&gt; on 2.1.2 (Krogoth)<br>
&gt;<br>
&gt;<br>
&gt; Thanks for the help. :)<br>
&gt;<br>
&gt; On 12 April 2018 at 11:21, Alexander Kanavin<br>
&gt; &lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com">alexander.kan=
avin@linux.<wbr>intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 04/12/2018 12:44 PM, Richard Collins wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;ve inherited a Yocto project that I know to be an old ve=
rsion. So one<br>
&gt;&gt;&gt; of my tasks is to update to the latest version. Before I do th=
is I would<br>
&gt;&gt;&gt; like to know what version I have. The only information I can f=
ind is the<br>
&gt;&gt;&gt; bitbake version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &qu=
ot;1.32.0&quot;.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; When you run bitbake, it should also print the values of DISTRO an=
d<br>
&gt;&gt; DISTRO_VERSION. Those should give a clue where you are at.<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114b2de6c6a5200569a6405d--
