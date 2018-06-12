Return-Path: <o_o@ieee.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1041E026DB; Tue, 12 Jun 2018 06:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC2DEE019AF
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 06:07:37 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id a3-v6so15312165itd.0
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 06:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ieee-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SiCzkwbqslv5uuxItOTwt0nTEIuAGYyMB7qgyYhxVGY=;
	b=UR2EA0ZrcVZG8mrGgoilLbGim+A484yNGLRKlYCHb5ewVB5/XMDyPbPaxQJy2pfvnv
	fsS31/ZqLdq3lJME578/pL7Pxmf0Kn6+HqTziB/cJfD35mCkOghBBrrYhHdMDx4NVVfb
	XB973Bx5vI81RviraqUKxHfRkz5KPAgXO7XIgtB9WteueuItidiG0kLsJA4H1VzdfD9J
	bzry4thZT4506zSfTBXFa/odnhUiSxFj8OI0LRSCX64pqJLp6h5qfrivj4XmCIezjFGJ
	3EXdfdKec3oj/5pY7Ot00KfFHQS5MpNgPAKm+ARAKiaz26F22PCS51iArq0NXFjzG8zm
	ahIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SiCzkwbqslv5uuxItOTwt0nTEIuAGYyMB7qgyYhxVGY=;
	b=PdLOszjqYx1GTtxRZFzYOjzKhG6rzvCSwWw65Tz49SprjdiFARCpsrHHe+ySDhTcIv
	P5lj8Zq9M6eauWrLCMrp6xK0fT6bQ3zwftef5bNV+JFTMAjg38dQtJlmv0HwfMYSPxXu
	/V1MnrpF4fl5TKuN7WcumTWqiUVbdcnmoC2XPUJgXUkDl9/eOh3P9r9Js+OgiUuMC5ty
	0aNTbAnsetRcJ0tpGmDjLEKUiez1FLEyQ8i6dVdJfpQe342i6jsh07X42GPvAZyNlbAr
	MZQ8jgG0Xe2EdsAYDXEnRFl9xzwi49EzPtaF0UEHMYxyzj67IorU1fTQeq2GS9T3nqW4
	ubyw==
X-Gm-Message-State: APt69E1Soy2hp4LscGvyOAQ2V0phxm9C2T+ZCHvAraT6YvmlIdaSsuVx
	Y/hdA1huaDskPGKELQgwGpotX4RGsSNvuHKQGgLIjA==
X-Google-Smtp-Source: ADUXVKLeEz4ZO18D/qNZ45NPvLws+SpEpCLkc61XXSRCJ5HPhxM7bjMbJ+NwMqRs1UVaOFaOR1DgeEYDZww8+2tjfOY=
X-Received: by 2002:a24:3a87:: with SMTP id
	m129-v6mr344357itm.90.1528808852030; 
	Tue, 12 Jun 2018 06:07:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4d51:0:0:0:0:0 with HTTP; Tue, 12 Jun 2018 06:07:31
	-0700 (PDT)
In-Reply-To: <CANNYZj-U69qvSQKcVwEgY3+8qcn7fKtpCS3BYjk9QrRVoPx_1w@mail.gmail.com>
References: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
	<5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
	<CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
	<611dfb80-87b3-33f7-7bdc-3a3f36a6be7f@gmail.com>
	<CAMXie8GXRqKFwCOOPApHUcxpEo1K9NeCVazsqSvWtzZ-Bxsqzw@mail.gmail.com>
	<CANNYZj-U69qvSQKcVwEgY3+8qcn7fKtpCS3BYjk9QrRVoPx_1w@mail.gmail.com>
From: Ricardo Ramirez <o_o@ieee.org>
Date: Tue, 12 Jun 2018 08:07:31 -0500
Message-ID: <CAMXie8EUe=r79rN5rJ9_TnoC8kYjUaHF9W0g-QZd_JtPmHgaKg@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Tue, 12 Jun 2018 13:07:38 -0000
Content-Type: multipart/alternative; boundary="0000000000008e2f7c056e718cef"

--0000000000008e2f7c056e718cef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 Hi Alex,

You are right. I didn't define a clear scope for what I wanted to validate.
Apologies about that imprecision.

If possible, I'd like to divide the validation process into three stages

1. The system has a clean boot up process
2. The system is tested using a C-based benchmark (e.g. SPEC CPU2006)
3. The system is validated using a more complex set of testbench frameworks
(e.g. http://www.phoronix-test-suite.com/))

My immediate goal is to accomplish stages 1 and 2.

Considering the stages listed above, what steps would I need to follow?

I appreciate your help.


On Tue, Jun 12, 2018 at 4:37 AM, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You start by defining 'works'. It can be anything from quickly
> building an image and booting it on the target hardware to see a login
> prompt, to running a massive test suite and achieving 100% pass rate.
>
> Alex
>
> 2018-06-12 2:14 GMT+03:00 Ricardo Ramirez <o_o@ieee.org>:
> > Thanks for the reply, Khem!
> >
> > What steps should I follow to be able to verify the build I put togethe=
r
> for
> > SPARCv9 works (or doesn't)?
> >
> > I realize it is a pretty non-conventional (newbie like) question but I'=
d
> > like to follow a methodological procedure to validate the build.
> >
> > I appreciate your answer.
> >
> > -R
> >
> > On Mon, Jun 11, 2018 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> Hi Ricardo
> >>
> >> On 6/10/18 7:06 PM, Ricardo Ramirez wrote:
> >>>
> >>> Hi David,
> >>>
> >>> Thanks for the prompt reply!
> >>>
> >>> My question was a follow up of Khem's inquire (posted on 2014-05-02)
> >>>
> >>> https://lists.yoctoproject.org/pipermail/yocto/2014-May/019387.html
> >>>
> >>
> >> this reply still holds as of today.
> >>
> >>> Using the links you sent me, I found that the old OE-Classic branch
> >>> supports sparc32 but didn't see any sparc64
> >>>
> >>> http://layers.openembedded.org/layerindex/oe-classic/recipes/
> >>>
> >>> As such, I'd like to know what steps I need to follow in order to
> enable
> >>> a SPARCv9 machine in Yocto.
> >>>
> >>
> >> We support arm/aarch64/mips/mips64/ppc/ppc64/riscv64/x86/x86_64 for
> major
> >> arches in OE-Core, we also carry patches to support SH4 but do not tes=
t
> >> actively for it. sparc support is in there atleast I see basic
> constructs
> >> are there. Its should be possible to build upon that easily. But it
> will not
> >> work out of box to set your expectations right.
> >>
> >>> I appreciate your answer.
> >>>
> >>> -R
> >>>
> >>>
> >>> On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David <
> david.reyna@windriver.com
> >>> <mailto:david.reyna@windriver.com>> wrote:
> >>>
> >>>     Hi Ricardo,____
> >>>
> >>>     __ __
> >>>
> >>>     If you are asking about the list of MACHINE types that Yocto
> Project
> >>>     supports, then the best place to look is in the Layer Index:____
> >>>
> >>>     __ __
> >>>
> >>>     https://layers.openembedded.org/layerindex/branch/master/layers/
> >>>
> >>> <https://layers.openembedded.org/layerindex/branch/master/layers/>___=
_
> >>>
> >>>     __ __
> >>>
> >>>     Click on the =E2=80=9CMachines=E2=80=9D tab, click on the =E2=80=
=9CSearch=E2=80=9D tab with or
> >>>     without a search value, and see the glorious list.____
> >>>
> >>>     __ __
> >>>
> >>>     The same goes for supported layers, recipes, classes, and distro
> >>>     values.____
> >>>
> >>>     __ __
> >>>
> >>>     You can change the =E2=80=9CBranch=E2=80=9D value to see the MACH=
INE=E2=80=99s per
> >>> release.____
> >>>
> >>>     __ __
> >>>
> >>>     - David Reyna____
> >>>
> >>>     __ __
> >>>
> >>>     *From:*yocto-bounces@yoctoproject.org
> >>>     <mailto:yocto-bounces@yoctoproject.org>
> >>>     [mailto:yocto-bounces@yoctoproject.org
> >>>     <mailto:yocto-bounces@yoctoproject.org>] *On Behalf Of *Ricardo
> >>> Ramirez
> >>>     *Sent:* Sunday, June 10, 2018 5:07 PM
> >>>     *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >>>     *Subject:* Re: [yocto] Target CPU architectures that Yocto Projec=
t
> >>>     Support____
> >>>
> >>>     __ __
> >>>
> >>>     Hi,____
> >>>
> >>>     __ __
> >>>
> >>>     Naive question from a newbie. How can this be achieved? I'd
> >>>     appreciate if you could please shed some light on what steps need
> to
> >>>     be followed?____
> >>>
> >>>     __ __
> >>>
> >>>     Thanks in advance,____
> >>>
> >>>     __ __
> >>>
> >>>     -R____
> >>>
> >>>
> >>>
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--0000000000008e2f7c056e718cef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"font-size:12.8px;text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">Hi Alex,</span><div style=3D"fo=
nt-size:12.8px;text-decoration-style:initial;text-decoration-color:initial"=
><br></div><div style=3D"font-size:12.8px;text-decoration-style:initial;tex=
t-decoration-color:initial">You are right. I didn&#39;t define a clear scop=
e for what I wanted to validate. Apologies about that imprecision.=C2=A0</d=
iv><div style=3D"font-size:12.8px;text-decoration-style:initial;text-decora=
tion-color:initial"><br></div><div style=3D"font-size:12.8px;text-decoratio=
n-style:initial;text-decoration-color:initial">If possible, I&#39;d like to=
 divide the=C2=A0validation process into three stages</div><div style=3D"fo=
nt-size:12.8px;text-decoration-style:initial;text-decoration-color:initial"=
><br></div><div style=3D"font-size:12.8px;text-decoration-style:initial;tex=
t-decoration-color:initial">1. The system has a clean boot up process=C2=A0=
</div><div style=3D"font-size:12.8px;text-decoration-style:initial;text-dec=
oration-color:initial">2. The system is tested using a C-based benchmark (e=
.g. SPEC CPU2006)</div><div style=3D"font-size:12.8px;text-decoration-style=
:initial;text-decoration-color:initial">3. The system is validated using a =
more complex set of testbench=C2=A0frameworks (e.g.=C2=A0<a href=3D"http://=
www.phoronix-test-suite.com/" target=3D"_blank" style=3D"color:rgb(17,85,20=
4)">http://www.phoronix-<wbr>test-suite.com/</a>))=C2=A0</div><div style=3D=
"font-size:12.8px;text-decoration-style:initial;text-decoration-color:initi=
al"><br></div><div style=3D"font-size:12.8px;text-decoration-style:initial;=
text-decoration-color:initial">My immediate goal is to accomplish stages 1 =
and 2.=C2=A0</div><div style=3D"font-size:12.8px;text-decoration-style:init=
ial;text-decoration-color:initial"><br></div><div style=3D"font-size:12.8px=
;text-decoration-style:initial;text-decoration-color:initial">Considering t=
he stages listed above, what steps would I need to follow?</div><div style=
=3D"font-size:12.8px;text-decoration-style:initial;text-decoration-color:in=
itial"><br></div><div style=3D"font-size:12.8px;text-decoration-style:initi=
al;text-decoration-color:initial">I appreciate=C2=A0your help.</div><div cl=
ass=3D"gmail-yj6qo gmail-ajU" style=3D"outline:none;padding:10px 0px;width:=
22px;margin:2px 0px 0px;font-size:12.8px;text-decoration-style:initial;text=
-decoration-color:initial"><div id=3D"gmail-:p3" class=3D"gmail-ajR" tabind=
ex=3D"0" style=3D"background-color:rgb(241,241,241);border:1px solid rgb(22=
1,221,221);clear:both;line-height:6px;outline:none;width:20px"><img class=
=3D"gmail-ajT" src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/clear=
dot.gif" style=3D"background: url(&quot;//ssl.gstatic.com/ui/v1/icons/mail/=
ellipsis.png&quot;) no-repeat; height: 8px; opacity: 0.3; width: 20px;"></d=
iv></div>

<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue,=
 Jun 12, 2018 at 4:37 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">You start by defin=
ing &#39;works&#39;. It can be anything from quickly<br>
building an image and booting it on the target hardware to see a login<br>
prompt, to running a massive test suite and achieving 100% pass rate.<br>
<br>
Alex<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
2018-06-12 2:14 GMT+03:00 Ricardo Ramirez &lt;<a href=3D"mailto:o_o@ieee.or=
g">o_o@ieee.org</a>&gt;:<br>
&gt; Thanks for the reply, Khem!<br>
&gt;<br>
&gt; What steps should I follow to be able to verify the build I put togeth=
er for<br>
&gt; SPARCv9 works (or doesn&#39;t)?<br>
&gt;<br>
&gt; I realize it is a pretty non-conventional (newbie like) question but I=
&#39;d<br>
&gt; like to follow a methodological procedure to validate the build.<br>
&gt;<br>
&gt; I appreciate your answer.<br>
&gt;<br>
&gt; -R<br>
&gt;<br>
&gt; On Mon, Jun 11, 2018 at 5:41 PM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Ricardo<br>
&gt;&gt;<br>
&gt;&gt; On 6/10/18 7:06 PM, Ricardo Ramirez wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi David,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks for the prompt reply!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; My question was a follow up of Khem&#39;s inquire (posted on 2=
014-05-02)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014=
-May/019387.html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.<wbr>org/pipermail/yocto/2014-May/<wbr>019387.html</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; this reply still holds as of today.<br>
&gt;&gt;<br>
&gt;&gt;&gt; Using the links you sent me, I found that the old OE-Classic b=
ranch<br>
&gt;&gt;&gt; supports sparc32 but didn&#39;t see any sparc64<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; <a href=3D"http://layers.openembedded.org/layerindex/oe-classi=
c/recipes/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded=
.<wbr>org/layerindex/oe-classic/<wbr>recipes/</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; As such, I&#39;d like to know what steps I need to follow in o=
rder to enable<br>
&gt;&gt;&gt; a SPARCv9 machine in Yocto.<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; We support arm/aarch64/mips/mips64/ppc/<wbr>ppc64/riscv64/x86/x86_=
64 for major<br>
&gt;&gt; arches in OE-Core, we also carry patches to support SH4 but do not=
 test<br>
&gt;&gt; actively for it. sparc support is in there atleast I see basic con=
structs<br>
&gt;&gt; are there. Its should be possible to build upon that easily. But i=
t will not<br>
&gt;&gt; work out of box to set your expectations right.<br>
&gt;&gt;<br>
&gt;&gt;&gt; I appreciate your answer.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -R<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David &lt;<a href=3D"m=
ailto:david.reyna@windriver.com">david.reyna@windriver.com</a><br>
&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:david.reyna@windriver.com">david.=
reyna@windriver.<wbr>com</a>&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Hi Ricardo,____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0If you are asking about the list of MACHINE=
 types that Yocto Project<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0supports, then the best place to look is in=
 the Layer Index:____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://layers.openembedded.org/=
layerindex/branch/master/layers/" rel=3D"noreferrer" target=3D"_blank">http=
s://layers.openembedded.<wbr>org/layerindex/branch/master/<wbr>layers/</a><=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &lt;<a href=3D"https://layers.openembedded.org/layerindex/bran=
ch/master/layers/" rel=3D"noreferrer" target=3D"_blank">https://layers.open=
embedded.<wbr>org/layerindex/branch/master/<wbr>layers/</a>&gt;____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Click on the =E2=80=9CMachines=E2=80=9D tab=
, click on the =E2=80=9CSearch=E2=80=9D tab with or<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0without a search value, and see the gloriou=
s list.____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0The same goes for supported layers, recipes=
, classes, and distro<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0values.____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0You can change the =E2=80=9CBranch=E2=80=9D=
 value to see the MACHINE=E2=80=99s per<br>
&gt;&gt;&gt; release.____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0- David Reyna____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0*From:*<a href=3D"mailto:yocto-bounces@yoct=
oproject.org">yocto-bounces@<wbr>yoctoproject.org</a><br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto-bounces@=
yoctoproject.org">yocto-bounces@<wbr>yoctoproject.org</a>&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0[mailto:<a href=3D"mailto:yocto-bounces@yoc=
toproject.org">yocto-bounces@<wbr>yoctoproject.org</a><br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:yocto-bounces@=
yoctoproject.org">yocto-bounces@<wbr>yoctoproject.org</a>&gt;] *On Behalf O=
f *Ricardo<br>
&gt;&gt;&gt; Ramirez<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0*Sent:* Sunday, June 10, 2018 5:07 PM<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0*To:* <a href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctopro=
ject.org">yocto@yoctoproject.org</a><wbr>&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0*Subject:* Re: [yocto] Target CPU architect=
ures that Yocto Project<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Support____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Hi,____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Naive question from a newbie. How can this =
be achieved? I&#39;d<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0appreciate if you could please shed some li=
ght on what steps need to<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0be followed?____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Thanks in advance,____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0__ __<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0-R____<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--0000000000008e2f7c056e718cef--
