Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26C84E00D45; Tue, 21 May 2019 03:22:25 -0700 (PDT)
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
	*      [209.85.221.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C6C5E00D32
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:22:24 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id w8so17953007wrl.6
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=i7OHcspVwjEg4AoUNEj8Ovv7xzTjdB0VaIwZMawg7NE=;
	b=WL4HmcwMXezG6/9cgZD5X00MYYPokqIpnfEKbU+uhnAK6nMs1lgte3oBbP2leXsN9f
	vEoWvbUNgxnywj+toDXgF3NUZLlPKEI5hKcEgsjNlTO1tnSJ65n38deaEJfVR8JYg96g
	3MEUTNfACiKw8hFLpNbROh2CkFZTmtxKJB5jwxrWSnmDuDtgE8u59eloIOnxHkGL82jS
	5hpKq/TYe62VaYo896O3Pm1dWU3pqTDqtDiqwu14KkmeL+PSOBkgW/giOpP1gMpLkW11
	naEEr0cejPCjG1gccmUc8RwmzgAQfRH2TnzdqAgISfxI8riTKWO14GgIxtWJiIywrJLm
	Jf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=i7OHcspVwjEg4AoUNEj8Ovv7xzTjdB0VaIwZMawg7NE=;
	b=AODhScMS/xxgz4H7vXK9r1KpEUA2aKSs1deMSpOL0YEKp/GZlaQK5TFmbPw55XY+15
	C1adtzNASqmhnH3eiIsrC6IN5sOxBTdBOJfSv/5OoLV6710SeJ9bjd8WcfNvGqbTUWxc
	/vcZtghgLmTbWBfmcv8H5rzTqaZsK5s1RXgJx/XmNrqeRDTunQTXirYq5faguk9e3W++
	QHf9d9AwyMeBdVhkyIAOy4PeBdYfPVoEth62ZrxXRRmCrDSMmkzNTZjK5v7mjd/pVGoz
	5rVD4AxwZMB7qD5/QsAtWi7X1LQGGDTd8jjTH+yXwuQzHF3zBwI2mZXG2HdQa7Scj+z1
	QWtQ==
X-Gm-Message-State: APjAAAUGt9+Zt7/8VzHyW1Qo59/EeRMxEjGkxtmX/lDRsSRaARWA2Vth
	kE8nZhMp8JdCFO7KtDK9sj7kvRcSK0K4ZSbmXlE=
X-Google-Smtp-Source: APXvYqzjLjVKlWK7ncH4C16px150eLf+kTpqFkOPEOkJknao+e228hXfeaFfYHloLHfmENfNYSd8Lmm6FmzmTfBIwgA=
X-Received: by 2002:adf:e649:: with SMTP id b9mr4014908wrn.195.1558434143576; 
	Tue, 21 May 2019 03:22:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
	<CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
	<CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
	<CANNYZj--jzkXeyqGiMms05wvD0yQvWt1uUmJD9xGe3=xrN7b5Q@mail.gmail.com>
In-Reply-To: <CANNYZj--jzkXeyqGiMms05wvD0yQvWt1uUmJD9xGe3=xrN7b5Q@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 21 May 2019 12:22:12 +0200
Message-ID: <CAAfyv37ZAPU-5HZP+LpXM6oeuoscnku_rOzCDFXNuoVC+zOFcQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 May 2019 10:22:25 -0000
Content-Type: multipart/alternative; boundary="00000000000088a6ce0589633967"

--00000000000088a6ce0589633967
Content-Type: text/plain; charset="UTF-8"

On Tue, May 21, 2019 at 12:14 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You can write a class which sets the template for SRC_URI and then a
> series of recipes that inherit the class, and define the variable that
> would turn the template into the actual URI.
>
OK I think it make sense. So parsing of config file will be done in class
and then class will be used in recipes to set correct SRU_URI.
Do you have any idea what is wrong with actual code I posted? Why it is
doing some strange things? Thanks.

>
> Alex
>
> On Tue, 21 May 2019 at 12:10, Belisko Marek <marek.belisko@gmail.com>
> wrote:
> >
> > Hi,
> >
> > On Tue, May 21, 2019 at 12:00 PM Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> If you provide some context for why you want this, we might be able to
> >> suggest a different way.
> >
> > Customer wants to have kind of base-os (build in yocto) and then on top
> of that different flavor python application which should be fetch and added
> during build based on configuration file. This is only need. Thanks.
> >>
> >>
> >> Alex
> >>
> >> On Tue, 21 May 2019 at 08:11, Belisko Marek <marek.belisko@gmail.com>
> wrote:
> >> >
> >> > Hi,
> >> >
> >> > I have special need to fetch repo which is defined in config file in
> form (repo and branch):
> >> > git@testrepo.com/myrepo mysuperbranch
> >> >
> >> > Config file is placed in recipe directory. I've tried to add some
> bits and pieces but it seems it's not doing right. Snippet from recipe:
> >> >
> >> > LICENSE = "CLOSED"
> >> >
> >> > SRCREV = "${AUTOREV}"
> >> > PV = "${SRCPV}"
> >> >
> >> > do_fetch_prepend () {
> >> >
> >> >     src_uri = d.getVar('SRC_URI')
> >> >
> >> >     p = d.getVar("FILE")
> >> >     idx = p.rfind("/")
> >> >     p = p[:idx]
> >> >     p += "/config.txt"
> >> >
> >> >     with open(p) as f:
> >> >         read_data = f.readline().strip().split(" ")
> >> >         d.setVar('SRC_URI', read_data[0])
> >> > }
> >> >
> >> > SRC_URI = ""
> >> >
> >> > S = "${WORKDIR}/git"
> >> >
> >> > It looks like that repo is fetched but unpack doesn't put git
> directory in $WORKDIR and in build directory I get strange directories like:
> >> >
> >> > !=
> >> > bitbake-cookerdaemon.log
> >> > cache
> >> > conf
> >> > ${@d.getVar('S')
> >> > else
> >> > if
> >> > os.path.join('
> >> > os.path.normpath(d.getVar('S'))
> >> > os.path.normpath(d.getVar('WORKDIR'))
> >> > 'patches')}
> >> > tmp
> >> >
> >> > so there is obviously I'm doing something wrong :). My question is if
> this is the way or should I stick to some variables set in local.conf and
> then use it in recipe? Thanks a lot for any pointers.
> >> >
> >> > BR,
> >> >
> >> > marek
> >> > --
> >> > as simple and primitive as possible
> >> > -------------------------------------------------
> >> > Marek Belisko - OPEN-NANDRA
> >> > Freelance Developer
> >> >
> >> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >> > Tel: +421 915 052 184
> >> > skype: marekwhite
> >> > twitter: #opennandra
> >> > web: http://open-nandra.com
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> > marek
>


marek

--00000000000088a6ce0589633967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, May 21, 2019 at 12:14 PM Alexande=
r Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.=
com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">You can write a class which sets the template=
 for SRC_URI and then a<br>
series of recipes that inherit the class, and define the variable that<br>
would turn the template into the actual URI.<br></blockquote><div>OK I thin=
k it make sense. So parsing of config file will be done in class and then c=
lass will be used in recipes to set correct SRU_URI.</div><div>Do you have =
any idea what is wrong with actual code I posted? Why it is doing some stra=
nge things? Thanks.</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Alex<br>
<br>
On Tue, 21 May 2019 at 12:10, Belisko Marek &lt;<a href=3D"mailto:marek.bel=
isko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; On Tue, May 21, 2019 at 12:00 PM Alexander Kanavin &lt;<a href=3D"mail=
to:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;=
 wrote:<br>
&gt;&gt;<br>
&gt;&gt; If you provide some context for why you want this, we might be abl=
e to<br>
&gt;&gt; suggest a different way.<br>
&gt;<br>
&gt; Customer wants to have kind of base-os (build in yocto) and then on to=
p of that different flavor python application which should be fetch and add=
ed during build based on configuration file. This is only need. Thanks.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Tue, 21 May 2019 at 08:11, Belisko Marek &lt;<a href=3D"mailto:=
marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have special need to fetch repo which is defined in config =
file in form (repo and branch):<br>
&gt;&gt; &gt; <a href=3D"http://git@testrepo.com/myrepo" rel=3D"noreferrer"=
 target=3D"_blank">git@testrepo.com/myrepo</a> mysuperbranch<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Config file is placed in recipe directory. I&#39;ve tried to =
add some bits and pieces but it seems it&#39;s not doing right. Snippet fro=
m recipe:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SRCREV =3D &quot;${AUTOREV}&quot;<br>
&gt;&gt; &gt; PV =3D &quot;${SRCPV}&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; do_fetch_prepend () {<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0src_uri =3D d.getVar(&#39;SRC_URI&#39;)<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0p =3D d.getVar(&quot;FILE&quot;)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0idx =3D p.rfind(&quot;/&quot;)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0p =3D p[:idx]<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0p +=3D &quot;/config.txt&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0with open(p) as f:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read_data =3D f.readline().s=
trip().split(&quot; &quot;)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.setVar(&#39;SRC_URI&#39;, =
read_data[0])<br>
&gt;&gt; &gt; }<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SRC_URI =3D &quot;&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; It looks like that repo is fetched but unpack doesn&#39;t put=
 git directory in $WORKDIR and in build directory I get strange directories=
 like:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; !=3D<br>
&gt;&gt; &gt; bitbake-cookerdaemon.log<br>
&gt;&gt; &gt; cache<br>
&gt;&gt; &gt; conf<br>
&gt;&gt; &gt; ${@d.getVar(&#39;S&#39;)<br>
&gt;&gt; &gt; else<br>
&gt;&gt; &gt; if<br>
&gt;&gt; &gt; os.path.join(&#39;<br>
&gt;&gt; &gt; os.path.normpath(d.getVar(&#39;S&#39;))<br>
&gt;&gt; &gt; os.path.normpath(d.getVar(&#39;WORKDIR&#39;))<br>
&gt;&gt; &gt; &#39;patches&#39;)}<br>
&gt;&gt; &gt; tmp<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; so there is obviously I&#39;m doing something wrong :). My qu=
estion is if this is the way or should I stick to some variables set in loc=
al.conf and then use it in recipe? Thanks a lot for any pointers.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; BR,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; marek<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; as simple and primitive as possible<br>
&gt;&gt; &gt; -------------------------------------------------<br>
&gt;&gt; &gt; Marek Belisko - OPEN-NANDRA<br>
&gt;&gt; &gt; Freelance Developer<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt;&gt; &gt; Tel: +421 915 052 184<br>
&gt;&gt; &gt; skype: marekwhite<br>
&gt;&gt; &gt; twitter: #opennandra<br>
&gt;&gt; &gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" ta=
rget=3D"_blank">http://open-nandra.com</a><br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; marek<br>
</blockquote></div><br clear=3D"all"><div><br></div>marek</div>

--00000000000088a6ce0589633967--
