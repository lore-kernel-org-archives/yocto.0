Return-Path: <varun292006@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF23E0154F
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 12:04:27 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id jt11so12932476pbb.22
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 12:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=kn2SGLDYBLIp5NCwAibaEKsh37M5Lnc/y5v7SGYeO98=;
	b=CBjc7ZQiH/egKpsXCfjKwtWaBsj7wskQxD4ytr2xdMYAfCx75yC0WLOkNagUjydUne
	43Rn/2g3hQwdD7V8ZDI7IBMTnKWnA+R6AeEcTW4DvwHq7TQrAky6dT5aiM6CUCoAKSPL
	hc4vvOdwOybYmBzbUjCLjA8gFh+V553xbXj19Q0KmmUHUSUoxk2Bg1kysU+YViDygsN+
	F7FIa2BURblk0uUmLHIx1U/xtrMBvRAhQbztb+YAM69Tb0k47oTEK9jgNYN9E+O1koRR
	7rFqgvr5rygSpLQDdL3YWq+b1C0MRfod4F8jb1MAwsTL7JN+BSCS1DoE+d47bQ34PqRc
	thfQ==
MIME-Version: 1.0
X-Received: by 10.66.122.99 with SMTP id lr3mr1097441pab.187.1372187067546;
	Tue, 25 Jun 2013 12:04:27 -0700 (PDT)
Received: by 10.68.112.65 with HTTP; Tue, 25 Jun 2013 12:04:27 -0700 (PDT)
In-Reply-To: <1690360.8lqJBmT90c@helios>
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<CAGxOggH4UzCDOE5m=qFTPMDYmO1-jdtV1KtTn0XmyAnEd_pSfg@mail.gmail.com>
	<CAGxOggH_6stRyaVVvY3ZrzZjOMZPQR17TMhbnnsY2RaOeH-vWQ@mail.gmail.com>
	<1690360.8lqJBmT90c@helios>
Date: Wed, 26 Jun 2013 00:34:27 +0530
Message-ID: <CAGxOggFQL2ehH4XBGD+L9k773hgJu5hx61rmnUqxCn033W9GXA@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Tue, 25 Jun 2013 19:04:28 -0000
Content-Type: multipart/alternative; boundary=047d7b2e0e8fba066a04dfff32b3

--047d7b2e0e8fba066a04dfff32b3
Content-Type: text/plain; charset=ISO-8859-1

Thanks a ton for the reply Paul.... :)
But how to clone the meta-openembedded repository. I am not very clear on
the suggestion given by you.  :(
Can you please provide some steps on how to do this (cloning open-embedded
repository).

//
Varun


On Tue, Jun 25, 2013 at 4:16 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Sunday 23 June 2013 00:34:17 varun bhatnagar wrote:
> > I am trying to compile my code using yocto. For that I have created two
> > layers: "meta-networking" and "meta-oe". I have added these dependencies
> in
> > bblayer.conf too. But these are not getting build. Can anyone please tell
> > me what should I do to make this work.
> >
> > //
> > Varun
> >
> > ----------
> > From: *Gary Thomas* <gary@mlbassoc.com>
> > Date: Mon, Jun 17, 2013 at 11:03 PM
> > To: yocto@yoctoproject.org
> >
> >
> > More details are needed to be able to help.
> >
> > What do you mean "not getting built"?  Do you mean that if you
> > try to build recipe XYZ which is in one of those layers that it's
> > not being built?  Or perhaps you mean something else?
> >
> > What do you mean "created two layers: ..."?  Did you just extract
> > these from meta-openembedded?  or something else?
> >
> > > I am building one of my application using yocto by giving bitbake -k
> > > core-image-minimal command but I am facing some errors as this
> application
> > > requires two libraries
> > > *1) net-snmp*
> > > *2) fuse*
> > > *
> > >
> > > *
> > > I have one link where in they are asking to add these two libraries in
> the
> > > form of layers and then execute bitbake -k core-image-minimal command.
> > >
> > > I am pasting one screenshot below:
> > >
> > > As you can I have added two layers meta-networking (contains net-snmp)
> and
> > > meta-oe(contains fuse). After this I added these layers in
> > > *build/conf/bblayer.conf.*
> > > *
> > > *
> > > *
> > >
> > > *
> > > After this I again executed bitbake -k core-image-minimal command but I
> > > faced the same error as before... :(
> > > Is there anyway that these layers get recognized? Do I need to execute
> > > some other command?
> >
> > Obviously, this is a recipe that you made.
> >
> > Does it show these dependencies?  e.g. a line like this in your recipe
> file:
> > DEPENDS = "net-snmp fuse"
> > (or whatever the *packages* that you need are)
> >
> > Bitbake can't read your mind; it will only build the recipes you ask and
> the
> > dependencies which are explicitly specified in that build chain.
> >
> > If you still have trouble, try sending your recipe (.bb file and all
> other
> > components you might have), bblayers.conf, etc to the list because we're
> not
> > mind readers either :-)
> >
> > > On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S
> > > <sudhangathan@gmail.com<mailto:>
> > > sudhangathan@gmail.com**>> wrote:
> > >     Can you please paste your command and it's output here..! If you
> don't
> > >
> > > mind..!! Or explain with equivalent clarity. It
> > >
> > >     l will good if you can also put in your directory structure.
> > >
> > >     ------------------------------**---
> > >     Sudhangathan BS
> > >     Ph:(+91) 9731-905-205
> > >     ------------------------------**---
> > >
> > >
> > >     On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <
> > >
> > > varun292006@gmail.com <mailto:varun292006@gmail.com>**> wrote:
> > >         Actually the package which I am building is having some
> > >
> > > dependencies on some libraries. So I provided those libraries with the
> > > help of creating layers. I did not extract those from
> meta-openembedded,
> > > instead, I manually created two layers and added them in bblayer.conf
> file.
>
> Rather than creating these layers from scratch (which I think is the most
> likely source of the problem) I'd suggest starting by cloning the original
> meta-openembedded repository and building your recipe with the
> meta-networking
> and meta-oe layers enabled in your bblayers.conf file.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b2e0e8fba066a04dfff32b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a ton for the reply Paul.... :)<div>But how to clon=
e the meta-openembedded repository. I am not very clear on the suggestion g=
iven by you. =A0:(</div><div>Can you please provide some steps on how to do=
 this (cloning open-embedded repository).</div>
<div><br></div><div>//</div><div>Varun</div></div><div class=3D"gmail_extra=
"><br><br><div class=3D"gmail_quote">On Tue, Jun 25, 2013 at 4:16 PM, Paul =
Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.=
com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<=
br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Sunday 23 June 2013 00:=
34:17 varun bhatnagar wrote:<br>
&gt; I am trying to compile my code using yocto. For that I have created tw=
o<br>
&gt; layers: &quot;meta-networking&quot; and &quot;meta-oe&quot;. I have ad=
ded these dependencies in<br>
&gt; bblayer.conf too. But these are not getting build. Can anyone please t=
ell<br>
&gt; me what should I do to make this work.<br>
&gt;<br>
&gt; //<br>
&gt; Varun<br>
&gt;<br>
&gt; ----------<br>
</div>&gt; From: *Gary Thomas* &lt;<a href=3D"mailto:gary@mlbassoc.com">gar=
y@mlbassoc.com</a>&gt;<br>
<div class=3D"im">&gt; Date: Mon, Jun 17, 2013 at 11:03 PM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;<br>
&gt;<br>
&gt; More details are needed to be able to help.<br>
&gt;<br>
&gt; What do you mean &quot;not getting built&quot;? =A0Do you mean that if=
 you<br>
&gt; try to build recipe XYZ which is in one of those layers that it&#39;s<=
br>
&gt; not being built? =A0Or perhaps you mean something else?<br>
&gt;<br>
&gt; What do you mean &quot;created two layers: ...&quot;? =A0Did you just =
extract<br>
&gt; these from meta-openembedded? =A0or something else?<br>
&gt;<br>
</div><div><div class=3D"h5">&gt; &gt; I am building one of my application =
using yocto by giving bitbake -k<br>
&gt; &gt; core-image-minimal command but I am facing some errors as this ap=
plication<br>
&gt; &gt; requires two libraries<br>
&gt; &gt; *1) net-snmp*<br>
&gt; &gt; *2) fuse*<br>
&gt; &gt; *<br>
&gt; &gt;<br>
&gt; &gt; *<br>
&gt; &gt; I have one link where in they are asking to add these two librari=
es in the<br>
&gt; &gt; form of layers and then execute bitbake -k core-image-minimal com=
mand.<br>
&gt; &gt;<br>
&gt; &gt; I am pasting one screenshot below:<br>
&gt; &gt;<br>
&gt; &gt; As you can I have added two layers meta-networking (contains net-=
snmp) and<br>
&gt; &gt; meta-oe(contains fuse). After this I added these layers in<br>
&gt; &gt; *build/conf/bblayer.conf.*<br>
&gt; &gt; *<br>
&gt; &gt; *<br>
&gt; &gt; *<br>
&gt; &gt;<br>
&gt; &gt; *<br>
&gt; &gt; After this I again executed bitbake -k core-image-minimal command=
 but I<br>
&gt; &gt; faced the same error as before... :(<br>
&gt; &gt; Is there anyway that these layers get recognized? Do I need to ex=
ecute<br>
&gt; &gt; some other command?<br>
&gt;<br>
&gt; Obviously, this is a recipe that you made.<br>
&gt;<br>
&gt; Does it show these dependencies? =A0e.g. a line like this in your reci=
pe file:<br>
&gt; DEPENDS =3D &quot;net-snmp fuse&quot;<br>
&gt; (or whatever the *packages* that you need are)<br>
&gt;<br>
&gt; Bitbake can&#39;t read your mind; it will only build the recipes you a=
sk and the<br>
&gt; dependencies which are explicitly specified in that build chain.<br>
&gt;<br>
&gt; If you still have trouble, try sending your recipe (.bb file and all o=
ther<br>
&gt; components you might have), bblayers.conf, etc to the list because we&=
#39;re not<br>
&gt; mind readers either :-)<br>
&gt;<br>
&gt; &gt; On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S<br>
&gt; &gt; &lt;<a href=3D"mailto:sudhangathan@gmail.com">sudhangathan@gmail.=
com</a>&lt;mailto:&gt;<br>
</div></div><div class=3D"im">&gt; &gt; <a href=3D"mailto:sudhangathan@gmai=
l.com">sudhangathan@gmail.com</a>**&gt;&gt; wrote:<br>
&gt; &gt; =A0 =A0 Can you please paste your command and it&#39;s output her=
e..! If you don&#39;t<br>
&gt; &gt;<br>
&gt; &gt; mind..!! Or explain with equivalent clarity. It<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 l will good if you can also put in your directory structu=
re.<br>
&gt; &gt;<br>
</div>&gt; &gt; =A0 =A0 ------------------------------**---<br>
<div class=3D"im">&gt; &gt; =A0 =A0 Sudhangathan BS<br>
&gt; &gt; =A0 =A0 Ph:(+91) 9731-905-205<br>
</div>&gt; &gt; =A0 =A0 ------------------------------**---<br>
<div class=3D"im">&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar &lt;<br=
>
&gt; &gt;<br>
</div><div class=3D"im">&gt; &gt; <a href=3D"mailto:varun292006@gmail.com">=
varun292006@gmail.com</a> &lt;mailto:<a href=3D"mailto:varun292006@gmail.co=
m">varun292006@gmail.com</a>&gt;**&gt; wrote:<br>
&gt; &gt; =A0 =A0 =A0 =A0 Actually the package which I am building is havin=
g some<br>
&gt; &gt;<br>
&gt; &gt; dependencies on some libraries. So I provided those libraries wit=
h the<br>
&gt; &gt; help of creating layers. I did not extract those from meta-openem=
bedded,<br>
&gt; &gt; instead, I manually created two layers and added them in bblayer.=
conf file.<br>
<br>
</div>Rather than creating these layers from scratch (which I think is the =
most<br>
likely source of the problem) I&#39;d suggest starting by cloning the origi=
nal<br>
meta-openembedded repository and building your recipe with the meta-network=
ing<br>
and meta-oe layers enabled in your bblayers.conf file.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7b2e0e8fba066a04dfff32b3--
