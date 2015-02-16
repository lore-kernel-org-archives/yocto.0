Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B7D2E00769; Mon, 16 Feb 2015 08:50:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from nm10-vm3.bullet.mail.ne1.yahoo.com
	(nm10-vm3.bullet.mail.ne1.yahoo.com [98.138.91.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F1EFE00754
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 08:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1424105443; bh=zKERkYTs82i0MXvsMuwQT8YCXWCTxMhkNdC1t1UuoMg=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=K8dF1JMwLOZRfHOekVeKzviCbbJVhBXSz08D98EaQH6sYPYVyTg5299+6/VKRzpXZo3WDoG/Spg5MkLipOYtU1WVOvelVMNoizBKtWCtOqzK8xBNECVeFIr0mgKyoxYlquObHTF/UUQpOduxabhU+RCANKVC0xG1QfFq3O9fGHuV4ye11SM9uuKj4kOS9Dg52lPdf5SkrH6u5joC1WBj8jY1JBrfzkUxukWwJBfTH+S4LKIGzlZoK8QdVPE0TyMkCz5TqAD2d9WooXwoKaLUm6+Vhd1GizS0NwxYiNKFtmoQucSafmlNhG7UUm4oy70qNqgq4/0u9R/6VYjBoK52SA==
Received: from [98.138.100.115] by nm10.bullet.mail.ne1.yahoo.com with NNFMP;
	16 Feb 2015 16:50:43 -0000
Received: from [98.138.89.175] by tm106.bullet.mail.ne1.yahoo.com with NNFMP;
	16 Feb 2015 16:50:43 -0000
Received: from [127.0.0.1] by omp1031.mail.ne1.yahoo.com with NNFMP;
	16 Feb 2015 16:50:43 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 361656.41518.bm@omp1031.mail.ne1.yahoo.com
X-YMail-OSG: z6nvKOIVM1kaUOKrC78VLeecoE3XsfzpD.LzxgmklD130EXMSmTaaHislMzfqDd
	V91MwI07iWCnr0lki7HGmlN5qOo9Ps6udVi9DpajULWiPStgqr9XEiu.e95K_7uIs_RRv1yHOdPT
	Foexg.WR3ljkJEW6JJTwxCjniJ9kazYUvodAfXsZ8uev45w4j56XZBfz00UY.gWLCvNfIr2Q_IqH
	zste2cqKEUbLORI1663InuLybI6T4SZhwAuhdxtEMgW.Cdl9uw8EGKYzR8Obh1Y_HJPU.koOlFd8
	xQbh9nnK4UHJu.JlYruvaa8mlp4GWw.p4cRZLI1VEx4rAYrO7.1wh_TreQWrwORo6UqnJSVnxjk1
	2J_zhu51mgHMIc9CrNTunT7hyooqd53Jy0HxCIGDzx196LUFPuvoHk3gaBjn.Kr4hBvmQHpVl6yP
	PtBUtfueNaOPi0jntdxbf04RZ03ZD_Rvh16tAYJ0QvfZ7Vagaf4uB03X9QjKllqafBNJSxZx.beT
	bVTl3BIt5slPxxanBvg2WORbQeAFfrnm0OZu5CdDrUm9q.XazVRcNE70inBVPa.WtEUoiX_cCobc
	2yQCH67t_KitfJExXwP3rxGSdUSGzgDZk_iQ55PQGUq_Oop__3Ls3Y0TXsw6kzqD6HoBYv9c-
Received: by 98.138.105.227; Mon, 16 Feb 2015 16:50:42 +0000 
Date: Mon, 16 Feb 2015 16:50:42 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Message-ID: <1633225609.4396359.1424105442313.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <2922360.nUjqgNe86s@peggleto-mobl5.ger.corp.intel.com>
References: <2922360.nUjqgNe86s@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>,
	"lars@linbit.com" <lars@linbit.com>
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Feb 2015 16:50:53 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4396358_1135706818.1424105442305"

------=_Part_4396358_1135706818.1424105442305
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ok,
Thanks,I will try to do the change accordingly.I spotted a new mistake, thi=
s time in one of my patches and I will try to send them both tomorrow for r=
eview.
=20

     On Monday, February 16, 2015 6:31 PM, Paul Eggleton <paul.eggleton@lin=
ux.intel.com> wrote:
  =20

 On Monday 16 February 2015 09:18:29 Alexandru Vaduva wrote:
> After a quick inspection I observed the following:
>=20
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Insi=
de heartbeat-suse.spec the next information:
> License:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL v2 only; LGPL v2.1 or later Link =
here:
> http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-s=
us
> e.spec=20
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Insi=
de heartbeat-fedora.spec the next information:
> License:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GPLv2 and LGPLv2+=C2=A0=20
> Link here:
> http://hg.linux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-f=
ed
> ora.spec=20
> I added Lars Ellenberg one of the authors behind heartbeat or drbd to the
> discussion.
> Hello Lars, sorry for disturbing you but maybe you could help
> us with our little problem.=20
> If anyone from the Yocto Project community has any input on this matter
> please help.
> For me at least this problem is not clear. Should the =E2=80=9C|=E2=80=9D
> sign remain or should it be replaced with the =E2=80=9C&=E2=80=9D one bet=
ween the licenses.

What you have found above correlates with what Chris was saying - both=20
licenses apply, therefore you must use &.
=20
Cheers,
Paul
=20

> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Christopher Larson
> Sent: Sunday, February 15, 2015 4:01 PM
> To: Armin Kuster
> Cc: yocto
> Subject: Re: [yocto] [meta-cgl][PATCH] heartbeat: fix license issue
>=20
>=20
> On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster
> <akuster808@gmail.com<mailto:akuster808@gmail.com>> wrote:
> -LICENSE =3D "GPLv2 LGPLv2+"
> +LICENSE =3D "GPLv2 | LGPLv2+"
>=20
> Are you sure this is correct? Afaict this is wrong, as there are parts of
> the source tree under the GPL, and parts under LGPL, which means it's an
> AND relationship -- both apply, not an OR relationship, where you can
> choose which to use.

--=20

Paul Eggleton
Intel Open Source Technology Centre
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_4396358_1135706818.1424105442305
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1423754497247_413588">Ok,</div><div i=
d=3D"yui_3_16_0_1_1423754497247_413589"><br></div><div id=3D"yui_3_16_0_1_1=
423754497247_413590" dir=3D"ltr">Thanks,</div><div id=3D"yui_3_16_0_1_14237=
54497247_413591" dir=3D"ltr">I will try to do the change accordingly.</div>=
<div id=3D"yui_3_16_0_1_1423754497247_413592" dir=3D"ltr">I spotted a new m=
istake, this time in one of my patches and I will try to send them both tom=
orrow for review.<br></div><div id=3D"yui_3_16_0_1_1423754497247_413594"><s=
pan></span></div> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D"=
display: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: Helveti=
caNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-s=
ize: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helv=
etica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr=
"> <font size=3D"2" face=3D"Arial"> On Monday, February 16, 2015 6:31 PM, P=
aul Eggleton &lt;paul.eggleton@linux.intel.com&gt; wrote:<br> </font> </div=
>  <br><br> <div class=3D"y_msg_container">On Monday 16 February 2015 09:18=
:29 Alexandru Vaduva wrote:<br clear=3D"none">&gt; After a quick inspection=
 I observed the following:<br clear=3D"none">&gt; <br clear=3D"none">&gt;&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Inside=
 heartbeat-suse.spec the next information:<br clear=3D"none">&gt; License:&=
nbsp; &nbsp; &nbsp; &nbsp; GPL v2 only; LGPL v2.1 or later Link here:<br cl=
ear=3D"none">&gt; <a shape=3D"rect" href=3D"http://hg.linux-ha.org/heartbea=
t-STABLE_3_0/file/545554f6fc0a/heartbeat-sus" target=3D"_blank">http://hg.l=
inux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-sus</a><br cle=
ar=3D"none">&gt; e.spec <br clear=3D"none">&gt;&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Inside heartbeat-fedora.spec the=
 next information:<br clear=3D"none">&gt; License:&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; GPLv2 and LGPLv2+&nbsp; <br clear=3D"none">&gt; Link here:<br cle=
ar=3D"none">&gt; <a shape=3D"rect" href=3D"http://hg.linux-ha.org/heartbeat=
-STABLE_3_0/file/545554f6fc0a/heartbeat-fed" target=3D"_blank">http://hg.li=
nux-ha.org/heartbeat-STABLE_3_0/file/545554f6fc0a/heartbeat-fed</a><br clea=
r=3D"none">&gt; ora.spec <br clear=3D"none">&gt; I added Lars Ellenberg one=
 of the authors behind heartbeat or drbd to the<br clear=3D"none">&gt; disc=
ussion.<br clear=3D"none">&gt; Hello Lars, sorry for disturbing you but may=
be you could help<br clear=3D"none">&gt; us with our little problem. <br cl=
ear=3D"none">&gt; If anyone from the Yocto Project community has any input =
on this matter<br clear=3D"none">&gt; please help.<br clear=3D"none">&gt; F=
or me at least this problem is not clear. Should the =E2=80=9C|=E2=80=9D<br=
 clear=3D"none">&gt; sign remain or should it be replaced with the =E2=80=
=9C&amp;=E2=80=9D one between the licenses.<br clear=3D"none"><br clear=3D"=
none">What you have found above correlates with what Chris was saying - bot=
h <br clear=3D"none">licenses apply, therefore you must use &amp;.<br clear=
=3D"none"> <br clear=3D"none">Cheers,<br clear=3D"none">Paul<br clear=3D"no=
ne"> <br clear=3D"none"><br clear=3D"none">&gt; From: <a shape=3D"rect" yma=
ilto=3D"mailto:yocto-bounces@yoctoproject.org" href=3D"mailto:yocto-bounces=
@yoctoproject.org">yocto-bounces@yoctoproject.org</a> [mailto:<a shape=3D"r=
ect" ymailto=3D"mailto:yocto-bounces@yoctoproject.org" href=3D"mailto:yocto=
-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]<br clear=3D"=
none">&gt; On Behalf Of Christopher Larson<br clear=3D"none">&gt; Sent: Sun=
day, February 15, 2015 4:01 PM<br clear=3D"none">&gt; To: Armin Kuster<br c=
lear=3D"none">&gt; Cc: yocto<br clear=3D"none">&gt; Subject: Re: [yocto] [m=
eta-cgl][PATCH] heartbeat: fix license issue<br clear=3D"none">&gt; <br cle=
ar=3D"none">&gt; <br clear=3D"none">&gt; On Fri, Feb 13, 2015 at 10:00 PM, =
Armin Kuster<br clear=3D"none">&gt; &lt;<a shape=3D"rect" ymailto=3D"mailto=
:akuster808@gmail.com" href=3D"mailto:akuster808@gmail.com">akuster808@gmai=
l.com</a>&lt;mailto:<a shape=3D"rect" ymailto=3D"mailto:akuster808@gmail.co=
m" href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt;&gt; wr=
ote:<br clear=3D"none">&gt; -LICENSE =3D "GPLv2 LGPLv2+"<br clear=3D"none">=
&gt; +LICENSE =3D "GPLv2 | LGPLv2+"<br clear=3D"none">&gt; <br clear=3D"non=
e">&gt; Are you sure this is correct? Afaict this is wrong, as there are pa=
rts of<br clear=3D"none">&gt; the source tree under the GPL, and parts unde=
r LGPL, which means it's an<br clear=3D"none">&gt; AND relationship -- both=
 apply, not an OR relationship, where you can<br clear=3D"none">&gt; choose=
 which to use.<br clear=3D"none"><br clear=3D"none">-- <br clear=3D"none"><=
br clear=3D"none">Paul Eggleton<br clear=3D"none">Intel Open Source Technol=
ogy Centre<div class=3D"yqt3200053441" id=3D"yqtfd24054"><br clear=3D"none"=
>-- <br clear=3D"none">_______________________________________________<br c=
lear=3D"none">yocto mailing list<br clear=3D"none"><a shape=3D"rect" ymailt=
o=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">=
yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D"rect" href=3D"http=
s://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.=
yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></div><br><br></div> =
 </div> </div>  </div> </div></body></html>

------=_Part_4396358_1135706818.1424105442305--
