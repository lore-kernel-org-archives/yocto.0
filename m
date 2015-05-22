Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D758E009D9; Fri, 22 May 2015 04:44:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95E65E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 04:44:21 -0700 (PDT)
Received: by qgfa63 with SMTP id a63so6687065qgf.0
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 04:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6/iqwAHwP3GWvIvsjLCNjPnRim9xpuHertWrykdP4oo=;
	b=HRPecrOh5Ccw6WLqmIQF2jPQPtmCGiyO1FLOVpxERrv4CdVwiaks1RsTH4e9kLwchk
	cHE+BGuFhTOrcc1YiJwCW7jYEGT87dsRjQGqkVM/TnZr9/ZTmCRCazDo7RLf1OiXkmws
	Rsf3F/2yU+AbTHGw9OLGNaPKwsv2xthJ5H67b8eD12O3BxQBOJ8CybGzzNzdtnFXZPMO
	HXww1hWrTC2nSv79Fyj9bvPrvE64Wu0Hdlf7fJ8I29gRX0pGOABFGj4fgMpcu9BWN+MP
	hO1EhZIyXSkV0OANsjWxqBER5cbin9jslrpZ5vQUwCLY5AMv1GBaVE9/ewuW1yxpvs6x
	NVeA==
MIME-Version: 1.0
X-Received: by 10.55.15.135 with SMTP id 7mr16986181qkp.12.1432295060766; Fri,
	22 May 2015 04:44:20 -0700 (PDT)
Received: by 10.140.83.102 with HTTP; Fri, 22 May 2015 04:44:20 -0700 (PDT)
In-Reply-To: <20150522111758.GA2376@jama>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<2493502.gGu5ytCTqB@peggleto-mobl.ger.corp.intel.com>
	<20150522111758.GA2376@jama>
Date: Fri, 22 May 2015 13:44:20 +0200
Message-ID: <CACTu1Li_MZA+M3D+Y72ODut60+Uhz4Xvp3w_zFB3DcXfjg5Nug@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 11:44:23 -0000
Content-Type: multipart/alternative; boundary=001a113710704f86500516aa2e5a

--001a113710704f86500516aa2e5a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I set BBCLASSEXTEND =3D "native" active again. My php_5.5.24.bbappend looks
like this (just one line):

PACKAGECONFIG_append_class-native =3D " pgsql"

However, the error still persists, nothing changed:

---------------------------------
ERROR: Nothing PROVIDES 'postgresql-native' (but /recipes-devtools/php/
php_5.5.24.bb DEPENDS on or otherwise requires it). Close matches:
  postgresql
  strace-native
  popt-native
NOTE: Runtime target 'php' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['php', 'php-native',
'postgresql-native']
ERROR: Required build target 'myImage-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['myImage-image', 'php',
'php-native', 'postgresql-native']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
---------------------------------

When changing php_5.5.24.bbappend to

#PACKAGECONFIG_append_class-native =3D " pgsql"

everything compiles but of course the support for pgsql is missing. I found
this: https://www.yoctoproject.org/irc/%23yocto.2013-12-17.log.html But
this discussion is not helping me (search for postgresql-native)








2015-05-22 13:17 GMT+02:00 Martin Jansa <martin.jansa@gmail.com>:

> On Fri, May 22, 2015 at 09:51:31AM +0100, Paul Eggleton wrote:
> > On Thursday 21 May 2015 23:21:53 yocto yocto wrote:
> > > Good day,
> > >
> > >
> > > I am working with the intel Edison. Therefore I am using the
> > > meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look here:
> > > https://github.com/openembedded/meta-openembedded/branches/stale).
> Using
> > > another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=E2=
=80=9D is
> recommended
> > > for the intel Edison within the official intel documents.
> > >
> > >
> > > Nevertheless I added apache2_2.4.9.bb and postgresql_9.2.4.bb to my
> custom
> > > image. However, php5 support is missing. Therefore I downloaded the p=
hp
> > > recipe from the current master branch and put it in my custom layer:
> > >
> > >
> > >
> https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f4b=
af7
> > > 5e2427216b39c641a12/meta-oe/recipes-devtools/php/
> > >
> > >
> > > <
> https://github.com/openembedded/meta-openembedded/blob/b070899000162e7f4b=
af
> > > 75e2427216b39c641a12/meta-oe/recipes-devtools/php/>
> > >
> > > Furthermore I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with the =
following content
> in
> > > the same folder:
> > >
> > >
> > > PACKAGECONFIG_append +=3D "apache2"
> > >
> > > PACKAGECONFIG_append +=3D "pgsql"
> > >
> > >
> > > bitbake php results in the following errors:
> > >
> > >
> > > ERROR: Nothing PROVIDES 'uw-imap' [=E2=80=A6] but php/php_5.5.24.bb D=
EPENDS
> on or
> > > otherwise requires it)
> > >
> > > ERROR: Required build target 'php' has no buildable providers.
> > >
> > > Missing or unbuildable dependency chain was: ['php', 'uw-imap']
> > >
> > >
> > > So I removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D from ph=
p_5.5.24.bb.
> Result:
> > >
> > >
> > > ERROR: Nothing PROVIDES 'postgresql-native' [=E2=80=A6] but /php/php_=
5.5.24.bb
> > > DEPENDS on or otherwise requires it). Close matches:
> > >
> > >   postgresql
> > >
> > >   strace-native
> > >
> > >   popt-native
> > >
> > > ERROR: Required build target 'php' has no buildable providers.
> > >
> > > Missing or unbuildable dependency chain was: ['php', 'php-native',
> > > 'postgresql-native']
> > >
> > >
> > > Google does not show much for postgresql-native related to yocto.
> "bitbake
> > > postgresql" is running fine... If I remove BBCLASSEXTEND =3D "native"
> from
> > > the recipe I get the following result:
> > >
> > >
> > > ERROR: This autoconf log indicates errors, it looked at host include
> and/or
> > > library paths while determining system capabilities.
> > >
> > > Rerun configure task after fixing this. The path was
> > > "php/5.5.24-r0/php-5.5.24'
> > >
> > > ERROR: Function failed: do_qa_configure
> > >
> > > ERROR: Logfile of failure stored in:
> > > "php/5.5.24-r0/temp/log.do_configure.22410
> > >
> > > ERROR: Task 5 (php/php_5.5.24.bb, do_configure) failed with exit code
> '1'
> > >
> > >
> > >
> > >
> > > I appreciate any advice on how to set up php5 for postgresql.
> >
> > Change your PACKAGECONFIG_append lines in your bbappend to use
> > PACKAGECONFIG_append_class-native instead and you should be able to
> progress.
> > Also, you very likely shouldn't be removing the BBCLASSEXTEND.
>
> And add leading space in append instead of +=3D (_append + +=3D always lo=
oks
> wrong as the only function of +=3D is to add the leading space), change i=
t
> to:
>
> PACKAGECONFIG_append =3D " pgsql"
>
> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--001a113710704f86500516aa2e5a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I set BBCLASSEXTEND =3D &quot;native&quot; active again. M=
y php_5.5.24.bbappend looks like this (just one line):<br><div><div><div><b=
r>PACKAGECONFIG_append_class-native =3D &quot; pgsql&quot;<br><br></div>How=
ever, the error still persists, nothing changed:<br><br>-------------------=
--------------<br>ERROR: Nothing PROVIDES &#39;postgresql-native&#39; (but =
/recipes-devtools/php/<a href=3D"http://php_5.5.24.bb">php_5.5.24.bb</a> DE=
PENDS on or otherwise requires it). Close matches:<br>=C2=A0 postgresql<br>=
=C2=A0 strace-native<br>=C2=A0 popt-native<br>NOTE: Runtime target &#39;php=
&#39; is unbuildable, removing...<br>Missing or unbuildable dependency chai=
n was: [&#39;php&#39;, &#39;php-native&#39;, &#39;postgresql-native&#39;]<b=
r>ERROR: Required build target &#39;myImage-image&#39; has no buildable pro=
viders.<br>Missing or unbuildable dependency chain was: [&#39;myImage-image=
&#39;, &#39;php&#39;, &#39;php-native&#39;, &#39;postgresql-native&#39;]<br=
><br>Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>---------------------------------<br><br></div>When changing php_5=
.5.24.bbappend to<br><br>#PACKAGECONFIG_append_class-native =3D &quot; pgsq=
l&quot;<br><br></div>everything compiles but of course the support for pgsq=
l is missing. I found this: <a href=3D"https://www.yoctoproject.org/irc/%23=
yocto.2013-12-17.log.html">https://www.yoctoproject.org/irc/%23yocto.2013-1=
2-17.log.html</a> But this discussion is not helping me (search for postgre=
sql-native)<br><br><br><br><br><div><div><div><br><br><div><br></div></div>=
</div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>2015-05-22 13:17 GMT+02:00 Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cl=
ass=3D"h5">On Fri, May 22, 2015 at 09:51:31AM +0100, Paul Eggleton wrote:<b=
r>
&gt; On Thursday 21 May 2015 23:21:53 yocto yocto wrote:<br>
&gt; &gt; Good day,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I am working with the intel Edison. Therefore I am using the<br>
&gt; &gt; meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look her=
e:<br>
&gt; &gt; <a href=3D"https://github.com/openembedded/meta-openembedded/bran=
ches/stale" target=3D"_blank">https://github.com/openembedded/meta-openembe=
dded/branches/stale</a>). Using<br>
&gt; &gt; another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=
=E2=80=9D is recommended<br>
&gt; &gt; for the intel Edison within the official intel documents.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Nevertheless I added <a href=3D"http://apache2_2.4.9.bb" target=
=3D"_blank">apache2_2.4.9.bb</a> and <a href=3D"http://postgresql_9.2.4.bb"=
 target=3D"_blank">postgresql_9.2.4.bb</a> to my custom<br>
&gt; &gt; image. However, php5 support is missing. Therefore I downloaded t=
he php<br>
&gt; &gt; recipe from the current master branch and put it in my custom lay=
er:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://github.com/openembedded/meta-openembedded/blob=
/b070899000162e7f4baf7" target=3D"_blank">https://github.com/openembedded/m=
eta-openembedded/blob/b070899000162e7f4baf7</a><br>
&gt; &gt; 5e2427216b39c641a12/meta-oe/recipes-devtools/php/<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; &lt;<a href=3D"https://github.com/openembedded/meta-openembedded/=
blob/b070899000162e7f4baf" target=3D"_blank">https://github.com/openembedde=
d/meta-openembedded/blob/b070899000162e7f4baf</a><br>
&gt; &gt; 75e2427216b39c641a12/meta-oe/recipes-devtools/php/&gt;<br>
&gt; &gt;<br>
&gt; &gt; Furthermore I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with =
the following content in<br>
&gt; &gt; the same folder:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; PACKAGECONFIG_append +=3D &quot;apache2&quot;<br>
&gt; &gt;<br>
&gt; &gt; PACKAGECONFIG_append +=3D &quot;pgsql&quot;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; bitbake php results in the following errors:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Nothing PROVIDES &#39;uw-imap&#39; [=E2=80=A6] but php/<a =
href=3D"http://php_5.5.24.bb" target=3D"_blank">php_5.5.24.bb</a> DEPENDS o=
n or<br>
&gt; &gt; otherwise requires it)<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Required build target &#39;php&#39; has no buildable provi=
ders.<br>
&gt; &gt;<br>
&gt; &gt; Missing or unbuildable dependency chain was: [&#39;php&#39;, &#39=
;uw-imap&#39;]<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; So I removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D fro=
m <a href=3D"http://php_5.5.24.bb" target=3D"_blank">php_5.5.24.bb</a>.=C2=
=A0 Result:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Nothing PROVIDES &#39;postgresql-native&#39; [=E2=80=A6] b=
ut /php/<a href=3D"http://php_5.5.24.bb" target=3D"_blank">php_5.5.24.bb</a=
><br>
&gt; &gt; DEPENDS on or otherwise requires it). Close matches:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0postgresql<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0strace-native<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0popt-native<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Required build target &#39;php&#39; has no buildable provi=
ders.<br>
&gt; &gt;<br>
&gt; &gt; Missing or unbuildable dependency chain was: [&#39;php&#39;, &#39=
;php-native&#39;,<br>
&gt; &gt; &#39;postgresql-native&#39;]<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Google does not show much for postgresql-native related to yocto.=
 &quot;bitbake<br>
&gt; &gt; postgresql&quot; is running fine... If I remove BBCLASSEXTEND =3D=
 &quot;native&quot; from<br>
&gt; &gt; the recipe I get the following result:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; ERROR: This autoconf log indicates errors, it looked at host incl=
ude and/or<br>
&gt; &gt; library paths while determining system capabilities.<br>
&gt; &gt;<br>
&gt; &gt; Rerun configure task after fixing this. The path was<br>
&gt; &gt; &quot;php/5.5.24-r0/php-5.5.24&#39;<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Function failed: do_qa_configure<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Logfile of failure stored in:<br>
&gt; &gt; &quot;php/5.5.24-r0/temp/log.do_configure.22410<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Task 5 (php/<a href=3D"http://php_5.5.24.bb" target=3D"_bl=
ank">php_5.5.24.bb</a>, do_configure) failed with exit code &#39;1&#39;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I appreciate any advice on how to set up php5 for postgresql.<br>
&gt;<br>
&gt; Change your PACKAGECONFIG_append lines in your bbappend to use<br>
&gt; PACKAGECONFIG_append_class-native instead and you should be able to pr=
ogress.<br>
&gt; Also, you very likely shouldn&#39;t be removing the BBCLASSEXTEND.<br>
<br>
</div></div>And add leading space in append instead of +=3D (_append + +=3D=
 always looks<br>
wrong as the only function of +=3D is to add the leading space), change it<=
br>
to:<br>
<br>
PACKAGECONFIG_append =3D &quot; pgsql&quot;<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br></div>

--001a113710704f86500516aa2e5a--
