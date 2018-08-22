Return-Path: <christopher.w.clark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD35E00546; Wed, 22 Aug 2018 13:01:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christopher.w.clark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53FE4E00460
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 13:01:53 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id v9-v6so2368777ljk.4
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 13:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/vbbQlLB9hJTxUj1YPETlM7fmDviTpcXHNJCclYTT7E=;
	b=agftu0HZHUCShK71JB4aV2ggrInPTKTMrBKftFSJoZ+sA/P8p6h/5QVTEMIMJjJM0m
	wYsyvCgPXML4VfM6O5rWLWsUD9h0dZwIy5Phe9IPN0JAjo274niCG2TVlAija3M/zu9s
	un0a3iYxeq5k34saRSMdTgQcMGR+SewFs6nY/pd9g3HWmZsdlIhMcZvZNcH/asJ3wZnv
	2UMFtcndKNZN3EL4JyGk8Zr580o3EaHb6fwtAqko7im2nnwzfDKISRw3jfxpW3GSg6sZ
	R/J8zDa7/PFYn3N2V7WC3qd8D2HrCWKbSjSkDyH3pQLjLAERhYRaee5qd+9iHUNJxmgb
	l5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/vbbQlLB9hJTxUj1YPETlM7fmDviTpcXHNJCclYTT7E=;
	b=Lon4HlwbcIssoWsZ7xr+aTsBVTJ4nLkL/uh0qWA9k9Ce/aGdvE2RlCXOB2VfbzISyb
	VuIW6ok9Gp8rtWizPMR6YDaWURgtqDoic0HCmRpFRIF64Njfh0s1CL+yay+cvNl5imal
	XlnooLiMzRT4AL8ELOCu7obzU7DWHKG6XvXYhbXWs8nuO1yrJJEJydAmKvoH+S9v5SK0
	oLmy7TV4vjbt1vFALZ0SHtfY/9YPqs9l9EgDrfAvzjs+upS8p2vWhRRL19sL54v33Sqk
	Ym/dKzmbVrE9uwSfr/pZrIGgx++Qg5ninxGxc0uumrTpTS+GW83JklDWxKpzLS9vWxhy
	ORrw==
X-Gm-Message-State: AOUpUlGhxNTMk6LBX2WSL75A/HVIjoSceWI7s1Az5mMySIu+HgTu+h2I
	Dj7s7k19sZm7uKjT9XusZuBh1ZBZ4oXzPvE9UVM=
X-Google-Smtp-Source: AA+uWPyov8rPqSY3MQzm2NeT2V46Qfsg2IeC1c8BhVLEYF5ZGFsIIPL3S/eg3MMqgvmBdu+PjvgqTJBl5eo/MQ90KhE=
X-Received: by 2002:a2e:2e02:: with SMTP id
	u2-v6mr39762666lju.77.1534968112313; 
	Wed, 22 Aug 2018 13:01:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:95c5:0:0:0:0:0 with HTTP; Wed, 22 Aug 2018 13:01:51
	-0700 (PDT)
From: Christopher Clark <christopher.w.clark@gmail.com>
Date: Wed, 22 Aug 2018 13:01:51 -0700
Message-ID: <CACMJ4Gb=y2HQhtX8+sT+0fnxoAU8ObavUGFxMC2L=uQ8xzGrww@mail.gmail.com>
To: w@tolkien.email, yocto@yoctoproject.org
Subject: Re: Creating meta-ocaml layer - how to handle system-wide OCaml library manager?
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
X-List-Received-Date: Wed, 22 Aug 2018 20:01:55 -0000
Content-Type: multipart/alternative; boundary="0000000000001387c005740b9dcc"

--0000000000001387c005740b9dcc
Content-Type: text/plain; charset="UTF-8"

> > On Tue, 14 Aug 2018 17:23:55 +0000, Wolfgang Tolkien <w@tolkien.email>
> wrote:
> >
> > I need some help and direction:
> >
> > I've started working on a 'meta-ocaml' layer to add support for the
> > OCaml language to Yocto:
> >
> > https://gitlab.com/wtolkien/meta-ocaml
> >
> > However, many OCaml projects seem to rely on the 'findlib' library
> > manager (http://projects.camlcity.org/projects/findlib.html) which keeps
> > all information in a fixed system-global path.
> >
> > This seems to conflict with Yocto's sysroot concept. Also, 'findlib'
> > handles dependencies, which is obviously something Yocto would normally
> do.
> >
> > What's the best way to handle this? Try to make do without findlib?
> > Ideally I'd like to end up with an 'ocaml.bbclass' file that just needs
> > to be included, but maybe that's not achievable?
>
>
Hi Wolfgang,

I'm happy to see your interest in building an OCaml layer for Yocto and
OpenEmbedded. I have some practical experience with that endeavour and I
can hopefully provide some guidance. Your observations above of integration
challenges are accurate.

I work on the OpenXT Project, which uses the Xen hypervisor. Xen has some
associated Open Source tools written OCaml: eg. vhdtool is useful; there is
an OCaml implementation of the xenstore daemon; and the xapi toolstack,
used by Citrix XenServer, is written in OCaml. The Mirage Project, which
enables production of unikernels from OCaml source, is likely to be the
strongest motivator for continued interest in using OCaml with Xen. The
ability to cross-compile with OE, on x86-64 hardware for ARM IoT targets
would be valuable to Mirage.

My view is that there is a need for input and resources from the OCaml
community to build a supportable OCaml OpenEmbedded layer. I think that
OE's robust support for cross-compilation, and toolchain for building full
integrated systems, would be valuable to that community and could motivate
engagement with OE.

The OpenXT Project's current OCaml layer is very simple, found here:
https://github.com/OpenXT/meta-openxt-ocaml-platform
and is used by recipes such as this:
https://github.com/OpenXT/xenclient-oe/blob/master/recipes-openxt/xenclient/uid_git.bb

I have a different version of this layer in a branch on my Github
repository with additional functionality, built while researching Opam
package manager integration into the layer, plus another layer containing a
couple of sample tool recipes to exercise it. I haven't worked on this for
several months, due to more pressing priorities, so this is a snapshot of
incomplete development work.

# opam integration branch of the layer, with build instructions:
https://github.com/dozylynx/meta-openxt-ocaml-platform/tree/sumo-opam-integration

# layer with vhd-tool and mirage recipes, and their build dependencies:
https://github.com/dozylynx/meta-ocaml-apps/tree/sumo

Note that vhd-tool and mirage build with different versions of OCaml
(4.02.2 and 4.04.2 respectively) via switches, deliberately: that version
of vhd-tool actually works, and mirage needs modern libraries.

About this Opam integration research layer:

* This layer provides a "fetcher" to be used by bitbake that integrates
opam,
  enabling SRC_URI in the recipe to specify OCaml packages to build.
  This means that you can skip having to write a recipe for every dependency
  of every opam package: specify what you want and it'll run the solver.

* It respects OE's build steps: eg. it only fetches during "do_fetch".

* It does not require installation of any OCaml tools on the build host; it
will
  build the version of opam that it uses. (Possibly OE-blastphemy though...)

* It supports lockdown of package dependencies. The file produced when
  running the solver can be captured and added to the recipe for future
  deterministic builds.

* Patches can be applied to individual dependencies, in the typical OE way,
  listed in the recipe.
  (eg. to fix simple portability defects in OCaml software build scripts.)

* It handles building software inside specified Opam "switches", so that
  you don't have to have all software packages in a layer all use the
  same version of OCaml: each recipe can use the platform version it needs.
  This can utilize significant amounts of disk space pretty quickly;
  reuse of switches has been out of scope for this work so far.

  In my view, this is a requirement for a supportable OCaml layer,
  because the available OCaml software is highly version-sensitive.
  Once you find a version of a tool that works, it's important to be
  able to retain the ability to build it, even as the versions of other
  tools advance independently.

* It can build OCaml software for both native and target.
  eg. vhd-tool is very useful native to produce Virtual Machine disk images
  from OE builds.
  The layer handles the bytecode hashbang carefully, taking switches
  and recipe-specific-sysroots into account.

* Cross-compilation support is incomplete. A skeleton structure is there
  but there are real challenges getting dune/jbuilder to cooperate, and
  also establish an environment to link correctly.
  Unfortunately it is common for OCaml software packages to assume that
  software that has been built can then be run in a later stage of the
build.

This layer is definitely incomplete, fairly rough, and should be considered
as a prototype, proof-of-concept. There are some pretty serious hacks in
place, just to get it close to working -- eg. heuristics to switch between
compiling for host and cross-compiling for target -- but with that said, my
view is that it does demonstrate a viable structure, and that the objective
of delivering integration is achievable. The next step would be to work on
the OCaml tools to better support the OE environment.

It hasn't had review by the Yocto, OE or OCaml communities and I don't
consider it to be ready for that; but since you asked for just this thing,
I thought you might find it of interest. Please let me know if you'd like
to talk.

Christopher

--0000000000001387c005740b9dcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">&gt; On Tue, 14 Aug 2018 =
17:23:55 +0000, Wolfgang Tolkien &lt;w@tolkien.email&gt; wrote:<br>&gt; <br=
>
&gt; I need some help and direction:<br>
&gt; <br>
&gt; I&#39;ve started working on a &#39;meta-ocaml&#39; layer to add suppor=
t for the<br>
&gt; OCaml language to Yocto:<br>
&gt; <br>
&gt; <a href=3D"https://gitlab.com/wtolkien/meta-ocaml" rel=3D"noreferrer" =
target=3D"_blank">https://gitlab.com/wtolkien/<wbr>meta-ocaml</a><br>
&gt; <br>
&gt; However, many OCaml projects seem to rely on the &#39;findlib&#39; lib=
rary<br>
&gt; manager (<a href=3D"http://projects.camlcity.org/projects/findlib.html=
" rel=3D"noreferrer" target=3D"_blank">http://projects.camlcity.org/<wbr>pr=
ojects/findlib.html</a>) which keeps<br>
&gt; all information in a fixed system-global path.<br>
&gt; <br>
&gt; This seems to conflict with Yocto&#39;s sysroot concept. Also, &#39;fi=
ndlib&#39;<br>
&gt; handles dependencies, which is obviously something Yocto would normall=
y do.<br>
&gt; <br>
&gt; What&#39;s the best way to handle this? Try to make do without findlib=
?<br>
&gt; Ideally I&#39;d like to end up with an &#39;ocaml.bbclass&#39; file th=
at just needs<br>
&gt; to be included, but maybe that&#39;s not achievable?<br><br></blockquo=
te><div><br></div><div>Hi Wolfgang,</div><div><br></div><div>I&#39;m happy =
to see your interest in building an OCaml layer for Yocto and OpenEmbedded.=
 I have some practical experience with that endeavour and I can hopefully p=
rovide some guidance. Your observations above of integration challenges are=
 accurate.</div><div><br></div><div>I work on the OpenXT Project, which use=
s the Xen hypervisor. Xen has some associated Open Source tools written OCa=
ml: eg. vhdtool is useful; there is an OCaml implementation of the xenstore=
 daemon; and the xapi toolstack, used by Citrix XenServer, is written in OC=
aml. The Mirage Project, which enables production of unikernels from OCaml =
source, is likely to be the strongest motivator for continued interest in u=
sing OCaml with Xen. The ability to cross-compile with OE, on x86-64 hardwa=
re for ARM IoT targets would be valuable to Mirage.<br></div><div><br></div=
><div><div style=3D"font-size:small;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial">My view is that the=
re is a need for input and resources from the OCaml community to build a su=
pportable OCaml OpenEmbedded layer. I think that OE&#39;s robust support fo=
r cross-compilation, and toolchain for building full integrated systems, wo=
uld be valuable to that community and could motivate engagement with OE.</d=
iv></div><div><br></div><div>The OpenXT Project&#39;s current OCaml layer i=
s very simple, found here:</div><div><a href=3D"https://github.com/OpenXT/m=
eta-openxt-ocaml-platform">https://github.com/OpenXT/meta-openxt-ocaml-plat=
form</a></div><div>and is used by recipes such as this:</div><div><a href=
=3D"https://github.com/OpenXT/xenclient-oe/blob/master/recipes-openxt/xencl=
ient/uid_git.bb">https://github.com/OpenXT/xenclient-oe/blob/master/recipes=
-openxt/xenclient/uid_git.bb</a></div><div><br></div><div>I have a differen=
t version of this layer in a branch on my Github repository with additional=
 functionality, built while researching Opam package manager integration in=
to the layer, plus another layer containing a couple of sample tool recipes=
 to exercise it. I haven&#39;t worked on this for several months, due to mo=
re pressing priorities, so this is a snapshot of incomplete development wor=
k.</div><div><br></div><div># opam integration branch of the layer, with bu=
ild instructions:</div><div><a href=3D"https://github.com/dozylynx/meta-ope=
nxt-ocaml-platform/tree/sumo-opam-integration">https://github.com/dozylynx/=
meta-openxt-ocaml-platform/tree/sumo-opam-integration</a></div><div><br></d=
iv><div># layer with vhd-tool and mirage recipes, and their build dependenc=
ies:</div><div><a href=3D"https://github.com/dozylynx/meta-ocaml-apps/tree/=
sumo">https://github.com/dozylynx/meta-ocaml-apps/tree/sumo</a></div><div><=
br></div><div>Note that vhd-tool and mirage build with different versions o=
f OCaml (4.02.2 and 4.04.2 respectively) via switches, deliberately: that v=
ersion of vhd-tool actually works, and mirage needs modern libraries.</div>=
<div><br></div><div><div>About this Opam integration research layer:</div><=
div><br></div><div>* This layer provides a &quot;fetcher&quot; to be used b=
y bitbake that integrates opam,</div><div>=C2=A0 enabling SRC_URI in the re=
cipe to specify OCaml packages to build.</div><div>=C2=A0 This means that y=
ou can skip having to write a recipe for every dependency</div><div>=C2=A0 =
of every opam package: specify what you want and it&#39;ll run the solver.<=
/div><div><br></div><div>* It respects OE&#39;s build steps: eg. it only fe=
tches during &quot;do_fetch&quot;.</div><div><br></div><div>* It does not r=
equire installation of any OCaml tools on the build host; it will</div><div=
>=C2=A0 build the version of opam that it uses. (Possibly OE-blastphemy tho=
ugh...)</div><div><br></div><div>* It supports lockdown of package dependen=
cies. The file produced when</div><div>=C2=A0 running the solver can be cap=
tured and added to the recipe for future</div><div>=C2=A0 deterministic bui=
lds.</div><div><br></div><div>* Patches can be applied to individual depend=
encies, in the typical OE way,</div><div>=C2=A0 listed in the recipe.</div>=
<div>=C2=A0 (eg. to fix simple portability defects in OCaml software build =
scripts.)</div><div><br></div><div>* It handles building software inside sp=
ecified Opam &quot;switches&quot;, so that</div><div>=C2=A0 you don&#39;t h=
ave to have all software packages in a layer all use the</div><div>=C2=A0 s=
ame version of OCaml: each recipe can use the platform version it needs.</d=
iv><div>=C2=A0 This can utilize significant amounts of disk space pretty qu=
ickly;</div><div>=C2=A0 reuse of switches has been out of scope for this wo=
rk so far.</div><div><br></div><div>=C2=A0 In my view, this is a requiremen=
t for a supportable OCaml layer,</div><div>=C2=A0 because the available OCa=
ml software is highly version-sensitive.</div><div>=C2=A0 Once you find a v=
ersion of a tool that works, it&#39;s important to be</div><div>=C2=A0 able=
 to retain the ability to build it, even as the versions of other</div><div=
>=C2=A0 tools advance independently.</div><div><br></div><div>* It can buil=
d OCaml software for both native and target.</div><div>=C2=A0 eg. vhd-tool =
is very useful native to produce Virtual Machine disk images</div><div>=C2=
=A0 from OE builds.</div><div>=C2=A0 The layer handles the bytecode hashban=
g carefully, taking switches</div><div>=C2=A0 and recipe-specific-sysroots =
into account.</div><div><br></div><div>* Cross-compilation support is incom=
plete. A skeleton structure is there</div><div>=C2=A0 but there are real ch=
allenges getting dune/jbuilder to cooperate, and</div><div>=C2=A0 also esta=
blish an environment to link correctly.</div><div>=C2=A0 Unfortunately it i=
s common for OCaml software packages to assume that</div><div>=C2=A0 softwa=
re that has been built can then be run in a later stage of the build.</div>=
<div><br></div><div>This layer is definitely incomplete, fairly rough, and =
should be considered as a prototype, proof-of-concept. There are some prett=
y serious hacks in place, just to get it close to working -- eg. heuristics=
 to switch between compiling for host and cross-compiling for target -- but=
 with that said, my view is that it does demonstrate a viable structure, an=
d that the objective of delivering integration is achievable. The next step=
 would be to work on the OCaml tools to better support the OE environment.<=
/div><div><br></div><div>It hasn&#39;t had review by the Yocto, OE or OCaml=
 communities and I don&#39;t consider it to be ready for that; but since yo=
u asked for just this thing, I thought you might find it of interest. Pleas=
e let me know if you&#39;d like to talk.</div><div><br></div><div>Christoph=
er</div></div><div><br></div><div><br></div><div>=C2=A0</div></div></div></=
div>

--0000000000001387c005740b9dcc--
