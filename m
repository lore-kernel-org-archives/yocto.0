Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7388E00575; Sun, 30 Nov 2014 06:28:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
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
	*      [209.85.213.179 listed in list.dnswl.org]
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80DC7E004F2
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 06:28:47 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id r2so7597137igi.12
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 06:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cAWlrDLL/22onnPrCslB/b7kjJpg4jnNxQybkim8xm8=;
	b=ecqpYIbUEjakQXUZSQs2ZG4gQTJ8TDvKFCuDA1JGnIjWJmfhLNwF/x7tK7nFZ/z63o
	wrf4Obg45sHWAGFYhBLRNWFNuakBUzV6oKE8Rp0Q9cvxnWIthBMSqz/2fAMMWNS/xs0t
	clQS0crOD06cBIOAshCqB2qTH98OCWA3A+roYLNL+UGD33BZBmHKlv+ChvID9KsHgyzD
	v6MaE7da/4PtNswvr6Gm7+x6NhZyXptEFJRcSrSc/2juFsRIkMuXBi+m9z6Wyqx+BtW4
	bJCuFzdUyS0BIayBGBo/VpU8ibSGvegcJobk6JCDqru7O01iXlVDZDLaaQIyEyDOc9YS
	XSjA==
MIME-Version: 1.0
X-Received: by 10.107.46.28 with SMTP id i28mr5684623ioo.73.1417357727324;
	Sun, 30 Nov 2014 06:28:47 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Sun, 30 Nov 2014 06:28:47 -0800 (PST)
In-Reply-To: <547ACF5C.8010403@windriver.com>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
	<547ACF5C.8010403@windriver.com>
Date: Sun, 30 Nov 2014 22:28:47 +0800
Message-ID: <CAKGbVbsFttaSeeW6-HXCbUyN_m1pn_o_z4fa2Nk52idWQoBp8g@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: When to create a new build directory for yocto?
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
X-List-Received-Date: Sun, 30 Nov 2014 14:28:50 -0000
Content-Type: multipart/alternative; boundary=001a11352f72db5f890509144fd5

--001a11352f72db5f890509144fd5
Content-Type: text/plain; charset=UTF-8

Why share the sstate? Does it contain previously build ipk packages in
other build directories for reuse?

Regards,
Qiang

On Sun, Nov 30, 2014 at 4:03 PM, ChenQi <Qi.Chen@windriver.com> wrote:

>  I would suggest to use separate build directories but let these builds
> to share downloads and sstate.
>
> Regards,
> Chen Qi
>
>
> On 11/30/2014 12:49 PM, Qiang Yu wrote:
>
> Hi all,
>
> I'm maintaining a Yocto build system to produce these outputs:
>
> 1. ARM SOC 1
>   1). board 1 image
>   2). board 2 image
>   3). SDK for i686
>   4). SDK for x86_64
> 2. ARM SOC 2
>   1). board 3 image
>   2). board 4 image
>   3). SDK for i686
>   4). SDK for x86_64
>
> Now I don't know the right way to create build directories for these
> builds. The simplest way
> I think is creating one build directory for each of these builds. But it
> wast resource for boards
> with the same SOC which can share cross toolchain. And ARM SOC 1 and ARM
> SOC 2 use
> different conf/bblayers.conf to add different BSP layer, I need to modify
> it when switch SOC.
> So the right way is creating one build directory for each SOC, then
> bitbake each output's recipe,
> right?
>
> I am also not sure if I can put the SDK and board image in the same build
> directory. Because
> once I build a board's image after creating its SDK, I add gdbserver to
> it, but the build fail without
> really building the gdbserver package. So I guess the board image build is
> confused by the SDK
> build state.
>
>  So the conclusion is I need a recommended way to separate output into
> different build directories:
> 1. minimize rebuild shared packages
> 2. no build state corruption
> 3. if multi output in the same build dir, no change to conf/ files or an
> easy way to switch between
>
>  Regards,
> Qiang
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11352f72db5f890509144fd5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Why share the sstate? Does it contain previously build ipk packages in ot=
her build directories for reuse?</span><div style=3D"font-family:arial,sans=
-serif;font-size:13px"><br></div><div style=3D"font-family:arial,sans-serif=
;font-size:13px">Regards,</div><div style=3D"font-family:arial,sans-serif;f=
ont-size:13px">Qiang</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Sun, Nov 30, 2014 at 4:03 PM, ChenQi <span dir=3D"ltr">=
&lt;<a href=3D"mailto:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@wind=
river.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>I would suggest to use separate build
      directories but let these builds to share downloads and sstate.<br>
      <br>
      Regards,<br>
      Chen Qi<div><div class=3D"h5"><br>
      <br>
      On 11/30/2014 12:49 PM, Qiang Yu wrote:<br>
    </div></div></div><div><div class=3D"h5">
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi all,<br>
        <br>
        I&#39;m maintaining a Yocto build system to produce these outputs:<=
br>
        <br>
        1. ARM SOC 1<br>
        =C2=A0 1). board 1 image<br>
        =C2=A0 2). board 2 image<br>
        =C2=A0 3). SDK for i686<br>
        =C2=A0 4). SDK for x86_64<br>
        2. ARM SOC 2<br>
        =C2=A0 1). board 3 image<br>
        =C2=A0 2). board 4 image<br>
        =C2=A0 3). SDK for i686<br>
        =C2=A0 4). SDK for x86_64<br>
        <br>
        Now I don&#39;t know the right way to create build directories for
        these builds. The simplest way=C2=A0
        <div>I think is creating one build directory for each of these
          builds. But it wast resource for boards=C2=A0</div>
        <div>with the same SOC which can share cross toolchain. And ARM
          SOC 1 and ARM SOC 2 use=C2=A0</div>
        <div>different conf/bblayers.conf to add different BSP layer, I
          need to modify it when switch SOC.=C2=A0</div>
        <div>So the right way is creating one build directory for
          each=C2=A0SOC, then bitbake each output&#39;s recipe,=C2=A0</div>
        <div>right?</div>
        <div><br>
          I am also not sure if I can put the SDK and board image in the
          same build directory. Because=C2=A0</div>
        <div>once I build a board&#39;s image after creating its SDK, I add
          gdbserver to it, but the build fail without=C2=A0</div>
        <div>really building the gdbserver package. So I guess the board
          image build is confused by the SDK=C2=A0</div>
        <div>build state.
          <div><br>
          </div>
          <div>So the conclusion is I need a recommended way to separate
            output into different build directories:</div>
          <div>1. minimize rebuild shared packages</div>
          <div>2. no build state corruption</div>
          <div>3. if multi output in the same build dir, no change to
            conf/ files or an easy way to switch between</div>
          <div><br>
          </div>
          <div>Regards,</div>
          <div>Qiang</div>
          <div><br>
          </div>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
    </blockquote>
    <br>
  </div></div></div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11352f72db5f890509144fd5--
