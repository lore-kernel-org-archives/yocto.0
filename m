Return-Path: <challinan@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2352E01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:43:31 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so1054869vbj.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5KbtoMjzEQZClGZmpNvh485hMBN3t5W9GtdCt2yirFk=;
	b=hdar+sRtdIYuXXZ6mZw3B0hJAHMmvX5WAAbku8OqlJthd133pyepxJWgF0BylWJ+G+
	ihdboB/+sKLdLWUIqdNIEg+zy9ycM10eD41wDEiX8xCfqh93CDbM1CyCyMBH+xyHmp7j
	6cJPn2re8ho6hUJWiK8fVhc8MiR0E/Bef0TqD0VHeZ6C1IL2BT7Yhlx2R8YCyT2e4uVj
	d4DQsx+dkxQdqww/+1Kv+eK38kSpW+0mH7SAnI+wR7ALIDB9M9niOt8SYMoSKTrZTUnv
	2mZYRYdxuipS1UrBDLeEvMH9jDyEKd2X0h4LcDyrJ7AlljDklqFwncQ8rW7h1eUTxd/k
	MS8g==
MIME-Version: 1.0
Received: by 10.52.89.35 with SMTP id bl3mr12307203vdb.106.1340815410844; Wed,
	27 Jun 2012 09:43:30 -0700 (PDT)
Received: by 10.52.70.241 with HTTP; Wed, 27 Jun 2012 09:43:30 -0700 (PDT)
In-Reply-To: <83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
	<4FEACDE6.7040701@r-finger.com>
	<83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
Date: Wed, 27 Jun 2012 12:43:30 -0400
Message-ID: <CAME0jBSWAy_VJ00rKcZz3Hpt48dBZKuterZy7gN2SptmM-u2Lg@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: Koen Kooi <koen@beagleboard.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 16:43:31 -0000
Content-Type: multipart/alternative; boundary=20cf307d034e45d46904c376ea75

--20cf307d034e45d46904c376ea75
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 27, 2012 at 10:59 AM, Koen Kooi <koen@beagleboard.org> wrote:

>
>
> Op 27 jun. 2012 om 11:09 heeft Tomas Frydrych <tf+lists.yocto@r-finger.com>
> het volgende geschreven:
>
> > Hi Tim,
> >
> > On 26/06/12 19:52, Tim Bird wrote:
> >> On 06/26/2012 10:18 AM, Tomas Frydrych wrote:
> >> For example, after reading various FAQs
> >> I still have no idea what kind of thing "Poky" is.  I know
> >> that bitbake is a build tool.  I know that OE is a package
> >> meta-information project.  Yocto Project is an umbrella project
> >> for a lot of tools and technologies (Poky among them).  But is
> >> Poky a distro (sample/reference or otherwise?) or something else?
> >
> > For those of us who have been around Poky well before Yocto came around,
> > we know what Poky used to be, have some inkling what it is, but we are
> > not always entirely clear what Yocto is. :-)
> >
> >
> >> When I ran my recently-built image, my target /etc/issue had this
> content:
> >> "Yocto (Built by Poky 7.0) 1.2"
> >
> > My understanding (with the above disclaimer!) is that Poky is a build
> > system, Yocto is a distro, so I read the above 'Yocto v1.2 image built
> > by the Poky v7.0 tool'. I think the point of maintaining the distinction
> > is that you can use Poky without the Yocto Distro (/meta-yocto).
>
>
> Yocto is NOT a distro. Poky is both a distro and buildsystem. This thread
> highlights the reason the oe folks have been pushing to get rid of the
> 'poky' name completely to avoid needless confusing situations like this.
> It's sad to see that even the official stuff gets it wrong...
>
>
I took a stab at clarifying the terminology in a blog post back in April.
 I *think* I got it mostly right ;)

http://blogs.mentor.com/chrishallinan/blog/2012/04/13/yocto-versus-poky-versus-angstrom-etc/

Regards,

Chris
--
Life is like Linux - it never stands still.

--20cf307d034e45d46904c376ea75
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 27, 2012 at 10:59 AM, Koen Kooi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:koen@beagleboard.org" target=3D"_blank">koen@beagleboard.org</a>=
&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
<br>
<br>
Op 27 jun. 2012 om 11:09 heeft Tomas Frydrych &lt;<a href=3D"mailto:tf%2Bli=
sts.yocto@r-finger.com">tf+lists.yocto@r-finger.com</a>&gt; het volgende ge=
schreven:<br>
<br>
&gt; Hi Tim,<br>
&gt;<br>
&gt; On 26/06/12 19:52, Tim Bird wrote:<br>
&gt;&gt; On 06/26/2012 10:18 AM, Tomas Frydrych wrote:<br>
&gt;&gt; For example, after reading various FAQs<br>
&gt;&gt; I still have no idea what kind of thing &quot;Poky&quot; is. =A0I =
know<br>
&gt;&gt; that bitbake is a build tool. =A0I know that OE is a package<br>
&gt;&gt; meta-information project. =A0Yocto Project is an umbrella project<=
br>
&gt;&gt; for a lot of tools and technologies (Poky among them). =A0But is<b=
r>
&gt;&gt; Poky a distro (sample/reference or otherwise?) or something else?<=
br>
&gt;<br>
&gt; For those of us who have been around Poky well before Yocto came aroun=
d,<br>
&gt; we know what Poky used to be, have some inkling what it is, but we are=
<br>
&gt; not always entirely clear what Yocto is. :-)<br>
&gt;<br>
&gt;<br>
&gt;&gt; When I ran my recently-built image, my target /etc/issue had this =
content:<br>
&gt;&gt; &quot;Yocto (Built by Poky 7.0) 1.2&quot;<br>
&gt;<br>
&gt; My understanding (with the above disclaimer!) is that Poky is a build<=
br>
&gt; system, Yocto is a distro, so I read the above &#39;Yocto v1.2 image b=
uilt<br>
&gt; by the Poky v7.0 tool&#39;. I think the point of maintaining the disti=
nction<br>
&gt; is that you can use Poky without the Yocto Distro (/meta-yocto).<br>
<br>
<br>
Yocto is NOT a distro. Poky is both a distro and buildsystem. This thread h=
ighlights the reason the oe folks have been pushing to get rid of the &#39;=
poky&#39; name completely to avoid needless confusing situations like this.=
<br>

It&#39;s sad to see that even the official stuff gets it wrong...<br>
<br></blockquote><div><br></div></div>I took a stab at clarifying the termi=
nology in a blog post back in April. =A0I *think* I got it mostly right ;)=
=A0<div><br>
<div><a href=3D"http://blogs.mentor.com/chrishallinan/blog/2012/04/13/yocto=
-versus-poky-versus-angstrom-etc/">http://blogs.mentor.com/chrishallinan/bl=
og/2012/04/13/yocto-versus-poky-versus-angstrom-etc/</a></div><div><br></di=
v>
<div>Regards,</div></div><div><br></div><div>Chris</div><div>--</div><div><=
span style=3D"color:rgb(136,136,136);font-family:arial,sans-serif;font-size=
:13px;background-color:rgb(255,255,255)">Life is like Linux - it never stan=
ds still.</span></div>

--20cf307d034e45d46904c376ea75--
