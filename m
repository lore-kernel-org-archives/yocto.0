Return-Path: <slaterc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C64AE00B58; Mon, 26 Nov 2018 03:26:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (slaterc[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D24BE008C6
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:26:17 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id g27so16210181oth.6
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=psvaNAiYNxcjPaRvEqoNYXmzKjMb14bmva4bTwzkpow=;
	b=tXZByqLlehS0tRo388ixjuPegiTVDWjsGHA/wfl+g3vbgu07Y7IEaotN7INO/OxrW7
	iJnZmTL9DsTzjKJSTjR59jyiZhsFR0pzng8I9yJT1k4khSv+OljEWNGlJBk5iMB7upgN
	uf8yghk8JHHth0U6fsmI7g7yUJtMJec7NcqXuMcmqzq7hNwd9EqHXLrECbpZBUe6tc9i
	WFUDGJ3IqsZbWr7/aKBuEOnji5cNL7/dhtQNN9it8mtvFZxfOI+nAVoY3FgumvaorsBQ
	o1jD639fsCGxmflhj7XatI2p+WWrRnoLWbXeI1WYefp+utM0KD/0jOMw5xmvRo1VvrAE
	RzJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=psvaNAiYNxcjPaRvEqoNYXmzKjMb14bmva4bTwzkpow=;
	b=tKs4C7GM1R+wmJHFsITuSePl0cD193t/AR8L+JTK5yK+M3DfpxAMlKZmh8cdmOrsAs
	+uUFAoxPQY9omIxKdBuOve8myFO8WSsb3tlBCq9thG0YZfDAxeUMML6FkZyv8DMDWsWk
	XSsDPVAqMM6do0V9uzhhoGH8S9unrXUO0j0QEb1Xt6tVUpzJya+zpxFL4nfq+Qmy77n1
	W4pR5NO9hbPLr77JOJ28HiC/nSd5rQM/gVZj6JJw7/ZHaVAI7rLA5jSM2x7mkaMl+plu
	duTlLk3PbhpLLs5iCNc4rN1L5hkvbe7mL8UCvjFh4K8Ysl2yXQfQBoCW7otBpsiQbbbv
	LPqA==
X-Gm-Message-State: AA+aEWa/SxLBtaC5iGmwPTbu36vA9h+s0a590aiiTus7scwKNPQ1K9IT
	21DLwmTLKC8/PkACP9+JBaOUut3A57mxzbcI+aw=
X-Google-Smtp-Source: AFSGD/X2F90dz96QbE4DK83V4SOHbdJFIqrT1vlG77YtPWVI05tVBvzA6/HD9PmYd5UAJr6IzJUGxuy2UH9Pj8neNp0=
X-Received: by 2002:a9d:7201:: with SMTP id u1mr15763637otj.365.1543231577427; 
	Mon, 26 Nov 2018 03:26:17 -0800 (PST)
MIME-Version: 1.0
References: <CAH+z4xSGhYr_KdE1_k+9ro2W1qqFQcv+_XkBUdOpREQrEHLGuQ@mail.gmail.com>
	<CAJTo0LZd=u-Dks-0WG_syqsYZ9FiyLRUscQXutjdJrGPyqddKA@mail.gmail.com>
In-Reply-To: <CAJTo0LZd=u-Dks-0WG_syqsYZ9FiyLRUscQXutjdJrGPyqddKA@mail.gmail.com>
From: Conor Slater <slaterc@gmail.com>
Date: Mon, 26 Nov 2018 12:26:06 +0100
Message-ID: <CAH+z4xQKMVPSFrtKMB288+_-AVDAa+qVx3UGNnz09+ryHHP=+g@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: meta/recipes-devtools/python/python3_3.5.5.bb - no venv module
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
X-List-Received-Date: Mon, 26 Nov 2018 11:26:18 -0000
Content-Type: multipart/alternative; boundary="000000000000fa92ef057b8f99c0"

--000000000000fa92ef057b8f99c0
Content-Type: text/plain; charset="UTF-8"

Hello Ross,

Thanks for getting back to me.

I'm on sumo.

Here's what I got:

$ oe-pkgdata-util find-path */venv/*.py
python3-misc: /usr/lib/python3.5/venv/__main__.py
python3-misc: /usr/lib/python3.5/venv/__init__.py

I added python-misc to my image and the venv module is installed now.

Thanks again for your help.

Best Regards,

Conor.

On Mon, 26 Nov 2018 at 12:04, Burton, Ross <ross.burton@intel.com> wrote:

> On Mon, 26 Nov 2018 at 08:11, Conor Slater <slaterc@gmail.com> wrote:
> > After adding python3 to the install I appear to be missing the standard
> Python module venv. The module should be a standard part of Python 3.5.5.
> >
> > Has this been disabled? If so, how and where?
> >
> > How do I enable it so it is built?
>
> What release are you using?  There was a slight packaging problem so
> it only just got put in the 'proper' place.  You can use
> oe-pkgdata-util to find out what package it is in, so you can add it
> to your image.  For example for me:
>
> $ oe-pkgdata-util find-path */venv/*.py
> python3-venv: /usr/lib/python3.5/venv/__main__.py
> python3-venv: /usr/lib/python3.5/venv/__init__.py
>
> Ross
>

--000000000000fa92ef057b8f99c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Ross,<div><br></div><div>Thanks for=
 getting back to me.=C2=A0</div><div><br></div><div>I&#39;m on sumo.</div><=
div><br></div><div>Here&#39;s what I got:</div><div><div><br></div><div>$ o=
e-pkgdata-util find-path */venv/*.py</div><div>python3-misc: /usr/lib/pytho=
n3.5/venv/__main__.py</div><div>python3-misc: /usr/lib/python3.5/venv/__ini=
t__.py</div></div><div><br></div><div>I added python-misc to my image and t=
he venv module is installed now.</div><div><br></div><div>Thanks again for =
your help.</div><div><br></div><div>Best Regards,</div><div><br></div><div>=
Conor.</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On =
Mon, 26 Nov 2018 at 12:04, Burton, Ross &lt;<a href=3D"mailto:ross.burton@i=
ntel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Mon, 26 Nov 2018 at 08:11, Conor Slater &lt;<a href=3D"mai=
lto:slaterc@gmail.com" target=3D"_blank">slaterc@gmail.com</a>&gt; wrote:<b=
r>
&gt; After adding python3 to the install I appear to be missing the standar=
d Python module venv. The module should be a standard part of Python 3.5.5.=
<br>
&gt;<br>
&gt; Has this been disabled? If so, how and where?<br>
&gt;<br>
&gt; How do I enable it so it is built?<br>
<br>
What release are you using?=C2=A0 There was a slight packaging problem so<b=
r>
it only just got put in the &#39;proper&#39; place.=C2=A0 You can use<br>
oe-pkgdata-util to find out what package it is in, so you can add it<br>
to your image.=C2=A0 For example for me:<br>
<br>
$ oe-pkgdata-util find-path */venv/*.py<br>
python3-venv: /usr/lib/python3.5/venv/__main__.py<br>
python3-venv: /usr/lib/python3.5/venv/__init__.py<br>
<br>
Ross<br>
</blockquote></div>

--000000000000fa92ef057b8f99c0--
