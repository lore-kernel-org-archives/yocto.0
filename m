Return-Path: <just_abhi22@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 927F8E009B9; Mon, 15 Dec 2014 19:54:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (just_abhi22[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.229.85 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit
	*      (abhishek srivastava <just_abhi22[at]yahoo.co.in> )
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3258]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm34-vm5.bullet.mail.ne1.yahoo.com
	(nm34-vm5.bullet.mail.ne1.yahoo.com [98.138.229.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C012FE009B2
	for <yocto@yoctoproject.org>; Mon, 15 Dec 2014 19:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1418702062; bh=22WodhXrqIO4kbuEbVB23ZqZ15kzBynjYpJshd+ex9c=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=E7A/390xFgsTTYXRde2Iw5yjbY+ySVMCZH3r9ji8YGcoQnqcoTDJDkVnTz7+jUBbiT+9pbYYGy//FkOegrDrOxkKvXvxcXGGkgojBsQVV6A5w6OFMkTdBIdaTmdRQ4h0wv9iZFnvU2s7EpLPkRX4+de01ZvTpwPX2HhF0uyKjyRxKoiIzBEgHNbDsjJUSWAqDcUybC4Eb902QlA1xQ1XRuY4RNDwrgj8/oNnwPulU/HaXLn6/yv3qMQ5wDxAVM0dFWztPVHAx3bsqAK/6uax04V7TBjFhd9PKY3WfZ36Cn+rIV3bXR8mXVoQG90vUlheflG9/iwzfrEjFig9q4mnSw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.co.in;
	b=oaaQNllCmW6qIa8YjINdeMF6Jzar04s8LHAnkIIrnRMBr+6i0mYToyQBY8+AqTAaF+b3sU4PaK32B9c4lsR7uh9QESpxYn382chs1Z71K51KJ3KQUSB2MHos0+F5GBnRG4KKjTUIdkIB05nOdPunHSSJa/0+ItOOsVyJeYRsiJ5xFxZzR9ZRy8ZL3KKQDDnr7hn6mGOJlPZVye+Sza3oP3cSsOmc/MxkjB/qHnyKUt5DK1s8wFDbT3yyada7qlvHgMRuwEasgHD3ygJH6caFx0xM8JH43mjrUGs7dguDE4gw4PTROUtoqa7wGoGbD6hdE164bitN+e/f5khAsN9Taw==;
Received: from [127.0.0.1] by nm34.bullet.mail.ne1.yahoo.com with NNFMP;
	16 Dec 2014 03:54:22 -0000
Received: from [98.138.100.118] by nm34.bullet.mail.ne1.yahoo.com with NNFMP;
	16 Dec 2014 03:51:41 -0000
Received: from [106.10.166.63] by tm109.bullet.mail.ne1.yahoo.com with NNFMP;
	16 Dec 2014 03:51:41 -0000
Received: from [106.10.151.251] by tm20.bullet.mail.sg3.yahoo.com with NNFMP;
	16 Dec 2014 03:51:40 -0000
Received: from [127.0.0.1] by omp1022.mail.sg3.yahoo.com with NNFMP;
	16 Dec 2014 03:51:40 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 961769.70610.bm@omp1022.mail.sg3.yahoo.com
X-YMail-OSG: FVsahYMVM1liDSOEecA7Wv_eNoL7HHZirgMBYXzLEuZSjZTsPV.pRdUOZVJJYOI
	rimXsuMEx1xyK2xkLWaj_lCnDn_rmB0IanHkuz5rrXsRRIDbcqNgx5kvZ7tMyeW3JTwktLungyIx
	3zjwaJlwa3Ee6bW0nO9R.ycyu0aDJnV7uLzi7eAh6PR5U2CDnioaWLeDPGgE3Ud6.x4TODTAwwqE
	44PUWFWhzU.wa0F3waDL6RXuL7GbNHRlaoAQC3eUxuMQ7xmhXWVrdQcGUbpLA4DxhSsF4dHvnCiZ
	0rNB69AMjGQnYp0l2zoj3qR2OdgjEp39MKSV3vi28uRqjUD7Lgy5y9cDO.eTVCiHjaB60UTdtqwA
	ZUHpHIXCcTVSvG7iH.mvSfv1WeifjjynRZy01DTOjaxtCgjmoiB0VuiTMZr4vctV6IS30sHJ_OdU
	0y6u8D_eWgGOuofmOQyxSlfob1Ljhua7Iy2VJkI8r7aZ2Jo6o87V6YFvU6ZHPg6tMVgNrZJ9WqS1
	aNsWnmFlruHTW
Received: by 106.10.196.182; Tue, 16 Dec 2014 03:51:40 +0000 
Date: Tue, 16 Dec 2014 03:51:40 +0000 (UTC)
From: abhishek srivastava <just_abhi22@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <698759930.395474.1418701900246.JavaMail.yahoo@jws10940.mail.sg3.yahoo.com>
MIME-Version: 1.0
Subject: adding drivers to rpi-basic-image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: abhishek srivastava <just_abhi22@yahoo.co.in>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Dec 2014 03:54:26 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_395473_1669731617.1418701900242"

------=_Part_395473_1669731617.1418701900242
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi allI have generated image for raspberrypi basic image rpi-basic-image us=
ing "hob"
Now How can i add my TFT drivers or any other driver to the rpi-basic-image=
? I am also willing to know some more details on package importance in buil=
ding raspberrypi image such that what those packages would do, if I add the=
m to my image or how it helps?
Actually I am into making a customized LINUX just for my target requirement=
 so I want to be very specific on packages I am adding and why?=C2=A0Please=
 guide me.
=C2=A0warm regards
Abhishek=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20

------=_Part_395473_1669731617.1418701900242
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;fo=
nt-size:14px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1418701415620_4790"><span=
>Hi all</span></div><div id=3D"yui_3_16_0_1_1418701415620_4833" dir=3D"ltr"=
><span id=3D"yui_3_16_0_1_1418701415620_4832">I have generated image for ra=
spberrypi basic image rpi-basic-image using "hob"</span></div><div id=3D"yu=
i_3_16_0_1_1418701415620_4834" dir=3D"ltr"><br><span></span></div><div id=
=3D"yui_3_16_0_1_1418701415620_4836" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1=
418701415620_4835">Now How can i add my TFT drivers or any other driver to =
the rpi-basic-image? I am also willing to know some more details on package=
 importance in building raspberrypi image such that what those packages wou=
ld do, if I add them to my image or how it helps?<br></span></div><div id=
=3D"yui_3_16_0_1_1418701415620_4838" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1=
418701415620_4837">Actually I am into making a customized LINUX just for my=
 target requirement so I want to be very specific on packages I am adding a=
nd why?&nbsp;</span></div><div id=3D"yui_3_16_0_1_1418701415620_5216" dir=
=3D"ltr"><span id=3D"yui_3_16_0_1_1418701415620_4837">Please guide me.<br><=
/span></div><div id=3D"yui_3_16_0_1_1418701415620_4789"><div id=3D"yui_3_16=
_0_1_1418701415620_5219">&nbsp;</div><div id=3D"yui_3_16_0_1_1418701415620_=
5220" dir=3D"ltr">warm regards</div><div id=3D"yui_3_16_0_1_1418701415620_5=
221" dir=3D"ltr"><br></div></div><div id=3D"yui_3_16_0_1_1418701415620_4606=
" class=3D"signature"><div id=3D"yui_3_16_0_1_1418701415620_4605"><span id=
=3D"yui_3_16_0_1_1418701415620_4788" style=3D"font-size:16px;"><span id=3D"=
yui_3_16_0_1_1418701415620_4787" style=3D"font-family:garamond, new york, t=
imes, serif;"><span id=3D"yui_3_16_0_1_1418701415620_4786" style=3D"font-we=
ight:bold;">Abhishek <br><span class=3D"tab">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; </span><span class=3D"tab"><br></span></span></span></sp=
an></div></div></div></body></html>

------=_Part_395473_1669731617.1418701900242--
