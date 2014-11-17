Return-Path: <mahdisaadat@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7C97E008B4; Mon, 17 Nov 2014 10:20:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mahdisaadat[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.139.212.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4858]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm15.bullet.mail.bf1.yahoo.com (nm15.bullet.mail.bf1.yahoo.com
	[98.139.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DD4AE00872
	for <yocto@yoctoproject.org>; Mon, 17 Nov 2014 10:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1416248426; bh=jbVGM+Bz0Zyz68U5tCESw9rZ+YAVHATor0O1S9amn9k=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=Yg8V3LIo0X5bNjWuXAE1FkFLN/M3DV7fBQnvPw9HL5yHsI2Pa4BP/gbiqx8ddWiuVbkWM5a20W2f0CTYEMtaMZQrxG2QZf60BipeT6W3WXUjxfjBkExCF3V6F9V6Fuoi6uRQdU2SBne6ANB4CGEo8R2kNscZyYbnBdgAu0v8ar3hP5RlbU6YnZ4y+SDL/QBQxrrYrUYwfbImu7pBoJ7SdoXBaXIdeAQiuBm8pISxo+34A0FBvwROVmUKvvYbUAeua2KgOhXRyipFFIrD8Hrrc8RdOjm33ipM1lJhKIdk/gYFOgfJbDmjgYfBvNDQSCB5ZS90pBZ5TSWguXQhjvXzfQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=KkwFN3KTnl7g4WWP7AwNE2Kfk97Bqr67BcsY4w+TOrFWJZh8qO8KsNFM+qePDwgE+pUPeuyqB4P93PX5DphUoeblr5PYoujQ6JvvFiNLSOivhGgYfN7jZBpKWd9+EG78HzDkmhV9zFk+0UYagxR6i116IF/wJUeo9aD8aR8NKYAIm0KKH4P8HK5z47aagfRhXLKIthyYSLQATpjMBD0G8/HiXVVmFDkeyRrUdgsEfenlGS2U7imgxXlLIV5rlzY+xGWIxW8aLfTgMkDLTv8OGWA6axIZydHL87VIxU5uUNXv0KyN5nDO2ZHtLIgOqxHmSvJDyevJeY2AdPo2NrVq7A==;
Received: from [66.196.81.172] by nm15.bullet.mail.bf1.yahoo.com with NNFMP;
	17 Nov 2014 18:20:26 -0000
Received: from [98.139.212.242] by tm18.bullet.mail.bf1.yahoo.com with NNFMP;
	17 Nov 2014 18:20:26 -0000
Received: from [127.0.0.1] by omp1051.mail.bf1.yahoo.com with NNFMP;
	17 Nov 2014 18:20:26 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 791382.35911.bm@omp1051.mail.bf1.yahoo.com
X-YMail-OSG: 7RVqNG4VM1lGtNsPvd9CK5Fsw4WJXwCPlS5CfXJJlEUBPzS32ETa6Jx29uxnZb_
	kttHBWBE9i3jUQbrAotuBpq2mA17AFsLhNpsGFA1IHhI1GTRy0axXrjigcDZlsLYcOZj9Y5xJUXn
	jdmGmR1Spx9DgazgSmtO4NaDTE2_XARw8059S8.4qkLL6m.BmJSl7OP4JScTjRP2J_Cv0IpQAMnH
	mL3BQwjKbfSlltI3nymdxeUCzCezKebz6UKNpWIhIofeJIBWcGrzESGClt8gx5UO2dfIeud7nE9a
	lVbycyunOrrNtQV5KQ5wqZLdMHu2r1T.ChOBPf07bEPhrTErZ3FfeFDkT6MsOINz.vkqQyl4tMiO
	NstRYEuwcbe1qzZZNi9_8e8yHC8G6gPv0dmFzesUjn_GUG.57v.hN9eVpVtc9yXfnCrb7a4aWVFI
	RaIH2aNiFCD1rAkIOTBIJsJObgRCcImj21h8wnEdv_LKVIO1k2pV0KAzimeMO1UHn1Fu_7iGOWha
	kk83Cn0rw0BWXtlq84OlFonjFsyBkJ017JxhsoiRns.w0ov8-
Received: by 76.13.27.55; Mon, 17 Nov 2014 18:20:26 +0000 
Date: Mon, 17 Nov 2014 18:20:26 +0000 (UTC)
From: Mahdi Sa'adat <mahdisaadat@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <952664770.1585494.1416248426041.JavaMail.yahoo@jws10657.mail.bf1.yahoo.com>
MIME-Version: 1.0
Subject: progressbar
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Mahdi Sa'adat <mahdisaadat@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Nov 2014 18:20:32 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1585493_729339903.1416248426038"

------=_Part_1585493_729339903.1416248426038
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0hii build the image-minimal , and want to add the dialog installer fo=
r it with progress bar and dialog , when i use install.sh, in the image ins=
tallation on target device the message shows that "dialog and progress coul=
d not find".could you please inform me about the creating progress bar when=
 installing th image on dest device.=C2=A0
_________________
Regards
Mahdi Saadat

------=_Part_1585493_729339903.1416248426038
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1416248240090_2950"><span></span></di=
v><div></div><div id=3D"yui_3_16_0_1_1416248240090_2827">&nbsp;hi</div><div=
 dir=3D"ltr" id=3D"yui_3_16_0_1_1416243217953_8063" class=3D"" style=3D""><=
span id=3D"yui_3_16_0_1_1416243217953_8062" class=3D"" style=3D"">i build t=
he image-minimal , and want to add the dialog installer for it with progres=
s bar and dialog , when i use install.sh, in the image installation on targ=
et device the message shows that "dialog and progress could not find".</spa=
n></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1416243217953_8063" class=3D"" =
style=3D""><span id=3D"yui_3_16_0_1_1416243217953_8083" class=3D"" style=3D=
"">could you please inform me about the creating progress bar when installi=
ng th image on dest device.</span></div><div class=3D"" style=3D""></div><d=
iv id=3D"yui_3_16_0_1_1416243217953_8055" class=3D"" style=3D"">&nbsp;</div=
><div class=3D"signature" id=3D"yui_3_16_0_1_1416248240090_2826"><div id=3D=
"yui_3_16_0_1_1416248240090_2825"><br>_________________<br><span style=3D"f=
ont-family:Courier New, courier, monaco, monospace, sans-serif;font-style:i=
talic;">Regards</span><br><span style=3D"font-family:Courier New, courier, =
monaco, monospace, sans-serif;">Mahdi Saadat</span><br></div></div></div></=
body></html>

------=_Part_1585493_729339903.1416248426038--
