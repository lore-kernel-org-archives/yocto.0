Return-Path: <navani.srivastava@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17977E007DF; Tue, 23 Sep 2014 21:57:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (navani.srivastava[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D34EE005BD
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 21:57:02 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tr6so10799432ieb.12
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 21:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=x5bQu5qK+tJxc95y4/OOf0cF1z3pJ0AJgNNrJbOzFDQ=;
	b=LV+KTOV+1B5HCeYkquzBGMyIp3gPz1b18BjCetdox+Dw+ZE44U6svNKKGaxaxq+Y3i
	zJaSLBQB2w4YW/XIJrg1NmVutGXdtbtQuskiqCAvzNYhraSTX2VMlqA/0BDXdak0YnUx
	/N0nGb4/NrZ9xzWiT/XqpLzitHSjp1OyaCE77DF1MlXb3tBnusdVeKiptWg4+UiLlbn3
	NvdfYBEUEykssgLCpdqDeW2i+7FebzhFihWITb2gJunBTndp+iQu2TDGXbMaR69nPjR8
	ZtKgnfvgKYsJeMLPprX8TbnWkxnnhzicp9fMs42n1ns38Uu6QMDLmi3FiesUglJyFNEg
	5C2w==
X-Received: by 10.50.138.194 with SMTP id qs2mr28801729igb.4.1411534621205;
	Tue, 23 Sep 2014 21:57:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.217 with HTTP; Tue, 23 Sep 2014 21:56:41 -0700 (PDT)
In-Reply-To: <CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
	<2002943.O9tR5uaDDD@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWN=wbJkf94rwPWNqDKdGvhGPRvdTXFjqM+Uho8mTCzkg@mail.gmail.com>
	<CA+Z6RkUOs2panpkstvdoiy8cCf7vL_7XCcUkQq4hyPvGYG=3NQ@mail.gmail.com>
	<CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 24 Sep 2014 10:26:41 +0530
Message-ID: <CA+Z6RkUeUs0=EQ3adks8jBYbEQkiA6G8iP+Em8_YzHSGo2124Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Navani Srivastava <navani.srivastava@lnttechservices.com>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Wed, 24 Sep 2014 04:57:04 -0000
Content-Type: multipart/alternative; boundary=089e01183c90af6d020503c88304

--089e01183c90af6d020503c88304
Content-Type: text/plain; charset=UTF-8

I corrected FILES_${PN} and added following in my image recipe-
QTNAME = "qte"
QT_DIR_NAME = "qtopia"
require recipes-qt/meta/meta-toolchain-qt.bb

but that didn't make any difference related to SDK integration. On
executing 'bitbake -v <MyImageName>', it is generating rootfs and sdk, in
which contains rootfs contains qjson libraries but sdk doesn't integrate
anything.

On Tue, Sep 23, 2014 at 11:24 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Sep 22, 2014 at 9:26 PM, Navani Srivastava
> <navani.srivastava@gmail.com> wrote:
> > Please find the recipe attached herewith for qjson. This recipe is
> helpful
> > to work with qt4-embedded as qt4 doesn't have qjson feature in built.
> > I tried 'bitbake -c populate_sdk <myimage>' but it has not integrated
> qjson
> > package along. I am suspecting qjson recipe now. Am i missing anything in
> > attached recipe which is blocking me to integrate qjson in SDK?
> >
>
> Have you made sure that qjson is otherwise included into your image ?
> I see that FILES_${PN} is being overwritten twice may be you want +=
> in second place.
>
>
> > Navani
> >
> > On Mon, Sep 22, 2014 at 2:48 PM, Navani Srivastava
> > <navani.srivastava@gmail.com> wrote:
> >>
> >> I will follow the suggestion given by you and will update the result.
> >> However in case if I want to integrate custom recipe with
> >> meta-toolchain-qte, is there any example existing which can help me in
> >> understanding?
> >>
> >> Right now I am following the procedure given by Randy but some example
> >> could be of a great help!!
> >>
> >> Regards
> >>
> >> Navani
> >>
> >>
> >> On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton
> >> <paul.eggleton@linux.intel.com> wrote:
> >>>
> >>> On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:
> >>> > On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton <
> >>> > paul.eggleton@linux.intel.com> wrote:
> >>> > > On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
> >>> > > > We are not using populatesdk ... we need to generate it through
> >>> > > > meta-toolchain-qte only so i am trying with the solution provided
> >>> > > > by
> >>> > > > randy..
> >>> > >
> >>> > > Can I ask why? I'd like to understand where -c populate_sdk needs
> >>> > > further
> >>> > > improvement.
> >>> >
> >>> > I have to generate toolchain which contain qt related tools also like
> >>> > qmake
> >>> > and qjson, so we are using meta-toolchain-qte to generate the
> >>> > toolchain..
> >>> > Do you suggest it's better to integrate meta-toolchain-qte somehow
> with
> >>> > populate_sdk so that we can make life easier?
> >>>
> >>> It is possible to integrate the two - all you need to do is ensure the
> >>> extra
> >>> qte tools get added to the SDK. One way to achieve this would be to add
> >>> the
> >>> following to your image recipe:
> >>>
> >>> QTNAME = "qte"
> >>> QT_DIR_NAME = "qtopia"
> >>> require recipes-qt/meta/meta-toolchain-qt.inc
> >>>
> >>> (I haven't tested this so I'm not 100% sure if it will work, but it
> >>> should.)
> >>>
> >>> Cheers,
> >>> Paul
> >>>
> >>>
> >>> --
> >>>
> >>> Paul Eggleton
> >>> Intel Open Source Technology Centre
> >>
> >>
> >
>

--089e01183c90af6d020503c88304
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I corrected FILES_${PN} and added following in my image re=
cipe-<br><span style=3D"font-family:arial,sans-serif;font-size:13px">QTNAME=
 =3D &quot;qte&quot;</span><br style=3D"font-family:arial,sans-serif;font-s=
ize:13px"><span style=3D"font-family:arial,sans-serif;font-size:13px">QT_DI=
R_NAME =3D &quot;qtopia&quot;</span><br style=3D"font-family:arial,sans-ser=
if;font-size:13px"><div><span style=3D"font-size:13px;font-family:arial,san=
s-serif">require recipes-qt/meta/meta-</span><span style=3D"font-size:13px;=
font-family:arial,sans-serif"><a href=3D"http://toolchain-qt.bb">toolchain-=
qt.bb</a></span></div><div><br></div><div>but that didn&#39;t make any diff=
erence related to SDK integration. On executing &#39;bitbake -v &lt;MyImage=
Name&gt;&#39;, it is generating rootfs and sdk, in which contains rootfs co=
ntains qjson libraries but sdk doesn&#39;t integrate anything.</div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Sep 23, 20=
14 at 11:24 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@g=
mail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><span class=3D"">On Mon, Sep 22, 2014 at 9:26 P=
M, Navani Srivastava<br>
&lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@gmail.=
com</a>&gt; wrote:<br>
&gt; Please find the recipe attached herewith for qjson. This recipe is hel=
pful<br>
&gt; to work with qt4-embedded as qt4 doesn&#39;t have qjson feature in bui=
lt.<br>
&gt; I tried &#39;bitbake -c populate_sdk &lt;myimage&gt;&#39; but it has n=
ot integrated qjson<br>
&gt; package along. I am suspecting qjson recipe now. Am i missing anything=
 in<br>
&gt; attached recipe which is blocking me to integrate qjson in SDK?<br>
&gt;<br>
<br>
</span>Have you made sure that qjson is otherwise included into your image =
?<br>
I see that FILES_${PN} is being overwritten twice may be you want +=3D<br>
in second place.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; Navani<br>
&gt;<br>
&gt; On Mon, Sep 22, 2014 at 2:48 PM, Navani Srivastava<br>
&gt; &lt;<a href=3D"mailto:navani.srivastava@gmail.com">navani.srivastava@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I will follow the suggestion given by you and will update the resu=
lt.<br>
&gt;&gt; However in case if I want to integrate custom recipe with<br>
&gt;&gt; meta-toolchain-qte, is there any example existing which can help m=
e in<br>
&gt;&gt; understanding?<br>
&gt;&gt;<br>
&gt;&gt; Right now I am following the procedure given by Randy but some exa=
mple<br>
&gt;&gt; could be of a great help!!<br>
&gt;&gt;<br>
&gt;&gt; Regards<br>
&gt;&gt;<br>
&gt;&gt; Navani<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton<br>
&gt;&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton=
@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:<=
br>
&gt;&gt;&gt; &gt; On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton &lt;<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.egg=
leton@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; &gt; On Sunday 21 September 2014 09:26:07 Navani Srivasta=
va wrote:<br>
&gt;&gt;&gt; &gt; &gt; &gt; We are not using populatesdk ... we need to gen=
erate it through<br>
&gt;&gt;&gt; &gt; &gt; &gt; meta-toolchain-qte only so i am trying with the=
 solution provided<br>
&gt;&gt;&gt; &gt; &gt; &gt; by<br>
&gt;&gt;&gt; &gt; &gt; &gt; randy..<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; Can I ask why? I&#39;d like to understand where -c p=
opulate_sdk needs<br>
&gt;&gt;&gt; &gt; &gt; further<br>
&gt;&gt;&gt; &gt; &gt; improvement.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I have to generate toolchain which contain qt related too=
ls also like<br>
&gt;&gt;&gt; &gt; qmake<br>
&gt;&gt;&gt; &gt; and qjson, so we are using meta-toolchain-qte to generate=
 the<br>
&gt;&gt;&gt; &gt; toolchain..<br>
&gt;&gt;&gt; &gt; Do you suggest it&#39;s better to integrate meta-toolchai=
n-qte somehow with<br>
&gt;&gt;&gt; &gt; populate_sdk so that we can make life easier?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; It is possible to integrate the two - all you need to do is en=
sure the<br>
&gt;&gt;&gt; extra<br>
&gt;&gt;&gt; qte tools get added to the SDK. One way to achieve this would =
be to add<br>
&gt;&gt;&gt; the<br>
&gt;&gt;&gt; following to your image recipe:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; QTNAME =3D &quot;qte&quot;<br>
&gt;&gt;&gt; QT_DIR_NAME =3D &quot;qtopia&quot;<br>
&gt;&gt;&gt; require recipes-qt/meta/meta-toolchain-qt.inc<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; (I haven&#39;t tested this so I&#39;m not 100% sure if it will=
 work, but it<br>
&gt;&gt;&gt; should.)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Cheers,<br>
&gt;&gt;&gt; Paul<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Paul Eggleton<br>
&gt;&gt;&gt; Intel Open Source Technology Centre<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--089e01183c90af6d020503c88304--
