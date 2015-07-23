Return-Path: <just_abhi22@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2FBDE009B3; Thu, 23 Jul 2015 11:07:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (just_abhi22[at]yahoo.co.in)
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit
	*      (abhishek srivastava <just_abhi22[at]yahoo.co.in> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [67.195.87.83 listed in list.dnswl.org]
Received: from nm43.bullet.mail.gq1.yahoo.com (nm43.bullet.mail.gq1.yahoo.com
	[67.195.87.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66601E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 11:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1437674854; bh=fIMFBB03J5pXNQpdB5DjZExYbOF5WF9ja/FgUecSjg4=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=FMiEWcDh7Cn1Z40iCqIA+wh/y8Qb3WJogT5lKiKf5XnHHWWOuMmj7c+kNLvobWvvPQqdhKnW4Ecfshp/ijd6SHxZCdSbhj4H1v5qwNa6VENl1LT3uxWSryHip23Mqddezp8b7ONcBCtEi53LO7VkPTAslKi0PBpxORduGyX4S/th7/WPBD50wRx8ldkKE+vAKHrpGbXSDrtJ3gfYib92RWFJH9LK30x6hvmbXxgLEwyTIMWSjwZTdaexM4b/44QYxc+fi8XqCIF5aNYcwZuYN0kqaow5+E2fJijOghYogne/8e8H4seoH0wzTjUA+w2xuIIUbRyXQP0oELfEpmPlcA==
Received: from [127.0.0.1] by nm43.bullet.mail.gq1.yahoo.com with NNFMP;
	23 Jul 2015 18:07:34 -0000
Received: from [98.137.12.55] by nm43.bullet.mail.gq1.yahoo.com with NNFMP;
	23 Jul 2015 18:04:47 -0000
Received: from [106.10.166.62] by tm15.bullet.mail.gq1.yahoo.com with NNFMP;
	23 Jul 2015 18:04:47 -0000
Received: from [106.10.151.154] by tm19.bullet.mail.sg3.yahoo.com with NNFMP;
	23 Jul 2015 18:04:47 -0000
Received: from [127.0.0.1] by omp1008.mail.sg3.yahoo.com with NNFMP;
	23 Jul 2015 18:04:47 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 12002.22312.bm@omp1008.mail.sg3.yahoo.com
X-YMail-OSG: qpgUYasVM1nbLWIw6BjhNXdR_7Q3CWWm_t5NH6lEpXxTWBX7UonN4CmhVczqcJp
	umcLlxTsl2Vxcu1VEJjJjGOO2V_vuUXaeI9U1MCNwGsksuoOIyVeJKpu_nmC_11VqzVT73Y2H_Ng
	qrKba5L7se1jD5I0AIBSEtgxJSCTR80Y1k1gLPP0txEazGggH2lliJWbGJob4lWCwP6qlcK7wbls
	XkgHSuNefHHWgAVHFDYgm048o_9sK1xlAAYN6l9Rxegdpq5Ey_dA5_8PqOVVMqSh3RQaHrMTs3gS
	e7v9.lAd24UrarwhCfLcBuw9ta.WHEK79G39xTkbOcULeXGQrkqpkDAOT8PGD.gJvyqtGNvneA2x
	rIbHL_mv6XPVKiqEakZpxEs5ucBCqQ5W1xNX7V_5zg8jcIxE2PVAS6bCdW2ejmMFy2NSjJzsOv8X
	9hOuMj751bVzwhv6xDM2jLIYPmc4wgFGFW2cE26f.297JH7JLNvIylXOXxQB36q.Ge4GmL4LHqal
	To9nJRD22coSC9PjInxOy1nU-
Received: by 106.10.196.180; Thu, 23 Jul 2015 18:04:46 +0000 
Date: Thu, 23 Jul 2015 18:04:46 +0000 (UTC)
From: abhishek srivastava <just_abhi22@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <2007816747.884401.1437674686329.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: driver for piTFT 2.8 resistive display
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
X-List-Received-Date: Thu, 23 Jul 2015 18:07:39 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_884400_2009364149.1437674686326"

------=_Part_884400_2009364149.1437674686326
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi allCan anyone please tell how to interface raspberrypi with pitft 2.8 re=
sistive screen. notro tft driver is available in stagging mode but how to u=
se that to make display functional, is not clear.Have any one succeeded in =
running pitft with yocto ?=C2=A0=20
please help to make pitft display functional with yocto.
thank you
Abhishek=20
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20

------=_Part_884400_2009364149.1437674686326
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1437674256114_10899">Hi all</div><div=
 id=3D"yui_3_16_0_1_1437674256114_10894">Can anyone please tell how to inte=
rface raspberrypi with pitft 2.8 resistive screen. notro tft driver is avai=
lable in stagging mode but how to use that to make display functional, is n=
ot clear.Have any one succeeded in running pitft with yocto ?&nbsp; <br></d=
iv><div id=3D"yui_3_16_0_1_1437674256114_10892" dir=3D"ltr">please help to =
make pitft display functional with yocto.</div><div id=3D"yui_3_16_0_1_1437=
674256114_10933" dir=3D"ltr"><br></div><div dir=3D"ltr">thank you<br></div>=
<div id=3D"yui_3_16_0_1_1437674256114_10768"><span></span></div><div id=3D"=
yui_3_16_0_1_1437674256114_10775" class=3D"signature"><div id=3D"yui_3_16_0=
_1_1437674256114_10774"><span id=3D"yui_3_16_0_1_1437674256114_10779" style=
=3D"font-size:16px;"><span id=3D"yui_3_16_0_1_1437674256114_10778" style=3D=
"font-family:garamond, new york, times, serif;"><span id=3D"yui_3_16_0_1_14=
37674256114_10777" style=3D"font-weight:bold;">Abhishek <br><span class=3D"=
tab">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class=3D=
"tab"><br></span></span></span></span></div></div></div></body></html>

------=_Part_884400_2009364149.1437674686326--
