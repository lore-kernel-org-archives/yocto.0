Return-Path: <mulhern@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C65DFE013EC
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2013 05:24:19 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id xk17so6371276obc.10
	for <yocto@yoctoproject.org>; Sat, 27 Jul 2013 05:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=06VUB3SWNaTUN8J0MncSL9DlOgJV93x21FpM/fR8BtU=;
	b=ZTSzLO+IlR2JsxxKl1WnCSfbxJLPSwjTSgBENX43ao+Lv8JzHNIZsgKDybCtI45Yd+
	Xk8We8v33Cyn0TEysUky2vLSGsx28nsbhDDrnXY/UBR0ehDf/QsLXQiHjUzwdbD2PWeJ
	AW3jbwIeMY+CbPTCix5A1VEJUokjF5JAVh4fSd63GDqMnwMVU346/VaUtnRyphWWP1hd
	091oDwYrYDdtd6kja9WHEwadNj7AJz/KBlG5nKe/bEQC33wggL/DalAPGJuHBtr2XJby
	f4HAOyg9K4tPOV+FuAfXKs0sBGqNwE5mohyr1nNQhM9DhKBEf6GCIsLCEedkxsoSw+vZ
	XBqA==
MIME-Version: 1.0
X-Received: by 10.182.112.166 with SMTP id ir6mr45344680obb.25.1374927858792; 
	Sat, 27 Jul 2013 05:24:18 -0700 (PDT)
Received: by 10.76.154.97 with HTTP; Sat, 27 Jul 2013 05:24:18 -0700 (PDT)
In-Reply-To: <CE189489.3F40C%david.c.stewart@intel.com>
References: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
	<CE189489.3F40C%david.c.stewart@intel.com>
Date: Sat, 27 Jul 2013 08:24:18 -0400
Message-ID: <CADM5y7tMX5iGGatxRo2DaA+2Nf-KTyp6=j5QrXvf1XaKwzaO5A@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Sat, 27 Jul 2013 12:24:22 -0000
Content-Type: multipart/alternative; boundary=089e015375809d7d7f04e27d567a

--089e015375809d7d7f04e27d567a
Content-Type: text/plain; charset=ISO-8859-1

I think the high level summary is:

1. You can look and see if the module is in open-embedded by checking at
http://layers.openembedded.org/ <http://layers.openembedded.org/layerindex/>
.
2. You're supposed to make a separate recipe for every little module.

- mulhern


On Sat, Jul 27, 2013 at 12:03 AM, Stewart, David C <
david.c.stewart@intel.com> wrote:

>  Did you get an answer? I'm not seeing it.
>
>   From: mulhern <mulhern@gmail.com>
> Date: Wednesday, July 24, 2013 8:30 AM
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] Discovering available Perl modules OR writing recipes
> for your own
>
>   Hi all,
>
>  I'm working on a recipe for pullledpork, which is a Perl app which grabs
> and combines Snort rules from various sites.
>
>  My questions all revolve around pulledpork's various module dependencies.
>
>  pulledpork tries to use the module Crypt::SSLeay and in my current
> configuration it can't find it. It is very easy to write a little recipes
> that provides this module and forge ahead.
>
>  But I'm not sure that that is the correct thing to do...especially as it
> looks like I'll have to do the same thing for another ten or so tiny
> modules if I take that approach.
>
>  First, is there some way that I can find out whether that or any
> particular Perl module is provided by some recipe somewhere? My plan would
> be to RDEPEND on every available Perl module, forcing them all to be
> installed in the right place, run the pulledpork script, do the right think
> to provide any modules still missing until the script can actually
> complete, and then remove from RDEPENDS all previously included modules
> that don't show up a values in %INC. So far, so good, but I don't know how
> to even locate all the Perl modules that are already available.
>
>  Second, if the modules really are not available is there a better way to
> package them up than writing individual recipes for each and every missing
> module?
>
>  Third, are there naming conventions that should be followed? For example
> there is a recipe for liburi-perl that provides the very simply named Perl
> module URI.
>
>  Thanks!
>
>  - mulhern
>
>
>

--089e015375809d7d7f04e27d567a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think the high level summary is:<div><br></div><div>1. Y=
ou can look and see if the module is in open-embedded by checking at=A0<a h=
ref=3D"http://layers.openembedded.org/layerindex/" target=3D"_blank" style=
=3D"font-size:13px;font-family:arial,sans-serif">http://layers.openembedded=
.org/</a>.</div>
<div>2. You&#39;re supposed to make a separate recipe for every little modu=
le.</div><div><br></div><div>- mulhern</div></div><div class=3D"gmail_extra=
"><br><br><div class=3D"gmail_quote">On Sat, Jul 27, 2013 at 12:03 AM, Stew=
art, David C <span dir=3D"ltr">&lt;<a href=3D"mailto:david.c.stewart@intel.=
com" target=3D"_blank">david.c.stewart@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">



<div style=3D"font-size:14px;font-family:Calibri,sans-serif;word-wrap:break=
-word">
<div>Did you get an answer? I&#39;m not seeing it.</div>
<div><br>
</div>
<span>
<div style=3D"border-right:medium none;padding-right:0in;padding-left:0in;p=
adding-top:3pt;text-align:left;font-size:11pt;border-bottom:medium none;fon=
t-family:Calibri;border-top:#b5c4df 1pt solid;padding-bottom:0in;border-lef=
t:medium none">

<span style=3D"font-weight:bold">From: </span>mulhern &lt;<a href=3D"mailto=
:mulhern@gmail.com" target=3D"_blank">mulhern@gmail.com</a>&gt;<br>
<span style=3D"font-weight:bold">Date: </span>Wednesday, July 24, 2013 8:30=
 AM<br>
<span style=3D"font-weight:bold">To: </span>&quot;<a href=3D"mailto:yocto@y=
octoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&quot; &lt;<a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject=
.org</a>&gt;<br>

<span style=3D"font-weight:bold">Subject: </span>[yocto] Discovering availa=
ble Perl modules OR writing recipes for your own<br>
</div><div><div class=3D"h5">
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">Hi all,
<div><br>
</div>
<div>I&#39;m working on a recipe for pullledpork, which is a Perl app which=
 grabs and combines Snort rules from various sites.</div>
<div><br>
</div>
<div>My questions all revolve around pulledpork&#39;s various module depend=
encies.</div>
<div><br>
</div>
<div>pulledpork tries to use the module Crypt::SSLeay and in my current con=
figuration it can&#39;t find it. It is very easy to write a little recipes =
that provides this module and forge ahead.</div>
<div><br>
</div>
<div>But I&#39;m not sure that that is the correct thing to do...especially=
 as it looks like I&#39;ll have to do the same thing for another ten or so =
tiny modules if I take that approach.</div>
<div><br>
</div>
<div>First, is there some way that I can find out whether that or any parti=
cular Perl module is provided by some recipe somewhere? My plan would be to=
 RDEPEND on every available Perl module, forcing them all to be installed i=
n the right place, run the pulledpork
 script, do the right think to provide any modules still missing until the =
script can actually complete, and then remove from RDEPENDS all previously =
included modules that don&#39;t show up a values in %INC. So far, so good, =
but I don&#39;t know how to even locate
 all the Perl modules that are already available.</div>
<div><br>
</div>
<div>Second, if the modules really are not available is there a better way =
to package them up than writing individual recipes for each and every missi=
ng module?</div>
<div><br>
</div>
<div>Third, are there naming conventions that should be followed? For examp=
le there is a recipe for liburi-perl that provides the very simply named Pe=
rl module URI.</div>
<div><br>
</div>
<div>Thanks!</div>
<div><br>
</div>
<div>- mulhern</div>
<div><br>
</div>
<div><br>
</div>
</div>
</div>
</div>
</div></div></span>
</div>

</blockquote></div><br></div>

--089e015375809d7d7f04e27d567a--
