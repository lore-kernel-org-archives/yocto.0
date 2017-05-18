Return-Path: <abayiz@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BB65E00B28; Thu, 18 May 2017 05:06:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (abayiz[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.185.110 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic329-48.consmr.mail.ne1.yahoo.com
	(sonic329-48.consmr.mail.ne1.yahoo.com [66.163.185.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7284DE00AE4
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 05:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1495109194; bh=NjkoUbzWLUVDSQgaPOgPTD+X8f1UbeqhzszjLzn/DoE=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=YLLI+x589EYaBQol9c/NUGyZJfFlkbZkt7/rjoyoS4gbw96QeIZZTUB3Yvo6aP9EtQLtYDU48JMCu0ig4c/1fonTD/79bVz1DVoZdRw8K3nJxKbQwoUJsZwvVQ9CNLsVDtQhdFXP29E3PG/qTEOEPry5HgxdWY3aMhR242msWltZsL2m78yv8TJggvuMvsxf1Nl+5uBkuWjHrgXsyFlc8RfLnaEZKGN+T/XCbrf1868iJCD/7dkwfBg3AEyLeSIjuX1mUxB5gPnpPFtGLqUB7Yr8ofb0F0eGr3QvNsc4IR1tZKMCNrEoHh1lkseaxWdYuiubYzKvg89X1LWVTEbkfw==
X-YMail-OSG: TBfxjS0VM1mOxJKwM05LTdZ8ppRFuJ3IMUmRwjnHcPC8tb8JxiemcnN4swXlScb
	svENJYmhMoP_rFdi_R8pknPVWGJCXTW3_sYT188AfHDugFmo1iDQKHsbrU9xfCnA1f39RMtDdy5K
	C7ajsZxGjZa.VmGnouxVYV6qaHKQ7KdMmyW1H_qLZ32x_HwxkX7g8t4wEMz0muNFm.C31.ZXbtH0
	NNfsQDFNBV4wwSIQ_ouQLIZJ0aswwuKdC6nsESnrOW2WIyBiTs_JF_7lo88I3lPDYHJE_oF7oWaR
	4c.S0ZzhDNBz6.j60SA5Ev8_jfdxj54sytzw.ymeN4MZCYDjZsq7eSX9l0QZ6u4tjkGIGhrBX.vr
	bBa0cVaiR9u2qPyz5s.KMjKMODJ8VB93pDNLLxBUKNgOfirprKjvpAdP1qlfc_Pajc9TfyvkYsKC
	KKTCSjARcq9O0caU.2vVZ5pM_5MV8DurhueYlkFL5MusPFa0kPDn_SbvP4joTYIx0lwEfIXVVQs4
	SoQROenb7v6wnahtggWfgVaG2pg--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic329.consmr.mail.ne1.yahoo.com with HTTP;
	Thu, 18 May 2017 12:06:34 +0000
Date: Thu, 18 May 2017 12:02:34 +0000 (UTC)
From: Abayiz <abayiz@yahoo.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1879655844.551173.1495108954174@mail.yahoo.com>
In-Reply-To: <1495091834.12055.46.camel@collabora.co.uk>
References: <853904707.1405328.1495010277595.ref@mail.yahoo.com>
	<853904707.1405328.1495010277595@mail.yahoo.com>
	<1495091834.12055.46.camel@collabora.co.uk>
MIME-Version: 1.0
X-Mailer: WebService/1.1.9679 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0
Subject: Re: Install Torch7
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Abayiz <abayiz@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 May 2017 12:06:36 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_551172_2005045311.1495108954172"

------=_Part_551172_2005045311.1495108954172
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Fabien,=20

Thank you very much for your reply.=20
No, I didn't try 'devtool edit-recipe torch' to add dependencies. Actually =
I didn't know how to add them. Is there any way to directly call that .sh f=
ile there??Could you give me a minimal example to illustrate it?=20

Thank you.=20

=20

    On Thursday, May 18, 2017 10:17 AM, Fabien Lahoudere <fabien.lahoudere@=
collabora.co.uk> wrote:
=20

 On Wed, 2017-05-17 at 08:37 +0000, Abayiz wrote:
> Dear all,=C2=A0
>=20
> I'm quite new to Yocto, I've successfully built qemu and ran helloworld e=
xample on it. Now I'm
> trying to install Torch 7 (https://github.com/torch/torch7) library. What=
 I did is:=C2=A0
>=20
> devtool add torch https://github.com/torch/torch7.git
> devtool build torch
>=20
> But the build exits with error, in the attachment I share the log file wi=
th you.=C2=A0
> My host machine runs Ubuntu 16.04 LTS, and Torch7 is successfully running=
 on it. The installation
> of Torch first requires to run the 'bash install-deps' command on Ubuntu.=
 My rough estimation is
> that Yocto seems like cannot build those dependencies automatically.=C2=
=A0
>=20
> Could someone give any help on it? Installing Torch7 is very important to=
 my project now, thank
> you in advance.=C2=A0
>=20

Do you try "devtool edit-recipe torch" to add dependencies to the recipe an=
d configure "cache
variables" approprietly?

> Best,=C2=A0
> Abayiz
>=20
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  =20

------=_Part_551172_2005045311.1495108954172
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1495108662590_6748">Dear Fabien, <br></div><div id=3D"yu=
i_3_16_0_ym19_1_1495108662590_6749"><br></div><div id=3D"yui_3_16_0_ym19_1_=
1495108662590_6652">Thank you very much for your reply. <br></div><div id=
=3D"yui_3_16_0_ym19_1_1495108662590_6604">No, I didn't try 'devtool edit-re=
cipe torch' to add dependencies. Actually I didn't know how to add them. Is=
 there any way to directly call that .sh file there??</div><div id=3D"yui_3=
_16_0_ym19_1_1495108662590_6750">Could you give me a minimal example to ill=
ustrate it? <br></div><div id=3D"yui_3_16_0_ym19_1_1495108662590_6751"><br>=
</div><div>Thank you. <br></div><div id=3D"yui_3_16_0_ym19_1_1495108662590_=
6752"><br></div><div id=3D"yui_3_16_0_ym19_1_1495108662590_6603"><span></sp=
an></div> <div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yahoo_qu=
oted" style=3D"display: block;"> <div style=3D"font-family: =E6=A8=99=E6=A5=
=B7=E9=AB=94, dfkai-sb; font-size: 16px;"> <div style=3D"font-family: Helve=
ticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font=
-size: 16px;"> <div dir=3D"ltr"><font size=3D"2" face=3D"Arial"> On Thursda=
y, May 18, 2017 10:17 AM, Fabien Lahoudere &lt;fabien.lahoudere@collabora.c=
o.uk&gt; wrote:<br></font></div>  <br><br> <div class=3D"y_msg_container"><=
div dir=3D"ltr">On Wed, 2017-05-17 at 08:37 +0000, Abayiz wrote:<br clear=
=3D"none">&gt; Dear all,&nbsp;<br clear=3D"none">&gt; <br clear=3D"none">&g=
t; I'm quite new to Yocto, I've successfully built qemu and ran helloworld =
example on it. Now I'm<br clear=3D"none">&gt; trying to install Torch 7 (<a=
 shape=3D"rect" href=3D"https://github.com/torch/torch7" target=3D"_blank">=
https://github.com/torch/torch7</a>) library. What I did is:&nbsp;<br clear=
=3D"none">&gt; <br clear=3D"none">&gt; devtool add torch <a shape=3D"rect" =
href=3D"https://github.com/torch/torch7.git" target=3D"_blank">https://gith=
ub.com/torch/torch7.git</a><br clear=3D"none">&gt; devtool build torch<br c=
lear=3D"none">&gt; <br clear=3D"none">&gt; But the build exits with error, =
in the attachment I share the log file with you.&nbsp;<br clear=3D"none">&g=
t; My host machine runs Ubuntu 16.04 LTS, and Torch7 is successfully runnin=
g on it. The installation<br clear=3D"none">&gt; of Torch first requires to=
 run the 'bash install-deps' command on Ubuntu. My rough estimation is<br c=
lear=3D"none">&gt; that Yocto seems like cannot build those dependencies au=
tomatically.&nbsp;<br clear=3D"none">&gt; <br clear=3D"none">&gt; Could som=
eone give any help on it? Installing Torch7 is very important to my project=
 now, thank<br clear=3D"none">&gt; you in advance.&nbsp;<br clear=3D"none">=
&gt; <br clear=3D"none"><br clear=3D"none">Do you try "devtool edit-recipe =
torch" to add dependencies to the recipe and configure "cache<br clear=3D"n=
one">variables" approprietly?<div class=3D"yqt9876171593" id=3D"yqtfd17205"=
><br clear=3D"none"><br clear=3D"none">&gt; Best,&nbsp;<br clear=3D"none">&=
gt; Abayiz</div><br clear=3D"none">&gt; <br clear=3D"none">-- <br clear=3D"=
none">_______________________________________________<br clear=3D"none">yoc=
to mailing list<br clear=3D"none"><a shape=3D"rect" ymailto=3D"mailto:yocto=
@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a><br clear=3D"none"><a shape=3D"rect" href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/=
listinfo/yocto</a><div class=3D"yqt9876171593" id=3D"yqtfd46382"><br clear=
=3D"none"></div></div><br><br></div>  </div> </div>  </div></div></body></h=
tml>

------=_Part_551172_2005045311.1495108954172--
