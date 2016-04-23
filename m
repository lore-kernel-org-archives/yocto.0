Return-Path: <ryanelkholy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C49BE00C49; Sat, 23 Apr 2016 07:36:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ryanelkholy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE0C8E0077E
	for <yocto@yoctoproject.org>; Sat, 23 Apr 2016 07:36:15 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id d62so48365913iof.2
	for <yocto@yoctoproject.org>; Sat, 23 Apr 2016 07:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=SKBpcJMY3a7fJPGDXbTwDkxhfXYiKqAoBAxledb9Mj4=;
	b=JlFjiBN+pscO7a30bBl8CPEQluBg+/HG2mLRWy2Tzvm191MgMDNqj6pXYAgOg853Ch
	eUNoa3T2c8tc9jlCcXBLfnH18lBAJX1HoC0IkGtr8lTrFh21juqOI1ilNeeZhD7pIjQP
	OxuPjzrYTz4T+qKxQsZAyTKkh6ZrdRcYyRii0tnWd/+RExjfCFjz+XHL8tREETb8+Qhr
	RbyP9uMnXslx5iUjr33O33SrtrrMe7sD31U5Dn2LejbT1ewBn00euTuYr+zlIWwpNXvK
	IEmOphdJQA6UcrX/44i4/B8D9Wwg7Ag+0ClSBUil9nDgOudTmczT6dR05xM9/9lkFiCH
	+wYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=SKBpcJMY3a7fJPGDXbTwDkxhfXYiKqAoBAxledb9Mj4=;
	b=kfterh6voz945xINqcD7bLvmT1tLVjKjk8td7UrSGw1PRLfnbriVGjoPkH3tFpm+hL
	ZCPIooKsMDKr9ALL2qizPj5QUPu4gf+xZtQK6qtDWokGemMsb6pf2iepWzw0UwbnjXDH
	h5ZtuDvQklerzeQe09I+SPpelBspGoNJYlJYQbzIl3BcbkTflvNmfmaD6z9y2Vw3Dynk
	BPY8cALDFi8NmTK8XNvFkxuHZY1dPBUNFnef1y4cJCsJ8C6emm/DKHZoI00fzChcSEjy
	lIEp3Jta4jgJPsbQF91UHGJ3sKK4neDJOJIc1zEQgMtWXHqULhonXGGBR6NVBOVOTphl
	ijsA==
X-Gm-Message-State: AOPr4FV2Z/TH8aEPSKN3PIEOdUT2L9PDM/E1XYwR6/d0KddxwHu9zIbtH1Ok+5Mw/JjbMouGd43/od873qWw4w==
MIME-Version: 1.0
X-Received: by 10.107.36.198 with SMTP id k189mr10619707iok.176.1461422174932; 
	Sat, 23 Apr 2016 07:36:14 -0700 (PDT)
Received: by 10.64.78.105 with HTTP; Sat, 23 Apr 2016 07:36:14 -0700 (PDT)
In-Reply-To: <AF020D52-486E-40B4-BE5D-5F4CAB2E9130@gmail.com>
References: <CAMZfsd6f7-s4pVyiNPs2sVmi+EC6yMyjCJeYTPobm0f6ffE2_w@mail.gmail.com>
	<AF020D52-486E-40B4-BE5D-5F4CAB2E9130@gmail.com>
Date: Sat, 23 Apr 2016 10:36:14 -0400
Message-ID: <CAMZfsd57OovKqm6fV3oR85s2yTVy_5fy4qGX6nft4-ffFHcEaQ@mail.gmail.com>
From: "Ryan Elkholy, PhD, PE" <ryanelkholy@gmail.com>
To: openembedded-devel@lists.openembedded.org
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [oe] [meta-qt5] EGL Error : Could not create the egl surface: error = 0x300b
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
X-List-Received-Date: Sat, 23 Apr 2016 14:36:17 -0000
Content-Type: multipart/alternative; boundary=001a1140ebaa9a9793053127dd71

--001a1140ebaa9a9793053127dd71
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Yes, I do have directfb in DISTRO_FEATURES. The following is in my
local.conf:

http://pastebin.com/8vmN0r7Z

Furthermore, to even get this to build I had to alter the libva recipe
because it caused conflicts. Even though I was excluding x11 it would still
try to build libva-x11 due to the following RDEPENDS for egl in
libva_1.5.0_bb:

RDEPENDS_${PN}-egl =3D+ "${PN}-x11"

I changed this to

RDEPENDS_${PN}-egl =3D+ "${PN}"

in order for it to build. I know I probably should definitely not be doing
this, but it is for the purpose of testing.

All of this gets pulled in due to my images inclusion of hardware codecs
for hardware acceleration:

IMAGE_FEATURES +=3D "splash package-management ssh-server-openssh hwcodecs"

where hwcodecs is defined by the Intel BSP as the following:

MACHINE_HWCODECS ?=3D "va-intel gstreamer-vaapi-1.0"

So in the end, I can get the app to run without error by including x11
which allows me to fully include the Intel hardware acceleration, but I do
not want x11. I feel like there is the aforementioned dependency that
should not exist, but I am not in the position to know how to work around
this. As I said, if I alter the dependency of libva-egl on libva-x11 it
will build, but I get the EGL surface error.

Any insight is greatly appreciated.



On Fri, Apr 22, 2016 at 9:22 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Apr 22, 2016, at 6:07 PM, Ryan Elkholy, PhD, PE <
> ryanelkholy@gmail.com> wrote:
> >
> > Hello,
> >
> > I am am trying to make a build that includes meta-qt5 without x11 or
> > wayland on the Minnowboard Turbot (x86-64). I was successful in buildin=
g
> my
> > image but the problem occurred when testing my basic qt app on the imag=
e.
> > When trying to run the app I get the following error:
> >
> > EGL Error : Could not create the egl surface: error =3D 0x300
>
>
> Do you have =E2=80=98directfb=E2=80=99 in DISTRO_FEATURES
> >
> > I have been trying to find a solution for this for weeks with no luck. =
I
> am
> > able tu run my application when including x11, but I am trying to avoid
> it.
> > Does anyone know any solution for this? Any insight will be helpful
> because
> > I have been stumped for weeks. If nobody knows of a solution is it
> possible
> > to dig deeper into this error and see what is causing it? If so, how?
> >
> > Thanks
> > --
> > _______________________________________________
> > Openembedded-devel mailing list
> > Openembedded-devel@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>
>
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>
>

--001a1140ebaa9a9793053127dd71
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Yes, I do have directfb=
 in DISTRO_FEATURES. The following is in my local.conf:<br><br><a href=3D"h=
ttp://pastebin.com/8vmN0r7Z">http://pastebin.com/8vmN0r7Z</a><br><br></div>=
Furthermore, to even get this to build I had to alter the libva recipe beca=
use it caused conflicts. Even though I was excluding x11 it would still try=
 to build libva-x11 due to the following RDEPENDS for egl in libva_1.5.0_bb=
:<br><br>RDEPENDS_${PN}-egl =3D+ &quot;${PN}-x11&quot;<br><br></div>I chang=
ed this to<br><br>RDEPENDS_${PN}-egl =3D+ &quot;${PN}&quot;<br><br></div>in=
 order for it to build. I know I probably should definitely not be doing th=
is, but it is for the purpose of testing.<br><br></div>All of this gets pul=
led in due to my images inclusion of hardware codecs for hardware accelerat=
ion:<br><br>IMAGE_FEATURES +=3D &quot;splash package-management ssh-server-=
openssh hwcodecs&quot;<br><br></div>where hwcodecs is defined by the Intel =
BSP as the following:<br><br>MACHINE_HWCODECS ?=3D &quot;va-intel gstreamer=
-vaapi-1.0&quot;<br><br></div>So in the end, I can get the app to run witho=
ut error by including x11 which allows me to fully include the Intel hardwa=
re acceleration, but I do not want x11. I feel like there is the aforementi=
oned dependency that should not exist, but I am not in the position to know=
 how to work around this. As I said, if I alter the dependency of libva-egl=
 on libva-x11 it will build, but I get the EGL surface error. <br><br></div=
>Any insight is greatly appreciated. <br><div><div><br><br><div><div><div><=
div><div><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Fri, Apr 22, 2016 at 9:22 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D=
""><br>
&gt; On Apr 22, 2016, at 6:07 PM, Ryan Elkholy, PhD, PE &lt;<a href=3D"mail=
to:ryanelkholy@gmail.com">ryanelkholy@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am am trying to make a build that includes meta-qt5 without x11 or<b=
r>
&gt; wayland on the Minnowboard Turbot (x86-64). I was successful in buildi=
ng my<br>
&gt; image but the problem occurred when testing my basic qt app on the ima=
ge.<br>
&gt; When trying to run the app I get the following error:<br>
&gt;<br>
&gt; EGL Error : Could not create the egl surface: error =3D 0x300<br>
<br>
<br>
</span>Do you have =E2=80=98directfb=E2=80=99 in DISTRO_FEATURES<br>
<div class=3D""><div class=3D"h5">&gt;<br>
&gt; I have been trying to find a solution for this for weeks with no luck.=
 I am<br>
&gt; able tu run my application when including x11, but I am trying to avoi=
d it.<br>
&gt; Does anyone know any solution for this? Any insight will be helpful be=
cause<br>
&gt; I have been stumped for weeks. If nobody knows of a solution is it pos=
sible<br>
&gt; to dig deeper into this error and see what is causing it? If so, how?<=
br>
&gt;<br>
&gt; Thanks<br>
</div></div><span class=3D""><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; Openembedded-devel mailing list<br>
&gt; <a href=3D"mailto:Openembedded-devel@lists.openembedded.org">Openembed=
ded-devel@lists.openembedded.org</a><br>
&gt; <a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded=
-devel" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/=
mailman/listinfo/openembedded-devel</a><br>
<br>
</font></span><br>--<br>
_______________________________________________<br>
Openembedded-devel mailing list<br>
<a href=3D"mailto:Openembedded-devel@lists.openembedded.org">Openembedded-d=
evel@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-deve=
l" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailm=
an/listinfo/openembedded-devel</a><br>
<br></blockquote></div><br></div></div></div></div></div></div></div></div>=
</div></div>

--001a1140ebaa9a9793053127dd71--
