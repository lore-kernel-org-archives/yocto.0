Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68755E006F1; Fri,  3 Aug 2018 07:06:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA79EE0049F
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2018 07:06:41 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id o22-v6so5069323ioh.6
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2018 07:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b9G58DadSdwY6m5WVQzTmfPOxvdTmn2TopV0+gVP/e4=;
	b=NoMbek4T9U8WS6s65PojwBvHFkIBvGaLhGWp8Mef0jHd5ZXAtMKciPbGzwOWj8mVhi
	oPV/OZ3KbqQOTTNX3nQOzILJRNMK+JFneVZQraF4LVJs8E3iTQKuU5mlFUX4jLprrNea
	ZjcjLR+dVGX5SLZGz2A4QuOVXdnQCwgjHud2cfWK8RYriiw8/zIxSFnhbkvEBbSnPeAW
	2NaAkCE5slJvF9uqFBrfYDg2/YEzR3N//3wpwkiP2u9Qfmkx1qA1snwDXTFf8yfhufB9
	yHfwukVdVhC07XOh3RJU7RAL3fdPho+bKKrPRYfEN0fzHW1SCJyNTCzjnGBYssoLutzn
	qylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b9G58DadSdwY6m5WVQzTmfPOxvdTmn2TopV0+gVP/e4=;
	b=gJgr0kUTHyegitemWQaBStlbkd0VZ3Uw4SfBDoYpkJlDMI/AiJhYeyCLTgd3RhIoI9
	2k08LzUXZdUnkPPErUYAfH5l/LBs1GnGw8cahzzg+31Aqc8tbvKiojSTRoMZb/ydH6jA
	7eeqS8geqgjkUJuN7cbktE/p1veBCpmHsEiQv4AMSWoXoNIOBMnvHhk1Qf9PL5cA3r+t
	J9/VqzsXmvrTnpg31aOqeTIp2zQyKoq2JVde8ElOKgxmi32FGitLW7Zdz3zEeA55G2YU
	WKaa6CzrYcIQl1CTN1B42p1XvVLtUAuITq4gQh34f5CG6ZtjptwtseVJqLBB3WRBVZ6p
	orvA==
X-Gm-Message-State: AOUpUlE8u2+Eo3MTF1Db+cw6goZ4aYeQPIkOsQw8YGQXxXd+mHgahdIv
	o8pk2G8N7CxN5R80N23I1oZIIBKfq+1ZNg+N3Yw=
X-Google-Smtp-Source: AA+uWPzI6n0Tob0gkdJVk+3EdCgnz1nmM9e8bEtcoewfxGIw8KZOEYTwmpxYEUTEBLlfR+7E/nh0nBMAMkBijUTAhuM=
X-Received: by 2002:a6b:5112:: with SMTP id
	f18-v6mr6437411iob.107.1533305201048; 
	Fri, 03 Aug 2018 07:06:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:9d37:0:0:0:0:0 with HTTP;
	Fri, 3 Aug 2018 07:06:20 -0700 (PDT)
In-Reply-To: <871sbfefbk.fsf@snkmail.com>
References: <877el7n8sx.fsf@linux.suse>
	<CAB2nKc-78ZZk-aEWqQHr8u4vRwPXUs_PQXUHGXuaaPNoQ+JMyA@mail.gmail.com>
	<871sbfefbk.fsf@snkmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 3 Aug 2018 16:06:20 +0200
Message-ID: <CAB2nKc8rhKMTHkikA1TDr6zD0fzKZK4-CeAtYGEfTe6zMw7AZA@mail.gmail.com>
To: Uwe Geuder <jrswdnan22@snkmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to write a distro layer?
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
X-List-Received-Date: Fri, 03 Aug 2018 14:06:43 -0000
Content-Type: multipart/alternative; boundary="000000000000d740b30572886f6c"

--000000000000d740b30572886f6c
Content-Type: text/plain; charset="UTF-8"

 You don't need to use add-layer, just create conf/bblayers.conf with
wanted layers:

LCONF_VERSION = "7"

BBPATH = "${TOPDIR}"
BSPDIR := "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) +
'/../..')}"

BBFILES ?= ""
BBLAYERS = " \
  ${BSPDIR}/sources/poky/meta \
  ${BSPDIR}/sources/poky/meta-poky \
  ${BSPDIR}/sources/meta-openembedded/meta-oe \
  "


2018-08-03 15:43 GMT+02:00 Uwe Geuder <jrswdnan22@snkmail.com>:

> Thanks Vincent for your quick reply!
>
> On Fri, Aug 3, 2018 at 12:44 PM, Vincent Prince <vincent.prince.fr-at-...>
> wrote:
> > 2018-08-03 10:39 GMT+02:00 Uwe Geuder <jrswdnan22@snkmail.com>:
>
> >>    One of the few informations I could find about how to create my own
> >>    layer was something like
> >>    https://www.openembedded.org/wiki/Creating_a_new_Layer
>
> > Did you check
> > https://www.yoctoproject.org/docs/latest/mega-manual/mega-
> manual.html#creating-a-general-layer-using-the-bitbake-layers-script
>
> Yes. The template generated by that script is very minimal and
> generic. I don't see any guidance for distro layers in particular.  As
> a matter fact I believe our layer has been created by that script
> (although that was long before my time).
>
>
> >> The yocto reference manual says for many variables: "Set it in your
> >> local.conf". For me they are policy, so why shouldn't I set them in
> >> distro/<distro>.conf?
>
> > Did you also check
> > https://www.yoctoproject.org/docs/latest/mega-manual/mega-
> manual.html#creating-your-own-distribution
>
> I had read that many times before, but not recently so let's check again...
>
> | Note
> | The DISTRO variable in your local.conf file determines the name of
> | your distribution
>
> [...]
>
> | Point to Your distribution configuration file: In your local.conf
> |  file in the Build Directory, set your DISTRO variable to point to
> |  your distribution's configuration file. For example, if your
> |  distribution's configuration file is named mydistro.conf, then you
> |  point to it as follows:
> |
> |     DISTRO = "mydistro"
>
>
> Correct, that's what I remembered. But if I set it in local.conf
> before adding my layer the bitbake sanity check will complain that
> there is no such layer. And if I modify local.conf after adding the
> layer all recipes will be re-parsed when building the first time.
>
> I don't see any guidance in what order the steps should be carried out
> when setting up a new build area.
>
> They do indicate that you should copy another distro's conf file,
> that's why I asked whether using "require" as we do is a bad/dangerous
> idea.
>
> > You can look some Freescale example here:
> > https://github.com/Freescale/meta-freescale-distro
>
> Good, I hadn't found those. At least the distro/<name>.conf files look
> pretty much like I would expect them.
>
> But all of them (I understand the layer defines 8 different distros)
> do set the DISTRO variable. I haven't run the yocto-check-layer for a
> while, but the last time I did it complained that a distro layer MUST
> NOT set its own DISTRO variable. Do you happen to know whether
> meta-freescale-distro passes the yocto-check-layer script without
> complaints? (I know I could test myself...)
>
> > In fact, when Yocto manual refers to adding something to local.conf,
> > it is the minimal way to do it, but the cleanest is indeed to set it
> > in machine/distro config file.
>
> That has also been my thinking. If that's generally accepted we
> probably should send a patch to the manual. It's pretty misleading if
> the manual without any further explanations says "do it way A" if "way
> B" often is actually the better one.
>
>
> > 1.) DISTRO is local to build folder,
>
> By "local to build folder", do you mean that within the same build folder
> one cannot build more than 1 distro? Not relevant for me, because I
> have only one for the time being, but just to understand the message.
>
> > so it should be in local.conf, and you can use a wrapper script to help
> > creating this local.conf file,
>
> Yes, that's what we do. Without a wrapper script builds were unlikely
> to be reproducible by any measure...
>
>
> > https://github.com/Freescale/fsl-community-bsp-base/blob/
> master/setup-environment
>
> Interesting. I cannot spot how that script handles layers.
>
> My own script
>
> 1) sources oe-init-build-env
> 2) modifies the generated conf/local.conf
> 3) runs bitbake-layer add-layer for all layers we need in our distro
>
> >> In an attempt to make our code more in line with what I understand to be
> >> correct style, I tried to move all policy settings to
> >> distro/<distro>.conf and the DISTRO setting to local.conf.
> >>
> >> However that created a couple of problems:
> >>
> >> 1. If I set DISTRO in local.conf before adding all needed layers, my own
> >> distro layer last, bitbake-layers fails in a sanity check that the
> >> distro does not exist. Fair enough, it doesn't know about before it has
> >> been added.
> >>
> >> 2. If I first modify my local.conf with all my settings except DISTRO,
> >> then run all the add-layer operations and finally modify local.conf a
> >> 2nd time to set DISTRO correctly the build works. However, all recipes
> >> are reparsed when the build starts. I guess this is caused by the config
> >> change.
> >>
> >> So in the end having the DISTRO setting in layer.conf seems to work
> >> best. All add-layer commands succeed and recipes can be used from the
> >> cache when the build starts. Best, except that I don't think that's the
> >> way it's documented.
> >>
> >> Any thoughts what I might be missing?
>
> > You can use git submodule, or google repo to create Yocto environment,
>
> Yes, we have all layers as submodules in a single git repo, so we
> always can do a clean build "from a single SHA1"
>
> > you don't need to create your layer each time
>
> What do you mean by creating a layer? Of course the source is in
> git and it only changes when necessary.
>
> What I do in every new build area is run add-layer. (Currently still
> repeatedly for one layer at a time, but I think I read in the new
> release notes that bitbake-layer can now add several layers at once.)
>
> I have thought about saving the generated layers.conf file and
> restoring it by my setup script. But somehow I feel more confident if
> the parsing is done for each new build area. Otherwise one might end
> up in the situation that one day you note that a change made weeks or
> months ago has broken something and nobody noted it.
>
> > and you don't have to compile before using bitbake-layers.
>
> Not sure what you mean by that. Of course I cannot build/compile
> anything before the build area is set-up completely.
>
> Bitbake-layer parses all recipes of the layer it adds. If I do not
> modify local.conf after adding the last layer the first build
> starts immediately from cached recipes.
>
> If I modify local.conf to set DISTRO after adding the last layer, the
> first build re-parses everything. Not that it's a huge increase to the
> whole build time, but it does not feel right.
>
> Regards,
>
> Uwe
>
> ---
> Uwe Geuder
> Neuro Event Labs Oy
> Tampere, Finland
> uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d740b30572886f6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>You don&#39;t need to use add-layer, just create conf/bblayers.conf wi=
th wanted layers:</div><div><br></div><div>LCONF_VERSION =3D &quot;7&quot;<=
br><br>BBPATH =3D &quot;${TOPDIR}&quot;<br>BSPDIR :=3D &quot;${@os.path.abs=
path(os.path.dirname(d.getVar(&#39;FILE&#39;, True)) + &#39;/../..&#39;)}&q=
uot;<br><br>BBFILES ?=3D &quot;&quot;<br>BBLAYERS =3D &quot; \<br>=C2=A0 ${=
BSPDIR}/sources/poky/meta \<br>=C2=A0 ${BSPDIR}/sources/poky/meta-poky \<br=
>=C2=A0 ${BSPDIR}/sources/meta-openembedded/meta-oe \<br>=C2=A0 &quot;<br><=
/div>

<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-08=
-03 15:43 GMT+02:00 Uwe Geuder <span dir=3D"ltr">&lt;<a href=3D"mailto:jrsw=
dnan22@snkmail.com" target=3D"_blank">jrswdnan22@snkmail.com</a>&gt;</span>=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Thanks Vincent for your quick reply!<br=
>
<span class=3D""><br>
On Fri, Aug 3, 2018 at 12:44 PM, Vincent Prince &lt;vincent.prince.fr-at-..=
.&gt; wrote:<br>
&gt; 2018-08-03 10:39 GMT+02:00 Uwe Geuder &lt;<a href=3D"mailto:jrswdnan22=
@snkmail.com">jrswdnan22@snkmail.com</a>&gt;:<br>
<br>
</span><span class=3D"">&gt;&gt;=C2=A0 =C2=A0 One of the few informations I=
 could find about how to create my own<br>
&gt;&gt;=C2=A0 =C2=A0 layer was something like<br>
&gt;&gt;=C2=A0 =C2=A0 <a href=3D"https://www.openembedded.org/wiki/Creating=
_a_new_Layer" rel=3D"noreferrer" target=3D"_blank">https://www.openembedded=
.org/<wbr>wiki/Creating_a_new_Layer</a><br>
<br>
&gt; Did you check<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-m=
anual.html#creating-a-general-layer-using-the-bitbake-layers-script" rel=3D=
"noreferrer" target=3D"_blank">https://www.yoctoproject.org/<wbr>docs/lates=
t/mega-manual/mega-<wbr>manual.html#creating-a-<wbr>general-layer-using-the=
-<wbr>bitbake-layers-script</a><br>
<br>
</span>Yes. The template generated by that script is very minimal and<br>
generic. I don&#39;t see any guidance for distro layers in particular.=C2=
=A0 As<br>
a matter fact I believe our layer has been created by that script<br>
(although that was long before my time).<br>
<span class=3D""><br>
<br>
&gt;&gt; The yocto reference manual says for many variables: &quot;Set it i=
n your<br>
&gt;&gt; local.conf&quot;. For me they are policy, so why shouldn&#39;t I s=
et them in<br>
&gt;&gt; distro/&lt;distro&gt;.conf?<br>
<br>
&gt; Did you also check<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-m=
anual.html#creating-your-own-distribution" rel=3D"noreferrer" target=3D"_bl=
ank">https://www.yoctoproject.org/<wbr>docs/latest/mega-manual/mega-<wbr>ma=
nual.html#creating-your-own-<wbr>distribution</a><br>
<br>
</span>I had read that many times before, but not recently so let&#39;s che=
ck again...<br>
<br>
| Note<br>
| The DISTRO variable in your local.conf file determines the name of<br>
| your distribution<br>
<br>
[...]<br>
<br>
| Point to Your distribution configuration file: In your local.conf<br>
|=C2=A0 file in the Build Directory, set your DISTRO variable to point to<b=
r>
|=C2=A0 your distribution&#39;s configuration file. For example, if your<br=
>
|=C2=A0 distribution&#39;s configuration file is named mydistro.conf, then =
you<br>
|=C2=A0 point to it as follows:<br>
|<br>
|=C2=A0 =C2=A0 =C2=A0DISTRO =3D &quot;mydistro&quot;<br>
<br>
<br>
Correct, that&#39;s what I remembered. But if I set it in local.conf<br>
before adding my layer the bitbake sanity check will complain that<br>
there is no such layer. And if I modify local.conf after adding the<br>
layer all recipes will be re-parsed when building the first time.<br>
<br>
I don&#39;t see any guidance in what order the steps should be carried out<=
br>
when setting up a new build area.<br>
<br>
They do indicate that you should copy another distro&#39;s conf file,<br>
that&#39;s why I asked whether using &quot;require&quot; as we do is a bad/=
dangerous<br>
idea.<br>
<span class=3D""><br>
&gt; You can look some Freescale example here:<br>
&gt; <a href=3D"https://github.com/Freescale/meta-freescale-distro" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/Freescale/<wbr>meta-freesc=
ale-distro</a><br>
<br>
</span>Good, I hadn&#39;t found those. At least the distro/&lt;name&gt;.con=
f files look<br>
pretty much like I would expect them.<br>
<br>
But all of them (I understand the layer defines 8 different distros)<br>
do set the DISTRO variable. I haven&#39;t run the yocto-check-layer for a<b=
r>
while, but the last time I did it complained that a distro layer MUST<br>
NOT set its own DISTRO variable. Do you happen to know whether<br>
meta-freescale-distro passes the yocto-check-layer script without<br>
complaints? (I know I could test myself...)<br>
<span class=3D""><br>
&gt; In fact, when Yocto manual refers to adding something to local.conf,<b=
r>
&gt; it is the minimal way to do it, but the cleanest is indeed to set it<b=
r>
&gt; in machine/distro config file.<br>
<br>
</span>That has also been my thinking. If that&#39;s generally accepted we<=
br>
probably should send a patch to the manual. It&#39;s pretty misleading if<b=
r>
the manual without any further explanations says &quot;do it way A&quot; if=
 &quot;way<br>
B&quot; often is actually the better one.<br>
<span class=3D""><br>
<br>
&gt; 1.) DISTRO is local to build folder,<br>
<br>
</span>By &quot;local to build folder&quot;, do you mean that within the sa=
me build folder<br>
one cannot build more than 1 distro? Not relevant for me, because I<br>
have only one for the time being, but just to understand the message.<br>
<span class=3D""><br>
&gt; so it should be in local.conf, and you can use a wrapper script to hel=
p<br>
&gt; creating this local.conf file,<br>
<br>
</span>Yes, that&#39;s what we do. Without a wrapper script builds were unl=
ikely<br>
to be reproducible by any measure...<br>
<br>
<br>
&gt; <a href=3D"https://github.com/Freescale/fsl-community-bsp-base/blob/ma=
ster/setup-environment" rel=3D"noreferrer" target=3D"_blank">https://github=
.com/Freescale/<wbr>fsl-community-bsp-base/blob/<wbr>master/setup-environme=
nt</a><br>
<br>
Interesting. I cannot spot how that script handles layers.<br>
<br>
My own script<br>
<br>
1) sources oe-init-build-env<br>
2) modifies the generated conf/local.conf<br>
3) runs bitbake-layer add-layer for all layers we need in our distro<br>
<span class=3D""><br>
&gt;&gt; In an attempt to make our code more in line with what I understand=
 to be<br>
&gt;&gt; correct style, I tried to move all policy settings to<br>
&gt;&gt; distro/&lt;distro&gt;.conf and the DISTRO setting to local.conf.<b=
r>
&gt;&gt; <br>
&gt;&gt; However that created a couple of problems:<br>
&gt;&gt; <br>
&gt;&gt; 1. If I set DISTRO in local.conf before adding all needed layers, =
my own<br>
&gt;&gt; distro layer last, bitbake-layers fails in a sanity check that the=
<br>
&gt;&gt; distro does not exist. Fair enough, it doesn&#39;t know about befo=
re it has<br>
&gt;&gt; been added.<br>
&gt;&gt; <br>
&gt;&gt; 2. If I first modify my local.conf with all my settings except DIS=
TRO,<br>
&gt;&gt; then run all the add-layer operations and finally modify local.con=
f a<br>
&gt;&gt; 2nd time to set DISTRO correctly the build works. However, all rec=
ipes<br>
&gt;&gt; are reparsed when the build starts. I guess this is caused by the =
config<br>
&gt;&gt; change.<br>
&gt;&gt; <br>
&gt;&gt; So in the end having the DISTRO setting in layer.conf seems to wor=
k<br>
&gt;&gt; best. All add-layer commands succeed and recipes can be used from =
the<br>
&gt;&gt; cache when the build starts. Best, except that I don&#39;t think t=
hat&#39;s the<br>
&gt;&gt; way it&#39;s documented.<br>
&gt;&gt; <br>
&gt;&gt; Any thoughts what I might be missing?<br>
<br>
&gt; You can use git submodule, or google repo to create Yocto environment,=
<br>
<br>
</span>Yes, we have all layers as submodules in a single git repo, so we<br=
>
always can do a clean build &quot;from a single SHA1&quot;<br>
<span class=3D""><br>
&gt; you don&#39;t need to create your layer each time <br>
<br>
</span>What do you mean by creating a layer? Of course the source is in<br>
git and it only changes when necessary.<br>
<br>
What I do in every new build area is run add-layer. (Currently still<br>
repeatedly for one layer at a time, but I think I read in the new<br>
release notes that bitbake-layer can now add several layers at once.)<br>
<br>
I have thought about saving the generated layers.conf file and<br>
restoring it by my setup script. But somehow I feel more confident if<br>
the parsing is done for each new build area. Otherwise one might end<br>
up in the situation that one day you note that a change made weeks or<br>
months ago has broken something and nobody noted it.<br>
<span class=3D""><br>
&gt; and you don&#39;t have to compile before using bitbake-layers.<br>
<br>
</span>Not sure what you mean by that. Of course I cannot build/compile<br>
anything before the build area is set-up completely.<br>
<br>
Bitbake-layer parses all recipes of the layer it adds. If I do not<br>
modify local.conf after adding the last layer the first build<br>
starts immediately from cached recipes.<br>
<br>
If I modify local.conf to set DISTRO after adding the last layer, the<br>
first build re-parses everything. Not that it&#39;s a huge increase to the<=
br>
whole build time, but it does not feel right. <br>
<br>
Regards,<br>
<br>
Uwe<br>
<br>
---<br>
<div class=3D"HOEnZb"><div class=3D"h5">Uwe Geuder<br>
Neuro Event Labs Oy<br>
Tampere, Finland<br>
<a href=3D"mailto:uwe.gexder@neuroeventlabs.com">uwe.gexder@neuroeventlabs.=
com</a> (Bot check: fix one obvious typo)<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--000000000000d740b30572886f6c--
