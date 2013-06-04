Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53168E014A5
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:42:27 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id m46so224489wev.30
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 06:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eTqavDxmqq39bi4oxVD+oRSzOrj5pQugm7z8CbDspMI=;
	b=kHtMSmzOz+soevk+vFeEJTtssXSilQEO1YgK4M9bTDcy0OXwoYNzySD6uykioo6CWK
	qBpp/ls4Eh0y6v++DthokW5XLhc6SRkzfyJiPqLsX6b/BEF6WDhv1w6iyIlV7Y1sMiqy
	XGJ97ks7WjVNFMNhPFHuUYh153H7zcQlIK0nqKiYBb84Tcyk3WiO3fNN0frgjWUlgGXF
	6o/S/hET1yD34ASQ+PJCVDd/ualShug94P+cOstU25b29HQZfIR6vQZpI414e8y0aLtF
	BFacF1A6R4QZebi1LtX8EXzyUOoE+vU99vE2z19u3cRf5PS2GHKuBg5ax/pirOQMF6OI
	r43w==
X-Received: by 10.180.21.242 with SMTP id y18mr1610137wie.7.1370353346133;
	Tue, 04 Jun 2013 06:42:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.35 with HTTP; Tue, 4 Jun 2013 06:42:06 -0700 (PDT)
In-Reply-To: <62291455.6hREtkkLEB@helios>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<8731013.X4s1gPWXY4@helios>
	<CAAGt+t100v=mrKE4gbJnGqn5ezJADUFwnxdWQ0xzK8SWqyva6g@mail.gmail.com>
	<62291455.6hREtkkLEB@helios>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 4 Jun 2013 15:42:06 +0200
Message-ID: <CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 13:42:27 -0000
Content-Type: multipart/alternative; boundary=047d7bb70b2c69cf0e04de544032

--047d7bb70b2c69cf0e04de544032
Content-Type: text/plain; charset=ISO-8859-1

I think yes. I usually give just *source oe-init-build-env *command, this
is how i used earlier and failed. May be that is the reason it has created
another build directory in /poky.
What should be the command before building? i guess this(
TEMPLATECONF=meta-gumstix-extras/conf
source ./poky/oe-init-build-env ). so, every time i just need to give
TEMPLATECONF  command before building?

Lastly, my meta-bebot directory should be as following ?

/poky
  --meta-bebot
      --conf
         --layer.conf
  --recipes-bebot
    --hello
      --hello.bb

and meta-bebot path should be set in bblayers.conf file?

Please correct me if i am going wrong.

Thank You.


On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Tuesday 04 June 2013 15:19:49 Zafrullah Syed wrote:
> > On Tue, Jun 4, 2013 at 12:58 PM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> > > On Tuesday 04 June 2013 12:42:12 Zafrullah Syed wrote:
> > > > previously, I successfully build *gumstix-console-image* and I have
> > >
> > > created
> > >
> > > > *meta-bebot* folder for my recipe.
> > > >
> > > > My Yocto tree as follows:
> > > >
> > > > Yocto
> > > >
> > > >  --build
> > > >
> > > >    --conf
> > > >
> > > >        --bblayers.conf ( I added /home/siguser/yocto2013-05-08/poky/*
> > > >
> > > > meta-bebot* \ ) path
> > > >
> > > >        --local.conf ( I added IMAGE_INSTALL_append = " hello" ) under
> > > >
> > > > *Additional
> > > > image features*
> > > >
> > > >    --downloads
> > > >    --tmp
> > > >    --
> > > >    --
> > > >
> > > >  --poky
> > > >
> > > >     --bitbake
> > > >     --build
> > > >     --documentation
> > > >     --meta
> > > >     --*meta-bebot*
> > > >
> > > > *        --conf*
> > > > *            --bblayers.conf *(I added
> > >
> > >  /home/siguser/yocto2013-05-08/poky/*
> > >
> > > > meta-bebot* \ ) path
> > >
> > > If I understand correctly from the above that you have put
> bblayers.conf
> > > in
> > > conf/ under your meta-bebot layer, that is not correct. bblayers.conf
> > > needs to
> > > be under conf/ in your build directory as usual.
> >
> > my bblayers.conf file lies in  poky/meta-bebot/conf/bblayers.conf. do I
> > need to remove this file and keep it in which build folder? I mean
> /yocto/*
> > build*/conf/bblayers.conf or /yocto/*poky*/build/conf/bblayers.conf?
>
> Yes, conf/bblayers.conf is supposed to be in the build directory; and
> whichever build directory you are actually using. The build directory can
> be
> anywhere, but you shouldn't really have two build directories unless you
> know
> what you are doing - did you perhaps run oe-init-build-env with no
> arguments
> in two different places? I suspect this is what has happened.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Regards,
Zafrullah Syed

--047d7bb70b2c69cf0e04de544032
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>I think yes. I usually give just=A0<i>source oe=
-init-build-env </i>command, this is how i used earlier and failed. May be =
that is the reason it has created another build directory in /poky.=A0</div=
><div style>

What should be the command before building? i guess this(=A0<span style=3D"=
background-color:transparent;font-family:Consolas,&#39;Liberation Mono&#39;=
,Courier,monospace;font-size:12px;color:rgb(51,51,51);line-height:19px">TEM=
PLATECONF=3Dmeta-gumstix-extras/conf source ./poky/oe-init-build-env</span>=
=A0). so, every time i just need to give=A0<span style=3D"background-color:=
transparent;font-family:Consolas,&#39;Liberation Mono&#39;,Courier,monospac=
e;font-size:12px;color:rgb(51,51,51);line-height:19px">TEMPLATECONF=A0</spa=
n>=A0command before building?</div>

<div style><br></div><div style>Lastly, my meta-bebot directory should be a=
s following ?</div><div style><br></div><div style>/poky</div><div style>=
=A0 --meta-bebot</div><div style>=A0 =A0 =A0 --conf</div><div style>=A0 =A0=
 =A0 =A0 =A0--layer.conf</div>

<div style>=A0 --recipes-bebot</div><div style>=A0 =A0 --hello</div><div st=
yle>=A0 =A0 =A0 --<a href=3D"http://hello.bb">hello.bb</a></div><div style>=
<br></div><div style>and meta-bebot path should be set in bblayers.conf fil=
e?</div><div style>

<br></div><div style>Please correct me if i am going wrong.</div><div style=
><br></div><div style>Thank You.</div></div><div class=3D"gmail_extra"><br>=
<br><div class=3D"gmail_quote">On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleto=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" ta=
rget=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On T=
uesday 04 June 2013 15:19:49 Zafrullah Syed wrote:<br>
&gt; On Tue, Jun 4, 2013 at 12:58 PM, Paul Eggleton &lt;<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.i=
ntel.com</a>&gt; wrote:<br>
&gt; &gt; On Tuesday 04 June 2013 12:42:12 Zafrullah Syed wrote:<br>
&gt; &gt; &gt; previously, I successfully build *gumstix-console-image* and=
 I have<br>
&gt; &gt;<br>
&gt; &gt; created<br>
&gt; &gt;<br>
&gt; &gt; &gt; *meta-bebot* folder for my recipe.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; My Yocto tree as follows:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Yocto<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0--build<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0--conf<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0 =A0 =A0--bblayers.conf ( I added /home/siguser/yocto=
2013-05-08/poky/*<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; meta-bebot* \ ) path<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0 =A0 =A0--local.conf ( I added IMAGE_INSTALL_append =
=3D &quot; hello&quot; ) under<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; *Additional<br>
&gt; &gt; &gt; image features*<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0--downloads<br>
&gt; &gt; &gt; =A0 =A0--tmp<br>
&gt; &gt; &gt; =A0 =A0--<br>
&gt; &gt; &gt; =A0 =A0--<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0--poky<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; =A0 =A0 --bitbake<br>
&gt; &gt; &gt; =A0 =A0 --build<br>
&gt; &gt; &gt; =A0 =A0 --documentation<br>
&gt; &gt; &gt; =A0 =A0 --meta<br>
&gt; &gt; &gt; =A0 =A0 --*meta-bebot*<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; * =A0 =A0 =A0 =A0--conf*<br>
&gt; &gt; &gt; * =A0 =A0 =A0 =A0 =A0 =A0--bblayers.conf *(I added<br>
&gt; &gt;<br>
&gt; &gt; =A0/home/siguser/yocto2013-05-08/poky/*<br>
&gt; &gt;<br>
&gt; &gt; &gt; meta-bebot* \ ) path<br>
&gt; &gt;<br>
&gt; &gt; If I understand correctly from the above that you have put bblaye=
rs.conf<br>
&gt; &gt; in<br>
&gt; &gt; conf/ under your meta-bebot layer, that is not correct. bblayers.=
conf<br>
&gt; &gt; needs to<br>
&gt; &gt; be under conf/ in your build directory as usual.<br>
&gt;<br>
&gt; my bblayers.conf file lies in =A0poky/meta-bebot/conf/bblayers.conf. d=
o I<br>
</div></div>&gt; need to remove this file and keep it in which build folder=
? I mean /yocto/*<br>
&gt; build*/conf/bblayers.conf or /yocto/*poky*/build/conf/bblayers.conf?<b=
r>
<br>
Yes, conf/bblayers.conf is supposed to be in the build directory; and<br>
whichever build directory you are actually using. The build directory can b=
e<br>
anywhere, but you shouldn&#39;t really have two build directories unless yo=
u know<br>
what you are doing - did you perhaps run oe-init-build-env with no argument=
s<br>
in two different places? I suspect this is what has happened.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:=
collapse;color:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><fon=
t color=3D"#888888" face=3D"arial, sans-serif"><span style=3D"border-collap=
se:collapse"><br>

</span></font></div>
</div>

--047d7bb70b2c69cf0e04de544032--
