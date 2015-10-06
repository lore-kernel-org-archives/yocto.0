Return-Path: <falak.desai@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 981CCE00DA5; Tue,  6 Oct 2015 04:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (falak.desai[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.139.213.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm17-vm1.bullet.mail.bf1.yahoo.com
	(nm17-vm1.bullet.mail.bf1.yahoo.com [98.139.213.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407D3E0049B
	for <yocto@yoctoproject.org>; Tue,  6 Oct 2015 04:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1444132696; bh=J3o3TyTmIgg/WbwafrdrTS1b8vH5X6oWXqrY1rRo1Nc=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=n62UD/UKvDct2emdDyGcQs4cwrvuHeHxWHt8gzd1n9tfz9El/PXWLiCRPWpMGzk3aha2+6I9zRf4eryJTB6xZ5rznjZ0zX3jcnp25WiAfjCo0O+O5HZhWAgg6ql0PsbyVrAm4wjWMPIW1osPMqq7WfIiKnxKA798odMee0fLeRuygJ1Sd/WlkhKBGxcy/BWKREOFeLsknGYO/Z0l2FOWXm+egxz8NsR39dCUKe6Q7ifZT+6TpGZyvB5zRHRkj4lpt6KEmPjxqS2W37oo4+ZJe6jGXwxgVW1cTnNd9SjFPvd/WwA5DtWoV2puxvl4u8P77A6H5YDNy5aoCX1yArM1jg==
Received: from [98.139.170.180] by nm17.bullet.mail.bf1.yahoo.com with NNFMP;
	06 Oct 2015 11:58:16 -0000
Received: from [98.139.212.235] by tm23.bullet.mail.bf1.yahoo.com with NNFMP;
	06 Oct 2015 11:58:16 -0000
Received: from [127.0.0.1] by omp1044.mail.bf1.yahoo.com with NNFMP;
	06 Oct 2015 11:58:16 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 580032.53922.bm@omp1044.mail.bf1.yahoo.com
X-YMail-OSG: rq9RvHYVM1loRbTcunTslO9klXKeWvQuhMkz4AYcv9UxrBYcFlW7MP2w2tK1LPh
	rDdRgmD0RwYe3_xShKt7SWmvYOGOUf1.mdfjo8wV1b9TY3dQRwMtVnmoi6AWznV7j8R9JKbeOHlo
	2IccvskOln9JJEgBeT9qdx16zQ1UlkndjBRus71FGqRK0IZbhLtOuVy7S4mrbBMhJt8iKqnk5D_E
	lno_FN_78d7kNouSS6tWsZlUwPMkH7kfSemYuSEv5ss0jQvxnHGc5V9PTKn.ZVAX5Vgl_4nRNhxS
	kuqsUrY6wefTZpj4siO70QN2IOHBUFvKAuOTmMl2A_KVPMjV8pfyg0rnfe1FXr4e4lGdb2w_OaKf
	3DwnDLKYhesNfRlv08THBwZpRuIwh.OOjhhh7YVOXNxDOa_dpnT3Iab2ZBR1lPln1xcAAUYON_Jm
	vrmmnGloZRH8DCDpX7HXy4jotlPpjHoF6nHSBGXC0oUHKwzlFXdQUO8_CqNSRKwLPigXDiQ--
Received: by 76.13.26.142; Tue, 06 Oct 2015 11:58:16 +0000 
Date: Tue, 6 Oct 2015 11:58:06 +0000 (UTC)
From: Falak Desai <falak.desai@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <905270146.1170569.1444132686383.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Help in building Custom Yocto Image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Falak Desai <falak.desai@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Oct 2015 11:58:21 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1170568_1742004824.1444132686380"

------=_Part_1170568_1742004824.1444132686380
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello everyone,=C2=A0

I'm newbie in making custom yocto image, and I'm trying to create a custom =
one for my Intel Edison Mini Breakout Board..I want to make a yocto image i=
n which as soon as my intel edison boots up, it should start streaming vide=
o over the network on a specific IP address... =C2=A0and I'll get that vide=
o by accessing that IP address!
Typically it has only 2 tasks as soon as it boots:

Boot
1) Connect to WiFi2) Start streaming video using vlc=C2=A0

Now my main question is,
* WHAT ARE THE DEPENDENCIES THAT I WILL NEED IN IMAGE TO PERFORM ONLY THESE=
 2 TASKS ?=C2=A0
* WHAT OTHER DEPENDENCIES SHOULD I REMOVE FROM IMAGE TO MAKE MY IMAGE LIGHT=
 WEIGHT ?

please help me out with this problem..
Thank you very much,Falak Desai

------=_Part_1170568_1742004824.1444132686380
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1444131349813_3444">Hello everyone,&n=
bsp;<br><br>I'm newbie in making custom yocto image, and I'm trying to crea=
te a custom one for my Intel Edison Mini Breakout Board..</div><div id=3D"y=
ui_3_16_0_1_1444131349813_3444" dir=3D"ltr">I want to make a yocto image in=
 which as soon as my intel edison boots up, it should start streaming video=
 over the network on a specific IP address... &nbsp;and I'll get that video=
 by accessing that IP address!</div><div id=3D"yui_3_16_0_1_1444131349813_3=
444" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1444131349813_3444" dir=
=3D"ltr">Typically it has only 2 tasks as soon as it boots:</div><div id=3D=
"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div id=3D"yui_3_16=
_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1444=
131349813_3444" dir=3D"ltr">Boot<br></div><div id=3D"yui_3_16_0_1_144413134=
9813_3444" dir=3D"ltr">1) Connect to WiFi</div><div id=3D"yui_3_16_0_1_1444=
131349813_3444" dir=3D"ltr">2) Start streaming video using vlc&nbsp;</div><=
div id=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div id=3D=
"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div id=3D"yui_3_16=
_0_1_1444131349813_3444" dir=3D"ltr">Now my main question is,</div><div id=
=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div id=3D"yui_3=
_16_0_1_1444131349813_3444" dir=3D"ltr"><b id=3D"yui_3_16_0_1_1444131349813=
_3799">* WHAT ARE THE DEPENDENCIES THAT I WILL NEED IN IMAGE TO PERFORM ONL=
Y THESE 2 TASKS ?&nbsp;<br></b></div><div id=3D"yui_3_16_0_1_1444131349813_=
3444" dir=3D"ltr"><b id=3D"yui_3_16_0_1_1444131349813_3800">* WHAT OTHER DE=
PENDENCIES SHOULD I REMOVE FROM IMAGE TO MAKE MY IMAGE LIGHT WEIGHT ?</b></=
div><div id=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div =
id=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></div><div id=3D"yui=
_3_16_0_1_1444131349813_3444" dir=3D"ltr">please help me out with this prob=
lem..</div><div id=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr"><br></di=
v><div id=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr">Thank you very mu=
ch,</div><div id=3D"yui_3_16_0_1_1444131349813_3444" dir=3D"ltr">Falak Desa=
i</div></div></body></html>

------=_Part_1170568_1742004824.1444132686380--
