Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294BFE006EF; Tue,  2 Dec 2014 06:04:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm20-vm0.bullet.mail.ne1.yahoo.com
	(nm20-vm0.bullet.mail.ne1.yahoo.com [98.138.91.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE581E0034B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 06:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1417529077; bh=6PY/v2Rn2+uisvz682UZUZts+/j3OtS4qAzGlTwnH7U=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=dEf1q9CYTpfBvDBguyO585+4EzdENT3jL3ukQgb/1rBQ4NhdLuAi5UsSgCsUl8BrmI/i6OLdloJt/Bm/aeat4up8OJhPs32bib+LUNrDlHxOMB34rU3uaBR+6zpTFxFo1MfDuzhw90PKOfMSAMSzSlQJCJ3w0iVgY/tLJvFbzp6b+9JaMa2skKFXxI052lMU17eYWvZ6xCpxfV7fITD0jLuejlefXA7dCmxEdk8H6DWbvKxRt8rUyrntq9gJxfWztynE8VKlYYlhzxeXwbCGxYihGBl8UsEQvO3SE0Fz5ZEdAjA0aqr9mnO6veDik5PTgjC7lz1bSSe0jSYvuUkmiA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=KlhByq9s/yWAtURnqzi8kZ363+rc1CO9ahvzXj3bKCKz2629ASem0/a+oVTSpaFoma6EtBLQ1lNAAwlY/FT96a4s/NX3KcE+OD/3zcrH4VfMKtJYzjyNjL/f9XrBpEtMnVc/4ELSAjYtdilesvo4jhGtad4iNlxuAg5v3OqXLfB/SnFF0dSsbGBYjUWEnbg3ZpfKp64T+JYBzQzpHtAKslV+cPybtf+R6ogVKoe2iPVUPHMNyC4cIbfM3bXRNAh3GlbFqEisY5SuGYn/0M5AvkXUQaH9T6YX5Xo+AQRGhwl6le55yZWXjHZuKCPwOeaauDtj9rylr9N9Bm6d2Vn5xw==;
Received: from [98.138.226.180] by nm20.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 14:04:37 -0000
Received: from [98.138.89.254] by tm15.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 14:04:37 -0000
Received: from [127.0.0.1] by omp1046.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 14:04:37 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 615207.49252.bm@omp1046.mail.ne1.yahoo.com
X-YMail-OSG: ADPpidQVM1l_rst2CBTMhqktG32ZMhgtORDSBFkyE6zYpqs1DrhVu4jlRkVm20r
	3MSJA92O9DZHUhsccpl1nIUMuK4m8eXb31yKLhljMGQN82pIdm1iIMmHcOD4K4xXqYIuoa5_VK6x
	vO7iuGqnJqh7Ec_6luHbL.IOZcPuGKjXfOk7mnkyPdV5Of7YsS5gLBVvK571jG9JYj.QPTizfZ66
	cinnBuqtpv2l46gb.qVYN5v3E0xW0a8MgNz_cHZYRzPuUgUi3n06bjpM5iRaIhqSBDkCOmfOl1Nr
	H4nI2MUQzl9QXWKYshO14hUreiYTHqz7GOO_.YTtF15ZqAzlfs.h783ZayIprV2NE.OFvRB4.Obw
	nIXEyEDjw_whrTDSj0bHx4KfXsMwsSDr7KoXxv6Lc5TueJZ4rStjWsA.8p8FEafnZRW4APOlW8eI
	Wl9F8hPkw2txjhQV0i99RYT7.dtnaT3_3aFxz0Uk.7K9jMvdY7e0XgzJw_AiZYKowROQElCRCBvD
	jUZZMhrWs7D9NT4Y2yxE2BQps1oGJ7sT2JLa2ljMEyxmm5wqyNzInpdbZP9Anebdpk5K6k_b6Kzr
	KQ8Dzxb0Gg6jwzJbkMKH8kkZlYcI4u9zW8ARFsQ--
Received: by 98.138.101.179; Tue, 02 Dec 2014 14:04:37 +0000 
Date: Tue, 2 Dec 2014 14:03:29 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Bian Naimeng <biannm@cn.fujitsu.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <634293792.2309525.1417529010302.JavaMail.yahoo@jws100116.mail.ne1.yahoo.com>
In-Reply-To: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
MIME-Version: 1.0
Subject: Re: [PATCH 0/2] Add some recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Dec 2014 14:04:41 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2309524_228342195.1417529010296"

------=_Part_2309524_228342195.1417529010296
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Bian,
Did you know that the multipath tools recipe was also available inside the =
meta-oe and meta-virtualization?I do not have any problems with it being av=
ailable in meta-cgl.=C2=A0 I just wanted to hear other opinions because I w=
ould like to make sure we do not get to that point where we keep various ve=
rsions of various recipes in a variety of places. It will be a nightmare to=
 work with them in the future.Once again, just to make it clear. I am ok wi=
th the patches, I will merge all three of them (corosync, multipath and drb=
d) but I just wanted to make sure you took this into consideration.Also I l=
ike the idea of having drbd recipe inside and the fact that you like to get=
 involved in this initiative.Hope to hear more from you and also that I wil=
l be able to help more.

Alex Vaduva


     On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng <biannm@cn.fujitsu=
.com> wrote:
  =20

 Bian Naimeng (2):
=C2=A0 [meta-cgl] device-mapper-multipath: add recipe
=C2=A0 [meta-cgl]drbd: add recipe

 .../device-mapper-multipath/multipathd.init.patch=C2=A0 | 12 +++++
 .../device-mapper-multipath_0.5.0.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | 53 ++++++++++++++++++++
 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb=C2=A0 =C2=A0 | 57 +++++++++=
+++++++++++++
 4 files changed, 134 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/dev=
ice-mapper-multipath/multipathd.init.patch
 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/dev=
ice-mapper-multipath_0.5.0.bb
 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb

--=20
1.9.1

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_2309524_228342195.1417529010296
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"color:#000; background-color:#fff; font-family:HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12px=
"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1417525514407_76869"><span>Hello Bian=
,</span></div><div id=3D"yui_3_16_0_1_1417525514407_76891" dir=3D"ltr"><br>=
<span></span></div><div id=3D"yui_3_16_0_1_1417525514407_76890" dir=3D"ltr"=
><span id=3D"yui_3_16_0_1_1417525514407_76889">Did you know that the multip=
ath tools recipe was also available inside the meta-oe and meta-virtualizat=
ion?</span></div><div id=3D"yui_3_16_0_1_1417525514407_77200" dir=3D"ltr"><=
span id=3D"yui_3_16_0_1_1417525514407_76889">I do not have any problems wit=
h it being available in meta-cgl.&nbsp; I just wanted to hear other opinion=
s because I would like to make sure we do not get to that point where we ke=
ep various versions of various recipes in a variety of places. It will be a=
 nightmare to work with them in the future.</span></div><div id=3D"yui_3_16=
_0_1_1417525514407_78303" dir=3D"ltr"><span style=3D"" class=3D"" id=3D"yui=
_3_16_0_1_1417525514407_76889">Once again, just to make it clear. I am ok w=
ith the patches, I will merge all three of them (corosync, </span><span id=
=3D"yui_3_16_0_1_1417525514407_76889"><span style=3D"" class=3D"" id=3D"yui=
_3_16_0_1_1417525514407_76889">multipath and drbd</span>) but I just wanted=
 to make sure you took this into consideration.</span></div><div id=3D"yui_=
3_16_0_1_1417525514407_82770" dir=3D"ltr"><span id=3D"yui_3_16_0_1_14175255=
14407_76889">Also I like the idea of having drbd recipe inside and the fact=
 that you like to get involved in this initiative.</span></div><div id=3D"y=
ui_3_16_0_1_1417525514407_82769" dir=3D"ltr"><span id=3D"yui_3_16_0_1_14175=
25514407_76889">Hope to hear more from you and also that I will be able to =
help more.</span></div><div id=3D"yui_3_16_0_1_1417525514407_82772" dir=3D"=
ltr"><br><span id=3D"yui_3_16_0_1_1417525514407_76889"></span></div><div id=
=3D"yui_3_16_0_1_1417525514407_82771" dir=3D"ltr"><br><span id=3D"yui_3_16_=
0_1_1417525514407_76889"></span></div><div id=3D"yui_3_16_0_1_1417525514407=
_82768" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1417525514407_76889">Alex Vadu=
va<br></span></div><div id=3D"yui_3_16_0_1_1417525514407_76870" class=3D"qt=
dSeparateBR"><br><br></div><div id=3D"yui_3_16_0_1_1417525514407_76863" sty=
le=3D"display: block;" class=3D"yahoo_quoted"> <div id=3D"yui_3_16_0_1_1417=
525514407_76862" style=3D"font-family: HelveticaNeue, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, sans-serif; font-size: 12px;"> <div id=3D"yui_3=
_16_0_1_1417525514407_76861" style=3D"font-family: HelveticaNeue, Helvetica=
 Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div=
 id=3D"yui_3_16_0_1_1417525514407_76868" dir=3D"ltr"> <font id=3D"yui_3_16_=
0_1_1417525514407_76867" face=3D"Arial" size=3D"2"> On Tuesday, December 2,=
 2014 10:07 AM, Bian Naimeng &lt;biannm@cn.fujitsu.com&gt; wrote:<br> </fon=
t> </div>  <br><br> <div id=3D"yui_3_16_0_1_1417525514407_76860" class=3D"y=
_msg_container">Bian Naimeng (2):<br>&nbsp; [meta-cgl] device-mapper-multip=
ath: add recipe<br>&nbsp; [meta-cgl]drbd: add recipe<br><br> .../device-map=
per-multipath/multipathd.init.patch&nbsp; | 12 +++++<br> .../device-mapper-=
multipath_0.5.0.bb&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  | 53 ++=
++++++++++++++++++<br> meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service |=
 12 +++++<br> meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb&nbsp; &nbsp;  =
| 57 ++++++++++++++++++++++<br> 4 files changed, 134 insertions(+)<br> crea=
te mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-m=
apper-multipath/multipathd.init.patch<br> create mode 100644 meta-cgl-commo=
n/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb<br> =
create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service<br> c=
reate mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb<br><br>-- =
<br>1.9.1<br><br>-- <br>_______________________________________________<br>=
yocto mailing list<br><a id=3D"yui_3_16_0_1_1417525514407_76888" ymailto=3D=
"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a><br><a id=3D"yui_3_16_0_1_1417525514407_76875" href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https:=
//lists.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div=
>  </div> </div>

------=_Part_2309524_228342195.1417529010296--
