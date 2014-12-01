Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A00AE00924; Sun, 30 Nov 2014 19:01:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F9BE0084A
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 19:01:16 -0800 (PST)
Received: by mail-ie0-f182.google.com with SMTP id x19so8607180ier.41
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 19:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nTH2ok/Sugqx/jTWpqv2+zMSQCy353dTBnSp2JGfrnU=;
	b=Dsqls3ESF+DqBvNJ2/lsTVmaB14JKH8E0lo3haDZUmdvr+MXxR1mBmeGDkqKxypCee
	2tX/tx4WzRtiYIMTr1Oled0Tg42TXFQcHR5H2xeDGrEGfd95u9IBCHbVi3fGd0dTCfRN
	2Z4TOQzaFdIRYybF+k79hfbZHrM05gkQFJNKQrpraLegK5gyCUcW1nqPKt5rEJhBS5IM
	1Yq96ok8i09s905feerTvWZ7UO5HHv7wY8ChQXLCwJlpiPOSvi4asH2yZ84aFnDsIWk9
	bo9R9pBGCsQjl7E8XxrFiDbsyHfS7RkItjtZPq5MZhXUzBVdRWE+yFmuN/o+ElrjyEws
	IN3A==
MIME-Version: 1.0
X-Received: by 10.42.197.134 with SMTP id ek6mr22110203icb.7.1417402876108;
	Sun, 30 Nov 2014 19:01:16 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Sun, 30 Nov 2014 19:01:16 -0800 (PST)
In-Reply-To: <547BCC00.2070106@windriver.com>
References: <CAKGbVbtPT_ZwgLs72HMGbk-VesbUyRiQBoQDG+UrGMFZWg4qwQ@mail.gmail.com>
	<547ACF5C.8010403@windriver.com>
	<CAKGbVbuLb-fzeGp78NxWYysVru=cweptGcjq2AuzVath+DC57g@mail.gmail.com>
	<547BCC00.2070106@windriver.com>
Date: Mon, 1 Dec 2014 11:01:16 +0800
Message-ID: <CAKGbVbsNf6VbfcS+juDCiifr6Z0kYmyu32iNH=a9SOwt6248Dg@mail.gmail.com>
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
X-List-Received-Date: Mon, 01 Dec 2014 03:01:18 -0000
Content-Type: multipart/alternative; boundary=20cf303ea61aef283c05091ed2d6

--20cf303ea61aef283c05091ed2d6
Content-Type: text/plain; charset=UTF-8

Hi Chen Qi,

Thanks for your suggestion.

I mean the tmp/deploy/ipk dir will have one copy each build dir. And two
boards of the same SOC will
share most of them, so the disk space of the tmp/deploy/ipk part is wasted.

Regards,
Qiang


On Mon, Dec 1, 2014 at 10:01 AM, ChenQi <Qi.Chen@windriver.com> wrote:

>  Sharing sstate is safe and efficient.
> sstate does not contain any package.
>
> Regards,
> Chen Qi
>
>
> On 11/30/2014 10:28 PM, Qiang Yu wrote:
>
> Why share the sstate? Does it contain previously build ipk packages in
> other build directories for reuse?
>
>  Regards,
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
>

--20cf303ea61aef283c05091ed2d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Chen Qi,</div><div><br></div>Thanks for your sugge=
stion.=C2=A0<div><br></div><div>I mean the=C2=A0tmp/deploy/ipk=C2=A0dir wil=
l have one copy each build dir. And two boards of the same SOC will</div><d=
iv>share most of them, so the disk space of the tmp/deploy/ipk part is wast=
ed.</div><div><br></div><div>Regards,</div><div>Qiang</div><div><br></div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Dec =
1, 2014 at 10:01 AM, ChenQi <span dir=3D"ltr">&lt;<a href=3D"mailto:Qi.Chen=
@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>Sharing sstate is safe and efficient.<br>
      sstate does not contain any package.<br>
      <br>
      Regards,<br>
      Chen Qi<div><div class=3D"h5"><br>
      <br>
      On 11/30/2014 10:28 PM, Qiang Yu wrote:<br>
    </div></div></div><div><div class=3D"h5">
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Why share the sstate? Does it contain previously
        build ipk packages in other build directories for reuse?
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Qiang</div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Sun, Nov 30, 2014 at 4:03 PM, ChenQi
          <span dir=3D"ltr">&lt;<a href=3D"mailto:Qi.Chen@windriver.com" ta=
rget=3D"_blank">Qi.Chen@windriver.com</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
            <div bgcolor=3D"#FFFFFF" text=3D"#000000">
              <div>I would suggest to use separate build directories but
                let these builds to share downloads and sstate.<br>
                <br>
                Regards,<br>
                Chen Qi
                <div>
                  <div><br>
                    <br>
                    On 11/30/2014 12:49 PM, Qiang Yu wrote:<br>
                  </div>
                </div>
              </div>
              <div>
                <div>
                  <blockquote type=3D"cite">
                    <div dir=3D"ltr">Hi all,<br>
                      <br>
                      I&#39;m maintaining a Yocto build system to produce
                      these outputs:<br>
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
                      Now I don&#39;t know the right way to create build
                      directories for these builds. The simplest way=C2=A0
                      <div>I think is creating one build directory for
                        each of these builds. But it wast resource for
                        boards=C2=A0</div>
                      <div>with the same SOC which can share cross
                        toolchain. And ARM SOC 1 and ARM SOC 2 use=C2=A0</d=
iv>
                      <div>different conf/bblayers.conf to add different
                        BSP layer, I need to modify it when switch SOC.=C2=
=A0</div>
                      <div>So the right way is creating one build
                        directory for each=C2=A0SOC, then bitbake each
                        output&#39;s recipe,=C2=A0</div>
                      <div>right?</div>
                      <div><br>
                        I am also not sure if I can put the SDK and
                        board image in the same build directory.
                        Because=C2=A0</div>
                      <div>once I build a board&#39;s image after creating
                        its SDK, I add gdbserver to it, but the build
                        fail without=C2=A0</div>
                      <div>really building the gdbserver package. So I
                        guess the board image build is confused by the
                        SDK=C2=A0</div>
                      <div>build state.
                        <div><br>
                        </div>
                        <div>So the conclusion is I need a recommended
                          way to separate output into different build
                          directories:</div>
                        <div>1. minimize rebuild shared packages</div>
                        <div>2. no build state corruption</div>
                        <div>3. if multi output in the same build dir,
                          no change to conf/ files or an easy way to
                          switch between</div>
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
                </div>
              </div>
            </div>
            <br>
            --<br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a><br>
            <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
            <br>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br></div>

--20cf303ea61aef283c05091ed2d6--
