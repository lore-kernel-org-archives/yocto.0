Return-Path: <btraynor@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35D5E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 04:33:38 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hj3so369203wib.12
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 04:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Bzb7g4GSqlvDYVNs8D/2AXqTTYuM1qYobKH20KVQNqg=;
	b=wDSyOSoECUoKvIyjRluw6fUlKOI5Vyyw5q5NI4sRvsw4iaCEnLfLmMz/gS7frGVxyX
	SGahqwSJmtMsLNnZqye6KyVcFggEDwGCpo2EefwfYTQZhZcj6zpofJ4WqIsdNqfiuH09
	QIwsRZI4PFh+GpvHaDgsMFC+7BdKrLPTFdC6KcTgBe3CAK5Z9LNd7hSstbmQpUfXLkNl
	/WpzlwWEJ+eKVAW0rl/Mc2vwZjSYtUrgljFRCGJRQB95QJhqRmoAJ3OqlwAssHQcT1Gl
	JaqtQz82KVCAXkdirikyPjWy8shWgAnH867jnLAocwFYoxTsseN9n/m6MYHcUXFIEfwS
	gARw==
X-Received: by 10.194.21.231 with SMTP id y7mr4403015wje.94.1371036817297;
	Wed, 12 Jun 2013 04:33:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.16.69 with HTTP; Wed, 12 Jun 2013 04:32:57 -0700 (PDT)
In-Reply-To: <bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
From: Bill Traynor <btraynor@gmail.com>
Date: Wed, 12 Jun 2013 07:32:57 -0400
Message-ID: <CAN20qYp1idcC3iEP2GcLDUSpoJ=UonWxndz3JYNUVuSM5iBKcw@mail.gmail.com>
To: michael@cubic.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 11:33:39 -0000
Content-Type: multipart/alternative; boundary=047d7b5d27fc7819ce04def36236

--047d7b5d27fc7819ce04def36236
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 12, 2013 at 7:16 AM, <michael@cubic.org> wrote:

> > "Cross-Development Toolchain: A collection of software development tools
> > and
> > utilities that allow you to develop software for targeted architectures."
> > Is
> > that different from the toolchain that bitbake builds in the beginning,
> > and
> > then uses to build the image? If so, what is it?
>
> A "cross development toolchain" is a toolchain that runs on an
> architecture (cpu+os+libc) that is different from the architecture it
> generates code for. That can even be a toolchain running on an IA64-Linux
> machine generating object-code for an IA32-Linux machine.
>
> > "Following is a list of toolchain recipes..." This is followed by
> > gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of these
> > things say that the toolchain runs on the host and is used to build
> > software
> > for the target. So why are there three of them? What are the differences
> > among them?
>
> The gcc must be build multiple times when you bootstrap it.
> For building the gcc you need to build the libc and therefor you need to
> build the linux kernel headers and therefor you need the gcc. Oops.
>
> Thats why you first build a gcc only with c support and no libc first.
> Use that to generate the kernel headers, then build the initial libc and
> then another gcc with libc support and all the frontends you need
> (c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am not
> shure, but there will be a reason and another one can clarify that.
>
> > It also says that each one is a "native" package. In my
> > experience, a "native" toolchain has always meant a toolchain that
> > produces
> > code for the same machine that the toolchain runs on, while a "cross"
> > toolchain produces code for a different machine. That's obviously not
> what
> > "native" means in this context, so what does it mean?
>
> In terms of openembedded a "native" package is a package that contains
> code that is intended to run on the build machine (your workstation). The
> cross-compiler runs on your build-machine to produce code for your
> target-machine. Thats why it is a "native" package. And there are a lot
> more "native" packages than only the compiler.
>
> > The documentation makes frequent references to "the SDK" without ever
> > defining it. I know what it means generically, but what is it in the
> Yocto
> > context? And why does the SDK involve yet another set of three
> toolchains?
> > (Oh, and why is one of them called "canadian"?)
>
> A canadian-cross is a term from the compiler stuff, not specific to the
> Yocto Project or Poky or Openembedded.
> Building a canadian-cross is the process of build a toolchain on
> architecture A that runs on architecture B and produces object-code for
> architecture C. An example is building a gcc on an IA32 architecture, that
> will run on an ARM, producing code for an M68K. Yes, that does make sence,
> if the ARM machine does not have the resources to be able to bootstrap the
> compiler by itself.
>

And for what it's worth, the reason it's called "Canadian" is because at
the time of it's naming, Canada had 3 political parties.

http://en.wikipedia.org/wiki/Cross_compiler#Canadian_Cross


> Hope that made some things clear.
>
> Michael
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b5d27fc7819ce04def36236
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jun 12, 2013 at 7:16 AM,  <span dir=3D"ltr">&lt;<a href=3D"=
mailto:michael@cubic.org" target=3D"_blank">michael@cubic.org</a>&gt;</span=
> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">&gt; &quot;Cross-Development Toolchain: =
A collection of software development tools<br>


&gt; and<br>
&gt; utilities that allow you to develop software for targeted architecture=
s.&quot;<br>
&gt; Is<br>
&gt; that different from the toolchain that bitbake builds in the beginning=
,<br>
&gt; and<br>
&gt; then uses to build the image? If so, what is it?<br>
<br>
</div>A &quot;cross development toolchain&quot; is a toolchain that runs on=
 an<br>
architecture (cpu+os+libc) that is different from the architecture it<br>
generates code for. That can even be a toolchain running on an IA64-Linux<b=
r>
machine generating object-code for an IA32-Linux machine.<br>
<div class=3D"im"><br>
&gt; &quot;Following is a list of toolchain recipes...&quot; This is follow=
ed by<br>
&gt; gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of the=
se<br>
&gt; things say that the toolchain runs on the host and is used to build<br=
>
&gt; software<br>
&gt; for the target. So why are there three of them? What are the differenc=
es<br>
&gt; among them?<br>
<br>
</div>The gcc must be build multiple times when you bootstrap it.<br>
For building the gcc you need to build the libc and therefor you need to<br=
>
build the linux kernel headers and therefor you need the gcc. Oops.<br>
<br>
Thats why you first build a gcc only with c support and no libc first.<br>
Use that to generate the kernel headers, then build the initial libc and<br=
>
then another gcc with libc support and all the frontends you need<br>
(c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am not<b=
r>
shure, but there will be a reason and another one can clarify that.<br>
<div class=3D"im"><br>
&gt; It also says that each one is a &quot;native&quot; package. In my<br>
&gt; experience, a &quot;native&quot; toolchain has always meant a toolchai=
n that<br>
&gt; produces<br>
&gt; code for the same machine that the toolchain runs on, while a &quot;cr=
oss&quot;<br>
&gt; toolchain produces code for a different machine. That&#39;s obviously =
not what<br>
&gt; &quot;native&quot; means in this context, so what does it mean?<br>
<br>
</div>In terms of openembedded a &quot;native&quot; package is a package th=
at contains<br>
code that is intended to run on the build machine (your workstation). The<b=
r>
cross-compiler runs on your build-machine to produce code for your<br>
target-machine. Thats why it is a &quot;native&quot; package. And there are=
 a lot<br>
more &quot;native&quot; packages than only the compiler.<br>
<div class=3D"im"><br>
&gt; The documentation makes frequent references to &quot;the SDK&quot; wit=
hout ever<br>
&gt; defining it. I know what it means generically, but what is it in the Y=
octo<br>
&gt; context? And why does the SDK involve yet another set of three toolcha=
ins?<br>
&gt; (Oh, and why is one of them called &quot;canadian&quot;?)<br>
<br>
</div>A canadian-cross is a term from the compiler stuff, not specific to t=
he<br>
Yocto Project or Poky or Openembedded.<br>
Building a canadian-cross is the process of build a toolchain on<br>
architecture A that runs on architecture B and produces object-code for<br>
architecture C. An example is building a gcc on an IA32 architecture, that<=
br>
will run on an ARM, producing code for an M68K. Yes, that does make sence,<=
br>
if the ARM machine does not have the resources to be able to bootstrap the<=
br>
compiler by itself.<br></blockquote><div><br></div><div style>And for what =
it&#39;s worth, the reason it&#39;s called &quot;Canadian&quot; is because =
at the time of it&#39;s naming, Canada had 3 political parties.</div><div s=
tyle>

<br></div><div style><a href=3D"http://en.wikipedia.org/wiki/Cross_compiler=
#Canadian_Cross">http://en.wikipedia.org/wiki/Cross_compiler#Canadian_Cross=
</a><br></div><div style><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex">


<br>
Hope that made some things clear.<br>
<br>
Michael<br>
<div class=3D""><div class=3D"h5">_________________________________________=
______<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--047d7b5d27fc7819ce04def36236--
