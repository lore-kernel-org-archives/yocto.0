Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C61CCE00C89; Mon, 28 Aug 2017 09:43:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (katutxakurra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A9A4E00C7B
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 09:43:40 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id k22so3516976iod.2
	for <yocto@yoctoproject.org>; Mon, 28 Aug 2017 09:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QTN95zrxnzVHcMjBNx3Q5NPPEAux86p4jy3QFRhJUBo=;
	b=YHBnOjNInIkE2pSo0EhEyIbdRA5G+qCDqtrs2mssqIU7ALFlq/r0pKEfedy0w4ioEh
	ZO93DKzghSgNaqcQyOaamHEpRorsbio/gD4VpaHdK0DSh/Wb7MY+/YXAiowYLH/T93FZ
	aiDChWZIJCCAO8lTti1jnuTgeFsX9Mp9rwJZLnxkfTttkaLixdyphSBPvsRQdDcRW/Kh
	x2DZ0NHZtYZ5VTmqrxr4VPQ6+pLy1K0g5nJPUyQ11NghXTBGBZ+drHE6B0Wh1Di4TzWw
	c2XLj/9UrIJiaPXlsqVn4gS24F0ssmdVtiMy/Ywrt8W47qM9M4peVuhuiZOd9/qRieCF
	DIiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QTN95zrxnzVHcMjBNx3Q5NPPEAux86p4jy3QFRhJUBo=;
	b=eAMlu7tCxCyv87lkMYLlY24k0eq2yKCKKQkHgeZnchXQvdglxSRTYROq++KlZaKTj+
	JRnOu7kolhrlUCkGjbIy6+NjFmp31UmJz6h/7v0kLB3b0ioG2X1rELA/ScAkhI8c2But
	1v/cZhQiwCmHaIx0F7zC8PSVp9XEeDB6Lbg+IQ6wQWyvsY0MbnHpbvFMb3KW1wBFLQpG
	R4TJT6d4TwgEWyPHLGm7TnVGXKpxdvRE5RFPq0uawEpAm/aF1hsa+QjKBvmFlPjlrWnz
	H3Bf4bj7fzHYEwZBx16exadm8PDhuRUDT74Jl4/7P1tOCK5ck3PwXlRfhpx5zJG8xSNZ
	/P/A==
X-Gm-Message-State: AHYfb5iV0t1eggyqroQ+7NoHXPQrZp2nJLg+5BwstZU4LCzsdZsDaDrv
	g2Psk1ZjysBsGTuup0/5FMTFSgBCdQ==
X-Received: by 10.107.130.35 with SMTP id e35mr1227977iod.320.1503938620058;
	Mon, 28 Aug 2017 09:43:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.167.80 with HTTP; Mon, 28 Aug 2017 09:43:39 -0700 (PDT)
In-Reply-To: <20170828142759.iiubfgywp2nwz5c6@kaim-eeyore.kodakalaris.net>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
	<20170807111740.ppsdinlvltioc3uq@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX7ee=hCBYqWPQoeg_wrWjzqqbZvsrTm12sfZc2Fe0JJQ@mail.gmail.com>
	<20170811125251.t2t3kj6kbpsvhwxe@kaim-eeyore.kodakalaris.net>
	<CAM1ZcoX-DKScfwq==5y6TsH7MGZv5x6MXEuZ3PF4H487uyVshQ@mail.gmail.com>
	<20170828142759.iiubfgywp2nwz5c6@kaim-eeyore.kodakalaris.net>
From: Katu Txakur <katutxakurra@gmail.com>
Date: Mon, 28 Aug 2017 17:43:39 +0100
Message-ID: <CAM1ZcoVYph7c2f1veS9vRFaxu_9oiGMFyrYU2058Gr2gTMK8Kw@mail.gmail.com>
To: Andrew Bradford <andrew@bradfordembedded.com>
Cc: yocto@yoctoproject.org, Andrew Bradford <andrew.bradford@kodakalaris.com>
Subject: Re: Perforce fetcher ignores module and label
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
X-List-Received-Date: Mon, 28 Aug 2017 16:43:42 -0000
Content-Type: multipart/alternative; boundary="001a113ec7ee3674b50557d2fffa"

--001a113ec7ee3674b50557d2fffa
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

Thanks for looking at this. See my recipe below. I've left the bits related
to systemd service but I don't think they matter for this. I'm using an old
implementation of Perforce (2010) in case this matters. I've tried going
back to the old perforce.py fetcher but I get a license error... do you
know if it would be easy to revert to the old version in my bitbake folder
until we make this work?

DESCRIPTION = "Dummy recipe to fetch from Perforce"
SECTION = "PerforceRecipes"
LICENSE = "CLOSED"
PR = "r0"

inherit cmake
DEPENDS = "boost alsa-tools"

P4USER = "myuser"
P4PASSWD = ""
P4PORT = "192.168.1.55:1666"
FETCHCMD_p4 = "/usr/local/bin/p4"

SRC_URI = " \
p4://${P4USER}:${P4PASSWD}@myrepo/myfolder/...; \
file://perforce-recipe.service \
"
SRCREV = "${AUTOREV}"
S = "${WORKDIR}/p4"

do_install_append () {
    install -d ${D}${systemd_unitdir}/system
    install -m 0644 ../perforce-recipe.service ${D}${systemd_unitdir}/system
}

NATIVE_SYSTEMD_SUPPORT = "1"
SYSTEMD_PACKAGES = "perforce-recipe"
SYSTEMD_SERVICE_${PN} = "perforce-recipe.service"

SYSTEMD_AUTO_ENABLE = "disable"

FILES_${PN} = "${systemd_unitdir} ${bindir}"


2017-08-28 15:27 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com>:

> Hi Katu,
>
> On 08/28 08:56, Katu Txakur wrote:
> > 2017-08-11 13:52 GMT+01:00 Andrew Bradford <andrew@bradfordembedded.com
> >:
> > On 08/11 11:34, Katu Txakur wrote:
> > > > 2017-08-07 12:17 GMT+01:00 Andrew Bradford <
> andrew@bradfordembedded.com
> > > >:
> > > > > On 08/02 10:28, Paul Eggleton wrote:
> > > > > > On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> > > > > > > I'm still having problems fetching from Perforce. Is there any
> > > > > > > documentation based on the latest implementation of the
> > > > > > > poky/bitbake/lib/bb/fetch2/perforce.py file?
> > > > >
> > > > > There's some documentation now in the official Yocto Project
> > > > > documentation location for bitbake fetchers [1].  Prior to my
> changes
> > > > > there was very little if any documentation, afaik.
> > > > >
> > > > > [1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-
> > > > > manual/bitbake-user-manual.html#perforce-fetcher
> > > > >
> > > > > > > 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com
> >:
> > > > > > > > I'm upgrading a recipe that fetches the source code from
> > > Perforce.
> > > > > > > >
> > > > > > > > The old recipe was:
> > > > > > > >
> > > > > > > > SRC_URI = " \
> > > > > > > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/
> pe
> > > > > > > > rforce/...;module=local/path/relativeto/p4;label=${
> P4CHANGELIST}
> > > \
> > > > > > > >   "
> > > > > > > >
> > > > > > > > With the new version of /lib/bb/fetch2/perforce.py, I had to
> set
> > > > > P4PORT
> > > > > > > > outside SRC_URI, leaving the recipe with:
> > > > > > > >
> > > > > > > > SRC_URI = " \
> > > > > > > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > > > > > > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > > > > > > >   "
> > > > > > > >
> > > > > > > > The Perforce fetcher kind of works, but it seems to be
> ignoring
> > > the
> > > > > > > > "module" and the "label" attributes. After reading the Python
> > > script
> > > > > I can
> > > > > > > > see that after the "@", only the substring before the first
> ";"
> > > is
> > > > > used.
> > > > >
> > > > > Sorry for not making the label change more clear, but you should be
> > > able
> > > > > to simply set SRCREV="labelname" and have the functionality you
> desire.
> > > > > However, we don't use labels very often internally, so the use of
> > > labels
> > > > > in SRCREV isn't tested that often by me.
> > > > >
> > > >
> > > > I don't use labels that much either, however, I used to be able to
> write
> > > > the changeslist number as a label and it would
> > > > fetch the code for that changelist. This doesn't work using SRCREV =
> > > > "changelistnumber"
> > >
> > > This does work for me using oe-core morty branch and bitbake
> > > 1.32 which is the versions where these changes were first applied and
> > > where I did my testing.
> > >
> > > Like I have a recipe which I put:
> > >
> > > SRCREV = "184127"
> > >
> > > The p4 fetcher will go fetch changelist 184127 of the SRC_URI path in
> > > perforce.
> > >
> > > Or if I put:
> > >
> > > SRCREV = "${AUTOREV}"
> > >
> > > Then it'll fetch the HEAD/tip of the SRC_URI path in perforce.
> > >
> > > Is this not working the same way with poky now?
> > >
> >
> > I'm using yocto pyro with bitbake 1.34.0. When I first fetch the code for
> > my recipe, it gets the latest changelist.
> > I submit a change and the next time, the recipe thinks there nothing new
> to
> > fetch. Also, using SRCREV = "184127"
> > doesn't work for me, it always gets the latest changelist.
>
> Can you post the recipe where this is failing for you?
>
> I could then try to recreate this issue in a sandbox depot we have in
> our perforce server and see what's going on.
>
> > >
> > > > > This change to using labels, changelist numbers, and allowing the
> use
> > > of
> > > > > AUTOREV was made so that the perforce fetcher would act more like
> the
> > > > > other source code control system fetchers.  Prior to my changes to
> the
> > > > > p4 fetcher, the way that recipes using p4 had to be written seemed
> > > > > rather awkward to me.  The way it is now isn't perfect, but it's
> closer
> > > > > to how the other fetchers act, I think (and hope).
> > > > >
> > > >
> > > > > > > Is there a way to set module and label/changelist? I have
> several
> > > > > folders
> > > > > > > > per recipe that I need to map to different subfolders and
> with
> > > the
> > > > > current
> > > > > > > > script some of the folders don't get fetched.
> > > > >
> > > > > I'm not sure I understand enough about how you use perforce and
> what
> > > you
> > > > > mean by mapping different subfolders.  Can you explain this in a
> more
> > > > > expanded way to me?  Maybe with some examples?
> > > > >
> > > >
> > > > What I mean by this is taking folders in different locations in
> Perforce
> > > > and fetch them to a custom folder structure inside the {WORKDIR}/p4
> > > folder.
> > > > This is an example of how I was doing this with the old version of
> the
> > > > fetcher:
> > > >
> > > > #leave blank, "", for latest revision
> > > > P4CHANGELIST = "${PR}"
> > > > S = "${WORKDIR}"
> > > > SRC_URI = " \
> > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > 1/folder1/...;module=subfolderunderp4/src/;label=${P4CHANGELIST}
> > > > \
> > > > p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/project
> > > 2/folder3/...;module=subfolderunderp4/pkg/;label=${P4CHANGELIST}
> > > > \
> > > > "
> > > >
> > > > Where folder1 contains the src files and folder3 contains the pkg
> > > > information. These need to be in an specific folder structure for the
> > > > recipe to work.
> > > > I had some issue when adding more than one line because it was
> trying to
> > > > copy everything to the same p4 folder.
> > >
> > > Ah, yeah... Sorry, that is a bit of a shortcoming of my changes.  The
> > > reason I made this change is because putting the given SRC_URI's
> > > repository directly into a directory like ${WORKDIR}/p4/ is how some of
> > > the other fetchers operate and it makes the automatic tasks just work
> > > correctly.  This is how the git fetcher does things so I tried to
> mimmic
> > > that but maybe I missed some nuance in how the git fetcher deals with
> > > more than one SRC_URI line being a git repo.  I hadn't realized that
> > > there was users of the p4 fetcher who did things like you are doing,
> > > sorry.
> > >
> > > I think it should be reasonably easy to make a patch to the p4 fetcher
> > > which will put each SRC_URI line which uses the p4 fetcher into its own
> > > directory within the ${WORKDIR}/p4/ directory such that it supports
> your
> > > style of fetching.  This then will likely require your recipe to know
> > > that this is the directory structure and properly change into
> > > directories as needed, but it sounds like you already comprehend that.
> > > And for users of the p4 fetcher who only use one SRC_URI line, I
> believe
> > > they would just need to set the S variable correctly to the directory
> > > name within ${WORKDIR}/p4/ to get the current operation.
> >
> > I have been looking at this and it wasn't straight forward for me... I
> > don't have much experience with this. I will continue trying but I might
> > need some help.
> > It's not only not being able to fetch more than one SRC_URI. We are also
> > loosing the flexibility of fetching different changelists for each line.
> > I'm not sure if this can be solved in this new fetcher whilst keeping git
> > and p4 "similar" as git doesn't work this way afaik.
>
> It sounds like you really just want to revert to how the p4 fetcher used
> to work.  My changes were because I wanted the p4 fetcher to work more
> like the git and svn fetchers.  But that doesn't sound like what you
> want.
>
> My p4 fetcher changes which are impacting you on poky's pyro are these:
>
> 35081f55185a8a9804c21b16cd4600ba70646a10 bitbake: bitbake-user-manual:
> Addeds support for the Perforce Fetcher
> 40f3099e8ec5c6f3a8b7f3d0e90f1c65c388ee77 base.bbclass: p4 fetcher
> supports srcrev
> 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce: Rework
> to support SRCREV and P4CONFIG
>
> But that last one will run into conflicts if you just try to revert it
> directly due to having other commits since then which git can't easily
> figure out, but if you revert all of these commits too, then you may
> have to redo some of the changes they made which are related to general
> things and are not p4 specific.  Commits you'll want to look at are:
>
> b16192c93834d0a6530169557aa34122e1417bcf bitbake: fetch2: don't use
> deprecated bb.data APIs
> 6c611d697f9c03867c938cba1b481f38eebed8bf bitbake: fetch2: Rename
> "setup_revisons" to "setup_revisions"
> 38438b6cf42fb7ad45b9a901f57913af7e7591a3 bitbake: fetch2: obey
> BB_ALLOWED_NETWORKS when checking network access
> 1fce7ecbbb004a5ad82da3eef79cfd52b276708d bitbake: bitbake: remove True
> option to getVar calls
> ab09541d5517da9b1a23923ea8f5c26ddf745084 bitbake: fetch2: preserve
> current working directory
> 26447a0d0bf5ceaac382a78c1dbd00807dbab706 bitbake: fetch2/perforce: Rework
> to support SRCREV and P4CONFIG
>
> I haven't actually reviewed any of these commits after the "preserve
> current working directory" one as I'm still doing my day-to-day work on
> the morty branch of oe-core and bitbake 1.32.  But possibly one of these
> commits are unintentionally impacting your ability to specify SRCREV and
> that's worth checking into.
>
> Thanks,
> Andrew
>

--001a113ec7ee3674b50557d2fffa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Andrew,<br><br></div>Thanks for looking at this. S=
ee my recipe below. I&#39;ve left the bits related to systemd service but I=
 don&#39;t think they matter for this. I&#39;m using an old implementation =
of Perforce (2010) in case this matters. I&#39;ve tried going back to the o=
ld perforce.py fetcher but I get a license error... do you know if it would=
 be easy to revert to the old version in my bitbake folder until we make th=
is work?<br><br>DESCRIPTION =3D &quot;Dummy recipe to fetch from Perforce&q=
uot;<br>SECTION =3D &quot;PerforceRecipes&quot;<br>LICENSE =3D &quot;CLOSED=
&quot;<br>PR =3D &quot;r0&quot;<br><br>inherit cmake<br>DEPENDS =3D &quot;b=
oost alsa-tools&quot;<br><br>P4USER =3D &quot;myuser&quot;<br>P4PASSWD =3D =
&quot;&quot;<br>P4PORT =3D &quot;<a href=3D"http://192.168.1.55:1666">192.1=
68.1.55:1666</a>&quot;<br>FETCHCMD_p4 =3D &quot;/usr/local/bin/p4&quot;<br>=
<br>SRC_URI =3D &quot; \<br>p4://${P4USER}:${P4PASSWD}@myrepo/myfolder/...;=
 \<br>file://perforce-recipe.service \<br>&quot;<br>SRCREV =3D &quot;${AUTO=
REV}&quot;<br>S =3D &quot;${WORKDIR}/p4&quot;<br><br>do_install_append () {=
<br>=C2=A0=C2=A0=C2=A0 install -d ${D}${systemd_unitdir}/system<br>=C2=A0=
=C2=A0=C2=A0 install -m 0644 ../perforce-recipe.service ${D}${systemd_unitd=
ir}/system<br>}<br><br>NATIVE_SYSTEMD_SUPPORT =3D &quot;1&quot;<br>SYSTEMD_=
PACKAGES =3D &quot;perforce-recipe&quot;<br>SYSTEMD_SERVICE_${PN} =3D &quot=
;perforce-recipe.service&quot;<br><br>SYSTEMD_AUTO_ENABLE =3D &quot;disable=
&quot;<br><br>FILES_${PN} =3D &quot;${systemd_unitdir} ${bindir}&quot;<br><=
br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-08-=
28 15:27 GMT+01:00 Andrew Bradford <span dir=3D"ltr">&lt;<a href=3D"mailto:=
andrew@bradfordembedded.com" target=3D"_blank">andrew@bradfordembedded.com<=
/a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Katu,<br>
<span class=3D""><br>
On 08/28 08:56, Katu Txakur wrote:<br>
&gt; 2017-08-11 13:52 GMT+01:00 Andrew Bradford &lt;<a href=3D"mailto:andre=
w@bradfordembedded.com">andrew@bradfordembedded.com</a>&gt;:<br>
</span><div><div class=3D"h5">&gt; On 08/11 11:34, Katu Txakur wrote:<br>
&gt; &gt; &gt; 2017-08-07 12:17 GMT+01:00 Andrew Bradford &lt;<a href=3D"ma=
ilto:andrew@bradfordembedded.com">andrew@bradfordembedded.com</a><br>
&gt; &gt; &gt;:<br>
&gt; &gt; &gt; &gt; On 08/02 10:28, Paul Eggleton wrote:<br>
&gt; &gt; &gt; &gt; &gt; On Wednesday, 2 August 2017 9:40:10 AM CEST Katu T=
xakur wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; I&#39;m still having problems fetching from P=
erforce. Is there any<br>
&gt; &gt; &gt; &gt; &gt; &gt; documentation based on the latest implementat=
ion of the<br>
&gt; &gt; &gt; &gt; &gt; &gt; poky/bitbake/lib/bb/fetch2/<wbr>perforce.py f=
ile?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; There&#39;s some documentation now in the official Yoct=
o Project<br>
&gt; &gt; &gt; &gt; documentation location for bitbake fetchers [1].=C2=A0 =
Prior to my changes<br>
&gt; &gt; &gt; &gt; there was very little if any documentation, afaik.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; [1]: <a href=3D"http://www.yoctoproject.org/docs/2.3.1/=
bitbake-user-" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproject=
.org/<wbr>docs/2.3.1/bitbake-user-</a><br>
&gt; &gt; &gt; &gt; manual/bitbake-user-manual.<wbr>html#perforce-fetcher<b=
r>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; 2017-07-25 10:05 GMT+01:00 Katu Txakur &lt;<a=
 href=3D"mailto:katutxakurra@gmail.com">katutxakurra@gmail.com</a>&gt;:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m upgrading a recipe that fetches =
the source code from<br>
&gt; &gt; Perforce.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; The old recipe was:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0p4://${P4USER}:${P4PASSWD}:$=
{<wbr>P4HOST}:${P4PORT}@Depot/path/<wbr>pe<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; rforce/...;module=3Dlocal/path/<wbr>rela=
tiveto/p4;label=3D${<wbr>P4CHANGELIST}<br>
&gt; &gt; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; With the new version of /lib/bb/fetch2/p=
erforce.py, I had to set<br>
&gt; &gt; &gt; &gt; P4PORT<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; outside SRC_URI, leaving the recipe with=
:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0p4://${P4USER}:${P4PASSWD}@<=
wbr>Depot/path/perforce/...;<wbr>module=3D<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; local/path/relativeto/p4;<wbr>label=3D${=
P4CHANGELIST} \<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; The Perforce fetcher kind of works, but =
it seems to be ignoring<br>
&gt; &gt; the<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &quot;module&quot; and the &quot;label&q=
uot; attributes. After reading the Python<br>
&gt; &gt; script<br>
&gt; &gt; &gt; &gt; I can<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; see that after the &quot;@&quot;, only t=
he substring before the first &quot;;&quot;<br>
&gt; &gt; is<br>
&gt; &gt; &gt; &gt; used.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Sorry for not making the label change more clear, but y=
ou should be<br>
&gt; &gt; able<br>
&gt; &gt; &gt; &gt; to simply set SRCREV=3D&quot;labelname&quot; and have t=
he functionality you desire.<br>
&gt; &gt; &gt; &gt; However, we don&#39;t use labels very often internally,=
 so the use of<br>
&gt; &gt; labels<br>
&gt; &gt; &gt; &gt; in SRCREV isn&#39;t tested that often by me.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I don&#39;t use labels that much either, however, I used to =
be able to write<br>
&gt; &gt; &gt; the changeslist number as a label and it would<br>
&gt; &gt; &gt; fetch the code for that changelist. This doesn&#39;t work us=
ing SRCREV =3D<br>
&gt; &gt; &gt; &quot;changelistnumber&quot;<br>
&gt; &gt;<br>
&gt; &gt; This does work for me using oe-core morty branch and bitbake<br>
&gt; &gt; 1.32 which is the versions where these changes were first applied=
 and<br>
&gt; &gt; where I did my testing.<br>
&gt; &gt;<br>
&gt; &gt; Like I have a recipe which I put:<br>
&gt; &gt;<br>
&gt; &gt; SRCREV =3D &quot;184127&quot;<br>
&gt; &gt;<br>
&gt; &gt; The p4 fetcher will go fetch changelist 184127 of the SRC_URI pat=
h in<br>
&gt; &gt; perforce.<br>
&gt; &gt;<br>
&gt; &gt; Or if I put:<br>
&gt; &gt;<br>
&gt; &gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; &gt;<br>
&gt; &gt; Then it&#39;ll fetch the HEAD/tip of the SRC_URI path in perforce=
.<br>
&gt; &gt;<br>
&gt; &gt; Is this not working the same way with poky now?<br>
&gt; &gt;<br>
&gt;<br>
&gt; I&#39;m using yocto pyro with bitbake 1.34.0. When I first fetch the c=
ode for<br>
&gt; my recipe, it gets the latest changelist.<br>
&gt; I submit a change and the next time, the recipe thinks there nothing n=
ew to<br>
&gt; fetch. Also, using SRCREV =3D &quot;184127&quot;<br>
&gt; doesn&#39;t work for me, it always gets the latest changelist.<br>
<br>
</div></div>Can you post the recipe where this is failing for you?<br>
<br>
I could then try to recreate this issue in a sandbox depot we have in<br>
our perforce server and see what&#39;s going on.<br>
<div><div class=3D"h5"><br>
&gt; &gt;<br>
&gt; &gt; &gt; &gt; This change to using labels, changelist numbers, and al=
lowing the use<br>
&gt; &gt; of<br>
&gt; &gt; &gt; &gt; AUTOREV was made so that the perforce fetcher would act=
 more like the<br>
&gt; &gt; &gt; &gt; other source code control system fetchers.=C2=A0 Prior =
to my changes to the<br>
&gt; &gt; &gt; &gt; p4 fetcher, the way that recipes using p4 had to be wri=
tten seemed<br>
&gt; &gt; &gt; &gt; rather awkward to me.=C2=A0 The way it is now isn&#39;t=
 perfect, but it&#39;s closer<br>
&gt; &gt; &gt; &gt; to how the other fetchers act, I think (and hope).<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Is there a way to set module and label/change=
list? I have several<br>
&gt; &gt; &gt; &gt; folders<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; per recipe that I need to map to differe=
nt subfolders and with<br>
&gt; &gt; the<br>
&gt; &gt; &gt; &gt; current<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; script some of the folders don&#39;t get=
 fetched.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I&#39;m not sure I understand enough about how you use =
perforce and what<br>
&gt; &gt; you<br>
&gt; &gt; &gt; &gt; mean by mapping different subfolders.=C2=A0 Can you exp=
lain this in a more<br>
&gt; &gt; &gt; &gt; expanded way to me?=C2=A0 Maybe with some examples?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; What I mean by this is taking folders in different locations=
 in Perforce<br>
&gt; &gt; &gt; and fetch them to a custom folder structure inside the {WORK=
DIR}/p4<br>
&gt; &gt; folder.<br>
&gt; &gt; &gt; This is an example of how I was doing this with the old vers=
ion of the<br>
&gt; &gt; &gt; fetcher:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; #leave blank, &quot;&quot;, for latest revision<br>
&gt; &gt; &gt; P4CHANGELIST =3D &quot;${PR}&quot;<br>
&gt; &gt; &gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt; &gt; &gt; SRC_URI =3D &quot; \<br>
&gt; &gt; &gt; p4://${P4USER}:${P4PASSWD}:${<wbr>P4HOST}:${P4PORT}@Depot/<w=
br>project<br>
&gt; &gt; 1/folder1/...;module=3D<wbr>subfolderunderp4/src/;label=3D${<wbr>=
P4CHANGELIST}<br>
&gt; &gt; &gt; \<br>
&gt; &gt; &gt; p4://${P4USER}:${P4PASSWD}:${<wbr>P4HOST}:${P4PORT}@Depot/<w=
br>project<br>
&gt; &gt; 2/folder3/...;module=3D<wbr>subfolderunderp4/pkg/;label=3D${<wbr>=
P4CHANGELIST}<br>
&gt; &gt; &gt; \<br>
&gt; &gt; &gt; &quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Where folder1 contains the src files and folder3 contains th=
e pkg<br>
&gt; &gt; &gt; information. These need to be in an specific folder structur=
e for the<br>
&gt; &gt; &gt; recipe to work.<br>
&gt; &gt; &gt; I had some issue when adding more than one line because it w=
as trying to<br>
&gt; &gt; &gt; copy everything to the same p4 folder.<br>
&gt; &gt;<br>
&gt; &gt; Ah, yeah... Sorry, that is a bit of a shortcoming of my changes.=
=C2=A0 The<br>
&gt; &gt; reason I made this change is because putting the given SRC_URI&#3=
9;s<br>
&gt; &gt; repository directly into a directory like ${WORKDIR}/p4/ is how s=
ome of<br>
&gt; &gt; the other fetchers operate and it makes the automatic tasks just =
work<br>
&gt; &gt; correctly.=C2=A0 This is how the git fetcher does things so I tri=
ed to mimmic<br>
&gt; &gt; that but maybe I missed some nuance in how the git fetcher deals =
with<br>
&gt; &gt; more than one SRC_URI line being a git repo.=C2=A0 I hadn&#39;t r=
ealized that<br>
&gt; &gt; there was users of the p4 fetcher who did things like you are doi=
ng,<br>
&gt; &gt; sorry.<br>
&gt; &gt;<br>
&gt; &gt; I think it should be reasonably easy to make a patch to the p4 fe=
tcher<br>
&gt; &gt; which will put each SRC_URI line which uses the p4 fetcher into i=
ts own<br>
&gt; &gt; directory within the ${WORKDIR}/p4/ directory such that it suppor=
ts your<br>
&gt; &gt; style of fetching.=C2=A0 This then will likely require your recip=
e to know<br>
&gt; &gt; that this is the directory structure and properly change into<br>
&gt; &gt; directories as needed, but it sounds like you already comprehend =
that.<br>
&gt; &gt; And for users of the p4 fetcher who only use one SRC_URI line, I =
believe<br>
&gt; &gt; they would just need to set the S variable correctly to the direc=
tory<br>
&gt; &gt; name within ${WORKDIR}/p4/ to get the current operation.<br>
&gt;<br>
</div></div><span class=3D"">&gt; I have been looking at this and it wasn&#=
39;t straight forward for me... I<br>
&gt; don&#39;t have much experience with this. I will continue trying but I=
 might<br>
&gt; need some help.<br>
&gt; It&#39;s not only not being able to fetch more than one SRC_URI. We ar=
e also<br>
&gt; loosing the flexibility of fetching different changelists for each lin=
e.<br>
&gt; I&#39;m not sure if this can be solved in this new fetcher whilst keep=
ing git<br>
&gt; and p4 &quot;similar&quot; as git doesn&#39;t work this way afaik.<br>
<br>
</span>It sounds like you really just want to revert to how the p4 fetcher =
used<br>
to work.=C2=A0 My changes were because I wanted the p4 fetcher to work more=
<br>
like the git and svn fetchers.=C2=A0 But that doesn&#39;t sound like what y=
ou<br>
want.<br>
<br>
My p4 fetcher changes which are impacting you on poky&#39;s pyro are these:=
<br>
<br>
35081f55185a8a9804c21b16cd4600<wbr>ba70646a10 bitbake: bitbake-user-manual:=
 Addeds support for the Perforce Fetcher<br>
40f3099e8ec5c6f3a8b7f3d0e90f1c<wbr>65c388ee77 base.bbclass: p4 fetcher supp=
orts srcrev<br>
26447a0d0bf5ceaac382a78c1dbd00<wbr>807dbab706 bitbake: fetch2/perforce: Rew=
ork to support SRCREV and P4CONFIG<br>
<br>
But that last one will run into conflicts if you just try to revert it<br>
directly due to having other commits since then which git can&#39;t easily<=
br>
figure out, but if you revert all of these commits too, then you may<br>
have to redo some of the changes they made which are related to general<br>
things and are not p4 specific.=C2=A0 Commits you&#39;ll want to look at ar=
e:<br>
<br>
b16192c93834d0a6530169557aa341<wbr>22e1417bcf bitbake: fetch2: don&#39;t us=
e deprecated bb.data APIs<br>
6c611d697f9c03867c938cba1b481f<wbr>38eebed8bf bitbake: fetch2: Rename &quot=
;setup_revisons&quot; to &quot;setup_revisions&quot;<br>
38438b6cf42fb7ad45b9a901f57913<wbr>af7e7591a3 bitbake: fetch2: obey BB_ALLO=
WED_NETWORKS when checking network access<br>
1fce7ecbbb004a5ad82da3eef79cfd<wbr>52b276708d bitbake: bitbake: remove True=
 option to getVar calls<br>
ab09541d5517da9b1a23923ea8f5c2<wbr>6ddf745084 bitbake: fetch2: preserve cur=
rent working directory<br>
26447a0d0bf5ceaac382a78c1dbd00<wbr>807dbab706 bitbake: fetch2/perforce: Rew=
ork to support SRCREV and P4CONFIG<br>
<br>
I haven&#39;t actually reviewed any of these commits after the &quot;preser=
ve<br>
current working directory&quot; one as I&#39;m still doing my day-to-day wo=
rk on<br>
the morty branch of oe-core and bitbake 1.32.=C2=A0 But possibly one of the=
se<br>
commits are unintentionally impacting your ability to specify SRCREV and<br=
>
that&#39;s worth checking into.<br>
<br>
Thanks,<br>
Andrew<br>
</blockquote></div><br></div>

--001a113ec7ee3674b50557d2fffa--
