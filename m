Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95834E00C11; Wed,  4 Sep 2019 05:51:39 -0700 (PDT)
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
	*      [209.85.217.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E53E00BB5
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 05:51:38 -0700 (PDT)
Received: by mail-vs1-f66.google.com with SMTP id j25so13626415vsq.12
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 05:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xRG8dD3NDhfCo5ZiQ95yN+W0Z3g43qVhJKnzxZc64nU=;
	b=aiJBToSuHKoEEmx65aeUioAe3hRUiQDO9WIF7zu+zv/rndShCd/yp5pfVpYy372995
	jY+dTF9ym1rTjZ2TeMzXf8d5ORr2Ano9QB5GTINzfRmKAWn62T+cc3cgWJx+NnzlEBzE
	HPlyOMcghpmSknjvMIbSVxNlKVs6FR71CKK5H/It57vVJPLclvvxwHHwVjG5F8a0F8jt
	dJD10zNhotYct38FRMQgRks2e8qa1sQzIuAIQVXac7711p4AbvJcM7ufAWw/SEFQBHXz
	v/YNtI7XNp74/ClV/Lx09St9vQfOdvj6VW65FhwZNVqSxvuPJWKrgrEKqQPwQ6AHglFw
	gY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xRG8dD3NDhfCo5ZiQ95yN+W0Z3g43qVhJKnzxZc64nU=;
	b=JUdiLt6ZevjrsGiTy4IZt6tFVnvxcMuZMFO9CLTitjTz21UYCu873dclEWg0iRBc7b
	THl522W8eN5hCF+SnHdrFeupl6lb+c4DVr9MOihREtPz9FJBdb90HVq0m2O/ikZSI0m6
	l2yTyRpAhZFi27aj/LuB6C6cKPn54GPxa42LMaxhOg5ZkPBKN0hFSaDeNM72Vuv8mAf7
	GT1lpHdgJI9NP7my5CYrPT2IL0b3a+QF3AE47ugUF9er3+f2nkyK0d7S+2Wqw+LzmvUg
	ljl1YrBC0ltNJRY9PpH/EfNRNn1ydVwihvRTJRLH/a+9/fgjLiveBxqaKLb8MzdGTGap
	OOGA==
X-Gm-Message-State: APjAAAXPqbrVR51Nx9AvIuJXIpFwKTWUPMX7OA3lc96ACDrNL1qkc0qd
	W9LHdUMdt340vWf663Iq0sMVv14/Cb1ujsT0R/c=
X-Google-Smtp-Source: APXvYqzXpXORJLKs0V/ShUTruLgsw//XW7Uq49NxDMTLrq2GZxP/XJ5Z5ZVoIaaFykBx528q87qcem6a7Oo0abNuSOg=
X-Received: by 2002:a05:6102:1cb:: with SMTP id
	s11mr10140542vsq.25.1567601497579; 
	Wed, 04 Sep 2019 05:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <FccdzQfHvG4ZvcaMVpyN8tzbQBVkjLqPwkEVc0rvnUUOU4LL_9R5rzs6Ap_SXPo8N4orBveg5fX-ploC3XwWtvadKbUVOKMnTY6xshfOEos=@protonmail.ch>
In-Reply-To: <FccdzQfHvG4ZvcaMVpyN8tzbQBVkjLqPwkEVc0rvnUUOU4LL_9R5rzs6Ap_SXPo8N4orBveg5fX-ploC3XwWtvadKbUVOKMnTY6xshfOEos=@protonmail.ch>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 4 Sep 2019 14:51:26 +0200
Message-ID: <CANNYZj9Wz=jC7KQQQJMTAEeksKLDncxA1VdGfwPjp+2bXbpuaQ@mail.gmail.com>
To: vygu <vygu@protonmail.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: perf.bb on poky master branch
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
X-List-Received-Date: Wed, 04 Sep 2019 12:51:39 -0000
Content-Type: multipart/alternative; boundary="00000000000069a50d0591b9aad9"

--00000000000069a50d0591b9aad9
Content-Type: text/plain; charset="UTF-8"

On Wed, 4 Sep 2019 at 10:53, vygu <vygu@protonmail.ch> wrote:

> Just to signal there are several mistakes with the recipe "perf.bb" from
> poky on master (currently: e2bde009b325b40641407ecf50f54ed8c41726d6)
>
> - If "Python 3 is not yet supported" by "perf" sources, it causes an issue
> during the do_compile task
> - The last "install" in the do_configure_prepend task about
> "tools/include/linux/bits.h" does not work with a linux kernel 4.5 to 4.18
> because this file does not exist
> [- The usage of _prepend or _append in this bb file does not help to
> create a bbappend]
>

I think this is expected: perf from oe-core is not guaranteed to work with
kernels other than those provided by oe-core. If this cannot be solved by
patching the original recipe (and sending patches to oe-core list), then
you can probably just make a custom perf recipe instead that works for you.

Alex

--00000000000069a50d0591b9aad9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, 4 Sep 2019 at 10:53, vygu &lt;<a href=3D"mailto:vygu@protonm=
ail.ch">vygu@protonmail.ch</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div>Just to signal there are several mistakes wi=
th the recipe &quot;<a href=3D"http://perf.bb" target=3D"_blank">perf.bb</a=
>&quot; from poky on master (currently: e2bde009b325b40641407ecf50f54ed8c41=
726d6)<br><br>- If &quot;Python 3 is not yet supported&quot; by &quot;perf&=
quot; sources, it causes an issue during the do_compile task<br>- The last =
&quot;install&quot; in the do_configure_prepend task about &quot;tools/incl=
ude/linux/bits.h&quot; does not work with a linux kernel 4.5 to 4.18 becaus=
e this file does not exist</div><div>[- The usage of _prepend or _append in=
 this bb file does not help to create a bbappend]<br></div></blockquote><di=
v><br></div><div>I think this is expected: perf from oe-core is not guarant=
eed to work with kernels other than those provided by oe-core. If this cann=
ot be solved by patching the original recipe (and sending patches to oe-cor=
e list), then you can probably just make a custom perf recipe instead that =
works for you.</div><div><br></div><div>Alex<br></div></div></div>

--00000000000069a50d0591b9aad9--
