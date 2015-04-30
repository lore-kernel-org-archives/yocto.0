Return-Path: <t_dufff@yahoo.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41CCEE007B6; Thu, 30 Apr 2015 10:47:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (t_dufff[at]yahoo.ca)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.136.217.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm23-vm7.bullet.mail.gq1.yahoo.com
	(nm23-vm7.bullet.mail.gq1.yahoo.com [98.136.217.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5EDAE0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 10:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.ca; s=s2048;
	t=1430416017; bh=iuKX30nbLNW8QMl2Tbjp+aEdjTv99bhipm8yX991OFg=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=AHJXiR06buvvmiH8OIc+S0W59QZKjgxvYIWnYj0G8m4bBOnlG95vV9VvMQjngNVLGw9SBYMumbBouuyTa0BZcZ+lXsYqwVHQS6BV/XLSHUqpE6rQFyVIfLk2nhlr55dJNZqP1LDG6/zVw0ptaFM15VHmgRCaYo924alQd8EispEYMeC9uxN5r57zWbELC+0zp00kaMUNc5qzV1XXvC3obpJ2TPnXrInCbr08OA9cXQ0Xn8V3IMCFxEnP/VsltWU7qBEh6PVRumudxs6DlEqkYXmrhnxtY1ivlEXC+HIC1Jo60lzd2vqG/+L+bOTC5XT48g4EQ3AsksFgyMx6GTw7RA==
Received: from [98.137.12.191] by nm23.bullet.mail.gq1.yahoo.com with NNFMP;
	30 Apr 2015 17:46:57 -0000
Received: from [98.137.12.233] by tm12.bullet.mail.gq1.yahoo.com with NNFMP;
	30 Apr 2015 17:46:57 -0000
Received: from [127.0.0.1] by omp1041.mail.gq1.yahoo.com with NNFMP;
	30 Apr 2015 17:46:57 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 725785.74542.bm@omp1041.mail.gq1.yahoo.com
X-YMail-OSG: zadrtJIVM1n4nJRohDnnp5GLRV1MXC013Hpi4Cs_qB.DqEdHlm9AJ_UnB2nGZs6
	8aQ2iPM5YlTQfQRZuwqhrshJ6voejOI0JNz2nv4PE5BAljGL8BhZwad4JIa0QfpRkFPy3j3.HVaN
	EIlTPwv87N1fHT_lNGbvzJ0QlcpVXd_4xcFdWwNkmOuYM9MzI.k3fSPrYFE3qX5l5nfnhrLNtBqP
	ljpF7OoCcd9qcuXZF42yxZL3qMVZF6vlCE4fEB4vpD4znruMrlfR4VvKxVJNvCkePddPMLh_lvGs
	Q_MPiYoiMA9T5EAmtvlt9hL4zRYmlSYkaNr7a6aX_llBk5daRzn2tQgm_jmfGmxTzjwfFgLZNs0V
	rE1aLqdhUf2cfx2hI0qvhgar8fs3Bd62d.TpGxCo.3oHu1FdvJHKOS90X.9Y3HIZcEdA4IUt7Tm5
	bK2LezArV1xHF1V_2qjevRsjM51OEnZP0p.i5kawhHmePa.p6Tl4ztruJHIyKVYqNcwRR2CP.g7W
	DRQ--
Received: by 216.39.60.192; Thu, 30 Apr 2015 17:46:57 +0000 
Date: Thu, 30 Apr 2015 17:46:49 +0000 (UTC)
From: kris duff <t_dufff@yahoo.ca>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <1068163738.715243.1430416009551.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: [dizzy] shutdown custom image will not power off the processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kris duff <t_dufff@yahoo.ca>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 30 Apr 2015 17:47:00 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_715242_382255439.1430416009548"

------=_Part_715242_382255439.1430416009548
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I don't know yet if this issue is bsp related or not, but I am trying to un=
derstand what is going on here.
If anybody have any clue to help me solve my problem, I would appreciate.
Using a custom image recipe, when I shutdown ( using the command ) my devic=
e will not power off.=C2=A0 I see the message halt on the console but nothi=
ng is happening ...
In daisy, the system were turning off correctly (with the same hardware)

I don't know where to start to look at to solve this issue. I would like to=
 hear your suggestions.
Thank you
Kris


------=_Part_715242_382255439.1430416009548
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:10px"><div id=3D"yui_3_16_0_1_1430415217251_6281">Hello,</div><div =
id=3D"yui_3_16_0_1_1430415217251_6279"><br></div><div id=3D"yui_3_16_0_1_14=
30415217251_6282" dir=3D"ltr">I don't know yet if this issue is bsp related=
 or not, but I am trying to understand what is going on here.</div><div id=
=3D"yui_3_16_0_1_1430415217251_6283" dir=3D"ltr"><br></div><div id=3D"yui_3=
_16_0_1_1430415217251_6284" dir=3D"ltr">If anybody have any clue to help me=
 solve my problem, I would appreciate.</div><div id=3D"yui_3_16_0_1_1430415=
217251_6234" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1430415217251_62=
33" dir=3D"ltr">Using a custom image recipe, when I shutdown ( using the co=
mmand ) my device will not power off.&nbsp; I see the message halt on the c=
onsole but nothing is happening ...</div><div id=3D"yui_3_16_0_1_1430415217=
251_6258" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1430415217251_6285"=
 dir=3D"ltr">In daisy, the system were turning off correctly (with the same=
 hardware)<br></div><div id=3D"yui_3_16_0_1_1430415217251_6286" dir=3D"ltr"=
><br></div><div id=3D"yui_3_16_0_1_1430415217251_6287" dir=3D"ltr">I don't =
know where to start to look at to solve this issue. I would like to hear yo=
ur suggestions.</div><div id=3D"yui_3_16_0_1_1430415217251_6288" dir=3D"ltr=
"><br></div><div id=3D"yui_3_16_0_1_1430415217251_6289" dir=3D"ltr">Thank y=
ou</div><div id=3D"yui_3_16_0_1_1430415217251_6290" dir=3D"ltr"><br></div><=
div id=3D"yui_3_16_0_1_1430415217251_6291" dir=3D"ltr">Kris<br></div><div i=
d=3D"yui_3_16_0_1_1430415217251_6084"><br></div></div></body></html>

------=_Part_715242_382255439.1430416009548--
