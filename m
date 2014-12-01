Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D374E0091D; Sun, 30 Nov 2014 17:37:30 -0800 (PST)
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
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 369ABE00837
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 17:37:24 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id y20so8690388ier.28
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 17:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=p8enDUDW0GppaGx5c1VKiUTd0iiHdDTfE+26iBAmS5Q=;
	b=RxwmTkw/Jge1TewpQWy0BvLIEzdKNaBLiIQdRTKkYFbDQaGidyMeEmy7gwhLdiPPSZ
	6J8+XWv1Vyjr1V6Vg19xMQjI3xU82OcveXL+GlbkcjjYm6J2X4HE9h9lBLEoSGeOD5yk
	dXJfmRXFMTtlJqy9gWNClAIeRS7M7mbJHKomftZZJlo8BuPhorpvQRJeefxx6p8AXoli
	Lq6MafJ36fRCjxta4BGbWiG6eJIzvoE3/hR15XXW2oVuHUnWGIRnHwoymV5QmHUuyGMT
	mOUEOn7Lni9ddBcm4jZQDC15YX6oKrRH4lSRLrpzrY+qY1SmseW8Lkyjzo8UllAiSEiY
	CjsQ==
MIME-Version: 1.0
X-Received: by 10.107.16.88 with SMTP id y85mr50165178ioi.56.1417397843439;
	Sun, 30 Nov 2014 17:37:23 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Sun, 30 Nov 2014 17:37:23 -0800 (PST)
In-Reply-To: <CAKGbVbsFttaSeeW6-HXCbUyN_m1pn_o_z4fa2Nk52idWQoBp8g@mail.gmail.com>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
	<547ACF5C.8010403@windriver.com>
	<CAKGbVbsFttaSeeW6-HXCbUyN_m1pn_o_z4fa2Nk52idWQoBp8g@mail.gmail.com>
Date: Mon, 1 Dec 2014 09:37:23 +0800
Message-ID: <CAKGbVbt_YBAnsVpAMJEehW1Bpce3Ck+ShKVKq1JoTUW3Bpm5_Q@mail.gmail.com>
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
X-List-Received-Date: Mon, 01 Dec 2014 01:37:30 -0000
Content-Type: multipart/alternative; boundary=001a113e9788f6b73305091da665

--001a113e9788f6b73305091da665
Content-Type: text/plain; charset=UTF-8

Now after study share state cache in yocto document, I know it can be used
by multi build dir
to share IPK files. But if all the build dir share the same sstate_cache,
why don't they just use
the same build dir? I can only think one reason: needn't change conf/ files
when switching output.
But when in the same SOC, the conf/ also need not be changed, just switch
output recipes.

And if every output has its own build dir with the same sstate_cache, the
build stage is ignored,
but the IPK will have multi copy in multi build dir. This will wast disk
space. So may be this is
not the best way?

Regards,
Qiang


On Sun, Nov 30, 2014 at 10:28 PM, Qiang Yu <yuq825@gmail.com> wrote:

> Why share the sstate? Does it contain previously build ipk packages in
> other build directories for reuse?
>
> Regards,
> Qiang
>
> On Sun, Nov 30, 2014 at 4:03 PM, ChenQi <Qi.Chen@windriver.com> wrote:
>
>>  I would suggest to use separate build directories but let these builds
>> to share downloads and sstate.
>>
>> Regards,
>> Chen Qi
>>
>>
>> On 11/30/2014 12:49 PM, Qiang Yu wrote:
>>
>> Hi all,
>>
>> I'm maintaining a Yocto build system to produce these outputs:
>>
>> 1. ARM SOC 1
>>   1). board 1 image
>>   2). board 2 image
>>   3). SDK for i686
>>   4). SDK for x86_64
>> 2. ARM SOC 2
>>   1). board 3 image
>>   2). board 4 image
>>   3). SDK for i686
>>   4). SDK for x86_64
>>
>> Now I don't know the right way to create build directories for these
>> builds. The simplest way
>> I think is creating one build directory for each of these builds. But it
>> wast resource for boards
>> with the same SOC which can share cross toolchain. And ARM SOC 1 and ARM
>> SOC 2 use
>> different conf/bblayers.conf to add different BSP layer, I need to modify
>> it when switch SOC.
>> So the right way is creating one build directory for each SOC, then
>> bitbake each output's recipe,
>> right?
>>
>> I am also not sure if I can put the SDK and board image in the same build
>> directory. Because
>> once I build a board's image after creating its SDK, I add gdbserver to
>> it, but the build fail without
>> really building the gdbserver package. So I guess the board image build
>> is confused by the SDK
>> build state.
>>
>>  So the conclusion is I need a recommended way to separate output into
>> different build directories:
>> 1. minimize rebuild shared packages
>> 2. no build state corruption
>> 3. if multi output in the same build dir, no change to conf/ files or an
>> easy way to switch between
>>
>>  Regards,
>> Qiang
>>
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a113e9788f6b73305091da665
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Now after study share state cache in yocto document, I kno=
w it can be used by multi build dir<div>to share IPK files. But if all the =
build dir share the same sstate_cache, why don&#39;t they just use</div><di=
v>the same build dir? I can only think one reason: needn&#39;t change conf/=
 files when switching output.</div><div>But when in the same SOC, the conf/=
 also need not be changed, just switch output recipes.</div><div><br></div>=
<div>And if every output has its own build dir with the same sstate_cache, =
the build stage is ignored,</div><div>but the IPK will have multi copy in m=
ulti build dir. This will wast disk space. So may be this is</div><div>not =
the best way?</div><div><br></div><div>Regards,</div><div>Qiang</div><div><=
br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Sun, Nov 30, 2014 at 10:28 PM, Qiang Yu <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:yuq825@gmail.com" target=3D"_blank">yuq825@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span class=3D""><div dir=3D"ltr"><=
span style=3D"font-family:arial,sans-serif;font-size:13px">Why share the ss=
tate? Does it contain previously build ipk packages in other build director=
ies for reuse?</span><div style=3D"font-family:arial,sans-serif;font-size:1=
3px"><br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">R=
egards,</div><div style=3D"font-family:arial,sans-serif;font-size:13px">Qia=
ng</div></div></span><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><span class=3D"">On Sun, Nov 30, 2014 at 4:03 PM, ChenQi <span dir=3D"l=
tr">&lt;<a href=3D"mailto:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@=
windriver.com</a>&gt;</span> wrote:<br></span><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div><div class=3D"h5">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>I would suggest to use separate build
      directories but let these builds to share downloads and sstate.<br>
      <br>
      Regards,<br>
      Chen Qi<div><div><br>
      <br>
      On 11/30/2014 12:49 PM, Qiang Yu wrote:<br>
    </div></div></div><div><div>
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

<br></div></div><span class=3D"">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a113e9788f6b73305091da665--
