Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE4A1E00A30; Sun, 12 Jul 2015 00:34:52 -0700 (PDT)
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
	*      [98.136.216.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm31-vm10.bullet.mail.gq1.yahoo.com
	(nm31-vm10.bullet.mail.gq1.yahoo.com [98.136.216.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B314BE00476
	for <yocto@yoctoproject.org>; Sun, 12 Jul 2015 00:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1436686486; bh=84iQWnTEHs1UZsqz4neX/r5A/ePgrfFExvpm6pKEqwk=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=MrOvqSctJGZGXSmcHWQKYkeqxlRQamKLcHI64uEgl7S6TFQRC3xJDUh+1KWQJHmNTWCjA00VFAXQ7mdQKDyiP40hWfmRLLQIeHPN95Uv8VAUbNiLncWoXNN5t4pOW7GByra3x1Rs0/plMWG2+MlwAD7rRlSgYECMT6BQzk02Jwzu6JnJxL06aHefaXUCA8dPuzzzHyACTdGTAAlnY1ADiQXNXpIV2OMZNCQL6X1ml+kq+5SEBbnRzg+TkEomsRJjdJXG3vqRnn0wndo8ZdlAmKVBGIGw3QMYHDXbbKiyAUSlAiS/i5JMlHkcUGk0tKofU1C+kXXliPOsm7uc9L8Xqg==
Received: from [127.0.0.1] by nm31.bullet.mail.gq1.yahoo.com with NNFMP;
	12 Jul 2015 07:34:46 -0000
Received: from [98.137.12.175] by nm31.bullet.mail.gq1.yahoo.com with NNFMP;
	12 Jul 2015 07:31:57 -0000
Received: from [98.137.12.226] by tm14.bullet.mail.gq1.yahoo.com with NNFMP;
	12 Jul 2015 07:31:57 -0000
Received: from [127.0.0.1] by omp1034.mail.gq1.yahoo.com with NNFMP;
	12 Jul 2015 07:31:57 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 542146.9425.bm@omp1034.mail.gq1.yahoo.com
X-YMail-OSG: IsfXtEkVM1lbRF8rwrYKjEihkznKiiMVn9VLYzGY7Sy5YLkIMZ7KBB_7YdGf2F1
	clPnce5CKwJqml9HLH04MM2URC7dB_Nqu92tMy4LvmsyRStiJf_cWcorf1lbExGoJAK_6f0.21cT
	1yLQqAicu9wcuwCr8s8FGjuMN0.3K9Tfwgh2S.R0EdyjWbieSc3ap6WpW42ROJ_gZdEatSmn6ggR
	nqevxVxG9rsiW2X_A0Xd9RF1uXprB3h0r8pibfDGrcjRgVl2SqJe4ixXjlxWLiutIN8nz.ykiuN4
	xT1wudFAk61MKSbrL0OcCX0cdv1xyRYuPoJFg.5X.zdM9_190_sd7PDMSBId3OyQ9.zqNrrLzZKf
	YkAK5o3whk2NKUYw4PE8jeoLsSKf.B0PXd9J533QT18U9eMW8WT_M7b8wP6oFnKSAthtEXEocobb
	6qsvgpxsR38Ii7AcRMQk3FcrPvn.VcTu.6fM7hMJ.eQ2H76lx4FG_FD10Wl45.s8pGRBFS62SYy9
	jQrBvvHmgtn1rAB_cDcFCxt3sLBBCFMJ1QN0-
Received: by 98.138.101.174; Sun, 12 Jul 2015 07:31:56 +0000 
Date: Sun, 12 Jul 2015 07:31:56 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: akuster808 <akuster808@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Message-ID: <1908934930.566576.1436686316136.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <55A12E84.5000407@gmail.com>
References: <55A12E84.5000407@gmail.com>
MIME-Version: 1.0
Subject: Re: meta-kali
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
X-List-Received-Date: Sun, 12 Jul 2015 07:34:52 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_566575_488379581.1436686316120"

------=_Part_566575_488379581.1436686316120
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Nice,=20

Thanks Armin ;)
=20


     On Saturday, July 11, 2015 5:57 PM, akuster808 <akuster808@gmail.com> =
wrote:
  =20

=20
Hello,

I have put together a layer that is based off of the Kali Linux=20
(http://tools.kali.org/).=C2=A0 It contains penetration test tools.

git://github.com/akuster/meta-kali

- armin
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  

------=_Part_566575_488379581.1436686316120
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div>Nice, <br></div><div><br></div><div>Thanks Armin ;)<br><=
/div><div><span></span></div>  <br><div class=3D"qtdSeparateBR"><br><br></d=
iv><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"fon=
t-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, s=
ans-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Hel=
vetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"=
> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Saturday, July 11, =
2015 5:57 PM, akuster808 &lt;akuster808@gmail.com&gt; wrote:<br> </font> </=
div>  <br><br> <div class=3D"y_msg_container"><br>Hello,<br><br>I have put =
together a layer that is based off of the Kali Linux <br>(<a href=3D"http:/=
/tools.kali.org/" target=3D"_blank">http://tools.kali.org/</a>).&nbsp; It c=
ontains penetration test tools.<br><br>git://github.com/akuster/meta-kali<b=
r><br>- armin<br>-- <br>_______________________________________________<br>=
yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"=
mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=3D"htt=
ps://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists=
.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  </di=
v></div></body></html>

------=_Part_566575_488379581.1436686316120--
