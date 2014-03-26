Return-Path: <diego.sueiro@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C560E00B72
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 06:13:09 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id i8so2507795qcq.9
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 06:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CU7JXW+QPW6B4jrahQeJVpJYzzyhQrXWquFMQlQAik4=;
	b=GaSFfmNSKbu7DYWR/ITTyRLGvLHrL3rP4lhz/u8fizvkiLDqk+nUtJ7Kiz3QgcD4EG
	k+dsmBUYziKtGDz3yci01jMF+V7tKxcQtvzMvmuspOSqfaxU0/nDu/FeCUKMQu5E2CcG
	OyRpi2DYbwAg/K2e2sBdbYsPrRQIOtf0kfVYQukKixS4tVd57jUPToC6M2C2uR2+B04q
	+sXgJh7c0OnISUI52frL0PYTIf2sfK4l9BkHqQlwcUPdotmoWHboOo0/yKRodYV5sPme
	LjKDrr+EI9bol5u/NP2DcOY5h4eZibT4qUr0/iT/BNh0p8+4dWWr9nFkCGQosABcj7nA
	Rk8A==
X-Received: by 10.224.72.69 with SMTP id l5mr30875475qaj.1.1395839588489; Wed,
	26 Mar 2014 06:13:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.48 with HTTP; Wed, 26 Mar 2014 06:12:48 -0700 (PDT)
In-Reply-To: <CANyK_8dHzo-TrO6j7mxHoieSGsvf0KSqgjhtJ2_bTtRRjjN6xw@mail.gmail.com>
References: <CAMCfZKG3ku29ztup_Dc0HLrnTBB9SirC+VM2QFjChX6Pwv=oZQ@mail.gmail.com>
	<CANyK_8fBM+cR3GZ71PFpvrVkhDWzp4bWrQvCk7bxhuUGnEUASQ@mail.gmail.com>
	<CAMCfZKEr6gZkQ0Mvr6+YWjB_9wpD_aH4EoanvB61Q=UdG-Zk4g@mail.gmail.com>
	<CANyK_8dHzo-TrO6j7mxHoieSGsvf0KSqgjhtJ2_bTtRRjjN6xw@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 26 Mar 2014 10:12:48 -0300
Message-ID: <CAMCfZKGhFs_5naGjSeii_Y9BJpmkmFq7zUNB0EP-xHxFFSCA+Q@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Get rid of opkg install error
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
X-List-Received-Date: Wed, 26 Mar 2014 13:13:12 -0000
Content-Type: multipart/alternative; boundary=047d7bdc7826d5dfad04f5823a5d

--047d7bdc7826d5dfad04f5823a5d
Content-Type: text/plain; charset=ISO-8859-1

Paul,

On Wed, Mar 26, 2014 at 8:54 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 26 March 2014 11:29, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> >
> > On Wed, Mar 26, 2014 at 8:16 AM, Paul Barker <paul@paulbarker.me.uk>
> wrote:
> >>
> >> On 26 March 2014 09:47, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> >> > Folks,
> >> >
> >> > I have a image recipe which installs some custom files on rootfs.
> >> > Instead of having a bbappend for each package that provides those
> files
> >> > I
> >> > want to concentrate it on image recipe.
> >>
> >> Why do you want to merge all your custom files into one recipe? With
> >> them separated into the packages they affect you can add/remove
> >> packages a lot easier in the future.
> >
> >
> > Because I want to have different image recipes for different proposes.
> > For example: One image with eth0 on dhcp and another one with static ip.
> Or
> > some different images for product variations.
> >
>
> Ok, I understand you now. I need to work out a way of handling this
> for future systems I'll be working on but it's not something I've
> needed to do so far.
>
> I would probably lean in the direction of using bbappends and
> generating all config packages during a build (because a package of
> custom config files shouldn't have a long build time). So you'd have
> init-ifupdown-image1config, init-ifupdown-image2config, etc. Then in
> each image recipe I'd select which package is installed.
>
> That does leave it spread between bbappend files as it's grouped by
> functionality rather than by target image. I'm not sure how to
> efficiently group it the other way around.
>

Thanks for the suggestion.


>
> >>
> >>
> >> >
> >> > The problem is that I'm receiving the following error:
> >> >
> >> > "But that file is already provided by package"
> >> >
> >> >
> >> > Is there a way to get rid of this error?
> >>
> >> The only thing I can think of is to use bbappends to prevent the
> >> original files from installing but not to add the replacement files.
> >> Then have a single recipe which packages all the replacement files.
> >> That way only one package provides each file.
> >
> >
> > This is a possible solution. But if I build an image without these custom
> > files (core-image-minimal for example) the original ones will not be
> > shipped. Am I correct?
> > Or maybe I can check for a custom variable defined at local.conf and
> check
> > for it on bbappend to know if I have to remove or not the original files.
> >
>
> Yes, that would be the issue there. Not sure how well a local.conf
> check would work.


Well, I'll git it a try.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--047d7bdc7826d5dfad04f5823a5d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Paul,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Wed, Mar 26, 2014 at 8:54 AM, Paul=
 Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" targ=
et=3D"_blank">paul@paulbarker.me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 26 March 2014 11:29, Dieg=
o Sueiro &lt;<a href=3D"mailto:diego.sueiro@gmail.com">diego.sueiro@gmail.c=
om</a>&gt; wrote:<br>


&gt;<br>
&gt; On Wed, Mar 26, 2014 at 8:16 AM, Paul Barker &lt;<a href=3D"mailto:pau=
l@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 26 March 2014 09:47, Diego Sueiro &lt;<a href=3D"mailto:diego.s=
ueiro@gmail.com">diego.sueiro@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Folks,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have a image recipe which installs some custom files on roo=
tfs.<br>
&gt;&gt; &gt; Instead of having a bbappend for each package that provides t=
hose files<br>
&gt;&gt; &gt; I<br>
&gt;&gt; &gt; want to concentrate it on image recipe.<br>
&gt;&gt;<br>
&gt;&gt; Why do you want to merge all your custom files into one recipe? Wi=
th<br>
&gt;&gt; them separated into the packages they affect you can add/remove<br=
>
&gt;&gt; packages a lot easier in the future.<br>
&gt;<br>
&gt;<br>
&gt; Because I want to have different image recipes for different proposes.=
<br>
&gt; For example: One image with eth0 on dhcp and another one with static i=
p. Or<br>
&gt; some different images for product variations.<br>
&gt;<br>
<br>
</div>Ok, I understand you now. I need to work out a way of handling this<b=
r>
for future systems I&#39;ll be working on but it&#39;s not something I&#39;=
ve<br>
needed to do so far.<br>
<br>
I would probably lean in the direction of using bbappends and<br>
generating all config packages during a build (because a package of<br>
custom config files shouldn&#39;t have a long build time). So you&#39;d hav=
e<br>
init-ifupdown-image1config, init-ifupdown-image2config, etc. Then in<br>
each image recipe I&#39;d select which package is installed.<br>
<br>
That does leave it spread between bbappend files as it&#39;s grouped by<br>
functionality rather than by target image. I&#39;m not sure how to<br>
efficiently group it the other way around.<br></blockquote><div><br></div><=
div style>Thanks for the suggestion.</div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">


<div class=3D""><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The problem is that I&#39;m receiving the following error:<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &quot;But that file is already provided by package&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Is there a way to get rid of this error?<br>
&gt;&gt;<br>
&gt;&gt; The only thing I can think of is to use bbappends to prevent the<b=
r>
&gt;&gt; original files from installing but not to add the replacement file=
s.<br>
&gt;&gt; Then have a single recipe which packages all the replacement files=
.<br>
&gt;&gt; That way only one package provides each file.<br>
&gt;<br>
&gt;<br>
&gt; This is a possible solution. But if I build an image without these cus=
tom<br>
&gt; files (core-image-minimal for example) the original ones will not be<b=
r>
&gt; shipped. Am I correct?<br>
&gt; Or maybe I can check for a custom variable defined at local.conf and c=
heck<br>
&gt; for it on bbappend to know if I have to remove or not the original fil=
es.<br>
&gt;<br>
<br>
</div>Yes, that would be the issue there. Not sure how well a local.conf<br=
>
check would work.</blockquote></div><div class=3D"gmail_extra"><br></div>We=
ll, I&#39;ll git it a try.<br><br><br clear=3D"all"><div><div dir=3D"ltr"><=
div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administr=
ador do Embarcados<br>

<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;=
utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div>

</div>
</div></div>

--047d7bdc7826d5dfad04f5823a5d--
