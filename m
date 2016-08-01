Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 265B5E00E46; Mon,  1 Aug 2016 04:49:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCD4BE00E3E
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 04:49:09 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id z8so12610162ywa.0
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 04:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=MNpU2leUyj0lI22q1yDCriITGRpNWpGcecbCGwHTqvc=;
	b=kkutW3Bwy41YuQkbs/06+0YvEO93N4CzfC1Jl3oe8XzfPmqm80HO3elDvTjt8IABFd
	xSbMrGZE3r63lFYnTY6DdsM1PKSt5dsRG/SBo0KRaH433B9/1kg/i8BFHB+vLt1ccjgo
	64i3nfsC+AN/UvcMpSe5yApFzodDw8/UYBquE4D9PtO/AhY3G2WQJq29+nhbzczR+vL+
	z+jfm+uMXRENWd47IH7uTU3/DobluJV6r6Cx6MWvrCKHBZtneJGqlGn8jKdXjfjceW8P
	CqL0kKsVp7WWnyzp0l3dzYS7fvPjaq6vvqQ4+32Q5x0si7EvRzODdOhE+guVfSrzjRjP
	pKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=MNpU2leUyj0lI22q1yDCriITGRpNWpGcecbCGwHTqvc=;
	b=FxEDaqBScVfSCZ/sPwcVt9RCu2RhogO4F7cPkX0lkA4fSA1mOFiy+HjkcuwsktpBLI
	xGCgajVzcaNyLdpkXTaSk/EmQaX9iSDAKWA1GSX60dIl0sb3bH42KQDpYNQ0t448ZRSA
	o7HRSyLBfixHvBwp8mntK2cGZFXkGGS0SmphHJuR3LUvrqJofVXMIUjQuuxQ6GqN6STL
	kgeOppUUS2afvcXudnfRZTy0fr1nAKGDdC5jtybmqFOTHUPPn6jkthlXpheEISjUAbEf
	TwaU0RG5RSDvhIjXIGkJY7h0tvtipkUiuxMvq5JhW+X9lcHn77DR6ktCfhR0fXqF3LzQ
	nbOA==
X-Gm-Message-State: AEkoousiBt+qFdo7Q7YdByv+C2OmM/rktW+j7G1jgB+bDmFJPo2jaJ3kPlrkFzOrhLgJ4LmGFnVhOUSFjc71bQ==
X-Received: by 10.13.251.66 with SMTP id l63mr45115117ywf.69.1470052148861;
	Mon, 01 Aug 2016 04:49:08 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.132.20 with HTTP; Mon, 1 Aug 2016 04:48:49 -0700 (PDT)
In-Reply-To: <20160801011221.kzrthppcgro5ml5h@jama>
References: <1469823637-29815-1-git-send-email-bkylerussell@gmail.com>
	<20160801011221.kzrthppcgro5ml5h@jama>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Mon, 1 Aug 2016 07:48:49 -0400
X-Google-Sender-Auth: QQwjz1C0ORRZtAuFxinj8aSGN-g
Message-ID: <CAFrQVPP_KPEWdpJMkqrsY0LN4kkYuZd4_nEjArTPH=UqHGXGZw@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org, wesley.lindauer@lexmark.com
Subject: Re: [meta][PATCH] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Mon, 01 Aug 2016 11:49:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c07e9de22613405390130ee

--94eb2c07e9de22613405390130ee
Content-Type: text/plain; charset=UTF-8

Thanks, sorry I missed that.  I'll post an updated patch.

On Sun, Jul 31, 2016 at 9:12 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> On Fri, Jul 29, 2016 at 04:20:37PM -0400, Kyle Russell wrote:
> > Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
>
> manifest is generated, you need to update the script which generates
> that (read file header).
>
> > ---
> >  meta/recipes-devtools/python/python-3.4-manifest.inc | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/meta/recipes-devtools/python/python-3.4-manifest.inc
> b/meta/recipes-devtools/python/python-3.4-manifest.inc
> > index 97070b6..f744441 100644
> > --- a/meta/recipes-devtools/python/python-3.4-manifest.inc
> > +++ b/meta/recipes-devtools/python/python-3.4-manifest.inc
> > @@ -42,7 +42,7 @@ RDEPENDS_${PN}-crypt="${PN}-core"
> >  FILES_${PN}-crypt="${libdir}/python3.4/hashlib.*
> ${libdir}/python3.4/md5.* ${libdir}/python3.4/sha.*
> ${libdir}/python3.4/lib-dynload/crypt.*.so
> ${libdir}/python3.4/lib-dynload/_hashlib.*.so
> ${libdir}/python3.4/lib-dynload/_sha256.*.so
> ${libdir}/python3.4/lib-dynload/_sha512.*.so "
> >
> >  SUMMARY_${PN}-ctypes="Python C types support"
> > -RDEPENDS_${PN}-ctypes="${PN}-core"
> > +RDEPENDS_${PN}-ctypes="${PN}-core ${PN}-subprocess"
> >  FILES_${PN}-ctypes="${libdir}/python3.4/ctypes
> ${libdir}/python3.4/lib-dynload/_ctypes.*.so
> ${libdir}/python3.4/lib-dynload/_ctypes_test.*.so "
> >
> >  SUMMARY_${PN}-curses="Python curses support"
> > @@ -122,7 +122,7 @@ RDEPENDS_${PN}-json="${PN}-core ${PN}-math ${PN}-re"
> >  FILES_${PN}-json="${libdir}/python3.4/json
> ${libdir}/python3.4/lib-dynload/_json.*.so "
> >
> >  SUMMARY_${PN}-lang="Python low-level language support"
> > -RDEPENDS_${PN}-lang="${PN}-core"
> > +RDEPENDS_${PN}-lang="${PN}-core ${PN}-importlib"
> >  FILES_${PN}-lang="${libdir}/python3.4/lib-dynload/_bisect.*.so
> ${libdir}/python3.4/lib-dynload/_collections.*.so
> ${libdir}/python3.4/lib-dynload/_heapq.*.so
> ${libdir}/python3.4/lib-dynload/_weakref.*.so
> ${libdir}/python3.4/lib-dynload/_functools.*.so
> ${libdir}/python3.4/lib-dynload/array.*.so
> ${libdir}/python3.4/lib-dynload/itertools.*.so
> ${libdir}/python3.4/lib-dynload/operator.*.so
> ${libdir}/python3.4/lib-dynload/parser.*.so ${libdir}/python3.4/atexit.*
> ${libdir}/python3.4/bisect.* ${libdir}/python3.4/code.*
> ${libdir}/python3.4/codeop.* ${libdir}/python3.4/collections.*
> ${libdir}/python3.4/_collections_abc.* ${libdir}/python3.4/dis.*
> ${libdir}/python3.4/functools.* ${libdir}/python3.4/heapq.*
> ${libdir}/python3.4/inspect.* ${libdir}/python3.4/keyword.*
> ${libdir}/python3.4/opcode.* ${libdir}/python3.4/symbol.*
> ${libdir}/python3.4/repr.* ${libdir}/python3.4/token.*
> ${libdir}/python3.4/tokenize.* ${libdir}/python3.4/traceback.*
> ${libdir}/python3.4/weakref.* "
> >
> >  SUMMARY_${PN}-logging="Python logging support"
> > @@ -134,7 +134,7 @@ RDEPENDS_${PN}-mailbox="${PN}-core ${PN}-mime"
> >  FILES_${PN}-mailbox="${libdir}/python3.4/mailbox.* "
> >
> >  SUMMARY_${PN}-math="Python math support"
> > -RDEPENDS_${PN}-math="${PN}-core"
> > +RDEPENDS_${PN}-math="${PN}-core ${PN}-crypt"
> >  FILES_${PN}-math="${libdir}/python3.4/lib-dynload/cmath.*.so
> ${libdir}/python3.4/lib-dynload/math.*.so
> ${libdir}/python3.4/lib-dynload/_random.*.so ${libdir}/python3.4/random.*
> ${libdir}/python3.4/sets.* "
> >
> >  SUMMARY_${PN}-mime="Python MIME handling APIs"
> > @@ -198,7 +198,7 @@ RDEPENDS_${PN}-resource="${PN}-core"
> >  FILES_${PN}-resource="${libdir}/python3.4/lib-dynload/resource.*.so "
> >
> >  SUMMARY_${PN}-shell="Python shell-like functionality"
> > -RDEPENDS_${PN}-shell="${PN}-core ${PN}-re"
> > +RDEPENDS_${PN}-shell="${PN}-core ${PN}-re ${PN}-compression"
> >  FILES_${PN}-shell="${libdir}/python3.4/cmd.*
> ${libdir}/python3.4/commands.* ${libdir}/python3.4/dircache.*
> ${libdir}/python3.4/fnmatch.* ${libdir}/python3.4/glob.*
> ${libdir}/python3.4/popen2.* ${libdir}/python3.4/shlex.*
> ${libdir}/python3.4/shutil.* "
> >
> >  SUMMARY_${PN}-smtpd="Python Simple Mail Transport Daemon"
> > @@ -218,7 +218,7 @@ RDEPENDS_${PN}-stringold="${PN}-core ${PN}-re"
> >  FILES_${PN}-stringold="${libdir}/python3.4/lib-dynload/strop.*.so
> ${libdir}/python3.4/string.* ${libdir}/python3.4/stringold.* "
> >
> >  SUMMARY_${PN}-subprocess="Python subprocess support"
> > -RDEPENDS_${PN}-subprocess="${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl
> ${PN}-pickle"
> > +RDEPENDS_${PN}-subprocess="${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl
> ${PN}-pickle ${PN}-threading"
> >  FILES_${PN}-subprocess="${libdir}/python3.4/subprocess.* "
> >
> >  SUMMARY_${PN}-syslog="Python syslog interface"
> > --
> > 1.9.1
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--94eb2c07e9de22613405390130ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, sorry I missed that.=C2=A0 I&#39;ll post an update=
d patch.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Sun, Jul 31, 2016 at 9:12 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D=
"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, Jul 29, 2016 =
at 04:20:37PM -0400, Kyle Russell wrote:<br>
&gt; Signed-off-by: Kyle Russell &lt;<a href=3D"mailto:bkylerussell@gmail.c=
om">bkylerussell@gmail.com</a>&gt;<br>
<br>
manifest is generated, you need to update the script which generates<br>
that (read file header).<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; ---<br>
&gt;=C2=A0 meta/recipes-devtools/python/python-3.4-manifest.inc | 10 +++++-=
----<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 5 deletions(-)<br>
&gt;<br>
&gt; diff --git a/meta/recipes-devtools/python/python-3.4-manifest.inc b/me=
ta/recipes-devtools/python/python-3.4-manifest.inc<br>
&gt; index 97070b6..f744441 100644<br>
&gt; --- a/meta/recipes-devtools/python/python-3.4-manifest.inc<br>
&gt; +++ b/meta/recipes-devtools/python/python-3.4-manifest.inc<br>
&gt; @@ -42,7 +42,7 @@ RDEPENDS_${PN}-crypt=3D&quot;${PN}-core&quot;<br>
&gt;=C2=A0 FILES_${PN}-crypt=3D&quot;${libdir}/python3.4/hashlib.* ${libdir=
}/python3.4/md5.* ${libdir}/python3.4/sha.* ${libdir}/python3.4/lib-dynload=
/crypt.*.so ${libdir}/python3.4/lib-dynload/_hashlib.*.so ${libdir}/python3=
.4/lib-dynload/_sha256.*.so ${libdir}/python3.4/lib-dynload/_sha512.*.so &q=
uot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-ctypes=3D&quot;Python C types support&quot;<br>
&gt; -RDEPENDS_${PN}-ctypes=3D&quot;${PN}-core&quot;<br>
&gt; +RDEPENDS_${PN}-ctypes=3D&quot;${PN}-core ${PN}-subprocess&quot;<br>
&gt;=C2=A0 FILES_${PN}-ctypes=3D&quot;${libdir}/python3.4/ctypes ${libdir}/=
python3.4/lib-dynload/_ctypes.*.so ${libdir}/python3.4/lib-dynload/_ctypes_=
test.*.so &quot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-curses=3D&quot;Python curses support&quot;<br>
&gt; @@ -122,7 +122,7 @@ RDEPENDS_${PN}-json=3D&quot;${PN}-core ${PN}-math =
${PN}-re&quot;<br>
&gt;=C2=A0 FILES_${PN}-json=3D&quot;${libdir}/python3.4/json ${libdir}/pyth=
on3.4/lib-dynload/_json.*.so &quot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-lang=3D&quot;Python low-level language support&quo=
t;<br>
&gt; -RDEPENDS_${PN}-lang=3D&quot;${PN}-core&quot;<br>
&gt; +RDEPENDS_${PN}-lang=3D&quot;${PN}-core ${PN}-importlib&quot;<br>
&gt;=C2=A0 FILES_${PN}-lang=3D&quot;${libdir}/python3.4/lib-dynload/_bisect=
.*.so ${libdir}/python3.4/lib-dynload/_collections.*.so ${libdir}/python3.4=
/lib-dynload/_heapq.*.so ${libdir}/python3.4/lib-dynload/_weakref.*.so ${li=
bdir}/python3.4/lib-dynload/_functools.*.so ${libdir}/python3.4/lib-dynload=
/array.*.so ${libdir}/python3.4/lib-dynload/itertools.*.so ${libdir}/python=
3.4/lib-dynload/operator.*.so ${libdir}/python3.4/lib-dynload/parser.*.so $=
{libdir}/python3.4/atexit.* ${libdir}/python3.4/bisect.* ${libdir}/python3.=
4/code.* ${libdir}/python3.4/codeop.* ${libdir}/python3.4/collections.* ${l=
ibdir}/python3.4/_collections_abc.* ${libdir}/python3.4/dis.* ${libdir}/pyt=
hon3.4/functools.* ${libdir}/python3.4/heapq.* ${libdir}/python3.4/inspect.=
* ${libdir}/python3.4/keyword.* ${libdir}/python3.4/opcode.* ${libdir}/pyth=
on3.4/symbol.* ${libdir}/python3.4/repr.* ${libdir}/python3.4/token.* ${lib=
dir}/python3.4/tokenize.* ${libdir}/python3.4/traceback.* ${libdir}/python3=
.4/weakref.* &quot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-logging=3D&quot;Python logging support&quot;<br>
&gt; @@ -134,7 +134,7 @@ RDEPENDS_${PN}-mailbox=3D&quot;${PN}-core ${PN}-mi=
me&quot;<br>
&gt;=C2=A0 FILES_${PN}-mailbox=3D&quot;${libdir}/python3.4/mailbox.* &quot;=
<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-math=3D&quot;Python math support&quot;<br>
&gt; -RDEPENDS_${PN}-math=3D&quot;${PN}-core&quot;<br>
&gt; +RDEPENDS_${PN}-math=3D&quot;${PN}-core ${PN}-crypt&quot;<br>
&gt;=C2=A0 FILES_${PN}-math=3D&quot;${libdir}/python3.4/lib-dynload/cmath.*=
.so ${libdir}/python3.4/lib-dynload/math.*.so ${libdir}/python3.4/lib-dynlo=
ad/_random.*.so ${libdir}/python3.4/random.* ${libdir}/python3.4/sets.* &qu=
ot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-mime=3D&quot;Python MIME handling APIs&quot;<br>
&gt; @@ -198,7 +198,7 @@ RDEPENDS_${PN}-resource=3D&quot;${PN}-core&quot;<b=
r>
&gt;=C2=A0 FILES_${PN}-resource=3D&quot;${libdir}/python3.4/lib-dynload/res=
ource.*.so &quot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-shell=3D&quot;Python shell-like functionality&quot=
;<br>
&gt; -RDEPENDS_${PN}-shell=3D&quot;${PN}-core ${PN}-re&quot;<br>
&gt; +RDEPENDS_${PN}-shell=3D&quot;${PN}-core ${PN}-re ${PN}-compression&qu=
ot;<br>
&gt;=C2=A0 FILES_${PN}-shell=3D&quot;${libdir}/python3.4/cmd.* ${libdir}/py=
thon3.4/commands.* ${libdir}/python3.4/dircache.* ${libdir}/python3.4/fnmat=
ch.* ${libdir}/python3.4/glob.* ${libdir}/python3.4/popen2.* ${libdir}/pyth=
on3.4/shlex.* ${libdir}/python3.4/shutil.* &quot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-smtpd=3D&quot;Python Simple Mail Transport Daemon&=
quot;<br>
&gt; @@ -218,7 +218,7 @@ RDEPENDS_${PN}-stringold=3D&quot;${PN}-core ${PN}-=
re&quot;<br>
&gt;=C2=A0 FILES_${PN}-stringold=3D&quot;${libdir}/python3.4/lib-dynload/st=
rop.*.so ${libdir}/python3.4/string.* ${libdir}/python3.4/stringold.* &quot=
;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-subprocess=3D&quot;Python subprocess support&quot;=
<br>
&gt; -RDEPENDS_${PN}-subprocess=3D&quot;${PN}-core ${PN}-io ${PN}-re ${PN}-=
fcntl ${PN}-pickle&quot;<br>
&gt; +RDEPENDS_${PN}-subprocess=3D&quot;${PN}-core ${PN}-io ${PN}-re ${PN}-=
fcntl ${PN}-pickle ${PN}-threading&quot;<br>
&gt;=C2=A0 FILES_${PN}-subprocess=3D&quot;${libdir}/python3.4/subprocess.* =
&quot;<br>
&gt;<br>
&gt;=C2=A0 SUMMARY_${PN}-syslog=3D&quot;Python syslog interface&quot;<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>

--94eb2c07e9de22613405390130ee--
