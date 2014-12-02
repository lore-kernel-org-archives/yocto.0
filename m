Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47364E0080C; Tue,  2 Dec 2014 11:22:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
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
	*      [98.138.90.69 listed in list.dnswl.org]
Received: from nm6.bullet.mail.ne1.yahoo.com (nm6.bullet.mail.ne1.yahoo.com
	[98.138.90.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F39E9E0030B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 11:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1417548120; bh=elj9ffdcMPe7wR2iTSi9Pa68N73jkEsYJWBPJQSXOw8=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=ZtxU0Zzxrm9aofdDF68Yjw3xDkV5oLOT35jOBhNiBRCCe1eGGgNtwA7XvN+ksULRi46v7hmPKuLxDe3RowB//hT+mY1kHtWAuNNfPSzCoKa8SKESf4jCiLN7bp1QDl0Ws319zbM+R23vWpf1FhdMStxSpDZzqNJ1SMhFi0x4c74pGu/l9d/4fwH4hcPpUSRxA+JthFN206em5EbfVcmk66bh/IZAchZku2CnMKNhXx8PPVLMkLZxWCA3XwHJFxHUGJMozoV89V18LhvOa3vINm4Bq6DWq+rpO6eC+egXj9PO+sMGv+unXQkfm2DbXCQqaHf4+Xe12ap+K/SMyghNTw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=mprm0BtWX+Ql7fHWg0MR3R5BuAswod1RqZAqcJQ+fkyTZcvVYY8GISlzreUusFj7qFpPr+uNGGu3AZ3OeYb/jjPOZD+ZEIFVKllDRooQBC86ta5EGu4C4ZcdpG/BFba/pTD+Q0TwIG8WQ3/EPruL/LTcvCbBvN+ZlrSz4mvw7oBv4N/MWfUF0gMRT7KUOdKN9MGvyhV7gFZRbObrcn5hO9UfuS8TuYIJLrB+S2GCHR17gNojfYrS6PmSDgurLCTT59fP1hg8RQv5Zw9/G98StdYaicSCYiJ40VM5Gh17kJ6i9lc2sRUQ4IFQTAchKZq3OBv4WK81WhurGgGp+8zfMw==;
Received: from [98.138.226.179] by nm6.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 19:22:00 -0000
Received: from [98.138.89.168] by tm14.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 19:22:00 -0000
Received: from [127.0.0.1] by omp1024.mail.ne1.yahoo.com with NNFMP;
	02 Dec 2014 19:22:00 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 212867.63367.bm@omp1024.mail.ne1.yahoo.com
X-YMail-OSG: BUnigpQVM1nEXc_Lqpbt_afCaLAIjj5E4T7sdjwet2_KXsgLJGqEnLxd.YqWcFS
	OTkf7Xuh.9ensQ.kngzvp.MeuitULkhRAd.2k5he1nwcbBV57qUh0WCiVqJq1X2FnKqKJ9l1SmTU
	VXrm0lT9Dpr7n24yDn85Wck4wu6321PxrMNgNTuOEG3mQPD4a6msdngoHV3CBOGod6HjHncY4TVY
	VcbGaIrwHSvKHdQNsVLtOfrN0RRIaXR.DDPdDtgzftUhCSrh0vVmGZ1gYJtpll023_ldCpFxj5wF
	M8WWFqAVL.noSTwOjzmnGmEQrhHJwxiHHdrXn6dr_uAnJx9kyEQNmGY38bbJJ6V8sloTwBL_743k
	jPK1h6u5jRgGmJOLEVhtyWpXnErtR.okVPmKgwTupdiNc3KUbc3PRboN0NDMehu3J9.lh7r7v3Lf
	yQx4HXD6uwjcOC89A72U7MkwS1jj5D.qryGvhk.cp79hG9jmdHKlmL0urnnGIwXG3.imNQ_Ux6.m
	Vu0_m1ZpHPOephXdQmIbWklA_IpjAGs6fCdFNWS9llCn0ym2tVsqRFQ6LQAZunAE9OzMdynxy27B
	ihaHw4eomtiPhsDw71vAbAcKtIK8oNcINCNl7m0g0Lf15SxKshEJ40Mmf3B_U33Lpxh15WX415pC
	Ohgqr55YvJv4bxpGGs.d8upsCGuVRvoIT3oGvMRSRF8.G
Received: by 98.138.101.179; Tue, 02 Dec 2014 19:21:59 +0000 
Date: Tue, 2 Dec 2014 19:21:59 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: akuster808 <akuster808@gmail.com>, Bian Naimeng <biannm@cn.fujitsu.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1777094682.2427215.1417548119333.JavaMail.yahoo@jws100181.mail.ne1.yahoo.com>
In-Reply-To: <547DE09E.3090203@gmail.com>
References: <547DE09E.3090203@gmail.com>
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
X-List-Received-Date: Tue, 02 Dec 2014 19:22:05 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2427214_1513850172.1417548119329"

------=_Part_2427214_1513850172.1417548119329
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

They were at some point but now I see that the recipe from meta-oe was upda=
ted to latest release.So maybe the patch should be kept there.
=20

     On Tuesday, December 2, 2014 5:55 PM, akuster808 <akuster808@gmail.com=
> wrote:
  =20

=20
Bian,

Is device-mapper-multipath the same as=20
meta-openembeded/meta-oe/recipes-support/multipath-tools/multipath-tools_gi=
t.bb=20
?

- Armin


On 12/02/2014 12:03 AM, Bian Naimeng wrote:
> Bian Naimeng (2):
>=C2=A0 =C2=A0 [meta-cgl] device-mapper-multipath: add recipe
>=C2=A0 =C2=A0 [meta-cgl]drbd: add recipe
>
>=C2=A0 .../device-mapper-multipath/multipathd.init.patch=C2=A0 | 12 +++++
>=C2=A0 .../device-mapper-multipath_0.5.0.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 53 ++++++++++++++++++++
>=C2=A0 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
>=C2=A0 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb=C2=A0 =C2=A0 | 57 ++=
++++++++++++++++++++
>=C2=A0 4 files changed, 134 insertions(+)
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multip=
ath/device-mapper-multipath/multipathd.init.patch
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multip=
ath/device-mapper-multipath_0.5.0.bb
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.servi=
ce
>=C2=A0 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
>
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_2427214_1513850172.1417548119329
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"color:#000; background-color:#fff; font-family:HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12px=
"><div id=3D"yui_3_16_0_1_1417547826221_9425">They were at some point but n=
ow I see that the recipe from meta-oe was updated to latest release.</div><=
div id=3D"yui_3_16_0_1_1417547826221_9426" dir=3D"ltr">So maybe the patch s=
hould be kept there.<br></div><div id=3D"yui_3_16_0_1_1417547826221_7865"><=
span></span></div> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D=
"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: Helvet=
icaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-=
size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Hel=
vetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"lt=
r"> <font face=3D"Arial" size=3D"2"> On Tuesday, December 2, 2014 5:55 PM, =
akuster808 &lt;akuster808@gmail.com&gt; wrote:<br> </font> </div>  <br><br>=
 <div class=3D"y_msg_container"><br clear=3D"none">Bian,<br clear=3D"none">=
<br clear=3D"none">Is device-mapper-multipath the same as <br clear=3D"none=
">meta-openembeded/meta-oe/recipes-support/multipath-tools/multipath-tools_=
git.bb <br clear=3D"none">?<br clear=3D"none"><br clear=3D"none">- Armin<br=
 clear=3D"none"><br clear=3D"none"><div class=3D"yqt7955726207" id=3D"yqtfd=
89153"><br clear=3D"none">On 12/02/2014 12:03 AM, Bian Naimeng wrote:<br cl=
ear=3D"none">&gt; Bian Naimeng (2):<br clear=3D"none">&gt;&nbsp; &nbsp; [me=
ta-cgl] device-mapper-multipath: add recipe<br clear=3D"none">&gt;&nbsp; &n=
bsp; [meta-cgl]drbd: add recipe<br clear=3D"none">&gt;<br clear=3D"none">&g=
t;&nbsp;  .../device-mapper-multipath/multipathd.init.patch&nbsp; | 12 ++++=
+<br clear=3D"none">&gt;&nbsp;  .../device-mapper-multipath_0.5.0.bb&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  | 53 ++++++++++++++++++++<br cle=
ar=3D"none">&gt;&nbsp;  meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service =
| 12 +++++<br clear=3D"none">&gt;&nbsp;  meta-cgl-common/recipes-cgl/drbd/d=
rbd_8.4.4.bb&nbsp; &nbsp;  | 57 ++++++++++++++++++++++<br clear=3D"none">&g=
t;&nbsp;  4 files changed, 134 insertions(+)<br clear=3D"none">&gt;&nbsp;  =
create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/devi=
ce-mapper-multipath/multipathd.init.patch<br clear=3D"none">&gt;&nbsp;  cre=
ate mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-=
mapper-multipath_0.5.0.bb<br clear=3D"none">&gt;&nbsp;  create mode 100644 =
meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service<br clear=3D"none">&gt;&n=
bsp;  create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb<br =
clear=3D"none">&gt;<br clear=3D"none">-- <br clear=3D"none">_______________=
________________________________<br clear=3D"none">yocto mailing list<br cl=
ear=3D"none"><a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" hr=
ef=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D=
"none"><a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br=
 clear=3D"none"></div><br><br></div>  </div> </div>  </div> </div>

------=_Part_2427214_1513850172.1417548119329--
