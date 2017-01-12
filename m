Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D156E0034A; Thu, 12 Jan 2017 10:12:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F215E0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:12:40 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id r126so5505009wmr.3
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kyCYMIV9imTYP3IZ9txtY5r/2Dmeq9pf3UAE4dqpY2Q=;
	b=e4+53PwVqPNVJBexuFdxY1JlmcLjLJRMUXgnkRilnQhwS+sJbrDhvQXOpeski37puj
	I7Y9wN8j+WMzxNpLBmgg47tTfoscAJ4/BR2Y2WViLR9NM+xX35LlpG9cv2cZRDcmkuNq
	FDCGFNU5jUoseZ1Ky8zayhGIZt8JofG0VH/prkA5rT57PQBxGcQ2p/qUr0DRpzOzoA8W
	RB9ygT5VPCP/gd7RWzqp7G8wrOA/du1LUgbEkWGRATM+T62ZFMC0Ocv5iAgkMXsrwGS6
	Yve/iool04AIgCQiCySV2W55mPtnq3Dk6vMA3/0/EGbc5/UmkNga2qOdFdYbRHOsW4V9
	TrFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kyCYMIV9imTYP3IZ9txtY5r/2Dmeq9pf3UAE4dqpY2Q=;
	b=ZX7Rss4QnUjj++3BsuA774MPIL3Qei5PfguU/4JkImndAdP7ZQQ2bpJZk/CGUW14C7
	wOAGMyOJjIkhiMNwjIE1ICXvjJxskH/ziC7XccxJm5/2yzdAIyOiyZJlju//pgdyy/+d
	NN59Z3/VkIjlmMHFN3tSj3dRXaIBycuMHsa/A56Pbwp8gTpmwMXdnh9F3BlYpWhxOrXP
	0FHB6x2I0PQbOSrQoqEM19J+z/cUD+n49u3srxa6It4UH11hgP0cRtH+PAzpyir3sY2q
	rX3n7FRRim1K3PKpWjbgpM1zP0La5D+HwIecW09QFyVRAa0/WDhEDv7H81k2XNA5+FDO
	LO5w==
X-Gm-Message-State: AIkVDXJhXSexoDAKsTqHJhM6G+OkAB+KU/I+XFeRt6eY5o3c0WqFbG5weoKP3ov2qGH2arrrOFsdprftz67yzw==
X-Received: by 10.223.162.10 with SMTP id p10mr8281753wra.160.1484244759282;
	Thu, 12 Jan 2017 10:12:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.169.38 with HTTP; Thu, 12 Jan 2017 10:12:38 -0800 (PST)
In-Reply-To: <CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 12 Jan 2017 19:12:38 +0100
Message-ID: <CAC+thW1osKnAEFqaDtQe-+9pE6JpSJUMeU86Yb+GE5oQ9XDZzg@mail.gmail.com>
To: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 18:12:42 -0000
Content-Type: multipart/alternative; boundary=f403045ed4b2a30ac70545e9a9c4

--f403045ed4b2a30ac70545e9a9c4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2017 at 6:55 PM, Maciej Borz=C4=99cki <maciej.borzecki@rndi=
ty.com
> wrote:

> On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
> <timothy.t.orling@linux.intel.com> wrote:
> > You can also build using Docker containers:
> > https://github.com/crops/docker-win-mac-docs/wiki
>
> IIRC docker on mac relies on docker-machine, which in turn spins up a
> virtualbox VM.
>

Not anymore! There's a native implementation [1] but still a linux kernel
around anyway! ;-)

[1]
https://www.docker.com/docker-news-and-press/docker-released-native-mac-and=
-windows-apps-optimize-developer-experience


>
>
> >
> > On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com> wrote=
:
> >
> >
> > On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com> wrote=
:
> >>
> >> Is there any documentation for running the Yocto build system on Mac O=
S
> X
> >> or macOS as Apple now calls it? I am working with the Intel Aero board=
.
> >> Before I go down the rabbit hole of fixing issues like this one (and I
> am
> >> using the bash shell), I=E2=80=99d like to know if anyone has build it=
 on os x
> >> before.
> >
> >
> > If you install all of the GNU tools using brew or similar and put them
> first
> > on $PATH then you can get bitbake started.  Then you need to stub out t=
he
> > linux-specific bits in bitbake.  I've previously started on this work
> > already
> > (http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/
> log/?h=3Dross/darwin).
> > The next step is figuring out how to configure OE to build and link
> natively
> > on OSX using LLVM instead of GCC.
> >
> > However all of this is mostly academic because in Sierra (iirc) onwards
> > there is tighter security on processes, which means that pseudo won't
> work
> > even if you port it to macOS.
> >
> > So unless you fancy some non-trivial engineering the short version is
> just
> > use something like Docker to run a Linux system on your Mac.
> >
> > Ross
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> Maciej Borzecki
> RnDity
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045ed4b2a30ac70545e9a9c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jan 12, 2017 at 6:55 PM, Maciej Borz=C4=99cki <span dir=3D"ltr">&lt;<a =
href=3D"mailto:maciej.borzecki@rndity.com" target=3D"_blank">maciej.borzeck=
i@rndity.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><span class=3D"gmail-">On Thu, Jan 12, 2017 at 4:39 PM, Tim Or=
ling<br>
&lt;<a href=3D"mailto:timothy.t.orling@linux.intel.com">timothy.t.orling@li=
nux.intel.<wbr>com</a>&gt; wrote:<br>
</span><span class=3D"gmail-">&gt; You can also build using Docker containe=
rs:<br>
&gt; <a href=3D"https://github.com/crops/docker-win-mac-docs/wiki" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/crops/<wbr>docker-win-mac-d=
ocs/wiki</a><br>
<br>
</span>IIRC docker on mac relies on docker-machine, which in turn spins up =
a<br>
virtualbox VM.<br></blockquote><div><br></div><div>Not anymore! There&#39;s=
 a native implementation [1] but still a linux kernel around anyway! ;-)</d=
iv><div><br></div><div>[1]=C2=A0<a href=3D"https://www.docker.com/docker-ne=
ws-and-press/docker-released-native-mac-and-windows-apps-optimize-developer=
-experience">https://www.docker.com/docker-news-and-press/docker-released-n=
ative-mac-and-windows-apps-optimize-developer-experience</a></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
<br>
&gt;<br>
&gt; On Jan 12, 2017, at 7:34 AM, Burton, Ross &lt;<a href=3D"mailto:ross.b=
urton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On 12 January 2017 at 15:14, Roger Smith &lt;<a href=3D"mailto:roger@s=
entientblue.com">roger@sentientblue.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Is there any documentation for running the Yocto build system on M=
ac OS X<br>
&gt;&gt; or macOS as Apple now calls it? I am working with the Intel Aero b=
oard.<br>
&gt;&gt; Before I go down the rabbit hole of fixing issues like this one (a=
nd I am<br>
&gt;&gt; using the bash shell), I=E2=80=99d like to know if anyone has buil=
d it on os x<br>
&gt;&gt; before.<br>
&gt;<br>
&gt;<br>
&gt; If you install all of the GNU tools using brew or similar and put them=
 first<br>
&gt; on $PATH then you can get bitbake started.=C2=A0 Then you need to stub=
 out the<br>
&gt; linux-specific bits in bitbake.=C2=A0 I&#39;ve previously started on t=
his work<br>
&gt; already<br>
&gt; (<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log=
/?h=3Dross/darwin" rel=3D"noreferrer" target=3D"_blank">http://git.yoctopro=
ject.org/<wbr>cgit/cgit.cgi/poky-contrib/<wbr>log/?h=3Dross/darwin</a>).<br=
>
&gt; The next step is figuring out how to configure OE to build and link na=
tively<br>
&gt; on OSX using LLVM instead of GCC.<br>
&gt;<br>
&gt; However all of this is mostly academic because in Sierra (iirc) onward=
s<br>
&gt; there is tighter security on processes, which means that pseudo won&#3=
9;t work<br>
&gt; even if you port it to macOS.<br>
&gt;<br>
&gt; So unless you fancy some non-trivial engineering the short version is =
just<br>
&gt; use something like Docker to run a Linux system on your Mac.<br>
&gt;<br>
&gt; Ross<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
<br>
<br>
<br>
</div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
Maciej Borzecki<br>
RnDity<br>
</font></span><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--f403045ed4b2a30ac70545e9a9c4--
