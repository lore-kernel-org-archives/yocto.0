Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04F28E0095F; Thu, 20 Apr 2017 11:07:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96ABCE0083C
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 Apr 2017 11:07:45 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l44so8586712wrc.2
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 Apr 2017 11:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=27zJtlCvKwmidwYhPtuphUwpOMcCWM/RmjQvBQyRsPE=;
	b=G4ob+IPg0LuVCPfFm8W1LZt/aj5aQhuUJpFTHUBE3gfXFHHjO/Cgs1iNTuisU7Ewaa
	9KpCkl4o7kUfsqcWBFgq2UsmxXJ/E2j+joZnHciYYfXuc8PP1Rr7Z2JI0ozSPlyKYNe/
	UfbsULUlMpx0Q2aRP3UDzJebVycPR84PTuHz4ezU/w9KX83+8dOmzI8fd/0Ui/9inndD
	jkku4ghzTTTUZPbAEuWzeJpDUMwpXsAjqXAM8O9ldIH0FeBcglXupVupHchmW+pWCjjw
	5Zw7iiJbJ/H8WQBlCtul2TgP8wPThfXN937kWzs0SmHngrcZzXV9FX+6+/RS8EGtQnoP
	pElg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=27zJtlCvKwmidwYhPtuphUwpOMcCWM/RmjQvBQyRsPE=;
	b=oFFLtCPiQQsLK69zu1tRbnE+9ndHUTUPo3uKmczxS030fmpZvS9Oy9SgAjN0kudpqv
	q28HLpIa3kkR/dXsISwKysf1evrTPVuUHidCiwb20YdO/mph1HN1UNx3+eRrBhzFV8+f
	JNewOhNbE/paA8+EgP2bfB6bfRVQRFlMh5KNo0rAljg8aiz+5Cp5da11uuxawLMA4Ozn
	iAGdI/+EDf8VxqAQmj9sVyKxhWx45gSo2RvkCFxUWpvSjFqBhBFFvT/ePN7Ji52/7I1p
	ZZvK6s6Uy8Hrk3UyPiwNxvTS0VDkedK+BwHdVUovmt7ACDgGzS1q/BVUJbTCe34o63Kr
	aVsA==
X-Gm-Message-State: AN3rC/6DuzaBUcmqgOEnZ5GKQRFgr4bAJ8O5cI7fnHY5h4ZM7z2BVWe2
	qQwi2w0NnL4ap9Y4K7N4yj2YuuNJyRqe
X-Received: by 10.223.174.131 with SMTP id y3mr9406362wrc.196.1492711664343;
	Thu, 20 Apr 2017 11:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.148.54 with HTTP; Thu, 20 Apr 2017 11:07:43 -0700 (PDT)
In-Reply-To: <CAJ86T=UO-oVaH-nJ=qg3_zsQBNrwXJnokiuwD_sAbwMZKvt2CA@mail.gmail.com>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
	<CAJ86T=UO-oVaH-nJ=qg3_zsQBNrwXJnokiuwD_sAbwMZKvt2CA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 20 Apr 2017 20:07:43 +0200
Message-ID: <CA+chaQdjQ+OK9MFUR+=coaheD=6V-BD6Ud87i9n45koihM=ySA@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Thu, 20 Apr 2017 18:07:49 -0000
Content-Type: multipart/alternative; boundary=001a11477b6a816607054d9d0455

--001a11477b6a816607054d9d0455
Content-Type: text/plain; charset=UTF-8

I'll check the exact error message, but do_configure was failing for me
when I did first build without this dependency.

Most likely because this option was removed with 3.5.1 upgrade in:
commit e8ef5912aac0104d9a47d6d10a95e64426d8840e
Author: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Date:   Tue Jun 28 11:06:16 2016 +0300

    gnutls: update to 3.5.1

    Remove no longer supported --disable-crywrap option.
    Add a checksum for the LICENSE file with licensing overview.

    Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
    Signed-off-by: Ross Burton <ross.burton@intel.com>


I've verified that even with this build dependency the main libgnutls
package doesn't runtime depend on libidn, which is enough for us, if you
have strong opinion about --disable-crywrap then we can return it in the
recipes-support/gnutls/gnutls_3.3.27.bb

On Thu, Apr 20, 2017 at 7:59 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Thu, Apr 20, 2017 at 9:20 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> > * gnutls depends on nettle-3.1* since 3.4.0:
> >   The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_0
> >   https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33ffe086e5076327
> 71b0e76498
> >   and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0
> >   https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3351b2722278ba
> 463d6e731c
> > * add recipe for last release in 3.3 branch which is compatible
> >   with nettle 2.7.1 used in meta-gplv2
> >
> > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> > ---
> >  .../gnutls/configure.ac-fix-sed-command.patch      | 31
> ++++++++++++++++++++++
> >  recipes-support/gnutls/gnutls_3.3.27.bb            | 23
> ++++++++++++++++
> >  2 files changed, 54 insertions(+)
> >  create mode 100644 recipes-support/gnutls/gnutls/
> configure.ac-fix-sed-command.patch
> >  create mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
> >
> > diff --git a/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> > new file mode 100644
> > index 0000000..44a9934
> > --- /dev/null
> > +++ b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
> > @@ -0,0 +1,31 @@
> > +From eb93aa7b986c84da60a3db40afb29d1a70c50223 Mon Sep 17 00:00:00 2001
> > +From: Robert Yang <liezhi.yang@windriver.com>
> > +Date: Sat, 17 Jan 2015 17:02:15 +0000
> > +Subject: [PATCH] configure.ac: fix sed command
> > +
> > +The "sed 's/.bak//g'" matchs "bitbake", which would cause strange errors
> > +when the S contains "bitbake", fix to "sed 's/\.bak$//'`"
> > +
> > +Upstream-Status: Pending
> > +
> > +Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> > +---
> > + configure.ac | 2 +-
> > + 1 file changed, 1 insertion(+), 1 deletion(-)
> > +
> > +diff --git a/configure.ac b/configure.ac
> > +index c6818a0..1c4582d 100644
> > +--- a/configure.ac
> > ++++ b/configure.ac
> > +@@ -466,7 +466,7 @@ if test "$NEED_LIBOPTS_DIR" = "true";then
> > +       dnl replace libopts-generated files with distributed backups, if
> present
> > +       missing_baks=
> > +       for i in ${srcdir}/src/*-args.c.bak ${srcdir}/src/*-args.h.bak;
> do
> > +-              nam=`echo $i|sed 's/.bak//g'`
> > ++              nam=`echo $i|sed 's/\.bak$//'`
> > +               if test -f $i;then
> > +                       cp -f $i $nam
> > +               else
> > +--
> > +2.0.1
> > +
> > diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb
> b/recipes-support/gnutls/gnutls_3.3.27.bb
> > new file mode 100644
> > index 0000000..2828581
> > --- /dev/null
> > +++ b/recipes-support/gnutls/gnutls_3.3.27.bb
> > @@ -0,0 +1,23 @@
> > +require recipes-support/gnutls/gnutls.inc
> > +
> > +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504
> \
> > +                    file://COPYING.LESSER;md5=
> a6f89e2100d9b6cdffcea4f398e37343"
> > +
> > +FILESEXTRAPATHS_prepend = "${COREBASE}/meta/recipes-
> support/${BPN}/${BPN}:"
> > +
> > +SRC_URI += " \
> > +    file://correct_rpl_gettimeofday_signature.patch \
> > +    file://configure.ac-fix-sed-command.patch \
> > +    file://use-pkg-config-to-locate-zlib.patch \
> > +"
> > +SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
> > +SRC_URI[sha256sum] = "8dfda16c158ef5c134010d51d1a91d
> 02aa5d43b8cb711b1572650a7ffb56b17f"
> > +
> > +# This version doesn't support this option added in newer gnutls
> > +# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was
> passed unrecognised options: --with-idn [unknown-configure-option]
> > +PACKAGECONFIG[libidn] = ""
> > +# but it has the dependency
> > +DEPENDS += "libidn"
>
> That dependency was removed for gnutls 3.3.x by:
>
>   http://git.openembedded.org/openembedded-core/commit/?id=
> 6fd51f5c15a380eae630fe853ba0eccde7b9a369
>
> > +# This version doesn't support this option added in newer gnutls
> > +EXTRA_OECONF_remove = "--without-libunistring-prefix"
> > --
> > 2.12.2
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--001a11477b6a816607054d9d0455
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ll check the exact error message, but do_configure w=
as failing for me when I did first build without this dependency.<div><br><=
/div><div>Most likely because this option was removed with 3.5.1 upgrade in=
:</div><div><div>commit e8ef5912aac0104d9a47d6d10a95e64426d8840e</div><div>=
Author: Alexander Kanavin &lt;<a href=3D"mailto:alexander.kanavin@linux.int=
el.com">alexander.kanavin@linux.intel.com</a>&gt;</div><div>Date: =C2=A0 Tu=
e Jun 28 11:06:16 2016 +0300</div><div><br></div><div>=C2=A0 =C2=A0 gnutls:=
 update to 3.5.1</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Remo=
ve no longer supported --disable-crywrap option.</div><div>=C2=A0 =C2=A0 Ad=
d a checksum for the LICENSE file with licensing overview.</div><div>=C2=A0=
 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 Signed-off-by: Alexander Kanavin &lt;=
<a href=3D"mailto:alexander.kanavin@linux.intel.com">alexander.kanavin@linu=
x.intel.com</a>&gt;</div><div>=C2=A0 =C2=A0 Signed-off-by: Ross Burton &lt;=
<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;</div=
></div><div><br></div><div><br></div><div>I&#39;ve verified that even with =
this build dependency the main libgnutls package doesn&#39;t runtime depend=
 on libidn, which is enough for us, if you have strong opinion about --disa=
ble-crywrap then we can return it in the=C2=A0<span style=3D"color:rgb(80,0=
,80);font-size:12.8px">recipes-support/gnutls/</span><a href=3D"http://gnut=
ls_3.3.27.bb/" rel=3D"noreferrer" target=3D"_blank" style=3D"font-size:12.8=
px">gnutl<wbr>s_3.3.27.bb</a></div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Thu, Apr 20, 2017 at 7:59 PM, Andre McCurdy <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">=
armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div class=3D"HOEnZb"><div class=3D"h5">On Thu, Apr 20, 2017 at 9:20 AM, M=
artin Jansa &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmai=
l.com</a>&gt; wrote:<br>
&gt; * gnutls depends on nettle-3.1* since 3.4.0:<br>
&gt;=C2=A0 =C2=A0The requirement for nettle was bumped from 3.0 to 3.1 in g=
nutls_3_4_0<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://gitlab.com/gnutls/gnutls/commit/c84129a=
f91b21d33ffe086e507632771b0e76498" rel=3D"noreferrer" target=3D"_blank">htt=
ps://gitlab.com/gnutls/<wbr>gnutls/commit/<wbr>c84129af91b21d33ffe086e50763=
27<wbr>71b0e76498</a><br>
&gt;=C2=A0 =C2=A0and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://gitlab.com/gnutls/gnutls/commit/3fa80cf=
68919f07b3351b2722278ba463d6e731c" rel=3D"noreferrer" target=3D"_blank">htt=
ps://gitlab.com/gnutls/<wbr>gnutls/commit/<wbr>3fa80cf68919f07b3351b2722278=
ba<wbr>463d6e731c</a><br>
&gt; * add recipe for last release in 3.3 branch which is compatible<br>
&gt;=C2=A0 =C2=A0with nettle 2.7.1 used in meta-gplv2<br>
&gt;<br>
&gt; Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.c=
om">Martin.Jansa@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../gnutls/configure.ac-fix-<wbr>sed-command.patch=C2=A0 =C2=A0 =
=C2=A0 | 31 ++++++++++++++++++++++<br>
&gt;=C2=A0 recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=
=3D"noreferrer" target=3D"_blank">gnutls_<wbr>3.3.27.bb</a>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 23 ++++++++++++++++<br>
&gt;=C2=A0 2 files changed, 54 insertions(+)<br>
&gt;=C2=A0 create mode 100644 recipes-support/gnutls/gnutls/<wbr>configure.=
ac-fix-sed-command.<wbr>patch<br>
&gt;=C2=A0 create mode 100644 recipes-support/gnutls/<a href=3D"http://gnut=
ls_3.3.27.bb" rel=3D"noreferrer" target=3D"_blank">gnutls_<wbr>3.3.27.bb</a=
><br>
&gt;<br>
&gt; diff --git a/recipes-support/gnutls/<wbr>gnutls/configure.ac-fix-sed-<=
wbr>command.patch b/recipes-support/gnutls/<wbr>gnutls/configure.ac-fix-sed=
-<wbr>command.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000..44a9934<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-support/gnutls/<wbr>gnutls/configure.ac-fix-sed-<wbr>com=
mand.patch<br>
&gt; @@ -0,0 +1,31 @@<br>
&gt; +From eb93aa7b986c84da60a3db40afb29d<wbr>1a70c50223 Mon Sep 17 00:00:0=
0 2001<br>
&gt; +From: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com">li=
ezhi.yang@windriver.com</a>&gt;<br>
&gt; +Date: Sat, 17 Jan 2015 17:02:15 +0000<br>
&gt; +Subject: [PATCH] <a href=3D"http://configure.ac" rel=3D"noreferrer" t=
arget=3D"_blank">configure.ac</a>: fix sed command<br>
&gt; +<br>
&gt; +The &quot;sed &#39;s/.bak//g&#39;&quot; matchs &quot;bitbake&quot;, w=
hich would cause strange errors<br>
&gt; +when the S contains &quot;bitbake&quot;, fix to &quot;sed &#39;s/\.ba=
k$//&#39;`&quot;<br>
&gt; +<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt; +Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windrive=
r.com">liezhi.yang@windriver.com</a>&gt;<br>
&gt; +---<br>
&gt; + <a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a> | 2 +-<br>
&gt; + 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; +<br>
&gt; +diff --git a/<a href=3D"http://configure.ac" rel=3D"noreferrer" targe=
t=3D"_blank">configure.ac</a> b/<a href=3D"http://configure.ac" rel=3D"nore=
ferrer" target=3D"_blank">configure.ac</a><br>
&gt; +index c6818a0..1c4582d 100644<br>
&gt; +--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_b=
lank">configure.ac</a><br>
&gt; ++++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_b=
lank">configure.ac</a><br>
&gt; +@@ -466,7 +466,7 @@ if test &quot;$NEED_LIBOPTS_DIR&quot; =3D &quot;t=
rue&quot;;then<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0dnl replace libopts-generated files with d=
istributed backups, if present<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0missing_baks=3D<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0for i in ${srcdir}/src/*-args.c.bak ${srcd=
ir}/src/*-args.h.bak; do<br>
&gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nam=3D`echo $i|sed =
&#39;s/.bak//g&#39;`<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nam=3D`echo $i|sed =
&#39;s/\.bak$//&#39;`<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if test -f $i;=
then<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0cp -f $i $nam<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt; +--<br>
&gt; +2.0.1<br>
&gt; +<br>
&gt; diff --git a/recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb=
" rel=3D"noreferrer" target=3D"_blank">gnutl<wbr>s_3.3.27.bb</a> b/recipes-=
support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=3D"noreferrer" targe=
t=3D"_blank">gnutl<wbr>s_3.3.27.bb</a><br>
&gt; new file mode 100644<br>
&gt; index 0000000..2828581<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=
=3D"noreferrer" target=3D"_blank">gnutl<wbr>s_3.3.27.bb</a><br>
&gt; @@ -0,0 +1,23 @@<br>
&gt; +require recipes-support/gnutls/gnutls.<wbr>inc<br>
&gt; +<br>
&gt; +LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<wbr>d32239bcb673463a=
b874e80d47fae5<wbr>04 \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 file://COPYING.LESSER;md5=3D<wbr>a6f89e2100d9b6cdffcea4f398e373<wbr>43&quo=
t;<br>
&gt; +<br>
&gt; +FILESEXTRAPATHS_prepend =3D &quot;${COREBASE}/meta/recipes-<wbr>suppo=
rt/${BPN}/${BPN}:&quot;<br>
&gt; +<br>
&gt; +SRC_URI +=3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 file://correct_rpl_<wbr>gettimeofday_signature.patch \<=
br>
&gt; +=C2=A0 =C2=A0 file://configure.ac-fix-sed-<wbr>command.patch \<br>
&gt; +=C2=A0 =C2=A0 file://use-pkg-config-to-<wbr>locate-zlib.patch \<br>
&gt; +&quot;<br>
&gt; +SRC_URI[md5sum] =3D &quot;<wbr>8ee8cebd7f7575b11f232766a21c31<wbr>d3&=
quot;<br>
&gt; +SRC_URI[sha256sum] =3D &quot;<wbr>8dfda16c158ef5c134010d51d1a91d<wbr>=
02aa5d43b8cb711b1572650a7ffb56<wbr>b17f&quot;<br>
&gt; +<br>
&gt; +# This version doesn&#39;t support this option added in newer gnutls<=
br>
&gt; +# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure w=
as passed unrecognised options: --with-idn [unknown-configure-option]<br>
&gt; +PACKAGECONFIG[libidn] =3D &quot;&quot;<br>
&gt; +# but it has the dependency<br>
&gt; +DEPENDS +=3D &quot;libidn&quot;<br>
<br>
</div></div>That dependency was removed for gnutls 3.3.x by:<br>
<br>
=C2=A0 <a href=3D"http://git.openembedded.org/openembedded-core/commit/?id=
=3D6fd51f5c15a380eae630fe853ba0eccde7b9a369" rel=3D"noreferrer" target=3D"_=
blank">http://git.openembedded.org/<wbr>openembedded-core/commit/?id=3D<wbr=
>6fd51f5c15a380eae630fe853ba0ec<wbr>cde7b9a369</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; +# This version doesn&#39;t support this option added in newer gnutls<=
br>
&gt; +EXTRA_OECONF_remove =3D &quot;--without-libunistring-<wbr>prefix&quot=
;<br>
&gt; --<br>
&gt; 2.12.2<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
</font></span></blockquote></div><br></div>

--001a11477b6a816607054d9d0455--
