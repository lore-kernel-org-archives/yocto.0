Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 681B9E0077E; Tue, 17 Feb 2015 10:34:18 -0800 (PST)
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
	*      [98.138.120.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm41-vm5.bullet.mail.ne1.yahoo.com
	(nm41-vm5.bullet.mail.ne1.yahoo.com [98.138.120.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16F8AE00757
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 10:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1424198050; bh=0jdd/8B7FrwWgp1fJ90gPpISEGi/CC1MNJmvGXZ7MEY=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=f6EmtULKkukRtm6H4wPNY2ccONmid22aLuMKJN5f57IvXtiwajSxd88gh16tN84onzyTxKkSPPTzDGOGXM4ZUJCogYpmtIP5zAvha4W1PxDGDdRB4+VKsoGYnYPwp2hmTiVJrkmDgdLEKTKJHJ2L/84IA/6LSoHNQYwMnj/HXxx19mINwXeexGgefyZTIPgX7xLQVOcGAO2rF6ll+mbqkc48IYp5t93njqhCxBHD/puYlkR0+oY3xPJU4g6sgYiMILQgB7EWz2SZ9xT13v6EEjckrJKwmU5r9z959G0N/D9s76YNoNYAgBkqciPnWMNJQnWGZwRqFa9ns9/KEojZOw==
Received: from [127.0.0.1] by nm41.bullet.mail.ne1.yahoo.com with NNFMP;
	17 Feb 2015 18:34:10 -0000
Received: from [98.138.100.113] by nm41.bullet.mail.ne1.yahoo.com with NNFMP;
	17 Feb 2015 18:31:19 -0000
Received: from [66.196.81.174] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	17 Feb 2015 18:31:18 -0000
Received: from [98.139.212.228] by tm20.bullet.mail.bf1.yahoo.com with NNFMP;
	17 Feb 2015 18:31:18 -0000
Received: from [127.0.0.1] by omp1037.mail.bf1.yahoo.com with NNFMP;
	17 Feb 2015 18:31:18 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 913091.13807.bm@omp1037.mail.bf1.yahoo.com
X-YMail-OSG: 0gjUOSQVM1kmeD3wSnZ3GgmLLN_xmbHpuERbGqeJQbp5dfqc1yy3UoZ.02T98Tq
	25JmIXuRAEpP0QLlGJi2Wo9EpJkApBahjcK6_CVKI8dspo8up7MseDGAIOrBCEC.0eAU4jbO8rI2
	sFut.TT8fn0zEnGwWJA3lXq_AJiM1NT3utefogj1gSIoMBmoI_q4BOLvusrAtLCrYB2mVoL5yHJa
	3Lamjtw4MtO707zwdFpTu5UvyXEBeK8eCQWVLmNes483V4JX13rITXUL8FXPKEmWw9KXR3r5m6lR
	TQq81ONTDyT_Xt5w_DRpFUc3kFluDIzPJpCVJaQMOkMegjg6lqRNZR0q3r__6lOpbmHOJmM8rs3_
	Pw4Mee9OoYfUQ5ZwFmoGfmvLhkQU.yCO3vj7o6CVcR1GJDwdcsPmDzSdaX0yHAdP9j7zSEpqIL9Y
	jyHMljBJi3X_FwJyAugAZ06qrrYsjQ5jPUtC0elkR8zha3SBSkFtgBRk_kZ7Dm663o2Ef_hbGj8K
	5mhf3xvSyTxux1c7rdS8JrdDHLSgNZA--
Received: by 98.138.105.212; Tue, 17 Feb 2015 18:31:17 +0000 
Date: Tue, 17 Feb 2015 18:31:17 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	Alexandru Vaduva <Alexandru.Vaduva@enea.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1236436647.5527082.1424197877103.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <54E37552.9020108@windriver.com>
References: <54E37552.9020108@windriver.com>
MIME-Version: 1.0
Subject: Re: meta-oracle-java error when building a recipe
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
X-List-Received-Date: Tue, 17 Feb 2015 18:34:18 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5527081_1052955306.1424197877099"

------=_Part_5527081_1052955306.1424197877099
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am building for an arm v7.
=20

     On Tuesday, February 17, 2015 7:08 PM, Bruce Ashfield <bruce.ashfield@=
windriver.com> wrote:
  =20

 On 15-02-17 11:17 AM, Alexandru Vaduva wrote:
> When trying to build 'oracle-jse-jdk' from meta-oracle-java layer I found=
 this errors.
> =C2=A0=C2=A0=C2=A0 ERROR: Nothing PROVIDES 'oracle-jse-jdk'
> =C2=A0=C2=A0=C2=A0 ERROR: oracle-jse-jdk was skipped: True
>
> bitbake-layers show-recipes | grep "oracle-"
> Parsing recipes..done.
> oracle-jse-jdk:
>=C2=A0 =C2=A0 meta-oracle-java=C2=A0 =C2=A0 1.7.0 (skipped)
> oracle-jse-jre:
>=C2=A0 =C2=A0 meta-oracle-java=C2=A0 =C2=A0 1.7.0
> Any idea of why this recipe is skipped?

There's a built in skip based on the architecture of your build.
What exact config are you using ?

Bruce

>
>
> Alex Vaduva
>
>

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_5527081_1052955306.1424197877099
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px">I am building for an arm v7.<br><div id=3D"yui_3_16_0_1_14241=
97622905_8629"><span></span></div> <div class=3D"qtdSeparateBR"><br><br></d=
iv><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"fon=
t-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, s=
ans-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Hel=
vetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"=
> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Tuesday, February 1=
7, 2015 7:08 PM, Bruce Ashfield &lt;bruce.ashfield@windriver.com&gt; wrote:=
<br> </font> </div>  <br><br> <div class=3D"y_msg_container">On 15-02-17 11=
:17 AM, Alexandru Vaduva wrote:<br clear=3D"none">&gt; When trying to build=
 'oracle-jse-jdk' from meta-oracle-java layer I found this errors.<br clear=
=3D"none">&gt; &nbsp;&nbsp;&nbsp; ERROR: Nothing PROVIDES 'oracle-jse-jdk'<=
br clear=3D"none">&gt; &nbsp;&nbsp;&nbsp; ERROR: oracle-jse-jdk was skipped=
: True<br clear=3D"none">&gt;<br clear=3D"none">&gt; bitbake-layers show-re=
cipes | grep "oracle-"<br clear=3D"none">&gt; Parsing recipes..done.<br cle=
ar=3D"none">&gt; oracle-jse-jdk:<br clear=3D"none">&gt;&nbsp; &nbsp; meta-o=
racle-java&nbsp; &nbsp;  1.7.0 (skipped)<br clear=3D"none">&gt; oracle-jse-=
jre:<br clear=3D"none">&gt;&nbsp; &nbsp; meta-oracle-java&nbsp; &nbsp;  1.7=
.0<br clear=3D"none">&gt; Any idea of why this recipe is skipped?<br clear=
=3D"none"><br clear=3D"none">There's a built in skip based on the architect=
ure of your build.<br clear=3D"none">What exact config are you using ?<br c=
lear=3D"none"><br clear=3D"none">Bruce<div class=3D"yqt9682883916" id=3D"yq=
tfd12286"><br clear=3D"none"><br clear=3D"none">&gt;<br clear=3D"none">&gt;=
<br clear=3D"none">&gt; Alex Vaduva<br clear=3D"none">&gt;<br clear=3D"none=
">&gt;<br clear=3D"none"><br clear=3D"none">-- <br clear=3D"none">_________=
______________________________________<br clear=3D"none">yocto mailing list=
<br clear=3D"none"><a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.o=
rg" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br cl=
ear=3D"none"><a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br clear=3D"none"></div><br><br></div>  </div> </div>  </div> </div></b=
ody></html>

------=_Part_5527081_1052955306.1424197877099--
