Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6E2E01466
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 05:56:35 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id dn14so2199737obc.2
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 05:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=v1hLlwkRDS+vsSrk2R5iWe5ewr6wPfhA63KxhhGxKQo=;
	b=n31IOU6gU0SYmVe08YtY2wq0SsaSphsEi70cRgYZzRvikrepWuI4z4E1dT8XYfBfdO
	JyKHPaKiDFpHKwRP3d8z1U9ISoPmYR34Qbjzr+Qy31ZLXR37BWO3AZYKSZbAhf5Ivm+L
	rK4nTCfO7MIBSQbcuP9viXwuJbfoUV1wkcnDZbqWPUlC6Cz2WKqJwgs8HBYv0BBfZgQ0
	ywmT1VeQyKpr3vUIRvJzw4tWnHsGA/HpNFNezFs8N3YygZ2OJ17UUVHPd2h89bax7YwY
	3DfDGE9Gt1F5WMrto/N3KYrkD+asOidH1YSVF8t2zw6licarZjr6B+zufS1pWCXkwQkW
	yKfw==
MIME-Version: 1.0
X-Received: by 10.60.131.171 with SMTP id on11mr7963966oeb.71.1374065794894;
	Wed, 17 Jul 2013 05:56:34 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Wed, 17 Jul 2013 05:56:34 -0700 (PDT)
In-Reply-To: <59742333.4mCOApeMVS@helios>
References: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
	<59742333.4mCOApeMVS@helios>
Date: Wed, 17 Jul 2013 08:56:34 -0400
Message-ID: <CAFZh4h9NzZwLSm5wmnqs8WU5A1hfpBY4z8ryH14eg724QhZvQg@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto + meta-networking
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
X-List-Received-Date: Wed, 17 Jul 2013 12:56:36 -0000
Content-Type: multipart/alternative; boundary=047d7b471da49a510b04e1b49f2a

--047d7b471da49a510b04e1b49f2a
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 16, 2013 at 5:28 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Brian,
>
> On Tuesday 16 July 2013 17:06:46 Brian Hutchinson wrote:
> > What is the "right" way of adding the meta-networking to Yocto?  I'm
> > obviously not doing something right.
> >
> > At the poky directory level, I cloned meta-openembedded.  I then tried to
> > go to my build's local.conf and adding meta-networking and meta-oe layers
> > and I'm getting a dependency message when I try to bitbake net-snmp that
> > says:
> >
> > ERROR: Layer dependency core of layer networking not found
> >
> > This makes me think that meta-openembedded is wanting openembedded-core
> but
> > I've never tried to use that with Yocto before so I thought I better ask
> > before I totally mess up my build environment.
> >
> > I have a rootfilesystem build based on Denzil and I need net-snmp and the
> > meta-networking Denzil branch is pretty much empty so I cloned master in
> > order to get net-snmp so I don't know if mixing branches could be my
> > problem (don't know how much that matters but I usually try to use the
> same
> > release branch of various components).
>
> Mixing branches is the issue here. meta-networking added a LAYERDEPENDS on
> "core" which the denzil poky/OE-Core doesn't provide. This is just an
> incidental error though, if it hadn't failed on this you'd have hit other
> problems.
>
> meta-networking wasn't even around in the denzil days. If you need net-snmp
> from there on top of denzil the only way is to backport the recipe and any
> missing dependencies and add it to an additional layer (assuming you don't
> already have a layer for customisations). In practice backporting should be
> fairly trivial; I'd suggest copying the recipe over and seeing how far you
> get.
>
> Cheers,
> Paul
>
>
Thanks Paul, I worried about mixing branches since I've never tried that
before.  The only reason I picked Denzil is because I need ti816x support
and Dylan and Danny don't have machine confs for it in meta-ti.  So what
would be easier, getting the machine support I need in Dylan or back
porting the net-snmp recipe to Denzil?

Regards,

Brian

--047d7b471da49a510b04e1b49f2a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 16, 2013 at 5:28 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
Hi Brian,<br>
<div><div class=3D"h5"><br>
On Tuesday 16 July 2013 17:06:46 Brian Hutchinson wrote:<br>
&gt; What is the &quot;right&quot; way of adding the meta-networking to Yoc=
to? =A0I&#39;m<br>
&gt; obviously not doing something right.<br>
&gt;<br>
&gt; At the poky directory level, I cloned meta-openembedded. =A0I then tri=
ed to<br>
&gt; go to my build&#39;s local.conf and adding meta-networking and meta-oe=
 layers<br>
&gt; and I&#39;m getting a dependency message when I try to bitbake net-snm=
p that<br>
&gt; says:<br>
&gt;<br>
&gt; ERROR: Layer dependency core of layer networking not found<br>
&gt;<br>
&gt; This makes me think that meta-openembedded is wanting openembedded-cor=
e but<br>
&gt; I&#39;ve never tried to use that with Yocto before so I thought I bett=
er ask<br>
&gt; before I totally mess up my build environment.<br>
&gt;<br>
&gt; I have a rootfilesystem build based on Denzil and I need net-snmp and =
the<br>
&gt; meta-networking Denzil branch is pretty much empty so I cloned master =
in<br>
&gt; order to get net-snmp so I don&#39;t know if mixing branches could be =
my<br>
&gt; problem (don&#39;t know how much that matters but I usually try to use=
 the same<br>
&gt; release branch of various components).<br>
<br>
</div></div>Mixing branches is the issue here. meta-networking added a LAYE=
RDEPENDS on<br>
&quot;core&quot; which the denzil poky/OE-Core doesn&#39;t provide. This is=
 just an<br>
incidental error though, if it hadn&#39;t failed on this you&#39;d have hit=
 other<br>
problems.<br>
<br>
meta-networking wasn&#39;t even around in the denzil days. If you need net-=
snmp<br>
from there on top of denzil the only way is to backport the recipe and any<=
br>
missing dependencies and add it to an additional layer (assuming you don&#3=
9;t<br>
already have a layer for customisations). In practice backporting should be=
<br>
fairly trivial; I&#39;d suggest copying the recipe over and seeing how far =
you<br>
get.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div><div>Thanks Paul, I worried about mixing branches since I=
&#39;ve never tried that before. =A0The only reason I picked Denzil is beca=
use I need ti816x support and Dylan and Danny don&#39;t have machine confs =
for it in meta-ti. =A0So what would be easier, getting the machine support =
I need in Dylan or back porting the net-snmp recipe to Denzil?=A0</div>
<div><br></div><div>Regards,</div><div><br></div><div>Brian</div></div>

--047d7b471da49a510b04e1b49f2a--
