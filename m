Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 663C9E00D3D; Tue, 21 May 2019 03:10:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB7AAE00C46
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:10:20 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id s17so17913534wru.3
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MrL4DTDbJTbG8GZxP+LbOwy6Bop25Axu0sC5T9RkkOI=;
	b=lxmIzN2GrMkJyj7lXXA9KHhk9kF+xPM2ImVj5D2mes4Z43g34PB9ys/UHKLnkMYqXa
	5TFgwHQ84SBSBtyVJsMUk6UaLn/IsYyFsEURvL2SkLSxcppOSlH2E6DjfXef0cusEpzZ
	0SBDRTEfWHGD5quhw5vt1poa9g7wl2CSCDh1torlkTOb11kcJadA7MipU57uaTyQLYr3
	rcSlufueI6Tas/hvYfnJlEIZkmX41HVHnl2boFiDchgbKRt/g2tsNThUBIo6VFjEYcND
	vJONqAS8O6Es7pWCI59+I7bQ9UZv0mDwrnHthAT3OVMbUve2ZVucScsxYa72CnWF+6Tp
	tqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MrL4DTDbJTbG8GZxP+LbOwy6Bop25Axu0sC5T9RkkOI=;
	b=ASsP3D1S3RV0vn2nYgPhFhd7NQZ8DgHplXvfW+F5ByQkcWF0S6JL39kgFGNHH/U+Dl
	xdSAImjxfwDH8rZ0Lh71b0p3WMn/Xu0NC4lWeiYajxbOel8o89Ym20KU8zIZUDnChi56
	lypx0BPg6VuiqUemhm61k7H4vKomNzqICYAcqmWCmMIBFinX8f3c3/cpb0dlhktdAzB1
	IhRjx6X3nTqlbtEX9hl7g7/o3A1NGCVSaPJU9/q6rVaapEumApqtfoyZp1ioTCqyf+FN
	6bahodiIVOKk82oR39lsN40RzpBraPXGoyuH5tN5MHn/11TbLOR/ChpPv8+h3UfFV/tv
	9jvA==
X-Gm-Message-State: APjAAAVVMMHmHeaVL5TH74/BxYLpcmKyx+wPpWHv0YiBvmnisX0TyFT0
	JFDa3/69ORIVHQsRApZuIYhBnIk4FUKRV8hEFOo=
X-Google-Smtp-Source: APXvYqwyQqNpTyi9XBMjlp568JEcL0hRFFlRr1TBQ+nof4epSBZ1ww+lX56+NPk/W2R5zp7GHkvNhyesaLlanmcKGIE=
X-Received: by 2002:a5d:4946:: with SMTP id r6mr36644788wrs.310.1558433418824; 
	Tue, 21 May 2019 03:10:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
	<CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
In-Reply-To: <CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 21 May 2019 12:10:07 +0200
Message-ID: <CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: setting SRC_URI runtime - possible options
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
X-List-Received-Date: Tue, 21 May 2019 10:10:21 -0000
Content-Type: multipart/alternative; boundary="00000000000055d0f30589630ee2"

--00000000000055d0f30589630ee2
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, May 21, 2019 at 12:00 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> If you provide some context for why you want this, we might be able to
> suggest a different way.
>
Customer wants to have kind of base-os (build in yocto) and then on top of
that different flavor python application which should be fetch and added
during build based on configuration file. This is only need. Thanks.

>
> Alex
>
> On Tue, 21 May 2019 at 08:11, Belisko Marek <marek.belisko@gmail.com>
> wrote:
> >
> > Hi,
> >
> > I have special need to fetch repo which is defined in config file in
> form (repo and branch):
> > git@testrepo.com/myrepo mysuperbranch
> >
> > Config file is placed in recipe directory. I've tried to add some bits
> and pieces but it seems it's not doing right. Snippet from recipe:
> >
> > LICENSE = "CLOSED"
> >
> > SRCREV = "${AUTOREV}"
> > PV = "${SRCPV}"
> >
> > do_fetch_prepend () {
> >
> >     src_uri = d.getVar('SRC_URI')
> >
> >     p = d.getVar("FILE")
> >     idx = p.rfind("/")
> >     p = p[:idx]
> >     p += "/config.txt"
> >
> >     with open(p) as f:
> >         read_data = f.readline().strip().split(" ")
> >         d.setVar('SRC_URI', read_data[0])
> > }
> >
> > SRC_URI = ""
> >
> > S = "${WORKDIR}/git"
> >
> > It looks like that repo is fetched but unpack doesn't put git directory
> in $WORKDIR and in build directory I get strange directories like:
> >
> > !=
> > bitbake-cookerdaemon.log
> > cache
> > conf
> > ${@d.getVar('S')
> > else
> > if
> > os.path.join('
> > os.path.normpath(d.getVar('S'))
> > os.path.normpath(d.getVar('WORKDIR'))
> > 'patches')}
> > tmp
> >
> > so there is obviously I'm doing something wrong :). My question is if
> this is the way or should I stick to some variables set in local.conf and
> then use it in recipe? Thanks a lot for any pointers.
> >
> > BR,
> >
> > marek
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>


marek

--00000000000055d0f30589630ee2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, May 21, 2019 at 12:00 PM Alexander Kanavin=
 &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">If you=
 provide some context for why you want this, we might be able to<br>
suggest a different way.<br></blockquote><div>Customer wants to have kind o=
f base-os (build in yocto) and then on top of that different flavor python =
application which should be fetch and added during build based on configura=
tion file. This is only need. Thanks.</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
<br>
Alex<br>
<br>
On Tue, 21 May 2019 at 08:11, Belisko Marek &lt;<a href=3D"mailto:marek.bel=
isko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have special need to fetch repo which is defined in config file in f=
orm (repo and branch):<br>
&gt; <a href=3D"http://git@testrepo.com/myrepo" rel=3D"noreferrer" target=
=3D"_blank">git@testrepo.com/myrepo</a> mysuperbranch<br>
&gt;<br>
&gt; Config file is placed in recipe directory. I&#39;ve tried to add some =
bits and pieces but it seems it&#39;s not doing right. Snippet from recipe:=
<br>
&gt;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt;<br>
&gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt; PV =3D &quot;${SRCPV}&quot;<br>
&gt;<br>
&gt; do_fetch_prepend () {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0src_uri =3D d.getVar(&#39;SRC_URI&#39;)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0p =3D d.getVar(&quot;FILE&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0idx =3D p.rfind(&quot;/&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0p =3D p[:idx]<br>
&gt;=C2=A0 =C2=A0 =C2=A0p +=3D &quot;/config.txt&quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0with open(p) as f:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read_data =3D f.readline().strip().sp=
lit(&quot; &quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.setVar(&#39;SRC_URI&#39;, read_data=
[0])<br>
&gt; }<br>
&gt;<br>
&gt; SRC_URI =3D &quot;&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; It looks like that repo is fetched but unpack doesn&#39;t put git dire=
ctory in $WORKDIR and in build directory I get strange directories like:<br=
>
&gt;<br>
&gt; !=3D<br>
&gt; bitbake-cookerdaemon.log<br>
&gt; cache<br>
&gt; conf<br>
&gt; ${@d.getVar(&#39;S&#39;)<br>
&gt; else<br>
&gt; if<br>
&gt; os.path.join(&#39;<br>
&gt; os.path.normpath(d.getVar(&#39;S&#39;))<br>
&gt; os.path.normpath(d.getVar(&#39;WORKDIR&#39;))<br>
&gt; &#39;patches&#39;)}<br>
&gt; tmp<br>
&gt;<br>
&gt; so there is obviously I&#39;m doing something wrong :). My question is=
 if this is the way or should I stick to some variables set in local.conf a=
nd then use it in recipe? Thanks a lot for any pointers.<br>
&gt;<br>
&gt; BR,<br>
&gt;<br>
&gt; marek<br>
&gt; --<br>
&gt; as simple and primitive as possible<br>
&gt; -------------------------------------------------<br>
&gt; Marek Belisko - OPEN-NANDRA<br>
&gt; Freelance Developer<br>
&gt;<br>
&gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt; Tel: +421 915 052 184<br>
&gt; skype: marekwhite<br>
&gt; twitter: #opennandra<br>
&gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_=
blank">http://open-nandra.com</a><br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div><br clear=3D"all"><div><br></div><div dir=3D"ltr" class=
=3D"gmail_signature">marek</div></div>

--00000000000055d0f30589630ee2--
