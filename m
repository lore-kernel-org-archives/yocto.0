Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 621D4E009CB; Mon, 13 Nov 2017 08:34:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E6E6E00928
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 08:34:23 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id b189so9256058wmd.5
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 08:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z65WHCyFBAfMrWDKPYIS4kYrfWJTCIGoXGyYQ/7BjK8=;
	b=qNqC/n/VQ22WDVkv+Jy5rN/mhQ09ni/iWxTf9D3jYqJfxG+GXkh+3O8HYt5OAHByvI
	yYF/YIF6eq/xTnbqe/i16Wp1836wZzWdtXCU9l0zId2padTazTgkCPF7vLQ8XLLTRngh
	2gNIZ0DRaBuqde9rA1/kTJQHpzV7KS496r9xDSxMjgx04tZvjCWUQPzwrhgiXQbNyNAm
	YTth8kzAkBUcjpbae3XaJ8omujBa/AsELiOVjV4xfYktK7Jbqt0d5f+dv8pCR3HsjAWz
	tA7uGJxJTo7oL9Gv4Ts/R2PVNFQg6e7S1gz48qJbkl5i+h3IJfBz97wsYhBFGYGa6j/J
	aD3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z65WHCyFBAfMrWDKPYIS4kYrfWJTCIGoXGyYQ/7BjK8=;
	b=bIoMDLEmpqqXoXK8irkyrXiqG/zZ6tet9Bs06HLVvb2eBLKAz1BgDgKBn30apefMBP
	ERnROfIsIPfzhVRXLLvZiQJrDnUHAioT1jJ67NHY/L7AEGZEctPM+M1Zeg/JsTeCcLdk
	23GWc5XqPd1p1Y6EXKwIcCh+cFmx16B6CBGIXO6TqY7ZlfD+FuTYS0oYJeaKac6AvRU4
	CXUHXp2bySzIJSdvuykCOEuLDtVQRuPsSe7GuSE6z2WBaT1gxVGbmWWBhZQNnBaAoOcj
	Ia8tuHAEyETmNS20qLwuADW7ezHJjb0+mUiQ6rwmI0b5zHpr2WVUs1g65JUSRD/u0sRI
	webw==
X-Gm-Message-State: AJaThX7zarbLhwGAxuAHEp+13ZU/5WmS84KQFrIatAqALgD8eWtlTDqn
	P3upgUD+6yQIHxHFjNf3eC5BRIh8orRJ4riMrZ4=
X-Google-Smtp-Source: AGs4zMbMJzIMISFVEfHhH635fu0vkZaAUiJk0WR+RsK0oRbaoQsvamcOkRIgNCR/Yil9dD+Nq+CcsTQpOTXX5ONyYV0=
X-Received: by 10.28.225.87 with SMTP id y84mr5106780wmg.68.1510590862335;
	Mon, 13 Nov 2017 08:34:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Mon, 13 Nov 2017 08:34:21 -0800 (PST)
In-Reply-To: <20171113092712.5f2668e8@lsandov1-mobl2.zpn.intel.com>
References: <CAJ2oMhKC0+nozu1p04mzPym1O4FNnJ0aoR2zxQvcsTL7sMt2dQ@mail.gmail.com>
	<20171113092712.5f2668e8@lsandov1-mobl2.zpn.intel.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 13 Nov 2017 17:34:21 +0100
Message-ID: <CAGAf8Lzo8PbUKkhxNa4BadiphrNF78gXS9S03VUckvs86u7gCA@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Ran Shalit <ranshalit@gmail.com>
Subject: Re: Can I force gstreamer into specific version with my image ?
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
X-List-Received-Date: Mon, 13 Nov 2017 16:34:24 -0000
Content-Type: multipart/alternative; boundary="001a114b061ac046e9055ddfd7d1"

--001a114b061ac046e9055ddfd7d1
Content-Type: text/plain; charset="UTF-8"

> ./poky/meta/recipes-multimedia/gstreamer/gstreamer
1.0-plugins-base_1.4.5.bb

As I recall, these versions are very very old... plugins-base_1.4.5
(September 2015, or even older)?!

Just kludge!

Zoran

On Mon, Nov 13, 2017 at 4:27 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Sun, 12 Nov 2017 11:59:32 +0200
> Ran Shalit <ranshalit@gmail.com> wrote:
>
> > hELLO,
> >
> > For some reason my image is installed with gstreamer 1.6, and I don't
> > understnad why the image (fsl-image-qt5) prefer 1.6.
> > Is there a way to force gsreamer specific version (1.8.2) ?
>
> There is a specific varible which you can use to point to a specific PV,
> check
>
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-
> manual.html#var-PREFERRED_VERSION
>
> Just make sure you have the 1.8.2 recipe in your layer stack.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b061ac046e9055ddfd7d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; ./poky/meta/recipes-=
</span><wbr style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">mul=
timedia/gstreamer/</span><a href=3D"http://gstreamer1.0-plugins-base_1.4.5.=
bb/" rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:12.8px">gstrea=
mer<wbr>1.0-plugins-base_1.4.5.bb</a><br><div><br></div><div>As I recall, t=
hese versions are very very old...=C2=A0plugins-base_1.4.5 (September 2015,=
 or even older)?!</div><div><br></div><div>Just kludge!</div><div><br></div=
><div>Zoran</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Mon, Nov 13, 2017 at 4:27 PM, Leonardo Sandoval <span dir=3D"ltr">=
&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D=
"_blank">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><span class=3D"">On Sun, 12 Nov 2017 11:59=
:32 +0200<br>
Ran Shalit &lt;<a href=3D"mailto:ranshalit@gmail.com">ranshalit@gmail.com</=
a>&gt; wrote:<br>
<br>
&gt; hELLO,<br>
&gt;<br>
&gt; For some reason my image is installed with gstreamer 1.6, and I don&#3=
9;t<br>
&gt; understnad why the image (fsl-image-qt5) prefer 1.6.<br>
&gt; Is there a way to force gsreamer specific version (1.8.2) ?<br>
<br>
</span>There is a specific varible which you can use to point to a specific=
 PV, check<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.=
html#var-PREFERRED_VERSION" rel=3D"noreferrer" target=3D"_blank">http://www=
.yoctoproject.org/<wbr>docs/latest/mega-manual/mega-<wbr>manual.html#var-PR=
EFERRED_<wbr>VERSION</a><br>
<br>
Just make sure you have the 1.8.2 recipe in your layer stack.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114b061ac046e9055ddfd7d1--
