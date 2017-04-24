Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C9FE00867; Mon, 24 Apr 2017 07:28:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 722BBE00826
	for <yocto@lists.yoctoproject.org>;
	Mon, 24 Apr 2017 07:28:40 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id y10so6648712wmh.0
	for <yocto@lists.yoctoproject.org>;
	Mon, 24 Apr 2017 07:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0VXhTKJBn/MYcM4sNarGrZqaTkIfQxadYpSh9MSoUqE=;
	b=hrVoY5mbDlq+i0dYU4mB3kz38U1GMoOLnLJZO7n8osEi49PUwRjkauRJ4oBZmNOW+a
	vH6gp52f20ZjNdiEVqoQQdckxxTwFWkujO9JZWUas1vaWFF6RymG6Vdr6k/x9KjzZ4fa
	t8voy5SC6Y1ZvnLmA/I3rdzW2rZtQQAtwktEs4v9si6rT3I/E6+EvcQP9e+PR9IlX//H
	/5bv+qC5OV4RYeWURiAmfc7RhIamk0CSIjx2erDZAi6769prY9tAm/ysPl7Q3qpyUr/6
	YPJG3GpGnfpE9jYieDUKtBfGhQbMnG9o9rbBTdyeFLXDkgZQ7r5wkrWp60iKG56/GjrW
	Y6ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0VXhTKJBn/MYcM4sNarGrZqaTkIfQxadYpSh9MSoUqE=;
	b=aAb4XJ45dtDDy9kieJ72Q20dWaB6Mpho4DGCjsVhsS+H+VG1rG0uOEAENyNc++gWoh
	eFLERsDrYkrIELbsI3ys1bxrCfVVAvlC5K7rWQiD0ifovd37xUgEQzcsgu9HampVb34y
	uSj655Jcm16EJVEsdsFyQ5da6sk6K8ZiYQifSoNiyEik7BRGIXiU+xTNclq7ZTJPvb42
	mVKnquF6gWsByO4G0WU4ULw7t5N0xEPAqkS98TzfnUh9NP/oYczGMcipA99bcOt4hFNu
	YmA2NzqNHQolGPXglMoOfSourHwRY8Hu7HYIa+0TYjDZvHBMRXWderJG2Wki3cUpqY11
	ux0Q==
X-Gm-Message-State: AN3rC/7846cOMVYjMe2SXtjzea+EeJuCdFgzvVJ+TJA16+pfu5HNN2Yr
	hGkKEh4VMN7bbhY07HeveScKtmuzJQ==
X-Received: by 10.80.163.196 with SMTP id t4mr1322775edb.158.1493044119954;
	Mon, 24 Apr 2017 07:28:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.148.54 with HTTP; Mon, 24 Apr 2017 07:28:39 -0700 (PDT)
In-Reply-To: <CAJ86T=VXNdXhGn17Nu5Sexy0+JXj0A3B_PFVPoPu6bRsUc4e6Q@mail.gmail.com>
References: <20170421205911.GC3024@jama>
	<CAJ86T=VXNdXhGn17Nu5Sexy0+JXj0A3B_PFVPoPu6bRsUc4e6Q@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 24 Apr 2017 16:28:39 +0200
Message-ID: <CA+chaQfbx2h-dXFgAHVoY=iTg=Ptnephc0k+BdmXSeriHzgWOw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [RFC][meta-gplv2] layer priority and worth creating branch compatible with morty?
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
X-List-Received-Date: Mon, 24 Apr 2017 14:28:42 -0000
Content-Type: multipart/alternative; boundary=f403045c1a80676ce8054dea6c65

--f403045c1a80676ce8054dea6c65
Content-Type: text/plain; charset=UTF-8

You're right, after fixing our tooling to correctly override
BBFILE_PRIORITY based on priorities in layer list I'm seeing such
issue.e.g. gstreamer failing with:

| autopoint: *** The AM_GNU_GETTEXT_VERSION declaration in your configure.ac
              file requires the infrastructure from gettext-0.17 but this
version               is older. Please upgrade to gettext-0.17 or newer.
| autopoint: *** Stop.
|
| autopoint failed
| WARNING: exit code 1 from a shell command.

and similar issues in apt, grub, netcf, rrdtool.

There is quite a few native BBCLASSEXTENDs in meta-gplv2:
OE @ ~/meta-gplv2 $ git grep BBCLASSEXTEND
recipes-core/gettext/gettext_0.16.1.bb:BBCLASSEXTEND = "native nativesdk"
recipes-core/readline/readline_5.2.bb:BBCLASSEXTEND = "native nativesdk"
recipes-devtools/elfutils/elfutils_0.148.bb:BBCLASSEXTEND = "native
nativesdk"
recipes-devtools/m4/m4_1.4.9.bb:BBCLASSEXTEND = "nativesdk"
recipes-devtools/mtools/mtools_3.9.9.bb:BBCLASSEXTEND = "native nativesdk"
recipes-extended/cpio/cpio_v2.inc:BBCLASSEXTEND = "native"
recipes-extended/findutils/findutils.inc:BBCLASSEXTEND = "native nativesdk"
recipes-extended/gperf/gperf.inc:BBCLASSEXTEND = "native"
recipes-extended/libidn/libidn_0.6.14.bb:BBCLASSEXTEND = "native nativesdk"
recipes-extended/tar/tar.inc:BBCLASSEXTEND = "native nativesdk"
recipes-extended/texinfo/texinfo_4.8.bb:BBCLASSEXTEND = "native"
recipes-support/gdbm/gdbm_1.8.3.bb:BBCLASSEXTEND = "native nativesdk"
recipes-support/nettle/nettle.inc:BBCLASSEXTEND = "native nativesdk"





On Fri, Apr 21, 2017 at 11:19 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Apr 21, 2017 at 1:59 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> > 1) layer priority, currently it has:
> >        BBFILE_PRIORITY_gplv2 = "1"
> >    which is lower than oe-core with:
> >        BBFILE_PRIORITY_core = "5"
> >    so in order to use recipes from meta-gplv2 layer, user has to add
> >    couple PREFERRED_VERSIONS. Was this intended use for meta-gplv2?
>
> I guess the intention is that if you blacklist GPLv3 etc then only the
> recipes in meta-gplv2 will be considered.
>
> >    I can see some advantages of this (that the layer can be included
> >    without immediate side effects), but on the other hand why would
> >    anyone include this layer if he isn't deeply scared from (L)GPLv3
> >    versions sneaking into the build?
> >    In our local builds I'm bumping the priority to 6 to resolve this.
>
> If any of the recipes in meta-gplv2 still contain BBCLASSEXTEND =
> "native" then that could cause problems (generally you only want to
> use the older recipes for the target, not for -native).
>
> >    Alternatively we can add some conf/distro/gplv2-versions.inc file
> >    in meta-gplv2 so that people who want to use all available recipes
> >    in gplv2 compatible version can include it in their DISTRO.
> >
> > 2) branch for morty, currently the recipes aren't compatible with morty
> >    but with e.g. gnutls version added there it might be better option
> >    to share the gplv2 work there even when oe-core/morty contains most
> >    of these recipes as well.
> >    The recipes I had to modify to be compatible with morty are:
> >    https://github.com/shr-project/meta-gplv2/commits/jansa/morty
> >    88d1052 coreutils: make it compatible with Yocto 2.2 Morty
> >    5e08ac2 rsync: make it compatible with Yocto 2.2 Morty
> >    b33037f libiconv: make it compatible with Yocto 2.2 Morty
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--f403045c1a80676ce8054dea6c65
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re right, after fixing our tooling to correctly ov=
erride BBFILE_PRIORITY based on priorities in layer list I&#39;m seeing suc=
h issue.e.g. gstreamer failing with:<div><br></div><div><div>| autopoint: *=
** The AM_GNU_GETTEXT_VERSION declaration in your <a href=3D"http://configu=
re.ac">configure.ac</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi=
le requires the infrastructure from gettext-0.17 but this version =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 is older. Please upgrade to gette=
xt-0.17 or newer.</div><div>| autopoint: *** Stop.</div><div>|=C2=A0</div><=
div>| autopoint failed</div><div>| WARNING: exit code 1 from a shell comman=
d.</div></div><div><br></div><div>and similar issues in apt, grub, netcf, r=
rdtool.</div><div><br></div><div>There is quite a few native BBCLASSEXTENDs=
 in meta-gplv2:</div><div><div>OE @ ~/meta-gplv2 $ git grep BBCLASSEXTEND</=
div><div>recipes-core/gettext/gettext_0.16.1.bb:BBCLASSEXTEND =3D &quot;nat=
ive nativesdk&quot;</div><div>recipes-core/readline/readline_5.2.bb:BBCLASS=
EXTEND =3D &quot;native nativesdk&quot;</div><div>recipes-devtools/elfutils=
/elfutils_0.148.bb:BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div=
>recipes-devtools/m4/m4_1.4.9.bb:BBCLASSEXTEND =3D &quot;nativesdk&quot;</d=
iv><div>recipes-devtools/mtools/mtools_3.9.9.bb:BBCLASSEXTEND =3D &quot;nat=
ive nativesdk&quot;</div><div>recipes-extended/cpio/cpio_v2.inc:BBCLASSEXTE=
ND =3D &quot;native&quot;</div><div>recipes-extended/findutils/findutils.in=
c:BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div>recipes-extended=
/gperf/gperf.inc:BBCLASSEXTEND =3D &quot;native&quot;</div><div>recipes-ext=
ended/libidn/libidn_0.6.14.bb:BBCLASSEXTEND =3D &quot;native nativesdk&quot=
;</div><div>recipes-extended/tar/tar.inc:BBCLASSEXTEND =3D &quot;native nat=
ivesdk&quot;</div><div>recipes-extended/texinfo/texinfo_4.8.bb:BBCLASSEXTEN=
D =3D &quot;native&quot;</div><div>recipes-support/gdbm/gdbm_1.8.3.bb:BBCLA=
SSEXTEND =3D &quot;native nativesdk&quot;</div><div>recipes-support/nettle/=
nettle.inc:BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div></div><div><=
br></div><div><br></div><div><br></div><div><br></div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Apr 21, 2017 at 11:19 PM=
, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com=
" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><span class=3D"">On Fri, Apr 21, 2017 at 1:59 PM, Mart=
in Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.c=
om</a>&gt; wrote:<br>
&gt; 1) layer priority, currently it has:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 BBFILE_PRIORITY_gplv2 =3D &quot;1&quot;<br>
&gt;=C2=A0 =C2=A0 which is lower than oe-core with:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 BBFILE_PRIORITY_core =3D &quot;5&quot;<br>
&gt;=C2=A0 =C2=A0 so in order to use recipes from meta-gplv2 layer, user ha=
s to add<br>
&gt;=C2=A0 =C2=A0 couple PREFERRED_VERSIONS. Was this intended use for meta=
-gplv2?<br>
<br>
</span>I guess the intention is that if you blacklist GPLv3 etc then only t=
he<br>
recipes in meta-gplv2 will be considered.<br>
<span class=3D""><br>
&gt;=C2=A0 =C2=A0 I can see some advantages of this (that the layer can be =
included<br>
&gt;=C2=A0 =C2=A0 without immediate side effects), but on the other hand wh=
y would<br>
&gt;=C2=A0 =C2=A0 anyone include this layer if he isn&#39;t deeply scared f=
rom (L)GPLv3<br>
&gt;=C2=A0 =C2=A0 versions sneaking into the build?<br>
&gt;=C2=A0 =C2=A0 In our local builds I&#39;m bumping the priority to 6 to =
resolve this.<br>
<br>
</span>If any of the recipes in meta-gplv2 still contain BBCLASSEXTEND =3D<=
br>
&quot;native&quot; then that could cause problems (generally you only want =
to<br>
use the older recipes for the target, not for -native).<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;=C2=A0 =C2=A0 Alternatively we can add some conf/distro/gplv2-versions.=
inc file<br>
&gt;=C2=A0 =C2=A0 in meta-gplv2 so that people who want to use all availabl=
e recipes<br>
&gt;=C2=A0 =C2=A0 in gplv2 compatible version can include it in their DISTR=
O.<br>
&gt;<br>
&gt; 2) branch for morty, currently the recipes aren&#39;t compatible with =
morty<br>
&gt;=C2=A0 =C2=A0 but with e.g. gnutls version added there it might be bett=
er option<br>
&gt;=C2=A0 =C2=A0 to share the gplv2 work there even when oe-core/morty con=
tains most<br>
&gt;=C2=A0 =C2=A0 of these recipes as well.<br>
&gt;=C2=A0 =C2=A0 The recipes I had to modify to be compatible with morty a=
re:<br>
&gt;=C2=A0 =C2=A0 <a href=3D"https://github.com/shr-project/meta-gplv2/comm=
its/jansa/morty" rel=3D"noreferrer" target=3D"_blank">https://github.com/sh=
r-<wbr>project/meta-gplv2/commits/<wbr>jansa/morty</a><br>
&gt;=C2=A0 =C2=A0 88d1052 coreutils: make it compatible with Yocto 2.2 Mort=
y<br>
&gt;=C2=A0 =C2=A0 5e08ac2 rsync: make it compatible with Yocto 2.2 Morty<br=
>
&gt;=C2=A0 =C2=A0 b33037f libiconv: make it compatible with Yocto 2.2 Morty=
<br>
&gt;<br>
&gt; --<br>
&gt; Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mail=
to:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--f403045c1a80676ce8054dea6c65--
