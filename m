Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57EB2E00AEB; Thu, 15 Oct 2015 08:57:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.105 listed in list.dnswl.org]
Received: from nm12-vm6.bullet.mail.ne1.yahoo.com
	(nm12-vm6.bullet.mail.ne1.yahoo.com [98.138.91.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE75FE00A49
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 08:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1444924661; bh=8aq0Tkdead7kkLYLUog9wcS8kniXsJSmNnxPXJb/pCg=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=cLxLok1lrV8oQmaQ7XouXcjRDAge7nnVAuyDQmWkDqWWkb6FhO0l0N78vElFunZZ1AMJgKbFZesGpvPk/IWT4Sn9nUYyAp3FDgYhPL1d+wDXFVDxY9dIiK5K49BBklkCqCYgXtlDzKxEDbaGze51pGzGHtEDhQWCjz20Htvv+ou5oKuBZDpk3ieZgrl8tOqkFA3MlhmZJQvBCgYrwxkg23ywlOKeJuLnVWzWbMlCs7wHWFEetDN1zcJgEFtQkrmZyjiQFsb/okzEd3teY6wvbM6fmKKbN6oEOjyRsPRo1fswbCiWCod3MrirNZJcmBmPNL4oPGJHCmlEV0ahFoNjZA==
Received: from [98.138.101.131] by nm12.bullet.mail.ne1.yahoo.com with NNFMP;
	15 Oct 2015 15:57:41 -0000
Received: from [98.138.89.197] by tm19.bullet.mail.ne1.yahoo.com with NNFMP;
	15 Oct 2015 15:57:41 -0000
Received: from [127.0.0.1] by omp1055.mail.ne1.yahoo.com with NNFMP;
	15 Oct 2015 15:57:41 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 616769.91525.bm@omp1055.mail.ne1.yahoo.com
X-YMail-OSG: wlNRyy4VM1no5iTBJ8tCdZ2ultOEcRmYrgoFdhmvyF.QYNDj739YEwL4afdip21
	a45YdB3FEMDzxD1EGR6j1Cx_DVL4dnGCZhlo9hc_kfDjRAVeP17oZtZJOfHMth1jVw6auzXjk_uf
	4YmFce8hQ_ZY10R34_VVqosHqHnH1Hw.E1BTG6tLVUl0f8lEd3K970B6Fjse0bMN9zXii3U8YWAZ
	V4V3B7b2zzmSX.G0Gan.ii6VBoEozSKHzc.06dq0sKBzSsKe9h8FRwlUdEC5bdqAMHVeQagt58NB
	GWDAsNoRtm0EZy_M2hyj4_ANinsdb8mRpVmGTYXCmazVKSkDrgtK60gp.fhldK0Gmcs.GfmMYGkc
	7hNQ_PUAfr8P9_Dxd5daakkD7ZcaMfEPyzo4hj_N.2tTAV.5tSblOOFUa2CsA6GRufeV7U.oafsQ
	JMCgqF90vaw_2_el9UJr4fudkx9uc.eM0EijK4xMa9GB2kEaHAKd9bv.iSux.9uRJaC3QYM9l6KG
	2wZltFpIvflIO_IOQCbntYzJVguZWLB45kgYbUWe3KB6QURRZiiUsFeZAkhaadw--
Received: by 98.138.105.202; Thu, 15 Oct 2015 15:57:41 +0000 
Date: Thu, 15 Oct 2015 15:57:40 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <536330707.919423.1444924660857.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
References: <536330707.919423.1444924660857.JavaMail.yahoo@mail.yahoo.com>
Subject: meta-raspberrypi no soud output
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
X-List-Received-Date: Thu, 15 Oct 2015 15:57:45 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_919422_1341301393.1444924660853"

------=_Part_919422_1341301393.1444924660853
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,Does any have snd working on Raspberry Pi 2B?
I have tried aplay speech_dft.wavPLAYING WAVE: 'speech_dft.wav' :=C2=A0 Sig=
ned 16 bit Little Endian, rate 22050 Hz Monowith ear plugs or speaker no sn=
d.Any and all help appreciated.
Regards.
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_919422_1341301393.1444924660853
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_1_1444922488435_10928"><sp=
an id=3D"yui_3_16_0_1_1444922488435_11106">Hello All,</span></div><div id=
=3D"yui_3_16_0_1_1444922488435_11016"><span id=3D"yui_3_16_0_1_144492248843=
5_11015">Does any have snd working on Raspberry Pi 2B?</span></div><div id=
=3D"yui_3_16_0_1_1444922488435_11056"><br><span id=3D"yui_3_16_0_1_14449224=
88435_11015"></span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1444922488435=
_11062"><span id=3D"yui_3_16_0_1_1444922488435_11015">I have tried aplay sp=
eech_dft.wav</span></div><div id=3D"yui_3_16_0_1_1444922488435_11105" dir=
=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_1444922488435_11015">PLAYING W=
AVE: '</span><span class=3D"" id=3D"yui_3_16_0_1_1444922488435_11015">speec=
h_dft.wav' :&nbsp; Signed 16 bit Little Endian, rate 22050 Hz Mono</span></=
div><div id=3D"yui_3_16_0_1_1444922488435_11165" dir=3D"ltr"><span class=3D=
"" id=3D"yui_3_16_0_1_1444922488435_11015">with ear plugs or speaker no snd=
.</span></div><div id=3D"yui_3_16_0_1_1444922488435_11166" dir=3D"ltr"><spa=
n class=3D"" id=3D"yui_3_16_0_1_1444922488435_11015">Any and all help appre=
ciated.</span></div><div id=3D"yui_3_16_0_1_1444922488435_11187" dir=3D"ltr=
"><span class=3D"" id=3D"yui_3_16_0_1_1444922488435_11015"><br></span></div=
><div id=3D"yui_3_16_0_1_1444922488435_11188" dir=3D"ltr"><span class=3D"" =
id=3D"yui_3_16_0_1_1444922488435_11015">Regards.</span></div><div id=3D"yui=
_3_16_0_1_1444922488435_11189" dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_=
0_1_1444922488435_11015"><br></span></div><div id=3D"yui_3_16_0_1_144492248=
8435_11014"><span></span></div><div id=3D"yui_3_16_0_1_1444922488435_10929"=
>&nbsp;</div><div id=3D"yui_3_16_0_1_1444922488435_10930" class=3D"signatur=
e">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div><=
/body></html>

------=_Part_919422_1341301393.1444924660853--
