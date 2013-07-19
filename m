Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A49E0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 09:43:58 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id k14so6281038oag.40
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 09:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WUpKakHipCvguGhUZhVqYF87d9sfgBHKTTdAPFBqKkM=;
	b=SsBNE++eY2MIpQRxV4DgiQ8BwJH1eqIDiK+5OSgHZil/cjibhsRHcMipU3oJ9Fz09m
	sR2w98hYbw2qxgRf9+w7M+AH4O4+KjMd9JF5cWu+XhXjVvJUyh339MQpmmEbepKb1cqA
	ktfBtGrSIYX/BY8rvdqmutPiwheZktnONwHQtyo/ra04x8YFqh8XMTFfAnUoGSwcFHsn
	kadPGsRvHD1PvZhqj9fe6K7ytQG2MkaEVxESbhlM/Yhx/2Oifj88OYkOBkReavr4Zx6o
	IsifycyHiOID86HLq1c2b3AAJcNUUuxHsP+7LzQzym31gpKvxwAbFEUwFWeChQnfDtPe
	0Ldw==
MIME-Version: 1.0
X-Received: by 10.182.241.138 with SMTP id wi10mr12548534obc.48.1374252237703; 
	Fri, 19 Jul 2013 09:43:57 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Fri, 19 Jul 2013 09:43:57 -0700 (PDT)
In-Reply-To: <2173803.768kMi5SBz@helios>
References: <CAE8H0+XntiXZNiZg4ZJhf+uLusWLu+ddQpXPuKru5epugR4W2Q@mail.gmail.com>
	<CAPhnLPBanJ=CHZdzAwGNriUOH5UeNn-CggWntNbML8gw+6_V_A@mail.gmail.com>
	<2173803.768kMi5SBz@helios>
Date: Fri, 19 Jul 2013 12:43:57 -0400
Message-ID: <CAE8H0+WQ95Mz2p0iZCXqhNATen4CpLYyGKxmLwncW-BevtAHmg@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 9.0.1 release tarball requires bitbake 1.19.1 but provides 1.18.0?
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
X-List-Received-Date: Fri, 19 Jul 2013 16:44:01 -0000
Content-Type: multipart/alternative; boundary=089e01634d62761f8b04e1e00834

--089e01634d62761f8b04e1e00834
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 19, 2013 at 11:09 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday 19 July 2013 07:52:03 Flanagan, Elizabeth wrote:
> > On Fri, Jul 19, 2013 at 6:07 AM, r10kindsofpeople
> > <r10kindsofpeople@gmail.com> wrote:
> > > I've run into another issue when trying to upgrade my system from
> Denzil
> > > to Dylan using the released packages.  I extracted the 9.0.1 released
> > > tarball, added the crownbay BSP, then moved my layers over from Denzil.
> > > Sourced the build directory, then modified bblayers.conf and
> local.conf to
> > > merge my specifics with the new formats.
> > >
> > > 'bitbake core-image-minimal' results in an error... "OE-core's config
> > > sanity checker detected a potential misconfiguration." and "Bitbake
> > > version 1.19.1 is required and version 1.18.0 was found".
> > >
> > > A contributing factor may be that I also have a git snapshot from 2
> days
> > > ago on the same system (that builds), but I've tried to keep them in
> > > separate directories and be careful about running the source script in
> > > it's own shell.
> > >
> > > Is this a problem with the release tarball or a PICNIC problem?
> >
> > It shouldn't be a problem with the tarball as the download tarball is
> >
> >
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/poky-73f103bf9b
> > 2cdf985464dc53bf4f1cfd71d4531f.tar.bz2
> >
> > which corresponds with the tagged release at:
> >
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dylan&id=73f103bf9b
> > 2cdf985464dc53bf4f1cfd71d4531f
> >
> > I just validated the tarball and can't reproduce so my guess is that
> > this is probably a dirty env issue.
>
> It does sound that way. John, you haven't perhaps changed the path to the
> metadata but re-used the build directory, such that BBLAYERS in
> bblayers.conf
> still points to the development snapshot?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>


Thanks, Paul and Elizabeth.  Once I had a working bblayers.conf in the
snapshot, I just copied that file to the build directory of the release,
and forgot to change the paths inside.  Building now, sorry for the
distraction...

John

--089e01634d62761f8b04e1e00834
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Fri, Jul 19, 2013 at 11:09 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton=
@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Friday 19 July 2013 07:52:03 Flanagan, El=
izabeth wrote:<br>
&gt; On Fri, Jul 19, 2013 at 6:07 AM, r10kindsofpeople<br>
&gt; &lt;<a href=3D"mailto:r10kindsofpeople@gmail.com">r10kindsofpeople@gma=
il.com</a>&gt; wrote:<br>
&gt; &gt; I&#39;ve run into another issue when trying to upgrade my system =
from Denzil<br>
&gt; &gt; to Dylan using the released packages. =A0I extracted the 9.0.1 re=
leased<br>
&gt; &gt; tarball, added the crownbay BSP, then moved my layers over from D=
enzil.<br>
&gt; &gt; Sourced the build directory, then modified bblayers.conf and loca=
l.conf to<br>
&gt; &gt; merge my specifics with the new formats.<br>
&gt; &gt;<br>
&gt; &gt; &#39;bitbake core-image-minimal&#39; results in an error... &quot=
;OE-core&#39;s config<br>
&gt; &gt; sanity checker detected a potential misconfiguration.&quot; and &=
quot;Bitbake<br>
&gt; &gt; version 1.19.1 is required and version 1.18.0 was found&quot;.<br=
>
&gt; &gt;<br>
&gt; &gt; A contributing factor may be that I also have a git snapshot from=
 2 days<br>
&gt; &gt; ago on the same system (that builds), but I&#39;ve tried to keep =
them in<br>
&gt; &gt; separate directories and be careful about running the source scri=
pt in<br>
&gt; &gt; it&#39;s own shell.<br>
&gt; &gt;<br>
&gt; &gt; Is this a problem with the release tarball or a PICNIC problem?<b=
r>
&gt;<br>
&gt; It shouldn&#39;t be a problem with the tarball as the download tarball=
 is<br>
&gt;<br>
&gt; <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.=
1/poky-73f103bf9b" target=3D"_blank">http://downloads.yoctoproject.org/rele=
ases/yocto/yocto-1.4.1/poky-73f103bf9b</a><br>
&gt; 2cdf985464dc53bf4f1cfd71d4531f.tar.bz2<br>
&gt;<br>
&gt; which corresponds with the tagged release at:<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3D=
dylan&amp;id=3D73f103bf9b" target=3D"_blank">http://git.yoctoproject.org/cg=
it/cgit.cgi/poky/commit/?h=3Ddylan&amp;id=3D73f103bf9b</a><br>
&gt; 2cdf985464dc53bf4f1cfd71d4531f<br>
&gt;<br>
&gt; I just validated the tarball and can&#39;t reproduce so my guess is th=
at<br>
&gt; this is probably a dirty env issue.<br>
<br>
It does sound that way. John, you haven&#39;t perhaps changed the path to t=
he<br>
metadata but re-used the build directory, such that BBLAYERS in bblayers.co=
nf<br>
still points to the development snapshot?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra"><br></div>Thanks, Paul and Elizabeth. =A0Once I had a=
 working bblayers.conf in the snapshot, I just copied that file to the buil=
d directory of the release, and forgot to change the paths inside. =A0Build=
ing now, sorry for the distraction...</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">John</div><=
/div>

--089e01634d62761f8b04e1e00834--
