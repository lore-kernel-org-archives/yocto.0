Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98ECDE00C59; Thu, 14 Feb 2019 10:04:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E6FE006B3
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:04:38 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id w204so4146199qka.2
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DvQU+OLFkh9NiC011165o19MIIcF7eUsSqikPrFXzE8=;
	b=bhaofSckj1tFOzJX8dAibJPONpPH2Q/8orSiOq1PmoJ1/uY3SOnaybHTEWXaaqopLA
	zOJzRauUWyzELvpHEcvCVGOwoYWYrjgYd/QD/mNZpcbaqADoUBEY+LU5MfpIwRdswxUA
	1UwMF971kGv9kCZGfXdKZEzN7+x4etF3s4mz7Y493sF0UjrFPC81nb8/BVdC1ZP0ieUE
	ty4svV6Nz4O+SQ64sHOOBiF93mhqbCjw+137LQMRAYF9aOstp4N3iZJTy1vvFkVs3M1v
	LxfeYkGR7/FO0BIDxzJaBet81g0YSLo/RemUREONtGufqP9zr2KR8/GI2coA7U5ZaONc
	y0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DvQU+OLFkh9NiC011165o19MIIcF7eUsSqikPrFXzE8=;
	b=gKaibSwIeb0MVNM2qzkPI1Mv63siDfz8Scc4RsGxNRGU0ELQpDS1XypiCFQM7VhHsQ
	gGbz6uF1Cca4/5MvjgwMsL6/zgnhTv/LliYazN2HShaftBUcT5q//6u1BwHcYmZilrMU
	JZq/k7gaIbOvP2++xppxEJjhBoU5MxQPObdoyOur8TwSRlbhkaSZcN9fiuvBcYiP7doV
	v/UnGd+fNVjD1avbGk2b946app27EOURGj6v9fQ/z1rKVbATWvhUcGloG3FRJx0J7HvP
	JQ3jlrrTDl54RO9FCP1NgH+kSqXlONu1WJ8d+Xp3wpRUDdbyB5S7VyRO+3jURIGoQTkK
	/Epg==
X-Gm-Message-State: AHQUAuZ3eHSr0tk8MJgNdeR5Lp9MDaJA/lRQ4SEIqcqO9Q9m/RJC/4cx
	rDkmDcvg09+NSbvufZA1lL7lNTLhSOGmwpP1N3Gz5XPO
X-Google-Smtp-Source: AHgI3IbzNFgApFV8zzk0QAz0ER022DrQvAEfnReU0fktOM0QfC8Qeh5wMNJubCbeU2eOFC6A2uDJ386/GmR3F0cApC0=
X-Received: by 2002:a37:7e86:: with SMTP id z128mr3757876qkc.20.1550167477593; 
	Thu, 14 Feb 2019 10:04:37 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
	<ea80547d-0845-3bb7-a532-6e3c1607d1f0@topic.nl>
In-Reply-To: <ea80547d-0845-3bb7-a532-6e3c1607d1f0@topic.nl>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Thu, 14 Feb 2019 10:04:26 -0800
Message-ID: <CAHSUxjQt4CxE_2LmQa3-bDe06-Hnt59ti8AG8FNz=LhoAPvtXA@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 18:04:39 -0000
Content-Type: multipart/alternative; boundary="000000000000d83e980581de7dca"

--000000000000d83e980581de7dca
Content-Type: text/plain; charset="UTF-8"

It'll be multiple software loads (with different required kernel modules
and things like) over at least two machines. These products will do very
different things but I want to use the same base and take advantage of OE's
sstate, etc.

So I want to be clear, I can figure out how to piece things together with
bash scripts to accomplish what I want, but I feel like there's a "correct"
way to manage multiple builds (that use different distros, machines,
environment variables) that I'm missing. (And perhaps I've already stumbled
on the "correct way" but it's not as elegant as I'd like so I'm not happy
with it yet.) Problem number one is that the build directory doesn't seem
to be something that is intended to be source controlled. I found the
TEMPLATECONF flag last night so that answers my question of how to source
control my sstate mirror locations and etc. I can write instructions that
are basically "git pull poky, git pull the layers, 'TEMPLATECONF=... source
oe_init_build_env', bitbake add_layers" But then what if you want to build
product a or product b?

I think what I may have just settled on is to make sure I've got my distros
set up correctly (one distro per product) and add in my own DEVBUILD flag
to my template local.conf.sample which will do things like turning on
debug_tweaks, ENABLE_UART and adding dropbear/etc. And that'll let me just
configure things by setting DISTRO, MACHINE and DEVBUILD=1/0. I'm ruling
out multiconf. I don't want my builds to take five minutes before I find
out that I have a typo in a recipe and I can get the same behavior by just
controlling the above. I'll probably set the tmpdir to something like
"tmp_DISTRO_MACHINE" to avoid different configs stepping on each other.

Does this seem like the proper way to do things?



On Wed, Feb 13, 2019 at 11:18 PM Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> Two products sounds like two machines. Just create a machine.conf for each
> product (even if they use similar hardware), then you don't need overrides
> elsewhere.
>
> OE/Yocto is smart enough to figure out what needs to be (re)built. Some OE
> projects build the same image(s) for over 40 machines (and counting)...
>
> On 14-02-19 01:34, Timothy Froehlich wrote:
> >
> > Hi, I've been struggling a bit with this question. I want to use Yocto
> to
> > build two+ products with separate dev/prod images for each (dev
> including
> > debug-tweaks, etc.). I've ruled out separate image recipes because my
> dev
> > builds need ENABLE_UART on my RaspberryPi and that needs to be set at
> the conf
> > level (I've got it set conditionally in my base dist conf). Multiconfig
> looked
> > promising, but I'm not happy about how long the parsing takes to start a
> > build. "--postread" looked nice, but I've barely seen it mentioned so
> I'm
> > worried that it's not well supported.
> >
> > Basically, what do most people do for controlling their builds?
> > Tim Froehlich
> > Embedded Linux Engineer
> > tfroehlich@archsys.io <mailto:tfroehlich@archsys.io>
> > 215-218-8955
> >
>
>

-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000d83e980581de7dca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;ll be multiple software loads (with different requi=
red kernel modules and things like) over at least two machines. These produ=
cts will do very different things but I want to use the same base and take =
advantage of OE&#39;s sstate, etc.=C2=A0<div><br></div><div>So I want to be=
 clear, I can figure out how to piece things together with bash scripts to =
accomplish what I want, but I feel like there&#39;s a &quot;correct&quot; w=
ay to manage multiple builds (that use different distros, machines, environ=
ment variables) that I&#39;m missing. (And perhaps I&#39;ve already stumble=
d on the &quot;correct way&quot; but it&#39;s not as elegant as I&#39;d lik=
e so I&#39;m not happy with it yet.) Problem number one is that the build d=
irectory doesn&#39;t seem to be something that is intended to be source con=
trolled. I found the TEMPLATECONF flag last night so that answers my questi=
on of how to source control my sstate mirror locations and etc. I can write=
 instructions that are basically &quot;git pull poky, git pull the layers, =
&#39;TEMPLATECONF=3D... source oe_init_build_env&#39;, bitbake add_layers&q=
uot; But then what if you want to build product a or product b?</div><div><=
br></div><div>I think what I may have just settled on is to make sure I&#39=
;ve got my distros set up correctly (one distro per product) and add in my =
own DEVBUILD flag to my template local.conf.sample which will do things lik=
e turning on debug_tweaks, ENABLE_UART and adding dropbear/etc. And that&#3=
9;ll let me just configure things by setting DISTRO, MACHINE and DEVBUILD=
=3D1/0. I&#39;m ruling out multiconf. I don&#39;t want my builds to take fi=
ve minutes before I find out that I have a typo in a recipe and I can get t=
he same behavior by just controlling the above. I&#39;ll probably set the t=
mpdir to something like &quot;tmp_DISTRO_MACHINE&quot; to avoid different c=
onfigs stepping on each other.</div><div><br></div><div>Does this seem like=
 the proper way to do things?<br><div><br></div></div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Feb 13, 2019 at 11:18 PM Mike Looijmans &lt;<a href=3D"mailto:mike.looijm=
ans@topic.nl">mike.looijmans@topic.nl</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Two products sounds like two machines.=
 Just create a machine.conf for each <br>
product (even if they use similar hardware), then you don&#39;t need overri=
des <br>
elsewhere.<br>
<br>
OE/Yocto is smart enough to figure out what needs to be (re)built. Some OE =
<br>
projects build the same image(s) for over 40 machines (and counting)...<br>
<br>
On 14-02-19 01:34, Timothy Froehlich wrote:<br>
&gt; <br>
&gt; Hi, I&#39;ve been struggling a bit with this question. I want to use Y=
octo to <br>
&gt; build two+ products with separate dev/prod images for each (dev includ=
ing <br>
&gt; debug-tweaks, etc.). I&#39;ve ruled out separate image recipes because=
 my dev <br>
&gt; builds need ENABLE_UART on my RaspberryPi and that needs to be set at =
the conf <br>
&gt; level (I&#39;ve got it set conditionally in my base dist conf). Multic=
onfig looked <br>
&gt; promising, but I&#39;m not happy about how long the parsing takes to s=
tart a <br>
&gt; build. &quot;--postread&quot; looked nice, but I&#39;ve barely seen it=
 mentioned so I&#39;m <br>
&gt; worried that it&#39;s not well supported.<br>
&gt; <br>
&gt; Basically, what do most people do for controlling their builds?<br>
&gt; Tim Froehlich<br>
&gt; Embedded Linux Engineer<br>
&gt; <a href=3D"mailto:tfroehlich@archsys.io" target=3D"_blank">tfroehlich@=
archsys.io</a> &lt;mailto:<a href=3D"mailto:tfroehlich@archsys.io" target=
=3D"_blank">tfroehlich@archsys.io</a>&gt;<br>
&gt; 215-218-8955<br>
&gt; <br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--000000000000d83e980581de7dca--
