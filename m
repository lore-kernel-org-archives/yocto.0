Return-Path: <steve@planet.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7373E0094C; Thu,  2 Mar 2017 16:41:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A696E00724
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 16:41:06 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id y193so41023714lfd.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 16:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=planet.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xXNfyoi1tkvea+7bWURUAZvN0XAmtJcim/0e9bqqQi8=;
	b=IViydQUBFa0AqUMjg754mP5lYBGLFfN4oGQdzEkY33gXTVb6VLmVyBQ1m1PTY9cmv9
	su/TyXqDGiXMoG7Pl5Xpy6X0NespTLVgUzL6L5qcaClcrLyZTO9U9TCtG7FTbUZc6Evh
	TXRhNNsarnyU/JWvDGW2hVBmnF8PsSZc5s4PQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xXNfyoi1tkvea+7bWURUAZvN0XAmtJcim/0e9bqqQi8=;
	b=AMssxNwK5ctifi1FfKx0Cd8mPoRsMp10BqTTrRMFvcR+fujiYUOyEDs1Jg49FUh04L
	hcVOfSBXa9F4YXlTmYIVfghm28QOmx8G0qVRDWLxu1v20hYkhKK+24AUBZ6993cWA48R
	IQOPLmhDM0gMaKEqKhCopq7+rq/X4szZKN5wEBe2Z/rVvwXt3dEJlcR5wkbffX7ZlP4W
	IsIxG8SvT5BJPnqwW5xlQ46TwPiBwYj+jmJBygxd3a5tJcjZ9kpSSaAOtOgNU/K/85Do
	H9eLt2oXgC/VnlGwaW4XqAHcgdc9k8QU7mLh5UJsaxjS9bHXxbJqqfAroVodIFmCHlwL
	JBuw==
X-Gm-Message-State: AMke39lkdBIaoJlEw7ZJvGfIB1ydVmLgoYY5S4eLp71A79MJl8Ke0VZgLXUu3Xp9ociPcuvwQRdBKzqY0m/j93t/
X-Received: by 10.46.0.80 with SMTP id 77mr18624lja.1.1488501665237; Thu, 02
	Mar 2017 16:41:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.158.79 with HTTP; Thu, 2 Mar 2017 16:41:04 -0800 (PST)
In-Reply-To: <CAC+thW31ggogO8jNoN2p3r11pqnk-wJxDqLeVD1Pb4hWt5_cBw@mail.gmail.com>
References: <CAC+thW31ggogO8jNoN2p3r11pqnk-wJxDqLeVD1Pb4hWt5_cBw@mail.gmail.com>
From: Steve Burt <steve@planet.com>
Date: Thu, 2 Mar 2017 16:41:04 -0800
Message-ID: <CAK7GjbjSrwD7knTjL3fROZkZiaB2C3wdCKUnNKKR-iUuwrQdkg@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Dev Day at ELC 2017
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
X-List-Received-Date: Fri, 03 Mar 2017 00:41:08 -0000
Content-Type: multipart/alternative; boundary=001a1142c67e01226f0549c8cdd7

--001a1142c67e01226f0549c8cdd7
Content-Type: text/plain; charset=UTF-8

The slides are on the wiki:
https://wiki.yoctoproject.org/wiki/DevDay_US_2017

Hope this helps.

On Thu, Mar 2, 2017 at 2:22 AM, Andrea Galbusera <gizero@gmail.com> wrote:

> Hi,
>
> I was expecting to find some material from the Dev Day at ELC at [1] as
> usual. Was it published somewhere else than the usual page?
>
> [1] https://www.yoctoproject.org/tools-resources/presentations
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1142c67e01226f0549c8cdd7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The slides are on the wiki:<div><a href=3D"https://wiki.yo=
ctoproject.org/wiki/DevDay_US_2017">https://wiki.yoctoproject.org/wiki/DevD=
ay_US_2017</a><br></div><div><br></div><div>Hope this helps.</div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Mar 2, 2017 =
at 2:22 AM, Andrea Galbusera <span dir=3D"ltr">&lt;<a href=3D"mailto:gizero=
@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I was e=
xpecting to find some material from the Dev Day at ELC at [1] as usual. Was=
 it published somewhere else than the usual page?</div><div><br></div><div>=
[1]=C2=A0<a href=3D"https://www.yoctoproject.org/tools-resources/presentati=
ons" target=3D"_blank">https://www.yoctoproject.<wbr>org/tools-resources/<w=
br>presentations</a></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1142c67e01226f0549c8cdd7--
