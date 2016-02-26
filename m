Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02AA1E00CAD; Fri, 26 Feb 2016 07:38:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.96.109 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm5-vm2.bullet.mail.ir2.yahoo.com
	(nm5-vm2.bullet.mail.ir2.yahoo.com [212.82.96.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D0E8E00C30
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 07:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1456501119; bh=nOq2xOw6SH9PSG1xsYCrBCpXNfaNBfgDtS/p7ClviLM=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=Ikfg7UFAS3i4ssLaboLcvwMwAo9rE5cZp20NGtVie3pHXWRkXFHqefUXairZPHcnCs5Q6Fz/iVoHd01Fc6zQZZ3PWHhk4fMt851ueY+7PgOc4OV5sPG22XRmDa8bys8JqPKpFAYhCgXOUJ6ZO6CF8RzxZNism55YLfTkSajqgXvqJ4O0UKgs6oJdZd/z+88CNWd+Vx3BOeS/wbiVQ4YbQpTpJsRbHegRDgxhd2YB7foMh8Y4tsLGKmeib7yJ3yE+GfE7E8o6eH110FOScXxe0U7T5i9k7uvNgKKopUT6CYna43dr4VGVWznRYb0Mf61pTeFlVKtjWoji4/gzVLZfRw==
Received: from [212.82.98.48] by nm5.bullet.mail.ir2.yahoo.com with NNFMP;
	26 Feb 2016 15:38:39 -0000
Received: from [212.82.98.90] by tm1.bullet.mail.ir2.yahoo.com with NNFMP;
	26 Feb 2016 15:38:39 -0000
Received: from [127.0.0.1] by omp1027.mail.ir2.yahoo.com with NNFMP;
	26 Feb 2016 15:38:39 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 190293.61140.bm@omp1027.mail.ir2.yahoo.com
X-YMail-OSG: uUO7_M8VM1kNh2YPT.2Fs_5di6xzS_OARENk4860yGj0jkFwS7LW8oruo6BHn4y
	pFjj.As3U9iRpEOD0nX.RucolcuzbN3zIrm8oB5i6WqpKt4e.TdDHudDcv1peoM1Luy8_IXmk6ya
	DPVcPyJaRD3Gpd7AXGps9AXO3wLaleWb2xD6OWan1QRRQnDRWmpqt3c1rVXcR8dJYUMvLtnJxA15
	qJkbDiV9VsMwVZpD0z_mdIiA4sqUU6i5oMs8C1_WFFeggkg5OMUiGUXRHBUFyqBDGDmmFBwN7mre
	QUj9ttUDeYjv0GmXYdzf82tjW.j6ndEXXozp3GvlL.wEpINaxfbhw.TP829B2dXDdeZjGQww77Ci
	07A28isMLRhhrK3W0uI86uiFRBzi3CE5ZC1W_l1Jh2hHwgG113mI8nUMZnfAKRBFZIRfm7dUrQxl
	5fg2yn8_1KtKbKhdc4uKsQXDq9Zw1kkuSf9QMiU_YDY4So_VuaNsTjFVpevaoDNY8KHucZrB1uBP
	26CypSPIdSFjkUJR8VRwNYSa8KwHY
Received: by 217.12.9.9; Fri, 26 Feb 2016 15:38:38 +0000 
Date: Fri, 26 Feb 2016 15:38:38 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: "Burton, Ross" <ross.burton@intel.com>, 
	Marius Liebenberg <mdlcameras@gmail.com>
Message-ID: <221325933.16447535.1456501118510.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAJTo0Laa9UKt+gELcy_LcD2eGUPsq_mKmfKx=zXZJeVcsOWzfg@mail.gmail.com>
References: <CAJTo0Laa9UKt+gELcy_LcD2eGUPsq_mKmfKx=zXZJeVcsOWzfg@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source for recipe on local drive
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Feb 2016 15:38:43 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_16447534_1762997664.1456501118506"

------=_Part_16447534_1762997664.1456501118506
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Additionally, I use the following sentence to get directly the location whe=
re these sources are:

bitbake <recipe> -e | grep "^WORKDIR=3D"

=20

    El Viernes 26 de febrero de 2016 16:00, "Burton, Ross" <ross.burton@int=
el.com> escribi=C3=B3:
=20

=20


On 26 February 2016 at 14:55, Marius Liebenberg <mdlcameras@gmail.com> wrot=
e:

How do I get all the source code for a specific recipe onto my local drive.=
 That is without sifting through all the config files to try and get url's


"bitbake [recipe] -c fetch" will just run the fetch task.=C2=A0
Ross
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  

------=_Part_16447534_1762997664.1456501118506
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yiv9128594003"><div id=3D"yui_3_16_0_=
1_1456501064935_2676"><div id=3D"yui_3_16_0_1_1456501064935_2675" style=3D"=
color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue,=
 Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"><div id=3D"yi=
v9128594003yui_3_16_0_1_1456475535342_9740">Additionally, I use the followi=
ng sentence to get directly the location where these sources are:<br clear=
=3D"none"></div><div id=3D"yiv9128594003yui_3_16_0_1_1456475535342_9768"><b=
r clear=3D"none"></div><div id=3D"yui_3_16_0_1_1456501064935_2743">bitbake =
&lt;recipe&gt; -e | grep "^WORKDIR=3D"<br clear=3D"none"></div><div id=3D"y=
ui_3_16_0_1_1456501064935_2674" dir=3D"ltr"><br clear=3D"none"></div><div i=
d=3D"yiv9128594003yui_3_16_0_1_1456475535342_9739"><span></span></div> <div=
 id=3D"yui_3_16_0_1_1456501064935_2796" class=3D"yiv9128594003qtdSeparateBR=
"><br clear=3D"none"><br clear=3D"none"></div></div></div></div><div class=
=3D".yiv9128594003yahoo_quoted"> <div style=3D"font-family:HelveticaNeue, H=
elvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:16px;"=
> <div style=3D"font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial=
, Lucida Grande, sans-serif;font-size:16px;"> <div dir=3D"ltr"><font face=
=3D"Arial" size=3D"2"> El Viernes 26 de febrero de 2016 16:00, "Burton, Ros=
s" &lt;ross.burton@intel.com&gt; escribi=C3=B3:<br clear=3D"none"></font></=
div>  <br clear=3D"none"><br clear=3D"none"> <div class=3D"yiv9128594003y_m=
sg_container"><div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yiv9=
128594003yqt4176049160" id=3D"yiv9128594003yqt47986"><div id=3D"yiv91285940=
03"><div><div dir=3D"ltr"><div class=3D"yiv9128594003gmail_extra"><br clear=
=3D"none"><div class=3D"yiv9128594003yqt3168559682" id=3D"yiv9128594003yqtf=
d91483"><div class=3D"yiv9128594003gmail_quote">On 26 February 2016 at 14:5=
5, Marius Liebenberg <span dir=3D"ltr">&lt;<a rel=3D"nofollow" shape=3D"rec=
t" ymailto=3D"mailto:mdlcameras@gmail.com" target=3D"_blank" href=3D"mailto=
:mdlcameras@gmail.com">mdlcameras@gmail.com</a>&gt;</span> wrote:<br clear=
=3D"none"><blockquote class=3D"yiv9128594003gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"><div>How do I get al=
l the source code for a specific recipe onto my local drive. That is withou=
t sifting through all the config files to try and get url's<br clear=3D"non=
e"></div></blockquote></div></div><br clear=3D"none">"bitbake [recipe] -c f=
etch" will just run the fetch task.&nbsp;</div><div class=3D"yiv9128594003g=
mail_extra"><br clear=3D"none"></div><div class=3D"yiv9128594003gmail_extra=
">Ross</div></div></div></div></div><br clear=3D"none"><div class=3D"yiv912=
8594003yqt3168559682" id=3D"yiv9128594003yqtfd41180">-- <br clear=3D"none">=
_______________________________________________<br clear=3D"none">yocto mai=
ling list<br clear=3D"none"><a rel=3D"nofollow" shape=3D"rect" ymailto=3D"m=
ailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto@yoctop=
roject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a rel=3D"nofollow=
" shape=3D"rect" target=3D"_blank" href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=
=3D"none"></div><br clear=3D"none"><br clear=3D"none"></div>  </div> </div>=
  </div></div></body></html>

------=_Part_16447534_1762997664.1456501118506--
