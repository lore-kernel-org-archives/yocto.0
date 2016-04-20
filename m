Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B466DE00D73; Wed, 20 Apr 2016 11:58:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A3D1E007D2
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 11:58:28 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id k142so50373711oib.1
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 11:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=O+bePjKYfFmsBMBLCjcVAOOMgNDzc8iJxC2Bw1Rnlt0=;
	b=vwngQxvLkwoP1WBCZ+i9vVE7x4NwM2xUULGknTIy+BeQE7MtcfX2X6rdGkVFvS/jxi
	7Z/qTA/uooTilJ9ascJdbXiWhqfF8+Y6DUVSuSMgLsZsbKucJovcM9oMnQrSJLKCXcVb
	d04bRMMt22flNLDsxQetwPOGe+qB5CCCfHBPMuWpwX6/DiaIWU9duU6pI7aEPgJUbfVF
	nXwwU5zOoxM0/Q088inTRetfp4XUtc/Tf18E0lBB/y3bt04BGTSS9hu4GJfAvUHGyZpf
	7pNihHIKDOV+d5SdSUgTgE9bUPlB0bdk8SkwbYNlWe7vr5z6SsniI2ocowZ+PT8Wt11S
	tQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=O+bePjKYfFmsBMBLCjcVAOOMgNDzc8iJxC2Bw1Rnlt0=;
	b=guxG3jbBmmd+/Rbo8cZE6BM17biZLWWeyVBraIloGphZ0ynBA5zBZMXLXyaRSHcAaC
	Ohj0vnMVZnkuWZnKh7pbH8aHqHWX6lB4ZVSllt/o9PlCsrBSWJlLyCkYsYch6jiz9y+J
	1pzrxpDetekU4VDh27eJUGN2p29DJdcj4sIzBQexUam5HrGHMqsPHAw+rpsWkiNofhkf
	JjU9ShuqJEQXo8tbmHkSXwDWmIXBkR50XltnmuWobZBB9ccp3wY460VRT9V/hkVM7nYl
	BvsDUAABNKwHuwQHYu+umZCuROeQViMAT/xTxot+0LJpfi08aV2UOM/vWUnGm/ycY4Nq
	vocg==
X-Gm-Message-State: AOPr4FUMSpA+bihtyAFp8SGxZWP1aIsTTGtzoG8nyl5iLYSVVWx0x8bWBzKCfRQZLYoQY4mWmnU59IPvzhlArA==
MIME-Version: 1.0
X-Received: by 10.182.98.167 with SMTP id ej7mr4842607obb.46.1461178708351;
	Wed, 20 Apr 2016 11:58:28 -0700 (PDT)
Received: by 10.157.32.135 with HTTP; Wed, 20 Apr 2016 11:58:28 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
Date: Wed, 20 Apr 2016 14:58:28 -0400
Message-ID: <CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Wed, 20 Apr 2016 18:58:32 -0000
Content-Type: multipart/alternative; boundary=047d7b2e41ecdd6d770530ef2ddc

--047d7b2e41ecdd6d770530ef2ddc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 20, 2016 at 2:31 PM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Wed, 20 Apr 2016, Martin Jansa wrote:
>
> > On Wed, Apr 20, 2016 at 12:42:42PM -0400, Robert P. J. Day wrote:
> > >
> > >   (i'm using wind river linux for this, but i'm getting the impressio=
n
> > > that this might be coming from YP, so i'm going to ask here.)
> > >
> > >   while i'm trying to reduce this to a minimal test case, here's the
> > > really annoying issue i'm running into.
> > >
> > >   i created a BSP layer, and under recipes-kernel/linux/ i created
> > > three subdirs to hold SRC_URI content:
> > >
> > >  * linux-windriver-3.14/         (3.14-specific)
> > >  * linux-windriver-4.1/          (4.1-specific)
> > >  * linux-windriver/              (applicable to either kernel)
> > >
> > > in addition, i have subdirectories for three possible target boards,
> > > and i also extended MACHINEOVERRIDES to define a common grouping for
> > > two of those boards. and here's the problem.
> > >
> > >   i have files:
> > >
> > >  * uio.scc
> > >  * uio.cfg
> > >  * uio.patch
> > >
> > > that used to apply to the two common boards, but should now apply to
> > > all three, for all kernels.  so i used to have the directory
> > > structure:
> > >
> > >   linux-windriver/
> > >     common/               (represents the 2 out of 3 related boards)
> > >       uio.scc
> > >       uio.cfg
> > >       uio.patch
> > >
> > > and the uio stuff was located just fine when building for either of
> > > the two target boards for which "common" was my extension to
> > > MACHINEOVERRIDES.
> > >
> > >   now that it applies to all three boards, i did this just as a test
> > > (as you can see, unnecessary duplication of the uio files):
> > >
> > >   linux-windriver/
> > >     uio.scc
> > >     uio.cfg
> > >     uio.patch
> > >     common/
> > >       uio.scc
> > >       uio.cfg
> > >       uio.patch
> > >
> > > and all three boards can now build. however, when i went to get rid o=
f
> > > the redundant stuff and reduce it to:
> > >
> > >   linux-windriver/
> > >     uio.scc
> > >     uio.cfg
> > >     uio.patch
> > >     common/
> > >       ... remaining stuff that still applies only to common ...
> > >
> > > i can still build that third board, but now the two "common" boards
> > > fail to process the kernel fragment uio.cfg. having moved that
> > > completely common uio content out of the subdirectory and right under
> > > linux-windriver now breaks the boards for which there is still a
> > > subdirectory, for no reason that i can see.
> > >
> > >   it's as if, once the build process sees a more specific
> > > MACHINEOVERRIDES directory from which to get content, it will no
> > > longer look elsewhere, even above for more generically appropriate
> > > content.
> > >
> > >   am i misunderstanding something? it seems that the common thread
> > > running through all my problems with this is *.cfg files at the top
> > > level of one of these directories.
> > >
> > >   anyone seen anything like this?
> >
> > Did you check FILESPATH variable to see order of directories how they
> > are searched?
> >
> > e.g.:
> > $ bitbake -e sed | grep ^FILESPATH=3D | sed "s/FILESPATH=3D\"//g; s/\"$=
//g;
> s/:/\n/g;"
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/n=
odistro
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/nodistr=
o
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/nodis=
tro
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/q=
emux86
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemux=
86
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemux=
86
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/q=
emuall
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemua=
ll
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemua=
ll
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/x=
86
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/x86
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/x86
> >
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/i=
586
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/i586
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/i58=
6
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2=
/
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/
> > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/
>
>   yes, and they all look fine, but here's the latest development which
> should clarify things.
>
>   here's the structure of the generic linux-windriver/ directory,
> under which the search should look for anything which hasn't matched
> anything more specific in terms of a kernel version:
>
> linux-windriver/
> =E2=94=9C=E2=94=80=E2=94=80 0001-UIO-support-for-FPGA-select-CONFIG_UIO_X=
II_FPGA-y.patch
> =E2=94=9C  mxeiii
>    ... mxe board specific stuff but *no* uio-related stuff
> =E2=94=9C=E2=94=80=E2=94=80 uio.cfg
> =E2=94=94=E2=94=80=E2=94=80 uio.scc
>
>   so what we have is the UIO stuff *immediately* under
> linux-windriver/, which is where it should be found (there is no other
> UIO content anywhere else in the recipe directory).
>
>   after doing the configure, here's the content of
>
> bitbake_build/tmp/work-shared/ax/kernel-source/.kernel-meta/cfg/standard/=
ax/config.log:
>
> [INFO] Sanitizing .kernel-meta/cfg/ax/new_board.cfg
> [INFO] Sanitizing .kernel-meta/cfg/linux-windriver/uio.cfg
> [INFO] Sanitizing .kernel-meta/cfg/kernel-meta/cfg/systemd.cfg
>
> note carefully how that second line shows clearly where the uio.cfg
> file is being found(?): linux-windriver/uio.cfg
>
> and that's for the board that works.
>
>   however, for the second board (the mxeiii for which there *is* a
> subdirectory that should be examined), here's the equivalent
> config.log file:
>
> [INFO] Sanitizing .kernel-meta/cfg/mxeiii/new_board.cfg
> [INFO] Sanitizing .kernel-meta/cfg/uio.cfg
> [ERROR] Kern frag .kernel-meta/cfg/uio.cfg does not exist
>
> note the difference in the second line in the two cases -- the
> subdirectory name "linux-windriver" has disappeared, hence the second
> case fails miserably in locating the config fragment file uio.cfg.
>
>   it's as if (and i'm just making this up now) the fact that a more
> specific "mxeiii" subdirectory under linux-windriver/ somehow screws
> up the search process. (if i redundantly duplicate those UIO files in
> the mxeiii/ subdirectory, then everything works fine, but that should
> *not* be necessary.)
>
>   is there something about the SRC_URI search order that i'm unaware
> of? should each SRC_URI item start a brand new, independent search?
> i've been fighting with this for a while, and it simply makes no sense
> to me.
>

You haven't supplied your SRC_URI in the question ... what does it look
like ?

It has no relation to the SRC_URI, probably a run of the mill bug in the
processing code.
I'd suggest taking it up with Wind River support.

Alternatively, if you have this somewhere that I clone and launch a test
build, I can
help you out .. but I won't be able to easily reproduce that situation from
scratch.

Cheers,

Bruce


>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--047d7b2e41ecdd6d770530ef2ddc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Apr 20, 2016 at 2:31 PM, Robert P. J. Day <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5">On Wed, 20 Apr 2016, Martin Jansa wrote:<br>
<br>
&gt; On Wed, Apr 20, 2016 at 12:42:42PM -0400, Robert P. J. Day wrote:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0(i&#39;m using wind river linux for this, but i&#39;m=
 getting the impression<br>
&gt; &gt; that this might be coming from YP, so i&#39;m going to ask here.)=
<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0while i&#39;m trying to reduce this to a minimal test=
 case, here&#39;s the<br>
&gt; &gt; really annoying issue i&#39;m running into.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0i created a BSP layer, and under recipes-kernel/linux=
/ i created<br>
&gt; &gt; three subdirs to hold SRC_URI content:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 * linux-windriver-3.14/=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(3=
.14-specific)<br>
&gt; &gt;=C2=A0 * linux-windriver-4.1/=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (4=
.1-specific)<br>
&gt; &gt;=C2=A0 * linux-windriver/=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 (applicable to either kernel)<br>
&gt; &gt;<br>
&gt; &gt; in addition, i have subdirectories for three possible target boar=
ds,<br>
&gt; &gt; and i also extended MACHINEOVERRIDES to define a common grouping =
for<br>
&gt; &gt; two of those boards. and here&#39;s the problem.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0i have files:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 * uio.scc<br>
&gt; &gt;=C2=A0 * uio.cfg<br>
&gt; &gt;=C2=A0 * uio.patch<br>
&gt; &gt;<br>
&gt; &gt; that used to apply to the two common boards, but should now apply=
 to<br>
&gt; &gt; all three, for all kernels.=C2=A0 so i used to have the directory=
<br>
&gt; &gt; structure:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0linux-windriver/<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0common/=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0(represents the 2 out of 3 related boards)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uio.scc<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uio.cfg<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uio.patch<br>
&gt; &gt;<br>
&gt; &gt; and the uio stuff was located just fine when building for either =
of<br>
&gt; &gt; the two target boards for which &quot;common&quot; was my extensi=
on to<br>
&gt; &gt; MACHINEOVERRIDES.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0now that it applies to all three boards, i did this j=
ust as a test<br>
&gt; &gt; (as you can see, unnecessary duplication of the uio files):<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0linux-windriver/<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0uio.scc<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0uio.cfg<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0uio.patch<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0common/<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uio.scc<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uio.cfg<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0uio.patch<br>
&gt; &gt;<br>
&gt; &gt; and all three boards can now build. however, when i went to get r=
id of<br>
&gt; &gt; the redundant stuff and reduce it to:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0linux-windriver/<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0uio.scc<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0uio.cfg<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0uio.patch<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0common/<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0... remaining stuff that still applies =
only to common ...<br>
&gt; &gt;<br>
&gt; &gt; i can still build that third board, but now the two &quot;common&=
quot; boards<br>
&gt; &gt; fail to process the kernel fragment uio.cfg. having moved that<br=
>
&gt; &gt; completely common uio content out of the subdirectory and right u=
nder<br>
&gt; &gt; linux-windriver now breaks the boards for which there is still a<=
br>
&gt; &gt; subdirectory, for no reason that i can see.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0it&#39;s as if, once the build process sees a more sp=
ecific<br>
&gt; &gt; MACHINEOVERRIDES directory from which to get content, it will no<=
br>
&gt; &gt; longer look elsewhere, even above for more generically appropriat=
e<br>
&gt; &gt; content.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0am i misunderstanding something? it seems that the co=
mmon thread<br>
&gt; &gt; running through all my problems with this is *.cfg files at the t=
op<br>
&gt; &gt; level of one of these directories.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0anyone seen anything like this?<br>
&gt;<br>
&gt; Did you check FILESPATH variable to see order of directories how they<=
br>
&gt; are searched?<br>
&gt;<br>
&gt; e.g.:<br>
&gt; $ bitbake -e sed | grep ^FILESPATH=3D | sed &quot;s/FILESPATH=3D\&quot=
;//g; s/\&quot;$//g; s/:/\n/g;&quot;<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.=
2/nodistro<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/nodi=
stro<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/no=
distro<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.=
2/qemux86<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemu=
x86<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qe=
mux86<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.=
2/qemuall<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemu=
all<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qe=
muall<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.=
2/x86<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/x86<=
br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/x8=
6<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.=
2/i586<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/i586=
<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/i5=
86<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.=
2/<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/<br>
&gt; /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/<b=
r>
<br>
</div></div>=C2=A0 yes, and they all look fine, but here&#39;s the latest d=
evelopment which<br>
should clarify things.<br>
<br>
=C2=A0 here&#39;s the structure of the generic linux-windriver/ directory,<=
br>
under which the search should look for anything which hasn&#39;t matched<br=
>
anything more specific in terms of a kernel version:<br>
<br>
linux-windriver/<br>
=E2=94=9C=E2=94=80=E2=94=80 0001-UIO-support-for-FPGA-select-CONFIG_UIO_XII=
_FPGA-y.patch<br>
=E2=94=9C=C2=A0 mxeiii<br>
=C2=A0 =C2=A0... mxe board specific stuff but *no* uio-related stuff<br>
=E2=94=9C=E2=94=80=E2=94=80 uio.cfg<br>
=E2=94=94=E2=94=80=E2=94=80 uio.scc<br>
<br>
=C2=A0 so what we have is the UIO stuff *immediately* under<br>
linux-windriver/, which is where it should be found (there is no other<br>
UIO content anywhere else in the recipe directory).<br>
<br>
=C2=A0 after doing the configure, here&#39;s the content of<br>
bitbake_build/tmp/work-shared/ax/kernel-source/.kernel-meta/cfg/standard/ax=
/config.log:<br>
<br>
[INFO] Sanitizing .kernel-meta/cfg/ax/new_board.cfg<br>
[INFO] Sanitizing .kernel-meta/cfg/linux-windriver/uio.cfg<br>
[INFO] Sanitizing .kernel-meta/cfg/kernel-meta/cfg/systemd.cfg<br>
<br>
note carefully how that second line shows clearly where the uio.cfg<br>
file is being found(?): linux-windriver/uio.cfg<br>
<br>
and that&#39;s for the board that works.<br>
<br>
=C2=A0 however, for the second board (the mxeiii for which there *is* a<br>
subdirectory that should be examined), here&#39;s the equivalent<br>
config.log file:<br>
<br>
[INFO] Sanitizing .kernel-meta/cfg/mxeiii/new_board.cfg<br>
[INFO] Sanitizing .kernel-meta/cfg/uio.cfg<br>
[ERROR] Kern frag .kernel-meta/cfg/uio.cfg does not exist<br>
<br>
note the difference in the second line in the two cases -- the<br>
subdirectory name &quot;linux-windriver&quot; has disappeared, hence the se=
cond<br>
case fails miserably in locating the config fragment file uio.cfg.<br>
<br>
=C2=A0 it&#39;s as if (and i&#39;m just making this up now) the fact that a=
 more<br>
specific &quot;mxeiii&quot; subdirectory under linux-windriver/ somehow scr=
ews<br>
up the search process. (if i redundantly duplicate those UIO files in<br>
the mxeiii/ subdirectory, then everything works fine, but that should<br>
*not* be necessary.)<br>
<br>
=C2=A0 is there something about the SRC_URI search order that i&#39;m unawa=
re<br>
of? should each SRC_URI item start a brand new, independent search?<br>
i&#39;ve been fighting with this for a while, and it simply makes no sense<=
br>
to me.<br></blockquote><div><br></div><div>You haven&#39;t supplied your SR=
C_URI in the question ... what does it look like ?=C2=A0</div><div><br></di=
v><div>It has no relation to the SRC_URI, probably a run of the mill bug in=
 the processing code.</div><div>I&#39;d suggest taking it up with Wind Rive=
r support.</div><div><br></div><div>Alternatively, if you have this somewhe=
re that I clone and launch a test build, I can</div><div>help you out .. bu=
t I won&#39;t be able to easily reproduce that situation from scratch.</div=
><div><br></div><div>Cheers,</div><div><br></div><div>Bruce</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
</div></div><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end&quot;</div>
</div></div>

--047d7b2e41ecdd6d770530ef2ddc--
