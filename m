Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 013C6E008E0; Fri,  3 Aug 2018 02:44:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
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
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56EACE0073D
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2018 02:44:33 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id d16-v6so5089123itj.0
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2018 02:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cTOsyBhWPDezP8TCcij/Ar9EIPEkcOkwylnR3wj0QFg=;
	b=fj6GwymOT0TZCDAUVTDIu4DlSPEL5AJshfQWSReLosjJ04300nnKJGJQU2QLydwVTE
	wbcnqxsJRygGElF+pLaO6qcZwAJov5rZ5ZdyZ8h+OTxyIysjJAxPNabLY4jHwZPZvtlJ
	k+iyvhvM7SwAjSQNcY+23Ex1BQwxpUcP6fHcpMVGsgKp2lONC6ESUiMEdgg0Vv/pxBas
	ZlS8h82VGsgdzoYgySV3u86U4FSoFBBHwRaFQg+/9a6tdE31BMmPFL1jyy/+IFJh24s8
	7mxGjpptBwmuPXKIsWqENBpgr0PLaI32D58UZ6/R2hfA5s6d+D/Kduawp9MXHULOvjMJ
	lc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cTOsyBhWPDezP8TCcij/Ar9EIPEkcOkwylnR3wj0QFg=;
	b=glzKVcyzo4xcYKLX2u57wjSu3ZGECtLeeNZY5xAIqEp/AET4Ij/Nzz5MJyRVkyGLZc
	IpJdz6qjV/RT+pIeEtPyFbtbU5hogOrcHiUvL4zsVyXExhvjbtIFlVEZSg1o+HAWbrWS
	drocDpbpkgWrzq9DAUepcRTJnigdWuyhiUVlVULPz83bw3LNacP1EuTPlBSbK8oDMmRe
	2ZrF6QHlQnKlcVQ+j8LmRWiYURQxI8AuYr/vjXk+SQKMqfK59m8HSciQ9h/ygsFmJn7F
	soQQ1rm0d/YajM0WX3undcjMcUtwlSlqZ6wChR1lunXPydBXUHIhw/MHecCqXSpbB466
	jogA==
X-Gm-Message-State: AOUpUlF0e32iQL6U3x7gjPhUQcyyZ8ZUwTV0Rej55i2+83iwjWV5iDWs
	sDJBFCGOPjIl2SUYyVjEBfTqNSSqpjLdvTMpAwg=
X-Google-Smtp-Source: AAOMgpfW9fUcQS16SmNOlojnuS2XRlzz1eeBx2Z6aTNEgUzVlhVoyVkdra8DVkphgeMRxEruDQEDvFhcyr4PcfgnNec=
X-Received: by 2002:a02:6901:: with SMTP id e1-v6mr2727314jac.62.1533289473105;
	Fri, 03 Aug 2018 02:44:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:9d37:0:0:0:0:0 with HTTP;
	Fri, 3 Aug 2018 02:44:12 -0700 (PDT)
In-Reply-To: <877el7n8sx.fsf@linux.suse>
References: <877el7n8sx.fsf@linux.suse>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 3 Aug 2018 11:44:12 +0200
Message-ID: <CAB2nKc-78ZZk-aEWqQHr8u4vRwPXUs_PQXUHGXuaaPNoQ+JMyA@mail.gmail.com>
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
X-List-Received-Date: Fri, 03 Aug 2018 09:44:37 -0000
Content-Type: multipart/alternative; boundary="00000000000061f258057284c63e"

--00000000000061f258057284c63e
Content-Type: text/plain; charset="UTF-8"

Hi Uwe,

2018-08-03 10:39 GMT+02:00 Uwe Geuder <jrswdnan22@snkmail.com>:

> Hi!
>
> [Disclaimer: I have posted a similar message months ago. There were no
> replies. Let's try whether I can express myself clearer this time.]
>
> One of the few informations I could find about how to create my own
> layer was something like
> https://www.openembedded.org/wiki/Creating_a_new_Layer
>


Did you check
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#creating-a-general-layer-using-the-bitbake-layers-script



> Especially for creating a distro layer that does not give much guidance.
>
> I could not find any examples of distro layers (except poky of course)
> on the net. Can somebody give me pointers?
>
> The auto-generated local.conf mentions subclassing
> poky. Is that concept explained anywhere?
>
> I inherited a distro layer, which sets a lot of its policy (selection of
> systemd and other feature/package selection) in layer.conf. From reading
> the documentation and other layer.conf files I understand that is NOT
> the way to do it. I would expect those settings in distro/<distro>.conf.
>
> The yocto reference manual says for many variables: "Set it in your
> local.conf". For me they are policy, so why shouldn't I set them in
> distro/<distro>.conf?
>
>
Did you also check
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#creating-your-own-distribution

You can look some Freescale example here:
https://github.com/Freescale/meta-freescale-distro

In fact, when Yocto manual refers to adding something to local.conf, it is
the minimal way to do it,
but the cleanest is indeed to set it in machine/distro config file.


> Well, basically there is only one configuration in bitbake. So often it
> does not matter in what configuration file a variable is set. The
> setting will end up in the environment of the tasks. However, especially
> when the ?= operator is used order becomes significant.
>
> Particularly tricky I found the DISTRO variable.
>
> Our distro layer does
>
> 1.) set the DISTRO variable in layer.conf (according to the manual it
> should be done in local.conf)
> 2.) from distro/<distro>.conf include (well, require) poky.conf. Is
> that a big no-no??? Of course I could copy all settings I want to keep from
> poky (and all those I don't understand what they do...), but copying code
> is generally not good SW engineering, including sounds better.
> 3.) set DISTRO again after having included poky.conf . According to
> the yocto-check-layer script a distro must not set its own
> name. However, poky does not follow that rule and sets its name, so our
> code has to violate the rule once more and revert poky's wrongdoing.
>
>
1.) DISTRO is local to build folder, so it should be in local.conf, and you
can use a wrapper script to help creating this local.conf file,
see
https://github.com/Freescale/fsl-community-bsp-base/blob/master/setup-environment
for instance.


> In an attempt to make our code more in line with what I understand to be
> correct style, I tried to move all policy settings to
> distro/<distro>.conf and the DISTRO setting to local.conf.
>
> However that created a couple of problems:
>
> 1. If I set DISTRO in local.conf before adding all needed layers, my own
> distro layer last, bitbake-layers fails in a sanity check that the
> distro does not exist. Fair enough, it doesn't know about before it has
> been added.
>
> 2. If I first modify my local.conf with all my settings except DISTRO,
> then run all the add-layer operations and finally modify local.conf a
> 2nd time to set DISTRO correctly the build works. However, all recipes
> are reparsed when the build starts. I guess this is caused by the config
> change.
>
> So in the end having the DISTRO setting in layer.conf seems to work
> best. All add-layer commands succeed and recipes can be used from the
> cache when the build starts. Best, except that I don't think that's the
> way it's documented.
>
Any thoughts what I might be missing?
>

You can use git submodule, or google repo to create Yocto environment, you
don't need to create your layer each time and you don't have to compile
before using bitbake-layers.


>

Regards,
>
> Uwe
>
>
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

--00000000000061f258057284c63e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Uwe,<br><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2018-08-03 10:39 GMT+02:00 Uwe Geuder <span dir=3D"ltr">&l=
t;<a href=3D"mailto:jrswdnan22@snkmail.com" target=3D"_blank">jrswdnan22@sn=
kmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Hi!<br>
<br>
[Disclaimer: I have posted a similar message months ago. There were no<br>
replies. Let&#39;s try whether I can express myself clearer this time.]<br>
<br>
One of the few informations I could find about how to create my own<br>
layer was something like<br>
<a href=3D"https://www.openembedded.org/wiki/Creating_a_new_Layer" rel=3D"n=
oreferrer" target=3D"_blank">https://www.openembedded.org/<wbr>wiki/Creatin=
g_a_new_Layer</a><br>
=C2=A0</blockquote><div><br></div><div>Did you check <br></div><div><a href=
=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#c=
reating-a-general-layer-using-the-bitbake-layers-script">https://www.yoctop=
roject.org/docs/latest/mega-manual/mega-manual.html#creating-a-general-laye=
r-using-the-bitbake-layers-script</a></div><div><br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Especially for creating a distro layer that does not give much guidance.<br=
>
<br>
I could not find any examples of distro layers (except poky of course)<br>
on the net. Can somebody give me pointers?<br>
<br></blockquote><div></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
The auto-generated local.conf mentions subclassing<br>
poky. Is that concept explained anywhere?<br>
<br>
I inherited a distro layer, which sets a lot of its policy (selection of<br=
>
systemd and other feature/package selection) in layer.conf. From reading<br=
>
the documentation and other layer.conf files I understand that is NOT<br>
the way to do it. I would expect those settings in distro/&lt;distro&gt;.co=
nf.<br>
<br>
The yocto reference manual says for many variables: &quot;Set it in your<br=
>
local.conf&quot;. For me they are policy, so why shouldn&#39;t I set them i=
n<br>
distro/&lt;distro&gt;.conf?<br>
<br></blockquote><div><br></div><div>
<div>Did you also check</div><div><a href=3D"https://www.yoctoproject.org/d=
ocs/latest/mega-manual/mega-manual.html#creating-your-own-distribution">htt=
ps://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#creating=
-your-own-distribution</a></div><div><br></div><div>You can look some Frees=
cale example here:</div><div><a href=3D"https://github.com/Freescale/meta-f=
reescale-distro">https://github.com/Freescale/meta-freescale-distro</a></di=
v>

</div><div><br></div><div>In fact, when Yocto manual refers to adding somet=
hing to local.conf, it is the minimal way to do it, <br></div><div>but the =
cleanest is indeed to set it in machine/distro config file.<br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Well, basically there is only one configuration in bitbake. So often it<br>
does not matter in what configuration file a variable is set. The<br>
setting will end up in the environment of the tasks. However, especially<br=
>
when the ?=3D operator is used order becomes significant.<br>
<br>
Particularly tricky I found the DISTRO variable. <br>
<br>
Our distro layer does<br>
<br>
1.) set the DISTRO variable in layer.conf (according to the manual it<br>
should be done in local.conf)<br>
2.) from distro/&lt;distro&gt;.conf include (well, require) poky.conf. Is<b=
r>
that a big no-no??? Of course I could copy all settings I want to keep from=
<br>
poky (and all those I don&#39;t understand what they do...), but copying co=
de<br>
is generally not good SW engineering, including sounds better.<br>
3.) set DISTRO again after having included poky.conf . According to<br>
the yocto-check-layer script a distro must not set its own<br>
name. However, poky does not follow that rule and sets its name, so our<br>
code has to violate the rule once more and revert poky&#39;s wrongdoing.<br=
>
<br></blockquote><div><br></div><div>1.) DISTRO is local to build folder, s=
o it should be in local.conf, and you can use a wrapper script to help crea=
ting this local.conf file, <br></div><div>see <a href=3D"https://github.com=
/Freescale/fsl-community-bsp-base/blob/master/setup-environment">https://gi=
thub.com/Freescale/fsl-community-bsp-base/blob/master/setup-environment</a>=
 for instance.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
In an attempt to make our code more in line with what I understand to be<br=
>
correct style, I tried to move all policy settings to<br>
distro/&lt;distro&gt;.conf and the DISTRO setting to local.conf.<br>
<br>
However that created a couple of problems:<br>
<br>
1. If I set DISTRO in local.conf before adding all needed layers, my own<br=
>
distro layer last, bitbake-layers fails in a sanity check that the<br>
distro does not exist. Fair enough, it doesn&#39;t know about before it has=
<br>
been added.<br>
<br>
2. If I first modify my local.conf with all my settings except DISTRO,<br>
then run all the add-layer operations and finally modify local.conf a<br>
2nd time to set DISTRO correctly the build works. However, all recipes<br>
are reparsed when the build starts. I guess this is caused by the config<br=
>
change.<br>
<br>
So in the end having the DISTRO setting in layer.conf seems to work<br>
best. All add-layer commands succeed and recipes can be used from the<br>
cache when the build starts. Best, except that I don&#39;t think that&#39;s=
 the<br>
way it&#39;s documented.<br></blockquote><div></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
Any thoughts what I might be missing?<br></blockquote><div><br></div><div>
You can use git submodule, or google repo to create Yocto environment,=20
you don&#39;t need to create your layer each time and you don&#39;t have to=
=20
compile before using bitbake-layers.

<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Regards,<br>
<br>
Uwe<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
<br>
Uwe Geuder<br>
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
</font></span></blockquote></div><br></div></div></div>

--00000000000061f258057284c63e--
