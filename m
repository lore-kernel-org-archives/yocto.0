Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36287E00E57; Fri,  1 Nov 2019 06:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E23E00E38
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 06:04:20 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id c26so12814157qtj.10
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 06:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2zws7rCsaGmL90RgljJHGx6epgxzyMHjnMcUvEMLqbg=;
	b=oiio0MvjKA6EvhH0BhP8hxPgaXF5HT7IVKXgLgrgECsY29H+RsHUoTTKXjNZPRIxXZ
	uou5n9yVcuEJxFM1Fx8VBDetS+S3kkEpf3wCVsuWpjk1vDIMt2h7eFkTmPn42BNn2VyY
	sg3bGklThgJI20wiCwaQ2NoGmNeDdsrRQgZRRezKdQ3TbwhtyzrybQ8aKjYv+de45FzB
	1Rs1SmXhFpXYfIfHaqR1qIFhEf+lNQGCRkm83pf5BQBdZv1e5BVA0flC+DslewdYAs1W
	4j7O8L3X5amDhbAvG6tN5ns5P4pyPqzhi8nOwlqfS3iTqo0XKC/QQPWskP+HPNMPO7Na
	tqfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2zws7rCsaGmL90RgljJHGx6epgxzyMHjnMcUvEMLqbg=;
	b=QUCHrg6evTHhE1fkz6dAABcf/aKowiFn6IB9Z0WP7AbO18moI86J7zqCCqz5w3QDCR
	beSZxvR+Lkvji51+EnTc378+gHkEG13mFxiY4bl9XWvdkoes4nKCFYzT51Ef32smQU5l
	cJo/tKSLM8rOB6JquJLKiskox/5v88S3NOa8PDK/qh2Sophlj+1xPE3H/khvckLK3TkF
	wPTzy1Xgh9kZqknbDZBqmvvC5BI6+Z1tBRy8bsErVEl9YnkVPlPYUNF4hmdLwW/TqoEd
	F3u26MUmRhTjzQneAbJIxUJh8+3R50LbfTyqSpDE7J1Ofjp9Gl80GdgQzDAn3w7EKWKB
	QI6Q==
X-Gm-Message-State: APjAAAVoFv5yrPDWR4vfTch+6LVb4Pxdubys8FVJ3dsYMKeN57UzWjHZ
	dT2z7BTkwOGgYdWAiBkRzYuYQ45wx3wMAQwrNNjpk16e
X-Google-Smtp-Source: APXvYqzMZLfwgYHrRLXjM6VsfM9Q1us0Xoi8VujZ2hlDmccykF7lZdssPHKecAAmoZ2Eue2CynPN9Xr+JjO/XrH/KLk=
X-Received: by 2002:ad4:5349:: with SMTP id v9mr8647960qvs.55.1572613459177;
	Fri, 01 Nov 2019 06:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <02e3bc7898c8e67ff58c0a2c6816d7cb2b6fb0ef.camel@iki.fi>
In-Reply-To: <02e3bc7898c8e67ff58c0a2c6816d7cb2b6fb0ef.camel@iki.fi>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Nov 2019 06:04:08 -0700
Message-ID: <CAMKF1srLROrFu_vVKTK6Yi18MxhWJ2DUQgF7V1Tr=mkD9HvdxA@mail.gmail.com>
To: Tanu Kaskinen <tanuk@iki.fi>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt5] How to contribute patches for qtwebengine in meta-qt5?
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
X-List-Received-Date: Fri, 01 Nov 2019 13:04:56 -0000
Content-Type: multipart/alternative; boundary="0000000000009a76fa0596489ac5"

--0000000000009a76fa0596489ac5
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 1, 2019 at 3:02 AM Tanu Kaskinen <tanuk@iki.fi> wrote:

> Hi all!
>
> The meta-qt5 readme says that contributions should be made by forking
> the meta-qt5 repository on GitHub, but when I look at the qtwebengine
> recipe, it looks like patches are pulled from
> https://github.com/meta-qt5/qtwebengine-chromium, and that repository
> looks like the patches are kept in a particular order so adding a patch
> at the top is perhaps not what I should do.
>


Like you would do for any other layer is fine
Better if you can maintain the patch ordering

>
> It's not clear to me how I should submit a patch in this case. The
> patch in question would be a simple backport of this upstream commit:
>
> https://codereview.qt-project.org/gitweb?p=qt/qtwebengine-chromium.git;a=commitdiff;h=b84e8682b312fb16b16ffb9591415067ceae69f8
>
> It's needed for not breaking qtwebengine when upgrading PulseAudio to
> 13.0.
>
> --
> Tanu
>
> https://www.patreon.com/tanuk
> https://liberapay.com/tanuk
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000009a76fa0596489ac5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 1, 2019 at 3:02 AM Tanu Kaskinen &lt;<a href=3D=
"mailto:tanuk@iki.fi">tanuk@iki.fi</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">Hi all!<br>
<br>
The meta-qt5 readme says that contributions should be made by forking<br>
the meta-qt5 repository on GitHub, but when I look at the qtwebengine<br>
recipe, it looks like patches are pulled from<br>
<a href=3D"https://github.com/meta-qt5/qtwebengine-chromium" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/meta-qt5/qtwebengine-chromium</a>=
, and that repository<br>
looks like the patches are kept in a particular order so adding a patch<br>
at the top is perhaps not what I should do.<br>
=C2=A0</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Like you w=
ould do for any other layer is fine</div><div dir=3D"auto">Better if you ca=
n maintain the patch ordering=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br=
>
It&#39;s not clear to me how I should submit a patch in this case. The<br>
patch in question would be a simple backport of this upstream commit:<br>
<a href=3D"https://codereview.qt-project.org/gitweb?p=3Dqt/qtwebengine-chro=
mium.git;a=3Dcommitdiff;h=3Db84e8682b312fb16b16ffb9591415067ceae69f8" rel=
=3D"noreferrer" target=3D"_blank">https://codereview.qt-project.org/gitweb?=
p=3Dqt/qtwebengine-chromium.git;a=3Dcommitdiff;h=3Db84e8682b312fb16b16ffb95=
91415067ceae69f8</a><br>
<br>
It&#39;s needed for not breaking qtwebengine when upgrading PulseAudio to<b=
r>
13.0.<br>
<br>
-- <br>
Tanu<br>
<br>
<a href=3D"https://www.patreon.com/tanuk" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.patreon.com/tanuk</a><br>
<a href=3D"https://liberapay.com/tanuk" rel=3D"noreferrer" target=3D"_blank=
">https://liberapay.com/tanuk</a><br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000009a76fa0596489ac5--
