Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DB17E00CAE; Thu, 24 Nov 2016 02:43:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.82.96.229 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm18-vm5.bullet.mail.ir2.yahoo.com
	(nm18-vm5.bullet.mail.ir2.yahoo.com [212.82.96.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1F57E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1479984191; bh=/93cV16YxVwTWB+hKHgNUBI33gW0Q0v4xqh1xxYYkvk=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=eQAZn/F20Jjf0UwwAmsqnuQGkCnNIsEOJDQgbQfB4rQR9367Gyzgxti3BWEzYlyuBcU465K064Biy2/C4r8axF1QyfcBFBxo6akyv9/5PtIyRcoW2LpLarvOCILka8u8loOnQzJek35I5CbIOphxL48RvxlvKbsFOLQHIdRXFjAt5NpycuHuySwvJK+kfwVBxS0Ed01i2MspCoz2+YxWuppEih3GhCX60cipudKI9FQ2JVlyKOuYJY+8U4Err+XE0HCAZANoghoVb+MYkBKse6+DF2Kulvghke9AUbiVIK6R9lWbZX//z4DhqzzI1Bx4JmdLW7CzRU9Uek3vC/YI2Q==
Received: from [212.82.98.55] by nm18.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Nov 2016 10:43:11 -0000
Received: from [212.82.98.92] by tm8.bullet.mail.ir2.yahoo.com with NNFMP;
	24 Nov 2016 10:43:11 -0000
Received: from [127.0.0.1] by omp1029.mail.ir2.yahoo.com with NNFMP;
	24 Nov 2016 10:43:11 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 426169.54651.bm@omp1029.mail.ir2.yahoo.com
X-YMail-OSG: sSWbqx0VM1laF6iRwGXNl90Rm6N6aCY_6R.URWt9ZuhZojRgj_zDrK1i0KclYzh
	0ZvStTCGOJpJRVUFK52Ey6FcsLfAul.BJkzip966zmq9N04wSUj0BrDnlSEMofvhWyJucgbJrv92
	SIo_yjgFtTUxfERbPsnMFX0freljExokR5eeeL24RrNJ6c94zqz9u_kEhstLEnNnRt6eSeEcPIZM
	qvWb4ynGSWj6t61kqa90II7y_.dF51QcJWu75geOPZblAJkJJBq.U5SQ8ndsXnHnCBNO5XYzFE3Q
	h_J1JWyYbbNbZ40zSRPDIP_YRkAGeH2VTHruDaVzUoMzDMd0.YpwI7B1WaZ9fOKNMZg9Kbqs6reK
	P5w0x3gdyTLA2xImRtMovTMfPP6JGlMp8sNkJTE0VXvsVHGpwRxU_xIIHWxGNzGyD_c9XW.5ii.g
	7n4wgj_fRGPWn4NFAJKwcZkcCbm48hb1FjnAW7ZzJbKFyKudc76fsXtusquoIcwQQejQuCNrTmKl
	7sUaOOc0cAaSr8jg-
Received: from jws700080.mail.ir2.yahoo.com by
	sendmailws105.mail.ir2.yahoo.com;
	Thu, 24 Nov 2016 10:43:11 +0000; 1479984191.047
Date: Thu, 24 Nov 2016 10:43:10 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <823264942.1789329.1479984190440@mail.yahoo.com>
In-Reply-To: <CAJTo0LbHi-79qj7B9PoOt0jyLaxeHU6aUTwwaiOsiXbi1Ra4xw@mail.gmail.com>
References: <1587381958.322993.1479895234059.ref@mail.yahoo.com>
	<1587381958.322993.1479895234059@mail.yahoo.com>
	<CAJTo0LbHi-79qj7B9PoOt0jyLaxeHU6aUTwwaiOsiXbi1Ra4xw@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Use recipes but not whole layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Nov 2016 10:43:18 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1789327_175944728.1479984190438"

------=_Part_1789327_175944728.1479984190438
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> As per the Yocto Project guidelines, layers that do this are broken.=C2=
=A0 A BSP layer should only introduce changes that affect the BSP, distro l=
ayers shouldn't contain general purpose recipes, and everything that is dis=
tro-specific should be isolated using overrides.
I was talking more generically for any type of layer. I have the feeling th=
at many layers in our ecosystem fail to accomplish this.
I believe I understand the guidelines, based on some discussions about not =
including the whitelist.bbclass in OE.=20
But I find it not always possible to follow. Let me expose a very simple, a=
nd commom use case, a layer which contains:
recipeAboost_%.bbappend
recipeB
In order to success in generate recipeA, I need to extend the boost to expa=
nd some configuration parameters(log).On the other side someone would like =
to use recipeB. He/She will unwillingly inherit the boost modifications.
How should this be correctly done?
Regards







=20

 =20

------=_Part_1789327_175944728.1479984190438
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yiv6165561440"><div id=3D"yui_3_16_0_=
1_1479983373001_5664"><div id=3D"yui_3_16_0_1_1479983373001_5663" style=3D"=
color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue,=
 Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;">&gt; As per t=
he Yocto Project guidelines, layers that do this are broken.&nbsp; A BSP la=
yer should only introduce changes that affect the BSP, distro layers should=
n't contain general purpose recipes, and everything that is distro-specific=
 should be isolated using overrides.<div id=3D"yiv6165561440yui_3_16_0_1_14=
79894428778_55543" style=3D"font-family:HelveticaNeue, Helvetica Neue, Helv=
etica, Arial, Lucida Grande, sans-serif;font-size:16px;"><div class=3D"yiv6=
165561440y_msg_container" id=3D"yiv6165561440yui_3_16_0_1_1479894428778_555=
49"><div id=3D"yiv6165561440"><div id=3D"yiv6165561440yui_3_16_0_1_14798944=
28778_55548"><div dir=3D"ltr" id=3D"yiv6165561440yui_3_16_0_1_1479894428778=
_55547"><div class=3D"yiv6165561440gmail_extra" id=3D"yiv6165561440yui_3_16=
_0_1_1479894428778_55546"><div id=3D"yui_3_16_0_1_1479983373001_5725"><br c=
lear=3D"none"></div><div id=3D"yui_3_16_0_1_1479983373001_5665"><div dir=3D=
"ltr" id=3D"yui_3_16_0_1_1479983373001_5784">I was talking more generically=
 for any type of layer. I have the feeling that many layers in our ecosyste=
m fail to accomplish this.</div><div id=3D"yui_3_16_0_1_1479983373001_5831"=
><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1479983373001_6057">I believ=
e I understand the guidelines, based on some discussions about not includin=
g the whitelist.bbclass in OE. <br></div><div id=3D"yui_3_16_0_1_1479983373=
001_6571" dir=3D"ltr">But I find it not always possible to follow. Let me e=
xpose a very simple, and commom use case, a layer which contains:</div><div=
 id=3D"yui_3_16_0_1_1479983373001_6364"><br></div><div id=3D"yui_3_16_0_1_1=
479983373001_5839">recipeA</div><div id=3D"yui_3_16_0_1_1479983373001_5838"=
 dir=3D"ltr">boost_%.bbappend<br></div><div id=3D"yui_3_16_0_1_147998337300=
1_5836">recipeB</div><div id=3D"yui_3_16_0_1_1479983373001_6317"><br></div>=
<div id=3D"yui_3_16_0_1_1479983373001_6316" dir=3D"ltr">In order to success=
 in generate recipeA, I need to extend the boost to expand some configurati=
on parameters(log).</div><div id=3D"yui_3_16_0_1_1479983373001_6055" dir=3D=
"ltr">On the other side someone would like to use recipeB. He/She will unwi=
llingly inherit the boost modifications.</div><div id=3D"yui_3_16_0_1_14799=
83373001_6456" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1479983373001_=
6702" dir=3D"ltr">How should this be correctly done?</div><div id=3D"yui_3_=
16_0_1_1479983373001_6701" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_14=
79983373001_6455" dir=3D"ltr">Regards<br></div><div id=3D"yui_3_16_0_1_1479=
983373001_6454" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1479983373001=
_6453"><br></div><div class=3D"qtdSeparateBR"><br><br></div><div class=3D"y=
iv6165561440yqt2597363238" id=3D"yiv6165561440yqtfd74841"><br clear=3D"none=
"></div></div></div></div></div></div><br><div class=3D"yiv6165561440yqt259=
7363238" id=3D"yiv6165561440yqtfd52676"><br clear=3D"none"></div></div><div=
 class=3D"yiv6165561440yqt2597363238" id=3D"yiv6165561440yqtfd90956">  </di=
v></div><div class=3D"yiv6165561440yqt2597363238" id=3D"yiv6165561440yqtfd5=
5505"><div id=3D"yui_3_16_0_1_1479983373001_5744" class=3D"yiv6165561440qtd=
SeparateBR"><br clear=3D"none"><br clear=3D"none"></div></div></div></div><=
/div><div class=3D".yiv6165561440yahoo_quoted"><div id=3D"yiv6165561440yui_=
3_16_0_1_1479894428778_55544" style=3D"font-family:HelveticaNeue, Helvetica=
 Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"> </div>=
  </div></div></body></html>

------=_Part_1789327_175944728.1479984190438--
