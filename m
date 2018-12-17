Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16326E00C7D; Sun, 16 Dec 2018 23:52:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B61CE009B2
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2018 23:52:08 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id i145so17495924ita.4
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2018 23:52:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=V7iwdCRdQgXQCep5R/Gc4bb6IN2hNWiArOyXo32Wpic=;
	b=Fy7DwFaaluHzynVOSU31jGR12y2MGYCVHp20VUMcD07Luqc1zAwptat0SeiOF18NZh
	2fDzR1tyxYMP+kbvedZXf35dZQzuxFCFa7rHo/LG2+1X3S0G92Dkog65E9lDviQ7fuYO
	uSwGKz5YxawJqaACIWtM6QemTB8r0Zj4R6iXt4hicvTd/xhncToOKFlkCle9PElhxssf
	TxFe/Hwa6n+UEyiUJtuK8Rdgy0rlJ9CwJdcegljaT2pZScGQun8HasCIwTH1M5FHc3HM
	TZfCK7C/iYEtCTWVeufF8F+UpNMHjr5o9rpD/rIA1ekq9U3u92b9xr0giAyKi4DOGkkJ
	RCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=V7iwdCRdQgXQCep5R/Gc4bb6IN2hNWiArOyXo32Wpic=;
	b=ilwmG/UjIRmM9d3qIyPsYp/ju4ihL3UpjqhW/qVvXfAJJ9fGcP5D6uoEg2KKj3Zuel
	uxZFEWagcVfYW4dFm+bivPBvKEF3OiD/mjdURs7ZbSqvxX7O0hQbPeks4h5LcxXciMh1
	X4PHSBjPbQkddIvl8WKSlM7H3bealsg3uOpoaPyqBc/r+cKSez8lem946eqHsVt+6vof
	Su1yT8CQXKiPZ3dLX9gc19+H+f5cxzNsdvTwjWWqQl0GwvqysqCto9qKvxuWgsIox08o
	RNaOG8YOVJZo1UYJ6+JA8qaq/RvSrncyr3iJOd85IvGEql8tW8RWNTj8Lr4WXF18AWOw
	mOZA==
X-Gm-Message-State: AA+aEWZvkk1vmLQZ3pfN6aNExaYPblzPmO/uUDLX/y3gvwtzha8mp4NO
	+x158LW4kRLsoRme8PTQpWcVP3ebB+MEbWkWIKN9r4dP
X-Google-Smtp-Source: AFSGD/W5d8Qht+JJ6j/q7U0GWFGODFZ7RHeSeQOpgDXLIAP59Jnfh0QQe2/PXlmx4eLXe7pY+dxfZJaQGZQ9NAS1q0A=
X-Received: by 2002:a24:6890:: with SMTP id v138mr11739951itb.53.1545033127629;
	Sun, 16 Dec 2018 23:52:07 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4injAXT0+YgeXAYmfU50=_LL9BaVBm9e5-E1qyouAMENA@mail.gmail.com>
	<CAMKF1sqm+uPC6jRkGP9RNtxb5OGP+JDytUC-1M8Hf9inSd=KeQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqm+uPC6jRkGP9RNtxb5OGP+JDytUC-1M8Hf9inSd=KeQ@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Mon, 17 Dec 2018 08:51:56 +0100
Message-ID: <CAFq4t4gt4aw3qUy_6TvXkRkF+Vacrnena12WeJQ=EgV_JqD_uw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Tue, 18 Dec 2018 08:06:28 -0800
Subject: Re: core-image-* (minimal) networking
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
X-List-Received-Date: Mon, 17 Dec 2018 07:52:09 -0000
Content-Type: multipart/alternative; boundary="000000000000bd19aa057d330efb"

--000000000000bd19aa057d330efb
Content-Type: text/plain; charset="UTF-8"

> ifconfig eth0 up

> udhcpc -ieth0

Now is up ... and identified and now trying to figure out how to make it
permanent since after reboot I need to do over again.




On Mon, Dec 17, 2018 at 5:30 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Dec 14, 2018 at 8:23 AM Peter Balazovic
> <balazovic.peter@gmail.com> wrote:
> >
> > I've built bitbake core-image-minimal and it runs but unfortunately I
> have no connectivity (networking) available.
> >
> > > ifconfig
> > lo        Link encap:Local Loopback
> >           inet addr:127.0.0.1  Mask:255.0.0.0
> >           inet6 addr: ::1/128 Scope:Host
> >           UP LOOPBACK RUNNING  MTU:65536  Metric:1
> >           RX packets:2720 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:2720 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:1
> >           RX bytes:206720 (201.8 KiB)  TX bytes:206720 (201.8 KiB)
> >
> > What's need to be included within local.conf to enable networking?
>
> its possible that some modules are missing. Try using core-image-base
> and see if that is any better. then we can see what the difference is
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000bd19aa057d330efb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"color:rgb(33,33,33);font-size:15px"><span styl=
e=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inhe=
rit;font-weight:inherit;font-stretch:inherit;font-size:10pt;line-height:inh=
erit;font-family:Arial,sans-serif,serif,EmojiFont;vertical-align:baseline;c=
olor:rgb(36,39,41)">&gt; ifconfig eth0 up=C2=A0</span><span style=3D"margin=
:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-we=
ight:inherit;font-stretch:inherit;font-size:12pt;line-height:inherit;font-f=
amily:inherit;vertical-align:baseline;color:black"></span></p><p style=3D"c=
olor:rgb(33,33,33);font-size:15px"><span style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:10pt;line-height:inherit;font-family:Arial,sans-se=
rif,serif,EmojiFont;vertical-align:baseline;color:rgb(36,39,41)">&gt;=C2=A0=
udhcpc -ieth0</span></p><p style=3D"color:rgb(33,33,33);font-size:15px"><sp=
an style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-varia=
nt:inherit;font-weight:inherit;font-stretch:inherit;font-size:10pt;line-hei=
ght:inherit;font-family:Arial,sans-serif,serif,EmojiFont;vertical-align:bas=
eline;color:rgb(36,39,41)">Now is up ... and identified and now trying to f=
igure out how to make it permanent since after reboot I need to do over aga=
in.</span></p><p style=3D"color:rgb(33,33,33);font-size:15px"><span style=
=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inher=
it;font-weight:inherit;font-stretch:inherit;font-size:10pt;line-height:inhe=
rit;font-family:Arial,sans-serif,serif,EmojiFont;vertical-align:baseline;co=
lor:rgb(36,39,41)"><br></span></p><p style=3D"color:rgb(33,33,33);font-size=
:15px"><span style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:10p=
t;line-height:inherit;font-family:Arial,sans-serif,serif,EmojiFont;vertical=
-align:baseline;color:rgb(36,39,41)"><br></span></p></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Mon, Dec 17, 2018 at 5:30 AM Khem Raj &lt=
;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Dec 14, 20=
18 at 8:23 AM Peter Balazovic<br>
&lt;<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovi=
c.peter@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;ve built bitbake core-image-minimal and it runs but unfortunatel=
y I have no connectivity (networking) available.<br>
&gt;<br>
&gt; &gt; ifconfig<br>
&gt; lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 Link encap:Local Loopback<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:127.0.0.1=C2=A0 Mask=
:255.0.0.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: ::1/128 Scope:Host=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP LOOPBACK RUNNING=C2=A0 MTU:=
65536=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:2720 errors:0 dropp=
ed:0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:2720 errors:0 dropp=
ed:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:206720 (201.8 KiB)=C2=
=A0 TX bytes:206720 (201.8 KiB)<br>
&gt;<br>
&gt; What&#39;s need to be included within local.conf to enable networking?=
<br>
<br>
its possible that some modules are missing. Try using core-image-base<br>
and see if that is any better. then we can see what the difference is<br>
<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000bd19aa057d330efb--
