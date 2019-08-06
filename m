Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC876E00D5F; Tue,  6 Aug 2019 03:29:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
	[209.85.221.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CA6E00CD5
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 03:29:20 -0700 (PDT)
Received: by mail-vk1-f172.google.com with SMTP id s16so17193845vke.7
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 03:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XGnecLXuPj0XJjouY9+gBC+JSc53CSeSWYKXXG/t0uA=;
	b=hhVFFBEj8M870rDV064soFwVXfjUW4b6VLDvAxgA5HqLbOtd1Q+mUVUBIfm0uA0RZj
	RXboa7TVh45W11/3mkYzS0Mp955bpRytDmO3GU2VHUTD467+ua1IUqmK9iq8Dff5B46S
	Kmh8p5NWwDme7/VzPQTq5PiFFYTopeQCRPgn5JdLMxG7q55qdTCKh2XYpCpdDgqRsp/L
	JiEjDhzp7GefMSKvxSjlFRm9scSVb4Uc8Lq+kAC5elEVm8G/qAHKWeaW2W4HUT/rNube
	qONHaVscb3wIOpdfSGYCxZyPOLgqU2v6BYo/xHrwxQ6PwN7D+WEVEqRR+MqPzP6gT6SM
	QeEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XGnecLXuPj0XJjouY9+gBC+JSc53CSeSWYKXXG/t0uA=;
	b=YF/jlTK47lg5xiwdncEBh3nrM97nwYbBZy+vxSvSUPckUMt+YB6lJeTD6f5SASE07G
	FescJBnBkIv2irdysC7WYROJtCgpbqFk7q6o76IiOZHbMWV8/BUgTdC2qrnpuC7HsFGf
	TT1nYiCU+XTg8hzpFqCG67MZfYmXwBHcByeitiCc4+yS22PHP81PvxyL+6OF2LDyzw7/
	Z9ePuZB/4o44QuFJpGUgsLKMRzWlm/VLe9P0JPoT21RWV4hpPTDNNaP+VVn2mVCkv6dX
	DY8mrVY+ClfyS24g/77F+g4aQyi2XdTkE7dI/737Xggo6+KWUzfkUmTkm6MipDiqhRQv
	S57A==
X-Gm-Message-State: APjAAAVoEZ5i3WVX4azCLPBA3q37SustE1vkXeq3Hy4iJFt1Xijx8FQ2
	UVzcIKhfffDZUoHyqHnLy1lGSHCgPT/XNLpfq50=
X-Google-Smtp-Source: APXvYqyIecLmJ9P1q1NZgLaSbFxwQvI527DPYWK+uT4RE+zOFoaD8dpn3zloEKORFpyAXL6QhG3Wd5oJ1UJi/gemSew=
X-Received: by 2002:a1f:1288:: with SMTP id 130mr854297vks.12.1565087359527;
	Tue, 06 Aug 2019 03:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
In-Reply-To: <CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Aug 2019 12:29:08 +0200
Message-ID: <CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Tue, 06 Aug 2019 10:29:20 -0000
Content-Type: multipart/alternative; boundary="0000000000001b70ef058f704cfe"

--0000000000001b70ef058f704cfe
Content-Type: text/plain; charset="UTF-8"

You don't; package_qa is reporting real issues with your packaging, so you
need to address them.

Alex

On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> According to the latest document:
>
> "Package QA checks are now performed during a new do_package_qa task
> rather than being part of the do_package task. This allows more
> parallel execution. This change is unlikely to be an issue except for
> highly customized recipes that disable packaging tasks themselves by
> marking them as noexec. For those packages, you will need to disable
> the do_package_qa task as well."
>
> How can I disable the do_package_qa task?
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
> > Hi,
> >
> > I was running my Yocto build fine until I had a minor change to move
> > libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so to
> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
> > issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
> > errors, please consider fixing them.
> >
> > Even I reverse the changes back the, it still complained the same error.
> >
> > I don't have do_package_qa in my bb file, where is it from? What is
> > that error about? How to fix it?
> >
> > Thank you.
> >
> > Kind regards,
> >
> > - jh
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000001b70ef058f704cfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You don&#39;t; package_qa is reporting real issues wi=
th your packaging, so you need to address them.</div><div><br></div><div>Al=
ex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Tue, 6 Aug 2019 at 10:40, JH &lt;<a href=3D"mailto:jupiter.h=
ce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
According to the latest document:<br>
<br>
&quot;Package QA checks are now performed during a new do_package_qa task<b=
r>
rather than being part of the do_package task. This allows more<br>
parallel execution. This change is unlikely to be an issue except for<br>
highly customized recipes that disable packaging tasks themselves by<br>
marking them as noexec. For those packages, you will need to disable<br>
the do_package_qa task as well.&quot;<br>
<br>
How can I disable the do_package_qa task?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
On 8/4/19, JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com" target=3D"_blank=
">jupiter.hce@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I was running my Yocto build fine until I had a minor change to move<b=
r>
&gt; libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so to=
<br>
&gt; a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA<br=
>
&gt; issue applibrary rdepends on app-dev [dev-deps], QA run found fatal<br=
>
&gt; errors, please consider fixing them.<br>
&gt;<br>
&gt; Even I reverse the changes back the, it still complained the same erro=
r.<br>
&gt;<br>
&gt; I don&#39;t have do_package_qa in my bb file, where is it from? What i=
s<br>
&gt; that error about? How to fix it?<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
&gt; Kind regards,<br>
&gt;<br>
&gt; - jh<br>
&gt;<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000001b70ef058f704cfe--
