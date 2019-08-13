Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30500E00D98; Tue, 13 Aug 2019 03:59:41 -0700 (PDT)
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
	*      [209.85.222.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DB27E00D59
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 03:59:40 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id g13so4624705uap.5
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 03:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7GhUZtMYi9ozy0uhMr5M1usX1RjsWQgdRHVxm7NpQrU=;
	b=uFQq5RH+rE6kf/1T6jrc7s8ZCdbKxq+q23upoj5eL7t/M8z4zm9xKmlhUmHAj7hI9u
	NkYsCbaZ0iRjtXKUPxGJAYPrUPVVDaDztE9olNo0cE4iPVXuHSurPBfu2oIVd0XqO3YW
	KSj6lL/p2AkwzB1zyvB2bOa7bMc7b7K1L/QTz6GVlKbiYj/QoOJXUULGaJL2AgjpQDDG
	uOMHhg287kJ16t8uw/6K3dmCxOxSIkwLn82uqBminme9UftRAl6POGqkDm2Vgm1oP6iU
	V3w00SshQ1PgXyOhQ0ONqll2v4oRPMO/t1aeWPn2csE2nqEqgnpP4OzFvcGRMsruznm6
	pLXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7GhUZtMYi9ozy0uhMr5M1usX1RjsWQgdRHVxm7NpQrU=;
	b=jxOFm5qwmtwbfcOoMSDv0/NJMdiLy/Hhf2CzLWySwzdPxbqHOt67aCmmUhiCpr7e5B
	EM1FjfNCQAU4XRNzjpOB0RjdkE6p/lh87DMxZ7/y2FNDQLVmh+tvwIilHHtyzyG5loas
	W+2lMA9JN3OhwQTnnH9U/EZ23X91q5mbUjzEK2nePyH/NRYOCM4r6DZgcwOpmrVtVpOy
	FVVgYRum7UGm9zTigObFoyz8ITbNzqjHogXSMrGUyn5DYKA1aKZx7vgxQ30HcJ7rkwoE
	yEMiEL8CDpYFFM2R0F00yuIXNcBLhuIq5A5zhWBUvt5xzAFVvhLA7s4lz3NGhxGTzMJT
	t0xA==
X-Gm-Message-State: APjAAAUCm7RsLGqbdWgM6+qQOMYpW+gIg9fEOxOg9UaLxE668mSFEYPJ
	mKKgmmbjZBlhljvfcAtqcT471Zg2b7T3xJJZOMzCFfOo
X-Google-Smtp-Source: APXvYqxVh4tsIjY21Cm24nnbWnDs0XIF519w30RIeqLDVU+nnnK9MkzozAeCVHKRhKoygEu4ct2m8MwD8g7XkZYxUys=
X-Received: by 2002:ab0:70b1:: with SMTP id q17mr15675548ual.100.1565693979717;
	Tue, 13 Aug 2019 03:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <6332957486174883a87679522aaf246f@gomspace.com>
	<CANNYZj9q5pOCo3VFkYo_Z1iZemE1UfETdoUAPa1UycsL=FK7Rg@mail.gmail.com>
	<77bb3bb243484177967b2710ec9e172b@gomspace.com>
In-Reply-To: <77bb3bb243484177967b2710ec9e172b@gomspace.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 13 Aug 2019 12:59:28 +0200
Message-ID: <CANNYZj_VcV47ZqY3XHDdtqAcQEZu4LTbCnDhVy7vRUfFfLO5yw@mail.gmail.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: State of Meson build system through eSDK
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
X-List-Received-Date: Tue, 13 Aug 2019 10:59:41 -0000
Content-Type: multipart/alternative; boundary="0000000000007cf76e058ffd89fa"

--0000000000007cf76e058ffd89fa
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Aug 2019 at 12:41, Martin Siegumfeldt <mns@gomspace.com> wrote:

> The link above is not about eSDK, it's about devtool which works perfectly
> fine in a non-SDK environment (e.g. plain yocto).
>
> Hmm, since it is a subsection beneath 'Using the Extensible SDK' I was
> expecting the list to describe supported build systems related to devtool
> in context of the eSDK?
>

This is maybe not communicated well, but devtool works the same in and out
of SDK environment. You can check what build systems it supports here:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/recipetool/create_buildsys.py#n874

It probably wouldn't be too much effort to add a meson handler there. In
any case, 'devtool add' is just a starting point, and does not promise to
produce a fully working recipe.

Alex

--0000000000007cf76e058ffd89fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 13 Aug 2019 at 12:41, Martin Sieg=
umfeldt &lt;<a href=3D"mailto:mns@gomspace.com">mns@gomspace.com</a>&gt; wr=
ote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">



<div bgcolor=3D"#FFFFFF">The link above is not about eSDK, it&#39;s about d=
evtool which works perfectly fine in a non-SDK environment (e.g. plain yoct=
o).<br>
<blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"gmail_quote">
</div>
</div>
</blockquote>
<p>Hmm, since it is a subsection beneath &#39;Using the Extensible SDK&#39;=
 I was expecting the list to describe supported build systems related to de=
vtool in context of the eSDK?<br></p></div></blockquote><div><br></div><div=
>This is maybe not communicated well, but devtool works the same in and out=
 of SDK environment. You can check what build systems it supports here:</di=
v><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scrip=
ts/lib/recipetool/create_buildsys.py#n874">http://git.yoctoproject.org/cgit=
/cgit.cgi/poky/tree/scripts/lib/recipetool/create_buildsys.py#n874</a></div=
><div><br></div><div>It probably wouldn&#39;t be too much effort to add a m=
eson handler there. In any case, &#39;devtool add&#39; is just a starting p=
oint, and does not promise to produce a fully working recipe.<br></div></di=
v><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex<br><=
/div></div>

--0000000000007cf76e058ffd89fa--
