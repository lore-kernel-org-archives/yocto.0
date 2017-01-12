Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46573E0034A; Thu, 12 Jan 2017 08:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF34AE0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:50:07 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id r126so27927522wmr.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 08:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mHXXr340LcWceIxW6DQ56ddokozB7r9U+BVKj7o47vg=;
	b=KmcZ3cqFGsvIsbBMjMxCLL9LIjo4g2pwqIeAiCQNEF2SfE+oniz54oQQ8M/uqEwl5N
	utyH6W+YPINyVEeOcq3FT6f+F3n87mpv2RRIeVGGEBhvplgZJIpMFVf0Nn6jPWVwUAiz
	mmYKgd25eHIYKw5JjabpOUQj7DC973PZtul1cNYmfaHQbYuXhzZX51oFSYlFg20bFVqG
	RcYa0aFfZIcn0eL2kJprdteNyAbOumJx4RvpQbC21FKn8Opm2xSldR0DS3gjmjgP6muE
	BJ0nVgjioxmWrxbGpPnRJ10BWQa9/bZ7LgApb2p0dPFY4I4YHE1k98zbGezTjFCneuPu
	5+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mHXXr340LcWceIxW6DQ56ddokozB7r9U+BVKj7o47vg=;
	b=YJTdid5XkskgYwb8vM8vnCdJO1O06X/jRwc16gpfYiAaQGFGKjXA49WZgApkq1gqgq
	Kb6oUZdHgacFGxeFxhJDwb5OuWsTTiBI43MrwhF0EGZ3+nTpMIsXFYi8sWfUU95IhkgV
	a0MRmB+zNTeluvZniipS+78u8xA7nrqqXzT1QHVnofGmzTmOVXNAGxx4qjYEhl0ecUHk
	yIBwV6OUoAvz4b++/bCxdcMGMe2ZRz6KQFaQaqnD3Zyu9lGKRfyNjvTxApFDyKwwRaqx
	u/kwXH0kFKF5uDsQwu8lv5lrKUE5E71gi5sPtIXyHDX/f6d1swv+HkQ19TJj+Np4DlkZ
	Cm4Q==
X-Gm-Message-State: AIkVDXJudEE4IE2S31KDc0rEwYE7Z9GX6Uyu+OjcFBF4Ibl2su9GbxP2HoofdF5PRE45w68d+4HVHKVDPY8wnQ==
X-Received: by 10.223.134.104 with SMTP id 37mr7733419wrw.121.1484239807035;
	Thu, 12 Jan 2017 08:50:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.169.38 with HTTP; Thu, 12 Jan 2017 08:50:06 -0800 (PST)
In-Reply-To: <CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 12 Jan 2017 17:50:06 +0100
Message-ID: <CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
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
X-List-Received-Date: Thu, 12 Jan 2017 16:50:11 -0000
Content-Type: multipart/alternative; boundary=001a1146a5a875c01b0545e8820f

--001a1146a5a875c01b0545e8820f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2017 at 5:21 PM, Belisko Marek <marek.belisko@gmail.com>
wrote:

> On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
> <timothy.t.orling@linux.intel.com> wrote:
> > You can also build using Docker containers:
> > https://github.com/crops/docker-win-mac-docs/wiki
> Well the re is other limitation about slow filesystem access from
> docker on osx. There is workaround to use nfs but it's not possible to
> use nfs for building yocto - so it's kind of chicken-egg problem ;)
>

I shortly tested the CROPS docker-based setup after watching some
presentation at ELCE 2016 in Berlin. It basically worked but I experienced
the filesystem slowness your are talking about. I ended up waiting hours to
see a simple core-image-minimal build complete (even after giving more
cores to docker). One more point is that slightly more complex build
scenarios, i.e. building resin.os, also required tweaking docker run
parameters for the build container in order to give bitbake access to
features like loop devices it needed (not always easily debuggable issues
indeed). Turned out I decided to stick with more canonical linux based
environments for the moment.

Anyway, the technology behind CROPS is *very* interesting to me, and I'd
like to hear from people closely involved (Tim?) what the state of the art
is and what we can expect to see in the near future. IIRC, the roadmap for
Yocto 2.3 release was supposed to resurrect the Eclipse plugin and adopt
CROPS as an alternative for running eSDK in a seamless way on different
development host OSs. Beside from the images on docker hub and the github
projects that didn't have high activity in the latest months, I hardly find
discussions and documentation on the whole approach. Isn't this hot enough
anymore or are there big issues that will prevent this technology from
taking off. I often manage SDKs for Windows-minded developers and I
strongly yearn to find a better approach to help them feel at home while
building stuff for OE/Yocto based systems...



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
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1146a5a875c01b0545e8820f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jan 12, 2017 at 5:21 PM, Belisko Marek <span dir=3D"ltr">&lt;<a href=3D=
"mailto:marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On=
 Thu, Jan 12, 2017 at 4:39 PM, Tim Orling<br>
&lt;<a href=3D"mailto:timothy.t.orling@linux.intel.com">timothy.t.orling@li=
nux.intel.<wbr>com</a>&gt; wrote:<br>
&gt; You can also build using Docker containers:<br>
&gt; <a href=3D"https://github.com/crops/docker-win-mac-docs/wiki" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/crops/<wbr>docker-win-mac-d=
ocs/wiki</a><br>
</span>Well the re is other limitation about slow filesystem access from<br=
>
docker on osx. There is workaround to use nfs but it&#39;s not possible to<=
br>
use nfs for building yocto - so it&#39;s kind of chicken-egg problem ;)<br>=
</blockquote><div><br></div><div>I shortly tested the CROPS docker-based se=
tup after watching some presentation at ELCE 2016 in Berlin. It basically w=
orked but I experienced the filesystem slowness your are talking about. I e=
nded up waiting hours to see a simple core-image-minimal build complete (ev=
en after giving more cores to docker). One more point is that slightly more=
 complex build scenarios, i.e. building resin.os, also required tweaking do=
cker run parameters for the build container in order to give bitbake access=
 to features like loop devices it needed (not always easily debuggable issu=
es indeed). Turned out I decided to stick with more canonical linux based e=
nvironments for the moment.</div><div><br></div><div>Anyway, the technology=
 behind CROPS is *very* interesting to me, and I&#39;d like to hear from pe=
ople closely involved (Tim?) what the state of the art is and what we can e=
xpect to see in the near future. IIRC, the roadmap for Yocto 2.3 release wa=
s supposed to resurrect the Eclipse plugin and adopt CROPS as an alternativ=
e for running eSDK in a seamless way on different development host OSs. Bes=
ide from the images on docker hub and the github projects that didn&#39;t h=
ave high activity in the latest months, I hardly find discussions and docum=
entation on the whole approach. Isn&#39;t this hot enough anymore or are th=
ere big issues that will prevent this technology from taking off. I often m=
anage SDKs for Windows-minded developers and I strongly yearn to find a bet=
ter approach to help them feel at home while building stuff for OE/Yocto ba=
sed systems...=C2=A0</div><div><br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
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
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">marek<br>
<br>
--<br>
as simple and primitive as possible<br>
------------------------------<wbr>-------------------<br>
Marek Belisko - OPEN-NANDRA<br>
Freelance Developer<br>
<br>
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
Tel: <a href=3D"tel:%2B421%20915%20052%20184" value=3D"+421915052184">+421 =
915 052 184</a><br>
skype: marekwhite<br>
twitter: #opennandra<br>
web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_blank=
">http://open-nandra.com</a><br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div></div>

--001a1146a5a875c01b0545e8820f--
