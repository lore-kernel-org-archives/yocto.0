Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 968DAE00990; Sun, 19 Apr 2015 11:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FF8E0091D
	for <yocto@yoctoproject.org>; Sun, 19 Apr 2015 11:03:41 -0700 (PDT)
Received: by widdi4 with SMTP id di4so74252083wid.0
	for <yocto@yoctoproject.org>; Sun, 19 Apr 2015 11:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=EMLFh6BqMJLEXAnP9Hx4JFeMjyb3fANtqVcr9xMYnbY=;
	b=YQICBVVpFwH6vmyx1pii4C3tyrEhsi4u2LsSUMnQs7qRRK6R0W53s0AqniVIMC8uva
	TUaenNmgJoGT8CsImnxgiteok3DVfuojzei5DQ+nzTmu8+GztIZDRAuhSG8kMICGr8+y
	KmGUnddbzqAZEmLpnc+9S4YOJUcl914aZzUCzJ0aekw4MCP+w028VpimZeVt8Mt0yNum
	OudAHNcRjC0Cr8AKJJNhMiN45cyDZzkV/uCG+HBC078jGjtYJIzctI26RX3xr7wtAQkI
	oAXgacR+53GBd3yV+9ZBMl/c/+cgpXQ5Urpw+n3KTGm8wuqDCtVGgFOlsXNBm+5jKXmL
	m+Yg==
X-Received: by 10.180.85.9 with SMTP id d9mr19049660wiz.28.1429466620881; Sun,
	19 Apr 2015 11:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <CACgAsMcywJ-vWKqC5Sfm7r4mxdboqtKW-NqD32=24LkA3OuG1Q@mail.gmail.com>
In-Reply-To: <CACgAsMcywJ-vWKqC5Sfm7r4mxdboqtKW-NqD32=24LkA3OuG1Q@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 19 Apr 2015 18:03:40 +0000
Message-ID: <CA+chaQeJ64oS8baJLS-L7fTPFBAWNBUCYSFU2OAD3_8mrExm3g@mail.gmail.com>
To: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [daisy][powertop] powertop_2.5.bb, do_configure) failed with exit code '1'
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
X-List-Received-Date: Sun, 19 Apr 2015 18:03:45 -0000
Content-Type: multipart/alternative; boundary=f46d04426abc27ef08051417a276

--f46d04426abc27ef08051417a276
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

See

http://lists.openembedded.org/pipermail/openembedded-core/2015-April/103829=
.html

The same fix is now needed in daisy branch.

On Fri, Apr 17, 2015, 21:52 Kevyn-Alexandre Par=C3=A9 <kapare@rogue-researc=
h.com>
wrote:

> Hi,
>
> This was not a problem on 1.6.2 then udpated and I'm unable to
> configure powertop. I tried to erase sstate & tmp folder without
> success.
>
> The fix was to comment:
> #LDFLAGS +=3D "${EXTRA_LDFLAGS}"
>
> in
> poky/meta/recipes-kernel/powertop/powertop_2.5.bb
>
>
> The logs show that the ${EXTRA_LDFLAGS} gets added during the configure?
>
> Any thoughts on why?
>
> I looks at commits from 1.6.2 to 1.6.3 and I don't see why this could
> happen.
>
> Could it be a update on Ubuntu 14.04?
>
> thx,
>
> -KA
>
> Here's the complete logs:
>
> log.do_configure:
> https://gist.github.com/kapare/971387ca3812c019a65f
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d04426abc27ef08051417a276
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">See</p>
<p dir=3D"ltr"><a href=3D"http://lists.openembedded.org/pipermail/openembed=
ded-core/2015-April/103829.html">http://lists.openembedded.org/pipermail/op=
enembedded-core/2015-April/103829.html</a></p>
<p dir=3D"ltr">The same fix is now needed in daisy branch.</p>
<br><div class=3D"gmail_quote">On Fri, Apr 17, 2015, 21:52=C2=A0Kevyn-Alexa=
ndre Par=C3=A9 &lt;<a href=3D"mailto:kapare@rogue-research.com">kapare@rogu=
e-research.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
This was not a problem on 1.6.2 then udpated and I&#39;m unable to<br>
configure powertop. I tried to erase sstate &amp; tmp folder without<br>
success.<br>
<br>
The fix was to comment:<br>
#LDFLAGS +=3D &quot;${EXTRA_LDFLAGS}&quot;<br>
<br>
in<br>
poky/meta/recipes-kernel/powertop/<a href=3D"http://powertop_2.5.bb" target=
=3D"_blank">powertop_2.5.bb</a><br>
<br>
<br>
The logs show that the ${EXTRA_LDFLAGS} gets added during the configure?<br=
>
<br>
Any thoughts on why?<br>
<br>
I looks at commits from 1.6.2 to 1.6.3 and I don&#39;t see why this could h=
appen.<br>
<br>
Could it be a update on Ubuntu 14.04?<br>
<br>
thx,<br>
<br>
-KA<br>
<br>
Here&#39;s the complete logs:<br>
<br>
log.do_configure:<br>
<a href=3D"https://gist.github.com/kapare/971387ca3812c019a65f" target=3D"_=
blank">https://gist.github.com/kapare/971387ca3812c019a65f</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--f46d04426abc27ef08051417a276--
