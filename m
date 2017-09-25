Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76DA1E00D16; Mon, 25 Sep 2017 14:52:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.6.129.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic317-31.consmr.mail.bf2.yahoo.com
	(sonic317-31.consmr.mail.bf2.yahoo.com [74.6.129.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600C6E00C89
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 14:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1506376356; bh=cQD3i4y/4rcVfuuxSUBTfgsVUyk1NDrsoAB4PO91pLU=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=UZLiGoEj1rLPaO+/2DMAdktREB4LzV4MV3fsbC/yzlUCfg+8088xklRnCAHY6JHDfvzpXAJ1uG5b60DvT4lZOoM0PqcrlskfV7O6qahGZmyfbp+jYQ3AI8YAToMhljVFU64PJPfxrDVjkJOot9GXOCNLk6IpD6kJ+ysDoyfo+1nJxz5pgieVRmIHuXe97tOcz1Kk+sLPgEL86mGTgVzkV6AkTHRBDgXQo6HXTo8hmFd0AEjeacNBg6wKX2mHFwX9OyIGBWJ8jLiw5448QuT+HHupjutGUBNB1ogvAF9LomnS9VlW15ts7bKKzjEBKqRXI4zZXZXm1PbIhsl4ibVT0g==
X-YMail-OSG: 7vRFR.AVM1meMPWwEH5g6omH_BNzTTJZDNOUz6Hw8phANAVfNTLLGI4nXSAEV6W
	n7GSN3RrPhoueayTqMnv89a0aEiLx9Wn1qZd7xgd1wEtij0LlJeUtcNl910nunuE7S1D7gOetC6o
	SmDIMz97QkYGqJXmydz32rI5AbdwKiXD2Bd_bR.rDQrxhDELmM3zZBZLjD8KTY.neNI3GH9Ep_FT
	KUSn0h2lTsXa2PMhhGCTNFMekIq3YfhrPAxCKThMyYLGno2S.nXHOzLwz6tGx9oJOD_5Zau7mYLc
	fZZH.PiA7uj5pl1z.sbQQqdDcBUDcwJpsw1f9LSD4PVLyz6uBxB__kJ7YyO6ocjMHnH_wzBqXk9M
	PNHDPiK__ig.HCg1t6hqSdw3mamdr9ZK0tw7vd55x1h5p7EdttY881TW8MDxrUcn3yb6j4CY_ve9
	nf6iYh3lWxpmWwLo4KwizV2PJ6P92jNZZx_Ruj2CjYDxZKX8wyG7.CGI1adM0lw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.bf2.yahoo.com with HTTP;
	Mon, 25 Sep 2017 21:52:36 +0000
Date: Mon, 25 Sep 2017 21:52:36 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1723909337.4271030.1506376356400@mail.yahoo.com>
MIME-Version: 1.0
References: <1723909337.4271030.1506376356400.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10602 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0
Subject: RPI VideoCore IV bare-metal release
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Sep 2017 21:52:39 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_4271029_479672967.1506376356397"

------=_Part_4271029_479672967.1506376356397
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All.When Ultibo core was first released at the start of 2016 perhaps =
the most surprising thing for us was how much interest there was in using g=
raphics and displaying information on screen, the questions began almost fr=
om day one and have persisted to this day. We had initially envisaged Ultib=
o as an IoT platform to be hidden away and used for sensing, controlling an=
d monitoring often without any console, display or visual output at all. Of=
 course IoT means many things to many people so our vision of network conne=
cted gadgets didn=E2=80=99t quite take account of the true potential offere=
d by the Raspberry Pi.It is with great pleasure that we announce today the =
release of Ultibo core 2.0, the Beetroot release, and the inclusion of full=
 support for the VideoCore IV GPU in all models of the Raspberry Pi. Anyone=
 who has read about this subject will have seen a lot of information, some =
of it true, some of it not so true and others just plain wrong. Along the w=
ay we=E2=80=99ve seen many claims, there is no documentation, it=E2=80=99s =
all a secret and closed source or it can=E2=80=99t be done because they won=
=E2=80=99t release the details. We are not about to try and tell you this w=
as an easy task but with a lot of research, reading, exploration and experi=
mentation we have arrived at a result that we are very proud of. Once again=
 it shows that anything can be done if you really want it to happen.Today w=
e pass the baton to you, the Ultibo community, it=E2=80=99s your turn to sh=
ow us what you can do now that you have some of the most powerful graphics =
features at your disposal. Let=E2=80=99s get the message out to the world a=
nd show everyone what is possible if you have a little bit of imagination, =
it=E2=80=99s time to make something amazing.As always the latest installer =
is available from the download page, get your copy now and try it out.
 For those who might prefer to build their own version for Windows or for L=
inux see the wiki for instructions.   =20
https://ultibo.org/Let me know if you have any questions.
 Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_4271029_479672967.1506376356397
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:13px"><div id=3D"yui_3_16_0_ym19_1_1506375854881_6402"><span id=3D"yu=
i_3_16_0_ym19_1_1506375854881_8030">Hello All.</span></div><div id=3D"yui_3=
_16_0_ym19_1_1506375854881_8286">
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8287">When Ultibo core was first=
 released at the start of 2016 perhaps the=20
most surprising thing for us was how much interest there was in using=20
graphics and displaying information on screen, the questions began=20
almost from day one and have persisted to this day. </div>
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8288">We had initially envisaged=
 Ultibo as an IoT platform to be hidden=20
away and used for sensing, controlling and monitoring often without any=20
console, display or visual output at all. Of course IoT means many=20
things to many people so our vision of network connected gadgets didn=E2=80=
=99t=20
quite take account of the true potential offered by the Raspberry Pi.</div>
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8289">It is with great pleasure =
that we announce today the release of=20
Ultibo core 2.0, the Beetroot release, and the inclusion of full support
 for the VideoCore IV GPU in all models of the Raspberry Pi. Anyone who=20
has read about this subject will have seen a lot of information, some of
 it true, some of it not so true and others just plain wrong. </div>
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8290">Along the way we=E2=80=99v=
e seen many claims, there is no documentation, it=E2=80=99s
 all a secret and closed source or it can=E2=80=99t be done because they wo=
n=E2=80=99t=20
release the details. We are not about to try and tell you this was an=20
easy task but with a lot of research, reading, exploration and=20
experimentation we have arrived at a result that we are very proud of.=20
Once again it shows that anything can be done if you really want it to=20
happen.</div>
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8291">Today we pass the baton to=
 you, the Ultibo community, it=E2=80=99s your turn=20
to show us what you can do now that you have some of the most powerful=20
graphics features at your disposal. Let=E2=80=99s get the message out to th=
e=20
world and show everyone what is possible if you have a little bit of=20
imagination, it=E2=80=99s time to make something amazing.</div>
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8292">As always the latest insta=
ller is available from the <a id=3D"yui_3_16_0_ym19_1_1506375854881_8293" h=
ref=3D"https://ultibo.org/download/" target=3D"_blank">download </a>page, g=
et your copy now and try it out.</div><div id=3D"yui_3_16_0_ym19_1_15063758=
54881_8475"><br></div><div id=3D"yui_3_16_0_ym19_1_1506375854881_8476"> For=
 those who might prefer to build their own version for Windows or for Linux=
 see the <a id=3D"yui_3_16_0_ym19_1_1506375854881_8294" href=3D"https://ult=
ibo.org/wiki/Main_Page" target=3D"_blank">wiki</a> for instructions.</div>
=09=09</div>

=09=09<footer id=3D"yui_3_16_0_ym19_1_1506375854881_8295">

<div id=3D"yui_3_16_0_ym19_1_1506375854881_8296">

</div>
=09=09</footer> <br><span id=3D"yui_3_16_0_ym19_1_1506375854881_8090"></spa=
n><div id=3D"yui_3_16_0_ym19_1_1506375854881_8045" dir=3D"ltr"><span id=3D"=
yui_3_16_0_ym19_1_1506375854881_8030"><a id=3D"yui_3_16_0_ym19_1_1506375854=
881_8044" href=3D"https://ultibo.org/">https://ultibo.org/</a></span></div>=
<div id=3D"yui_3_16_0_ym19_1_1506375854881_8039"><div id=3D"yui_3_16_0_ym19=
_1_1506375854881_8487">Let me know if you have any questions.</div><div id=
=3D"yui_3_16_0_ym19_1_1506375854881_8488"><br> </div></div><div id=3D"yui_3=
_16_0_ym19_1_1506375854881_8038" class=3D"signature">Edward Vidal Jr. e-mai=
l develone@sbcglobal.net 915-595-1613</div></div></body></html>

------=_Part_4271029_479672967.1506376356397--
