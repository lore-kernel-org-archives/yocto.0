Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F543E002AC; Sat, 14 Feb 2015 00:30:12 -0800 (PST)
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
	*      [216.109.114.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm46.bullet.mail.bf1.yahoo.com (nm46.bullet.mail.bf1.yahoo.com
	[216.109.114.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91272E00288
	for <yocto@yoctoproject.org>; Sat, 14 Feb 2015 00:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1423902607; bh=nMEx5+iq3hO45t/PNisA2o83GGp643Ft1J9qBFawOg4=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=NIZvmFAP37TVSMeYkYrLaDhXBY3T8WscqgHkMokNr61n6jd7ao5OV9qR2uS1i/rUdCqR7eCrHuIeDGTJcfKcRE1B5q30/J3k/jT7Erkkb+nJx+n6LI3npK3OJo0R96kI8LXAieTbBGjKJ8WU4FxnLKDyyuMYBHgzuVLULXewAeQsQzhgNwlTze5w5CKB+K+zPfRej7Q88TQt92UBBBakxklFHQi7yW5/v6AiciOMX3RacixPaj2h/aeF1+WBjrSbGdRzLXlqsHdbERc1BljWDhAtZdermRa028MiGq5FE0hlvtvQYqU4z0McF3po6J2KXJpAI1RaE9QmCDGXIq8zNA==
Received: from [66.196.81.172] by nm46.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2015 08:30:07 -0000
Received: from [98.139.212.228] by tm18.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2015 08:30:07 -0000
Received: from [127.0.0.1] by omp1037.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2015 08:30:07 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 631526.39879.bm@omp1037.mail.bf1.yahoo.com
X-YMail-OSG: l5RY.2kVM1mj1WCo3rozuQiVHxJn9I864fBlb0zF645ozriYGRazlG6crDhgFOe
	9YmctKxdenUK7_LLJqiZhg9LNibK.7fayjZQdWyhZvFEokeLPFGiEbqmYHgnbdjgFBJn3A1GPVJy
	TZ6_UGoSdtXGYO_NN1yl68JB9AVJ3wyF7wjSV8OKqRxql.ttS3Xftvr6br2cfWARo9oB.QXmmqzV
	paFRgaNjOLFn6kq2LtC.DNZO0mFZZt6Zk3x_dllBaZE36cO.hKjCrm8BxdLAcRzmrl0HGUl4VG10
	gcEm6CuprRFLEoxlto.VkubhIV1k370nN86mYSlwaXE5tj8eco52Xs6OKlY_3R9UjYCEcqab2_C3
	DKMl6dM3zdeZBeEApdwLWh3xzP.WoRiF5pKbOQfdHwELVelUmpunaiGvs4VJXb8Z75ZJRJawhdxN
	lJFbPM3_SZNyrMgIv9Vj25oEbCoyISqPmISkugH9WAc.tLePpNZDWP6ZM0U_Gu5Ojp5l5T8YGUYm
	3DamOvx5coyO7RT.RLLsRiCguncUAD7c.edLZDgr6ZMibiG2zcgUE43bZf1Y182esh_l4v8HoGl1
	.1ucEtSPgNnIr2Alr218CMsv58zFXTgVmvbsUvQbGjg--
Received: by 98.138.105.208; Sat, 14 Feb 2015 08:30:04 +0000 
Date: Sat, 14 Feb 2015 08:30:03 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Armin Kuster <akuster808@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <712586993.2994951.1423902603883.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
References: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Sat, 14 Feb 2015 08:30:12 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2994950_2120186918.1423902603879"

------=_Part_2994950_2120186918.1423902603879
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for the patch.Applied and merged it upstream.
=20

     On Saturday, February 14, 2015 7:00 AM, Armin Kuster <akuster808@gmail=
.com> wrote:
  =20

 From: Armin Kuster <akuster@mvista.com>

WARNING: heartbeat: LICENSE value "GPLv2 LGPLv2+" has an invalid format - l=
icense names must be separated by the following characters to indicate the =
license selection: &|()

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb b/met=
a-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
index a866f0f..7ec7c5d 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
@@ -22,7 +22,7 @@ It implements the following kinds of heartbeats: \
 "
 HOMEPAGE =3D "http://linux-ha.org/"
 SECTION =3D "System Environment/Daemons"
-LICENSE =3D "GPLv2 LGPLv2+"
+LICENSE =3D "GPLv2 | LGPLv2+"
 LIC_FILES_CHKSUM =3D " \
=C2=A0 =C2=A0 file://doc/COPYING;md5=3Dc93c0550bd3173f4504b2cbd8991e50b \
=C2=A0 =C2=A0 file://doc/COPYING.LGPL;md5=3Dd8045f3b8f929c1cb29a1e3fd737b49=
9 \
--=20
1.9.1

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_2994950_2120186918.1423902603879
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1423899825543_25238">Thank you for th=
e patch.</div><div id=3D"yui_3_16_0_1_1423899825543_25240" dir=3D"ltr">Appl=
ied and merged it upstream.<br></div><div id=3D"yui_3_16_0_1_1423899825543_=
25241"><span></span></div> <div class=3D"qtdSeparateBR"><br><br></div><div =
style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font-family=
: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-seri=
f; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helvetica N=
eue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div d=
ir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Saturday, February 14, 2015=
 7:00 AM, Armin Kuster &lt;akuster808@gmail.com&gt; wrote:<br> </font> </di=
v>  <br><br> <div class=3D"y_msg_container">From: Armin Kuster &lt;<a ymail=
to=3D"mailto:akuster@mvista.com" href=3D"mailto:akuster@mvista.com">akuster=
@mvista.com</a>&gt;<br><br>WARNING: heartbeat: LICENSE value "GPLv2 LGPLv2+=
" has an invalid format - license names must be separated by the following =
characters to indicate the license selection: &amp;|()<br><br>Signed-off-by=
: Armin Kuster &lt;<a ymailto=3D"mailto:akuster@mvista.com" href=3D"mailto:=
akuster@mvista.com">akuster@mvista.com</a>&gt;<br>---<br> meta-cgl-common/r=
ecipes-cgl/heartbeat/heartbeat_3.0.5.bb | 2 +-<br> 1 file changed, 1 insert=
ion(+), 1 deletion(-)<br><br>diff --git a/meta-cgl-common/recipes-cgl/heart=
beat/heartbeat_3.0.5.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3=
.0.5.bb<br>index a866f0f..7ec7c5d 100644<br>--- a/meta-cgl-common/recipes-c=
gl/heartbeat/heartbeat_3.0.5.bb<br>+++ b/meta-cgl-common/recipes-cgl/heartb=
eat/heartbeat_3.0.5.bb<br>@@ -22,7 +22,7 @@ It implements the following kin=
ds of heartbeats: \<br> "<br> HOMEPAGE =3D "<a href=3D"http://linux-ha.org/=
" target=3D"_blank">http://linux-ha.org/</a>"<br> SECTION =3D "System Envir=
onment/Daemons"<br>-LICENSE =3D "GPLv2 LGPLv2+"<br>+LICENSE =3D "GPLv2 | LG=
PLv2+"<br> LIC_FILES_CHKSUM =3D " \<br>&nbsp; &nbsp;  file://doc/COPYING;md=
5=3Dc93c0550bd3173f4504b2cbd8991e50b \<br>&nbsp; &nbsp;  file://doc/COPYING=
.LGPL;md5=3Dd8045f3b8f929c1cb29a1e3fd737b499 \<br>-- <br>1.9.1<br><br>-- <b=
r>_______________________________________________<br>yocto mailing list<br>=
<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoprojec=
t.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br><br><br></div>  </div> </div>  </div> </div></body></html=
>

------=_Part_2994950_2120186918.1423902603879--
