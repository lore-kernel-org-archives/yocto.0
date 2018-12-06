Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDA02E00C92; Wed,  5 Dec 2018 21:54:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.181 listed in list.dnswl.org]
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
	[209.85.221.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7300EE003E1;
	Wed,  5 Dec 2018 21:54:27 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id y14so5236627vky.9;
	Wed, 05 Dec 2018 21:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2bBrCY/xOs9ajgdIc/Nf7y0SHvdP5qxm1R6Fg3+ONlo=;
	b=hf4edZifKVMB9HtsHI00uGFSbSHOiYz9YPv1cQGKnq060kwWPf3zzVDl1Cf71eEfpQ
	HjGqayaSlmwacN11VpVAHSVGgagWSRSOHp++vOJDy00aYf1cxMNil4HsmyvZI4dDOm8c
	W8myoie/P/Q0ccr+w/h3ClP4Mwg0g5+O01UnFMm4Clq61dZCLm8i4TZ3Ab0NFWs0rqly
	aeqWuCWe0ujZgah8rghptijIWX8o/tx23OytdxtOM+IoRWo3M6p3yeBuSLs5F0BScgQn
	pmjqWnuCXPU/AwAGw1FvujNp9hSAFjrG0PpoLegHCec03cE4bzvU0XbbMDrYYLTzs3P+
	JkDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2bBrCY/xOs9ajgdIc/Nf7y0SHvdP5qxm1R6Fg3+ONlo=;
	b=eGFNky15bKxZ88p5JkJq6tySA+m6WywmboIkJnNxvrohBPkOrqYrwRrOF1FxrkDdp5
	10t1rSqcML3DvtSEuzS2Xh9tgd9A97c5c0odEaImWizDu1HpB2skcWhbSvGpHzJik2Oq
	KqQtqbx4BV2lPovzdTdr1De0ArNEcObVyWGLhqxasxBqQicV26lbxqN081CMdyT3oGjF
	pwLdP9jvNK1Ld1Y4xh/xm/bE9xNoIG30ob5EUfL2fivIPV9ElA7xojtZS2hDodijHEnf
	fQWAX8KNsudPYX3a5UZdgmuf1+A+oR1h3vTFZEG9QGPEMovHgRXmH143KUDS42OQaOe9
	x4NA==
X-Gm-Message-State: AA+aEWZ3UJtvFTnaKDc2339HIIA0SJL8hiNOM8e2kqYqCUPYzZDoyLSc
	Zu55r7DUZW5UuO9RkLkjYnsOWuXOmPrp15cNH3c=
X-Google-Smtp-Source: AFSGD/VRJx2pRSFiRd6SgRVGHRDzIvqSkLjh3pZl1xZ5dybvYZQbEY7bk+n/xNhdYvbsorAaesBvLD30BoThpfo/9s8=
X-Received: by 2002:a1f:c111:: with SMTP id r17mr11518218vkf.35.1544075666660; 
	Wed, 05 Dec 2018 21:54:26 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4iqk7hNd8FVDZdiN7LRynCWDtmpP=BaJ4mM8RARX+StaQ@mail.gmail.com>
In-Reply-To: <CAFq4t4iqk7hNd8FVDZdiN7LRynCWDtmpP=BaJ4mM8RARX+StaQ@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 5 Dec 2018 21:54:16 -0800
Message-ID: <CANx9H-BKpUeo=PVq+EkeaqDhCiidy6Lekn62X=sFuVO_h+fGPg@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	"eclipse-yocto@yoctoproject.org" <eclipse-yocto@yoctoproject.org>
Subject: Re: Yocto Cmake Build (Toolchain)
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
X-List-Received-Date: Thu, 06 Dec 2018 05:54:30 -0000
Content-Type: multipart/alternative; boundary="0000000000009e21b8057c542141"

--0000000000009e21b8057c542141
Content-Type: text/plain; charset="UTF-8"

Also including eclipse-yocto mailing list.

BTW, ADT is not a thing anymore.

On Wed, Dec 5, 2018 at 3:11 PM Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> I am starting to use Eclipse ADT for app development using Yocto Cmake
> Build (Toolchain). I am trying to create simple "hello-world" example out
> of "Yocto Project SDK Cmake Project" but by building the project I am
> getting this
>
> Buildfile generation error occurred..
> Build of project failed with the following error:
> CMake Error: Could not find CMAKE_ROOT !!!
> CMake has most likely not been installed correctly.
> Modules directory not found in
>
> /opt/fsl-imx-xwayland/4.9.51-mx8-beta/sysroots/x86_64-pokysdk-linux/usr/share/cmake-3.5
> CMake Error: Error executing cmake::LoadCache(). Aborting.
> Build stopped..
>
> Do you encounter such a problem? I have a camke part of the Yocto SDK.
>
> BTW I am able to build, debug "hello-world" out of "Yocto Project SDK
> Autotools Project".
>
> Thank you for your advice.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000009e21b8057c542141
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Also including eclipse-yocto mailing list.</div></di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">BTW, ADT is not a thing any=
more.</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec=
 5, 2018 at 3:11 PM Peter Balazovic &lt;<a href=3D"mailto:balazovic.peter@g=
mail.com">balazovic.peter@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I am sta=
rting to use Eclipse ADT for app development using=C2=A0Yocto Cmake Build (=
Toolchain). I am trying to create simple &quot;hello-world&quot; example ou=
t of &quot;Yocto Project SDK Cmake Project&quot; but by building the projec=
t I am getting this</div><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div d=
ir=3D"ltr">Buildfile generation error occurred..</div><div dir=3D"ltr">Buil=
d of project failed with the following error:</div><div dir=3D"ltr">CMake E=
rror: Could not find CMAKE_ROOT !!!</div><div dir=3D"ltr">CMake has most li=
kely not been installed correctly.</div><div dir=3D"ltr">Modules directory =
not found in</div><div dir=3D"ltr">/opt/fsl-imx-xwayland/4.9.51-mx8-beta/sy=
sroots/x86_64-pokysdk-linux/usr/share/cmake-3.5</div><div dir=3D"ltr">CMake=
 Error: Error executing cmake::LoadCache(). Aborting.</div><div dir=3D"ltr"=
>Build stopped..</div><div dir=3D"ltr"><br></div><div>Do you encounter such=
 a problem? I have a camke part of the Yocto SDK.</div><div><br></div><div>=
BTW I am able to build, debug &quot;hello-world&quot; out of &quot;Yocto Pr=
oject SDK Autotools Project&quot;.</div><div><br></div><div>Thank you for y=
our advice.=C2=A0</div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000009e21b8057c542141--
