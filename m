Return-Path: <alain.achkar@triacta.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A727E00CCC; Mon, 14 Nov 2016 08:14:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 309F2E00CCB
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 08:14:34 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id f82so107535753wmf.1
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 08:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triacta.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gY6xWp0/85kngvC7i+Q/FZlymf8Efs1tDcEmf+QonQg=;
	b=NOvlO6jxwOWTLD8hvsSia+FB8MJMTSLBEuHdSDZ8AvKGzPDS3lOaVxTHJrKCL85LR3
	ZR/f0g2/mdN5EXA6SVQKu+04h/zZaZD8EF6JWFrMBLSTzCYY4SjiG4MLobpfv4BNW2MU
	PTYZa20LQUjBoV6mpDF2Xtk+edHCLqI+4EX58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gY6xWp0/85kngvC7i+Q/FZlymf8Efs1tDcEmf+QonQg=;
	b=O4vF8OpSFwEpAA/a6mMVoCfwYK9Gpaej0Ca/95CJgrEBKB+0ENixiJLuMXtS+nqJIn
	qTMRtva5j1fyv8FrrrJAjX5AZlwN89TlW3r89V6wK2igNtYG1aUk1/FKmzZgiAllTk5q
	dsGTw31rO5Y0P7YCVOZn8XGd/5m107T9eXja4I9Q/QWPKGA+YW3ZwD7Fwa/lk3tPJOlL
	9Y6BW3uOyWd1Yo41xoyQ2xUGp2Oefa0nZvVExkJWFxXtIEwhUBc0W/aNV48hmszyeF5n
	P0FsW0gvfqgWC4nnp1DJiCfRP4ZD48kcgptdlavWGvyzHeflkddxhxJH7iv8SmiJ6l23
	sAYQ==
X-Gm-Message-State: ABUngvcEUXLJwr8YDIsRHQpaSE3mVVS6GUDDrQlG/P73Sns7w7xQB8qKvJVtFIeHsNKkIPbSrsUrUECx4tPttyMT
X-Received: by 10.28.128.198 with SMTP id b189mr10870662wmd.105.1479140073762; 
	Mon, 14 Nov 2016 08:14:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.61.10 with HTTP; Mon, 14 Nov 2016 08:13:53 -0800 (PST)
In-Reply-To: <CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
From: Alain Achkar <alain.achkar@triacta.com>
Date: Mon, 14 Nov 2016 11:13:53 -0500
Message-ID: <CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
To: Bill Randle <bill.randle@gmail.com>
X-Mailman-Approved-At: Mon, 14 Nov 2016 08:26:32 -0800
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org
Subject: Re: Buildbot / Autobuilder / custom?
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
X-List-Received-Date: Mon, 14 Nov 2016 16:14:39 -0000
Content-Type: multipart/alternative; boundary=001a1141e668ab878005414522e1

--001a1141e668ab878005414522e1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your answers! From reading these links, it is still not clear to
me if this might be overkill for my requirements. AB Cluster Setup talks
about "*the worker requires 2+ TB to hold all the build temp files and git
repos. If build artifacts and a local sstate mirror are included,
additional worker space is required.*"

Currently, my build only takes 35GB, so I think what these links are
talking about is how to replicate what the Autobuilder project
https://autobuilder.yoctoproject.org/ already does.

To clarify, I am not interested in running builds and tests for everything
that Yocto already builds and tests (i.e. all the processor architectures,
all the machine types, etc.).  I am interested in running one build for one
machine type (the Variscite DART-6UL i.MX6UL arm-based processor, for which
NXP/Freescale and Variscite have provided recipes and layers for).

I know that autobuilder includes BuildBot (this is why I specified it in
parentheses) but my question remains: do I only install BuildBot and try to
build my machine type with it, or do I install Autobuilder?

On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <bill.randle@gmail.com> wrote=
:

> Also, be sure to check the Yocto Project wiki pages:
>     https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder
> in particular, the AB cluster setup and AB maintenance links. Even
> though the one link refers to setting up an entire cluster, I've used
> that procedure to setup a single autobuilder, as well.
>
>     -Bill
>
> On Fri, Nov 11, 2016 at 10:37 AM, Beth 'pidge' Flanagan
> <pidge@toganlabs.com> wrote:
> > On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:
> >> Hello Joshua!
> >>
> >> We are using Yocto to build for the Variscite DART-6UL SoM which is
> >> based on Freescale/NXP i.MX6UL (http://variwiki.com/index.php?title=3D=
D
> >> ART-6UL_Yocto_Jethro_R1_build).
> >>
> >> Currently, developers run builds manually on their desktops. We are
> >> considering using a continuous integration server. I found out that
> >> The Yocto Project uses Autobuilder which in turn uses BuildBot. I
> >> read most of the introductory documentation.
> >>
> >> Would you recommend that we install only BuildBot and configure it to
> >> build what we need?
> >>
> >> OR
> >>
> >> Would you recommend that we install Autobuilder (and BuildBot) and
> >> configure it to build what we need?
> >
> > Actually, the yocto-autobuilder already contains buildbot so no need
> > for both.
> >
> > If you read:
> >
> > http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree/README-QUIC
> > KSTART
> >
> > and probably some of the other READMEs and the documentation in the
> > docs directory of the yocto-autobuilder directory, it should get you
> > started in the right direction.
> >
> > Feel free to ask questions if you need help.
> >
> > -b
> >
> > Elizabeth 'pidge' Flanagan
> > Founder/CTO Tog=C3=A1n Labs
> > www.toganlabs.com
> >
> >>
> >> What is the faster path to get up and running?
> >>
> >> Thanks!
> >> Alain.
> >>
> >> --
> >> Alain Achkar, M.Eng. | Software Engineer
> >> Triacta Power Solutions
> >> (O) 613.256.2868 (C) 613.406.6520
> >> www.triacta.com
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>



--=20

Alain Achkar, M.Eng. | Software Engineer

*Triacta Power Solutions*

(O) 613.256.2868 (C) 613.406.6520

*www.triacta.com  <http://www.triacta.com/>*

--001a1141e668ab878005414522e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your answers! From reading these links, it is s=
till not clear to me if this might be overkill for my requirements. AB Clus=
ter Setup talks about &quot;<span style=3D"color:rgb(0,0,0);font-family:san=
s-serif;font-size:12.7px"><i>the worker requires 2+ TB to hold all the buil=
d temp files and git repos. If build artifacts and a local sstate mirror ar=
e included, additional worker space is required.</i>&quot;</span><div><span=
 style=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:12.7px"><br></s=
pan></div><div><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-=
size:12.7px">Currently, my build only takes 35GB, so I think what these lin=
ks are talking about is how to replicate what the Autobuilder project=C2=A0=
</span><font color=3D"#000000" face=3D"sans-serif"><span style=3D"font-size=
:12.7px"><a href=3D"https://autobuilder.yoctoproject.org/">https://autobuil=
der.yoctoproject.org/</a> already does.</span></font></div><div><span style=
=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:12.7px"><br></span></=
div><div><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-size:1=
2.7px">To clarify, I am not interested in running builds and tests for ever=
ything that Yocto already builds and tests (i.e. all the processor architec=
tures, all the machine types, etc.).=C2=A0 I am interested in running one b=
uild for one machine type (the Variscite DART-6UL i.MX6UL arm-based process=
or, for which NXP/Freescale and Variscite have provided recipes and layers =
for).</span></div><div><span style=3D"color:rgb(0,0,0);font-family:sans-ser=
if;font-size:12.7px"><br></span></div><div><span style=3D"color:rgb(0,0,0);=
font-family:sans-serif;font-size:12.7px">I know that autobuilder includes B=
uildBot (this is why I specified it in parentheses) but my question remains=
: do I only install BuildBot and try to build my machine type with it, or d=
o I install Autobuilder?</span></div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Mon, Nov 14, 2016 at 10:10 AM, Bill Randle <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:bill.randle@gmail.com" target=3D"_blan=
k">bill.randle@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Also, be sure to check the Yocto Project wiki pages:<br>
=C2=A0 =C2=A0 <a href=3D"https://wiki.yoctoproject.org/wiki/The_Yocto_Autob=
uilder" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/=
<wbr>wiki/The_Yocto_Autobuilder</a><br>
in particular, the AB cluster setup and AB maintenance links. Even<br>
though the one link refers to setting up an entire cluster, I&#39;ve used<b=
r>
that procedure to setup a single autobuilder, as well.<br>
<br>
=C2=A0 =C2=A0 -Bill<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Fri, Nov 11, 2016 at 10:37 AM, Beth &#39;pidge&#39; Flanagan<br>
&lt;<a href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</a>&gt; wrot=
e:<br>
&gt; On Fri, 2016-11-11 at 12:35 -0500, Alain Achkar wrote:<br>
&gt;&gt; Hello Joshua!<br>
&gt;&gt;<br>
&gt;&gt; We are using Yocto to build for the Variscite DART-6UL SoM which i=
s<br>
&gt;&gt; based on Freescale/NXP i.MX6UL (<a href=3D"http://variwiki.com/ind=
ex.php?title=3DD" rel=3D"noreferrer" target=3D"_blank">http://variwiki.com/=
index.<wbr>php?title=3DD</a><br>
&gt;&gt; ART-6UL_Yocto_Jethro_R1_build)<wbr>.<br>
&gt;&gt;<br>
&gt;&gt; Currently, developers run builds manually on their desktops. We ar=
e<br>
&gt;&gt; considering using a continuous integration server. I found out tha=
t<br>
&gt;&gt; The Yocto Project uses Autobuilder which in turn uses BuildBot. I<=
br>
&gt;&gt; read most of the introductory documentation.<br>
&gt;&gt;<br>
&gt;&gt; Would you recommend that we install only BuildBot and configure it=
 to<br>
&gt;&gt; build what we need?<br>
&gt;&gt;<br>
&gt;&gt; OR<br>
&gt;&gt;<br>
&gt;&gt; Would you recommend that we install Autobuilder (and BuildBot) and=
<br>
&gt;&gt; configure it to build what we need?<br>
&gt;<br>
&gt; Actually, the yocto-autobuilder already contains buildbot so no need<b=
r>
&gt; for both.<br>
&gt;<br>
&gt; If you read:<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder/tree=
/README-QUIC" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.=
org/<wbr>cgit.cgi/yocto-autobuilder/<wbr>tree/README-QUIC</a><br>
&gt; KSTART<br>
&gt;<br>
&gt; and probably some of the other READMEs and the documentation in the<br=
>
&gt; docs directory of the yocto-autobuilder directory, it should get you<b=
r>
&gt; started in the right direction.<br>
&gt;<br>
&gt; Feel free to ask questions if you need help.<br>
&gt;<br>
&gt; -b<br>
&gt;<br>
&gt; Elizabeth &#39;pidge&#39; Flanagan<br>
&gt; Founder/CTO Tog=C3=A1n Labs<br>
&gt; <a href=3D"http://www.toganlabs.com" rel=3D"noreferrer" target=3D"_bla=
nk">www.toganlabs.com</a><br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; What is the faster path to get up and running?<br>
&gt;&gt;<br>
&gt;&gt; Thanks!<br>
&gt;&gt; Alain.<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Alain Achkar, M.Eng. | Software Engineer<br>
&gt;&gt; Triacta Power Solutions<br>
&gt;&gt; (O) <a href=3D"tel:613.256.2868" value=3D"+16132562868">613.256.28=
68</a> (C) <a href=3D"tel:613.406.6520" value=3D"+16134066520">613.406.6520=
</a><br>
&gt;&gt; <a href=3D"http://www.triacta.com" rel=3D"noreferrer" target=3D"_b=
lank">www.triacta.com</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr"><p style=3D"color:rgb(136,136,136);font-size:12.8px"><span style=
=3D"color:black;font-family:Helvetica,sans-serif;font-size:8.5pt">Alain Ach=
kar, M.Eng. | Software Engineer</span><br></p><p style=3D"color:rgb(136,136=
,136);font-size:12.8px"><b><span style=3D"font-size:8.5pt;font-family:Helve=
tica,sans-serif;color:black">Triacta Power Solutions</span></b><span style=
=3D"color:black"></span></p><p style=3D"color:rgb(136,136,136);font-size:12=
.8px"><span style=3D"font-size:8.5pt;font-family:Helvetica,sans-serif;color=
:black">(O)=C2=A0<a href=3D"tel:613.256.2868" value=3D"+16132562868" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">613.256.2868</a>=C2=A0(C)=C2=A0=
<a href=3D"tel:613.406.6520" value=3D"+16138782570" style=3D"color:rgb(17,8=
5,204)" target=3D"_blank">613.406.6520</a></span></p><p style=3D"color:rgb(=
136,136,136);font-size:12.8px"></p><p style=3D"color:rgb(136,136,136);font-=
size:12.8px"><u><span style=3D"font-size:8.5pt;font-family:Helvetica,sans-s=
erif;color:rgb(71,135,255)"><a href=3D"http://www.triacta.com/" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">www.triacta.com=C2=A0</a></span></u><=
span style=3D"color:rgb(31,73,125)">=C2=A0</span></p></div></div>
</div>

--001a1141e668ab878005414522e1--
