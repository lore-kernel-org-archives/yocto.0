Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ACECAE014C6
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 23:40:42 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id fo13so742904vcb.25
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 23:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=zZOlO2QERLwzlG+mLHrbIFN3NzBJcDNTHnYBFpwo6kY=;
	b=a1sTfUziiwyy5zPfaqES0YoJoOaDlXcgAh/c7VvJZpeIG+v969AK5fn/76f4+Zq/Iq
	v/IfzA/N9fEV7AfGPFEtxIN8wkDzq+XY+dkYIRKt6BkuC/BYWL0Hd7DX0PJ9zLmaEct5
	mvRfn7BYlEBTwK+GCajBetd/mqD1FQSIa81Wp30A7YrKrgNjMKpkuQFMtELajGAVyUdT
	x7QhpU2QOL620gpEZJJ6y+tka8YOU97BEosp4dWzL86XkcLy5MdCXTGFuu8mWAYKcFpT
	TmaoHXHLdocRrXyM0Eq/J7leEd6JgaBXWGMZ9ge7ONOACGeY5cEQxb9FlSvMUV3eZ4Y0
	lllg==
MIME-Version: 1.0
X-Received: by 10.52.36.194 with SMTP id s2mr453870vdj.119.1362728441597; Thu,
	07 Mar 2013 23:40:41 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Thu, 7 Mar 2013 23:40:41 -0800 (PST)
In-Reply-To: <38dd620e.10d77.13d457220af.Coremail.huanmateme@163.com>
References: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
	<5133CBD7.5020903@communistcode.co.uk>
	<38dd620e.10d77.13d457220af.Coremail.huanmateme@163.com>
Date: Fri, 8 Mar 2013 08:40:41 +0100
Message-ID: <CABTzgQ5EEmg1Wg0757F_hEAVJ4pM735kS-D+HaAbNGgxq9f_GQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Biao <huanmateme@163.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to bitbake core-image-minimal on Archlinux
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
X-List-Received-Date: Fri, 08 Mar 2013 07:40:43 -0000
Content-Type: multipart/alternative; boundary=20cf307c9fc0afd3e104d764f072

--20cf307c9fc0afd3e104d764f072
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

hey Biao,

The sanity information is provided in the directory meta-yocto/conf/distro/
... Here there are several distributions and in their conf file you have
the sanity tested ditro .. :)

Greets,
Satya


On Thu, Mar 7, 2013 at 4:22 PM, Biao <huanmateme@163.com> wrote:

>
>
>
>
>
>
> =E5=9C=A8 2013-03-04 06:16:55=EF=BC=8C"Jack Mitchell" <ml@communistcode.c=
o.uk> =E5=86=99=E9=81=93=EF=BC=9A
>
>  On 03/03/13 18:02, Ismael Barros=C2=B2 wrote:
>
> Hi there,
>
>  I'm new to Yocto, and I keep finding errors that prevent me from
> building a minimal image.
>
>  I've just installed poky-danny-8.0, sourced oe-init-build-env, and
> bitbaked core-image-minimal. The first error is that bitbake sanity check=
s
> fail to detect the network access, while my network connectivity is
> perfect, and downloading packages seem to work if I disable this checks.
> Full log: http://pastebin.com/6jJCC1qp. I couldn't find any log that told
> me which piece of code was failing, so I jut disabled this check
> on ../meta-yocto/conf/distro/poky.conf
>
>  Upon trying again, building started fine, but it started failing to
> build the documentation for some packages, i.e. binutils-cross. First off=
,
> I want to build a single mission appliance, I don't really want to build
> any documentation, is there any way I can disable it? Anyway, this is the
> build log: http://pastebin.com/n9U4GfjG. Looks like there are some
> texinfo commands my machine (texinfo 5.0) doesn't recognice. According to
> http://sourceware.org/bugzilla/show_bug.cgi?id=3D15183, it's a known bug
> on binuilts-2.22 and it's fixed on binuilts-2.23.
>
>  Poking around, looks like "updating" to binutils-2.23 got it kind of
> working:
>
>  mv ./meta/recipes-devtools/binutils/binutils-2.22.inc
> ./meta/recipes-devtools/binutils/binutils-2.23.1.inc
> mv ./meta/recipes-devtools/binutils/binutils-cross-canadian_2.22.bb./meta=
/recipes-devtools/binutils/
> binutils-cross-canadian_2.23.1.bb
> mv ./meta/recipes-devtools/binutils/binutils_2.22.bb./meta/recipes-devtoo=
ls/binutils/
> binutils_2.23.1.bb
> mv ./meta/recipes-devtools/binutils/binutils-crosssdk_2.22.bb./meta/recip=
es-devtools/binutils/
> binutils-crosssdk_2.23.1.bb
> mv ./meta/recipes-devtools/binutils/binutils-cross_2.22.bb./meta/recipes-=
devtools/binutils/
> binutils-cross_2.23.1.bb
>
>  I also had to update the md5 and sha1
> on ./meta/recipes-devtools/binutils/binutils-2.23.1.inc. After that, some
> patches failed to apply:
> libtool-2.4-update.patch, binutils-2.19.1-ld-sysroot.patch, binutils-pois=
on.patch,
> libtool-rpath-fix.patch, clone-shadow.patch... so gave up
> What would be the appropiate way to workaround this issue, besides not
> using Archlinux?
>
>  Btw, if the bitbake core-image-minimal fails because there's not enough
> disk space, and the free disk in the partition is left to 0, after that
> even the bitbake clean command fails :\
>
>
>  Anyway, thank you guys for what seems to be an excellent BSP factory,
> I'm really looking forward to start using it at our company :)
>
>  Kind regards,
> Ismael
>
>
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/li=
stinfo/yocto
>
>
> Hi Ismael,
>
> Archlinux currently has texinfo5 in it's core repo which breaks a
> significant amount of packages. I would suggest downgrading to textinfo4.=
x
> (can't remember the exact version) and then things should at least start =
to
> get going again. I'm afraid however if you insist on using a rolling
> release distro you are going to hit these problems more often than most, =
if
> you want a stable build environment then I would suggest using a sanity
> tested distro. If you do with to persist with Archlinux I suggest you
> follow oe-core/yocto master and update regulary.
>
>
> One dummy question, how to find out the list of all "sanity tested
> distro", i just saw a long list from the output of "git tag".
>
> Thanks,
> Biao
>
>
> Cheers,
> Jack.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--20cf307c9fc0afd3e104d764f072
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hey Biao,<div><br></div><div style>The sanity information =
is provided in the directory meta-yocto/conf/distro/ ... Here there are sev=
eral distributions and in their conf file you have the sanity tested ditro =
.. :)</div>
<div style><br></div><div style>Greets,</div><div style>Satya</div></div><d=
iv class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Mar 7, =
2013 at 4:22 PM, Biao <span dir=3D"ltr">&lt;<a href=3D"mailto:huanmateme@16=
3.com" target=3D"_blank">huanmateme@163.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"line-height:1.7;font-size:14px=
;font-family:arial"><br><br><br><br><br><div></div><div></div><br>=E5=9C=A8=
 2013-03-04 06:16:55=EF=BC=8C&quot;Jack=C2=A0Mitchell&quot;=C2=A0&lt;<a hre=
f=3D"mailto:ml@communistcode.co.uk" target=3D"_blank">ml@communistcode.co.u=
k</a>&gt; =E5=86=99=E9=81=93=EF=BC=9A<div>
<div class=3D"h5"><br> <blockquote style=3D"PADDING-LEFT:1ex;MARGIN:0px 0px=
 0px 0.8ex;BORDER-LEFT:#ccc 1px solid">
 =20
   =20
 =20
 =20
    <div>On 03/03/13 18:02, Ismael Barros=C2=B2
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi there,
        <div><br>
        </div>
        <div>I&#39;m new to Yocto, and I keep finding errors that
          prevent me from building a minimal image.</div>
        <div><br>
        </div>
        <div>I&#39;ve just installed=C2=A0poky-danny-8.0,
          sourced=C2=A0oe-init-build-env, and bitbaked=C2=A0core-image-mini=
mal.
          The first error is that bitbake sanity checks fail to detect
          the network access, while my network connectivity is perfect,
          and downloading packages seem to work if I disable this
          checks. Full log:=C2=A0<a href=3D"http://pastebin.com/6jJCC1qp" t=
arget=3D"_blank">http://pastebin.com/6jJCC1qp</a>.
          I couldn&#39;t find any log that told me which piece of code was
          failing, so I jut disabled this check
          on=C2=A0../meta-yocto/conf/distro/poky.conf</div>
        <div><br>
        </div>
        <div>Upon trying again, building started fine, but it
          started failing to build the documentation for some packages,
          i.e. binutils-cross. First off, I want to build a single
          mission appliance, I don&#39;t really want to build any
          documentation, is there any way I can disable it? Anyway, this
          is the build log:=C2=A0<a href=3D"http://pastebin.com/n9U4GfjG" t=
arget=3D"_blank">http://pastebin.com/n9U4GfjG</a>.
          Looks like there are some texinfo commands my machine (texinfo
          5.0) doesn&#39;t recognice. According to=C2=A0<a href=3D"http://s=
ourceware.org/bugzilla/show_bug.cgi?id=3D15183" target=3D"_blank">http://so=
urceware.org/bugzilla/show_bug.cgi?id=3D15183</a>,
          it&#39;s a known bug on=C2=A0binuilts-2.22 and it&#39;s fixed
          on=C2=A0binuilts-2.23.</div>
        <div><br>
        </div>
        <div>Poking around, looks like &quot;updating&quot; to
          binutils-2.23 got it kind of working:</div>
        <div><br>
        </div>
        <div>
          <div>mv ./meta/recipes-devtools/binutils/binutils-2.22.inc
            ./meta/recipes-devtools/binutils/binutils-2.23.1.inc</div>
          <div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binuti=
ls-cross-canadian_2.22.bb" target=3D"_blank">binutils-cross-canadian_2.22.b=
b</a>
            ./meta/recipes-devtools/binutils/<a href=3D"http://binutils-cro=
ss-canadian_2.23.1.bb" target=3D"_blank">binutils-cross-canadian_2.23.1.bb<=
/a></div>
          <div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binuti=
ls_2.22.bb" target=3D"_blank">binutils_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a href=3D"http://binutils_2.2=
3.1.bb" target=3D"_blank">binutils_2.23.1.bb</a></div>
          <div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binuti=
ls-crosssdk_2.22.bb" target=3D"_blank">binutils-crosssdk_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a href=3D"http://binutils-cro=
sssdk_2.23.1.bb" target=3D"_blank">binutils-crosssdk_2.23.1.bb</a></div>
          <div>mv ./meta/recipes-devtools/binutils/<a href=3D"http://binuti=
ls-cross_2.22.bb" target=3D"_blank">binutils-cross_2.22.bb</a>
            ./meta/recipes-devtools/binutils/<a href=3D"http://binutils-cro=
ss_2.23.1.bb" target=3D"_blank">binutils-cross_2.23.1.bb</a></div>
          <div>
            <br>
          </div>
          <div>I also had to update the md5 and sha1
            on=C2=A0./meta/recipes-devtools/binutils/binutils-2.23.1.inc.
            After that, some patches failed to apply:
            libtool-2.4-update.patch,=C2=A0binutils-2.19.1-ld-sysroot.patch=
,=C2=A0binutils-poison.patch,
            libtool-rpath-fix.patch,=C2=A0clone-shadow.patch... so gave up<=
/div>
          <div>What would be the appropiate way to workaround
            this issue, besides not using Archlinux?</div>
        </div>
        <div><br>
        </div>
        <div>Btw, if the bitbake core-image-minimal fails
          because there&#39;s not enough disk space, and the free disk in
          the partition is left to 0, after that even the bitbake clean
          command fails :\</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Anyway, thank you guys for what seems to be an
          excellent BSP factory, I&#39;m really looking forward to start
          using it at our company :)</div>
        <div><br>
        </div>
        <div>
          Kind regards,</div>
        <div>Ismael</div>
      </div>
      <br>
      <fieldset></fieldset>
      <br>
      <pre>_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
    Hi Ismael,<br>
    <br>
    Archlinux currently has texinfo5 in it&#39;s core repo which breaks a
    significant amount of packages. I would suggest downgrading to
    textinfo4.x (can&#39;t remember the exact version) and then things
    should at least start to get going again. I&#39;m afraid however if you
    insist on using a rolling release distro you are going to hit these
    problems more often than most, if you want a stable build
    environment then I would suggest using a sanity tested distro. If
    you do with to persist with Archlinux I suggest you follow
    oe-core/yocto master and update regulary.</blockquote><div><br></div></=
div></div><div>One dummy question, how to find out the list of all &quot;sa=
nity tested distro&quot;, i just saw a long list from the output of &quot;g=
it tag&quot;.=C2=A0</div>
<div><br></div><div>Thanks,</div><div>Biao</div><br><blockquote style=3D"PA=
DDING-LEFT:1ex;MARGIN:0px 0px 0px 0.8ex;BORDER-LEFT:#ccc 1px solid">
    <br>
    Cheers,<br>
    Jack.<br>
 =20

</blockquote></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--20cf307c9fc0afd3e104d764f072--
