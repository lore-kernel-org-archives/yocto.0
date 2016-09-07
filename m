Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE48CE00FFC; Wed,  7 Sep 2016 01:07:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA58E00E39
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 01:06:58 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id m184so1862277qkb.1
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2016 01:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v6ryPNE2wvfiN6mYiKeTCI8wNo4lM9SAwjh2Uqzh85I=;
	b=bue/U0bmUeMRl8Ab0euQE6DxNoWexPazOTqwtPYRMzt3MaiO5maO56GJlwg+dKW8Mt
	5/CDvvgWoQyhqYzunSbmpXuJbqu6CiLNCZkGS5keBz+p4OT5bMtyPA5aSE7Majbt/Ddz
	dAwXL+27RHEFIljExBmrWXMS+luJnPY3Gf/xR+yb6Hos65Ddqapfys/35IEv7gMUWx8R
	0ev1Uegrn0N9ZFgd6DQz54V6ZGgPkHIws7SsPGjChomwRqYmfp5pAPOJRgKaLkuEv/48
	cFmjfk1v73Px2nbF//HxULERkBxEdPTCbnRi688qACbl4poppWIe8QEpEo7D3cKOen33
	8xTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v6ryPNE2wvfiN6mYiKeTCI8wNo4lM9SAwjh2Uqzh85I=;
	b=EyQgwEiSQx54BlYkMeuHHVCa9u0GLH+3f2crFNMPV8Z5PTTkrPOfquHBKhr7UOL1Bu
	YxG2PAHV2j146Aj7a/INOEK+9NDRiMUqO/VB3SWaoO7n00Vz1uhL2XYOf+t0PGUqptqN
	lTHDRysIkPssHwBV/HE5+SmGhccHRb/24ajMYpo5jSaWInqMGCOnt0hEzmN2BKOGOx1B
	qmEjrHzm5XMQ7/zMB1rkU1g6L32MDUMj2+JflOKxReYFCOHKJFW1iwl5KfCaJPasefCC
	HNqHwQne3/jzNuPwVKddiijRiIHIz1TUC3TtFQnET4PQ8g6k70cD8SODVzzXkokQwlms
	Ei8g==
X-Gm-Message-State: AE9vXwOIPq5UJS52Ct1p4ZJw6LY5k9FbbBrCSfTjyVtb6oKNU98xWB9qIl8v5fThRK4o7ld8hR1UWcXWT8R/nQ==
X-Received: by 10.55.161.196 with SMTP id k187mr8967848qke.11.1473235617733;
	Wed, 07 Sep 2016 01:06:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.90.68 with HTTP; Wed, 7 Sep 2016 01:06:37 -0700 (PDT)
In-Reply-To: <EB023E2B-852D-4D7B-86D8-3E5B7D6606AC@gmail.com>
References: <1472474741-22678-1-git-send-email-sujith.h@gmail.com>
	<EB023E2B-852D-4D7B-86D8-3E5B7D6606AC@gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Wed, 7 Sep 2016 13:36:37 +0530
Message-ID: <CADyYWL=n1W95904iq0K7E2BhXMF9puccTcVWnoXV2Xx5AUDCGA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith Haridasan <Sujith_Haridasan@mentor.com>,
	Christopher Larson <chris_larson@mentor.com>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core][PATCH] ruby: ensure that .ext/rdoc is gone in compile
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
X-List-Received-Date: Wed, 07 Sep 2016 08:07:00 -0000
Content-Type: multipart/alternative; boundary=94eb2c0723f6aa6074053be66595

--94eb2c0723f6aa6074053be66595
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 6, 2016 at 10:23 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Aug 29, 2016, at 5:45 AM, Sujith H <sujith.h@gmail.com> wrote:
> >
> > From: Christopher Larson <chris_larson@mentor.com>
> >
> > rdoc gets unhappy if this already exists, so remove it before building.
> >
> > Without this, it's possible to hit this error:
> >
> >    Directory .ext/rdoc already exists, but it looks like it isn't an RD=
oc
> >    directory.
> >
>
> patch is fine, please post it to openembedded-core mailing list.
>

I have already posted it in the openembedded-core mailing list :
http://lists.openembedded.org/pipermail/openembedded-core/2016-August/12583=
6.html

>
> > Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> > Signed-off-by: Sujith Haridasan <Sujith_Haridasan@mentor.com>
> > ---
> > meta/recipes-devtools/ruby/ruby.inc | 4 ++++
> > 1 file changed, 4 insertions(+)
> >
> > diff --git a/meta/recipes-devtools/ruby/ruby.inc
> b/meta/recipes-devtools/ruby/ruby.inc
> > index fde67e9..d8f6882 100644
> > --- a/meta/recipes-devtools/ruby/ruby.inc
> > +++ b/meta/recipes-devtools/ruby/ruby.inc
> > @@ -37,3 +37,7 @@ do_configure_prepend() {
> >     sed -i "s#%%TARGET_CFLAGS%%#$TARGET_CFLAGS#;
> s#%%TARGET_LDFLAGS%%#$TARGET_LDFLAGS#" ${S}/common.mk
> >     rm -rf ${S}/ruby/
> > }
> > +
> > +do_compile_prepend () {
> > +    rm -rf .ext/rdoc
> > +}
> > --
> > 1.9.1
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
<Project>Contributor to Yocto project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info
C-x C-c

--94eb2c0723f6aa6074053be66595
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Sep 6, 2016 at 10:23 PM, Khem Raj <span dir=3D"ltr">&lt;<a targ=
et=3D"_blank" href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;=
</span> wrote:<br><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote"><span><=
br>
&gt; On Aug 29, 2016, at 5:45 AM, Sujith H &lt;<a target=3D"_blank" href=3D=
"mailto:sujith.h@gmail.com">sujith.h@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; From: Christopher Larson &lt;<a target=3D"_blank" href=3D"mailto:chris=
_larson@mentor.com">chris_larson@mentor.com</a>&gt;<br>
&gt;<br>
&gt; rdoc gets unhappy if this already exists, so remove it before building=
.<br>
&gt;<br>
&gt; Without this, it&#39;s possible to hit this error:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 Directory .ext/rdoc already exists, but it looks like it =
isn&#39;t an RDoc<br>
&gt;=C2=A0 =C2=A0 directory.<br>
&gt;<br>
<br>
</span>patch is fine, please post it to openembedded-core mailing list.<br>=
</blockquote><div><br></div><div>I have already posted it in the openembedd=
ed-core mailing list :=C2=A0 <a href=3D"http://lists.openembedded.org/piper=
mail/openembedded-core/2016-August/125836.html">http://lists.openembedded.o=
rg/pipermail/openembedded-core/2016-August/125836.html</a><br></div><blockq=
uote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex" class=3D"gmail_quote">
<div><div><br>
&gt; Signed-off-by: Christopher Larson &lt;<a target=3D"_blank" href=3D"mai=
lto:chris_larson@mentor.com">chris_larson@mentor.com</a>&gt;<br>
&gt; Signed-off-by: Sujith Haridasan &lt;<a target=3D"_blank" href=3D"mailt=
o:Sujith_Haridasan@mentor.com">Sujith_Haridasan@mentor.com</a>&gt;<br>
&gt; ---<br>
&gt; meta/recipes-devtools/ruby/rub<wbr>y.inc | 4 ++++<br>
&gt; 1 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/meta/recipes-devtools/ruby/r<wbr>uby.inc b/meta/recipes-d=
evtools/ruby/r<wbr>uby.inc<br>
&gt; index fde67e9..d8f6882 100644<br>
&gt; --- a/meta/recipes-devtools/ruby/r<wbr>uby.inc<br>
&gt; +++ b/meta/recipes-devtools/ruby/r<wbr>uby.inc<br>
&gt; @@ -37,3 +37,7 @@ do_configure_prepend() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0sed -i &quot;s#%%TARGET_CFLAGS%%#$TARGET_C<wbr>FLAG=
S#; s#%%TARGET_LDFLAGS%%#$TARGET_L<wbr>DFLAGS#&quot; ${S}/<a target=3D"_bla=
nk" rel=3D"noreferrer" href=3D"http://common.mk">common.mk</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0rm -rf ${S}/ruby/<br>
&gt; }<br>
&gt; +<br>
&gt; +do_compile_prepend () {<br>
&gt; +=C2=A0 =C2=A0 rm -rf .ext/rdoc<br>
&gt; +}<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a><br>
&gt; <a target=3D"_blank" rel=3D"noreferrer" href=3D"https://lists.yoctopro=
ject.org/listinfo/yocto">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div>=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=
=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=
=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&gt;Contributor to KDE pro=
ject<br></div><div>&lt;Project&gt;Contributor to Yocto project<br></div><di=
v><a target=3D"_blank" href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign"=
>http://fci.wikia.com/wiki/<wbr>Anti-DRM-Campaign</a><br>&lt;Blog&gt; <a ta=
rget=3D"_blank" href=3D"http://sujithh.info">http://sujithh.info</a><br></d=
iv><div>C-x C-c<br></div></div></div></div></div>
</div></div>

--94eb2c0723f6aa6074053be66595--
