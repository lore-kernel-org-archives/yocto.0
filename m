Return-Path: <djwelch666@gmail.com>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 032F5E00AF3
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 10:15:12 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id fa1so2918236pad.28
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 10:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yrM5ZWjwefR8lwy4MAEgvjhJzA+dq98Ab2RaDJKPNZo=;
	b=EIfTEnhxUDNgh1UIYtGV1h2/7g18DnozQ7SEKGWEjxd3aW4kNyAK8lLQxuafLXMpb1
	uH/F+/owCB1e89f0+E5aeQP+LKv6CRoh+MvwRL8wYWXy6NQLri0GsXLWwhG44PjLQ84V
	j/8k4olCRBSXkbOFzwD1MhoRKUwByd/jhDyLUWIOMfLMa7UtrdjV9PJX2LjdVLs2i4/z
	58MerSL4w+mxKspYGFl7JhQWFwlN/hw7yEKK3JR1EPgPH+y0AXxTeR/+VsmE771fvR8R
	TdU4LPYqP0qyCjWzPIREDClznqpaRwrqpXF/D6kYksDYYxBP+8SZxEv4rCa/7k+T29vj
	TnEw==
MIME-Version: 1.0
X-Received: by 10.66.248.227 with SMTP id yp3mr10088347pac.116.1394817312022; 
	Fri, 14 Mar 2014 10:15:12 -0700 (PDT)
Received: by 10.68.230.199 with HTTP; Fri, 14 Mar 2014 10:15:11 -0700 (PDT)
In-Reply-To: <5323321C.8030709@mlbassoc.com>
References: <CACP9YJcdsdfdTGO6AmA+nPYzrR6St0-4n8QVFL3ujoGeVp6+cw@mail.gmail.com>
	<5323321C.8030709@mlbassoc.com>
Date: Fri, 14 Mar 2014 17:15:11 +0000
Message-ID: <CACP9YJcaLLMmu5YBg_i3XZmdDAvsBXcWcmO=-i8XCNjoR+=ieg@mail.gmail.com>
From: David Welch <djwelch666@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building a metapackage
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
X-List-Received-Date: Fri, 14 Mar 2014 17:15:15 -0000
Content-Type: multipart/alternative; boundary=047d7b15b04568e94404f494360f

--047d7b15b04568e94404f494360f
Content-Type: text/plain; charset=ISO-8859-1

Thanks for your quick reponses, that works.


On Fri, Mar 14, 2014 at 4:45 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-14 10:34, David Welch wrote:
> > Hi,
> >
> > Is it possible to build a meta packages whose sole purpose is to bring
> in dependencies?
> >
> > Suppose I have package-1.deb, package-2.deb and package-3.deb.  I would
> like add a .bb file to build a metapackage for those three packages.  I
> have tried the following but it
> > didn't work:
> >
> > SUMMARY = "Package"
> > DESCRIPTION = ""
> > LICENSE = "CLOSED"
> > DEPENDS = " \
> > package-1 package-2 package-3 \
> > "
> > inherit meta
> >
> > My use case is a series of voices by different manufactures which need
> to be installed on a per-manufacturer basis.  So all the voices from
> manufacture1 would need to be installed
> > on one machine and all the voices from manufacturer2 need to go on
> another machine.  There are about 50-100 voice packages per manufacturer.
>
> I think packagegroups (previously known as tasks) are what you are looking
> for.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b15b04568e94404f494360f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your quick reponses, that works.</div><div clas=
s=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Mar 14, 2014 a=
t 4:45 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbasso=
c.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 2=
014-03-14 10:34, David Welch wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; Is it possible to build a meta packages whose sole purpose is to bring=
 in dependencies?<br>
&gt;<br>
&gt; Suppose I have package-1.deb, package-2.deb and package-3.deb. =A0I wo=
uld like add a .bb file to build a metapackage for those three packages. =
=A0I have tried the following but it<br>
&gt; didn&#39;t work:<br>
&gt;<br>
&gt; SUMMARY =3D &quot;Package&quot;<br>
&gt; DESCRIPTION =3D &quot;&quot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; DEPENDS =3D &quot; \<br>
&gt; package-1 package-2 package-3 \<br>
&gt; &quot;<br>
&gt; inherit meta<br>
&gt;<br>
&gt; My use case is a series of voices by different manufactures which need=
 to be installed on a per-manufacturer basis. =A0So all the voices from man=
ufacture1 would need to be installed<br>
&gt; on one machine and all the voices from manufacturer2 need to go on ano=
ther machine. =A0There are about 50-100 voice packages per manufacturer.<br=
>
<br>
</div></div>I think packagegroups (previously known as tasks) are what you =
are looking for.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7b15b04568e94404f494360f--
