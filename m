Return-Path: <mahdisaadat@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FEA8E00902; Thu, 20 Nov 2014 04:47:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mahdisaadat[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.139.213.150 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm5-vm0.bullet.mail.bf1.yahoo.com
	(nm5-vm0.bullet.mail.bf1.yahoo.com [98.139.213.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB1B9E008C9
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 04:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1416487638; bh=vqdYgMGQvWEER+vJZj/vbYz6euaaTex09T5Ws9Kur4Q=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=B5NtLvE1G7KMYyn46yGC7Hrm/D1X46L/OOuHtWlmFvr5Y9I6AzAY5XfpdWZ0LboPXZ5yXUsER/UtAMRkQgoB/cY4IwJKJrr7JgnOQoxe/em5Ec1lmPQAgn5Jk0bnKvWQwCWw7h84FlydtJk9sjNK1FOKcVIMblPyEJm6l6GlZNNMDosdTJUrUGLMsxmE+plMjSPrUxMn3r7wi3YGnSgpS6RhBBc3bk8oRf2PoK0NIHNWesb2IRzZKbCcDQQxcatH2N/yKj89xv5bBdRI+H19Siat0oGgVDoofHrP1FAdgR1r56sdUzrZC4uFukurKlC8YXnzddrVakJ1IcjmPae8/w==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=bZakOldojtvKWH1eHLYfCq9p2Kf/sGkWsdVjmy/5kSnguI0VGUDzo9SD8VwJHtfiF55Lp1mSq/s9iCHUIh1FTQhrcn4Cpakpl3qUOyaguWBVj4dVkPRc0WTvYPqtVkmwemUHVfAvxy3FtNpTcMmE4IwfX+U3XO8MamHCgnfFDw994xP6bDcbVkI2v+D/pvZ17FBregXg7nAkKU9KBMJ9/sAkbMgfIfhkzuxI//ewPHWeLnPFxyfc/J4ByPv9HxqLQuGtzCaKrPCL17SrWLURX4O1uHtX2A86HTBT1YE8+izFct1pLSmE4S+3z/b+2uCW0hSySDhQZvfyKjT7D1752g==;
Received: from [98.139.215.142] by nm5.bullet.mail.bf1.yahoo.com with NNFMP;
	20 Nov 2014 12:47:18 -0000
Received: from [98.139.212.216] by tm13.bullet.mail.bf1.yahoo.com with NNFMP;
	20 Nov 2014 12:47:18 -0000
Received: from [127.0.0.1] by omp1025.mail.bf1.yahoo.com with NNFMP;
	20 Nov 2014 12:47:18 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 375866.535.bm@omp1025.mail.bf1.yahoo.com
X-YMail-OSG: 8pmSfTkVM1mOWXtyIOYIauRYrgN4T3f.Re9GvoXkXRKkif5WPf_fxz_zhSYWT1t
	DQn01QSrrPQt2.hitiHi126DokISetUNMUPPptTxdnj_ifPQ7vDDCenbTPEGA8tGo50JR2yIN3hq
	0Zi.4zKMQKSqpvse7V5etaAZJ4rZNBQNtBr1ouPc1LsMO4Uk3WPfA8j_aFIsbHxQiOCMB.lwxIHR
	s2SVp2eCMGKDDDeAYCwZE73ex.eNhLACwmmkVQQeMkxYkQ0YUJF6aHKblDp9shNsX.kSl2NJfQlV
	wyhtNszmXcWbk0L_4Rd2uItSRW9lJjn9GerjVLkPSKbaptFq.hekgEdkG4LMyGTxOk8nUuyXjTpD
	K_i4_IicZ10WUcdtgaGptXETmFFllmNmgWCVQPmIOt_eCc4hueekdZP87sNEicUH71Gipk9VQK4E
	qL3Szqgz1WRwR_hnx51H2jYYs5Cp9x3i8itLxEseud_9q4JyUwqFNllljWNCgn6LH.Ml5TX_e.fp
	WCf6LE1IpAitc42hnM.LYHBoQOF7v6Z61sU4Az6B8.Bu5qv2d
Received: by 76.13.26.138; Thu, 20 Nov 2014 12:47:17 +0000 
Date: Thu, 20 Nov 2014 12:47:17 +0000 (UTC)
From: Mahdi Sa'adat <mahdisaadat@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2038600814.3067041.1416487637680.JavaMail.yahoo@jws10667.mail.bf1.yahoo.com>
In-Reply-To: <952664770.1585494.1416248426041.JavaMail.yahoo@jws10657.mail.bf1.yahoo.com>
References: <952664770.1585494.1416248426041.JavaMail.yahoo@jws10657.mail.bf1.yahoo.com>
MIME-Version: 1.0
Subject: Fw: progressbar
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
X-List-Received-Date: Thu, 20 Nov 2014 12:47:23 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3067040_1863296216.1416487637673"

------=_Part_3067040_1863296216.1416487637673
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0=C2=A0No one answer my email :(
_________________
Regards
Mahdi Saadat

    ----- Forwarded Message -----
  From: Mahdi Sa'adat <mahdisaadat@yahoo.com>
 To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>=20
 Sent: Monday, November 17, 2014 9:50 PM
 Subject: progressbar
  =20
=C2=A0hii build the image-minimal , and want to add the dialog installer fo=
r it with progress bar and dialog , when i use install.sh, in the image ins=
tallation on target device the message shows that "dialog and progress coul=
d not find".could you please inform me about the creating progress bar when=
 installing th image on dest device.=C2=A0
_________________
Regards
Mahdi Saadat


  

------=_Part_3067040_1863296216.1416487637673
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1416485527867_5057"><span></span></di=
v><div></div><div id=3D"yui_3_16_0_1_1416485527867_5056">&nbsp;</div><div c=
lass=3D"signature" id=3D"yui_3_16_0_1_1416485527867_5055"><div id=3D"yui_3_=
16_0_1_1416485527867_5054">&nbsp;No one answer my email :(<br>_____________=
____<br><span style=3D"font-family:Courier New, courier, monaco, monospace,=
 sans-serif;font-style:italic;">Regards</span><br><span style=3D"font-famil=
y:Courier New, courier, monaco, monospace, sans-serif;">Mahdi Saadat</span>=
<br></div></div><br>  <div style=3D"font-family: HelveticaNeue, Helvetica N=
eue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 14px;" id=3D"y=
ui_3_16_0_1_1416485527867_5051"> <div style=3D"font-family: HelveticaNeue, =
Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16p=
x;" id=3D"yui_3_16_0_1_1416485527867_5050"> <div dir=3D"ltr" id=3D"yui_3_16=
_0_1_1416485527867_5049"> ----- Forwarded Message -----<br>  <font size=3D"=
2" face=3D"Arial" id=3D"yui_3_16_0_1_1416485527867_5048"> <b><span style=3D=
"font-weight:bold;">From:</span></b> Mahdi Sa'adat &lt;mahdisaadat@yahoo.co=
m&gt;<br> <b><span style=3D"font-weight: bold;">To:</span></b> "yocto@yocto=
project.org" &lt;yocto@yoctoproject.org&gt; <br> <b><span style=3D"font-wei=
ght: bold;">Sent:</span></b> Monday, November 17, 2014 9:50 PM<br> <b><span=
 style=3D"font-weight: bold;">Subject:</span></b> progressbar<br> </font> <=
/div> <div class=3D"y_msg_container" id=3D"yui_3_16_0_1_1416485527867_5058"=
><br><div id=3D"yiv2823032370"><div id=3D"yui_3_16_0_1_1416485527867_5068">=
<div style=3D"color:#000;background-color:#fff;font-family:HelveticaNeue, H=
elvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:14px;"=
 id=3D"yui_3_16_0_1_1416485527867_5067"><div id=3D"yiv2823032370yui_3_16_0_=
1_1416248240090_2950"><span></span></div><div></div><div id=3D"yiv282303237=
0yui_3_16_0_1_1416248240090_2827">&nbsp;hi</div><div dir=3D"ltr" id=3D"yiv2=
823032370yui_3_16_0_1_1416243217953_8063" class=3D"yiv2823032370" style=3D"=
"><span id=3D"yiv2823032370yui_3_16_0_1_1416243217953_8062" class=3D"yiv282=
3032370" style=3D"">i build the image-minimal , and want to add the dialog =
installer for it with progress bar and dialog , when i use install.sh, in t=
he image installation on target device the message shows that "dialog and p=
rogress could not find".</span></div><div dir=3D"ltr" id=3D"yiv2823032370yu=
i_3_16_0_1_1416243217953_8063" class=3D"yiv2823032370" style=3D""><span id=
=3D"yiv2823032370yui_3_16_0_1_1416243217953_8083" class=3D"yiv2823032370" s=
tyle=3D"">could you please inform me about the creating progress bar when i=
nstalling th image on dest device.</span></div><div class=3D"yiv2823032370"=
 style=3D""></div><div id=3D"yiv2823032370yui_3_16_0_1_1416243217953_8055" =
class=3D"yiv2823032370" style=3D"">&nbsp;</div><div class=3D"yiv2823032370s=
ignature" id=3D"yiv2823032370yui_3_16_0_1_1416248240090_2826"><div id=3D"yi=
v2823032370yui_3_16_0_1_1416248240090_2825"><br>_________________<br><span =
style=3D"font-family:Courier New, courier, monaco, monospace, sans-serif;fo=
nt-style:italic;">Regards</span><br><span style=3D"font-family:Courier New,=
 courier, monaco, monospace, sans-serif;" id=3D"yui_3_16_0_1_1416485527867_=
5096">Mahdi Saadat</span><br></div></div></div></div></div><br><br></div> <=
/div> </div>  </div></body></html>

------=_Part_3067040_1863296216.1416487637673--
